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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:sagemakerruntime)

module Aws::SageMakerRuntime
  # An API client for Aws::SageMakerRuntime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonSageMakerRuntime
    @identifier = :sagemakerruntime

    add_plugin(::Aws::SageMakerRuntime::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SageMakerRuntime::EndpointProvider)
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

    # <p>After you deploy a model into production using Amazon SageMaker AI hosting services,
    #             your client applications use this API to get inferences from the model hosted at the
    #             specified endpoint. </p>
    #          <p>For an overview of Amazon SageMaker AI, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html">How It Works</a>. </p>
    #          <p>Amazon SageMaker AI strips all POST headers except those supported by the API. Amazon SageMaker AI might add
    #     additional headers. You should not rely on the behavior of headers outside those
    #     enumerated in the request syntax. </p>
    #          <p>Calls to <code>InvokeEndpoint</code> are authenticated by using Amazon Web Services
    #             Signature Version 4. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating
    #                 Requests (Amazon Web Services Signature Version 4)</a> in the <i>Amazon S3 API Reference</i>.</p>
    #          <p>A customer's model containers must respond to requests within 60 seconds. The model
    #             itself can have a maximum processing time of 60 seconds before responding to
    #             invocations. If your model is going to take 50-60 seconds of processing time, the SDK
    #             socket timeout should be set to be 70 seconds.</p>
    #          <note>
    #             <p>Endpoints are scoped to an individual account, and are not public. The URL does
    #                 not contain the account ID, but Amazon SageMaker AI determines the account ID from
    #                 the authentication token that is supplied by the caller.</p>
    #          </note>
    # @param [Hash, Types::InvokeEndpointInput] params
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #       <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API.</p>
    # @option params [String] :body
    #   <p>Provides input data, in the format specified in the <code>ContentType</code>
    #       request header. Amazon SageMaker AI passes all of the data in the body to the model. </p>
    #            <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #           Formats-Inference</a>.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference response from the model container.</p>
    # @option params [String] :custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #           hosted at an Amazon SageMaker AI endpoint. The information is an opaque value that is forwarded
    #           verbatim. You could use this value, for example, to provide an ID that you can use to
    #           track a request or to provide other metadata that a service endpoint was programmed to
    #           process. The value must consist of no more than 1024 visible US-ASCII characters as
    #           specified in <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
    #           (HTTP/1.1). </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function. </p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker AI
    #           Python SDK. </p>
    # @option params [String] :target_model
    #   <p>The model to request for inference when invoking a multi-model endpoint.</p>
    # @option params [String] :target_variant
    #   <p>Specify the production variant to send the inference request to when invoking an
    #           endpoint that is running two or more variants. Note that this parameter overrides the
    #           default behavior for the endpoint, which is to distribute the invocation traffic based
    #           on the variant weights.</p>
    #            <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    #               production</a>
    #            </p>
    # @option params [String] :target_container_hostname
    #   <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    #           this parameter specifies the host name of the container to invoke.</p>
    # @option params [String] :inference_id
    #   <p>If you provide a value, it is added to the captured data when you enable data capture
    #               on the endpoint. For information about data capture, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
    #               Data</a>.</p>
    # @option params [String] :enable_explanations
    #   <p>An optional JMESPath expression used to override the <code>EnableExplanations</code>
    #               parameter of the <code>ClarifyExplainerConfig</code> API. See the <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html#clarify-online-explainability-create-endpoint-enable">EnableExplanations</a> section in the developer guide for more information.
    #           </p>
    # @option params [String] :inference_component_name
    #   <p>If the endpoint hosts one or more inference components, this parameter specifies the
    #               name of inference component to invoke.</p>
    # @option params [String] :session_id
    #   <p>Creates a stateful session or identifies an existing one. You can do one of the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>Create a stateful session by specifying the value
    #                       <code>NEW_SESSION</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Send your request to an existing stateful session by specifying the ID of that
    #                       session.</p>
    #               </li>
    #            </ul>
    #            <p>With a stateful session, you can send multiple requests to a stateful model. When you
    #               create a session with a stateful model, the model must create the session ID and set the
    #               expiration time. The model must also provide that information in the response to your
    #               request. You can get the ID and timestamp from the <code>NewSessionId</code> response
    #               parameter. For any subsequent request where you specify that session ID, SageMaker AI routes the request to the same instance that supports the session.</p>
    # @option params [String] :prefix_aware_id
    #   <p>An optional, stable identifier that serves as a routing hint for prefix-aware routing.
    #           The service routes requests with the same prefix and the same identifier to the same
    #           instance. If requests from different applications might have the same prompt prefix, set
    #           a different identifier for each application to differentiate their routing
    #           decisions.</p>
    #            <p>Applies only to endpoints configured with a
    #           <code>RoutingStrategy</code> of <code>PREFIX_AWARE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "EndpointName", # required
    #     body: "data", # required
    #     content_type: "Header",
    #     accept: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     target_model: "TargetModelHeader",
    #     target_variant: "TargetVariantHeader",
    #     target_container_hostname: "TargetContainerHostnameHeader",
    #     inference_id: "InferenceId",
    #     enable_explanations: "EnableExplanationsHeader",
    #     inference_component_name: "InferenceComponentHeader",
    #     session_id: "SessionIdOrNewSessionConstantHeader",
    #     prefix_aware_id: "PrefixAwareIdHeader"
    #   }
    #   options = {}
    #   response = client.invoke_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: "data", # required
    #     content_type: "Header",
    #     invoked_production_variant: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     new_session_id: "NewSessionResponseHeader",
    #     closed_session_id: "SessionIdHeader"
    #   }
    # @return [Types::InvokeEndpointOutput]
    def invoke_endpoint(params = {}, options = {})
      request = build_request(:invoke_endpoint, params)
      request.send_request(options)
    end

    # <p>After you deploy a model into production using Amazon SageMaker AI hosting services,
    #             your client applications use this API to get inferences from the model hosted at the
    #             specified endpoint in an asynchronous manner.</p>
    #          <p>Inference requests sent to this API are enqueued for asynchronous processing. The
    #             processing of the inference request may or may not complete before you receive a
    #             response from this API. The response from this API will not contain the result of the
    #             inference request but contain information about where you can locate it.</p>
    #          <p>Amazon SageMaker AI strips all POST headers except those supported by the API. Amazon SageMaker AI might add
    #     additional headers. You should not rely on the behavior of headers outside those
    #     enumerated in the request syntax. </p>
    #          <p>Calls to <code>InvokeEndpointAsync</code> are authenticated by using Amazon Web Services Signature Version 4. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating
    #                 Requests (Amazon Web Services Signature Version 4)</a> in the <i>Amazon S3 API Reference</i>.</p>
    # @param [Hash, Types::InvokeEndpointAsyncInput] params
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #       <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference response from the model container.</p>
    # @option params [String] :custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #           hosted at an Amazon SageMaker AI endpoint. The information is an opaque value that is forwarded
    #           verbatim. You could use this value, for example, to provide an ID that you can use to
    #           track a request or to provide other metadata that a service endpoint was programmed to
    #           process. The value must consist of no more than 1024 visible US-ASCII characters as
    #           specified in <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
    #           (HTTP/1.1). </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function. </p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker AI
    #           Python SDK. </p>
    # @option params [String] :inference_id
    #   <p>The identifier for the inference request. Amazon SageMaker AI will generate an
    #               identifier for you if none is specified. </p>
    # @option params [String] :input_location
    #   <p>The Amazon S3 URI where the inference request payload is stored.</p>
    # @option params [String] :s3_output_path_extension
    #   <p>The path extension that is appended to the Amazon S3 output path where the inference
    #               response payload is stored.</p>
    # @option params [String] :filename
    #   <p>The filename for the inference response payload stored in Amazon S3. If not
    #               specified, Amazon SageMaker AI generates a filename based on the inference ID.</p>
    # @option params [Integer] :request_ttl_seconds
    #   <p>Maximum age in seconds a request can be in the queue before it is marked as expired.
    #               The default is 6 hours, or 21,600 seconds.</p>
    # @option params [Integer] :invocation_timeout_seconds
    #   <p>Maximum amount of time in seconds a request can be processed before it is marked as
    #               expired. The default is 15 minutes, or 900 seconds.</p>
    # @option params [String] :body
    #   <p>Provides inline input data for the inference request, in the format specified in the
    #                   <code>ContentType</code> request header. Use this parameter to send the request
    #               payload directly in the API call instead of uploading it to Amazon S3 and
    #               referencing it with <code>InputLocation</code>. The inline payload can be up to 128,000
    #               bytes.</p>
    #            <p>
    #               <code>Body</code> and <code>InputLocation</code> are mutually exclusive. Provide
    #               exactly one of them.</p>
    #            <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #               Formats-Inference</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "EndpointName", # required
    #     content_type: "Header",
    #     accept: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     inference_id: "InferenceId",
    #     input_location: "InputLocationHeader",
    #     s3_output_path_extension: "S3OutputPathExtensionHeader",
    #     filename: "FilenameHeader",
    #     request_ttl_seconds: 1,
    #     invocation_timeout_seconds: 1,
    #     body: "data"
    #   }
    #   options = {}
    #   response = client.invoke_endpoint_async(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inference_id: "Header",
    #     output_location: "Header",
    #     failure_location: "Header"
    #   }
    # @return [Types::InvokeEndpointAsyncOutput]
    def invoke_endpoint_async(params = {}, options = {})
      request = build_request(:invoke_endpoint_async, params)
      request.send_request(options)
    end

    # <p>Invokes a model at the specified endpoint to return the inference response as a
    #             stream. The inference stream provides the response payload incrementally as a series of
    #             parts. Before you can get an inference stream, you must have access to a model that's
    #             deployed using Amazon SageMaker AI hosting services, and the container for that model
    #             must support inference streaming.</p>
    #          <p>For more information that can help you use this API, see the following sections in the
    #                     <i>Amazon SageMaker AI Developer Guide</i>:</p>
    #          <ul>
    #             <li>
    #                <p>For information about how to add streaming support to a model, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-code-how-containe-serves-requests">How Containers Serve Requests</a>.</p>
    #             </li>
    #             <li>
    #                <p>For information about how to process the streaming response, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-test-endpoints.html">Invoke real-time endpoints</a>.</p>
    #             </li>
    #          </ul>
    #          <p>Before you can use this operation, your IAM permissions must allow the
    #                 <code>sagemaker:InvokeEndpoint</code> action. For more information about Amazon SageMaker AI actions for IAM policies, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsagemaker.html">Actions, resources, and condition keys for Amazon SageMaker AI</a> in the <i>IAM Service Authorization
    #                 Reference</i>.</p>
    #          <p>Amazon SageMaker AI strips all POST headers except those supported by the API. Amazon SageMaker AI might add
    #     additional headers. You should not rely on the behavior of headers outside those
    #     enumerated in the request syntax. </p>
    #          <p>Calls to <code>InvokeEndpointWithResponseStream</code> are authenticated by using
    #                 Amazon Web Services Signature Version 4. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests (Amazon Web Services Signature Version 4)</a> in the
    #                     <i>Amazon S3 API Reference</i>.</p>
    # @param [Hash, Types::InvokeEndpointWithResponseStreamInput] params
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #       <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API.</p>
    # @option params [String] :body
    #   <p>Provides input data, in the format specified in the <code>ContentType</code>
    #       request header. Amazon SageMaker AI passes all of the data in the body to the model. </p>
    #            <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #           Formats-Inference</a>.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference response from the model container.</p>
    # @option params [String] :custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #           hosted at an Amazon SageMaker AI endpoint. The information is an opaque value that is forwarded
    #           verbatim. You could use this value, for example, to provide an ID that you can use to
    #           track a request or to provide other metadata that a service endpoint was programmed to
    #           process. The value must consist of no more than 1024 visible US-ASCII characters as
    #           specified in <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
    #           (HTTP/1.1). </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function. </p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker AI
    #           Python SDK. </p>
    # @option params [String] :target_variant
    #   <p>Specify the production variant to send the inference request to when invoking an
    #           endpoint that is running two or more variants. Note that this parameter overrides the
    #           default behavior for the endpoint, which is to distribute the invocation traffic based
    #           on the variant weights.</p>
    #            <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    #               production</a>
    #            </p>
    # @option params [String] :target_container_hostname
    #   <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    #           this parameter specifies the host name of the container to invoke.</p>
    # @option params [String] :inference_id
    #   <p>An identifier that you assign to your request.</p>
    # @option params [String] :inference_component_name
    #   <p>If the endpoint hosts one or more inference components, this parameter specifies the
    #               name of inference component to invoke for a streaming response.</p>
    # @option params [String] :session_id
    #   <p>The ID of a stateful session to handle your request.</p>
    #            <p>You can't create a stateful session by using the
    #                   <code>InvokeEndpointWithResponseStream</code> action. Instead, you can create one by
    #               using the <code>
    #                  <a>InvokeEndpoint</a>
    #               </code> action. In your request, you
    #               specify <code>NEW_SESSION</code> for the <code>SessionId</code> request parameter. The
    #               response to that request provides the session ID for the <code>NewSessionId</code>
    #               response parameter.</p>
    # @option params [String] :prefix_aware_id
    #   <p>An optional, stable identifier that serves as a routing hint for prefix-aware routing.
    #           The service routes requests with the same prefix and the same identifier to the same
    #           instance. If requests from different applications might have the same prompt prefix, set
    #           a different identifier for each application to differentiate their routing
    #           decisions.</p>
    #            <p>Applies only to endpoints configured with a
    #           <code>RoutingStrategy</code> of <code>PREFIX_AWARE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "EndpointName", # required
    #     body: "data", # required
    #     content_type: "Header",
    #     accept: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     target_variant: "TargetVariantHeader",
    #     target_container_hostname: "TargetContainerHostnameHeader",
    #     inference_id: "InferenceId",
    #     inference_component_name: "InferenceComponentHeader",
    #     session_id: "SessionIdHeader",
    #     prefix_aware_id: "PrefixAwareIdHeader"
    #   }
    #   options = {}
    #   response = client.invoke_endpoint_with_response_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: { # required
    #       # One of:
    #       payload_part: {
    #         bytes: "data"
    #       },
    #       model_stream_error: {
    #         message: "Message",
    #         error_code: "ErrorCode"
    #       },
    #       internal_stream_failure: {
    #         message: "Message"
    #       }
    #     },
    #     content_type: "Header",
    #     invoked_production_variant: "Header",
    #     custom_attributes: "CustomAttributesHeader"
    #   }
    # @return [Types::InvokeEndpointWithResponseStreamOutput]
    def invoke_endpoint_with_response_stream(params = {}, options = {})
      request = build_request(:invoke_endpoint_with_response_stream, params)
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
      context[:gem_name] = 'aws-sdk-sagemakerruntime'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
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
