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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cloudcontrol)

module Aws::CloudControl
  # An API client for Aws::CloudControl.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CloudApiService
    @identifier = :cloudcontrol

    add_plugin(::Aws::CloudControl::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudControl::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Cancels the specified resource operation request. For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel">Canceling resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>Only resource operations requests with a status of <code>PENDING</code> or
    #         <code>IN_PROGRESS</code> can be canceled.</p>
    # @param [Hash, Types::CancelResourceRequestOperationInput] params
    # @option params [String] :request_token
    #   <p>The <code>RequestToken</code> of the <code>ProgressEvent</code> object returned by the
    #         resource operation request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_token: "RequestToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_resource_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_event: {
    #       type_name: "TypeName",
    #       identifier: "Identifier",
    #       request_token: "RequestToken",
    #       hooks_request_token: "RequestToken",
    #       operation: "Operation",
    #       operation_status: "OperationStatus",
    #       event_time: Time.now,
    #       resource_model: "Properties",
    #       status_message: "StatusMessage",
    #       error_code: "HandlerErrorCode",
    #       retry_after: Time.now
    #     }
    #   }
    # @return [Types::CancelResourceRequestOperationOutput]
    def cancel_resource_request(params = {}, options = {})
      request = build_request(:cancel_resource_request, params)
      request.send_request(options)
    end

    # <p>Creates the specified resource. For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html">Creating a
    #         resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>After you have initiated a resource creation request, you can monitor the progress of your
    #       request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #         <code>ProgressEvent</code> type returned by <code>CreateResource</code>.</p>
    # @param [Hash, Types::CreateResourceOperationInput] params
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a
    #                                        best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can
    #                                        accurately distinguish between request retries and new resource requests. You
    #                                        might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource
    #                                        request with the same client token is treated as a new request.</p>
    #            <p>If you
    #                                        do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
    #                                        resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User
    #                                        Guide</i>.</p>
    # @option params [String] :desired_state
    #   <p>Structured data format representing the desired state of the resource, consisting of that
    #         resource's properties and their desired values.</p>
    #            <note>
    #               <p>Cloud Control API currently supports JSON as a structured data format.</p>
    #            </note>
    #            <p>Specify the desired state as one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>A JSON blob</p>
    #               </li>
    #               <li>
    #                  <p>A local path containing the desired state in JSON data format</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate">Composing the desired state of the resource</a> in the <i>Amazon Web Services Cloud Control API User
    #           Guide</i>.</p>
    #            <p>For more information about the properties of a specific resource, refer to the related
    #         topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     desired_state: "Properties", # required
    #   }
    #   options = {}
    #   response = client.create_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_event: {
    #       type_name: "TypeName",
    #       identifier: "Identifier",
    #       request_token: "RequestToken",
    #       hooks_request_token: "RequestToken",
    #       operation: "Operation",
    #       operation_status: "OperationStatus",
    #       event_time: Time.now,
    #       resource_model: "Properties",
    #       status_message: "StatusMessage",
    #       error_code: "HandlerErrorCode",
    #       retry_after: Time.now
    #     }
    #   }
    # @return [Types::CreateResourceOperationOutput]
    def create_resource(params = {}, options = {})
      request = build_request(:create_resource, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource. For details, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html">Deleting a
    #         resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>After you have initiated a resource deletion request, you can monitor the progress of your
    #       request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #         <code>ProgressEvent</code> returned by <code>DeleteResource</code>.</p>
    # @param [Hash, Types::DeleteResourceOperationInput] params
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a
    #                                        best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can
    #                                        accurately distinguish between request retries and new resource requests. You
    #                                        might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource
    #                                        request with the same client token is treated as a new request.</p>
    #            <p>If you
    #                                        do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
    #                                        resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User
    #                                        Guide</i>.</p>
    # @option params [String] :identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier
    #                                               defined for the resource type in its resource schema. You can only specify
    #                                               one identifier. Primary identifiers can be specified as a string or JSON;
    #                                               secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of
    #                                               multiple resource properties strung together), to specify the primary
    #                                               identifier as a string, list the property values <i>in the order
    #                                               they are specified</i> in the primary identifier definition,
    #                                               separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #                                               resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_event: {
    #       type_name: "TypeName",
    #       identifier: "Identifier",
    #       request_token: "RequestToken",
    #       hooks_request_token: "RequestToken",
    #       operation: "Operation",
    #       operation_status: "OperationStatus",
    #       event_time: Time.now,
    #       resource_model: "Properties",
    #       status_message: "StatusMessage",
    #       error_code: "HandlerErrorCode",
    #       retry_after: Time.now
    #     }
    #   }
    # @return [Types::DeleteResourceOperationOutput]
    def delete_resource(params = {}, options = {})
      request = build_request(:delete_resource, params)
      request.send_request(options)
    end

    # <p>Returns information about the current state of the specified resource. For details, see
    #         <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html">Reading a resource's current state</a>.</p>
    #          <p>You can use this action to return information about an existing resource in your account
    #       and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.</p>
    # @param [Hash, Types::GetResourceOperationInput] params
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @option params [String] :identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier
    #                                               defined for the resource type in its resource schema. You can only specify
    #                                               one identifier. Primary identifiers can be specified as a string or JSON;
    #                                               secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of
    #                                               multiple resource properties strung together), to specify the primary
    #                                               identifier as a string, list the property values <i>in the order
    #                                               they are specified</i> in the primary identifier definition,
    #                                               separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #                                               resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_name: "TypeName",
    #     resource_description: {
    #       identifier: "Identifier",
    #       properties: "Properties"
    #     }
    #   }
    # @return [Types::GetResourceOperationOutput]
    def get_resource(params = {}, options = {})
      request = build_request(:get_resource, params)
      request.send_request(options)
    end

    # <p>Returns the current status of a resource operation request. For more information, see
    #         <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track">Tracking the progress of resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @param [Hash, Types::GetResourceRequestStatusOperationInput] params
    # @option params [String] :request_token
    #   <p>A unique token used to track the progress of the resource operation request.</p>
    #            <p>Request tokens are included in the <code>ProgressEvent</code> type returned by a resource
    #         operation request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_token: "RequestToken", # required
    #   }
    #   options = {}
    #   response = client.get_resource_request_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_event: {
    #       type_name: "TypeName",
    #       identifier: "Identifier",
    #       request_token: "RequestToken",
    #       hooks_request_token: "RequestToken",
    #       operation: "Operation",
    #       operation_status: "OperationStatus",
    #       event_time: Time.now,
    #       resource_model: "Properties",
    #       status_message: "StatusMessage",
    #       error_code: "HandlerErrorCode",
    #       retry_after: Time.now
    #     },
    #     hooks_progress_event: [
    #       {
    #         hook_type_name: "TypeName",
    #         hook_type_version_id: "TypeVersionId",
    #         hook_type_arn: "HookTypeArn",
    #         invocation_point: "HookInvocationPoint",
    #         hook_status: "HookStatus",
    #         hook_event_time: Time.now,
    #         hook_status_message: "StatusMessage",
    #         failure_mode: "HookFailureMode"
    #       }
    #     ]
    #   }
    # @return [Types::GetResourceRequestStatusOperationOutput]
    def get_resource_request_status(params = {}, options = {})
      request = build_request(:get_resource_request_status, params)
      request.send_request(options)
    end

    # <p>Returns existing resource operation requests. This includes requests of all status types.
    #       For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list">Listing active resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <note>
    #             <p>Resource operation requests expire after 7 days.</p>
    #          </note>
    # @param [Hash, Types::ListResourceRequestsOperationInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #            <p>The default is <code>20</code>.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results,
    #                                      the response object's <code>NextToken</code> parameter value is set to a token.
    #                                      To retrieve the next set of results, call this action again and assign that token to
    #                                      the request object's <code>NextToken</code> parameter. If there are no remaining
    #                                      results, the previous response object's <code>NextToken</code> parameter is set to
    #                                      <code>null</code>.</p>
    # @option params [Types::ResourceRequestStatusFilter] :resource_request_status_filter
    #   <p>The filter criteria to apply to the requests returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_request_status_filter: {
    #       operations: ["Operation"],
    #       operation_statuses: ["OperationStatus"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_resource_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_request_status_summaries: [
    #       {
    #         type_name: "TypeName",
    #         identifier: "Identifier",
    #         request_token: "RequestToken",
    #         hooks_request_token: "RequestToken",
    #         operation: "Operation",
    #         operation_status: "OperationStatus",
    #         event_time: Time.now,
    #         resource_model: "Properties",
    #         status_message: "StatusMessage",
    #         error_code: "HandlerErrorCode",
    #         retry_after: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceRequestsOutput]
    def list_resource_requests(params = {}, options = {})
      request = build_request(:list_resource_requests, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified resources. For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html">Discovering resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>You can use this action to return information about existing resources in your account and
    #       Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.</p>
    # @param [Hash, Types::ListResourcesOperationInput] params
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results,
    #                                      the response object's <code>NextToken</code> parameter value is set to a token.
    #                                      To retrieve the next set of results, call this action again and assign that token to
    #                                      the request object's <code>NextToken</code> parameter. If there are no remaining
    #                                      results, the previous response object's <code>NextToken</code> parameter is set to
    #                                      <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Reserved.</p>
    # @option params [String] :resource_model
    #   <p>The resource model to use to select the resources to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     next_token: "HandlerNextToken",
    #     max_results: 1,
    #     resource_model: "Properties"
    #   }
    #   options = {}
    #   response = client.list_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_name: "TypeName",
    #     resource_descriptions: [
    #       {
    #         identifier: "Identifier",
    #         properties: "Properties"
    #       }
    #     ],
    #     next_token: "HandlerNextToken"
    #   }
    # @return [Types::ListResourcesOutput]
    def list_resources(params = {}, options = {})
      request = build_request(:list_resources, params)
      request.send_request(options)
    end

    # <p>Updates the specified property values in the resource.</p>
    #          <p>You specify your resource property updates as a list of patch operations contained in a
    #       JSON patch document that adheres to the <a href="https://datatracker.ietf.org/doc/html/rfc6902">
    #                <i>RFC 6902 - JavaScript Object
    #           Notation (JSON) Patch</i>
    #             </a> standard.</p>
    #          <p>For details on how Cloud Control API performs resource update operations, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html">Updating a resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>After you have initiated a resource update request, you can monitor the progress of your
    #       request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #         <code>ProgressEvent</code> returned by <code>UpdateResource</code>.</p>
    #          <p>For more information about the properties of a specific resource, refer to the related
    #       topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    # @param [Hash, Types::UpdateResourceOperationInput] params
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a
    #                                        best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can
    #                                        accurately distinguish between request retries and new resource requests. You
    #                                        might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource
    #                                        request with the same client token is treated as a new request.</p>
    #            <p>If you
    #                                        do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
    #                                        resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User
    #                                        Guide</i>.</p>
    # @option params [String] :identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier
    #                                               defined for the resource type in its resource schema. You can only specify
    #                                               one identifier. Primary identifiers can be specified as a string or JSON;
    #                                               secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of
    #                                               multiple resource properties strung together), to specify the primary
    #                                               identifier as a string, list the property values <i>in the order
    #                                               they are specified</i> in the primary identifier definition,
    #                                               separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #                                               resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @option params [String] :patch_document
    #   <p>A JavaScript Object Notation (JSON) document listing the patch operations that represent
    #         the updates to apply to the current resource properties. For details, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html#resource-operations-update-patch">Composing the patch document</a> in the <i>Amazon Web Services Cloud Control API User
    #         Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "TypeName", # required
    #     type_version_id: "TypeVersionId",
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     identifier: "Identifier", # required
    #     patch_document: "PatchDocument", # required
    #   }
    #   options = {}
    #   response = client.update_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_event: {
    #       type_name: "TypeName",
    #       identifier: "Identifier",
    #       request_token: "RequestToken",
    #       hooks_request_token: "RequestToken",
    #       operation: "Operation",
    #       operation_status: "OperationStatus",
    #       event_time: Time.now,
    #       resource_model: "Properties",
    #       status_message: "StatusMessage",
    #       error_code: "HandlerErrorCode",
    #       retry_after: Time.now
    #     }
    #   }
    # @return [Types::UpdateResourceOperationOutput]
    def update_resource(params = {}, options = {})
      request = build_request(:update_resource, params)
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
      context[:gem_name] = 'aws-sdk-cloudcontrol'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        resource_request_success: Waiters::ResourceRequestSuccess
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
