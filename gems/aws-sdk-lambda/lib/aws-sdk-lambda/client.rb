# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:lambda)

module Aws::Lambda
  # An API client for Aws::Lambda.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSGirApiService
    @identifier = :lambda

    add_plugin(::Aws::Lambda::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Lambda::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds permissions to the resource-based policy of a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>. Use this action to grant layer usage permission to other accounts. You can grant permission to a single account, all accounts in an organization, or all Amazon Web Services accounts. </p> <p>To revoke permission, call <a>RemoveLayerVersionPermission</a> with the statement ID that you specified when you added it.</p>
    # @param [Hash, Types::AddLayerVersionPermissionRequest] params
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    # @option params [String] :statement_id
    #   <p>An identifier that distinguishes the policy from others on the same layer version.</p>
    # @option params [String] :action
    #   <p>The API action that grants access to the layer. For example, <code>lambda:GetLayerVersion</code>.</p>
    # @option params [String] :principal
    #   <p>An account ID, or <code>*</code> to grant layer usage permission to all accounts in an organization, or all Amazon Web Services accounts (if <code>organizationId</code> is not specified). For the last case, make sure that you really do want all Amazon Web Services accounts to have usage permission to this layer. </p>
    # @option params [String] :organization_id
    #   <p>With the principal set to <code>*</code>, grant permission to all accounts in the specified organization.</p>
    # @option params [String] :revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    # @example To add permissions to a layer version
    #   # The following example grants permission for the account 223456789012 to use version 1 of a layer named my-layer.
    #   params = {
    #     action: "lambda:GetLayerVersion",
    #     layer_name: "my-layer",
    #     principal: "223456789012",
    #     statement_id: "xaccount",
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.add_layer_version_permission(params, options)
    #   response.to_h #=>
    #   {
    #     revision_id: "35d87451-f796-4a3f-a618-95a3671b0a0c",
    #     statement: "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:GetLayerVersion\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1\"}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     action: "LayerPermissionAllowedAction", # required
    #     principal: "LayerPermissionAllowedPrincipal", # required
    #     organization_id: "OrganizationId",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.add_layer_version_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statement: "String",
    #     revision_id: "String"
    #   }
    # @return [Types::AddLayerVersionPermissionResponse]
    def add_layer_version_permission(params = {}, options = {})
      request = build_request(:add_layer_version_permission, params)
      request.send_request(options)
    end

    # <p>Grants a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">principal</a> permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function. Note: Lambda does not support adding policies to version $LATEST.</p> <p>To grant permission to another account, specify the account ID as the <code>Principal</code>. To grant permission to an organization defined in Organizations, specify the organization ID as the <code>PrincipalOrgID</code>. For Amazon Web Services services, the principal is a domain-style identifier that the service defines, such as <code>s3.amazonaws.com</code> or <code>sns.amazonaws.com</code>. For Amazon Web Services services, you can also specify the ARN of the associated resource as the <code>SourceArn</code>. If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function.</p> <p>This operation adds a statement to a resource-based permissions policy for the function. For more information about function policies, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">Using resource-based policies for Lambda</a>.</p>
    # @param [Hash, Types::AddPermissionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    # @option params [String] :action
    #   <p>The action that the principal can use on the function. For example, <code>lambda:InvokeFunction</code> or <code>lambda:GetFunction</code>.</p>
    # @option params [String] :principal
    #   <p>The Amazon Web Services service, Amazon Web Services account, IAM user, or IAM role that invokes the function. If you specify a service, use <code>SourceArn</code> or <code>SourceAccount</code> to limit who can invoke the function through that service.</p>
    # @option params [String] :source_arn
    #   <p>For Amazon Web Services services, the ARN of the Amazon Web Services resource that invokes the function. For example, an Amazon S3 bucket or Amazon SNS topic.</p> <p>Note that Lambda configures the comparison using the <code>StringLike</code> operator.</p>
    # @option params [String] :function_url_auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    # @option params [Boolean] :invoked_via_function_url
    #   <p>Indicates whether the permission applies when the function is invoked through a function URL. </p>
    # @option params [String] :source_account
    #   <p>For Amazon Web Services service, the ID of the Amazon Web Services account that owns the resource. Use this together with <code>SourceArn</code> to ensure that the specified account owns the resource. It is possible for an Amazon S3 bucket to be deleted by its owner and recreated by another account.</p>
    # @option params [String] :event_source_token
    #   <p>For Alexa Smart Home functions, a token that the invoker must supply.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to add permissions to a published version of the function.</p>
    # @option params [String] :revision_id
    #   <p>Update the policy only if the revision ID matches the ID that's specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    # @option params [String] :principal_org_id
    #   <p>The identifier for your organization in Organizations. Use this to grant permissions to all the Amazon Web Services accounts under this organization.</p>
    # @example To grant Amazon S3 permission to invoke a function
    #   # The following example adds permission for Amazon S3 to invoke a Lambda function named my-function for notifications from a bucket named my-bucket-1xpuxmplzrlbh in account 123456789012.
    #   params = {
    #     action: "lambda:InvokeFunction",
    #     function_name: "my-function",
    #     principal: "s3.amazonaws.com",
    #     source_account: "123456789012",
    #     source_arn: "arn:aws:s3:::my-bucket-1xpuxmplzrlbh/*",
    #     statement_id: "s3"
    #   }
    #   options = {}
    #   response = client.add_permission(params, options)
    #   response.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"s3\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"s3.amazonaws.com\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"123456789012\"},\"ArnLike\":{\"AWS:SourceArn\":\"arn:aws:s3:::my-bucket-1xpuxmplzrlbh\"}}}"
    #   }
    # @example To grant another account permission to invoke a function
    #   # The following example adds permission for account 223456789012 invoke a Lambda function named my-function.
    #   params = {
    #     action: "lambda:InvokeFunction",
    #     function_name: "my-function",
    #     principal: "223456789012",
    #     statement_id: "xaccount"
    #   }
    #   options = {}
    #   response = client.add_permission(params, options)
    #   response.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\"}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     statement_id: "StatementId", # required
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     source_arn: "Arn",
    #     function_url_auth_type: "NONE" # One of: ["NONE", "AWS_IAM"],
    #     invoked_via_function_url: false,
    #     source_account: "SourceOwner",
    #     event_source_token: "EventSourceToken",
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     revision_id: "String",
    #     principal_org_id: "PrincipalOrgID"
    #   }
    #   options = {}
    #   response = client.add_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statement: "String"
    #   }
    # @return [Types::AddPermissionResponse]
    def add_permission(params = {}, options = {})
      request = build_request(:add_permission, params)
      request.send_request(options)
    end

    # <p>Saves the progress of a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable function</a> execution during runtime. This API is used by the Lambda durable functions SDK to checkpoint completed steps and schedule asynchronous operations. You typically don't need to call this API directly as the SDK handles checkpointing automatically.</p> <p>Each checkpoint operation consumes the current checkpoint token and returns a new one for the next checkpoint. This ensures that checkpoints are applied in the correct order and prevents duplicate or out-of-order state updates.</p>
    # @param [Hash, Types::CheckpointDurableExecutionRequest] params
    # @option params [String] :durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    # @option params [String] :checkpoint_token
    #   <p>A unique token that identifies the current checkpoint state. This token is provided by the Lambda runtime and must be used to ensure checkpoints are applied in the correct order. Each checkpoint operation consumes this token and returns a new one.</p>
    # @option params [Array<Types::OperationUpdate>] :updates
    #   <p>An array of state updates to apply during this checkpoint. Each update represents a change to the execution state, such as completing a step, starting a callback, or scheduling a timer. Updates are applied atomically as part of the checkpoint operation.</p>
    # @option params [String] :client_token
    #   <p>An optional idempotency token to ensure that duplicate checkpoint requests are handled correctly. If provided, Lambda uses this token to detect and handle duplicate requests within a 15-minute window.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     durable_execution_arn: "DurableExecutionArn", # required
    #     checkpoint_token: "CheckpointToken", # required
    #     updates: [
    #       {
    #         id: "OperationId", # required
    #         parent_id: "OperationId",
    #         name: "OperationName",
    #         type: "EXECUTION" # One of: ["EXECUTION", "CONTEXT", "STEP", "WAIT", "CALLBACK", "CHAINED_INVOKE"], # required
    #         sub_type: "OperationSubType",
    #         action: "START" # One of: ["START", "SUCCEED", "FAIL", "RETRY", "CANCEL"], # required
    #         payload: "OperationPayload",
    #         error: {
    #           error_message: "ErrorMessage",
    #           error_type: "ErrorType",
    #           error_data: "ErrorData",
    #           stack_trace: ["StackTraceEntry"]
    #         },
    #         context_options: {
    #           replay_children: false
    #         },
    #         step_options: {
    #           next_attempt_delay_seconds: 1
    #         },
    #         wait_options: {
    #           wait_seconds: 1
    #         },
    #         callback_options: {
    #           timeout_seconds: 1,
    #           heartbeat_timeout_seconds: 1
    #         },
    #         chained_invoke_options: {
    #           function_name: "NamespacedFunctionName", # required
    #           tenant_id: "TenantId",
    #           x_amzn_trace_id: "XAmznTraceId"
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.checkpoint_durable_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checkpoint_token: "CheckpointToken",
    #     new_execution_state: { # required
    #       operations: [
    #         {
    #           id: "OperationId", # required
    #           parent_id: "OperationId",
    #           name: "OperationName",
    #           type: "EXECUTION" # One of: ["EXECUTION", "CONTEXT", "STEP", "WAIT", "CALLBACK", "CHAINED_INVOKE"], # required
    #           sub_type: "OperationSubType",
    #           start_timestamp: Time.now, # required
    #           end_timestamp: Time.now,
    #           status: "STARTED" # One of: ["STARTED", "PENDING", "READY", "SUCCEEDED", "FAILED", "CANCELLED", "TIMED_OUT", "STOPPED"], # required
    #           execution_details: {
    #             input_payload: "InputPayload"
    #           },
    #           context_details: {
    #             replay_children: false,
    #             result: "OperationPayload",
    #             error: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             }
    #           },
    #           step_details: {
    #             attempt: 1,
    #             next_attempt_timestamp: Time.now,
    #             result: "OperationPayload",
    #             error: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             }
    #           },
    #           wait_details: {
    #             scheduled_end_timestamp: Time.now
    #           },
    #           callback_details: {
    #             callback_id: "CallbackId",
    #             result: "OperationPayload",
    #             error: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             }
    #           },
    #           chained_invoke_details: {
    #             result: "OperationPayload",
    #             error: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             }
    #           }
    #         }
    #       ],
    #       next_marker: "String"
    #     }
    #   }
    # @return [Types::CheckpointDurableExecutionResponse]
    def checkpoint_durable_execution(params = {}, options = {})
      request = build_request(:checkpoint_durable_execution, params)
      request.send_request(options)
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a> for a Lambda Event Function version. Use aliases to provide clients with a function identifier that you can update to invoke a different version.</p> <p>You can also map an alias to split invocation requests between two versions. Use the <code>RoutingConfig</code> parameter to specify a second version and the percentage of invocation requests that it receives.</p>
    # @param [Hash, Types::CreateAliasRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    # @option params [String] :function_version
    #   <p>The function version that the alias invokes.</p>
    # @option params [String] :description
    #   <p>A description of the alias.</p>
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing configuration</a> of the alias.</p>
    # @example To create an alias for a Lambda function
    #   # The following example creates an alias named LIVE that points to version 1 of the my-function Lambda function.
    #   params = {
    #     description: "alias for live version of function",
    #     function_name: "my-function",
    #     function_version: "1",
    #     name: "LIVE"
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    #   response.to_h #=>
    #   {
    #     alias_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:LIVE",
    #     description: "alias for live version of function",
    #     function_version: "1",
    #     name: "LIVE",
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "VersionWithLatestPublished", # required
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias_arn: "FunctionArn",
    #     name: "Alias",
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    # @return [Types::CreateAliasOutput]
    def create_alias(params = {}, options = {})
      request = build_request(:create_alias, params)
      request.send_request(options)
    end

    # <p>Creates a capacity provider that manages compute resources for Lambda Event Functions</p>
    # @param [Hash, Types::CreateCapacityProviderRequest] params
    # @option params [String] :capacity_provider_name
    #   <p>The name of the capacity provider. </p>
    # @option params [Types::CapacityProviderVpcConfig] :vpc_config
    #   <p>The VPC configuration for the capacity provider, including subnet IDs and security group IDs where compute instances will be launched.</p>
    # @option params [Types::CapacityProviderPermissionsConfig] :permissions_config
    #   <p>The permissions configuration that specifies the IAM role ARN used by the capacity provider to manage compute resources.</p>
    # @option params [Types::InstanceRequirements] :instance_requirements
    #   <p>The instance requirements that specify the compute instance characteristics, including architectures and allowed or excluded instance types.</p>
    # @option params [Types::CapacityProviderScalingConfig] :capacity_provider_scaling_config
    #   <p>The scaling configuration that defines how the capacity provider scales compute instances, including maximum vCPU count and scaling policies.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt data associated with the capacity provider.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to associate with the capacity provider.</p>
    # @option params [Types::PropagateTags] :propagate_tags
    #   <p>The tag propagation configuration for the capacity provider. Specifies tags to apply to managed resources at launch.</p>
    # @option params [Types::CapacityProviderTelemetryConfig] :telemetry_config
    #   <p>The telemetry configuration for the capacity provider. Specifies logging settings for managed resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_name: "CapacityProviderName", # required
    #     vpc_config: { # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     permissions_config: { # required
    #       capacity_provider_operator_role_arn: "RoleArn", # required
    #     },
    #     instance_requirements: {
    #       architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #       allowed_instance_types: ["InstanceType"],
    #       excluded_instance_types: ["InstanceType"]
    #     },
    #     capacity_provider_scaling_config: {
    #       max_v_cpu_count: 1,
    #       scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #       scaling_policies: [
    #         {
    #           predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #           target_value: 1.0, # required
    #         }
    #       ]
    #     },
    #     kms_key_arn: "KMSKeyArnNonEmpty",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     propagate_tags: {
    #       mode: "None" # One of: ["None", "Explicit"],
    #       explicit_tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     telemetry_config: {
    #       logging_config: {
    #         system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #         log_group: "LogGroup"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: { # required
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #       state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #       vpc_config: { # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"], # required
    #       },
    #       permissions_config: { # required
    #         capacity_provider_operator_role_arn: "RoleArn", # required
    #       },
    #       instance_requirements: {
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         allowed_instance_types: ["InstanceType"],
    #         excluded_instance_types: ["InstanceType"]
    #       },
    #       capacity_provider_scaling_config: {
    #         max_v_cpu_count: 1,
    #         scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #         scaling_policies: [
    #           {
    #             predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #             target_value: 1.0, # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn",
    #       last_modified: "Timestamp",
    #       propagate_tags: {
    #         mode: "None" # One of: ["None", "Explicit"],
    #         explicit_tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateCapacityProviderResponse]
    def create_capacity_provider(params = {}, options = {})
      request = build_request(:create_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Creates a code signing configuration. A <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">code signing configuration</a> defines a list of allowed signing profiles and defines the code-signing validation policy (action to be taken if deployment validation checks fail). </p>
    # @param [Hash, Types::CreateCodeSigningConfigRequest] params
    # @option params [String] :description
    #   <p>Descriptive name for this code signing configuration.</p>
    # @option params [Types::AllowedPublishers] :allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    # @option params [Types::CodeSigningPolicies] :code_signing_policies
    #   <p>The code signing policies define the actions to take if the validation checks fail. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to add to the code signing configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description",
    #     allowed_publishers: { # required
    #       signing_profile_version_arns: ["Arn"], # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_signing_config: { # required
    #       code_signing_config_id: "CodeSigningConfigId", # required
    #       code_signing_config_arn: "CodeSigningConfigArn", # required
    #       description: "Description",
    #       allowed_publishers: { # required
    #         signing_profile_version_arns: ["Arn"], # required
    #       },
    #       code_signing_policies: { # required
    #         untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #       },
    #       last_modified: "Timestamp", # required
    #     }
    #   }
    # @return [Types::CreateCodeSigningConfigResponse]
    def create_code_signing_config(params = {}, options = {})
      request = build_request(:create_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Creates a mapping between an event source and an Lambda Event Function. Lambda reads items from the event source and invokes the function.</p> <p>For details about how to configure different event sources, see the following topics. </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html"> Amazon DocumentDB</a> </p> </li> </ul> <p>The following error handling options are available for stream sources (DynamoDB, Kinesis, Amazon MSK, and self-managed Apache Kafka):</p> <ul> <li> <p> <code>BisectBatchOnFunctionError</code> – If the function returns an error, split the batch in two and retry.</p> </li> <li> <p> <code>MaximumRecordAgeInSeconds</code> – Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p> </li> <li> <p> <code>MaximumRetryAttempts</code> – Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p> </li> <li> <p> <code>OnFailure</code> – Send discarded records to an Amazon SQS queue, Amazon SNS topic, Kafka topic, or Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p> </li> </ul> <p>The following option is available only for DynamoDB and Kinesis event sources:</p> <ul> <li> <p> <code>ParallelizationFactor</code> – Process multiple batches from each shard concurrently.</p> </li> </ul> <p>For information about which configuration parameters apply to each event source, see the following topics.</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration"> Amazon DocumentDB</a> </p> </li> </ul>
    # @param [Hash, Types::CreateEventSourceMappingRequest] params
    # @option params [String] :event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p> <ul> <li> <p> <b>Amazon Kinesis</b> – The ARN of the data stream or a stream consumer.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – The ARN of the stream.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – The ARN of the queue.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – The ARN of the cluster or the ARN of the VPC connection (for <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#msk-multi-vpc">cross-account event source mappings</a>).</p> </li> <li> <p> <b>Amazon MQ</b> – The ARN of the broker.</p> </li> <li> <p> <b>Amazon DocumentDB</b> – The ARN of the DocumentDB change stream.</p> </li> </ul>
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.</p>
    # @option params [Boolean] :enabled
    #   <p>When true, the event source mapping is active. When false, Lambda pauses polling and invocation.</p> <p>Default: True</p>
    # @option params [Integer] :batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <ul> <li> <p> <b>Amazon Kinesis</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Self-managed Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon MQ (ActiveMQ and RabbitMQ)</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>DocumentDB</b> – Default 100. Max 10,000.</p> </li> </ul>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p>
    # @option params [String] :kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    # @option params [Types::EventSourceMappingMetricsConfig] :metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    # @option params [Types::EventSourceMappingLoggingConfig] :logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/esm-logging.html">Event source mapping logging</a>.</p>
    # @option params [Types::ScalingConfig] :scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    # @option params [Integer] :parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    # @option params [String] :starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    # @option params [Time] :starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    # @option params [Types::DestinationConfig] :destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is infinite (-1).</p>
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry.</p>
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the event source mapping.</p>
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    # @option params [Array<String>] :topics
    #   <p>The name of the Kafka topic.</p>
    # @option params [Array<String>] :queues
    #   <p> (MQ) The name of the Amazon MQ broker destination queue to consume. </p>
    # @option params [Array<Types::SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    # @option params [Types::SelfManagedEventSource] :self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster to receive records from.</p>
    # @option params [Array<String>] :function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    # @option params [Types::AmazonManagedKafkaEventSourceConfig] :amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    # @option params [Types::SelfManagedKafkaEventSourceConfig] :self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    # @option params [Types::DocumentDBEventSourceConfig] :document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    # @option params [Types::ProvisionedPollerConfig] :provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    # @example To create a mapping between an event source and an AWS Lambda function
    #   # The following example creates a mapping between an SQS queue and the my-function Lambda function.
    #   params = {
    #     batch_size: 5,
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue",
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.create_event_source_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     batch_size: 5,
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     last_modified: Time.parse(1569284520.333),
    #     state: "Creating",
    #     state_transition_reason: "USER_INITIATED",
    #     uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "Arn",
    #     function_name: "NamespacedFunctionName", # required
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #     },
    #     logging_config: {
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     tumbling_window_in_seconds: 1,
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1,
    #       poller_group_name: "ProvisionedPollerGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.create_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "UUIDString",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #     },
    #     logging_config: {
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1,
    #       poller_group_name: "ProvisionedPollerGroupName"
    #     }
    #   }
    # @return [Types::CreateEventSourceMappingOutput]
    def create_event_source_mapping(params = {}, options = {})
      request = build_request(:create_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Creates a Lambda Event Function. To create a function, you need a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html">deployment package</a> and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role">execution role</a>. The deployment package is a .zip file archive or container image that contains your function code. The execution role grants the function permission to use Amazon Web Services services, such as Amazon CloudWatch Logs for log streaming and X-Ray for request tracing.</p> <p>If the deployment package is a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a>, then you set the package type to <code>Image</code>. For a container image, the code property must include the URI of a container image in the Amazon ECR registry. You do not need to specify the handler and runtime properties.</p> <p>If the deployment package is a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip">.zip file archive</a>, then you set the package type to <code>Zip</code>. For a .zip file archive, the code property specifies the location of the .zip file. You must also specify the handler and runtime properties. The code in the deployment package must be compatible with the target instruction set architecture of the function (<code>x86-64</code> or <code>arm64</code>). If you do not specify the architecture, then the default value is <code>x86-64</code>.</p> <p>When you create a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or modify the function. The <code>State</code>, <code>StateReason</code>, and <code>StateReasonCode</code> fields in the response from <a>GetFunctionConfiguration</a> indicate when the function is ready to invoke. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Lambda function states</a>.</p> <p>A function has an unpublished version, and can have published versions and aliases. The unpublished version changes when you update your function's code and configuration. A published version is a snapshot of your function code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be changed to map to a different version. Use the <code>Publish</code> parameter to create version <code>1</code> of your function from its initial configuration.</p> <p>The other parameters let you configure version-specific and function-level settings. You can modify version-specific settings later with <a>UpdateFunctionConfiguration</a>. Function-level settings apply to both the unpublished and published versions of the function, and include tags (<a>TagResource</a>) and per-function concurrency limits (<a>PutFunctionConcurrency</a>).</p> <p>You can use code signing if your deployment package is a .zip file archive. To enable code signing for this function, specify the ARN of a code-signing configuration. When a user attempts to deploy a code package with <a>UpdateFunctionCode</a>, Lambda checks that the code package has a valid signature from a trusted publisher. The code-signing configuration includes set of signing profiles, which define the trusted publishers for this function.</p> <p>If another Amazon Web Services account or an Amazon Web Services service invokes your function, use <a>AddPermission</a> to grant permission by creating a resource-based Identity and Access Management (IAM) policy. You can grant permissions at the function level, on a version, or on an alias.</p> <p>To invoke your function directly, use <a>Invoke</a>. To invoke your function in response to events in other Amazon Web Services services, create an event source mapping (<a>CreateEventSourceMapping</a>), or configure a function trigger in the other service. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html">Invoking Lambda functions</a>.</p>
    # @param [Hash, Types::CreateFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    # @option params [String] :handler
    #   <p>The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda programming model</a>.</p>
    # @option params [Types::FunctionCode] :code
    #   <p>The code for the function.</p>
    # @option params [String] :description
    #   <p>A description of the function.</p>
    # @option params [Integer] :timeout
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds, and the maximum allowed value is 900 seconds. For functions using Lambda Managed Instances, asynchronous invocations and event source mapping invocations (except Amazon MQ and Amazon DocumentDB) support a maximum allowed value of 5,400 seconds (90 minutes). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    # @option params [Integer] :memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    # @option params [Boolean] :publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
    # @option params [String] :publish_to
    #   <p>Specifies where to publish the function version or configuration.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>For network connectivity to Amazon Web Services resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    # @option params [String] :package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set to <code>Zip</code> for .zip file archive.</p>
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   <p>A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter queues</a>.</p>
    # @option params [Types::Environment] :environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    # @option params [Types::TracingConfig] :tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> to apply to the function.</p>
    # @option params [Array<String>] :layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a> to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    # @option params [Array<Types::FileSystemConfig>] :file_system_configs
    #   <p>Connection settings for an Amazon EFS file system or an Amazon S3 Files file system.</p>
    # @option params [String] :code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.</p>
    # @option params [Types::ImageConfig] :image_config
    #   <p>Container image <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">configuration values</a> that override the values in the container image Dockerfile.</p>
    # @option params [Array<String>] :architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    # @option params [Types::SnapStart] :snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    # @option params [Types::TenancyConfig] :tenancy_config
    #   <p>Configuration for multi-tenant applications that use Lambda functions. Defines tenant isolation settings and resource allocations. Required for functions supporting multiple tenants.</p>
    # @option params [Types::CapacityProviderConfig] :capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    # @option params [Types::DurableConfig] :durable_config
    #   <p>Configuration settings for durable functions. Enables creating functions with durability that can remember their state and continue execution even after interruptions.</p>
    # @example To create a function
    #   # The following example creates a function with a deployment package in Amazon S3 and enables X-Ray tracing and environment variable encryption.
    #   params = {
    #     code: {
    #       s3_bucket: "my-bucket-1xpuxmplzrlbh",
    #       s3_key: "function.zip"
    #     },
    #     description: "Process image objects from Amazon S3.",
    #     durable_config: {
    #       execution_timeout: 31622400,
    #       retention_period_in_days: 30
    #     },
    #     environment: {
    #       variables: {
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #         "PREFIX" => "inbound"
    #       }
    #     },
    #     function_name: "my-function",
    #     handler: "index.handler",
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     memory_size: 256,
    #     publish: true,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     runtime: nodejs12.x,
    #     tags: {
    #       "DEPARTMENT" => "Assets"
    #     },
    #     timeout: 15,
    #     tracing_config: {
    #       mode: Active
    #     }
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    #   response.to_h #=>
    #   {
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     durable_config: {
    #       execution_timeout: 31622400,
    #       retention_period_in_days: 30
    #     },
    #     environment: {
    #       variables: {
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #         "PREFIX" => "inbound"
    #       }
    #     },
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     function_name: "my-function",
    #     handler: "index.handler",
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     last_update_status: Successful,
    #     memory_size: 256,
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     runtime: nodejs12.x,
    #     state: Active,
    #     timeout: 15,
    #     tracing_config: {
    #       mode: Active
    #     },
    #     version: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     role: "RoleArn", # required
    #     handler: "Handler",
    #     code: { # required
    #       zip_file: "data",
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       s3_object_storage_mode: "COPY" # One of: ["COPY", "REFERENCE"],
    #       image_uri: "String",
    #       source_kms_key_arn: "KMSKeyArn"
    #     },
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
    #     publish_to: "LATEST_PUBLISHED" # One of: ["LATEST_PUBLISHED"],
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     layers: ["LayerVersionArn"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     code_signing_config_arn: "CodeSigningConfigArn",
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory"
    #     },
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"]
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     tenancy_config: {
    #       tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     tenancy_config: {
    #       tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     config_sha256: "String",
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    # @return [Types::CreateFunctionOutput]
    def create_function(params = {}, options = {})
      request = build_request(:create_function, params)
      request.send_request(options)
    end

    # <p>Creates a Lambda function URL with the specified configuration parameters. A function URL is a dedicated HTTP(S) endpoint that you can use to invoke your function.</p>
    # @param [Hash, Types::CreateFunctionUrlConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @option params [String] :auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    # @option params [Types::Cors] :cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    # @option params [String] :invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionUrlFunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    #   options = {}
    #   response = client.create_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_url: "FunctionUrl", # required
    #     function_arn: "FunctionArn", # required
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     creation_time: "Timestamp", # required
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    # @return [Types::CreateFunctionUrlConfigResponse]
    def create_function_url_config(params = {}, options = {})
      request = build_request(:create_function_url_config, params)
      request.send_request(options)
    end

    # <p>Deletes a Lambda Event Function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @param [Hash, Types::DeleteAliasRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    # @example To delete a Lambda function alias
    #   # The following example deletes an alias named BLUE from a function named my-function
    #   params = {
    #     function_name: "my-function",
    #     name: "BLUE"
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_alias(params = {}, options = {})
      request = build_request(:delete_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a capacity provider. You cannot delete a capacity provider that is currently being used by Lambda functions.</p>
    # @param [Hash, Types::DeleteCapacityProviderRequest] params
    # @option params [String] :capacity_provider_name
    #   <p>The name of the capacity provider to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_name: "CapacityProviderName", # required
    #   }
    #   options = {}
    #   response = client.delete_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: { # required
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #       state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #       vpc_config: { # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"], # required
    #       },
    #       permissions_config: { # required
    #         capacity_provider_operator_role_arn: "RoleArn", # required
    #       },
    #       instance_requirements: {
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         allowed_instance_types: ["InstanceType"],
    #         excluded_instance_types: ["InstanceType"]
    #       },
    #       capacity_provider_scaling_config: {
    #         max_v_cpu_count: 1,
    #         scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #         scaling_policies: [
    #           {
    #             predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #             target_value: 1.0, # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn",
    #       last_modified: "Timestamp",
    #       propagate_tags: {
    #         mode: "None" # One of: ["None", "Explicit"],
    #         explicit_tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteCapacityProviderResponse]
    def delete_capacity_provider(params = {}, options = {})
      request = build_request(:delete_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Deletes the code signing configuration. You can delete the code signing configuration only if no function is using it. </p>
    # @param [Hash, Types::DeleteCodeSigningConfigRequest] params
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #   }
    #   options = {}
    #   response = client.delete_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCodeSigningConfigResponse]
    def delete_code_signing_config(params = {}, options = {})
      request = build_request(:delete_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Deletes an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html">event source mapping</a>. You can get the identifier of a mapping from the output of <a>ListEventSourceMappings</a>.</p> <p>When you delete an event source mapping, it enters a <code>Deleting</code> state and might not be completely deleted for several seconds.</p>
    # @param [Hash, Types::DeleteEventSourceMappingRequest] params
    # @option params [String] :uuid
    #   <p>The identifier of the event source mapping.</p>
    # @example To delete a Lambda function event source mapping
    #   # The following example deletes an event source mapping. To get a mapping's UUID, use ListEventSourceMappings.
    #   params = {
    #     uuid: "14e0db71-xmpl-4eb5-b481-8945cf9d10c2"
    #   }
    #   options = {}
    #   response = client.delete_event_source_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     batch_size: 5,
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue",
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     state: "Enabled",
    #     state_transition_reason: "USER_INITIATED",
    #     uuid: "14e0db71-xmpl-4eb5-b481-8945cf9d10c2"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "UUIDString", # required
    #   }
    #   options = {}
    #   response = client.delete_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "UUIDString",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #     },
    #     logging_config: {
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1,
    #       poller_group_name: "ProvisionedPollerGroupName"
    #     }
    #   }
    # @return [Types::DeleteEventSourceMappingOutput]
    def delete_event_source_mapping(params = {}, options = {})
      request = build_request(:delete_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes a Lambda Event Function. To delete a specific function version, use the <code>Qualifier</code> parameter. Otherwise, all versions and aliases are deleted. This doesn't require the user to have explicit permissions for <a>DeleteAlias</a>.</p> <note> <p>A deleted Lambda function cannot be recovered. Ensure that you specify the correct function name and version before deleting.</p> </note> <p>To delete Lambda event source mappings that invoke a function, use <a>DeleteEventSourceMapping</a>. For Amazon Web Services services and resources that invoke your function directly, delete the trigger in the service where you originally configured it.</p>
    # @param [Hash, Types::DeleteFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function or version.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version to delete. You can't delete a version that an alias references.</p>
    # @example To delete a version of a Lambda function
    #   # The following example deletes version 1 of a Lambda function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.delete_function(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.delete_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @return [Types::DeleteFunctionResponse]
    def delete_function(params = {}, options = {})
      request = build_request(:delete_function, params)
      request.send_request(options)
    end

    # <p>Removes the code signing configuration from the function.</p>
    # @param [Hash, Types::DeleteFunctionCodeSigningConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #   }
    #   options = {}
    #   response = client.delete_function_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_function_code_signing_config(params = {}, options = {})
      request = build_request(:delete_function_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Removes a concurrent execution limit from a function.</p>
    # @param [Hash, Types::DeleteFunctionConcurrencyRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example To remove the reserved concurrent execution limit from a function
    #   # The following example deletes the reserved concurrent execution limit from a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.delete_function_concurrency(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   response = client.delete_function_concurrency(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_function_concurrency(params = {}, options = {})
      request = build_request(:delete_function_concurrency, params)
      request.send_request(options)
    end

    # <p>Deletes the configuration for asynchronous invocation for a function, version, or alias.</p> <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    # @param [Hash, Types::DeleteFunctionEventInvokeConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    # @example To delete an asynchronous invocation configuration
    #   # The following example deletes the asynchronous invocation configuration for the GREEN alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "GREEN"
    #   }
    #   options = {}
    #   response = client.delete_function_event_invoke_config(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.delete_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_function_event_invoke_config(params = {}, options = {})
      request = build_request(:delete_function_event_invoke_config, params)
      request.send_request(options)
    end

    # <p>Deletes a Lambda function URL. When you delete a function URL, you can't recover it. Creating a new function URL results in a different URL address.</p>
    # @param [Hash, Types::DeleteFunctionUrlConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionUrlFunctionName", # required
    #     qualifier: "FunctionUrlQualifier"
    #   }
    #   options = {}
    #   response = client.delete_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_function_url_config(params = {}, options = {})
      request = build_request(:delete_function_url_config, params)
      request.send_request(options)
    end

    # <p>Deletes a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>. Deleted versions can no longer be viewed or added to functions. To avoid breaking functions, a copy of the version remains in Lambda until no functions refer to it.</p>
    # @param [Hash, Types::DeleteLayerVersionRequest] params
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    # @example To delete a version of a Lambda layer
    #   # The following example deletes version 2 of a layer named my-layer.
    #   params = {
    #     layer_name: "my-layer",
    #     version_number: 2
    #   }
    #   options = {}
    #   response = client.delete_layer_version(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_layer_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_layer_version(params = {}, options = {})
      request = build_request(:delete_layer_version, params)
      request.send_request(options)
    end

    # <p>Deletes the provisioned concurrency configuration for a function.</p>
    # @param [Hash, Types::DeleteProvisionedConcurrencyConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The version number or alias name.</p>
    # @example To delete a provisioned concurrency configuration
    #   # The following example deletes the provisioned concurrency configuration for the GREEN alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "GREEN"
    #   }
    #   options = {}
    #   response = client.delete_provisioned_concurrency_config(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #   }
    #   options = {}
    #   response = client.delete_provisioned_concurrency_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_provisioned_concurrency_config(params = {}, options = {})
      request = build_request(:delete_provisioned_concurrency_config, params)
      request.send_request(options)
    end

    # <p>Deletes a <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">resource-based policy</a> from a Lambda resource.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda resource you want to delete the policy from. You can use a qualified or an unqualified ARN. The value must be a complete ARN, and the operation does not accept wildcard characters.</p>
    # @option params [String] :revision_id
    #   <p>The revision ID that the existing policy must match for the deletion to proceed. If the revision ID doesn't match, the operation fails with a <code>PreconditionFailedException</code> error. To retrieve the current revision ID, use the <a>GetResourcePolicy</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PolicyResourceArn", # required
    #     revision_id: "RevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves details about your account's <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">limits</a> and usage in an Amazon Web Services Region.</p>
    # @param [Hash, Types::GetAccountSettingsRequest] params
    # @example To get account settings
    #   # This operation takes no parameters and returns details about storage and concurrency quotas in the current Region.
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    #   response.to_h #=>
    #   {
    #     account_limit: {
    #       code_size_unzipped: 262144000,
    #       code_size_zipped: 52428800,
    #       concurrent_executions: 1000,
    #       total_code_size: 80530636800,
    #       unreserved_concurrent_executions: 1000
    #     },
    #     account_usage: {
    #       function_count: 4,
    #       total_code_size: 9426
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_limit: {
    #       total_code_size: 1,
    #       code_size_unzipped: 1,
    #       code_size_zipped: 1,
    #       concurrent_executions: 1,
    #       unreserved_concurrent_executions: 1
    #     },
    #     account_usage: {
    #       total_code_size: 1,
    #       function_count: 1
    #     }
    #   }
    # @return [Types::GetAccountSettingsResponse]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Returns details about a Lambda Event Function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @param [Hash, Types::GetAliasRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    # @example To get a Lambda function alias
    #   # The following example returns details about an alias named BLUE for a function named my-function
    #   params = {
    #     function_name: "my-function",
    #     name: "BLUE"
    #   }
    #   options = {}
    #   response = client.get_alias(params, options)
    #   response.to_h #=>
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE",
    #     description: "Production environment BLUE.",
    #     function_version: "3",
    #     name: "BLUE",
    #     revision_id: "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   }
    #   options = {}
    #   response = client.get_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias_arn: "FunctionArn",
    #     name: "Alias",
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    # @return [Types::GetAliasOutput]
    def get_alias(params = {}, options = {})
      request = build_request(:get_alias, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific capacity provider, including its configuration, state, and associated resources.</p>
    # @param [Hash, Types::GetCapacityProviderRequest] params
    # @option params [String] :capacity_provider_name
    #   <p>The name of the capacity provider to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_name: "CapacityProviderName", # required
    #   }
    #   options = {}
    #   response = client.get_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: { # required
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #       state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #       vpc_config: { # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"], # required
    #       },
    #       permissions_config: { # required
    #         capacity_provider_operator_role_arn: "RoleArn", # required
    #       },
    #       instance_requirements: {
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         allowed_instance_types: ["InstanceType"],
    #         excluded_instance_types: ["InstanceType"]
    #       },
    #       capacity_provider_scaling_config: {
    #         max_v_cpu_count: 1,
    #         scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #         scaling_policies: [
    #           {
    #             predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #             target_value: 1.0, # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn",
    #       last_modified: "Timestamp",
    #       propagate_tags: {
    #         mode: "None" # One of: ["None", "Explicit"],
    #         explicit_tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCapacityProviderResponse]
    def get_capacity_provider(params = {}, options = {})
      request = build_request(:get_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified code signing configuration.</p>
    # @param [Hash, Types::GetCodeSigningConfigRequest] params
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #   }
    #   options = {}
    #   response = client.get_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_signing_config: { # required
    #       code_signing_config_id: "CodeSigningConfigId", # required
    #       code_signing_config_arn: "CodeSigningConfigArn", # required
    #       description: "Description",
    #       allowed_publishers: { # required
    #         signing_profile_version_arns: ["Arn"], # required
    #       },
    #       code_signing_policies: { # required
    #         untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #       },
    #       last_modified: "Timestamp", # required
    #     }
    #   }
    # @return [Types::GetCodeSigningConfigResponse]
    def get_code_signing_config(params = {}, options = {})
      request = build_request(:get_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a>, including its current status, input payload, result or error information, and execution metadata such as start time and usage statistics.</p>
    # @param [Hash, Types::GetDurableExecutionRequest] params
    # @option params [String] :durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    # @option params [Boolean] :include_execution_data
    #   <p>Specifies whether to include execution data such as input payload, result, and error information in the response. Set to <code>false</code> for a more compact response that includes only execution metadata. The default value is set to <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     durable_execution_arn: "DurableExecutionArn", # required
    #     include_execution_data: false
    #   }
    #   options = {}
    #   response = client.get_durable_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     durable_execution_arn: "DurableExecutionArn", # required
    #     durable_execution_name: "DurableExecutionName", # required
    #     function_arn: "NameSpacedFunctionArn", # required
    #     input_payload: "InputPayload",
    #     result: "OutputPayload",
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_type: "ErrorType",
    #       error_data: "ErrorData",
    #       stack_trace: ["StackTraceEntry"]
    #     },
    #     start_timestamp: Time.now, # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "STOPPED"], # required
    #     end_timestamp: Time.now,
    #     version: "VersionWithLatestPublished",
    #     trace_header: {
    #       x_amzn_trace_id: "XAmznTraceId"
    #     },
    #     execution_data_included: false,
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    # @return [Types::GetDurableExecutionResponse]
    def get_durable_execution(params = {}, options = {})
      request = build_request(:get_durable_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves the execution history for a <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a>, showing all the steps, callbacks, and events that occurred during the execution. This provides a detailed audit trail of the execution's progress over time.</p> <p>The history is available while the execution is running and for a retention period after it completes (1-90 days, default 30 days). You can control whether to include execution data such as step results and callback payloads.</p>
    # @param [Hash, Types::GetDurableExecutionHistoryRequest] params
    # @option params [String] :durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    # @option params [Boolean] :include_execution_data
    #   <p>Specifies whether to include execution data such as step results and callback payloads in the history events. Set to <code>true</code> to include data, or <code>false</code> to exclude it for a more compact response. The default is <code>true</code>.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of history events to return per call. You can use <code>Marker</code> to retrieve additional pages of results. The default is 100 and the maximum allowed is 1000. A value of 0 uses the default.</p>
    # @option params [String] :marker
    #   <p>If <code>NextMarker</code> was returned from a previous request, use this value to retrieve the next page of results. Each pagination token expires after 24 hours.</p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the history events in reverse chronological order (newest first). By default, events are returned in chronological order (oldest first).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     durable_execution_arn: "DurableExecutionArn", # required
    #     include_execution_data: false,
    #     max_items: 1,
    #     marker: "String",
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.get_durable_execution_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         event_type: "ExecutionStarted" # One of: ["ExecutionStarted", "ExecutionSucceeded", "ExecutionFailed", "ExecutionTimedOut", "ExecutionStopped", "ContextStarted", "ContextSucceeded", "ContextFailed", "WaitStarted", "WaitSucceeded", "WaitCancelled", "StepStarted", "StepSucceeded", "StepFailed", "ChainedInvokeStarted", "ChainedInvokeSucceeded", "ChainedInvokeFailed", "ChainedInvokeTimedOut", "ChainedInvokeStopped", "CallbackStarted", "CallbackSucceeded", "CallbackFailed", "CallbackTimedOut", "InvocationCompleted"],
    #         sub_type: "OperationSubType",
    #         event_id: 1,
    #         id: "OperationId",
    #         name: "OperationName",
    #         event_timestamp: Time.now,
    #         parent_id: "OperationId",
    #         execution_started_details: {
    #           input: { # required
    #             payload: "InputPayload",
    #             truncated: false
    #           },
    #           execution_timeout: 1, # required
    #         },
    #         execution_succeeded_details: {
    #           result: { # required
    #             payload: "OperationPayload",
    #             truncated: false
    #           }
    #         },
    #         execution_failed_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         execution_timed_out_details: {
    #           error: {
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         execution_stopped_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         context_started_details: {
    #         },
    #         context_succeeded_details: {
    #           result: { # required
    #             payload: "OperationPayload",
    #             truncated: false
    #           }
    #         },
    #         context_failed_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         wait_started_details: {
    #           duration: 1, # required
    #           scheduled_end_timestamp: Time.now, # required
    #         },
    #         wait_succeeded_details: {
    #           duration: 1
    #         },
    #         wait_cancelled_details: {
    #           error: {
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         step_started_details: {
    #         },
    #         step_succeeded_details: {
    #           result: { # required
    #             payload: "OperationPayload",
    #             truncated: false
    #           },
    #           retry_details: { # required
    #             current_attempt: 1,
    #             next_attempt_delay_seconds: 1
    #           }
    #         },
    #         step_failed_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           },
    #           retry_details: { # required
    #             current_attempt: 1,
    #             next_attempt_delay_seconds: 1
    #           }
    #         },
    #         chained_invoke_started_details: {
    #           function_name: "NamespacedFunctionName", # required
    #           tenant_id: "TenantId",
    #           input: {
    #             payload: "InputPayload",
    #             truncated: false
    #           },
    #           executed_version: "VersionWithLatestPublished",
    #           durable_execution_arn: "DurableExecutionArn"
    #         },
    #         chained_invoke_succeeded_details: {
    #           result: { # required
    #             payload: "OperationPayload",
    #             truncated: false
    #           }
    #         },
    #         chained_invoke_failed_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         chained_invoke_timed_out_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         chained_invoke_stopped_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         callback_started_details: {
    #           callback_id: "CallbackId", # required
    #           heartbeat_timeout: 1,
    #           timeout: 1
    #         },
    #         callback_succeeded_details: {
    #           result: { # required
    #             payload: "OperationPayload",
    #             truncated: false
    #           }
    #         },
    #         callback_failed_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         callback_timed_out_details: {
    #           error: { # required
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         },
    #         invocation_completed_details: {
    #           start_timestamp: Time.now, # required
    #           end_timestamp: Time.now, # required
    #           request_id: "String", # required
    #           error: {
    #             payload: {
    #               error_message: "ErrorMessage",
    #               error_type: "ErrorType",
    #               error_data: "ErrorData",
    #               stack_trace: ["StackTraceEntry"]
    #             },
    #             truncated: false
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::GetDurableExecutionHistoryResponse]
    def get_durable_execution_history(params = {}, options = {})
      request = build_request(:get_durable_execution_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the current execution state required for the replay process during <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable function</a> execution. This API is used by the Lambda durable functions SDK to get state information needed for replay. You typically don't need to call this API directly as the SDK handles state management automatically.</p> <p>The response contains operations ordered by start sequence number in ascending order. Completed operations with children don't include child operation details since they don't need to be replayed.</p>
    # @param [Hash, Types::GetDurableExecutionStateRequest] params
    # @option params [String] :durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    # @option params [String] :checkpoint_token
    #   <p>A checkpoint token that identifies the current state of the execution. This token is provided by the Lambda runtime and ensures that state retrieval is consistent with the current execution context.</p>
    # @option params [String] :marker
    #   <p>If <code>NextMarker</code> was returned from a previous request, use this value to retrieve the next page of operations. Each pagination token expires after 24 hours.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of operations to return per call. You can use <code>Marker</code> to retrieve additional pages of results. The default is 100 and the maximum allowed is 1000. A value of 0 uses the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     durable_execution_arn: "DurableExecutionArn", # required
    #     checkpoint_token: "CheckpointToken", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.get_durable_execution_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [ # required
    #       {
    #         id: "OperationId", # required
    #         parent_id: "OperationId",
    #         name: "OperationName",
    #         type: "EXECUTION" # One of: ["EXECUTION", "CONTEXT", "STEP", "WAIT", "CALLBACK", "CHAINED_INVOKE"], # required
    #         sub_type: "OperationSubType",
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now,
    #         status: "STARTED" # One of: ["STARTED", "PENDING", "READY", "SUCCEEDED", "FAILED", "CANCELLED", "TIMED_OUT", "STOPPED"], # required
    #         execution_details: {
    #           input_payload: "InputPayload"
    #         },
    #         context_details: {
    #           replay_children: false,
    #           result: "OperationPayload",
    #           error: {
    #             error_message: "ErrorMessage",
    #             error_type: "ErrorType",
    #             error_data: "ErrorData",
    #             stack_trace: ["StackTraceEntry"]
    #           }
    #         },
    #         step_details: {
    #           attempt: 1,
    #           next_attempt_timestamp: Time.now,
    #           result: "OperationPayload",
    #           error: {
    #             error_message: "ErrorMessage",
    #             error_type: "ErrorType",
    #             error_data: "ErrorData",
    #             stack_trace: ["StackTraceEntry"]
    #           }
    #         },
    #         wait_details: {
    #           scheduled_end_timestamp: Time.now
    #         },
    #         callback_details: {
    #           callback_id: "CallbackId",
    #           result: "OperationPayload",
    #           error: {
    #             error_message: "ErrorMessage",
    #             error_type: "ErrorType",
    #             error_data: "ErrorData",
    #             stack_trace: ["StackTraceEntry"]
    #           }
    #         },
    #         chained_invoke_details: {
    #           result: "OperationPayload",
    #           error: {
    #             error_message: "ErrorMessage",
    #             error_type: "ErrorType",
    #             error_data: "ErrorData",
    #             stack_trace: ["StackTraceEntry"]
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::GetDurableExecutionStateResponse]
    def get_durable_execution_state(params = {}, options = {})
      request = build_request(:get_durable_execution_state, params)
      request.send_request(options)
    end

    # <p>Returns details about an event source mapping. You can get the identifier of a mapping from the output of <a>ListEventSourceMappings</a>.</p>
    # @param [Hash, Types::GetEventSourceMappingRequest] params
    # @option params [String] :uuid
    #   <p>The identifier of the event source mapping.</p>
    # @example To get a Lambda function's event source mapping
    #   # The following example returns details about an event source mapping. To get a mapping's UUID, use ListEventSourceMappings.
    #   params = {
    #     uuid: "14e0db71-xmpl-4eb5-b481-8945cf9d10c2"
    #   }
    #   options = {}
    #   response = client.get_event_source_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     batch_size: 500,
    #     bisect_batch_on_function_error: false,
    #     destination_config: {
    #     },
    #     event_source_arn: "arn:aws:sqs:us-east-2:123456789012:mySQSqueue",
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:myFunction",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     last_processing_result: "No records processed",
    #     maximum_record_age_in_seconds: 604800,
    #     maximum_retry_attempts: 10000,
    #     state: "Creating",
    #     state_transition_reason: "User action",
    #     uuid: "14e0db71-xmpl-4eb5-b481-8945cf9d10c2"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "UUIDString", # required
    #   }
    #   options = {}
    #   response = client.get_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "UUIDString",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #     },
    #     logging_config: {
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1,
    #       poller_group_name: "ProvisionedPollerGroupName"
    #     }
    #   }
    # @return [Types::GetEventSourceMappingOutput]
    def get_event_source_mapping(params = {}, options = {})
      request = build_request(:get_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes. If you specify a function version, only details that are specific to that version are returned.</p>
    # @param [Hash, Types::GetFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    # @example To get a Lambda function
    #   # The following example returns code and configuration details for version 1 of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.get_function(params, options)
    #   response.to_h #=>
    #   {
    #     code: {
    #       location: "https://awslambda-us-west-2-tasks.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-function-e7d9d1ed-xmpl-4f79-904a-4b87f2681f30?versionId=sH3TQwBOaUy...",
    #       repository_type: "S3"
    #     },
    #     configuration: {
    #       code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #       code_size: 5797206,
    #       description: "Process image objects from Amazon S3.",
    #       durable_config: {
    #         execution_timeout: 31622400,
    #         retention_period_in_days: 30
    #       },
    #       environment: {
    #         variables: {
    #           "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #           "PREFIX" => "inbound"
    #         }
    #       },
    #       function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #       function_name: "my-function",
    #       handler: "index.handler",
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #       last_modified: "2020-04-10T19:06:32.563+0000",
    #       last_update_status: Successful,
    #       memory_size: 256,
    #       revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #       role: "arn:aws:iam::123456789012:role/lambda-role",
    #       runtime: nodejs12.x,
    #       state: Active,
    #       timeout: 15,
    #       tracing_config: {
    #         mode: Active
    #       },
    #       version: "$LATEST"
    #     },
    #     tags: {
    #       "DEPARTMENT" => "Assets"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.get_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       function_name: "NamespacedFunctionName",
    #       function_arn: "NameSpacedFunctionArn",
    #       runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #       role: "RoleArn",
    #       handler: "Handler",
    #       code_size: 1,
    #       description: "Description",
    #       timeout: 1,
    #       memory_size: 1,
    #       last_modified: "Timestamp",
    #       code_sha256: "String",
    #       version: "Version",
    #       vpc_config: {
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         vpc_id: "VpcId",
    #         ipv6_allowed_for_dual_stack: false
    #       },
    #       dead_letter_config: {
    #         target_arn: "ResourceArn"
    #       },
    #       environment: {
    #         variables: {
    #           "EnvironmentVariableName" => "EnvironmentVariableValue"
    #         },
    #         error: {
    #           error_code: "String",
    #           message: "SensitiveString"
    #         }
    #       },
    #       kms_key_arn: "KMSKeyArn",
    #       tracing_config: {
    #         mode: "Active" # One of: ["Active", "PassThrough"]
    #       },
    #       master_arn: "FunctionArn",
    #       revision_id: "String",
    #       layers: [
    #         {
    #           arn: "LayerVersionArn",
    #           code_size: 1,
    #           signing_profile_version_arn: "Arn",
    #           signing_job_arn: "Arn"
    #         }
    #       ],
    #       state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #       state_reason: "StateReason",
    #       state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #       last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #       last_update_status_reason: "LastUpdateStatusReason",
    #       last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #       file_system_configs: [
    #         {
    #           arn: "FileSystemArn", # required
    #           local_mount_path: "LocalMountPath", # required
    #           s3_files_config: {
    #             direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #           }
    #         }
    #       ],
    #       signing_profile_version_arn: "Arn",
    #       signing_job_arn: "Arn",
    #       package_type: "Zip" # One of: ["Zip", "Image"],
    #       image_config_response: {
    #         image_config: {
    #           entry_point: ["String"],
    #           command: ["String"],
    #           working_directory: "WorkingDirectory"
    #         },
    #         error: {
    #           error_code: "String",
    #           message: "SensitiveString"
    #         }
    #       },
    #       architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #       ephemeral_storage: {
    #         size: 1, # required
    #       },
    #       snap_start: {
    #         apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #         optimization_status: "On" # One of: ["On", "Off"]
    #       },
    #       runtime_version_config: {
    #         runtime_version_arn: "RuntimeVersionArn",
    #         error: {
    #           error_code: "String",
    #           message: "SensitiveString"
    #         }
    #       },
    #       logging_config: {
    #         log_format: "JSON" # One of: ["JSON", "Text"],
    #         application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #         system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #         log_group: "LogGroup"
    #       },
    #       tenancy_config: {
    #         tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #       },
    #       capacity_provider_config: {
    #         lambda_managed_instances_capacity_provider_config: { # required
    #           capacity_provider_arn: "CapacityProviderArn", # required
    #           per_execution_environment_max_concurrency: 1,
    #           execution_environment_memory_gi_b_per_v_cpu: 1.0
    #         }
    #       },
    #       config_sha256: "String",
    #       durable_config: {
    #         kms_key_arn: "KMSKeyArn",
    #         retention_period_in_days: 1,
    #         execution_timeout: 1
    #       }
    #     },
    #     code: {
    #       repository_type: "String",
    #       location: "SensitiveStringOnServerOnly",
    #       image_uri: "String",
    #       resolved_image_uri: "String",
    #       resolved_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion"
    #       },
    #       source_kms_key_arn: "KMSKeyArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     tags_error: {
    #       error_code: "TagsErrorCode", # required
    #       message: "TagsErrorMessage", # required
    #     },
    #     concurrency: {
    #       reserved_concurrent_executions: 1
    #     }
    #   }
    # @return [Types::GetFunctionResponse]
    def get_function(params = {}, options = {})
      request = build_request(:get_function, params)
      request.send_request(options)
    end

    # <p>Returns the code signing configuration for the specified function.</p>
    # @param [Hash, Types::GetFunctionCodeSigningConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #   }
    #   options = {}
    #   response = client.get_function_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "FunctionName", # required
    #   }
    # @return [Types::GetFunctionCodeSigningConfigResponse]
    def get_function_code_signing_config(params = {}, options = {})
      request = build_request(:get_function_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Returns details about the reserved concurrency configuration for a function. To set a concurrency limit for a function, use <a>PutFunctionConcurrency</a>.</p>
    # @param [Hash, Types::GetFunctionConcurrencyRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example To get the reserved concurrency setting for a function
    #   # The following example returns the reserved concurrency setting for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.get_function_concurrency(params, options)
    #   response.to_h #=>
    #   {
    #     reserved_concurrent_executions: 250
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   response = client.get_function_concurrency(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_concurrent_executions: 1
    #   }
    # @return [Types::GetFunctionConcurrencyResponse]
    def get_function_concurrency(params = {}, options = {})
      request = build_request(:get_function_concurrency, params)
      request.send_request(options)
    end

    # <p>Returns the version-specific settings of a Lambda Event Function or version. The output includes only options that can vary between versions of a function. To modify these settings, use <a>UpdateFunctionConfiguration</a>.</p> <p>To get all of a function's details, including function-level settings, use <a>GetFunction</a>.</p>
    # @param [Hash, Types::GetFunctionConfigurationRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    # @example To get a Lambda function's event source mapping
    #   # The following example returns and configuration details for version 1 of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.get_function_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     durable_config: {
    #       execution_timeout: 31622400,
    #       retention_period_in_days: 30
    #     },
    #     environment: {
    #       variables: {
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #         "PREFIX" => "inbound"
    #       }
    #     },
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     function_name: "my-function",
    #     handler: "index.handler",
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     last_update_status: Successful,
    #     memory_size: 256,
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     runtime: nodejs12.x,
    #     state: Active,
    #     timeout: 15,
    #     tracing_config: {
    #       mode: Active
    #     },
    #     version: "$LATEST"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.get_function_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     tenancy_config: {
    #       tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     config_sha256: "String",
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    # @return [Types::GetFunctionConfigurationOutput]
    def get_function_configuration(params = {}, options = {})
      request = build_request(:get_function_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration for asynchronous invocation for a function, version, or alias.</p> <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    # @param [Hash, Types::GetFunctionEventInvokeConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    # @example To get an asynchronous invocation configuration
    #   # The following example returns the asynchronous invocation configuration for the BLUE alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "BLUE"
    #   }
    #   options = {}
    #   response = client.get_function_event_invoke_config(params, options)
    #   response.to_h #=>
    #   {
    #     destination_config: {
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:failed-invocations"
    #       },
    #       on_success: {
    #       }
    #     },
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     maximum_event_age_in_seconds: 3600,
    #     maximum_retry_attempts: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.get_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified: Time.now,
    #     function_arn: "FunctionArn",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    # @return [Types::GetFunctionEventInvokeConfigOutput]
    def get_function_event_invoke_config(params = {}, options = {})
      request = build_request(:get_function_event_invoke_config, params)
      request.send_request(options)
    end

    # <p>Returns your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html">recursive loop detection</a> configuration. </p>
    # @param [Hash, Types::GetFunctionRecursionConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name of the function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "UnqualifiedFunctionName", # required
    #   }
    #   options = {}
    #   response = client.get_function_recursion_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recursive_loop: "Allow" # One of: ["Allow", "Terminate"]
    #   }
    # @return [Types::GetFunctionRecursionConfigResponse]
    def get_function_recursion_config(params = {}, options = {})
      request = build_request(:get_function_recursion_config, params)
      request.send_request(options)
    end

    # <p>Retrieves the scaling configuration for a Lambda Managed Instances function.</p>
    # @param [Hash, Types::GetFunctionScalingConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get the scaling configuration for a published version of the function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "UnqualifiedFunctionName", # required
    #     qualifier: "PublishedFunctionQualifier", # required
    #   }
    #   options = {}
    #   response = client.get_function_scaling_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_arn: "FunctionArn",
    #     applied_function_scaling_config: {
    #       min_execution_environments: 1,
    #       max_execution_environments: 1
    #     },
    #     requested_function_scaling_config: {
    #       min_execution_environments: 1,
    #       max_execution_environments: 1
    #     }
    #   }
    # @return [Types::GetFunctionScalingConfigResponse]
    def get_function_scaling_config(params = {}, options = {})
      request = build_request(:get_function_scaling_config, params)
      request.send_request(options)
    end

    # <p>Returns details about a Lambda function URL.</p>
    # @param [Hash, Types::GetFunctionUrlConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionUrlFunctionName", # required
    #     qualifier: "FunctionUrlQualifier"
    #   }
    #   options = {}
    #   response = client.get_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_url: "FunctionUrl", # required
    #     function_arn: "FunctionArn", # required
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     creation_time: "Timestamp", # required
    #     last_modified_time: "Timestamp", # required
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    # @return [Types::GetFunctionUrlConfigResponse]
    def get_function_url_config(params = {}, options = {})
      request = build_request(:get_function_url_config, params)
      request.send_request(options)
    end

    # <p>Returns information about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>, with a link to download the layer archive that's valid for 10 minutes.</p>
    # @param [Hash, Types::GetLayerVersionRequest] params
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    # @example To get information about a Lambda layer version
    #   # The following example returns information for version 1 of a layer named my-layer.
    #   params = {
    #     layer_name: "my-layer",
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.get_layer_version(params, options)
    #   response.to_h #=>
    #   {
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ],
    #     content: {
    #       code_sha256: "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=",
    #       code_size: 169,
    #       location: "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH..."
    #     },
    #     created_date: "2018-11-14T23:03:52.894+0000",
    #     description: "My Python layer",
    #     layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer",
    #     layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1",
    #     license_info: "MIT",
    #     version: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   response = client.get_layer_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       location: "SensitiveStringOnServerOnly",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "Arn",
    #       signing_job_arn: "Arn",
    #       resolved_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion"
    #       }
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"]],
    #     license_info: "LicenseInfo"
    #   }
    # @return [Types::GetLayerVersionOutput]
    def get_layer_version(params = {}, options = {})
      request = build_request(:get_layer_version, params)
      request.send_request(options)
    end

    # <p>Returns information about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>, with a link to download the layer archive that's valid for 10 minutes.</p>
    # @param [Hash, Types::GetLayerVersionByArnRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the layer version.</p>
    # @example To get information about a Lambda layer version
    #   # The following example returns information about the layer version with the specified Amazon Resource Name (ARN).
    #   params = {
    #     arn: "arn:aws:lambda:ca-central-1:123456789012:layer:blank-python-lib:3"
    #   }
    #   options = {}
    #   response = client.get_layer_version_by_arn(params, options)
    #   response.to_h #=>
    #   {
    #     compatible_runtimes: [
    #       python3.8
    #     ],
    #     content: {
    #       code_sha256: "6x+xmpl/M3BnQUk7gS9sGmfeFsR/npojXoA3fZUv4eU=",
    #       code_size: 9529009,
    #       location: "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/blank-python-lib-e5212378-xmpl-44ee-8398-9d8ec5113949?versionId=WbZnvf..."
    #     },
    #     created_date: "2020-03-31T00:35:18.949+0000",
    #     description: "Dependencies for the blank-python sample app.",
    #     layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib",
    #     layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib:3",
    #     version: 3
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "LayerVersionArn", # required
    #   }
    #   options = {}
    #   response = client.get_layer_version_by_arn(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       location: "SensitiveStringOnServerOnly",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "Arn",
    #       signing_job_arn: "Arn",
    #       resolved_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion"
    #       }
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"]],
    #     license_info: "LicenseInfo"
    #   }
    # @return [Types::GetLayerVersionByArnOutput]
    def get_layer_version_by_arn(params = {}, options = {})
      request = build_request(:get_layer_version_by_arn, params)
      request.send_request(options)
    end

    # <p>Returns the permission policy for a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>. For more information, see <a>AddLayerVersionPermission</a>.</p>
    # @param [Hash, Types::GetLayerVersionPolicyRequest] params
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   response = client.get_layer_version_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String",
    #     revision_id: "String"
    #   }
    # @return [Types::GetLayerVersionPolicyResponse]
    def get_layer_version_policy(params = {}, options = {})
      request = build_request(:get_layer_version_policy, params)
      request.send_request(options)
    end

    # <p>Returns the <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">resource-based IAM policy</a> for a function, version, or alias.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get the policy for that resource.</p>
    # @example To retrieve a Lambda function policy
    #   # The following example returns the resource-based policy for version 1 of a Lambda function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: "{\"Version\":\"2012-10-17\",\"Id\":\"default\",\"Statement\":[{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function:1\"}]}",
    #     revision_id: "4843f2f6-7c59-4fda-b484-afd0bc0e22b8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String",
    #     revision_id: "String"
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the provisioned concurrency configuration for a function's alias or version.</p>
    # @param [Hash, Types::GetProvisionedConcurrencyConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The version number or alias name.</p>
    # @example To get a provisioned concurrency configuration
    #   # The following example returns details for the provisioned concurrency configuration for the BLUE alias of the specified function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "BLUE"
    #   }
    #   options = {}
    #   response = client.get_provisioned_concurrency_config(params, options)
    #   response.to_h #=>
    #   {
    #     allocated_provisioned_concurrent_executions: 100,
    #     available_provisioned_concurrent_executions: 100,
    #     last_modified: "2019-12-31T20:28:49+0000",
    #     requested_provisioned_concurrent_executions: 100,
    #     status: READY
    #   }
    # @example To view a provisioned concurrency configuration
    #   # The following example displays details for the provisioned concurrency configuration for the BLUE alias of the specified function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "BLUE"
    #   }
    #   options = {}
    #   response = client.get_provisioned_concurrency_config(params, options)
    #   response.to_h #=>
    #   {
    #     allocated_provisioned_concurrent_executions: 100,
    #     available_provisioned_concurrent_executions: 100,
    #     last_modified: "2019-12-31T20:28:49+0000",
    #     requested_provisioned_concurrent_executions: 100,
    #     status: READY
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #   }
    #   options = {}
    #   response = client.get_provisioned_concurrency_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 1,
    #     available_provisioned_concurrent_executions: 1,
    #     allocated_provisioned_concurrent_executions: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #     status_reason: "String",
    #     last_modified: "Timestamp"
    #   }
    # @return [Types::GetProvisionedConcurrencyConfigResponse]
    def get_provisioned_concurrency_config(params = {}, options = {})
      request = build_request(:get_provisioned_concurrency_config, params)
      request.send_request(options)
    end

    # <p>Retrieves the <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">resource-based policy</a> attached to a Lambda resource.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda resource you want to retrieve the policy for. You can use a qualified or an unqualified ARN. The value must be a complete ARN, and the operation does not accept wildcard characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PolicyResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicy",
    #     revision_id: "RevisionId"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the runtime management configuration for a function's version. If the runtime update mode is <b>Manual</b>, this includes the ARN of the runtime version and the runtime update mode. If the runtime update mode is <b>Auto</b> or <b>Function update</b>, this includes the runtime update mode and <code>null</code> is returned for the ARN. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html">Runtime updates</a>.</p>
    # @param [Hash, Types::GetRuntimeManagementConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the <code>$LATEST</code> version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier"
    #   }
    #   options = {}
    #   response = client.get_runtime_management_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"],
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime_version_arn: "RuntimeVersionArn"
    #   }
    # @return [Types::GetRuntimeManagementConfigResponse]
    def get_runtime_management_config(params = {}, options = {})
      request = build_request(:get_runtime_management_config, params)
      request.send_request(options)
    end

    # <p>Invokes a Lambda Event Function. You can invoke a function synchronously (and wait for the response), or asynchronously. By default, Lambda invokes your function synchronously (i.e. the<code>InvocationType</code> is <code>RequestResponse</code>). To invoke a function asynchronously, set <code>InvocationType</code> to <code>Event</code>. Lambda passes the <code>ClientContext</code> object to your function for synchronous invocations only.</p> <p>For synchronous invocations, the maximum payload size is 6 MB. For asynchronous invocations, the maximum payload size is 1 MB.</p> <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html">synchronous invocation</a>, details about the function response, including errors, are included in the response body and headers. For either invocation type, you can find more information in the <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html">execution log</a> and <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html">trace</a>.</p> <p>When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type, client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an error, Lambda executes the function up to two more times. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html">Error handling and automatic retries in Lambda</a>.</p> <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous invocation</a>, Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple times, even if no error occurs. To retain events that were not processed, configure your function with a <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">dead-letter queue</a>.</p> <p>The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your function from executing, such as permissions errors, <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">quota</a> errors, or issues with your function's code and configuration. For example, Lambda returns <code>TooManyRequestsException</code> if running the function would cause you to exceed a concurrency limit at either the account level (<code>ConcurrentInvocationLimitExceeded</code>) or function level (<code>ReservedFunctionConcurrentInvocationLimitExceeded</code>).</p> <p>For functions with a long timeout, your client might disconnect during synchronous invocation while it waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long connections with timeout or keep-alive settings.</p> <p>This operation requires permission for the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a> action. For details on how to set up permissions for cross-account invocations, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke">Granting function access to other accounts</a>.</p>
    # @param [Hash, Types::InvocationRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :invocation_type
    #   <p>Choose from the following options.</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API response includes the function response and additional data.</p> </li> <li> <p> <code>Event</code> – Invoke the function asynchronously. Send events that fail multiple times to the function's dead-letter queue (if one is configured). The API response only includes a status code.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the user or role has permission to invoke the function.</p> </li> </ul>
    # @option params [String] :log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    # @option params [String] :client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context object. Lambda passes the <code>ClientContext</code> object to your function for synchronous invocations only.</p>
    # @option params [String] :durable_execution_name
    #   <p>A unique name for the durable execution. If you invoke a durable function using a name that already exists with the same payload, Lambda returns the existing execution instead of creating a duplicate. If the payload differs, Lambda returns a <code>DurableExecutionAlreadyStartedException</code> error.</p> <p>If not specified, Lambda generates a unique identifier automatically. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-execution-idempotency.html#durable-idempotency-execution-names">Execution names</a>.</p>
    # @option params [String] :payload
    #   <p>The JSON that you want to provide to your Lambda function as input. The maximum payload size is 6 MB for synchronous invocations and 1 MB for asynchronous invocations.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to invoke a published version of the function.</p>
    # @option params [String] :tenant_id
    #   <p>The identifier of the tenant in a multi-tenant Lambda function.</p>
    # @example To invoke a Lambda function
    #   # The following example invokes version 1 of a function named my-function with an empty event payload.
    #   params = {
    #     durable_execution_name: "myExecution",
    #     function_name: "my-function",
    #     invocation_type: Event,
    #     payload: "{}",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.invoke(params, options)
    #   response.to_h #=>
    #   {
    #     payload: "200 SUCCESS",
    #     status_code: 200
    #   }
    # @example To invoke a Lambda function asynchronously
    #   # The following example invokes version 1 of a function named my-function asynchronously.
    #   params = {
    #     function_name: "my-function",
    #     invocation_type: Event,
    #     payload: "{}",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.invoke(params, options)
    #   response.to_h #=>
    #   {
    #     payload: "",
    #     status_code: 202
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "Event" # One of: ["Event", "RequestResponse", "DryRun"],
    #     log_type: "None" # One of: ["None", "Tail"],
    #     client_context: "String",
    #     durable_execution_name: "DurableExecutionName",
    #     payload: "data",
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     tenant_id: "TenantId"
    #   }
    #   options = {}
    #   response = client.invoke(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     function_error: "String",
    #     log_result: "String",
    #     payload: "data",
    #     executed_version: "Version",
    #     durable_execution_arn: "DurableExecutionArn"
    #   }
    # @return [Types::InvocationResponse]
    def invoke(params = {}, options = {})
      request = build_request(:invoke, params)
      request.send_request(options)
    end

    # <note> <p>For asynchronous function invocation, use <a>Invoke</a>.</p> </note> <p>Invokes a function asynchronously.</p> <note> <p>The payload limit is 256KB. For larger payloads, for up to 1MB, use <a>Invoke</a>.</p> </note> <note> <p>If you do use the InvokeAsync action, note that it doesn't support the use of X-Ray active tracing. Trace ID is not propagated to the function, even if X-Ray active tracing is turned on.</p> </note>
    # @param [Hash, Types::InvokeAsyncRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :invoke_args
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    # @example To invoke a Lambda function asynchronously
    #   # The following example invokes a Lambda function asynchronously
    #   params = {
    #     function_name: "my-function",
    #     invoke_args: "{}"
    #   }
    #   options = {}
    #   response = client.invoke_async(params, options)
    #   response.to_h #=>
    #   {
    #     status: 202
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invoke_args: File.read("source_file"), # required
    #   }
    #   options = {}
    #   response = client.invoke_async(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: 1
    #   }
    # @deprecated
    # @return [Types::InvokeAsyncResponse]
    def invoke_async(params = {}, options = {})
      request = build_request(:invoke_async, params)
      request.send_request(options)
    end

    # <p>Configure your Lambda Event Functions to stream response payloads back to clients. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html">Configuring a Lambda function to stream responses</a>.</p> <p>This operation requires permission for the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a> action. For details on how to set up permissions for cross-account invocations, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke">Granting function access to other accounts</a>.</p>
    # @param [Hash, Types::InvokeWithResponseStreamRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    # @option params [String] :client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context object.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @option params [String] :payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    # @option params [String] :tenant_id
    #   <p>The identifier of the tenant in a multi-tenant Lambda function.</p>
    # @option params [String] :invocation_type
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API operation response includes the function response and additional data.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the IAM user or role has permission to invoke the function.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     log_type: "None" # One of: ["None", "Tail"],
    #     client_context: "String",
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     payload: "data",
    #     tenant_id: "TenantId",
    #     invocation_type: "RequestResponse" # One of: ["RequestResponse", "DryRun"]
    #   }
    #   options = {}
    #   response = client.invoke_with_response_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     executed_version: "Version",
    #     event_stream: {
    #       # One of:
    #       payload_chunk: {
    #         payload: "data"
    #       },
    #       invoke_complete: {
    #         error_code: "String",
    #         error_details: "String",
    #         log_result: "String"
    #       }
    #     },
    #     response_stream_content_type: "String"
    #   }
    # @return [Types::InvokeWithResponseStreamResponse]
    def invoke_with_response_stream(params = {}, options = {})
      request = build_request(:invoke_with_response_stream, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">aliases</a> for a Lambda Event Function.</p>
    # @param [Hash, Types::ListAliasesRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :function_version
    #   <p>Specify a function version to only list aliases that invoke that version.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>Limit the number of aliases returned.</p>
    # @example To list a function's aliases
    #   # The following example returns a list of aliases for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.list_aliases(params, options)
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BETA",
    #         description: "Production environment BLUE.",
    #         function_version: "2",
    #         name: "BLUE",
    #         revision_id: "a410117f-xmpl-494e-8035-7e204bb7933b",
    #         routing_config: {
    #           additional_version_weights: {
    #             "1" => 0.7
    #           }
    #         }
    #       },
    #       {
    #         alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:LIVE",
    #         description: "Production environment GREEN.",
    #         function_version: "1",
    #         name: "GREEN",
    #         revision_id: "21d40116-xmpl-40ba-9360-3ea284da1bb5"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     function_version: "VersionWithLatestPublished",
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     aliases: [
    #       {
    #         alias_arn: "FunctionArn",
    #         name: "Alias",
    #         function_version: "Version",
    #         description: "Description",
    #         routing_config: {
    #           additional_version_weights: {
    #             "AdditionalVersion" => 1.0
    #           }
    #         },
    #         revision_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListAliasesResponse]
    def list_aliases(params = {}, options = {})
      request = build_request(:list_aliases, params)
      request.send_request(options)
    end

    # <p>Returns a list of capacity providers in your account.</p>
    # @param [Hash, Types::ListCapacityProvidersRequest] params
    # @option params [String] :state
    #   <p>Filter capacity providers by their current state.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of capacity providers to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"],
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_capacity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_providers: [ # required
    #       {
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #         vpc_config: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #         },
    #         permissions_config: { # required
    #           capacity_provider_operator_role_arn: "RoleArn", # required
    #         },
    #         instance_requirements: {
    #           architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #           allowed_instance_types: ["InstanceType"],
    #           excluded_instance_types: ["InstanceType"]
    #         },
    #         capacity_provider_scaling_config: {
    #           max_v_cpu_count: 1,
    #           scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #           scaling_policies: [
    #             {
    #               predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #               target_value: 1.0, # required
    #             }
    #           ]
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         last_modified: "Timestamp",
    #         propagate_tags: {
    #           mode: "None" # One of: ["None", "Explicit"],
    #           explicit_tags: {
    #             "TagKey" => "TagValue"
    #           }
    #         },
    #         telemetry_config: {
    #           logging_config: {
    #             system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #             log_group: "LogGroup"
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::ListCapacityProvidersResponse]
    def list_capacity_providers(params = {}, options = {})
      request = build_request(:list_capacity_providers, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html">code signing configurations</a>. A request returns up to 10,000 configurations per call. You can use the <code>MaxItems</code> parameter to return fewer configurations per call. </p>
    # @param [Hash, Types::ListCodeSigningConfigsRequest] params
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>Maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_code_signing_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     code_signing_configs: [
    #       {
    #         code_signing_config_id: "CodeSigningConfigId", # required
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #         description: "Description",
    #         allowed_publishers: { # required
    #           signing_profile_version_arns: ["Arn"], # required
    #         },
    #         code_signing_policies: { # required
    #           untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #         },
    #         last_modified: "Timestamp", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCodeSigningConfigsResponse]
    def list_code_signing_configs(params = {}, options = {})
      request = build_request(:list_code_signing_configs, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable executions</a> for a specified Lambda function. You can filter the results by execution name, status, and start time range. This API supports pagination for large result sets.</p>
    # @param [Hash, Types::ListDurableExecutionsByFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function. You can specify a function name, a partial ARN, or a full ARN.</p>
    # @option params [String] :qualifier
    #   <p>The function version to filter executions by. If you don't specify a qualifier, this operation returns executions across all versions of the Lambda function.</p>
    # @option params [String] :durable_execution_name
    #   <p>Filter executions by name. Only executions with names that matches this string are returned.</p>
    # @option params [Array<String>] :statuses
    #   <p>Filter executions by status. Valid values: RUNNING, SUCCEEDED, FAILED, TIMED_OUT, STOPPED.</p>
    # @option params [Time] :started_after
    #   <p>Filter executions that started after this timestamp (ISO 8601 format).</p>
    # @option params [Time] :started_before
    #   <p>Filter executions that started before this timestamp (ISO 8601 format).</p>
    # @option params [Boolean] :reverse_order
    #   <p>Set to true to return results in chronological order (oldest first). Default is false.</p>
    # @option params [String] :marker
    #   <p>Pagination token from a previous request to continue retrieving results.</p>
    # @option params [Integer] :max_items
    #   <p>Maximum number of executions to return (1-1000). Default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     durable_execution_name: "DurableExecutionName",
    #     statuses: ["RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "STOPPED"]],
    #     started_after: Time.now,
    #     started_before: Time.now,
    #     reverse_order: false,
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_durable_executions_by_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     durable_executions: [
    #       {
    #         durable_execution_arn: "DurableExecutionArn", # required
    #         durable_execution_name: "DurableExecutionName", # required
    #         function_arn: "NameSpacedFunctionArn", # required
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "STOPPED"], # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now,
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::ListDurableExecutionsByFunctionResponse]
    def list_durable_executions_by_function(params = {}, options = {})
      request = build_request(:list_durable_executions_by_function, params)
      request.send_request(options)
    end

    # <p>Lists event source mappings. Specify an <code>EventSourceArn</code> to show only event source mappings for a single event source.</p>
    # @param [Hash, Types::ListEventSourceMappingsRequest] params
    # @option params [String] :event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p> <ul> <li> <p> <b>Amazon Kinesis</b> – The ARN of the data stream or a stream consumer.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – The ARN of the stream.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – The ARN of the queue.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – The ARN of the cluster or the ARN of the VPC connection (for <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#msk-multi-vpc">cross-account event source mappings</a>).</p> </li> <li> <p> <b>Amazon MQ</b> – The ARN of the broker.</p> </li> <li> <p> <b>Amazon DocumentDB</b> – The ARN of the DocumentDB change stream.</p> </li> </ul>
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.</p>
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of event source mappings to return. Note that ListEventSourceMappings returns a maximum of 100 items in each response, even if you set the number higher.</p>
    # @example To list the event source mappings for a function
    #   # The following example returns a list of the event source mappings for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.list_event_source_mappings(params, options)
    #   response.to_h #=>
    #   {
    #     event_source_mappings: [
    #       {
    #         batch_size: 5,
    #         event_source_arn: "arn:aws:sqs:us-west-2:123456789012:mySQSqueue",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         last_modified: Time.parse(1569284520.333),
    #         state: "Enabled",
    #         state_transition_reason: "USER_INITIATED",
    #         uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "Arn",
    #     function_name: "NamespacedFunctionName",
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_event_source_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     event_source_mappings: [
    #       {
    #         uuid: "UUIDString",
    #         starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #         starting_position_timestamp: Time.now,
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         parallelization_factor: 1,
    #         event_source_arn: "Arn",
    #         filter_criteria: {
    #           filters: [
    #             {
    #               pattern: "Pattern"
    #             }
    #           ]
    #         },
    #         filter_criteria_error: {
    #           error_code: "FilterCriteriaErrorCode",
    #           message: "FilterCriteriaErrorMessage"
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         metrics_config: {
    #           metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #         },
    #         logging_config: {
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #         },
    #         scaling_config: {
    #           maximum_concurrency: 1
    #         },
    #         function_arn: "FunctionArn",
    #         last_modified: Time.now,
    #         last_processing_result: "String",
    #         state: "String",
    #         state_transition_reason: "String",
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn"
    #           },
    #           on_failure: {
    #             destination: "DestinationArn"
    #           }
    #         },
    #         topics: ["Topic"],
    #         queues: ["Queue"],
    #         source_access_configurations: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #             uri: "URI"
    #           }
    #         ],
    #         self_managed_event_source: {
    #           endpoints: {
    #             "EndPointType" => ["Endpoint"]
    #           }
    #         },
    #         maximum_record_age_in_seconds: 1,
    #         bisect_batch_on_function_error: false,
    #         maximum_retry_attempts: 1,
    #         tumbling_window_in_seconds: 1,
    #         function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #         amazon_managed_kafka_event_source_config: {
    #           consumer_group_id: "URI",
    #           schema_registry_config: {
    #             schema_registry_uri: "SchemaRegistryUri",
    #             event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #             access_configs: [
    #               {
    #                 type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #                 uri: "Arn"
    #               }
    #             ],
    #             schema_validation_configs: [
    #               {
    #                 attribute: "KEY" # One of: ["KEY", "VALUE"]
    #               }
    #             ]
    #           }
    #         },
    #         self_managed_kafka_event_source_config: {
    #           consumer_group_id: "URI",
    #           schema_registry_config: {
    #             schema_registry_uri: "SchemaRegistryUri",
    #             event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #             access_configs: [
    #               {
    #                 type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #                 uri: "Arn"
    #               }
    #             ],
    #             schema_validation_configs: [
    #               {
    #                 attribute: "KEY" # One of: ["KEY", "VALUE"]
    #               }
    #             ]
    #           }
    #         },
    #         document_db_event_source_config: {
    #           database_name: "DatabaseName",
    #           collection_name: "CollectionName",
    #           full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #         },
    #         event_source_mapping_arn: "EventSourceMappingArn",
    #         provisioned_poller_config: {
    #           minimum_pollers: 1,
    #           maximum_pollers: 1,
    #           poller_group_name: "ProvisionedPollerGroupName"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListEventSourceMappingsResponse]
    def list_event_source_mappings(params = {}, options = {})
      request = build_request(:list_event_source_mappings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of configurations for asynchronous invocation for a function.</p> <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    # @param [Hash, Types::ListFunctionEventInvokeConfigsRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of configurations to return.</p>
    # @example To view a list of asynchronous invocation configurations
    #   # The following example returns a list of asynchronous invocation configurations for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.list_function_event_invoke_configs(params, options)
    #   response.to_h #=>
    #   {
    #     function_event_invoke_configs: [
    #       {
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN",
    #         last_modified: Time.parse(1577824406.719),
    #         maximum_event_age_in_seconds: 1800,
    #         maximum_retry_attempts: 2
    #       },
    #       {
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #         last_modified: Time.parse(1577824396.653),
    #         maximum_event_age_in_seconds: 3600,
    #         maximum_retry_attempts: 0
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_function_event_invoke_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_event_invoke_configs: [
    #       {
    #         last_modified: Time.now,
    #         function_arn: "FunctionArn",
    #         maximum_retry_attempts: 1,
    #         maximum_event_age_in_seconds: 1,
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn"
    #           },
    #           on_failure: {
    #             destination: "DestinationArn"
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::ListFunctionEventInvokeConfigsResponse]
    def list_function_event_invoke_configs(params = {}, options = {})
      request = build_request(:list_function_event_invoke_configs, params)
      request.send_request(options)
    end

    # <p>Returns a list of Lambda function URLs for the specified function.</p>
    # @param [Hash, Types::ListFunctionUrlConfigsRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of function URLs to return in the response. Note that <code>ListFunctionUrlConfigs</code> returns a maximum of 50 items in each response, even if you set the number higher.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionUrlFunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_function_url_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_url_configs: [ # required
    #       {
    #         function_url: "FunctionUrl", # required
    #         function_arn: "FunctionArn", # required
    #         creation_time: "Timestamp", # required
    #         last_modified_time: "Timestamp", # required
    #         cors: {
    #           allow_credentials: false,
    #           allow_headers: ["Header"],
    #           allow_methods: ["Method"],
    #           allow_origins: ["Origin"],
    #           expose_headers: ["Header"],
    #           max_age: 1
    #         },
    #         auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #         invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::ListFunctionUrlConfigsResponse]
    def list_function_url_configs(params = {}, options = {})
      request = build_request(:list_function_url_configs, params)
      request.send_request(options)
    end

    # <p>Returns a list of function versions that are configured to use a specific capacity provider.</p>
    # @param [Hash, Types::ListFunctionVersionsByCapacityProviderRequest] params
    # @option params [String] :capacity_provider_name
    #   <p>The name of the capacity provider to list function versions for.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of function versions to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_name: "CapacityProviderName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_function_versions_by_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider_arn: "CapacityProviderArn", # required
    #     function_versions: [ # required
    #       {
    #         function_arn: "NameSpacedFunctionArn", # required
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"], # required
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::ListFunctionVersionsByCapacityProviderResponse]
    def list_function_versions_by_capacity_provider(params = {}, options = {})
      request = build_request(:list_function_versions_by_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Returns a list of Lambda Event Functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call.</p> <p>Set <code>FunctionVersion</code> to <code>ALL</code> to include all published versions of each function in addition to the unpublished version.</p> <note> <p>The <code>ListFunctions</code> operation returns a subset of the <a>FunctionConfiguration</a> fields. To get the additional fields (State, StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or version, use <a>GetFunction</a>.</p> </note>
    # @param [Hash, Types::ListFunctionsRequest] params
    # @option params [String] :master_region
    #   <p>For Lambda@Edge functions, the Amazon Web Services Region of the master function. For example, <code>us-east-1</code> filters the list of functions to include only Lambda@Edge functions replicated from a master function in US East (N. Virginia). If specified, you must set <code>FunctionVersion</code> to <code>ALL</code>.</p>
    # @option params [String] :function_version
    #   <p>Set to <code>ALL</code> to include entries for all published versions of each function.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of functions to return in the response. Note that <code>ListFunctions</code> returns a maximum of 50 items in each response, even if you set the number higher.</p>
    # @example To get a list of Lambda functions
    #   # This operation returns a list of Lambda functions.
    #   params = {}
    #   options = {}
    #   response = client.list_functions(params, options)
    #   response.to_h #=>
    #   {
    #     functions: [
    #       {
    #         code_sha256: "dBG9m8SGdmlEjw/JYXlhhvCrAv5TxvXsbL/RMr0fT/I=",
    #         code_size: 294,
    #         description: "",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:helloworld",
    #         function_name: "helloworld",
    #         handler: "helloworld.handler",
    #         last_modified: "2019-09-23T18:32:33.857+0000",
    #         memory_size: 128,
    #         revision_id: "1718e831-badf-4253-9518-d0644210af7b",
    #         role: "arn:aws:iam::123456789012:role/service-role/MyTestFunction-role-zgur6bf4",
    #         runtime: nodejs10.x,
    #         timeout: 3,
    #         tracing_config: {
    #           mode: PassThrough
    #         },
    #         version: "$LATEST"
    #       },
    #       {
    #         code_sha256: "sU0cJ2/hOZevwV/lTxCuQqK3gDZP3i8gUoqUUVRmY6E=",
    #         code_size: 266,
    #         description: "",
    #         durable_config: {
    #           execution_timeout: 31622400,
    #           retention_period_in_days: 30
    #         },
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         function_name: "my-function",
    #         handler: "index.handler",
    #         last_modified: "2019-10-01T16:47:28.490+0000",
    #         memory_size: 256,
    #         revision_id: "93017fc9-59cb-41dc-901b-4845ce4bf668",
    #         role: "arn:aws:iam::123456789012:role/service-role/helloWorldPython-role-uy3l9qyq",
    #         runtime: nodejs10.x,
    #         timeout: 3,
    #         tracing_config: {
    #           mode: PassThrough
    #         },
    #         version: "$LATEST",
    #         vpc_config: {
    #           security_group_ids: [
    #           ],
    #           subnet_ids: [
    #           ],
    #           vpc_id: ""
    #         }
    #       }
    #     ],
    #     next_marker: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     master_region: "MasterRegion",
    #     function_version: "ALL" # One of: ["ALL"],
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_functions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     functions: [
    #       {
    #         function_name: "NamespacedFunctionName",
    #         function_arn: "NameSpacedFunctionArn",
    #         runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #         role: "RoleArn",
    #         handler: "Handler",
    #         code_size: 1,
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         last_modified: "Timestamp",
    #         code_sha256: "String",
    #         version: "Version",
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           vpc_id: "VpcId",
    #           ipv6_allowed_for_dual_stack: false
    #         },
    #         dead_letter_config: {
    #           target_arn: "ResourceArn"
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active" # One of: ["Active", "PassThrough"]
    #         },
    #         master_arn: "FunctionArn",
    #         revision_id: "String",
    #         layers: [
    #           {
    #             arn: "LayerVersionArn",
    #             code_size: 1,
    #             signing_profile_version_arn: "Arn",
    #             signing_job_arn: "Arn"
    #           }
    #         ],
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #         state_reason: "StateReason",
    #         state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #         last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         last_update_status_reason: "LastUpdateStatusReason",
    #         last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #             s3_files_config: {
    #               direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #             }
    #           }
    #         ],
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn",
    #         package_type: "Zip" # One of: ["Zip", "Image"],
    #         image_config_response: {
    #           image_config: {
    #             entry_point: ["String"],
    #             command: ["String"],
    #             working_directory: "WorkingDirectory"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         ephemeral_storage: {
    #           size: 1, # required
    #         },
    #         snap_start: {
    #           apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #           optimization_status: "On" # One of: ["On", "Off"]
    #         },
    #         runtime_version_config: {
    #           runtime_version_arn: "RuntimeVersionArn",
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         logging_config: {
    #           log_format: "JSON" # One of: ["JSON", "Text"],
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         },
    #         tenancy_config: {
    #           tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #         },
    #         capacity_provider_config: {
    #           lambda_managed_instances_capacity_provider_config: { # required
    #             capacity_provider_arn: "CapacityProviderArn", # required
    #             per_execution_environment_max_concurrency: 1,
    #             execution_environment_memory_gi_b_per_v_cpu: 1.0
    #           }
    #         },
    #         config_sha256: "String",
    #         durable_config: {
    #           kms_key_arn: "KMSKeyArn",
    #           retention_period_in_days: 1,
    #           execution_timeout: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListFunctionsResponse]
    def list_functions(params = {}, options = {})
      request = build_request(:list_functions, params)
      request.send_request(options)
    end

    # <p>List the functions that use the specified code signing configuration. You can use this method prior to deleting a code signing configuration, to verify that no functions are using it.</p>
    # @param [Hash, Types::ListFunctionsByCodeSigningConfigRequest] params
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>Maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_functions_by_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     function_arns: ["FunctionArn"]
    #   }
    # @return [Types::ListFunctionsByCodeSigningConfigResponse]
    def list_functions_by_code_signing_config(params = {}, options = {})
      request = build_request(:list_functions_by_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Lists the versions of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>. Versions that have been deleted aren't listed. Specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime identifier</a> to list only versions that indicate that they're compatible with that runtime. Specify a compatible architecture to include only layer versions that are compatible with that architecture.</p>
    # @param [Hash, Types::ListLayerVersionsRequest] params
    # @option params [String] :compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    # @option params [String] :compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of versions to return.</p>
    # @example To list versions of a layer
    #   # The following example displays information about the versions for the layer named blank-java-lib
    #   params = {
    #     layer_name: "blank-java-lib"
    #   }
    #   options = {}
    #   response = client.list_layer_versions(params, options)
    #   response.to_h #=>
    #   {
    #     layer_versions: [
    #       {
    #         compatible_runtimes: [
    #           java8
    #         ],
    #         created_date: "2020-03-18T23:38:42.284+0000",
    #         description: "Dependencies for the blank-java sample app.",
    #         layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:7",
    #         version: 7
    #       },
    #       {
    #         compatible_runtimes: [
    #           java8
    #         ],
    #         created_date: "2020-03-17T07:24:21.960+0000",
    #         description: "Dependencies for the blank-java sample app.",
    #         layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:6",
    #         version: 6
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compatible_architecture: "x86_64" # One of: ["x86_64", "arm64"],
    #     compatible_runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     layer_name: "LayerName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_layer_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     layer_versions: [
    #       {
    #         layer_version_arn: "LayerVersionArn",
    #         version: 1,
    #         description: "Description",
    #         created_date: "Timestamp",
    #         compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"]],
    #         license_info: "LicenseInfo"
    #       }
    #     ]
    #   }
    # @return [Types::ListLayerVersionsResponse]
    def list_layer_versions(params = {}, options = {})
      request = build_request(:list_layer_versions, params)
      request.send_request(options)
    end

    # <p>Lists <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html">Lambda layers</a> and shows information about the latest version of each. Specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime identifier</a> to list only layers that indicate that they're compatible with that runtime. Specify a compatible architecture to include only layers that are compatible with that <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    # @param [Hash, Types::ListLayersRequest] params
    # @option params [String] :compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    # @option params [String] :compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of layers to return.</p>
    # @example To list the layers that are compatible with your function's runtime
    #   # The following example returns information about layers that are compatible with the Python 3.7 runtime.
    #   params = {
    #     compatible_runtime: python3.7
    #   }
    #   options = {}
    #   response = client.list_layers(params, options)
    #   response.to_h #=>
    #   {
    #     layers: [
    #       {
    #         latest_matching_version: {
    #           compatible_runtimes: [
    #             python3.6,
    #             python3.7
    #           ],
    #           created_date: "2018-11-15T00:37:46.592+0000",
    #           description: "My layer",
    #           layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:2",
    #           version: 2
    #         },
    #         layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer",
    #         layer_name: "my-layer"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compatible_architecture: "x86_64" # One of: ["x86_64", "arm64"],
    #     compatible_runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_layers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     layers: [
    #       {
    #         layer_name: "LayerName",
    #         layer_arn: "LayerArn",
    #         latest_matching_version: {
    #           layer_version_arn: "LayerVersionArn",
    #           version: 1,
    #           description: "Description",
    #           created_date: "Timestamp",
    #           compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #           compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"]],
    #           license_info: "LicenseInfo"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListLayersResponse]
    def list_layers(params = {}, options = {})
      request = build_request(:list_layers, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of provisioned concurrency configurations for a function.</p>
    # @param [Hash, Types::ListProvisionedConcurrencyConfigsRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>Specify a number to limit the number of configurations returned.</p>
    # @example To get a list of provisioned concurrency configurations
    #   # The following example returns a list of provisioned concurrency configurations for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.list_provisioned_concurrency_configs(params, options)
    #   response.to_h #=>
    #   {
    #     provisioned_concurrency_configs: [
    #       {
    #         allocated_provisioned_concurrent_executions: 100,
    #         available_provisioned_concurrent_executions: 100,
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN",
    #         last_modified: "2019-12-31T20:29:00+0000",
    #         requested_provisioned_concurrent_executions: 100,
    #         status: READY
    #       },
    #       {
    #         allocated_provisioned_concurrent_executions: 100,
    #         available_provisioned_concurrent_executions: 100,
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #         last_modified: "2019-12-31T20:28:49+0000",
    #         requested_provisioned_concurrent_executions: 100,
    #         status: READY
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_provisioned_concurrency_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_concurrency_configs: [
    #       {
    #         function_arn: "FunctionArn",
    #         requested_provisioned_concurrent_executions: 1,
    #         available_provisioned_concurrent_executions: 1,
    #         allocated_provisioned_concurrent_executions: 1,
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #         status_reason: "String",
    #         last_modified: "Timestamp"
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    # @return [Types::ListProvisionedConcurrencyConfigsResponse]
    def list_provisioned_concurrency_configs(params = {}, options = {})
      request = build_request(:list_provisioned_concurrency_configs, params)
      request.send_request(options)
    end

    # <p>Returns a function, event source mapping, or code signing configuration's <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>. You can also view function tags with <a>GetFunction</a>.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource
    #   <p>The resource's Amazon Resource Name (ARN). Note: Lambda does not support adding tags to function aliases or versions.</p>
    # @example To retrieve the list of tags for a Lambda function
    #   # The following example displays the tags attached to the my-function Lambda function.
    #   params = {
    #     resource: "arn:aws:lambda:us-west-2:123456789012:function:my-function"
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "Category" => "Web Tools",
    #       "Department" => "Sales"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">versions</a>, with the version-specific configuration of each. Lambda returns up to 50 versions per call.</p>
    # @param [Hash, Types::ListVersionsByFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of versions to return. Note that <code>ListVersionsByFunction</code> returns a maximum of 50 items in each response, even if you set the number higher.</p>
    # @example To list versions of a function
    #   # The following example returns a list of versions of a function named my-function
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.list_versions_by_function(params, options)
    #   response.to_h #=>
    #   {
    #     versions: [
    #       {
    #         code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #         code_size: 5797206,
    #         description: "Process image objects from Amazon S3.",
    #         durable_config: {
    #           execution_timeout: 31622400,
    #           retention_period_in_days: 30
    #         },
    #         environment: {
    #           variables: {
    #             "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #             "PREFIX" => "inbound"
    #           }
    #         },
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         function_name: "my-function",
    #         handler: "index.handler",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #         last_modified: "2020-04-10T19:06:32.563+0000",
    #         memory_size: 256,
    #         revision_id: "850ca006-2d98-4ff4-86db-8766e9d32fe9",
    #         role: "arn:aws:iam::123456789012:role/lambda-role",
    #         runtime: nodejs12.x,
    #         timeout: 15,
    #         tracing_config: {
    #           mode: Active
    #         },
    #         version: "$LATEST"
    #       },
    #       {
    #         code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #         code_size: 5797206,
    #         description: "Process image objects from Amazon S3.",
    #         durable_config: {
    #           execution_timeout: 31622400,
    #           retention_period_in_days: 30
    #         },
    #         environment: {
    #           variables: {
    #             "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #             "PREFIX" => "inbound"
    #           }
    #         },
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         function_name: "my-function",
    #         handler: "index.handler",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #         last_modified: "2020-04-10T19:06:32.563+0000",
    #         memory_size: 256,
    #         revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #         role: "arn:aws:iam::123456789012:role/lambda-role",
    #         runtime: nodejs12.x,
    #         timeout: 5,
    #         tracing_config: {
    #           mode: Active
    #         },
    #         version: "1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_versions_by_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "String",
    #     versions: [
    #       {
    #         function_name: "NamespacedFunctionName",
    #         function_arn: "NameSpacedFunctionArn",
    #         runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #         role: "RoleArn",
    #         handler: "Handler",
    #         code_size: 1,
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         last_modified: "Timestamp",
    #         code_sha256: "String",
    #         version: "Version",
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           vpc_id: "VpcId",
    #           ipv6_allowed_for_dual_stack: false
    #         },
    #         dead_letter_config: {
    #           target_arn: "ResourceArn"
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active" # One of: ["Active", "PassThrough"]
    #         },
    #         master_arn: "FunctionArn",
    #         revision_id: "String",
    #         layers: [
    #           {
    #             arn: "LayerVersionArn",
    #             code_size: 1,
    #             signing_profile_version_arn: "Arn",
    #             signing_job_arn: "Arn"
    #           }
    #         ],
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #         state_reason: "StateReason",
    #         state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #         last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         last_update_status_reason: "LastUpdateStatusReason",
    #         last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #             s3_files_config: {
    #               direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #             }
    #           }
    #         ],
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn",
    #         package_type: "Zip" # One of: ["Zip", "Image"],
    #         image_config_response: {
    #           image_config: {
    #             entry_point: ["String"],
    #             command: ["String"],
    #             working_directory: "WorkingDirectory"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         ephemeral_storage: {
    #           size: 1, # required
    #         },
    #         snap_start: {
    #           apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #           optimization_status: "On" # One of: ["On", "Off"]
    #         },
    #         runtime_version_config: {
    #           runtime_version_arn: "RuntimeVersionArn",
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         logging_config: {
    #           log_format: "JSON" # One of: ["JSON", "Text"],
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         },
    #         tenancy_config: {
    #           tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #         },
    #         capacity_provider_config: {
    #           lambda_managed_instances_capacity_provider_config: { # required
    #             capacity_provider_arn: "CapacityProviderArn", # required
    #             per_execution_environment_max_concurrency: 1,
    #             execution_environment_memory_gi_b_per_v_cpu: 1.0
    #           }
    #         },
    #         config_sha256: "String",
    #         durable_config: {
    #           kms_key_arn: "KMSKeyArn",
    #           retention_period_in_days: 1,
    #           execution_timeout: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListVersionsByFunctionResponse]
    def list_versions_by_function(params = {}, options = {})
      request = build_request(:list_versions_by_function, params)
      request.send_request(options)
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a> from a ZIP archive. Each time you call <code>PublishLayerVersion</code> with the same layer name, a new version is created.</p> <p>Add layers to your function with <a>CreateFunction</a> or <a>UpdateFunctionConfiguration</a>.</p>
    # @param [Hash, Types::PublishLayerVersionRequest] params
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [String] :description
    #   <p>The description of the version.</p>
    # @option params [Types::LayerVersionContentInput] :content
    #   <p>The function layer archive.</p>
    # @option params [Array<String>] :compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    # @option params [Array<String>] :compatible_runtimes
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime deprecation policy</a>.</p>
    # @option params [String] :license_info
    #   <p>The layer's software license. It can be any of the following:</p> <ul> <li> <p>An <a href="https://spdx.org/licenses/">SPDX license identifier</a>. For example, <code>MIT</code>.</p> </li> <li> <p>The URL of a license hosted on the internet. For example, <code>https://opensource.org/licenses/MIT</code>.</p> </li> <li> <p>The full text of the license.</p> </li> </ul>
    # @example To create a Lambda layer version
    #   # The following example creates a new Python library layer version. The command retrieves the layer content a file named layer.zip in the specified S3 bucket.
    #   params = {
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ],
    #     content: {
    #       s3_bucket: "lambda-layers-us-west-2-123456789012",
    #       s3_key: "layer.zip"
    #     },
    #     description: "My Python layer",
    #     layer_name: "my-layer",
    #     license_info: "MIT"
    #   }
    #   options = {}
    #   response = client.publish_layer_version(params, options)
    #   response.to_h #=>
    #   {
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ],
    #     content: {
    #       code_sha256: "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=",
    #       code_size: 169,
    #       location: "https://awslambda-us-west-2-layers.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH..."
    #     },
    #     created_date: "2018-11-14T23:03:52.894+0000",
    #     description: "My Python layer",
    #     layer_arn: "arn:aws:lambda:us-west-2:123456789012:layer:my-layer",
    #     layer_version_arn: "arn:aws:lambda:us-west-2:123456789012:layer:my-layer:1",
    #     license_info: "MIT",
    #     version: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     description: "Description",
    #     content: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       s3_object_storage_mode: "COPY" # One of: ["COPY", "REFERENCE"],
    #       zip_file: "data"
    #     },
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"]],
    #     license_info: "LicenseInfo"
    #   }
    #   options = {}
    #   response = client.publish_layer_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       location: "SensitiveStringOnServerOnly",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "Arn",
    #       signing_job_arn: "Arn",
    #       resolved_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion"
    #       }
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"]],
    #     license_info: "LicenseInfo"
    #   }
    # @return [Types::PublishLayerVersionResponse]
    def publish_layer_version(params = {}, options = {})
      request = build_request(:publish_layer_version, params)
      request.send_request(options)
    end

    # <p>Creates a <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">version</a> from the current code and configuration of a function. Use versions to create a snapshot of your function code and configuration that doesn't change.</p> <p>Lambda doesn't publish a version if the function's configuration and code haven't changed since the last version. Use <a>UpdateFunctionCode</a> or <a>UpdateFunctionConfiguration</a> to update the function before publishing a version.</p> <p>Clients can invoke versions directly or with an alias. To create an alias, use <a>CreateAlias</a>.</p>
    # @param [Hash, Types::PublishVersionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :code_sha256
    #   <p>Only publish a version if the hash value matches the value that's specified. Use this option to avoid publishing a version if the function code has changed since you last updated it. You can get the hash for the version that you uploaded from the output of <a>UpdateFunctionCode</a>.</p>
    # @option params [String] :description
    #   <p>A description for the version to override the description in the function configuration.</p>
    # @option params [String] :revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid publishing a version if the function configuration has changed since you last updated it.</p>
    # @option params [String] :publish_to
    #   <p>Specifies where to publish the function version or configuration.</p>
    # @example To publish a version of a Lambda function
    #   # This operation publishes a version of a Lambda function
    #   params = {
    #     code_sha256: "",
    #     description: "",
    #     function_name: "myFunction"
    #   }
    #   options = {}
    #   response = client.publish_version(params, options)
    #   response.to_h #=>
    #   {
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     environment: {
    #       variables: {
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #         "PREFIX" => "inbound"
    #       }
    #     },
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     function_name: "my-function",
    #     handler: "index.handler",
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     last_update_status: Successful,
    #     memory_size: 256,
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     runtime: nodejs12.x,
    #     state: Active,
    #     timeout: 5,
    #     tracing_config: {
    #       mode: Active
    #     },
    #     version: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     code_sha256: "String",
    #     description: "Description",
    #     revision_id: "String",
    #     publish_to: "LATEST_PUBLISHED" # One of: ["LATEST_PUBLISHED"]
    #   }
    #   options = {}
    #   response = client.publish_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     tenancy_config: {
    #       tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     config_sha256: "String",
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    # @return [Types::PublishVersionOutput]
    def publish_version(params = {}, options = {})
      request = build_request(:publish_version, params)
      request.send_request(options)
    end

    # <p>Update the code signing configuration for the function. Changes to the code signing configuration take effect the next time a user tries to deploy a code package to the function. </p>
    # @param [Hash, Types::PutFunctionCodeSigningConfigRequest] params
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "NamespacedFunctionName", # required
    #   }
    #   options = {}
    #   response = client.put_function_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "FunctionName", # required
    #   }
    # @return [Types::PutFunctionCodeSigningConfigResponse]
    def put_function_code_signing_config(params = {}, options = {})
      request = build_request(:put_function_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level.</p> <p>Concurrency settings apply to the function as a whole, including all published versions and the unpublished version. Reserving concurrency both ensures that your function has capacity to process the specified number of events simultaneously, and prevents it from scaling beyond that level. Use <a>GetFunction</a> to see the current setting for a function.</p> <p>Use <a>GetAccountSettings</a> to see your Regional concurrency limit. You can reserve concurrency for as many functions as you like, as long as you leave at least 100 simultaneous executions unreserved for functions that aren't configured with a per-function limit. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html">Lambda function scaling</a>.</p>
    # @param [Hash, Types::PutFunctionConcurrencyRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [Integer] :reserved_concurrent_executions
    #   <p>The number of simultaneous executions to reserve for the function.</p>
    # @example To configure a reserved concurrency limit for a function
    #   # The following example configures 100 reserved concurrent executions for the my-function function.
    #   params = {
    #     function_name: "my-function",
    #     reserved_concurrent_executions: 100
    #   }
    #   options = {}
    #   response = client.put_function_concurrency(params, options)
    #   response.to_h #=>
    #   {
    #     reserved_concurrent_executions: 100
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     reserved_concurrent_executions: 1, # required
    #   }
    #   options = {}
    #   response = client.put_function_concurrency(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_concurrent_executions: 1
    #   }
    # @return [Types::PutFunctionConcurrencyOutput]
    def put_function_concurrency(params = {}, options = {})
      request = build_request(:put_function_concurrency, params)
      request.send_request(options)
    end

    # <p>Configures options for <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous invocation</a> on a function, version, or alias. If a configuration already exists for a function, version, or alias, this operation overwrites it. If you exclude any settings, they are removed. To set one option without affecting existing settings for other options, use <a>UpdateFunctionEventInvokeConfig</a>.</p> <p>By default, Lambda retries an asynchronous invocation twice if the function returns an error. It retains events in a queue for up to six hours. When an event fails all processing attempts or stays in the asynchronous invocation queue for too long, Lambda discards it. To retain discarded events, configure a dead-letter queue with <a>UpdateFunctionConfiguration</a>.</p> <p>To send an invocation record to a queue, topic, S3 bucket, function, or event bus, specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">destination</a>. You can configure separate destinations for successful invocations (on-success) and events that fail all processing attempts (on-failure). You can configure destinations in addition to or instead of a dead-letter queue.</p> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    # @param [Hash, Types::PutFunctionEventInvokeConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    # @option params [Integer] :maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    # @option params [Integer] :maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    # @option params [Types::DestinationConfig] :destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    # @example To configure error handling for asynchronous invocation
    #   # The following example sets a maximum event age of one hour and disables retries for the specified function.
    #   params = {
    #     function_name: "my-function",
    #     maximum_event_age_in_seconds: 3600,
    #     maximum_retry_attempts: 0
    #   }
    #   options = {}
    #   response = client.put_function_event_invoke_config(params, options)
    #   response.to_h #=>
    #   {
    #     destination_config: {
    #       on_failure: {
    #       },
    #       on_success: {
    #       }
    #     },
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:$LATEST",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     maximum_event_age_in_seconds: 3600,
    #     maximum_retry_attempts: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified: Time.now,
    #     function_arn: "FunctionArn",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    # @return [Types::PutFunctionEventInvokeConfigOutput]
    def put_function_event_invoke_config(params = {}, options = {})
      request = build_request(:put_function_event_invoke_config, params)
      request.send_request(options)
    end

    # <p>Sets your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html">recursive loop detection</a> configuration.</p> <p>When you configure a Lambda function to output to the same service or resource that invokes the function, it's possible to create an infinite recursive loop. For example, a Lambda function might write a message to an Amazon Simple Queue Service (Amazon SQS) queue, which then invokes the same function. This invocation causes the function to write another message to the queue, which in turn invokes the function again.</p> <p>Lambda can detect certain types of recursive loops shortly after they occur. When Lambda detects a recursive loop and your function's recursive loop detection configuration is set to <code>Terminate</code>, it stops your function being invoked and notifies you.</p>
    # @param [Hash, Types::PutFunctionRecursionConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :recursive_loop
    #   <p>If you set your function's recursive loop detection configuration to <code>Allow</code>, Lambda doesn't take any action when it detects your function being invoked as part of a recursive loop. We recommend that you only use this setting if your design intentionally uses a Lambda function to write data back to the same Amazon Web Services resource that invokes it.</p> <p>If you set your function's recursive loop detection configuration to <code>Terminate</code>, Lambda stops your function being invoked and notifies you when it detects your function being invoked as part of a recursive loop.</p> <p>By default, Lambda sets your function's configuration to <code>Terminate</code>.</p> <important> <p>If your design intentionally uses a Lambda function to write data back to the same Amazon Web Services resource that invokes the function, then use caution and implement suitable guard rails to prevent unexpected charges being billed to your Amazon Web Services account. To learn more about best practices for using recursive invocation patterns, see <a href="https://serverlessland.com/content/service/lambda/guides/aws-lambda-operator-guide/recursive-runaway">Recursive patterns that cause run-away Lambda functions</a> in Serverless Land.</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "UnqualifiedFunctionName", # required
    #     recursive_loop: "Allow" # One of: ["Allow", "Terminate"], # required
    #   }
    #   options = {}
    #   response = client.put_function_recursion_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recursive_loop: "Allow" # One of: ["Allow", "Terminate"]
    #   }
    # @return [Types::PutFunctionRecursionConfigResponse]
    def put_function_recursion_config(params = {}, options = {})
      request = build_request(:put_function_recursion_config, params)
      request.send_request(options)
    end

    # <p>Sets the scaling configuration for a Lambda Managed Instances function. The scaling configuration defines the minimum and maximum number of execution environments that can be provisioned for the function, allowing you to control scaling behavior and resource allocation.</p>
    # @param [Hash, Types::PutFunctionScalingConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to set the scaling configuration for a published version of the function.</p>
    # @option params [Types::FunctionScalingConfig] :function_scaling_config
    #   <p>The scaling configuration to apply to the function, including minimum and maximum execution environment limits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "UnqualifiedFunctionName", # required
    #     qualifier: "PublishedFunctionQualifier", # required
    #     function_scaling_config: {
    #       min_execution_environments: 1,
    #       max_execution_environments: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_function_scaling_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"]
    #   }
    # @return [Types::PutFunctionScalingConfigResponse]
    def put_function_scaling_config(params = {}, options = {})
      request = build_request(:put_function_scaling_config, params)
      request.send_request(options)
    end

    # <p>Adds a provisioned concurrency configuration to a function's alias or version.</p>
    # @param [Hash, Types::PutProvisionedConcurrencyConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The version number or alias name.</p>
    # @option params [Integer] :provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency to allocate for the version or alias.</p>
    # @example To allocate provisioned concurrency
    #   # The following example allocates 100 provisioned concurrency for the BLUE alias of the specified function.
    #   params = {
    #     function_name: "my-function",
    #     provisioned_concurrent_executions: 100,
    #     qualifier: "BLUE"
    #   }
    #   options = {}
    #   response = client.put_provisioned_concurrency_config(params, options)
    #   response.to_h #=>
    #   {
    #     allocated_provisioned_concurrent_executions: 0,
    #     last_modified: "2019-11-21T19:32:12+0000",
    #     requested_provisioned_concurrent_executions: 100,
    #     status: IN_PROGRESS
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #     provisioned_concurrent_executions: 1, # required
    #   }
    #   options = {}
    #   response = client.put_provisioned_concurrency_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 1,
    #     allocated_provisioned_concurrent_executions: 1,
    #     available_provisioned_concurrent_executions: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #     status_reason: "String",
    #     last_modified: "Timestamp"
    #   }
    # @return [Types::PutProvisionedConcurrencyConfigResponse]
    def put_provisioned_concurrency_config(params = {}, options = {})
      request = build_request(:put_provisioned_concurrency_config, params)
      request.send_request(options)
    end

    # <p>Adds a <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">resource-based policy</a> to a Lambda resource. Resource-based policies grant access to other <a href="https://docs.aws.amazon.com/lambda/latest/dg/permissions-function-cross-account.html">Amazon Web Services accounts</a>, <a href="https://docs.aws.amazon.com/lambda/latest/dg/permissions-function-organization.html">organizations</a>, or <a href="https://docs.aws.amazon.com/lambda/latest/dg/permissions-function-services.html">services</a>. Resource-based policies apply to a single Lambda resource (for example, a function, function version, or function alias).</p> <important> <p>This operation replaces any existing policy on the Lambda resource. If you previously added permissions using the <a>AddPermission</a> operation, the new policy overwrites those permissions.</p> </important>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda resource you want to add the policy to. You can use a qualified or an unqualified ARN. The value must be a complete ARN, and the operation does not accept wildcard characters.</p>
    # @option params [String] :policy
    #   <p>The policy document you want to add to your Lambda resource. This is formatted as a JSON string.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">Working with resource-based policies in Lambda</a> in the <i>Lambda Developer Guide</i>.</p>
    # @option params [String] :revision_id
    #   <p>The revision ID that the existing policy must match for the replacement to proceed. If the revision ID doesn't match, the operation fails with a <code>PreconditionFailedException</code> error. To retrieve the current revision ID, use the <a>GetResourcePolicy</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PolicyResourceArn", # required
    #     policy: "ResourcePolicy", # required
    #     revision_id: "RevisionId"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicy",
    #     revision_id: "RevisionId"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Sets the runtime management configuration for a function's version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html">Runtime updates</a>.</p>
    # @param [Hash, Types::PutRuntimeManagementConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the <code>$LATEST</code> version is returned.</p>
    # @option params [String] :update_runtime_on
    #   <p>Specify the runtime update mode.</p> <ul> <li> <p> <b>Auto (default)</b> - Automatically update to the most recent and secure runtime version using a <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase">Two-phase runtime version rollout</a>. This is the best choice for most customers to ensure they always benefit from runtime updates.</p> </li> <li> <p> <b>Function update</b> - Lambda updates the runtime of your function to the most recent and secure runtime version when you update your function. This approach synchronizes runtime updates with function deployments, giving you control over when runtime updates are applied and allowing you to detect and mitigate rare runtime update incompatibilities early. When using this setting, you need to regularly update your functions to keep their runtime up-to-date.</p> </li> <li> <p> <b>Manual</b> - You specify a runtime version in your function configuration. The function will use this runtime version indefinitely. In the rare case where a new runtime version is incompatible with an existing function, this allows you to roll back your function to an earlier runtime version. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback">Roll back a runtime version</a>.</p> </li> </ul>
    # @option params [String] :runtime_version_arn
    #   <p>The ARN of the runtime version you want the function to use.</p> <note> <p>This is only required if you're using the <b>Manual</b> runtime update mode.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"], # required
    #     runtime_version_arn: "RuntimeVersionArn"
    #   }
    #   options = {}
    #   response = client.put_runtime_management_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"], # required
    #     function_arn: "FunctionArn", # required
    #     runtime_version_arn: "RuntimeVersionArn"
    #   }
    # @return [Types::PutRuntimeManagementConfigResponse]
    def put_runtime_management_config(params = {}, options = {})
      request = build_request(:put_runtime_management_config, params)
      request.send_request(options)
    end

    # <p>Removes a statement from the permissions policy for a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda layer</a>. For more information, see <a>AddLayerVersionPermission</a>.</p>
    # @param [Hash, Types::RemoveLayerVersionPermissionRequest] params
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    # @option params [String] :statement_id
    #   <p>The identifier that was specified when the statement was added.</p>
    # @option params [String] :revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    # @example To delete layer-version permissions
    #   # The following example deletes permission for an account to configure a layer version.
    #   params = {
    #     layer_name: "my-layer",
    #     statement_id: "xaccount",
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.remove_layer_version_permission(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.remove_layer_version_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_layer_version_permission(params = {}, options = {})
      request = build_request(:remove_layer_version_permission, params)
      request.send_request(options)
    end

    # <p>Revokes function-use permission from an Amazon Web Services service or another Amazon Web Services account. You can get the ID of the statement from the output of <a>GetPolicy</a>.</p>
    # @param [Hash, Types::RemovePermissionRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :statement_id
    #   <p>Statement ID of the permission to remove.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to remove permissions from a published version of the function.</p>
    # @option params [String] :revision_id
    #   <p>Update the policy only if the revision ID matches the ID that's specified. Use this option to avoid modifying a policy that has changed since you last read it.</p>
    # @example To remove a Lambda function's permissions
    #   # The following example removes a permissions statement named xaccount from the PROD alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "PROD",
    #     statement_id: "xaccount"
    #   }
    #   options = {}
    #   response = client.remove_permission(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     statement_id: "NamespacedStatementId", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.remove_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_permission(params = {}, options = {})
      request = build_request(:remove_permission, params)
      request.send_request(options)
    end

    # <p>Sends a failure response for a callback operation in a durable execution. Use this API when an external system cannot complete a callback operation successfully.</p>
    # @param [Hash, Types::SendDurableExecutionCallbackFailureRequest] params
    # @option params [String] :callback_id
    #   <p>The unique identifier for the callback operation.</p>
    # @option params [Types::ErrorObject] :error
    #   <p>Error details describing why the callback operation failed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     callback_id: "CallbackId", # required
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_type: "ErrorType",
    #       error_data: "ErrorData",
    #       stack_trace: ["StackTraceEntry"]
    #     }
    #   }
    #   options = {}
    #   response = client.send_durable_execution_callback_failure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendDurableExecutionCallbackFailureResponse]
    def send_durable_execution_callback_failure(params = {}, options = {})
      request = build_request(:send_durable_execution_callback_failure, params)
      request.send_request(options)
    end

    # <p>Sends a heartbeat signal for a long-running callback operation to prevent timeout. Use this API to extend the callback timeout period while the external operation is still in progress.</p>
    # @param [Hash, Types::SendDurableExecutionCallbackHeartbeatRequest] params
    # @option params [String] :callback_id
    #   <p>The unique identifier for the callback operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     callback_id: "CallbackId", # required
    #   }
    #   options = {}
    #   response = client.send_durable_execution_callback_heartbeat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendDurableExecutionCallbackHeartbeatResponse]
    def send_durable_execution_callback_heartbeat(params = {}, options = {})
      request = build_request(:send_durable_execution_callback_heartbeat, params)
      request.send_request(options)
    end

    # <p>Sends a successful completion response for a callback operation in a durable execution. Use this API when an external system has successfully completed a callback operation.</p>
    # @param [Hash, Types::SendDurableExecutionCallbackSuccessRequest] params
    # @option params [String] :callback_id
    #   <p>The unique identifier for the callback operation.</p>
    # @option params [String] :result
    #   <p>The result data from the successful callback operation. Maximum size is 256 KB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     callback_id: "CallbackId", # required
    #     result: "data"
    #   }
    #   options = {}
    #   response = client.send_durable_execution_callback_success(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendDurableExecutionCallbackSuccessResponse]
    def send_durable_execution_callback_success(params = {}, options = {})
      request = build_request(:send_durable_execution_callback_success, params)
      request.send_request(options)
    end

    # <p>Stops a running <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable execution</a>. The execution transitions to STOPPED status and cannot be resumed. Any in-progress operations are terminated.</p>
    # @param [Hash, Types::StopDurableExecutionRequest] params
    # @option params [String] :durable_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the durable execution.</p>
    # @option params [Types::ErrorObject] :error
    #   <p>Optional error details explaining why the execution is being stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     durable_execution_arn: "DurableExecutionArn", # required
    #     error: {
    #       error_message: "ErrorMessage",
    #       error_type: "ErrorType",
    #       error_data: "ErrorData",
    #       stack_trace: ["StackTraceEntry"]
    #     }
    #   }
    #   options = {}
    #   response = client.stop_durable_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stop_timestamp: Time.now, # required
    #   }
    # @return [Types::StopDurableExecutionResponse]
    def stop_durable_execution(params = {}, options = {})
      request = build_request(:stop_durable_execution, params)
      request.send_request(options)
    end

    # <p>Adds <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> to a function, event source mapping, or code signing configuration.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the resource.</p>
    # @example To add tags to an existing Lambda function
    #   # The following example adds a tag with the key name DEPARTMENT and a value of 'Department A' to the specified Lambda function.
    #   params = {
    #     resource: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     tags: {
    #       "DEPARTMENT" => "Department A"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> from a function, event source mapping, or code signing configuration.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    # @example To remove tags from an existing Lambda function
    #   # The following example removes the tag with the key name DEPARTMENT tag from the my-function Lambda function.
    #   params = {
    #     resource: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     tag_keys: [
    #       "DEPARTMENT"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a Lambda Event Function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
    # @param [Hash, Types::UpdateAliasRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    # @option params [String] :function_version
    #   <p>The function version that the alias invokes.</p>
    # @option params [String] :description
    #   <p>A description of the alias.</p>
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing configuration</a> of the alias.</p>
    # @option params [String] :revision_id
    #   <p>Only update the alias if the revision ID matches the ID that's specified. Use this option to avoid modifying an alias that has changed since you last read it.</p>
    # @example To update a function alias
    #   # The following example updates the alias named BLUE to send 30% of traffic to version 2 and 70% to version 1.
    #   params = {
    #     function_name: "my-function",
    #     function_version: "2",
    #     name: "BLUE",
    #     routing_config: {
    #       additional_version_weights: {
    #         "1" => 0.7
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_alias(params, options)
    #   response.to_h #=>
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE",
    #     description: "Production environment BLUE.",
    #     function_version: "2",
    #     name: "BLUE",
    #     revision_id: "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93",
    #     routing_config: {
    #       additional_version_weights: {
    #         "1" => 0.7
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "VersionWithLatestPublished",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.update_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias_arn: "FunctionArn",
    #     name: "Alias",
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    # @return [Types::UpdateAliasOutput]
    def update_alias(params = {}, options = {})
      request = build_request(:update_alias, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing capacity provider.</p>
    # @param [Hash, Types::UpdateCapacityProviderRequest] params
    # @option params [String] :capacity_provider_name
    #   <p>The name of the capacity provider to update.</p>
    # @option params [Types::CapacityProviderScalingConfig] :capacity_provider_scaling_config
    #   <p>The updated scaling configuration for the capacity provider.</p>
    # @option params [Types::PropagateTags] :propagate_tags
    #   <p>Configuration for tag propagation to managed resources launched by the capacity provider.</p>
    # @option params [Types::CapacityProviderTelemetryConfig] :telemetry_config
    #   <p>The updated telemetry configuration for the capacity provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_name: "CapacityProviderName", # required
    #     capacity_provider_scaling_config: {
    #       max_v_cpu_count: 1,
    #       scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #       scaling_policies: [
    #         {
    #           predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #           target_value: 1.0, # required
    #         }
    #       ]
    #     },
    #     propagate_tags: {
    #       mode: "None" # One of: ["None", "Explicit"],
    #       explicit_tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     telemetry_config: {
    #       logging_config: {
    #         system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #         log_group: "LogGroup"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: { # required
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #       state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #       vpc_config: { # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"], # required
    #       },
    #       permissions_config: { # required
    #         capacity_provider_operator_role_arn: "RoleArn", # required
    #       },
    #       instance_requirements: {
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         allowed_instance_types: ["InstanceType"],
    #         excluded_instance_types: ["InstanceType"]
    #       },
    #       capacity_provider_scaling_config: {
    #         max_v_cpu_count: 1,
    #         scaling_mode: "Auto" # One of: ["Auto", "Manual"],
    #         scaling_policies: [
    #           {
    #             predefined_metric_type: "LambdaCapacityProviderAverageCPUUtilization" # One of: ["LambdaCapacityProviderAverageCPUUtilization"], # required
    #             target_value: 1.0, # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn",
    #       last_modified: "Timestamp",
    #       propagate_tags: {
    #         mode: "None" # One of: ["None", "Explicit"],
    #         explicit_tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateCapacityProviderResponse]
    def update_capacity_provider(params = {}, options = {})
      request = build_request(:update_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Update the code signing configuration. Changes to the code signing configuration take effect the next time a user tries to deploy a code package to the function. </p>
    # @param [Hash, Types::UpdateCodeSigningConfigRequest] params
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    # @option params [String] :description
    #   <p>Descriptive name for this code signing configuration.</p>
    # @option params [Types::AllowedPublishers] :allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    # @option params [Types::CodeSigningPolicies] :code_signing_policies
    #   <p>The code signing policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     description: "Description",
    #     allowed_publishers: {
    #       signing_profile_version_arns: ["Arn"], # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_signing_config: { # required
    #       code_signing_config_id: "CodeSigningConfigId", # required
    #       code_signing_config_arn: "CodeSigningConfigArn", # required
    #       description: "Description",
    #       allowed_publishers: { # required
    #         signing_profile_version_arns: ["Arn"], # required
    #       },
    #       code_signing_policies: { # required
    #         untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #       },
    #       last_modified: "Timestamp", # required
    #     }
    #   }
    # @return [Types::UpdateCodeSigningConfigResponse]
    def update_code_signing_config(params = {}, options = {})
      request = build_request(:update_code_signing_config, params)
      request.send_request(options)
    end

    # <p>Updates an event source mapping. You can change the function that Lambda invokes, or pause invocation and resume later from the same location.</p> <p>For details about how to configure different event sources, see the following topics. </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html"> Amazon DocumentDB</a> </p> </li> </ul> <p>The following error handling options are available for stream sources (DynamoDB, Kinesis, Amazon MSK, and self-managed Apache Kafka):</p> <ul> <li> <p> <code>BisectBatchOnFunctionError</code> – If the function returns an error, split the batch in two and retry.</p> </li> <li> <p> <code>MaximumRecordAgeInSeconds</code> – Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p> </li> <li> <p> <code>MaximumRetryAttempts</code> – Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p> </li> <li> <p> <code>OnFailure</code> – Send discarded records to an Amazon SQS queue, Amazon SNS topic, Kafka topic, or Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p> </li> </ul> <p>The following option is available only for DynamoDB and Kinesis event sources:</p> <ul> <li> <p> <code>ParallelizationFactor</code> – Process multiple batches from each shard concurrently.</p> </li> </ul> <p>For information about which configuration parameters apply to each event source, see the following topics.</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration"> Amazon DocumentDB</a> </p> </li> </ul>
    # @param [Hash, Types::UpdateEventSourceMappingRequest] params
    # @option params [String] :uuid
    #   <p>The identifier of the event source mapping.</p>
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.</p>
    # @option params [Boolean] :enabled
    #   <p>When true, the event source mapping is active. When false, Lambda pauses polling and invocation.</p> <p>Default: True</p>
    # @option params [Integer] :batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation (6 MB).</p> <ul> <li> <p> <b>Amazon Kinesis</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon DynamoDB Streams</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon Simple Queue Service</b> – Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p> </li> <li> <p> <b>Amazon Managed Streaming for Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Self-managed Apache Kafka</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>Amazon MQ (ActiveMQ and RabbitMQ)</b> – Default 100. Max 10,000.</p> </li> <li> <p> <b>DocumentDB</b> – Default 100. Max 10,000.</p> </li> </ul>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>An object that defines the filter criteria that determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p>
    # @option params [String] :kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    # @option params [Types::EventSourceMappingMetricsConfig] :metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    # @option params [Types::EventSourceMappingLoggingConfig] :logging_config
    #   <p>(Amazon MSK, and self-managed Apache Kafka only) The logging configuration for your event source. Use this configuration object to define the level of logs for your event source mapping. </p>
    # @option params [Types::ScalingConfig] :scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    # @option params [Integer] :parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    # @option params [Types::DestinationConfig] :destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records older than the specified age. The default value is infinite (-1).</p>
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) If the function returns an error, split the batch in two and retry.</p>
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    # @option params [Array<Types::SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    # @option params [Array<String>] :function_response_types
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, self-managed Apache Kafka, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    # @option params [Types::AmazonManagedKafkaEventSourceConfig] :amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    # @option params [Types::SelfManagedKafkaEventSourceConfig] :self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    # @option params [Types::DocumentDBEventSourceConfig] :document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    # @option params [Types::ProvisionedPollerConfig] :provisioned_poller_config
    #   <p>(Amazon SQS, Amazon MSK, and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    # @example To update a Lambda function event source mapping
    #   # This operation updates a Lambda function event source mapping
    #   params = {
    #     batch_size: 123,
    #     enabled: true,
    #     function_name: "myFunction",
    #     uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE"
    #   }
    #   options = {}
    #   response = client.update_event_source_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     batch_size: 123,
    #     event_source_arn: "arn:aws:s3:::examplebucket/*",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     last_processing_result: "",
    #     state: "",
    #     state_transition_reason: "",
    #     uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "UUIDString", # required
    #     function_name: "NamespacedFunctionName",
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #     },
    #     logging_config: {
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #         uri: "URI"
    #       }
    #     ],
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1,
    #       poller_group_name: "ProvisionedPollerGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "UUIDString",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount", "ErrorCount", "KafkaMetrics"]]
    #     },
    #     logging_config: {
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH", "OAUTHBEARER_SCOPE", "OAUTHBEARER_AUDIENCE", "OAUTHBEARER_LOGICAL_CLUSTER", "OAUTHBEARER_IDENTITY_POOL", "IAM_AUTH", "IAM_OAUTHBEARER_AUTH"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE", "OAUTHBEARER_AUTH"],
    #             uri: "Arn"
    #           }
    #         ],
    #         schema_validation_configs: [
    #           {
    #             attribute: "KEY" # One of: ["KEY", "VALUE"]
    #           }
    #         ]
    #       }
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1,
    #       poller_group_name: "ProvisionedPollerGroupName"
    #     }
    #   }
    # @return [Types::UpdateEventSourceMappingOutput]
    def update_event_source_mapping(params = {}, options = {})
      request = build_request(:update_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Updates a Lambda Event Function's code. If code signing is enabled for the function, the code package must be signed by a trusted publisher. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">Configuring code signing for Lambda</a>.</p> <p>If the function's package type is <code>Image</code>, then you must specify the code package in <code>ImageUri</code> as the URI of a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a> in the Amazon ECR registry.</p> <p>If the function's package type is <code>Zip</code>, then you must specify the deployment package as a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip">.zip file archive</a>. Enter the Amazon S3 bucket and key of the code .zip file location. You can also provide the function code inline using the <code>ZipFile</code> field.</p> <p>The code in the deployment package must be compatible with the target instruction set architecture of the function (<code>x86-64</code> or <code>arm64</code>).</p> <p>The function's code is locked when you publish a version. You can't modify the code of a published version, only the unpublished version.</p> <note> <p>For a function defined as a container image, Lambda resolves the image tag to an image digest. In Amazon ECR, if you update the image tag to a new image, Lambda does not automatically update the function.</p> </note>
    # @param [Hash, Types::UpdateFunctionCodeRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :zip_file
    #   <p>The base64-encoded contents of the deployment package. Amazon Web Services SDK and CLI clients handle the encoding for you. Use only with a function defined with a .zip file archive deployment package.</p>
    # @option params [String] :s3_bucket
    #   <p>An Amazon S3 bucket in the same Amazon Web Services Region as your function. The bucket can be in a different Amazon Web Services account. Use only with a function defined with a .zip file archive deployment package.</p>
    # @option params [String] :s3_key
    #   <p>The Amazon S3 key of the deployment package. Use only with a function defined with a .zip file archive deployment package.</p>
    # @option params [String] :s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    # @option params [String] :s3_object_storage_mode
    #   <p>Specifies how the deployment package is stored. Valid values:</p> <ul> <li> <p> <code>COPY</code> (default) – Uploads a copy of your deployment package to Lambda.</p> </li> <li> <p> <code>REFERENCE</code> – Lambda references the deployment package from the specified Amazon S3 bucket.</p> </li> </ul>
    # @option params [String] :image_uri
    #   <p>URI of a container image in the Amazon ECR registry. Do not use for a function defined with a .zip file archive.</p>
    # @option params [Array<String>] :architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
    # @option params [Boolean] :publish
    #   <p>Set to true to publish a new version of the function after updating the code. This has the same effect as calling <a>PublishVersion</a> separately.</p>
    # @option params [String] :publish_to
    #   <p>Specifies where to publish the function version or configuration.</p>
    # @option params [Boolean] :dry_run
    #   <p>Set to true to validate the request parameters and access permissions without modifying the function code.</p>
    # @option params [String] :revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.</p>
    # @option params [String] :source_kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an Amazon Web Services managed key.</p>
    # @example To update a Lambda function's code
    #   # The following example replaces the code of the unpublished ($LATEST) version of a function named my-function with the contents of the specified zip file in Amazon S3.
    #   params = {
    #     function_name: "my-function",
    #     s3_bucket: "my-bucket-1xpuxmplzrlbh",
    #     s3_key: "function.zip"
    #   }
    #   options = {}
    #   response = client.update_function_code(params, options)
    #   response.to_h #=>
    #   {
    #     code_sha256: "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=",
    #     code_size: 308,
    #     description: "",
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     function_name: "my-function",
    #     handler: "index.handler",
    #     last_modified: "2019-08-14T22:26:11.234+0000",
    #     memory_size: 128,
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     runtime: nodejs12.x,
    #     timeout: 3,
    #     tracing_config: {
    #       mode: PassThrough
    #     },
    #     version: "$LATEST"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     zip_file: "data",
    #     s3_bucket: "S3Bucket",
    #     s3_key: "S3Key",
    #     s3_object_version: "S3ObjectVersion",
    #     s3_object_storage_mode: "COPY" # One of: ["COPY", "REFERENCE"],
    #     image_uri: "String",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     publish: false,
    #     publish_to: "LATEST_PUBLISHED" # One of: ["LATEST_PUBLISHED"],
    #     dry_run: false,
    #     revision_id: "String",
    #     source_kms_key_arn: "KMSKeyArn"
    #   }
    #   options = {}
    #   response = client.update_function_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     tenancy_config: {
    #       tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     config_sha256: "String",
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    # @return [Types::UpdateFunctionCodeOutput]
    def update_function_code(params = {}, options = {})
      request = build_request(:update_function_code, params)
      request.send_request(options)
    end

    # <p>Modifies the version-specific settings of a Lambda Event Function.</p> <p>When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The <code>LastUpdateStatus</code>, <code>LastUpdateStatusReason</code>, and <code>LastUpdateStatusReasonCode</code> fields in the response from <a>GetFunctionConfiguration</a> indicate when the update is complete and the function is processing events with the new configuration. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Lambda function states</a>.</p> <p>These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version.</p> <p>To configure function concurrency, use <a>PutFunctionConcurrency</a>. To grant invoke permissions to an Amazon Web Services account or Amazon Web Services service, use <a>AddPermission</a>.</p>
    # @param [Hash, Types::UpdateFunctionConfigurationRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    # @option params [String] :handler
    #   <p>The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda programming model</a>.</p>
    # @option params [String] :description
    #   <p>A description of the function.</p>
    # @option params [Integer] :timeout
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds, and the maximum allowed value is 900 seconds. For functions using Lambda Managed Instances, asynchronous invocations and event source mapping invocations (except Amazon MQ and Amazon DocumentDB) support a maximum allowed value of 5,400 seconds (90 minutes). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    # @option params [Integer] :memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>For network connectivity to Amazon Web Services resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    # @option params [Types::Environment] :environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    # @option params [String] :runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html"> runtime</a>. Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.</p> <p>The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   <p>A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter queues</a>.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt the following resources:</p> <ul> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>.</p> </li> <li> <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> snapshots.</p> </li> <li> <p>When used with <code>SourceKMSKeyArn</code>, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption"> Specifying a customer managed key for Lambda</a>.</p> </li> <li> <p>The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle">Function lifecycle</a>.</p> </li> </ul> <p>If you don't provide a customer managed key, Lambda uses an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    # @option params [Types::TracingConfig] :tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p>
    # @option params [String] :revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.</p>
    # @option params [Array<String>] :layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a> to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    # @option params [Array<Types::FileSystemConfig>] :file_system_configs
    #   <p>Connection settings for an Amazon EFS file system or an Amazon S3 Files file system.</p>
    # @option params [Types::ImageConfig] :image_config
    #   <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">Container image configuration values</a> that override the values in the container image Docker file.</p>
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    # @option params [Types::SnapStart] :snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    # @option params [Types::CapacityProviderConfig] :capacity_provider_config
    #   <p>Configuration for the capacity provider that manages compute resources for Lambda functions.</p>
    # @option params [Types::DurableConfig] :durable_config
    #   <p>Configuration settings for <a href="https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html">durable functions</a>, including execution timeout, retention period for execution history, and an optional ARN of the Key Management Service (KMS) customer managed key that is used to encrypt your durable execution's payload data, including input, output, and error payloads.</p>
    # @example To update a Lambda function's configuration
    #   # The following example modifies the memory size to be 256 MB for the unpublished ($LATEST) version of a function named my-function.
    #   params = {
    #     durable_config: {
    #       execution_timeout: 3600,
    #       retention_period_in_days: 45
    #     },
    #     function_name: "my-function",
    #     memory_size: 256
    #   }
    #   options = {}
    #   response = client.update_function_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     code_sha256: "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=",
    #     code_size: 308,
    #     description: "",
    #     durable_config: {
    #       execution_timeout: 3600,
    #       retention_period_in_days: 45
    #     },
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     function_name: "my-function",
    #     handler: "index.handler",
    #     last_modified: "2019-08-14T22:26:11.234+0000",
    #     memory_size: 256,
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     runtime: nodejs12.x,
    #     timeout: 3,
    #     tracing_config: {
    #       mode: PassThrough
    #     },
    #     version: "$LATEST"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     role: "RoleArn",
    #     handler: "Handler",
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       }
    #     },
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     revision_id: "String",
    #     layers: ["LayerVersionArn"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory"
    #     },
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"]
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_function_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "nodejs18.x", "nodejs20.x", "nodejs22.x", "nodejs24.x", "java8", "java8.al2", "java11", "java17", "java21", "java25", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "python3.10", "python3.11", "python3.12", "python3.13", "python3.14", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "dotnet10", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "ruby3.2", "ruby3.3", "ruby3.4", "ruby4.0", "provided", "provided.al2", "provided.al2023", "nodejs26.x", "python3.15", "java8.al2023", "java11.al2023", "java17.al2023"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed", "Deactivating", "Deactivated", "ActiveNonInvocable", "Deleting"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DrainingDurableExecutions", "DependencyError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError", "ServiceQuotaExceededException", "VcpuLimitExceeded", "CapacityProviderScalingLimitExceeded", "InsufficientCapacity", "EC2RequestLimitExceeded", "FunctionError.InitTimeout", "FunctionError.RuntimeInitError", "FunctionError.ExtensionInitError", "FunctionError.InvalidEntryPoint", "FunctionError.InvalidWorkingDirectory", "FunctionError.PermissionDenied", "FunctionError.TooManyExtensions", "FunctionError.InitResourceExhausted", "DisallowedByVpcEncryptionControl", "DependencyError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #         s3_files_config: {
    #           direct_s3_read: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"]
    #         }
    #       }
    #     ],
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     },
    #     tenancy_config: {
    #       tenant_isolation_mode: "PER_TENANT" # One of: ["PER_TENANT"], # required
    #     },
    #     capacity_provider_config: {
    #       lambda_managed_instances_capacity_provider_config: { # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         per_execution_environment_max_concurrency: 1,
    #         execution_environment_memory_gi_b_per_v_cpu: 1.0
    #       }
    #     },
    #     config_sha256: "String",
    #     durable_config: {
    #       kms_key_arn: "KMSKeyArn",
    #       retention_period_in_days: 1,
    #       execution_timeout: 1
    #     }
    #   }
    # @return [Types::UpdateFunctionConfigurationOutput]
    def update_function_configuration(params = {}, options = {})
      request = build_request(:update_function_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for asynchronous invocation for a function, version, or alias.</p> <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    # @param [Hash, Types::UpdateFunctionEventInvokeConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    # @option params [Integer] :maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    # @option params [Integer] :maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    # @option params [Types::DestinationConfig] :destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p> <p class="title"> <b>Destinations</b> </p> <ul> <li> <p> <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p> </li> <li> <p> <b>Queue</b> - The ARN of a standard SQS queue.</p> </li> <li> <p> <b>Bucket</b> - The ARN of an Amazon S3 bucket.</p> </li> <li> <p> <b>Topic</b> - The ARN of a standard SNS topic.</p> </li> <li> <p> <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p> </li> </ul> <note> <p>S3 buckets are supported only for on-failure destinations. To retain records of successful invocations, use another destination type.</p> </note>
    # @example To update an asynchronous invocation configuration
    #   # The following example adds an on-failure destination to the existing asynchronous invocation configuration for a function named my-function.
    #   params = {
    #     destination_config: {
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:destination"
    #       }
    #     },
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   response = client.update_function_event_invoke_config(params, options)
    #   response.to_h #=>
    #   {
    #     destination_config: {
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:destination"
    #       },
    #       on_success: {
    #       }
    #     },
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:$LATEST",
    #     last_modified: Time.parse(1573687896.493),
    #     maximum_event_age_in_seconds: 3600,
    #     maximum_retry_attempts: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "NumericLatestPublishedOrAliasQualifier",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified: Time.now,
    #     function_arn: "FunctionArn",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    # @return [Types::UpdateFunctionEventInvokeConfigOutput]
    def update_function_event_invoke_config(params = {}, options = {})
      request = build_request(:update_function_event_invoke_config, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for a Lambda function URL.</p>
    # @param [Hash, Types::UpdateFunctionUrlConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @option params [String] :auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Control access to Lambda function URLs</a>.</p>
    # @option params [Types::Cors] :cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    # @option params [String] :invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionUrlFunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"],
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    #   options = {}
    #   response = client.update_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_url: "FunctionUrl", # required
    #     function_arn: "FunctionArn", # required
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     creation_time: "Timestamp", # required
    #     last_modified_time: "Timestamp", # required
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    # @return [Types::UpdateFunctionUrlConfigResponse]
    def update_function_url_config(params = {}, options = {})
      request = build_request(:update_function_url_config, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-lambda'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        function_active: Waiters::FunctionActive,
        function_active_v2: Waiters::FunctionActiveV2,
        function_exists: Waiters::FunctionExists,
        function_updated: Waiters::FunctionUpdated,
        function_updated_v2: Waiters::FunctionUpdatedV2,
        published_version_active: Waiters::PublishedVersionActive
      }
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
