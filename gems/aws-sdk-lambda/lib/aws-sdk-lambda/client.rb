# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

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
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Lambda::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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
    #     layer_name: "my-layer",
    #     version_number: 1,
    #     statement_id: "xaccount",
    #     action: "lambda:GetLayerVersion",
    #     principal: "223456789012"
    #   }
    #   options = {}
    #   response = client.add_layer_version_permission(params, options)
    #   response.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:GetLayerVersion\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1\"}",
    #     revision_id: "35d87451-f796-4a3f-a618-95a3671b0a0c"
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
    # @option params [String] :function_url_auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    # @example To grant Amazon S3 permission to invoke a function
    #   # The following example adds permission for Amazon S3 to invoke a Lambda function named my-function for notifications from a bucket named my-bucket-1xpuxmplzrlbh in account 123456789012.
    #   params = {
    #     function_name: "my-function",
    #     statement_id: "s3",
    #     action: "lambda:InvokeFunction",
    #     principal: "s3.amazonaws.com",
    #     source_arn: "arn:aws:s3:::my-bucket-1xpuxmplzrlbh/*",
    #     source_account: "123456789012"
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
    #     function_name: "my-function",
    #     statement_id: "xaccount",
    #     action: "lambda:InvokeFunction",
    #     principal: "223456789012"
    #   }
    #   options = {}
    #   response = client.add_permission(params, options)
    #   response.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\"}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     statement_id: "StatementId", # required
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     source_arn: "Arn",
    #     source_account: "SourceOwner",
    #     event_source_token: "EventSourceToken",
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #     principal_org_id: "PrincipalOrgID",
    #     function_url_auth_type: "NONE" # One of: ["NONE", "AWS_IAM"]
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

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a> for a Lambda function version. Use aliases to provide clients with a function identifier that you can update to invoke a different version.</p> <p>You can also map an alias to split invocation requests between two versions. Use the <code>RoutingConfig</code> parameter to specify a second version and the percentage of invocation requests that it receives.</p>
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
    #     function_name: "my-function",
    #     name: "LIVE",
    #     function_version: "1",
    #     description: "alias for live version of function"
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    #   response.to_h #=>
    #   {
    #     function_version: "1",
    #     name: "LIVE",
    #     alias_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:LIVE",
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     description: "alias for live version of function"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version", # required
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

    # <p>Creates a mapping between an event source and an Lambda function. Lambda reads items from the event source and invokes the function.</p> <p>For details about how to configure different event sources, see the following topics. </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html"> Amazon DocumentDB</a> </p> </li> </ul> <p>The following error handling options are available only for DynamoDB and Kinesis event sources:</p> <ul> <li> <p> <code>BisectBatchOnFunctionError</code> – If the function returns an error, split the batch in two and retry.</p> </li> <li> <p> <code>MaximumRecordAgeInSeconds</code> – Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p> </li> <li> <p> <code>MaximumRetryAttempts</code> – Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p> </li> <li> <p> <code>ParallelizationFactor</code> – Process multiple batches from each shard concurrently.</p> </li> </ul> <p>For stream sources (DynamoDB, Kinesis, Amazon MSK, and self-managed Apache Kafka), the following option is also available:</p> <ul> <li> <p> <code>OnFailure</code> – Send discarded records to an Amazon SQS queue, Amazon SNS topic, or Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p> </li> </ul> <p>For information about which configuration parameters apply to each event source, see the following topics.</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration"> Amazon DocumentDB</a> </p> </li> </ul>
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
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    # @option params [Integer] :parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    # @option params [String] :starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis and Amazon DynamoDB Stream event sources. <code>AT_TIMESTAMP</code> is supported only for Amazon Kinesis streams, Amazon DocumentDB, Amazon MSK, and self-managed Apache Kafka.</p>
    # @option params [Time] :starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start reading. <code>StartingPositionTimestamp</code> cannot be in the future.</p>
    # @option params [Types::DestinationConfig] :destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Kafka only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is infinite (-1).</p>
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry.</p>
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
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
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    # @option params [Types::AmazonManagedKafkaEventSourceConfig] :amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    # @option params [Types::SelfManagedKafkaEventSourceConfig] :self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    # @option params [Types::ScalingConfig] :scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    # @option params [Types::DocumentDBEventSourceConfig] :document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    # @option params [String] :kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    # @option params [Types::EventSourceMappingMetricsConfig] :metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    # @option params [Types::ProvisionedPollerConfig] :provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    # @example To create a mapping between an event source and an AWS Lambda function
    #   # The following example creates a mapping between an SQS queue and the my-function Lambda function.
    #   params = {
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue",
    #     function_name: "my-function",
    #     batch_size: 5
    #   }
    #   options = {}
    #   response = client.create_event_source_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE",
    #     state_transition_reason: "USER_INITIATED",
    #     last_modified: Time.parse(1569284520.333),
    #     batch_size: 5,
    #     state: "Creating",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName", # required
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
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
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "String",
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
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    # @return [Types::CreateEventSourceMappingOutput]
    def create_event_source_mapping(params = {}, options = {})
      request = build_request(:create_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Creates a Lambda function. To create a function, you need a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html">deployment package</a> and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role">execution role</a>. The deployment package is a .zip file archive or container image that contains your function code. The execution role grants the function permission to use Amazon Web Services services, such as Amazon CloudWatch Logs for log streaming and X-Ray for request tracing.</p> <p>If the deployment package is a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a>, then you set the package type to <code>Image</code>. For a container image, the code property must include the URI of a container image in the Amazon ECR registry. You do not need to specify the handler and runtime properties.</p> <p>If the deployment package is a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip">.zip file archive</a>, then you set the package type to <code>Zip</code>. For a .zip file archive, the code property specifies the location of the .zip file. You must also specify the handler and runtime properties. The code in the deployment package must be compatible with the target instruction set architecture of the function (<code>x86-64</code> or <code>arm64</code>). If you do not specify the architecture, then the default value is <code>x86-64</code>.</p> <p>When you create a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or modify the function. The <code>State</code>, <code>StateReason</code>, and <code>StateReasonCode</code> fields in the response from <a>GetFunctionConfiguration</a> indicate when the function is ready to invoke. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Lambda function states</a>.</p> <p>A function has an unpublished version, and can have published versions and aliases. The unpublished version changes when you update your function's code and configuration. A published version is a snapshot of your function code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be changed to map to a different version. Use the <code>Publish</code> parameter to create version <code>1</code> of your function from its initial configuration.</p> <p>The other parameters let you configure version-specific and function-level settings. You can modify version-specific settings later with <a>UpdateFunctionConfiguration</a>. Function-level settings apply to both the unpublished and published versions of the function, and include tags (<a>TagResource</a>) and per-function concurrency limits (<a>PutFunctionConcurrency</a>).</p> <p>You can use code signing if your deployment package is a .zip file archive. To enable code signing for this function, specify the ARN of a code-signing configuration. When a user attempts to deploy a code package with <a>UpdateFunctionCode</a>, Lambda checks that the code package has a valid signature from a trusted publisher. The code-signing configuration includes set of signing profiles, which define the trusted publishers for this function.</p> <p>If another Amazon Web Services account or an Amazon Web Services service invokes your function, use <a>AddPermission</a> to grant permission by creating a resource-based Identity and Access Management (IAM) policy. You can grant permissions at the function level, on a version, or on an alias.</p> <p>To invoke your function directly, use <a>Invoke</a>. To invoke your function in response to events in other Amazon Web Services services, create an event source mapping (<a>CreateEventSourceMapping</a>), or configure a function trigger in the other service. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html">Invoking Lambda functions</a>.</p>
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
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    # @option params [Integer] :memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    # @option params [Boolean] :publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
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
    #   <p>Connection settings for an Amazon EFS file system.</p>
    # @option params [Types::ImageConfig] :image_config
    #   <p>Container image <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">configuration values</a> that override the values in the container image Dockerfile.</p>
    # @option params [String] :code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.</p>
    # @option params [Array<String>] :architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    # @option params [Types::SnapStart] :snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    # @example To create a function
    #   # The following example creates a function with a deployment package in Amazon S3 and enables X-Ray tracing and environment variable encryption.
    #   params = {
    #     function_name: "my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code: {
    #       s3_bucket: "my-bucket-1xpuxmplzrlbh",
    #       s3_key: "function.zip"
    #     },
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 15,
    #     memory_size: 256,
    #     publish: true,
    #     environment: {
    #       variables: {
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #         "PREFIX" => "inbound"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     tags: {
    #       "DEPARTMENT" => "Assets"
    #     }
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    #   response.to_h #=>
    #   {
    #     function_name: "my-function",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 15,
    #     memory_size: 256,
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     version: "1",
    #     environment: {
    #       variables: {
    #         "PREFIX" => "inbound",
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     state: Active,
    #     last_update_status: Successful
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn", # required
    #     handler: "Handler",
    #     code: { # required
    #       zip_file: "data",
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       image_uri: "String",
    #       source_kms_key_arn: "KMSKeyArn"
    #     },
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
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
    #       }
    #     ],
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory"
    #     },
    #     code_signing_config_arn: "CodeSigningConfigArn",
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
    #     }
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
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
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
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
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    # @option params [Types::Cors] :cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    # @option params [String] :invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
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

    # <p>Deletes a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
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
    #     uuid: "14e0db71-xmpl-4eb5-b481-8945cf9d10c2",
    #     batch_size: 5,
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue",
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     state: "Enabled",
    #     state_transition_reason: "USER_INITIATED"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "String",
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
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    # @return [Types::DeleteEventSourceMappingOutput]
    def delete_event_source_mapping(params = {}, options = {})
      request = build_request(:delete_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes a Lambda function. To delete a specific function version, use the <code>Qualifier</code> parameter. Otherwise, all versions and aliases are deleted. This doesn't require the user to have explicit permissions for <a>DeleteAlias</a>.</p> <p>To delete Lambda event source mappings that invoke a function, use <a>DeleteEventSourceMapping</a>. For Amazon Web Services services and resources that invoke your function directly, delete the trigger in the service where you originally configured it.</p>
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
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   response = client.delete_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
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
    #     function_name: "FunctionName", # required
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
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier"
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
    #     function_name: "FunctionName", # required
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
    #       unreserved_concurrent_executions: 1000,
    #       concurrent_executions: 1000,
    #       code_size_zipped: 52428800,
    #       total_code_size: 80530636800
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

    # <p>Returns details about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
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
    #     name: "BLUE",
    #     function_version: "3",
    #     revision_id: "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93",
    #     description: "Production environment BLUE."
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
    #     uuid: "14e0db71-xmpl-4eb5-b481-8945cf9d10c2",
    #     batch_size: 500,
    #     event_source_arn: "arn:aws:sqs:us-east-2:123456789012:mySQSqueue",
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:myFunction",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     last_processing_result: "No records processed",
    #     state: "Creating",
    #     state_transition_reason: "User action",
    #     destination_config: {
    #     },
    #     maximum_record_age_in_seconds: 604800,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 10000
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "String", # required
    #   }
    #   options = {}
    #   response = client.get_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "String",
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
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
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
    #     configuration: {
    #       function_name: "my-function",
    #       function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #       runtime: nodejs12.x,
    #       role: "arn:aws:iam::123456789012:role/lambda-role",
    #       handler: "index.handler",
    #       code_size: 5797206,
    #       description: "Process image objects from Amazon S3.",
    #       timeout: 15,
    #       memory_size: 256,
    #       last_modified: "2020-04-10T19:06:32.563+0000",
    #       code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #       version: "$LATEST",
    #       environment: {
    #         variables: {
    #           "PREFIX" => "inbound",
    #           "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #         }
    #       },
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #       tracing_config: {
    #         mode: Active
    #       },
    #       revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #       state: Active,
    #       last_update_status: Successful
    #     },
    #     code: {
    #       repository_type: "S3",
    #       location: "https://awslambda-us-west-2-tasks.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-function-e7d9d1ed-xmpl-4f79-904a-4b87f2681f30?versionId=sH3TQwBOaUy..."
    #     },
    #     tags: {
    #       "DEPARTMENT" => "Assets"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   response = client.get_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       function_name: "NamespacedFunctionName",
    #       function_arn: "NameSpacedFunctionArn",
    #       runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #       state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #       state_reason: "StateReason",
    #       state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #       last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #       last_update_status_reason: "LastUpdateStatusReason",
    #       last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #       file_system_configs: [
    #         {
    #           arn: "FileSystemArn", # required
    #           local_mount_path: "LocalMountPath", # required
    #         }
    #       ],
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
    #       signing_profile_version_arn: "Arn",
    #       signing_job_arn: "Arn",
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
    #       }
    #     },
    #     code: {
    #       repository_type: "String",
    #       location: "String",
    #       image_uri: "String",
    #       resolved_image_uri: "String",
    #       source_kms_key_arn: "String"
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
    #     function_name: "FunctionName", # required
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

    # <p>Returns the version-specific settings of a Lambda function or version. The output includes only options that can vary between versions of a function. To modify these settings, use <a>UpdateFunctionConfiguration</a>.</p> <p>To get all of a function's details, including function-level settings, use <a>GetFunction</a>.</p>
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
    #     function_name: "my-function",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 15,
    #     memory_size: 256,
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     version: "$LATEST",
    #     environment: {
    #       variables: {
    #         "PREFIX" => "inbound",
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     state: Active,
    #     last_update_status: Successful
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   response = client.get_function_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
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
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
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
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #     maximum_retry_attempts: 0,
    #     maximum_event_age_in_seconds: 3600,
    #     destination_config: {
    #       on_success: {
    #       },
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:failed-invocations"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier"
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
    #   <p/>
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

    # <p>Returns details about a Lambda function URL.</p>
    # @param [Hash, Types::GetFunctionUrlConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
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
    #     content: {
    #       location: "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH...",
    #       code_sha256: "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=",
    #       code_size: 169
    #     },
    #     layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer",
    #     layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1",
    #     description: "My Python layer",
    #     created_date: "2018-11-14T23:03:52.894+0000",
    #     version: 1,
    #     license_info: "MIT",
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ]
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
    #       location: "String",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "String",
    #       signing_job_arn: "String"
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
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
    #     content: {
    #       location: "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/blank-python-lib-e5212378-xmpl-44ee-8398-9d8ec5113949?versionId=WbZnvf...",
    #       code_sha256: "6x+xmpl/M3BnQUk7gS9sGmfeFsR/npojXoA3fZUv4eU=",
    #       code_size: 9529009
    #     },
    #     layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib",
    #     layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib:3",
    #     description: "Dependencies for the blank-python sample app.",
    #     created_date: "2020-03-31T00:35:18.949+0000",
    #     version: 3,
    #     compatible_runtimes: [
    #       python3.8
    #     ]
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
    #       location: "String",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "String",
    #       signing_job_arn: "String"
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
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
    #     qualifier: "Qualifier"
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
    #     requested_provisioned_concurrent_executions: 100,
    #     available_provisioned_concurrent_executions: 100,
    #     allocated_provisioned_concurrent_executions: 100,
    #     status: READY,
    #     last_modified: "2019-12-31T20:28:49+0000"
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
    #     requested_provisioned_concurrent_executions: 100,
    #     available_provisioned_concurrent_executions: 100,
    #     allocated_provisioned_concurrent_executions: 100,
    #     status: READY,
    #     last_modified: "2019-12-31T20:28:49+0000"
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

    # <p>Retrieves the runtime management configuration for a function's version. If the runtime update mode is <b>Manual</b>, this includes the ARN of the runtime version and the runtime update mode. If the runtime update mode is <b>Auto</b> or <b>Function update</b>, this includes the runtime update mode and <code>null</code> is returned for the ARN. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html">Runtime updates</a>.</p>
    # @param [Hash, Types::GetRuntimeManagementConfigRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the <code>$LATEST</code> version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   response = client.get_runtime_management_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"],
    #     runtime_version_arn: "RuntimeVersionArn",
    #     function_arn: "NameSpacedFunctionArn"
    #   }
    # @return [Types::GetRuntimeManagementConfigResponse]
    def get_runtime_management_config(params = {}, options = {})
      request = build_request(:get_runtime_management_config, params)
      request.send_request(options)
    end

    # <p>Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or asynchronously. By default, Lambda invokes your function synchronously (i.e. the<code>InvocationType</code> is <code>RequestResponse</code>). To invoke a function asynchronously, set <code>InvocationType</code> to <code>Event</code>. Lambda passes the <code>ClientContext</code> object to your function for synchronous invocations only.</p> <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html">synchronous invocation</a>, details about the function response, including errors, are included in the response body and headers. For either invocation type, you can find more information in the <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html">execution log</a> and <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html">trace</a>.</p> <p>When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type, client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an error, Lambda executes the function up to two more times. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html">Error handling and automatic retries in Lambda</a>.</p> <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous invocation</a>, Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple times, even if no error occurs. To retain events that were not processed, configure your function with a <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">dead-letter queue</a>.</p> <p>The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your function from executing, such as permissions errors, <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">quota</a> errors, or issues with your function's code and configuration. For example, Lambda returns <code>TooManyRequestsException</code> if running the function would cause you to exceed a concurrency limit at either the account level (<code>ConcurrentInvocationLimitExceeded</code>) or function level (<code>ReservedFunctionConcurrentInvocationLimitExceeded</code>).</p> <p>For functions with a long timeout, your client might disconnect during synchronous invocation while it waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long connections with timeout or keep-alive settings.</p> <p>This operation requires permission for the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a> action. For details on how to set up permissions for cross-account invocations, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke">Granting function access to other accounts</a>.</p>
    # @param [Hash, Types::InvocationRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function, version, or alias.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :invocation_type
    #   <p>Choose from the following options.</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API response includes the function response and additional data.</p> </li> <li> <p> <code>Event</code> – Invoke the function asynchronously. Send events that fail multiple times to the function's dead-letter queue (if one is configured). The API response only includes a status code.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the user or role has permission to invoke the function.</p> </li> </ul>
    # @option params [String] :log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    # @option params [String] :client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context object. Lambda passes the <code>ClientContext</code> object to your function for synchronous invocations only.</p>
    # @option params [String] :payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to invoke a published version of the function.</p>
    # @example To invoke a Lambda function
    #   # The following example invokes version 1 of a function named my-function with an empty event payload.
    #   params = {
    #     function_name: "my-function",
    #     payload: "{}",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.invoke(params, options)
    #   response.to_h #=>
    #   {
    #     status_code: 200,
    #     payload: "200 SUCCESS"
    #   }
    # @example To invoke a Lambda function asynchronously
    #   # The following example invokes version 1 of a function named my-function asynchronously.
    #   params = {
    #     function_name: "my-function",
    #     payload: "{}",
    #     invocation_type: Event,
    #     qualifier: "1"
    #   }
    #   options = {}
    #   response = client.invoke(params, options)
    #   response.to_h #=>
    #   {
    #     status_code: 202,
    #     payload: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "Event" # One of: ["Event", "RequestResponse", "DryRun"],
    #     log_type: "None" # One of: ["None", "Tail"],
    #     client_context: "String",
    #     payload: "data",
    #     qualifier: "Qualifier"
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
    #     executed_version: "Version"
    #   }
    # @return [Types::InvocationResponse]
    def invoke(params = {}, options = {})
      request = build_request(:invoke, params)
      request.send_request(options)
    end

    # <important> <p>For asynchronous function invocation, use <a>Invoke</a>.</p> </important> <p>Invokes a function asynchronously.</p> <note> <p>If you do use the InvokeAsync action, note that it doesn't support the use of X-Ray active tracing. Trace ID is not propagated to the function, even if X-Ray active tracing is turned on.</p> </note>
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

    # <p>Configure your Lambda functions to stream response payloads back to clients. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html">Configuring a Lambda function to stream responses</a>.</p> <p>This operation requires permission for the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a> action. For details on how to set up permissions for cross-account invocations, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke">Granting function access to other accounts</a>.</p>
    # @param [Hash, Types::InvokeWithResponseStreamRequest] params
    # @option params [String] :function_name
    #   <p>The name or ARN of the Lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> – <code>my-function</code>.</p> </li> <li> <p> <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p> </li> <li> <p> <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :invocation_type
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API operation response includes the function response and additional data.</p> </li> <li> <p> <code>DryRun</code> – Validate parameter values and verify that the IAM user or role has permission to invoke the function.</p> </li> </ul>
    # @option params [String] :log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    # @option params [String] :client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context object.</p>
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    # @option params [String] :payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p> <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also specify a file path. For example, <code>--payload file://payload.json</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "RequestResponse" # One of: ["RequestResponse", "DryRun"],
    #     log_type: "None" # One of: ["None", "Tail"],
    #     client_context: "String",
    #     qualifier: "Qualifier",
    #     payload: "data"
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

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">aliases</a> for a Lambda function.</p>
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
    #         revision_id: "a410117f-xmpl-494e-8035-7e204bb7933b",
    #         function_version: "2",
    #         name: "BLUE",
    #         description: "Production environment BLUE.",
    #         routing_config: {
    #           additional_version_weights: {
    #             "1" => 0.7
    #           }
    #         }
    #       },
    #       {
    #         alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:LIVE",
    #         revision_id: "21d40116-xmpl-40ba-9360-3ea284da1bb5",
    #         function_version: "1",
    #         name: "GREEN",
    #         description: "Production environment GREEN."
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     function_version: "Version",
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
    #         uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE",
    #         state_transition_reason: "USER_INITIATED",
    #         last_modified: Time.parse(1569284520.333),
    #         batch_size: 5,
    #         state: "Enabled",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         event_source_arn: "arn:aws:sqs:us-west-2:123456789012:mySQSqueue"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName",
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
    #         uuid: "String",
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #                 type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #                 type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #         scaling_config: {
    #           maximum_concurrency: 1
    #         },
    #         document_db_event_source_config: {
    #           database_name: "DatabaseName",
    #           collection_name: "CollectionName",
    #           full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         filter_criteria_error: {
    #           error_code: "FilterCriteriaErrorCode",
    #           message: "FilterCriteriaErrorMessage"
    #         },
    #         event_source_mapping_arn: "EventSourceMappingArn",
    #         metrics_config: {
    #           metrics: ["EventCount" # One of: ["EventCount"]]
    #         },
    #         provisioned_poller_config: {
    #           minimum_pollers: 1,
    #           maximum_pollers: 1
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
    #         last_modified: Time.parse(1577824406.719),
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN",
    #         maximum_retry_attempts: 2,
    #         maximum_event_age_in_seconds: 1800
    #       },
    #       {
    #         last_modified: Time.parse(1577824396.653),
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #         maximum_retry_attempts: 0,
    #         maximum_event_age_in_seconds: 3600
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
    #     function_name: "FunctionName", # required
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

    # <p>Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call.</p> <p>Set <code>FunctionVersion</code> to <code>ALL</code> to include all published versions of each function in addition to the unpublished version.</p> <note> <p>The <code>ListFunctions</code> operation returns a subset of the <a>FunctionConfiguration</a> fields. To get the additional fields (State, StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or version, use <a>GetFunction</a>.</p> </note>
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
    #     next_marker: "",
    #     functions: [
    #       {
    #         tracing_config: {
    #           mode: PassThrough
    #         },
    #         version: "$LATEST",
    #         code_sha256: "dBG9m8SGdmlEjw/JYXlhhvCrAv5TxvXsbL/RMr0fT/I=",
    #         function_name: "helloworld",
    #         memory_size: 128,
    #         revision_id: "1718e831-badf-4253-9518-d0644210af7b",
    #         code_size: 294,
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:helloworld",
    #         handler: "helloworld.handler",
    #         role: "arn:aws:iam::123456789012:role/service-role/MyTestFunction-role-zgur6bf4",
    #         timeout: 3,
    #         last_modified: "2019-09-23T18:32:33.857+0000",
    #         runtime: nodejs10.x,
    #         description: ""
    #       },
    #       {
    #         tracing_config: {
    #           mode: PassThrough
    #         },
    #         version: "$LATEST",
    #         code_sha256: "sU0cJ2/hOZevwV/lTxCuQqK3gDZP3i8gUoqUUVRmY6E=",
    #         function_name: "my-function",
    #         vpc_config: {
    #           subnet_ids: [
    #           ],
    #           vpc_id: "",
    #           security_group_ids: [
    #           ]
    #         },
    #         memory_size: 256,
    #         revision_id: "93017fc9-59cb-41dc-901b-4845ce4bf668",
    #         code_size: 266,
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         handler: "index.handler",
    #         role: "arn:aws:iam::123456789012:role/service-role/helloWorldPython-role-uy3l9qyq",
    #         timeout: 3,
    #         last_modified: "2019-10-01T16:47:28.490+0000",
    #         runtime: nodejs10.x,
    #         description: ""
    #       }
    #     ]
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
    #         runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #         state_reason: "StateReason",
    #         state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         last_update_status_reason: "LastUpdateStatusReason",
    #         last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #           }
    #         ],
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
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn",
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
    # @option params [String] :compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of versions to return.</p>
    # @option params [String] :compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
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
    #         layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:7",
    #         version: 7,
    #         description: "Dependencies for the blank-java sample app.",
    #         created_date: "2020-03-18T23:38:42.284+0000",
    #         compatible_runtimes: [
    #           java8
    #         ]
    #       },
    #       {
    #         layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:6",
    #         version: 6,
    #         description: "Dependencies for the blank-java sample app.",
    #         created_date: "2020-03-17T07:24:21.960+0000",
    #         compatible_runtimes: [
    #           java8
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compatible_runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     layer_name: "LayerName", # required
    #     marker: "String",
    #     max_items: 1,
    #     compatible_architecture: "x86_64" # One of: ["x86_64", "arm64"]
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
    #         compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #         license_info: "LicenseInfo",
    #         compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
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
    # @option params [String] :compatible_runtime
    #   <p>A runtime identifier.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels">Runtime use after deprecation</a>.</p> <p>For a list of all currently supported runtimes, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported">Supported runtimes</a>.</p>
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of layers to return.</p>
    # @option params [String] :compatible_architecture
    #   <p>The compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
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
    #         layer_name: "my-layer",
    #         layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer",
    #         latest_matching_version: {
    #           layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:2",
    #           version: 2,
    #           description: "My layer",
    #           created_date: "2018-11-15T00:37:46.592+0000",
    #           compatible_runtimes: [
    #             python3.6,
    #             python3.7
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compatible_runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     marker: "String",
    #     max_items: 1,
    #     compatible_architecture: "x86_64" # One of: ["x86_64", "arm64"]
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
    #           compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #           license_info: "LicenseInfo",
    #           compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
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
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN",
    #         requested_provisioned_concurrent_executions: 100,
    #         available_provisioned_concurrent_executions: 100,
    #         allocated_provisioned_concurrent_executions: 100,
    #         status: READY,
    #         last_modified: "2019-12-31T20:29:00+0000"
    #       },
    #       {
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #         requested_provisioned_concurrent_executions: 100,
    #         available_provisioned_concurrent_executions: 100,
    #         allocated_provisioned_concurrent_executions: 100,
    #         status: READY,
    #         last_modified: "2019-12-31T20:28:49+0000"
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
    #         function_name: "my-function",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         runtime: nodejs12.x,
    #         role: "arn:aws:iam::123456789012:role/lambda-role",
    #         handler: "index.handler",
    #         code_size: 5797206,
    #         description: "Process image objects from Amazon S3.",
    #         timeout: 15,
    #         memory_size: 256,
    #         last_modified: "2020-04-10T19:06:32.563+0000",
    #         code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #         version: "$LATEST",
    #         environment: {
    #           variables: {
    #             "PREFIX" => "inbound",
    #             "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #           }
    #         },
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #         tracing_config: {
    #           mode: Active
    #         },
    #         revision_id: "850ca006-2d98-4ff4-86db-8766e9d32fe9"
    #       },
    #       {
    #         function_name: "my-function",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         runtime: nodejs12.x,
    #         role: "arn:aws:iam::123456789012:role/lambda-role",
    #         handler: "index.handler",
    #         code_size: 5797206,
    #         description: "Process image objects from Amazon S3.",
    #         timeout: 5,
    #         memory_size: 256,
    #         last_modified: "2020-04-10T19:06:32.563+0000",
    #         code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #         version: "1",
    #         environment: {
    #           variables: {
    #             "PREFIX" => "inbound",
    #             "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #           }
    #         },
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #         tracing_config: {
    #           mode: Active
    #         },
    #         revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727"
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
    #         runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #         state_reason: "StateReason",
    #         state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         last_update_status_reason: "LastUpdateStatusReason",
    #         last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #           }
    #         ],
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
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn",
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
    # @option params [Array<String>] :compatible_runtimes
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p> <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime deprecation policy</a>.</p>
    # @option params [String] :license_info
    #   <p>The layer's software license. It can be any of the following:</p> <ul> <li> <p>An <a href="https://spdx.org/licenses/">SPDX license identifier</a>. For example, <code>MIT</code>.</p> </li> <li> <p>The URL of a license hosted on the internet. For example, <code>https://opensource.org/licenses/MIT</code>.</p> </li> <li> <p>The full text of the license.</p> </li> </ul>
    # @option params [Array<String>] :compatible_architectures
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
    # @example To create a Lambda layer version
    #   # The following example creates a new Python library layer version. The command retrieves the layer content a file named layer.zip in the specified S3 bucket.
    #   params = {
    #     layer_name: "my-layer",
    #     description: "My Python layer",
    #     content: {
    #       s3_bucket: "lambda-layers-us-west-2-123456789012",
    #       s3_key: "layer.zip"
    #     },
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ],
    #     license_info: "MIT"
    #   }
    #   options = {}
    #   response = client.publish_layer_version(params, options)
    #   response.to_h #=>
    #   {
    #     content: {
    #       location: "https://awslambda-us-west-2-layers.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH...",
    #       code_sha256: "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=",
    #       code_size: 169
    #     },
    #     layer_arn: "arn:aws:lambda:us-west-2:123456789012:layer:my-layer",
    #     layer_version_arn: "arn:aws:lambda:us-west-2:123456789012:layer:my-layer:1",
    #     description: "My Python layer",
    #     created_date: "2018-11-14T23:03:52.894+0000",
    #     version: 1,
    #     license_info: "MIT",
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     description: "Description",
    #     content: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       zip_file: "data"
    #     },
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #   }
    #   options = {}
    #   response = client.publish_layer_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: {
    #       location: "String",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "String",
    #       signing_job_arn: "String"
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
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
    # @example To publish a version of a Lambda function
    #   # This operation publishes a version of a Lambda function
    #   params = {
    #     function_name: "myFunction",
    #     code_sha256: "",
    #     description: ""
    #   }
    #   options = {}
    #   response = client.publish_version(params, options)
    #   response.to_h #=>
    #   {
    #     function_name: "my-function",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 5,
    #     memory_size: 256,
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     version: "1",
    #     environment: {
    #       variables: {
    #         "PREFIX" => "inbound",
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     state: Active,
    #     last_update_status: Successful
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     code_sha256: "String",
    #     description: "Description",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.publish_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
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
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
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
    #     function_name: "FunctionName", # required
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
    #     maximum_retry_attempts: 0,
    #     maximum_event_age_in_seconds: 3600
    #   }
    #   options = {}
    #   response = client.put_function_event_invoke_config(params, options)
    #   response.to_h #=>
    #   {
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:$LATEST",
    #     maximum_retry_attempts: 0,
    #     maximum_event_age_in_seconds: 3600,
    #     destination_config: {
    #       on_success: {
    #       },
    #       on_failure: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
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
    #     qualifier: "BLUE",
    #     provisioned_concurrent_executions: 100
    #   }
    #   options = {}
    #   response = client.put_provisioned_concurrency_config(params, options)
    #   response.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 100,
    #     allocated_provisioned_concurrent_executions: 0,
    #     status: IN_PROGRESS,
    #     last_modified: "2019-11-21T19:32:12+0000"
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
    #     available_provisioned_concurrent_executions: 1,
    #     allocated_provisioned_concurrent_executions: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #     status_reason: "String",
    #     last_modified: "Timestamp"
    #   }
    # @return [Types::PutProvisionedConcurrencyConfigResponse]
    def put_provisioned_concurrency_config(params = {}, options = {})
      request = build_request(:put_provisioned_concurrency_config, params)
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
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
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
    #     version_number: 1,
    #     statement_id: "xaccount"
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
    #     statement_id: "xaccount",
    #     qualifier: "PROD"
    #   }
    #   options = {}
    #   response = client.remove_permission(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     statement_id: "NamespacedStatementId", # required
    #     qualifier: "Qualifier",
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

    # <p>Updates the configuration of a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
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
    #     name: "BLUE",
    #     function_version: "2",
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
    #     function_version: "2",
    #     name: "BLUE",
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE",
    #     revision_id: "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93",
    #     description: "Production environment BLUE.",
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
    #     function_version: "Version",
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

    # <p>Updates an event source mapping. You can change the function that Lambda invokes, or pause invocation and resume later from the same location.</p> <p>For details about how to configure different event sources, see the following topics. </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html"> Amazon DocumentDB</a> </p> </li> </ul> <p>The following error handling options are available only for DynamoDB and Kinesis event sources:</p> <ul> <li> <p> <code>BisectBatchOnFunctionError</code> – If the function returns an error, split the batch in two and retry.</p> </li> <li> <p> <code>MaximumRecordAgeInSeconds</code> – Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p> </li> <li> <p> <code>MaximumRetryAttempts</code> – Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p> </li> <li> <p> <code>ParallelizationFactor</code> – Process multiple batches from each shard concurrently.</p> </li> </ul> <p>For stream sources (DynamoDB, Kinesis, Amazon MSK, and self-managed Apache Kafka), the following option is also available:</p> <ul> <li> <p> <code>OnFailure</code> – Send discarded records to an Amazon SQS queue, Amazon SNS topic, or Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations">Adding a destination</a>.</p> </li> </ul> <p>For information about which configuration parameters apply to each event source, see the following topics.</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params"> Amazon DynamoDB Streams</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params"> Amazon Kinesis</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params"> Amazon SQS</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params"> Amazon MQ and RabbitMQ</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms"> Amazon MSK</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms"> Apache Kafka</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration"> Amazon DocumentDB</a> </p> </li> </ul>
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
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function. You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p> <p>For Kinesis, DynamoDB, and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it. To restore the default batching window, you must create a new event source mapping.</p> <p>Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    # @option params [Types::DestinationConfig] :destination_config
    #   <p>(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Kafka only) A configuration object that specifies the destination of an event after Lambda processes it.</p>
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is infinite (-1).</p>
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry.</p>
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    # @option params [Integer] :parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    # @option params [Array<Types::SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    # @option params [Array<String>] :function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    # @option params [Types::ScalingConfig] :scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    # @option params [Types::AmazonManagedKafkaEventSourceConfig] :amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    # @option params [Types::SelfManagedKafkaEventSourceConfig] :self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    # @option params [Types::DocumentDBEventSourceConfig] :document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
    # @option params [String] :kms_key_arn
    #   <p> The ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics">filter criteria</a>. By default, Lambda does not encrypt your filter criteria object. Specify this property to encrypt data using your own customer managed key. </p>
    # @option params [Types::EventSourceMappingMetricsConfig] :metrics_config
    #   <p>The metrics configuration for your event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics">Event source mapping metrics</a>.</p>
    # @option params [Types::ProvisionedPollerConfig] :provisioned_poller_config
    #   <p>(Amazon MSK and self-managed Apache Kafka only) The provisioned mode configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">provisioned mode</a>.</p>
    # @example To update a Lambda function event source mapping
    #   # This operation updates a Lambda function event source mapping
    #   params = {
    #     uuid: "1234xCy789012",
    #     function_name: "myFunction",
    #     enabled: true,
    #     batch_size: 123
    #   }
    #   options = {}
    #   response = client.update_event_source_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     uuid: "1234xCy789012",
    #     batch_size: 123,
    #     event_source_arn: "arn:aws:s3:::examplebucket/*",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    #     last_modified: Time.parse("2016-11-21T19:49:20.006Z"),
    #     last_processing_result: "",
    #     state: "",
    #     state_transition_reason: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "String", # required
    #     function_name: "FunctionName",
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     maximum_batching_window_in_seconds: 1,
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
    #     parallelization_factor: 1,
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI",
    #       schema_registry_config: {
    #         schema_registry_uri: "SchemaRegistryUri",
    #         event_record_format: "JSON" # One of: ["JSON", "SOURCE"],
    #         access_configs: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uuid: "String",
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
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
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
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    # @return [Types::UpdateEventSourceMappingOutput]
    def update_event_source_mapping(params = {}, options = {})
      request = build_request(:update_event_source_mapping, params)
      request.send_request(options)
    end

    # <p>Updates a Lambda function's code. If code signing is enabled for the function, the code package must be signed by a trusted publisher. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">Configuring code signing for Lambda</a>.</p> <p>If the function's package type is <code>Image</code>, then you must specify the code package in <code>ImageUri</code> as the URI of a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a> in the Amazon ECR registry.</p> <p>If the function's package type is <code>Zip</code>, then you must specify the deployment package as a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip">.zip file archive</a>. Enter the Amazon S3 bucket and key of the code .zip file location. You can also provide the function code inline using the <code>ZipFile</code> field.</p> <p>The code in the deployment package must be compatible with the target instruction set architecture of the function (<code>x86-64</code> or <code>arm64</code>).</p> <p>The function's code is locked when you publish a version. You can't modify the code of a published version, only the unpublished version.</p> <note> <p>For a function defined as a container image, Lambda resolves the image tag to an image digest. In Amazon ECR, if you update the image tag to a new image, Lambda does not automatically update the function.</p> </note>
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
    # @option params [String] :image_uri
    #   <p>URI of a container image in the Amazon ECR registry. Do not use for a function defined with a .zip file archive.</p>
    # @option params [Boolean] :publish
    #   <p>Set to true to publish a new version of the function after updating the code. This has the same effect as calling <a>PublishVersion</a> separately.</p>
    # @option params [Boolean] :dry_run
    #   <p>Set to true to validate the request parameters and access permissions without modifying the function code.</p>
    # @option params [String] :revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.</p>
    # @option params [Array<String>] :architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is <code>x86_64</code>.</p>
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
    #     tracing_config: {
    #       mode: PassThrough
    #     },
    #     code_sha256: "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=",
    #     function_name: "my-function",
    #     code_size: 308,
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     memory_size: 128,
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     version: "$LATEST",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     timeout: 3,
    #     last_modified: "2019-08-14T22:26:11.234+0000",
    #     handler: "index.handler",
    #     runtime: nodejs12.x,
    #     description: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     zip_file: "data",
    #     s3_bucket: "S3Bucket",
    #     s3_key: "S3Key",
    #     s3_object_version: "S3ObjectVersion",
    #     image_uri: "String",
    #     publish: false,
    #     dry_run: false,
    #     revision_id: "String",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     source_kms_key_arn: "KMSKeyArn"
    #   }
    #   options = {}
    #   response = client.update_function_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
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
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
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
    #     }
    #   }
    # @return [Types::UpdateFunctionCodeOutput]
    def update_function_code(params = {}, options = {})
      request = build_request(:update_function_code, params)
      request.send_request(options)
    end

    # <p>Modify the version-specific settings of a Lambda function.</p> <p>When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The <code>LastUpdateStatus</code>, <code>LastUpdateStatusReason</code>, and <code>LastUpdateStatusReasonCode</code> fields in the response from <a>GetFunctionConfiguration</a> indicate when the update is complete and the function is processing events with the new configuration. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Lambda function states</a>.</p> <p>These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version.</p> <p>To configure function concurrency, use <a>PutFunctionConcurrency</a>. To grant invoke permissions to an Amazon Web Services account or Amazon Web Services service, use <a>AddPermission</a>.</p>
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
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
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
    #   <p>Connection settings for an Amazon EFS file system.</p>
    # @option params [Types::ImageConfig] :image_config
    #   <p> <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">Container image configuration values</a> that override the values in the container image Docker file.</p>
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
    # @option params [Types::SnapStart] :snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>The function's Amazon CloudWatch Logs configuration settings.</p>
    # @example To update a Lambda function's configuration
    #   # The following example modifies the memory size to be 256 MB for the unpublished ($LATEST) version of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     memory_size: 256
    #   }
    #   options = {}
    #   response = client.update_function_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     tracing_config: {
    #       mode: PassThrough
    #     },
    #     code_sha256: "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=",
    #     function_name: "my-function",
    #     code_size: 308,
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     memory_size: 256,
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     version: "$LATEST",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     timeout: 3,
    #     last_modified: "2019-08-14T22:26:11.234+0000",
    #     handler: "index.handler",
    #     runtime: nodejs12.x,
    #     description: ""
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
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #     }
    #   }
    #   options = {}
    #   response = client.update_function_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
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
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
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
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
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
    #     function_name: "my-function",
    #     destination_config: {
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:destination"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_function_event_invoke_config(params, options)
    #   response.to_h #=>
    #   {
    #     last_modified: Time.parse(1573687896.493),
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:$LATEST",
    #     maximum_retry_attempts: 0,
    #     maximum_event_age_in_seconds: 3600,
    #     destination_config: {
    #       on_success: {
    #       },
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:destination"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
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
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    # @option params [Types::Cors] :cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings for your function URL.</p>
    # @option params [String] :invoke_mode
    #   <p>Use one of the following options:</p> <ul> <li> <p> <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results are available when the payload is complete. The maximum payload size is 6 MB.</p> </li> <li> <p> <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 200 MB.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
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
    end
  end
end
