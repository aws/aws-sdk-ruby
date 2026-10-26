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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:imagebuilder)

module Aws::Imagebuilder
  # An API client for Aws::Imagebuilder.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Imagebuilder
    @identifier = :imagebuilder

    add_plugin(::Aws::Imagebuilder::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Imagebuilder::EndpointProvider)
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

    # <p>Cancels the creation of an image. This operation can only be used on
    # 			images in a non-terminal state. Cancellation is asynchronous: the request
    # 			returns immediately, then Image Builder stops the running build and moves the image
    # 			to the <code>CANCELLED</code> state. Output resources that the build already
    # 			created, such as AMIs and snapshots, aren't removed.</p>
    # @param [Hash, Types::CancelImageCreationRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to cancel creation
    #   			for.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Cancel an image build
    #   # The following example cancels a build that is in progress for the specified image build version.
    #   params = {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE77777"
    #   }
    #   options = {}
    #   response = client.cancel_image_creation(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "fead325f-72d9-42b5-b2ed-c5294984c6a9",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE77777",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_image_creation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::CancelImageCreationResponse]
    def cancel_image_creation(params = {}, options = {})
      request = build_request(:cancel_image_creation, params)
      request.send_request(options)
    end

    # <p>Cancels a lifecycle execution – a single run of lifecycle actions that a
    # 			lifecycle policy or a <a>StartResourceStateUpdate</a> request
    # 			started. You can only cancel an execution that hasn't reached a
    # 			terminal state. Cancellation is asynchronous and doesn't undo
    # 			completed lifecycle actions.</p>
    # @param [Hash, Types::CancelLifecycleExecutionRequest] params
    # @option params [String] :lifecycle_execution_id
    #   <p>Identifies the specific runtime instance of the image lifecycle to cancel.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Cancel a lifecycle execution
    #   # The following example cancels the scheduled resource state update associated with the specified lifecycle execution ID before it runs.
    #   params = {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE97531"
    #   }
    #   options = {}
    #   response = client.cancel_lifecycle_execution(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_execution_id: "LifecycleExecutionId", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_lifecycle_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_execution_id: "LifecycleExecutionId"
    #   }
    # @return [Types::CancelLifecycleExecutionResponse]
    def cancel_lifecycle_execution(params = {}, options = {})
      request = build_request(:cancel_lifecycle_execution, params)
      request.send_request(options)
    end

    # <p>Creates a new component that can be used to build, validate, test, and assess your
    # 			image. The component is based on a YAML document that you specify using exactly one of
    # 			the following methods:</p>
    #          <ul>
    #             <li>
    #                <p>Inline, using the <code>data</code> property in the request body.</p>
    #             </li>
    #             <li>
    #                <p>A URL that points to a YAML document file stored in Amazon S3, using the
    # 						<code>uri</code> property in the request body.</p>
    #             </li>
    #          </ul>
    #          <p>Image Builder determines the component type from the document. If the document
    # 			contains a single phase named <code>test</code>, the component type is
    # 			<code>TEST</code>. Otherwise, the component type is <code>BUILD</code>.</p>
    # @param [Hash, Types::CreateComponentRequest] params
    # @option params [String] :name
    #   <p>The name of the component. Image Builder generates the component ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. If a component with the same name and
    #   			semantic version already exists in your account in the same Amazon Web Services Region,
    #   			the request creates a new build version for it. If the content is also
    #   			identical to the latest build version, the request fails because the
    #   			component already exists.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [String] :description
    #   <p>Describes the contents of the component.</p>
    # @option params [String] :change_description
    #   <p>The change description of the component. Describes what change has been made in this
    #   			version, or what makes this version different from other versions of the
    #   			component.</p>
    # @option params [String] :platform
    #   <p>The operating system platform of the component.</p>
    # @option params [Array<String>] :supported_os_versions
    #   <p>The operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image
    #   			recipe creation.</p>
    # @option params [String] :data
    #   <p>Component <code>data</code> contains inline YAML document content for the component.
    #   			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in
    #   			Amazon S3. However, you cannot specify both properties.</p>
    # @option params [String] :uri
    #   <p>The <code>uri</code> of a YAML component document file. This must be an S3 URL
    #   				(<code>s3://bucket/key</code>), and you must have permission to access the
    #   			S3 bucket it points to. If you use Amazon S3, you can specify component content up to your
    #   			service quota for component size, which is 64 KB by default.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the component
    #   				<code>data</code> property. You cannot specify both properties.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this component.
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder encrypts the
    #   			component data with a KMS key that Image Builder owns.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that apply to the component.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create a component from a document stored in Amazon S3
    #   # The following example creates a component from a YAML definition document that's stored in an Amazon S3 bucket. The definition document for this component includes an AppVersion parameter that recipes can set when they include the component.
    #   params = {
    #     name: "my-example-parameterized-component",
    #     semantic_version: "1.0.0",
    #     description: "Installs a configurable version of my application",
    #     platform: Linux,
    #     uri: "s3://amzn-s3-demo-bucket/components/install-my-app.yaml",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE10101"
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "0cec8e32-a5c6-4aeb-ac3a-6471c8a2a8a9",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE10101",
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.0/1",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.0"
    #     }
    #   }
    # @example Create a component from an inline document
    #   # The following example creates a build component from a YAML document provided inline in the request.
    #   params = {
    #     name: "my-example-component",
    #     semantic_version: "1.0.0",
    #     description: "Installs the latest version of my application",
    #     platform: Linux,
    #     data: "name: InstallMyApp\ndescription: Installs my application\nschemaVersion: 1.0\nphases:\n  - name: build\n    steps:\n      - name: InstallApp\n        action: ExecuteBash\n        inputs:\n          commands:\n            - sudo yum -y install my-app\n",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "e769f240-fb6a-4253-88d1-20a80cbe787d",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     platform: "Windows" # One of: ["Windows", "Linux", "macOS"], # required
    #     supported_os_versions: ["OsVersion"],
    #     data: "InlineComponentData",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     component_build_version_arn: "ComponentBuildVersionArn",
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::CreateComponentResponse]
    def create_component(params = {}, options = {})
      request = build_request(:create_component, params)
      request.send_request(options)
    end

    # <p>Creates a new container recipe. Container recipes define how images are configured,
    # 			tested, and assessed.</p>
    # @param [Hash, Types::CreateContainerRecipeRequest] params
    # @option params [String] :container_type
    #   <p>The type of container to create.</p>
    # @option params [String] :name
    #   <p>The name of the container recipe. The recipe name, combined with the
    #   			semantic version, must be unique to your account in each Amazon Web Services Region.
    #   			Image Builder generates the container recipe ARN from a normalized form of the
    #   			name, so names that differ only in case, spaces, or underscores count as
    #   			the same name.</p>
    # @option params [String] :description
    #   <p>The description of the container recipe.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the container recipe. This version follows the semantic
    #   			version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [Array<Types::ComponentConfiguration>] :components
    #   <p>The components included in the container recipe. You can specify each
    #   			component only one time in a recipe.</p>
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing
    #   			container images.</p>
    # @option params [String] :dockerfile_template_data
    #   <p>The Dockerfile template used to build your image, as an inline data blob.
    #   			You must specify exactly one of the <code>dockerfileTemplateData</code> or
    #   			<code>dockerfileTemplateUri</code> properties. For the contextual variables
    #   			that the template can include, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/create-container-recipes.html">Create
    #   				a new version of a container recipe</a> in the
    #   			<i>EC2 Image Builder User Guide</i>.</p>
    # @option params [String] :dockerfile_template_uri
    #   <p>The Amazon S3 URI for the Dockerfile template that is used to build your container
    #   			image. You must have permission to read the object. Image Builder reads the object
    #   			once, when it creates the recipe, and stores its content in the recipe.
    #   			Later changes to the S3 object don't affect the recipe. You must specify
    #   			exactly one of the <code>dockerfileTemplateData</code> or
    #   			<code>dockerfileTemplateUri</code> properties.</p>
    # @option params [String] :platform_override
    #   <p>Specifies the operating system platform when you use a custom base image.
    #   			Container recipes support only the Linux and Windows platforms.</p>
    # @option params [String] :image_os_version_override
    #   <p>Specifies the operating system version for the base image. Use this property
    #   			only when the base image is a container image from a registry. When the base
    #   			image is an Image Builder image, the operating system version comes from the parent
    #   			image.</p>
    # @option params [String] :parent_image
    #   <p>The base image for the container recipe. This can be an Image Builder image resource
    #   			ARN or a container image URI from a registry, for example
    #   			<code>amazonlinux:latest</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to the container recipe.</p>
    # @option params [String] :working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    # @option params [Types::TargetContainerRepository] :target_repository
    #   <p>The destination repository for the container image. The Amazon ECR repository
    #   			must already exist in the Amazon Web Services Region where the build runs.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies which KMS key is used to encrypt the Dockerfile
    #   			template. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create a container recipe with a custom build instance configuration
    #   # The following example creates a container recipe that customizes the Amazon EC2 instance that builds the container image. The build instance launches from an Amazon ECS-optimized instance image and uses a 40 GiB gp3 volume.
    #   params = {
    #     container_type: DOCKER,
    #     name: "my-example-container-recipe",
    #     semantic_version: "1.1.0",
    #     description: "A container recipe that builds on an ECS-optimized instance image with a larger build volume",
    #     parent_image: "amazonlinux:latest",
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-container-component/1.0.0/1"
    #       }
    #     ],
    #     instance_configuration: {
    #       image: "ami-1234567890abcdef0",
    #       block_device_mappings: [
    #         {
    #           device_name: "/dev/xvda",
    #           ebs: {
    #             volume_size: 40,
    #             volume_type: gp3,
    #             delete_on_termination: true
    #           }
    #         }
    #       ]
    #     },
    #     dockerfile_template_data: "FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n",
    #     target_repository: {
    #       service: ECR,
    #       repository_name: "my-example-container-repo"
    #     },
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE40404"
    #   }
    #   options = {}
    #   response = client.create_container_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "4b6fc7f3-5b6b-4086-858e-22d4c7f9a37f",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE40404",
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.1.0",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.1.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.1.0"
    #     }
    #   }
    # @example Create a container recipe with an inline Dockerfile template
    #   # The following example creates a Docker container recipe that applies one build component, using the latest Amazon Linux container image as the parent and an existing ECR repository as the target.
    #   params = {
    #     container_type: DOCKER,
    #     name: "my-example-container-recipe",
    #     semantic_version: "1.0.0",
    #     parent_image: "amazonlinux:latest",
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-container-component/1.0.0/1"
    #       }
    #     ],
    #     dockerfile_template_data: "FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n",
    #     target_repository: {
    #       service: ECR,
    #       repository_name: "my-example-container-repo"
    #     },
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE99999"
    #   }
    #   options = {}
    #   response = client.create_container_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "20b16948-45a4-4b3a-9a17-d54779847365",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE99999",
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     container_type: "DOCKER" # One of: ["DOCKER"], # required
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "WildcardVersionNumber", # required
    #     components: [
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "ComponentParameterName", # required
    #             value: ["ComponentParameterValue"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     instance_configuration: {
    #       image: "NonEmptyString",
    #       block_device_mappings: [
    #         {
    #           device_name: "NonEmptyString",
    #           ebs: {
    #             encrypted: false,
    #             delete_on_termination: false,
    #             iops: 1,
    #             kms_key_id: "NonEmptyString",
    #             snapshot_id: "NonEmptyString",
    #             volume_size: 1,
    #             volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"],
    #             throughput: 1
    #           },
    #           virtual_name: "NonEmptyString",
    #           no_device: "EmptyString"
    #         }
    #       ]
    #     },
    #     dockerfile_template_data: "InlineDockerFileTemplate",
    #     dockerfile_template_uri: "Uri",
    #     platform_override: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #     image_os_version_override: "NonEmptyString",
    #     parent_image: "NonEmptyString", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     working_directory: "NonEmptyString",
    #     target_repository: { # required
    #       service: "ECR" # One of: ["ECR"], # required
    #       repository_name: "NonEmptyString", # required
    #     },
    #     kms_key_id: "NonEmptyString",
    #     client_token: "ClientToken", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_container_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::CreateContainerRecipeResponse]
    def create_container_recipe(params = {}, options = {})
      request = build_request(:create_container_recipe, params)
      request.send_request(options)
    end

    # <p>Creates a new distribution configuration. Distribution configurations define
    # 			and configure the outputs for your images, including the target Regions,
    # 			accounts, and settings for each Region.</p>
    # @param [Hash, Types::CreateDistributionConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the distribution configuration. Distribution configuration
    #   			names must be unique to your account in each Amazon Web Services Region. Image Builder generates
    #   			the distribution configuration ARN from a normalized form of the name, so
    #   			names that differ only in case, spaces, or underscores count as the same
    #   			name.</p>
    # @option params [String] :description
    #   <p>The description of the distribution configuration.</p>
    # @option params [Array<Types::Distribution>] :distributions
    #   <p>The distribution settings for the configuration. Each entry defines how
    #   			output images are distributed in one target Amazon Web Services Region. A Region can
    #   			appear at most once in the list.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the distribution configuration.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create a distribution configuration
    #   # The following example creates a distribution configuration that distributes the output AMI to two Regions. The AMI name includes the build date, so that repeated builds create unique AMI names.
    #   params = {
    #     name: "my-example-distribution",
    #     description: "Copies the output AMI to a second Region",
    #     distributions: [
    #       {
    #         region: "us-west-2",
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}"
    #         }
    #       },
    #       {
    #         region: "us-east-1",
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}"
    #         }
    #       }
    #     ],
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE44444"
    #   }
    #   options = {}
    #   response = client.create_distribution_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "ca5312ad-a273-4c8c-817e-042941a5762d",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE44444",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution"
    #   }
    # @example Create a distribution configuration with launch permissions and a launch template update
    #   # The following example creates a distribution configuration that distributes the output AMI to two Regions. In us-east-1, it shares the AMI with another AWS account. In us-west-2, it sets the new AMI as the default version of your launch template.
    #   params = {
    #     name: "my-example-distribution",
    #     description: "Distributes the output AMI to two Regions and shares it with another account",
    #     distributions: [
    #       {
    #         region: "us-west-2",
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}"
    #         },
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "lt-1234567890abcdef0",
    #             set_default_version: true
    #           }
    #         ]
    #       },
    #       {
    #         region: "us-east-1",
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}",
    #           launch_permission: {
    #             user_ids: [
    #               "444455556666"
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE56789"
    #   }
    #   options = {}
    #   response = client.create_distribution_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "13c97ae8-8e39-4e12-af78-25e70def0933",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE56789",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     distributions: [ # required
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #             organization_arns: ["OrganizationArn"],
    #             organizational_unit_arns: ["OrganizationalUnitArn"]
    #           }
    #         },
    #         container_distribution_configuration: {
    #           description: "NonEmptyString",
    #           container_tags: ["NonEmptyString"],
    #           target_repository: { # required
    #             service: "ECR" # One of: ["ECR"], # required
    #             repository_name: "NonEmptyString", # required
    #           }
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "LaunchTemplateId", # required
    #             account_id: "AccountId",
    #             set_default_version: false
    #           }
    #         ],
    #         s3_export_configuration: {
    #           role_name: "NonEmptyString", # required
    #           disk_image_format: "VMDK" # One of: ["VMDK", "RAW", "VHD"], # required
    #           s3_bucket: "NonEmptyString", # required
    #           s3_prefix: "NonEmptyString"
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: "LaunchTemplateId",
    #               launch_template_name: "NonEmptyString",
    #               launch_template_version: "NonEmptyString"
    #             },
    #             account_id: "AccountId"
    #           }
    #         ],
    #         ssm_parameter_configurations: [
    #           {
    #             ami_account_id: "AccountId",
    #             parameter_name: "SsmParameterName", # required
    #             data_type: "text" # One of: ["text", "aws:ec2:image"]
    #           }
    #         ]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_distribution_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     distribution_configuration_arn: "DistributionConfigurationArn"
    #   }
    # @return [Types::CreateDistributionConfigurationResponse]
    def create_distribution_configuration(params = {}, options = {})
      request = build_request(:create_distribution_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new image along with all configured output resources defined in the
    # 			distribution configuration. You must specify exactly one recipe for your image, using
    # 			either a <code>containerRecipeArn</code> or an <code>imageRecipeArn</code>.</p>
    #          <p>The response returns as soon as Image Builder creates the new image resource.
    # 			The image build process runs asynchronously. To check its progress, call
    # 			<a href="https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_GetImage.html">GetImage</a> and check the image status.</p>
    # @param [Hash, Types::CreateImageRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that defines how images are
    #   			configured, tested, and assessed. You must specify either this property or
    #   			<code>containerRecipeArn</code>, but not both.</p>
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that defines how images are
    #   			configured and tested. You must specify either this property or
    #   			<code>imageRecipeArn</code>, but not both.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that defines and
    #   			configures the outputs of the image build. If you don't specify a
    #   			distribution configuration, Image Builder creates the output image only in the
    #   			account and Amazon Web Services Region where the build runs.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
    #   			environment in which your image will be built and tested.</p>
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   <p>Settings that determine whether Image Builder runs tests on the image after
    #   			building it. Image tests are enabled by default.</p>
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the image.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>Settings for vulnerability scans that Amazon Inspector runs during image
    #   			creation. For AMI output, Amazon Inspector scans the test instance. For container
    #   			output, Amazon Inspector scans the container image that Image Builder pushes to the Amazon ECR
    #   			repository specified in <code>ecrConfiguration</code>.</p>
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   <p>The array of workflow configuration objects for the build. If you specify
    #   			workflows, they replace the default workflows that Image Builder otherwise runs for
    #   			the build, and you must also provide an <code>executionRole</code>.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions. This property is required if you
    #   			specify <code>workflows</code>. If you don't provide a role, Image Builder uses the
    #   			Image Builder service-linked role in your account, and creates it if it doesn't
    #   			exist.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>The CloudWatch Logs log group where Image Builder sends the image build logs. If
    #   			you specify a log group name outside of the <code>/aws/imagebuilder/</code>
    #   			namespace, you must also provide an <code>executionRole</code> that has
    #   			permission to write to that log group.</p>
    # @example Create an image
    #   # The following example creates a new image from the specified image recipe and infrastructure configuration.
    #   params = {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEeeeee"
    #   }
    #   options = {}
    #   response = client.create_image(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "62e9b43f-a9fd-4272-89fb-ce6235d07ab4",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEeeeee",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0"
    #     }
    #   }
    # @example Create an image with custom build and parallel test workflows
    #   # The following example creates an image that uses your custom build and test workflows. It uses the Image Builder service-linked role as the execution role. Both test workflows are in the same parallel group, so they can run at the same time after the build workflow completes.
    #   params = {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     workflows: [
    #       {
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1"
    #       },
    #       {
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/test/my-example-integration-tests/1.0.0/1",
    #         parallel_group: "post-build-tests"
    #       },
    #       {
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/test/my-example-compliance-tests/1.0.0/1",
    #         parallel_group: "post-build-tests"
    #       }
    #     ],
    #     execution_role: "arn:aws:iam::111122223333:role/aws-service-role/imagebuilder.amazonaws.com/AWSServiceRoleForImageBuilder",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE01234"
    #   }
    #   options = {}
    #   response = client.create_image(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "359f18b1-814f-4857-987f-924214970897",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE01234",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_recipe_arn: "ImageRecipeArn",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     image_scanning_configuration: {
    #       image_scanning_enabled: false,
    #       ecr_configuration: {
    #         repository_name: "NonEmptyString",
    #         container_tags: ["NonEmptyString"]
    #       }
    #     },
    #     workflows: [
    #       {
    #         workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "WorkflowParameterName", # required
    #             value: ["WorkflowParameterValue"], # required
    #           }
    #         ],
    #         parallel_group: "ParallelGroup",
    #         on_failure: "CONTINUE" # One of: ["CONTINUE", "ABORT"]
    #       }
    #     ],
    #     execution_role: "RoleNameOrArn",
    #     logging_configuration: {
    #       log_group_name: "LogGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.create_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_build_version_arn: "ImageBuildVersionArn",
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::CreateImageResponse]
    def create_image(params = {}, options = {})
      request = build_request(:create_image, params)
      request.send_request(options)
    end

    # <p>Creates a new image pipeline. Use image pipelines to automate the creation and
    # 			distribution of images. You must specify exactly one recipe for the pipeline,
    # 			using either a <code>containerRecipeArn</code> or an
    # 			<code>imageRecipeArn</code>.</p>
    # @param [Hash, Types::CreateImagePipelineRequest] params
    # @option params [String] :name
    #   <p>The name of the image pipeline. Pipeline names must be unique to your
    #   			account in each Amazon Web Services Region. Image Builder generates the pipeline ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name.</p>
    # @option params [String] :description
    #   <p>The description of the image pipeline.</p>
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that configures
    #   			images created by this image pipeline. You must specify either this property
    #   			or <code>containerRecipeArn</code>, but not both.</p>
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure
    #   			images created by this container pipeline. You must specify either this
    #   			property or <code>imageRecipeArn</code>, but not both.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that
    #   			builds images created by this image pipeline.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that configures and
    #   			distributes images created by this image pipeline.</p>
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   <p>Specifies the test settings that Image Builder applies to images that this
    #   			pipeline creates. If you don't provide test settings, Image Builder stores a default
    #   			configuration with image tests enabled.</p>
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule of the image pipeline. If you don't provide a schedule, the
    #   			pipeline runs only when you call
    #   			<a>StartImagePipelineExecution</a>.</p>
    # @option params [String] :status
    #   <p>The status of the image pipeline. If you don't specify a status, it
    #   			defaults to <code>ENABLED</code>. A disabled pipeline doesn't run on its
    #   			schedule, but you can still start builds manually.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the image pipeline.</p>
    # @option params [Hash<String, String>] :image_tags
    #   <p>The tags that Image Builder applies to the Image Builder image resource that this
    #   			pipeline's scheduled executions create. These tags don't apply to the
    #   			output AMI. To tag output AMIs, use <code>amiTags</code> in the
    #   			pipeline's distribution configuration.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>Contains settings for vulnerability scans that Amazon Inspector runs against the test instance
    #   			during image creation.</p>
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   <p>The array of workflow configuration objects for builds that this pipeline
    #   			starts. You must also specify <code>executionRole</code> when you provide
    #   			workflows.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions.</p>
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   <p>Specifies the logging configuration for the image pipeline. Use this
    #   			to define custom CloudWatch Logs log groups for your pipeline execution
    #   			logs and image build logs. The service manages log groups with names
    #   			starting with <code>/aws/imagebuilder/</code> using the service-linked
    #   			role. For custom log group names outside of this prefix, you must also
    #   			provide an <code>executionRole</code>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create an image pipeline
    #   # The following example creates a pipeline that builds a new image version every Sunday at 9:00 AM UTC, if the base image or components have updates.
    #   params = {
    #     name: "my-example-pipeline",
    #     description: "Builds a new version of my image every Sunday",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution",
    #     schedule: {
    #       schedule_expression: "cron(0 9 ? * SUN *)",
    #       pipeline_execution_start_condition: EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #     },
    #     status: ENABLED,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE55555"
    #   }
    #   options = {}
    #   response = client.create_image_pipeline(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "db0a9329-35ef-4b53-98d0-a34385e44e28",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE55555",
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    # @example Create an image pipeline with scanning, custom workflows, and an auto-disable policy
    #   # The following example creates a pipeline that uses your custom build workflow and enables image scanning. The schedule evaluates its cron expression in the America/Los_Angeles time zone. The auto-disable policy disables the pipeline after 3 consecutive failed scheduled builds.
    #   params = {
    #     name: "my-example-pipeline",
    #     description: "Builds a scanned image with my custom build workflow on Sunday mornings when dependency updates are available",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.0",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution",
    #     workflows: [
    #       {
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1"
    #       }
    #     ],
    #     execution_role: "arn:aws:iam::111122223333:role/aws-service-role/imagebuilder.amazonaws.com/AWSServiceRoleForImageBuilder",
    #     image_scanning_configuration: {
    #       image_scanning_enabled: true
    #     },
    #     schedule: {
    #       schedule_expression: "cron(0 9 ? * SUN *)",
    #       timezone: "America/Los_Angeles",
    #       pipeline_execution_start_condition: EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE,
    #       auto_disable_policy: {
    #         failure_count: 3
    #       }
    #     },
    #     status: ENABLED,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE30303"
    #   }
    #   options = {}
    #   response = client.create_image_pipeline(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "f8da3ec9-4b76-4aa3-817a-c35a90f59dca",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE30303",
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: "NonEmptyString",
    #       timezone: "Timezone",
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY" # One of: ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"],
    #       auto_disable_policy: {
    #         failure_count: 1, # required
    #       }
    #     },
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     image_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     image_scanning_configuration: {
    #       image_scanning_enabled: false,
    #       ecr_configuration: {
    #         repository_name: "NonEmptyString",
    #         container_tags: ["NonEmptyString"]
    #       }
    #     },
    #     workflows: [
    #       {
    #         workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "WorkflowParameterName", # required
    #             value: ["WorkflowParameterValue"], # required
    #           }
    #         ],
    #         parallel_group: "ParallelGroup",
    #         on_failure: "CONTINUE" # One of: ["CONTINUE", "ABORT"]
    #       }
    #     ],
    #     execution_role: "RoleNameOrArn",
    #     logging_configuration: {
    #       image_log_group_name: "LogGroupName",
    #       pipeline_log_group_name: "LogGroupName"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_image_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_pipeline_arn: "ImagePipelineArn"
    #   }
    # @return [Types::CreateImagePipelineResponse]
    def create_image_pipeline(params = {}, options = {})
      request = build_request(:create_image_pipeline, params)
      request.send_request(options)
    end

    # <p>Creates a new image recipe. Image recipes define how images are configured, tested,
    # 			and assessed.</p>
    # @param [Hash, Types::CreateImageRecipeRequest] params
    # @option params [String] :name
    #   <p>The name of the image recipe. The recipe name, combined with the semantic
    #   			version, must be unique to your account in each Amazon Web Services Region. Image Builder
    #   			generates the image recipe ARN from a normalized form of the name, so
    #   			names that differ only in case, spaces, or underscores count as the same
    #   			name.</p>
    # @option params [String] :description
    #   <p>The description of the image recipe.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the image recipe. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [Array<Types::ComponentConfiguration>] :components
    #   <p>The components included in the image recipe. Components are optional. A
    #   			recipe with no components bakes the base image without additional
    #   			customization. You can
    #   			specify each component only one time in a recipe. Components with a status
    #   			of <code>DEPRECATED</code> or <code>DISABLED</code> can't be added to
    #   			new recipes.</p>
    # @option params [String] :parent_image
    #   <p>The base image for customizations specified in the image recipe. You can specify the
    #   			parent image using one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>AMI ID</p>
    #               </li>
    #               <li>
    #                  <p>Image Builder image Amazon Resource Name (ARN)</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Systems Manager (SSM) Parameter Store Parameter, prefixed by <code>ssm:</code>,
    #   					followed by the parameter name or ARN.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Marketplace product ID</p>
    #               </li>
    #            </ul>
    #            <p>If you enter an AMI ID or an SSM parameter that contains the AMI ID, you must have access
    #   			to the AMI. The AMI must also be in the Region where you're creating
    #   			the recipe.</p>
    # @option params [Array<Types::InstanceBlockDeviceMapping>] :block_device_mappings
    #   <p>The block device mappings that Image Builder applies to the build instance and the
    #   			output AMI. For example, you can override the size of the base image's
    #   			root volume or attach additional EBS volumes.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the image recipe.</p>
    # @option params [String] :working_directory
    #   <p>The working directory used during build and test workflows. If you
    #   			don't specify a working directory, Image Builder uses <code>/tmp</code> for
    #   			Linux and macOS build instances, and <code>C:/</code> for Windows build
    #   			instances.</p>
    # @option params [Types::AdditionalInstanceConfiguration] :additional_instance_configuration
    #   <p>The additional settings and launch scripts for your build instances.</p>
    # @option params [Hash<String, String>] :ami_tags
    #   <p>Tags that are applied to the AMI that Image Builder creates during the Build phase
    #   			prior to image distribution.</p>
    # @option params [Array<String>] :ami_watermarks
    #   <p>The AMI watermark names to attach to the output AMI from this recipe.
    #   			AMI watermarks are lineage markers. They automatically propagate to
    #   			derivative AMIs when the source AMI is copied or distributed across
    #   			Regions or accounts.</p>
    #            <note>
    #               <p>AMI watermarks are supported only for image recipes. AMIs with
    #   				watermarks cannot be made public.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create an image recipe
    #   # The following example creates an image recipe that applies a custom component on top of the latest Amazon Linux 2023 base image.
    #   params = {
    #     name: "my-example-recipe",
    #     semantic_version: "1.0.0",
    #     description: "An image recipe that installs my application on Amazon Linux 2023",
    #     parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x",
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1"
    #       }
    #     ],
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #   }
    #   options = {}
    #   response = client.create_image_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "89f4af2f-4f28-45e6-a9d8-abeba591df6a",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0"
    #     }
    #   }
    # @example Create an image recipe with component parameters and block device mappings
    #   # The following example creates an image recipe that configures its components and storage. The AppVersion component parameter selects the application version to install. The block device mapping increases the root volume to an encrypted 30 GiB gp3 volume.
    #   params = {
    #     name: "my-example-recipe",
    #     semantic_version: "1.1.0",
    #     description: "Installs a specific version of my application on Amazon Linux 2023 with a larger encrypted root volume",
    #     parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x",
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.0/1",
    #         parameters: [
    #           {
    #             name: "AppVersion",
    #             value: [
    #               "2.5.0"
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     block_device_mappings: [
    #       {
    #         device_name: "/dev/xvda",
    #         ebs: {
    #           volume_size: 30,
    #           volume_type: gp3,
    #           encrypted: true,
    #           delete_on_termination: true
    #         }
    #       }
    #     ],
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE20202"
    #   }
    #   options = {}
    #   response = client.create_image_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "e3bdc054-d12e-4578-a847-68a18da724ca",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE20202",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.0",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "WildcardVersionNumber", # required
    #     components: [
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "ComponentParameterName", # required
    #             value: ["ComponentParameterValue"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     parent_image: "NonEmptyString", # required
    #     block_device_mappings: [
    #       {
    #         device_name: "NonEmptyString",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           kms_key_id: "NonEmptyString",
    #           snapshot_id: "NonEmptyString",
    #           volume_size: 1,
    #           volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"],
    #           throughput: 1
    #         },
    #         virtual_name: "NonEmptyString",
    #         no_device: "EmptyString"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     working_directory: "NonEmptyString",
    #     additional_instance_configuration: {
    #       systems_manager_agent: {
    #         uninstall_after_build: false
    #       },
    #       user_data_override: "UserDataOverride"
    #     },
    #     ami_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     ami_watermarks: ["AmiWatermarkName"],
    #     client_token: "ClientToken", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_image_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_recipe_arn: "ImageRecipeArn",
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::CreateImageRecipeResponse]
    def create_image_recipe(params = {}, options = {})
      request = build_request(:create_image_recipe, params)
      request.send_request(options)
    end

    # <p>Creates a new infrastructure configuration. An infrastructure configuration defines
    # 			the environment in which your image will be built and tested.</p>
    # @param [Hash, Types::CreateInfrastructureConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the infrastructure configuration. Infrastructure configuration
    #   			names must be unique to your account in each Amazon Web Services Region. Image Builder generates
    #   			the infrastructure configuration ARN from a normalized form of the name, so
    #   			names that differ only in case, spaces, or underscores count as the same
    #   			name.</p>
    # @option params [String] :description
    #   <p>The description of the infrastructure configuration.</p>
    # @option params [Array<String>] :instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. Image Builder picks one of these instance types
    #   			based on availability. If you don't specify instance types, Image Builder selects
    #   			compatible instance types automatically. If you specify a Dedicated Host,
    #   			Image Builder uses only instance types that the host supports.</p>
    # @option params [String] :instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI. The instance profile must exist in your account.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    # @option params [String] :subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2
    #   			AMI. If you specify <code>subnetId</code>, you must also specify one or
    #   			more security group IDs in <code>securityGroupIds</code>. Otherwise, the
    #   			request fails.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration of the infrastructure configuration. When you
    #   			configure S3 logs, Image Builder writes logs from the build and test process to the
    #   			specified bucket under the key prefix.</p>
    # @option params [String] :key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    # @option params [Boolean] :terminate_instance_on_failure
    #   <p>Specifies whether to terminate the instance on failure. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails. Defaults to <code>true</code>.</p>
    # @option params [Boolean] :terminate_instance_on_completion
    #   <p>Specifies whether Image Builder terminates build and test instances when image creation
    #   			ends without a failure (success, cancellation, or expiration). Defaults to
    #   			<code>true</code>.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to which Image Builder sends image build event notifications.
    #   			Specify a standard topic. Image Builder doesn't support FIFO topics.
    #   			Image Builder validates the topic when you create or update the configuration. You
    #   			must have permission to publish to the topic.</p>
    #            <note>
    #               <p>EC2 Image Builder can't send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. If your SNS topic is encrypted, the key must be owned by the
    #   				same account that owns your Image Builder resources.</p>
    #            </note>
    # @option params [Hash<String, String>] :resource_tags
    #   <p>The metadata tags to assign to the Amazon EC2 instance that Image Builder launches during
    #   			the build process. Tags are formatted as key value pairs. Tag keys can't
    #   			begin with <code>aws:</code> or match one of the following reserved keys: <code>CreatedBy</code>,
    #   			<code>Ec2ImageBuilderArn</code>, <code>Name</code>, or
    #   			<code>Tags</code>.</p>
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   <p>The instance metadata service (IMDS) settings that Image Builder applies to the EC2
    #   			build and test instances it launches during image creation. If you don't
    #   			set these options, the EC2 launch defaults for the instance apply. For more
    #   			information about instance metadata options, see one of the following
    #   			links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   						<i>
    #                        <i>Amazon EC2 User Guide</i>
    #                     </i> for Linux instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   						<i>
    #                        <i>Amazon EC2 Windows Guide</i>
    #                     </i> for Windows instances.</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata tags to assign to the infrastructure configuration resource that Image Builder
    #   			creates as output. Tags are formatted as key value pairs.</p>
    # @option params [Types::Placement] :placement
    #   <p>The instance placement settings that define where the build and test
    #   			instances that Image Builder launches during image creation run. These settings
    #   			don't affect instances that you launch from the output image.</p>
    # @option params [Types::ParentInstanceConfiguration] :parent_instance
    #   <p>The Amazon EC2 Auto Scaling group that Image Builder takes the build instance from, instead of
    #   			launching a new instance. This applies only to the build phase.</p>
    #            <p>To use this feature, the execution role for the build must have permissions to
    #   			describe the Auto Scaling group, tag the instance while it's still in the group, and
    #   			detach it from the group. For more information, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/infra-config-parent-instance.html">Build on an
    #   				instance from an Auto Scaling group</a> in the <i>EC2 Image Builder User
    #   				Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create an infrastructure configuration
    #   # The following example creates an infrastructure configuration that gives Image Builder a choice of two instance types for its build and test instances.
    #   params = {
    #     name: "my-example-infrastructure",
    #     description: "An infrastructure configuration for Amazon Linux builds",
    #     instance_profile_name: "EC2InstanceProfileForImageBuilder",
    #     instance_types: [
    #       "t3.medium",
    #       "t3.large"
    #     ],
    #     terminate_instance_on_failure: true,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE33333"
    #   }
    #   options = {}
    #   response = client.create_infrastructure_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "67082698-415b-4d9f-8be0-84a58380b93f",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE33333",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure"
    #   }
    # @example Create an infrastructure configuration with instance placement and metadata options
    #   # The following example creates an infrastructure configuration. It places your build and test instances in a single Availability Zone and requires IMDSv2 for instance metadata requests. It also applies resource tags to the resources that Image Builder creates during the build.
    #   params = {
    #     name: "my-example-infrastructure",
    #     description: "An infrastructure configuration that pins build instances to one Availability Zone and requires IMDSv2",
    #     instance_profile_name: "my-example-instance-role",
    #     placement: {
    #       availability_zone: "us-west-2a"
    #     },
    #     instance_metadata_options: {
    #       http_tokens: "required",
    #       http_put_response_hop_limit: 2
    #     },
    #     resource_tags: {
    #       "CostCenter" => "12345",
    #       "Environment" => "test"
    #     },
    #     terminate_instance_on_failure: true,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE98765"
    #   }
    #   options = {}
    #   response = client.create_infrastructure_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "b96b54d8-daa6-4fdf-b25a-7b570bc2ab25",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE98765",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     instance_types: ["InstanceType"],
    #     instance_profile_name: "InstanceProfileNameType", # required
    #     security_group_ids: ["NonEmptyString"],
    #     subnet_id: "NonEmptyString",
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString"
    #       }
    #     },
    #     key_pair: "NonEmptyString",
    #     terminate_instance_on_failure: false,
    #     terminate_instance_on_completion: false,
    #     sns_topic_arn: "SnsTopicArn",
    #     resource_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     instance_metadata_options: {
    #       http_tokens: "HttpTokens",
    #       http_put_response_hop_limit: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     placement: {
    #       availability_zone: "NonEmptyString",
    #       tenancy: "default" # One of: ["default", "dedicated", "host"],
    #       host_id: "NonEmptyString",
    #       host_resource_group_arn: "NonEmptyString"
    #     },
    #     parent_instance: {
    #       auto_scaling_group: { # required
    #         name: "NonEmptyString", # required
    #         capacity_wait_timeout_seconds: 1
    #       }
    #     },
    #     client_token: "ClientToken", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_infrastructure_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn"
    #   }
    # @return [Types::CreateInfrastructureConfigurationResponse]
    def create_infrastructure_configuration(params = {}, options = {})
      request = build_request(:create_infrastructure_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a lifecycle policy resource.</p>
    # @param [Hash, Types::CreateLifecyclePolicyRequest] params
    # @option params [String] :name
    #   <p>The name of the lifecycle policy to create. Policy names must be unique to
    #   			your account in each Amazon Web Services Region. Image Builder generates the policy ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. You can't change the name after
    #   			creation.</p>
    # @option params [String] :description
    #   <p>Optional description for the lifecycle policy.</p>
    # @option params [String] :status
    #   <p>Indicates whether the lifecycle policy resource is enabled. If you don't
    #   			specify a status, it defaults to <code>ENABLED</code>. Only enabled policies
    #   			run on their schedule.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run
    #   			lifecycle actions. You must have permission to pass the role, and the
    #   			role's trust policy must allow the Image Builder service principal to assume it.</p>
    # @option params [String] :resource_type
    #   <p>The type of Image Builder resource that the lifecycle policy applies to. The resource
    #   			type determines the allowed rule actions: policies for AMI-based Image Builder images
    #   			support <code>DELETE</code>, <code>DEPRECATE</code>, and
    #   			<code>DISABLE</code>, and policies for container-based Image Builder images support
    #   			only <code>DELETE</code>. You can't
    #   			change the resource type after creation.</p>
    # @option params [Array<Types::LifecyclePolicyDetail>] :policy_details
    #   <p>Configuration details for the lifecycle policy rules. A policy can contain
    #   			at most one rule per action type: one <code>DELETE</code>, one
    #   			<code>DEPRECATE</code>, and one <code>DISABLE</code>.</p>
    # @option params [Types::LifecyclePolicyResourceSelection] :resource_selection
    #   <p>Selection criteria for the resources that the lifecycle policy applies to.
    #   			You must specify exactly one selection criteria: either recipes or a tag
    #   			map, not both.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to apply to the lifecycle policy resource.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create a lifecycle policy
    #   # The following example creates a lifecycle policy that deletes AMI-based images six months after they were created, selecting the images that match the specified resource tags.
    #   params = {
    #     name: "my-example-lifecycle-policy",
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role",
    #     resource_type: AMI_IMAGE,
    #     policy_details: [
    #       {
    #         action: {
    #           type: DELETE
    #         },
    #         filter: {
    #           type: AGE,
    #           value: 6,
    #           unit: MONTHS
    #         }
    #       }
    #     ],
    #     resource_selection: {
    #       tag_map: {
    #         "Environment" => "test"
    #       }
    #     },
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE13579"
    #   }
    #   options = {}
    #   response = client.create_lifecycle_policy(params, options)
    #   response.to_h #=>
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE13579",
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy"
    #   }
    # @example Create a lifecycle policy with exclusion rules
    #   # The following example creates a lifecycle policy that deletes images created from the specified recipe version after six months. The policy excludes images whose AMIs launched an instance within the last 30 days or are tagged to be retained.
    #   params = {
    #     name: "my-example-lifecycle-policy",
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role",
    #     resource_type: AMI_IMAGE,
    #     policy_details: [
    #       {
    #         action: {
    #           type: DELETE
    #         },
    #         filter: {
    #           type: AGE,
    #           value: 6,
    #           unit: MONTHS
    #         },
    #         exclusion_rules: {
    #           amis: {
    #             last_launched: {
    #               value: 30,
    #               unit: DAYS
    #             },
    #             tag_map: {
    #               "Retention" => "keep"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     resource_selection: {
    #       recipes: [
    #         {
    #           name: "my-example-recipe",
    #           semantic_version: "1.0.0"
    #         }
    #       ]
    #     },
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE43210"
    #   }
    #   options = {}
    #   response = client.create_lifecycle_policy(params, options)
    #   response.to_h #=>
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE43210",
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     execution_role: "RoleNameOrArn", # required
    #     resource_type: "AMI_IMAGE" # One of: ["AMI_IMAGE", "CONTAINER_IMAGE"], # required
    #     policy_details: [ # required
    #       {
    #         action: { # required
    #           type: "DELETE" # One of: ["DELETE", "DEPRECATE", "DISABLE"], # required
    #           include_resources: {
    #             amis: false,
    #             snapshots: false,
    #             containers: false
    #           }
    #         },
    #         filter: { # required
    #           type: "AGE" # One of: ["AGE", "COUNT"], # required
    #           value: 1, # required
    #           unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"],
    #           retain_at_least: 1
    #         },
    #         exclusion_rules: {
    #           tag_map: {
    #             "TagKey" => "TagValue"
    #           },
    #           amis: {
    #             is_public: false,
    #             regions: ["NonEmptyString"],
    #             shared_accounts: ["AccountId"],
    #             last_launched: {
    #               value: 1, # required
    #               unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             },
    #             tag_map: {
    #               "TagKey" => "TagValue"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     resource_selection: { # required
    #       recipes: [
    #         {
    #           name: "ResourceName", # required
    #           semantic_version: "WildcardVersionNumber", # required
    #         }
    #       ],
    #       tag_map: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     lifecycle_policy_arn: "LifecyclePolicyArn"
    #   }
    # @return [Types::CreateLifecyclePolicyResponse]
    def create_lifecycle_policy(params = {}, options = {})
      request = build_request(:create_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new workflow or a new version of an existing workflow. If a workflow
    # 			with the same name and semantic version already exists, and your request changes
    # 			its configuration, Image Builder creates a new build version.
    # 			If the configuration is identical to the latest build version, the request
    # 			fails because that workflow configuration already exists.</p>
    # @param [Hash, Types::CreateWorkflowRequest] params
    # @option params [String] :name
    #   <p>The name of the workflow to create. Image Builder generates the workflow ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. If a workflow with the same name and
    #   			semantic version already exists in your account in the same Amazon Web Services Region,
    #   			the request creates a new build version for it. If the content is also
    #   			identical to the latest build version, the request fails because the
    #   			workflow already exists.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of this workflow resource. The semantic version syntax
    #   			adheres to the following rules.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [String] :description
    #   <p>Describes the workflow.</p>
    # @option params [String] :change_description
    #   <p>Describes what change has been made in this version of the workflow, or
    #   			what makes this version different from other versions of the workflow.</p>
    # @option params [String] :data
    #   <p>The UTF-8 encoded YAML document content for the workflow, up to
    #   			16,000 characters. For larger documents, store the document in Amazon S3 and specify
    #   			the <code>uri</code> property instead. You must specify exactly one of the
    #   			<code>data</code> or <code>uri</code> properties.</p>
    # @option params [String] :uri
    #   <p>The <code>uri</code> of a YAML workflow document file stored in Amazon S3. This must
    #   			be an S3 URL (<code>s3://bucket/key</code>), and you must have permission to
    #   			access the S3 bucket it points to. A workflow document that you provide from
    #   			Amazon S3 can be up to your service quota for workflow size.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the workflow
    #   			<code>data</code> property. You must specify exactly one of the <code>data</code>
    #   			or <code>uri</code> properties.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this workflow resource.
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder encrypts the workflow
    #   			document with a KMS key that Image Builder owns.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that apply to the workflow resource.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [String] :type
    #   <p>The image creation stage that this workflow applies to. Image Builder validates the
    #   			workflow document steps against the stage you specify.</p>
    # @option params [Boolean] :dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    # @example Create a build workflow from an inline document
    #   # The following example creates a build workflow from a YAML workflow document provided inline in the request.
    #   params = {
    #     name: "my-example-workflow",
    #     semantic_version: "1.0.0",
    #     description: "Workflow to build an AMI",
    #     type: BUILD,
    #     data: "name: my-example-workflow\ndescription: Workflow to build an AMI\nschemaVersion: 1.0\nsteps:\n  - name: LaunchBuildInstance\n    action: LaunchInstance\n    onFailure: Abort\n    inputs:\n      waitFor: ssmAgent\n  - name: ApplyBuildComponents\n    action: ExecuteComponents\n    onFailure: Abort\n    inputs:\n      instanceId.$: $.stepOutputs.LaunchBuildInstance.instanceId\n  - name: CreateOutputAMI\n    action: CreateImage\n    onFailure: Abort\n    inputs:\n      instanceId.$: $.stepOutputs.LaunchBuildInstance.instanceId\n  - name: TerminateBuildInstance\n    action: TerminateInstance\n    onFailure: Continue\n    inputs:\n      instanceId.$: $.stepOutputs.LaunchBuildInstance.instanceId\n",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE54321"
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    #   response.to_h #=>
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE54321",
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1",
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     data: "InlineWorkflowData",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     type: "BUILD" # One of: ["BUILD", "TEST", "DISTRIBUTION"], # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     workflow_build_version_arn: "WorkflowBuildVersionArn",
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::CreateWorkflowResponse]
    def create_workflow(params = {}, options = {})
      request = build_request(:create_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes a component build version. The request fails with
    # 			<code>ResourceDependencyException</code> if an image recipe or container
    # 			recipe references this component version. It also fails if the component
    # 			build version is shared with other accounts.</p>
    # @param [Hash, Types::DeleteComponentRequest] params
    # @option params [String] :component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version to delete.</p>
    # @example Delete a component build version
    #   # The following example deletes the specified component build version.
    #   params = {
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.delete_component(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "c75a1764-2ca3-4cb4-9ce9-6d49f87942b0",
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     component_build_version_arn: "ComponentBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.delete_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     component_build_version_arn: "ComponentBuildVersionArn"
    #   }
    # @return [Types::DeleteComponentResponse]
    def delete_component(params = {}, options = {})
      request = build_request(:delete_component, params)
      request.send_request(options)
    end

    # <p>Deletes a container recipe. The request fails with
    # 			<code>ResourceDependencyException</code> if the recipe is shared with other
    # 			accounts, or if an image pipeline references it.</p>
    # @param [Hash, Types::DeleteContainerRecipeRequest] params
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to delete.</p>
    # @example Delete a container recipe
    #   # The following example deletes the specified container recipe.
    #   params = {
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0"
    #   }
    #   options = {}
    #   response = client.delete_container_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "988e934a-b785-4705-aff1-4d9840a165aa",
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_container_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     container_recipe_arn: "ContainerRecipeArn"
    #   }
    # @return [Types::DeleteContainerRecipeResponse]
    def delete_container_recipe(params = {}, options = {})
      request = build_request(:delete_container_recipe, params)
      request.send_request(options)
    end

    # <p>Deletes a distribution configuration. You can't delete a configuration
    # 			that an image pipeline still references. The request fails with
    # 			<code>ResourceDependencyException</code>. Update or delete the referencing
    # 			pipelines first.</p>
    # @param [Hash, Types::DeleteDistributionConfigurationRequest] params
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration to delete.</p>
    # @example Delete a distribution configuration
    #   # The following example deletes the specified distribution configuration.
    #   params = {
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration"
    #   }
    #   options = {}
    #   response = client.delete_distribution_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "2b752b77-2038-40f4-996a-0a6da1be5e92",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_distribution_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     distribution_configuration_arn: "DistributionConfigurationArn"
    #   }
    # @return [Types::DeleteDistributionConfigurationResponse]
    def delete_distribution_configuration(params = {}, options = {})
      request = build_request(:delete_distribution_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an Image Builder image resource. This does not delete any EC2 AMIs or ECR container
    # 			images that are created during the image build process. You must clean those up
    # 			separately, using the appropriate Amazon EC2 or Amazon ECR console actions, or API or CLI
    # 			commands.</p>
    #          <p>The request fails with <code>ResourceDependencyException</code> if the image
    # 			is shared with other accounts, or if other resources depend on it. It also
    # 			fails while the image build is still running. Cancel an in-progress build
    # 			with <a>CancelImageCreation</a> before you delete the image.</p>
    #          <ul>
    #             <li>
    #                <p>To deregister an EC2 Linux AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html">Deregister your
    # 						Linux AMI</a> in the <i>
    #                      <i>Amazon EC2 User Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>To deregister an EC2 Windows AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html">Deregister your
    # 						Windows AMI</a> in the <i>
    #                      <i>Amazon EC2 Windows Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>To delete a container image from Amazon ECR, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html">Deleting
    # 						an image</a> in the <i>Amazon ECR User Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteImageRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource to delete.</p>
    # @example Delete an image build version
    #   # The following example deletes the Image Builder image record for the specified build version - EC2 AMIs or ECR container images that the build created aren't removed.
    #   params = {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.delete_image(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "fd45526c-ec37-4345-8843-329e4268e00e",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.delete_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::DeleteImageResponse]
    def delete_image(params = {}, options = {})
      request = build_request(:delete_image, params)
      request.send_request(options)
    end

    # <p>Deletes an image pipeline. Images that the pipeline created aren't
    # 			deleted - remove those separately with <a>DeleteImage</a>. You
    # 			can delete a pipeline while a build that it started is still running. The
    # 			build continues independently.</p>
    # @param [Hash, Types::DeleteImagePipelineRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline to delete.</p>
    # @example Delete an image pipeline
    #   # The following example deletes an image pipeline.
    #   params = {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    #   options = {}
    #   response = client.delete_image_pipeline(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "0536e4e9-5331-493a-921e-e8f86d367043",
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #   }
    #   options = {}
    #   response = client.delete_image_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_pipeline_arn: "ImagePipelineArn"
    #   }
    # @return [Types::DeleteImagePipelineResponse]
    def delete_image_pipeline(params = {}, options = {})
      request = build_request(:delete_image_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes an image recipe.</p>
    # @param [Hash, Types::DeleteImageRecipeRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe to delete.</p>
    # @example Delete an image recipe
    #   # The following example deletes the specified image recipe version.
    #   params = {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0"
    #   }
    #   options = {}
    #   response = client.delete_image_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "a27ae6de-0adc-4cbb-9705-a4b8751857b8",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_image_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn"
    #   }
    # @return [Types::DeleteImageRecipeResponse]
    def delete_image_recipe(params = {}, options = {})
      request = build_request(:delete_image_recipe, params)
      request.send_request(options)
    end

    # <p>Deletes an infrastructure configuration. You can't delete a configuration
    # 			that an image pipeline still references. The request fails with
    # 			<code>ResourceDependencyException</code>. Update or delete the referencing
    # 			pipelines first.</p>
    # @param [Hash, Types::DeleteInfrastructureConfigurationRequest] params
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete.</p>
    # @example Delete an infrastructure configuration
    #   # The following example deletes the infrastructure configuration with the specified ARN.
    #   params = {
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure"
    #   }
    #   options = {}
    #   response = client.delete_infrastructure_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "fbae57f4-59fc-48ab-a25e-c67b0d9b454c",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_infrastructure_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn"
    #   }
    # @return [Types::DeleteInfrastructureConfigurationResponse]
    def delete_infrastructure_configuration(params = {}, options = {})
      request = build_request(:delete_infrastructure_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified lifecycle policy resource. Deleting the policy removes
    # 			its schedule, so no further lifecycle runs occur for that policy. If a
    # 			lifecycle execution is in progress for the policy, Image Builder cancels it. Deletion
    # 			doesn't revert actions that the policy already applied to your
    # 			resources.</p>
    # @param [Hash, Types::DeleteLifecyclePolicyRequest] params
    # @option params [String] :lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource to delete.</p>
    # @example Delete a lifecycle policy
    #   # The following example deletes the specified lifecycle policy.
    #   params = {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy"
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_policy(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_policy_arn: "LifecyclePolicyArn", # required
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_arn: "LifecyclePolicyArn"
    #   }
    # @return [Types::DeleteLifecyclePolicyResponse]
    def delete_lifecycle_policy(params = {}, options = {})
      request = build_request(:delete_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a specific workflow resource. You can't delete a workflow build
    # 			version while an image pipeline references it. The request fails with
    # 			<code>ResourceDependencyException</code>.</p>
    # @param [Hash, Types::DeleteWorkflowRequest] params
    # @option params [String] :workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource to delete.</p>
    # @example Delete a workflow build version
    #   # The following example deletes the workflow build version that the ARN specifies.
    #   params = {
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    #   response.to_h #=>
    #   {
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_build_version_arn: "WorkflowBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_build_version_arn: "WorkflowBuildVersionArn"
    #   }
    # @return [Types::DeleteWorkflowResponse]
    def delete_workflow(params = {}, options = {})
      request = build_request(:delete_workflow, params)
      request.send_request(options)
    end

    # <p>Distributes an existing AMI to target Regions and accounts without running
    # 			the full image build process. This operation only runs the distribution
    # 			phase on an image that has already been built.</p>
    # @param [Hash, Types::DistributeImageRequest] params
    # @option params [String] :source_image
    #   <p>The source image to distribute. You can specify the source in any of the
    #   			following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>An AMI ID.</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon Web Services Systems Manager Parameter Store reference, prefixed by
    #   					<code>ssm:</code>, followed by the parameter name or ARN.</p>
    #               </li>
    #               <li>
    #                  <p>An Image Builder image Amazon Resource Name (ARN). An image version ARN resolves to the latest
    #   					available build version.</p>
    #               </li>
    #            </ul>
    #            <p>Whichever format you use, the source must resolve to an AMI in the current
    #   			Amazon Web Services Region.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration. The configuration
    #   			defines target Regions, accounts, and AMI settings. The distribution
    #   			configuration must be in the same Region as this operation.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder assumes to distribute
    #   			the image.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the new Image Builder image resource that this operation
    #   			creates. To tag the output AMIs, use <code>amiTags</code> in the
    #   			distribution configuration.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>The logging configuration for the distribution.</p>
    # @example Distribute an existing AMI
    #   # The following example distributes an AMI that you own to the targets defined in the specified distribution configuration. It returns the ARN of a new Image Builder image resource that you can use with GetImage to monitor distribution progress.
    #   params = {
    #     source_image: "ami-1234567890abcdef0",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration",
    #     execution_role: "arn:aws:iam::111122223333:role/aws-service-role/imagebuilder.amazonaws.com/AWSServiceRoleForImageBuilder",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE86420"
    #   }
    #   options = {}
    #   response = client.distribute_image(params, options)
    #   response.to_h #=>
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE86420",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-source-ami/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source_image: "NonEmptyString", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #     execution_role: "RoleNameOrArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #     logging_configuration: {
    #       log_group_name: "LogGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.distribute_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::DistributeImageResponse]
    def distribute_image(params = {}, options = {})
      request = build_request(:distribute_image, params)
      request.send_request(options)
    end

    # <p>Retrieves a component object.</p>
    # @param [Hash, Types::GetComponentRequest] params
    # @option params [String] :component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that you want to get. You can specify a build
    #   			version ARN, or a component version ARN. The version can use the
    #   			<code>x</code> wildcard in trailing positions, for example
    #   			<code>1.0.x</code> or <code>1.x.x</code>. Version ARNs resolve to the
    #   			latest available matching component build version.</p>
    # @example Get the details of a component build version
    #   # The following example retrieves a component build version. The data field in the response contains the YAML document that defines the component.
    #   params = {
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.get_component(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "f5401098-035f-4be2-9eee-784c388ed04b",
    #     component: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1",
    #       name: "my-example-component",
    #       version: "1.0.0",
    #       description: "Installs the latest version of my application",
    #       change_description: "Initial version",
    #       type: BUILD,
    #       platform: Linux,
    #       state: {
    #         status: ACTIVE
    #       },
    #       owner: "111122223333",
    #       data: "name: InstallMyApp\ndescription: Installs my application\nschemaVersion: 1.0\nphases:\n  - name: build\n    steps:\n      - name: InstallApp\n        action: ExecuteBash\n        inputs:\n          commands:\n            - sudo yum -y install my-app\n",
    #       encrypted: true,
    #       date_created: "2026-09-09T18:31:30.404Z"
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     component_build_version_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.get_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     component: {
    #       arn: "ImageBuilderArn",
    #       name: "ResourceName",
    #       version: "VersionNumber",
    #       description: "NonEmptyString",
    #       change_description: "NonEmptyString",
    #       type: "BUILD" # One of: ["BUILD", "TEST"],
    #       platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #       supported_os_versions: ["OsVersion"],
    #       state: {
    #         status: "DEPRECATED" # One of: ["DEPRECATED", "DISABLED", "ACTIVE"],
    #         reason: "NonEmptyString"
    #       },
    #       parameters: [
    #         {
    #           name: "ComponentParameterName", # required
    #           type: "ComponentParameterType", # required
    #           default_value: ["ComponentParameterValue"],
    #           description: "ComponentParameterDescription"
    #         }
    #       ],
    #       owner: "NonEmptyString",
    #       data: "ComponentData",
    #       kms_key_id: "NonEmptyString",
    #       encrypted: false,
    #       date_created: "DateTime",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       publisher: "NonEmptyString",
    #       obfuscate: false,
    #       product_codes: [
    #         {
    #           product_code_id: "ProductCodeId", # required
    #           product_code_type: "marketplace" # One of: ["marketplace"], # required
    #         }
    #       ]
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::GetComponentResponse]
    def get_component(params = {}, options = {})
      request = build_request(:get_component, params)
      request.send_request(options)
    end

    # <p>Retrieves a component policy.</p>
    # @param [Hash, Types::GetComponentPolicyRequest] params
    # @option params [String] :component_arn
    #   <p>The Amazon Resource Name (ARN) of the component whose policy you want to
    #   			retrieve.</p>
    # @example Get the resource policy for a component
    #   # The following example retrieves the resource policy that's applied to a component that the owner shared with another account.
    #   params = {
    #     component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.get_component_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "cb458998-6e6f-442a-9325-78c730b80895",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetComponent\", \"imagebuilder:ListComponents\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1\"]}]}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     component_arn: "ComponentBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.get_component_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     policy: "ResourcePolicyDocument"
    #   }
    # @return [Types::GetComponentPolicyResponse]
    def get_component_policy(params = {}, options = {})
      request = build_request(:get_component_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves a container recipe.</p>
    # @param [Hash, Types::GetContainerRecipeRequest] params
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to retrieve.</p>
    # @example Get the details of a container recipe
    #   # The following example retrieves the details of the specified container recipe.
    #   params = {
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0"
    #   }
    #   options = {}
    #   response = client.get_container_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "15b03ca7-050f-46d4-945e-00232cff6b19",
    #     container_recipe: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0",
    #       container_type: DOCKER,
    #       name: "my-example-container-recipe",
    #       description: "A container recipe that installs my application on Amazon Linux",
    #       platform: Linux,
    #       owner: "111122223333",
    #       version: "1.0.0",
    #       components: [
    #         {
    #           component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-container-component/1.0.0/1"
    #         }
    #       ],
    #       dockerfile_template_data: "FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n",
    #       encrypted: true,
    #       parent_image: "amazonlinux:latest",
    #       date_created: "2026-09-09T19:32:53.983Z",
    #       target_repository: {
    #         service: ECR,
    #         repository_name: "my-example-container-repo"
    #       }
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #   }
    #   options = {}
    #   response = client.get_container_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     container_recipe: {
    #       arn: "ImageBuilderArn",
    #       container_type: "DOCKER" # One of: ["DOCKER"],
    #       name: "ResourceName",
    #       description: "NonEmptyString",
    #       platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #       owner: "NonEmptyString",
    #       version: "VersionNumber",
    #       components: [
    #         {
    #           component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #           parameters: [
    #             {
    #               name: "ComponentParameterName", # required
    #               value: ["ComponentParameterValue"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       instance_configuration: {
    #         image: "NonEmptyString",
    #         block_device_mappings: [
    #           {
    #             device_name: "NonEmptyString",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               kms_key_id: "NonEmptyString",
    #               snapshot_id: "NonEmptyString",
    #               volume_size: 1,
    #               volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"],
    #               throughput: 1
    #             },
    #             virtual_name: "NonEmptyString",
    #             no_device: "EmptyString"
    #           }
    #         ]
    #       },
    #       dockerfile_template_data: "DockerFileTemplate",
    #       kms_key_id: "NonEmptyString",
    #       encrypted: false,
    #       parent_image: "NonEmptyString",
    #       date_created: "DateTime",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       working_directory: "NonEmptyString",
    #       target_repository: {
    #         service: "ECR" # One of: ["ECR"], # required
    #         repository_name: "NonEmptyString", # required
    #       }
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::GetContainerRecipeResponse]
    def get_container_recipe(params = {}, options = {})
      request = build_request(:get_container_recipe, params)
      request.send_request(options)
    end

    # <p>Retrieves the policy for a container recipe.</p>
    # @param [Hash, Types::GetContainerRecipePolicyRequest] params
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe for the policy being
    #   			requested.</p>
    # @example Get the policy attached to a container recipe
    #   # The following example retrieves the resource policy for a container recipe that you shared with another AWS account. The policy property contains the resource-based policy document as a JSON-encoded string.
    #   params = {
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0"
    #   }
    #   options = {}
    #   response = client.get_container_recipe_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "1b8334a0-5ae7-4c3c-8092-5d589dab7a2b",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Sid\": \"AllowSharedAccountContainerRecipeAccess\", \"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetContainerRecipe\", \"imagebuilder:ListContainerRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0\"}]}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #   }
    #   options = {}
    #   response = client.get_container_recipe_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     policy: "ResourcePolicyDocument"
    #   }
    # @return [Types::GetContainerRecipePolicyResponse]
    def get_container_recipe_policy(params = {}, options = {})
      request = build_request(:get_container_recipe_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves a distribution configuration.</p>
    # @param [Hash, Types::GetDistributionConfigurationRequest] params
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			retrieve.</p>
    # @example Get the details of a distribution configuration
    #   # The following example retrieves a distribution configuration that distributes the output AMI to two Regions.
    #   params = {
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution"
    #   }
    #   options = {}
    #   response = client.get_distribution_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "2d0a8dc0-99d5-4d7a-af7a-d1aeafd71c2e",
    #     distribution_configuration: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution",
    #       name: "my-example-distribution",
    #       description: "Copies the output AMI to a second Region",
    #       distributions: [
    #         {
    #           region: "us-west-2",
    #           ami_distribution_configuration: {
    #             name: "my-example-image-{{ imagebuilder:buildDate }}"
    #           }
    #         },
    #         {
    #           region: "us-east-1",
    #           ami_distribution_configuration: {
    #             name: "my-example-image-{{ imagebuilder:buildDate }}"
    #           }
    #         }
    #       ],
    #       date_created: "2026-09-09T19:37:37.231Z",
    #       timeout_minutes: 720
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_distribution_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     distribution_configuration: {
    #       arn: "ImageBuilderArn",
    #       name: "ResourceName",
    #       description: "NonEmptyString",
    #       distributions: [
    #         {
    #           region: "NonEmptyString", # required
    #           ami_distribution_configuration: {
    #             name: "AmiNameString",
    #             description: "NonEmptyString",
    #             target_account_ids: ["AccountId"],
    #             ami_tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             kms_key_id: "NonEmptyString",
    #             launch_permission: {
    #               user_ids: ["AccountId"],
    #               user_groups: ["NonEmptyString"],
    #               organization_arns: ["OrganizationArn"],
    #               organizational_unit_arns: ["OrganizationalUnitArn"]
    #             }
    #           },
    #           container_distribution_configuration: {
    #             description: "NonEmptyString",
    #             container_tags: ["NonEmptyString"],
    #             target_repository: { # required
    #               service: "ECR" # One of: ["ECR"], # required
    #               repository_name: "NonEmptyString", # required
    #             }
    #           },
    #           license_configuration_arns: ["LicenseConfigurationArn"],
    #           launch_template_configurations: [
    #             {
    #               launch_template_id: "LaunchTemplateId", # required
    #               account_id: "AccountId",
    #               set_default_version: false
    #             }
    #           ],
    #           s3_export_configuration: {
    #             role_name: "NonEmptyString", # required
    #             disk_image_format: "VMDK" # One of: ["VMDK", "RAW", "VHD"], # required
    #             s3_bucket: "NonEmptyString", # required
    #             s3_prefix: "NonEmptyString"
    #           },
    #           fast_launch_configurations: [
    #             {
    #               enabled: false, # required
    #               snapshot_configuration: {
    #                 target_resource_count: 1
    #               },
    #               max_parallel_launches: 1,
    #               launch_template: {
    #                 launch_template_id: "LaunchTemplateId",
    #                 launch_template_name: "NonEmptyString",
    #                 launch_template_version: "NonEmptyString"
    #               },
    #               account_id: "AccountId"
    #             }
    #           ],
    #           ssm_parameter_configurations: [
    #             {
    #               ami_account_id: "AccountId",
    #               parameter_name: "SsmParameterName", # required
    #               data_type: "text" # One of: ["text", "aws:ec2:image"]
    #             }
    #           ]
    #         }
    #       ],
    #       timeout_minutes: 1, # required
    #       date_created: "DateTime",
    #       date_updated: "DateTime",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDistributionConfigurationResponse]
    def get_distribution_configuration(params = {}, options = {})
      request = build_request(:get_distribution_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves an image.</p>
    # @param [Hash, Types::GetImageRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to get. You can specify a full build
    #   			version ARN, or a version ARN with or without wildcards
    #   			(<code>x.x.x</code>, <code>1.x.x</code>, or <code>1.0.x</code>). A version or
    #   			wildcard ARN resolves to the latest matching build version that has reached
    #   			<code>AVAILABLE</code> status. Builds that were later deprecated, disabled,
    #   			or deleted don't resolve. To get an image in any other state, such as a
    #   			failed or in-progress build, specify the full build version ARN.</p>
    # @example Check the status of an image build
    #   # The following example retrieves an image build version to check its status while the build is running. The response is shortened to show a subset of the fields that Image Builder returns.
    #   params = {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.get_image(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "4be892f0-e1d1-47f9-8bc1-d08ec5dec640",
    #     image: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #       type: AMI,
    #       name: "my-example-recipe",
    #       version: "1.0.0/1",
    #       platform: Linux,
    #       enhanced_image_metadata_enabled: true,
    #       state: {
    #         status: BUILDING
    #       },
    #       source_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #       date_created: "2026-09-03T05:44:21.121Z"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_build_version_arn: "ImageVersionArnOrBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.get_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image: {
    #       arn: "ImageBuilderArn",
    #       type: "AMI" # One of: ["AMI", "DOCKER"],
    #       name: "ResourceName",
    #       version: "VersionNumberWithBuild",
    #       platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #       enhanced_image_metadata_enabled: false,
    #       os_version: "OsVersion",
    #       state: {
    #         status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #         reason: "NonEmptyString",
    #         failure_context: {
    #           image_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #           workflow_execution_id: "WorkflowExecutionId",
    #           workflow_arn: "WorkflowBuildVersionArn",
    #           step_execution_id: "WorkflowStepExecutionId",
    #           failed_step: "WorkflowStepName",
    #           component_failure: {
    #             component_arn: "ComponentBuildVersionArn",
    #             phase_name: "NonEmptyString",
    #             step_name: "NonEmptyString",
    #             action: "NonEmptyString",
    #             error_message: "NonEmptyMaxLengthString"
    #           },
    #           distribution_failure: {
    #             error_message: "NonEmptyMaxLengthString",
    #             region_failures: [
    #               {
    #                 region: "NonEmptyString",
    #                 status: "FAILED" # One of: ["FAILED", "CANCELLED", "TIMED_OUT"],
    #                 image_configuration_step: "ASSOCIATE_LICENSES" # One of: ["ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"],
    #                 error_message: "NonEmptyMaxLengthString",
    #                 target_account_id: "AccountId"
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       image_recipe: {
    #         arn: "ImageBuilderArn",
    #         type: "AMI" # One of: ["AMI", "DOCKER"],
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         owner: "NonEmptyString",
    #         version: "VersionNumber",
    #         components: [
    #           {
    #             component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #             parameters: [
    #               {
    #                 name: "ComponentParameterName", # required
    #                 value: ["ComponentParameterValue"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         parent_image: "NonEmptyString",
    #         block_device_mappings: [
    #           {
    #             device_name: "NonEmptyString",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               kms_key_id: "NonEmptyString",
    #               snapshot_id: "NonEmptyString",
    #               volume_size: 1,
    #               volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"],
    #               throughput: 1
    #             },
    #             virtual_name: "NonEmptyString",
    #             no_device: "EmptyString"
    #           }
    #         ],
    #         date_created: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         working_directory: "NonEmptyString",
    #         additional_instance_configuration: {
    #           systems_manager_agent: {
    #             uninstall_after_build: false
    #           },
    #           user_data_override: "UserDataOverride"
    #         },
    #         ami_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         ami_watermarks: ["AmiWatermarkName"]
    #       },
    #       container_recipe: {
    #         arn: "ImageBuilderArn",
    #         container_type: "DOCKER" # One of: ["DOCKER"],
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         owner: "NonEmptyString",
    #         version: "VersionNumber",
    #         components: [
    #           {
    #             component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #             parameters: [
    #               {
    #                 name: "ComponentParameterName", # required
    #                 value: ["ComponentParameterValue"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         instance_configuration: {
    #           image: "NonEmptyString",
    #           block_device_mappings: [
    #             {
    #               device_name: "NonEmptyString",
    #               ebs: {
    #                 encrypted: false,
    #                 delete_on_termination: false,
    #                 iops: 1,
    #                 kms_key_id: "NonEmptyString",
    #                 snapshot_id: "NonEmptyString",
    #                 volume_size: 1,
    #                 volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"],
    #                 throughput: 1
    #               },
    #               virtual_name: "NonEmptyString",
    #               no_device: "EmptyString"
    #             }
    #           ]
    #         },
    #         dockerfile_template_data: "DockerFileTemplate",
    #         kms_key_id: "NonEmptyString",
    #         encrypted: false,
    #         parent_image: "NonEmptyString",
    #         date_created: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         working_directory: "NonEmptyString",
    #         target_repository: {
    #           service: "ECR" # One of: ["ECR"], # required
    #           repository_name: "NonEmptyString", # required
    #         }
    #       },
    #       source_pipeline_name: "ResourceName",
    #       source_pipeline_arn: "Arn",
    #       infrastructure_configuration: {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         instance_types: ["InstanceType"],
    #         instance_profile_name: "InstanceProfileNameType",
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_id: "NonEmptyString",
    #         logging: {
    #           s3_logs: {
    #             s3_bucket_name: "NonEmptyString",
    #             s3_key_prefix: "NonEmptyString"
    #           }
    #         },
    #         key_pair: "NonEmptyString",
    #         terminate_instance_on_failure: false,
    #         sns_topic_arn: "NonEmptyString",
    #         date_created: "DateTime",
    #         date_updated: "DateTime",
    #         resource_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         instance_metadata_options: {
    #           http_tokens: "HttpTokens",
    #           http_put_response_hop_limit: 1
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         placement: {
    #           availability_zone: "NonEmptyString",
    #           tenancy: "default" # One of: ["default", "dedicated", "host"],
    #           host_id: "NonEmptyString",
    #           host_resource_group_arn: "NonEmptyString"
    #         },
    #         terminate_instance_on_completion: false,
    #         parent_instance: {
    #           auto_scaling_group: { # required
    #             name: "NonEmptyString", # required
    #             capacity_wait_timeout_seconds: 1
    #           }
    #         }
    #       },
    #       distribution_configuration: {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         distributions: [
    #           {
    #             region: "NonEmptyString", # required
    #             ami_distribution_configuration: {
    #               name: "AmiNameString",
    #               description: "NonEmptyString",
    #               target_account_ids: ["AccountId"],
    #               ami_tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               kms_key_id: "NonEmptyString",
    #               launch_permission: {
    #                 user_ids: ["AccountId"],
    #                 user_groups: ["NonEmptyString"],
    #                 organization_arns: ["OrganizationArn"],
    #                 organizational_unit_arns: ["OrganizationalUnitArn"]
    #               }
    #             },
    #             container_distribution_configuration: {
    #               description: "NonEmptyString",
    #               container_tags: ["NonEmptyString"],
    #               target_repository: { # required
    #                 service: "ECR" # One of: ["ECR"], # required
    #                 repository_name: "NonEmptyString", # required
    #               }
    #             },
    #             license_configuration_arns: ["LicenseConfigurationArn"],
    #             launch_template_configurations: [
    #               {
    #                 launch_template_id: "LaunchTemplateId", # required
    #                 account_id: "AccountId",
    #                 set_default_version: false
    #               }
    #             ],
    #             s3_export_configuration: {
    #               role_name: "NonEmptyString", # required
    #               disk_image_format: "VMDK" # One of: ["VMDK", "RAW", "VHD"], # required
    #               s3_bucket: "NonEmptyString", # required
    #               s3_prefix: "NonEmptyString"
    #             },
    #             fast_launch_configurations: [
    #               {
    #                 enabled: false, # required
    #                 snapshot_configuration: {
    #                   target_resource_count: 1
    #                 },
    #                 max_parallel_launches: 1,
    #                 launch_template: {
    #                   launch_template_id: "LaunchTemplateId",
    #                   launch_template_name: "NonEmptyString",
    #                   launch_template_version: "NonEmptyString"
    #                 },
    #                 account_id: "AccountId"
    #               }
    #             ],
    #             ssm_parameter_configurations: [
    #               {
    #                 ami_account_id: "AccountId",
    #                 parameter_name: "SsmParameterName", # required
    #                 data_type: "text" # One of: ["text", "aws:ec2:image"]
    #               }
    #             ]
    #           }
    #         ],
    #         timeout_minutes: 1, # required
    #         date_created: "DateTime",
    #         date_updated: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       image_tests_configuration: {
    #         image_tests_enabled: false,
    #         timeout_minutes: 1
    #       },
    #       date_created: "DateTime",
    #       output_resources: {
    #         amis: [
    #           {
    #             region: "NonEmptyString",
    #             image: "NonEmptyString",
    #             name: "NonEmptyString",
    #             description: "NonEmptyString",
    #             state: {
    #               status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #               reason: "NonEmptyString",
    #               failure_context: {
    #                 image_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #                 workflow_execution_id: "WorkflowExecutionId",
    #                 workflow_arn: "WorkflowBuildVersionArn",
    #                 step_execution_id: "WorkflowStepExecutionId",
    #                 failed_step: "WorkflowStepName",
    #                 component_failure: {
    #                   component_arn: "ComponentBuildVersionArn",
    #                   phase_name: "NonEmptyString",
    #                   step_name: "NonEmptyString",
    #                   action: "NonEmptyString",
    #                   error_message: "NonEmptyMaxLengthString"
    #                 },
    #                 distribution_failure: {
    #                   error_message: "NonEmptyMaxLengthString",
    #                   region_failures: [
    #                     {
    #                       region: "NonEmptyString",
    #                       status: "FAILED" # One of: ["FAILED", "CANCELLED", "TIMED_OUT"],
    #                       image_configuration_step: "ASSOCIATE_LICENSES" # One of: ["ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"],
    #                       error_message: "NonEmptyMaxLengthString",
    #                       target_account_id: "AccountId"
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             account_id: "NonEmptyString"
    #           }
    #         ],
    #         containers: [
    #           {
    #             region: "NonEmptyString",
    #             image_uris: ["NonEmptyString"]
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       build_type: "USER_INITIATED" # One of: ["USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"],
    #       image_source: "AMAZON_MANAGED" # One of: ["AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"],
    #       scan_state: {
    #         status: "PENDING" # One of: ["PENDING", "SCANNING", "COLLECTING", "COMPLETED", "ABANDONED", "FAILED", "TIMED_OUT"],
    #         reason: "NonEmptyString"
    #       },
    #       image_scanning_configuration: {
    #         image_scanning_enabled: false,
    #         ecr_configuration: {
    #           repository_name: "NonEmptyString",
    #           container_tags: ["NonEmptyString"]
    #         }
    #       },
    #       deprecation_time: Time.now,
    #       lifecycle_execution_id: "LifecycleExecutionId",
    #       execution_role: "RoleNameOrArn",
    #       workflows: [
    #         {
    #           workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #           parameters: [
    #             {
    #               name: "WorkflowParameterName", # required
    #               value: ["WorkflowParameterValue"], # required
    #             }
    #           ],
    #           parallel_group: "ParallelGroup",
    #           on_failure: "CONTINUE" # One of: ["CONTINUE", "ABORT"]
    #         }
    #       ],
    #       logging_configuration: {
    #         log_group_name: "LogGroupName"
    #       }
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::GetImageResponse]
    def get_image(params = {}, options = {})
      request = build_request(:get_image, params)
      request.send_request(options)
    end

    # <p>Retrieves an image pipeline.</p>
    # @param [Hash, Types::GetImagePipelineRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve.</p>
    # @example Get the details of an image pipeline
    #   # The following example retrieves an image pipeline that builds a new image every Sunday, including the image tests configuration and schedule start condition defaults that Image Builder applied at creation.
    #   params = {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    #   options = {}
    #   response = client.get_image_pipeline(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "b7e58d62-36dc-43a5-87ff-546e04cdabf1",
    #     image_pipeline: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #       name: "my-example-pipeline",
    #       description: "Builds an Amazon Linux 2023 image every Sunday",
    #       platform: Linux,
    #       enhanced_image_metadata_enabled: true,
    #       image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #       infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #       image_tests_configuration: {
    #         image_tests_enabled: true,
    #         timeout_minutes: 720
    #       },
    #       schedule: {
    #         schedule_expression: "cron(0 0 ? * SUN *)",
    #         pipeline_execution_start_condition: EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #       },
    #       status: ENABLED,
    #       date_created: "2026-09-09T19:38:26.574Z",
    #       date_updated: "2026-09-09T19:38:26.574Z"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #   }
    #   options = {}
    #   response = client.get_image_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_pipeline: {
    #       arn: "ImageBuilderArn",
    #       name: "ResourceName",
    #       description: "NonEmptyString",
    #       platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #       enhanced_image_metadata_enabled: false,
    #       image_recipe_arn: "Arn",
    #       container_recipe_arn: "Arn",
    #       infrastructure_configuration_arn: "Arn",
    #       distribution_configuration_arn: "Arn",
    #       image_tests_configuration: {
    #         image_tests_enabled: false,
    #         timeout_minutes: 1
    #       },
    #       schedule: {
    #         schedule_expression: "NonEmptyString",
    #         timezone: "Timezone",
    #         pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY" # One of: ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"],
    #         auto_disable_policy: {
    #           failure_count: 1, # required
    #         }
    #       },
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #       date_created: "DateTime",
    #       date_updated: "DateTime",
    #       date_last_run: "DateTime",
    #       last_run_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #       date_next_run: "DateTime",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       image_scanning_configuration: {
    #         image_scanning_enabled: false,
    #         ecr_configuration: {
    #           repository_name: "NonEmptyString",
    #           container_tags: ["NonEmptyString"]
    #         }
    #       },
    #       image_tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       execution_role: "RoleNameOrArn",
    #       workflows: [
    #         {
    #           workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #           parameters: [
    #             {
    #               name: "WorkflowParameterName", # required
    #               value: ["WorkflowParameterValue"], # required
    #             }
    #           ],
    #           parallel_group: "ParallelGroup",
    #           on_failure: "CONTINUE" # One of: ["CONTINUE", "ABORT"]
    #         }
    #       ],
    #       logging_configuration: {
    #         image_log_group_name: "LogGroupName",
    #         pipeline_log_group_name: "LogGroupName"
    #       },
    #       consecutive_failures: 1
    #     }
    #   }
    # @return [Types::GetImagePipelineResponse]
    def get_image_pipeline(params = {}, options = {})
      request = build_request(:get_image_pipeline, params)
      request.send_request(options)
    end

    # <p>Retrieves an image policy.</p>
    # @param [Hash, Types::GetImagePolicyRequest] params
    # @option params [String] :image_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve.</p>
    # @example Retrieve the resource policy for an image
    #   # The following example retrieves the resource policy for an image build version that was shared with account 444455556666.
    #   params = {
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.get_image_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "bc0c8348-c0d9-452a-af20-2640430df585",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImage\", \"imagebuilder:ListImages\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1\"]}]}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_arn: "ImageBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.get_image_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     policy: "ResourcePolicyDocument"
    #   }
    # @return [Types::GetImagePolicyResponse]
    def get_image_policy(params = {}, options = {})
      request = build_request(:get_image_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves an image recipe.</p>
    # @param [Hash, Types::GetImageRecipeRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve. You can use the
    #   			<code>x</code> wildcard in trailing version positions to retrieve the latest
    #   			matching version, for example <code>x.x.x</code> or <code>1.x.x</code>.</p>
    # @example Get the details of an image recipe
    #   # The following example retrieves the full definition of an image recipe, including the components it applies and the base image it builds on.
    #   params = {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.0"
    #   }
    #   options = {}
    #   response = client.get_image_recipe(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "adb3ff9a-df84-4b4e-8ecf-11d38281ead7",
    #     image_recipe: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.0",
    #       name: "my-example-app-recipe",
    #       description: "An image recipe that installs my application on Amazon Linux 2023",
    #       platform: Linux,
    #       owner: "111122223333",
    #       version: "1.0.0",
    #       components: [
    #         {
    #           component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-app/1.0.0/1"
    #         }
    #       ],
    #       parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x",
    #       date_created: "2026-09-09T19:30:21.183Z",
    #       working_directory: "/tmp"
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   }
    #   options = {}
    #   response = client.get_image_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_recipe: {
    #       arn: "ImageBuilderArn",
    #       type: "AMI" # One of: ["AMI", "DOCKER"],
    #       name: "ResourceName",
    #       description: "NonEmptyString",
    #       platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #       owner: "NonEmptyString",
    #       version: "VersionNumber",
    #       components: [
    #         {
    #           component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #           parameters: [
    #             {
    #               name: "ComponentParameterName", # required
    #               value: ["ComponentParameterValue"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       parent_image: "NonEmptyString",
    #       block_device_mappings: [
    #         {
    #           device_name: "NonEmptyString",
    #           ebs: {
    #             encrypted: false,
    #             delete_on_termination: false,
    #             iops: 1,
    #             kms_key_id: "NonEmptyString",
    #             snapshot_id: "NonEmptyString",
    #             volume_size: 1,
    #             volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"],
    #             throughput: 1
    #           },
    #           virtual_name: "NonEmptyString",
    #           no_device: "EmptyString"
    #         }
    #       ],
    #       date_created: "DateTime",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       working_directory: "NonEmptyString",
    #       additional_instance_configuration: {
    #         systems_manager_agent: {
    #           uninstall_after_build: false
    #         },
    #         user_data_override: "UserDataOverride"
    #       },
    #       ami_tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       ami_watermarks: ["AmiWatermarkName"]
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::GetImageRecipeResponse]
    def get_image_recipe(params = {}, options = {})
      request = build_request(:get_image_recipe, params)
      request.send_request(options)
    end

    # <p>Retrieves an image recipe policy.</p>
    # @param [Hash, Types::GetImageRecipePolicyRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to
    #   			retrieve.</p>
    # @example Get the resource policy for an image recipe
    #   # The following example retrieves the resource policy that's applied to the specified image recipe.
    #   params = {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0"
    #   }
    #   options = {}
    #   response = client.get_image_recipe_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "0cf42efc-4b2c-4ba3-b6e3-542a796fffaf",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImageRecipe\", \"imagebuilder:ListImageRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0\"}]}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   }
    #   options = {}
    #   response = client.get_image_recipe_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     policy: "ResourcePolicyDocument"
    #   }
    # @return [Types::GetImageRecipePolicyResponse]
    def get_image_recipe_policy(params = {}, options = {})
      request = build_request(:get_image_recipe_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves an infrastructure configuration.</p>
    # @param [Hash, Types::GetInfrastructureConfigurationRequest] params
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			retrieve.</p>
    # @example Get the details of an infrastructure configuration
    #   # The following example retrieves an infrastructure configuration that specifies the instance types, instance profile, and instance metadata options that Image Builder uses for build and test instances.
    #   params = {
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure-configuration"
    #   }
    #   options = {}
    #   response = client.get_infrastructure_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "7ba25cd0-0735-4f44-bc67-2f231e96503f",
    #     infrastructure_configuration: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure-configuration",
    #       name: "my-example-infrastructure-configuration",
    #       description: "Infrastructure configuration for my application image builds",
    #       instance_types: [
    #         "m5.large",
    #         "m5.xlarge"
    #       ],
    #       instance_profile_name: "EC2InstanceProfileForImageBuilder",
    #       terminate_instance_on_failure: true,
    #       date_created: "2026-09-09T19:36:48.933Z",
    #       resource_tags: {
    #         "CostCenter" => "12345"
    #       },
    #       instance_metadata_options: {
    #         http_tokens: "required",
    #         http_put_response_hop_limit: 2
    #       },
    #       tags: {
    #         "Environment" => "test"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_infrastructure_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     infrastructure_configuration: {
    #       arn: "ImageBuilderArn",
    #       name: "ResourceName",
    #       description: "NonEmptyString",
    #       instance_types: ["InstanceType"],
    #       instance_profile_name: "InstanceProfileNameType",
    #       security_group_ids: ["NonEmptyString"],
    #       subnet_id: "NonEmptyString",
    #       logging: {
    #         s3_logs: {
    #           s3_bucket_name: "NonEmptyString",
    #           s3_key_prefix: "NonEmptyString"
    #         }
    #       },
    #       key_pair: "NonEmptyString",
    #       terminate_instance_on_failure: false,
    #       sns_topic_arn: "NonEmptyString",
    #       date_created: "DateTime",
    #       date_updated: "DateTime",
    #       resource_tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       instance_metadata_options: {
    #         http_tokens: "HttpTokens",
    #         http_put_response_hop_limit: 1
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       placement: {
    #         availability_zone: "NonEmptyString",
    #         tenancy: "default" # One of: ["default", "dedicated", "host"],
    #         host_id: "NonEmptyString",
    #         host_resource_group_arn: "NonEmptyString"
    #       },
    #       terminate_instance_on_completion: false,
    #       parent_instance: {
    #         auto_scaling_group: { # required
    #           name: "NonEmptyString", # required
    #           capacity_wait_timeout_seconds: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetInfrastructureConfigurationResponse]
    def get_infrastructure_configuration(params = {}, options = {})
      request = build_request(:get_infrastructure_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves runtime information for a lifecycle execution – a single run of
    # 			lifecycle actions that a lifecycle policy or a
    # 			<a>StartResourceStateUpdate</a> request started.</p>
    # @param [Hash, Types::GetLifecycleExecutionRequest] params
    # @option params [String] :lifecycle_execution_id
    #   <p>The unique identifier for a runtime instance of the lifecycle policy.</p>
    # @example Get the details of a lifecycle execution
    #   # The following example retrieves the runtime status of the specified lifecycle execution. If the execution was started by StartResourceStateUpdate rather than a lifecycle policy run, the response doesn't include the lifecyclePolicyArn field.
    #   params = {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503"
    #   }
    #   options = {}
    #   response = client.get_lifecycle_execution(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_execution: {
    #       lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503",
    #       resources_impacted_summary: {
    #         has_impacted_resources: false
    #       },
    #       state: {
    #         status: IN_PROGRESS
    #       },
    #       start_time: Time.parse("2026-09-09T21:42:29Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_execution_id: "LifecycleExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_lifecycle_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_execution: {
    #       lifecycle_execution_id: "LifecycleExecutionId",
    #       lifecycle_policy_arn: "LifecyclePolicyArn",
    #       resources_impacted_summary: {
    #         has_impacted_resources: false
    #       },
    #       state: {
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "PENDING"],
    #         reason: "NonEmptyString"
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::GetLifecycleExecutionResponse]
    def get_lifecycle_execution(params = {}, options = {})
      request = build_request(:get_lifecycle_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified image lifecycle policy.</p>
    # @param [Hash, Types::GetLifecyclePolicyRequest] params
    # @option params [String] :lifecycle_policy_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the image lifecycle policy resource to get.</p>
    # @example Get the details of a lifecycle policy
    #   # The following example retrieves the full definition of the specified lifecycle policy.
    #   params = {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy"
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policy(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_policy: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy",
    #       name: "my-example-lifecycle-policy",
    #       description: "Deletes AMIs and snapshots for builds older than six months, keeping at least the five most recent",
    #       status: ENABLED,
    #       execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role",
    #       resource_type: AMI_IMAGE,
    #       policy_details: [
    #         {
    #           action: {
    #             type: DELETE,
    #             include_resources: {
    #               amis: true,
    #               snapshots: true
    #             }
    #           },
    #           filter: {
    #             type: AGE,
    #             value: 6,
    #             unit: MONTHS,
    #             retain_at_least: 5
    #           }
    #         }
    #       ],
    #       resource_selection: {
    #         tag_map: {
    #           "Environment" => "my-example-environment"
    #         }
    #       },
    #       date_created: Time.parse("2026-09-09T19:34:38Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_policy_arn: "LifecyclePolicyArn", # required
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy: {
    #       arn: "LifecyclePolicyArn",
    #       name: "ResourceName",
    #       description: "NonEmptyString",
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #       execution_role: "RoleNameOrArn",
    #       resource_type: "AMI_IMAGE" # One of: ["AMI_IMAGE", "CONTAINER_IMAGE"],
    #       policy_details: [
    #         {
    #           action: { # required
    #             type: "DELETE" # One of: ["DELETE", "DEPRECATE", "DISABLE"], # required
    #             include_resources: {
    #               amis: false,
    #               snapshots: false,
    #               containers: false
    #             }
    #           },
    #           filter: { # required
    #             type: "AGE" # One of: ["AGE", "COUNT"], # required
    #             value: 1, # required
    #             unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"],
    #             retain_at_least: 1
    #           },
    #           exclusion_rules: {
    #             tag_map: {
    #               "TagKey" => "TagValue"
    #             },
    #             amis: {
    #               is_public: false,
    #               regions: ["NonEmptyString"],
    #               shared_accounts: ["AccountId"],
    #               last_launched: {
    #                 value: 1, # required
    #                 unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               },
    #               tag_map: {
    #                 "TagKey" => "TagValue"
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       resource_selection: {
    #         recipes: [
    #           {
    #             name: "ResourceName", # required
    #             semantic_version: "WildcardVersionNumber", # required
    #           }
    #         ],
    #         tag_map: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       date_created: Time.now,
    #       date_updated: Time.now,
    #       date_last_run: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetLifecyclePolicyResponse]
    def get_lifecycle_policy(params = {}, options = {})
      request = build_request(:get_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Verifies the subscription and performs resource dependency checks on the
    # 			requested Amazon Web Services Marketplace resource. The caller must be entitled to the resource. For
    # 			Amazon Web Services Marketplace components, the response contains fields to download the components
    # 			and their artifacts.</p>
    # @param [Hash, Types::GetMarketplaceResourceRequest] params
    # @option params [String] :resource_type
    #   <p>Specifies which type of Amazon Web Services Marketplace resource Image Builder retrieves.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an Amazon Web Services Marketplace resource.</p>
    # @option params [String] :resource_location
    #   <p>The Amazon S3 location of the component artifact to retrieve, in
    #   			<code>s3://bucket/key</code> form.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "COMPONENT_DATA" # One of: ["COMPONENT_DATA", "COMPONENT_ARTIFACT"], # required
    #     resource_arn: "ImageBuilderArn", # required
    #     resource_location: "MarketplaceResourceLocation"
    #   }
    #   options = {}
    #   response = client.get_marketplace_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ImageBuilderArn",
    #     url: "NonEmptyString",
    #     data: "NonEmptyString"
    #   }
    # @return [Types::GetMarketplaceResourceResponse]
    def get_marketplace_resource(params = {}, options = {})
      request = build_request(:get_marketplace_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves a workflow resource object.</p>
    # @param [Hash, Types::GetWorkflowRequest] params
    # @option params [String] :workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that you want to get. You can specify a
    #   			build version ARN, or a version ARN with or without wildcards (<code>x</code>)
    #   			in its version segments. Image Builder resolves version and wildcard ARNs to the most
    #   			recent matching build version.</p>
    # @example Get the details of a workflow build version
    #   # The following example retrieves a workflow build version. The response includes the YAML workflow document in the data field and the parameters that Image Builder extracted from it when the workflow was created.
    #   params = {
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    #   response.to_h #=>
    #   {
    #     workflow: {
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1",
    #       name: "my-example-workflow",
    #       version: "1.0.0",
    #       description: "Builds an AMI, and then waits for an external action before the workflow completes",
    #       change_description: "Initial version",
    #       type: BUILD,
    #       owner: "111122223333",
    #       data: "name: my-example-workflow\ndescription: Workflow to build an AMI, then wait for an external action before it completes\nschemaVersion: 1.0\n\nparameters:\n  - name: waitForActionAtEnd\n    type: boolean\n    default: true\n\nsteps:\n  - name: LaunchBuildInstance\n    action: LaunchInstance\n    onFailure: Abort\n    inputs:\n      waitFor: \"ssmAgent\"\n\n  - name: ApplyBuildComponents\n    action: ExecuteComponents\n    onFailure: Abort\n    inputs:\n      instanceId.$: \"$.stepOutputs.LaunchBuildInstance.instanceId\"\n\n  - name: CreateOutputAMI\n    action: CreateImage\n    onFailure: Abort\n    inputs:\n      instanceId.$: \"$.stepOutputs.LaunchBuildInstance.instanceId\"\n\n  - name: TerminateBuildInstance\n    action: TerminateInstance\n    onFailure: Continue\n    inputs:\n      instanceId.$: \"$.stepOutputs.LaunchBuildInstance.instanceId\"\n\n  - name: WaitForActionAtEnd\n    action: WaitForAction\n    if:\n      booleanEquals: true\n      value: \"$.parameters.waitForActionAtEnd\"\n",
    #       date_created: "2026-09-09T19:55:55.731Z",
    #       parameters: [
    #         {
    #           name: "waitForActionAtEnd",
    #           type: "boolean",
    #           default_value: [
    #             "true"
    #           ]
    #         }
    #       ]
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/x.x.x",
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.x.x",
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.x",
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_build_version_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow: {
    #       arn: "WorkflowBuildVersionArn",
    #       name: "ResourceName",
    #       version: "VersionNumber",
    #       description: "NonEmptyString",
    #       change_description: "NonEmptyString",
    #       type: "BUILD" # One of: ["BUILD", "TEST", "DISTRIBUTION"],
    #       state: {
    #         status: "DEPRECATED" # One of: ["DEPRECATED"],
    #         reason: "NonEmptyString"
    #       },
    #       owner: "NonEmptyString",
    #       data: "WorkflowData",
    #       kms_key_id: "NonEmptyString",
    #       date_created: "DateTime",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       parameters: [
    #         {
    #           name: "WorkflowParameterName", # required
    #           type: "WorkflowParameterType", # required
    #           default_value: ["WorkflowParameterValue"],
    #           description: "WorkflowParameterDescription"
    #         }
    #       ]
    #     },
    #     latest_version_references: {
    #       latest_version_arn: "ImageBuilderArn",
    #       latest_major_version_arn: "ImageBuilderArn",
    #       latest_minor_version_arn: "ImageBuilderArn",
    #       latest_patch_version_arn: "ImageBuilderArn"
    #     }
    #   }
    # @return [Types::GetWorkflowResponse]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Retrieves runtime information for a specific runtime instance
    # 			of the workflow.</p>
    # @param [Hash, Types::GetWorkflowExecutionRequest] params
    # @option params [String] :workflow_execution_id
    #   <p>Use the unique identifier for a runtime instance of the workflow to get
    #   			runtime details.</p>
    # @example Get the runtime details for a workflow execution
    #   # The following example retrieves runtime status and step counts for the build workflow that ran for an image build version, using the workflow execution ID returned by ListWorkflowExecutions.
    #   params = {
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908"
    #   }
    #   options = {}
    #   response = client.get_workflow_execution(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "cd69c813-51c3-4261-8e59-382a1af96f73",
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1",
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     type: BUILD,
    #     status: COMPLETED,
    #     total_step_count: 7,
    #     total_steps_succeeded: 5,
    #     total_steps_failed: 0,
    #     total_steps_skipped: 2,
    #     start_time: "2026-09-09T19:12:23.175Z",
    #     end_time: "2026-09-09T19:19:06.158Z"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_execution_id: "WorkflowExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     workflow_build_version_arn: "WorkflowBuildVersionArn",
    #     workflow_execution_id: "WorkflowExecutionId",
    #     image_build_version_arn: "ImageBuildVersionArn",
    #     type: "BUILD" # One of: ["BUILD", "TEST", "DISTRIBUTION"],
    #     status: "PENDING" # One of: ["PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETED", "CANCELLED"],
    #     message: "WorkflowExecutionMessage",
    #     total_step_count: 1,
    #     total_steps_succeeded: 1,
    #     total_steps_failed: 1,
    #     total_steps_skipped: 1,
    #     start_time: "DateTime",
    #     end_time: "DateTime",
    #     parallel_group: "ParallelGroup"
    #   }
    # @return [Types::GetWorkflowExecutionResponse]
    def get_workflow_execution(params = {}, options = {})
      request = build_request(:get_workflow_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves runtime information for a specific runtime instance of
    # 			the workflow step.</p>
    # @param [Hash, Types::GetWorkflowStepExecutionRequest] params
    # @option params [String] :step_execution_id
    #   <p>The unique identifier for the runtime instance of the workflow step that you
    #   			want to get runtime details for. To get the identifiers for the steps that ran
    #   			in a workflow, call <a>ListWorkflowStepExecutions</a>.</p>
    # @example Get the runtime details of a workflow step
    #   # The following example retrieves runtime details for the step that launched the build instance during an image build, with the step's input parameters and output values returned as JSON-encoded strings.
    #   params = {
    #     step_execution_id: "step-2e6fef0d-657c-4b7e-8706-ff24da9afa01"
    #   }
    #   options = {}
    #   response = client.get_workflow_step_execution(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "9ba63d27-9568-4ea3-bfed-6b1ad4c09200",
    #     step_execution_id: "step-2e6fef0d-657c-4b7e-8706-ff24da9afa01",
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1",
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     name: "LaunchBuildInstance",
    #     action: "LaunchInstance",
    #     status: COMPLETED,
    #     inputs: "{\"waitFor\": \"ssmAgent\"}",
    #     outputs: "{\"instanceId\": \"i-1234567890abcdef0\"}",
    #     start_time: "2026-09-09T19:12:23.418Z",
    #     end_time: "2026-09-09T19:14:50.822Z",
    #     on_failure: "Abort",
    #     timeout_seconds: 4500
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     step_execution_id: "WorkflowStepExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_step_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     step_execution_id: "WorkflowStepExecutionId",
    #     workflow_build_version_arn: "WorkflowBuildVersionArn",
    #     workflow_execution_id: "WorkflowExecutionId",
    #     image_build_version_arn: "ImageBuildVersionArn",
    #     name: "WorkflowStepName",
    #     description: "WorkflowStepDescription",
    #     action: "WorkflowStepAction",
    #     status: "PENDING" # One of: ["PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"],
    #     rollback_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "SKIPPED", "FAILED"],
    #     message: "WorkflowStepMessage",
    #     inputs: "WorkflowStepInputs",
    #     outputs: "WorkflowStepOutputs",
    #     start_time: "DateTime",
    #     end_time: "DateTime",
    #     on_failure: "NonEmptyString",
    #     timeout_seconds: 1,
    #     attempt_number: 1,
    #     max_attempts: 1
    #   }
    # @return [Types::GetWorkflowStepExecutionResponse]
    def get_workflow_step_execution(params = {}, options = {})
      request = build_request(:get_workflow_step_execution, params)
      request.send_request(options)
    end

    # <p>Imports a component and transforms its data into a component document. For
    # 			the <code>SHELL</code> format, Image Builder wraps your script in a component
    # 			document with a single step that runs the script.</p>
    # @param [Hash, Types::ImportComponentRequest] params
    # @option params [String] :name
    #   <p>The name of the component. Image Builder generates the component ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. If a component with the same name and
    #   			semantic version already exists in your account in the same Amazon Web Services Region,
    #   			the request creates a new build version for it. If the content is also
    #   			identical to the latest build version, the request fails because the
    #   			component already exists.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [String] :description
    #   <p>The description of the component. Describes the contents of the component.</p>
    # @option params [String] :change_description
    #   <p>The change description of the component. This description indicates the change that
    #   			has been made in this version, or what makes this version different from other versions
    #   			of the component.</p>
    # @option params [String] :type
    #   <p>The type of the component denotes whether the component is used to build the image, or
    #   			only to test it.</p>
    # @option params [String] :format
    #   <p>The format of the resource that you want to import as a component.</p>
    # @option params [String] :platform
    #   <p>The platform of the component.</p>
    # @option params [String] :data
    #   <p>The data of the component. For the <code>SHELL</code> format, this is the
    #   			plain script content. You must specify exactly one of the <code>data</code>
    #   			or <code>uri</code> properties. For scripts that exceed the inline length
    #   			constraint, use the <code>uri</code> property.</p>
    # @option params [String] :uri
    #   <p>The uri of the component. Must be an Amazon S3 URL and you must have permission
    #   			to access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your
    #   			service quota. Either <code>data</code> or <code>uri</code> can be used to specify the
    #   			data within the component.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt this component.
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder encrypts the
    #   			component data with a KMS key that Image Builder owns.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the component.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Import a component from a shell script
    #   # The following example imports a plain shell script as a Linux build component.
    #   params = {
    #     name: "my-example-imported-component",
    #     semantic_version: "1.0.0",
    #     description: "Installs my application from an imported shell script",
    #     type: BUILD,
    #     format: SHELL,
    #     platform: Linux,
    #     data: "sudo yum update -y\nsudo yum -y install my-app\n",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE88888"
    #   }
    #   options = {}
    #   response = client.import_component(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "e62cb87f-e291-4fb2-9305-54a7878c3b99",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE88888",
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-imported-component/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     type: "BUILD" # One of: ["BUILD", "TEST"], # required
    #     format: "SHELL" # One of: ["SHELL"], # required
    #     platform: "Windows" # One of: ["Windows", "Linux", "macOS"], # required
    #     data: "NonEmptyString",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.import_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     component_build_version_arn: "ComponentBuildVersionArn"
    #   }
    # @return [Types::ImportComponentResponse]
    def import_component(params = {}, options = {})
      request = build_request(:import_component, params)
      request.send_request(options)
    end

    # <p>Imports a Windows operating system image from a verified Microsoft ISO disk
    # 			file. The following disk images are supported:</p>
    #          <ul>
    #             <li>
    #                <p>Windows 11 Enterprise</p>
    #             </li>
    #          </ul>
    #          <p>The response returns as soon as Image Builder creates the new image resource in the
    # 			<code>PENDING</code> state. The conversion from ISO file to AMI then runs
    # 			asynchronously on an EC2 instance that Image Builder launches with the specified
    # 			infrastructure configuration.</p>
    # @param [Hash, Types::ImportDiskImageRequest] params
    # @option params [String] :name
    #   <p>The name of the image resource that's created from the import. Image Builder
    #   			generates the image ARN from a normalized form of the name, so names that
    #   			differ only in case, spaces, or underscores count as the same name. If an
    #   			image with the same name and semantic version already exists in your
    #   			account in the same Amazon Web Services Region, the import creates a new build version
    #   			for it.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version to attach to the image that's created during the import
    #   			process. This version follows the semantic version syntax.</p>
    # @option params [String] :description
    #   <p>The description for your disk image import.</p>
    # @option params [String] :platform
    #   <p>The operating system platform for the imported image. Allowed values include
    #   			the following: <code>Windows</code>.</p>
    # @option params [String] :os_version
    #   <p>The operating system version for the imported image. The only supported
    #   			value is <code>Microsoft Windows 11</code>.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access
    #   			to perform workflow actions to import an image from a Microsoft ISO file.
    #   			If you don't provide a role, Image Builder uses the Image Builder service-linked role in your
    #   			account, and creates it if it doesn't exist.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration resource that's used for
    #   			launching the EC2 instance on which the ISO image is built.</p>
    # @option params [String] :uri
    #   <p>The <code>uri</code> of the ISO disk file that's stored in Amazon S3, in
    #   			<code>s3://bucket/key</code> format. The key must end with the
    #   			<code>.iso</code>, <code>.ISO</code>, or <code>.Iso</code> extension, and the
    #   			bucket must be owned by the account that makes the request.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>The CloudWatch Logs log group where Image Builder sends the import logs. If you
    #   			specify a log group name outside of the <code>/aws/imagebuilder/</code>
    #   			namespace, you must also provide an <code>executionRole</code> that has
    #   			permission to write to that log group.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to image resources created from the import.</p>
    # @option params [Types::RegisterImageOptions] :register_image_options
    #   <p>Configures Secure Boot and UEFI settings for the
    #   			imported image.</p>
    # @option params [Types::WindowsConfiguration] :windows_configuration
    #   <p>Specifies Windows settings for ISO imports.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Import a Windows 11 ISO disk image
    #   # The following example starts an image build that converts a Windows 11 ISO disk file stored in Amazon S3 into an AMI; the imageBuildVersionArn in the response identifies the Image Builder image resource that tracks the build, not the output AMI.
    #   params = {
    #     name: "my-example-imported-image",
    #     semantic_version: "1.0.0",
    #     platform: "Windows",
    #     os_version: "Microsoft Windows 11",
    #     uri: "s3://amzn-s3-demo-bucket/Win11_23H2_English_x64.iso",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE12345"
    #   }
    #   options = {}
    #   response = client.import_disk_image(params, options)
    #   response.to_h #=>
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE12345",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-imported-image/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     platform: "NonEmptyString", # required
    #     os_version: "OsVersion", # required
    #     execution_role: "RoleNameOrArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     uri: "Uri", # required
    #     logging_configuration: {
    #       log_group_name: "LogGroupName"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     register_image_options: {
    #       secure_boot_enabled: false,
    #       uefi_data: "UefiData"
    #     },
    #     windows_configuration: {
    #       image_index: 1, # required
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.import_disk_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::ImportDiskImageResponse]
    def import_disk_image(params = {}, options = {})
      request = build_request(:import_disk_image, params)
      request.send_request(options)
    end

    # <p>Creates an Image Builder image resource from an Amazon EC2 VM import task. The response
    # 			returns as soon as Image Builder creates the image resource in the
    # 			<code>PENDING</code> state. Image Builder then monitors the import task
    # 			asynchronously. When the task completes, Image Builder records the AMI that it
    # 			produced as the new image's output resource and marks the image
    # 			<code>AVAILABLE</code>. You can then use the imported image as the base
    # 			image for your recipes.</p>
    #          <p>To create the VM import task, use the Amazon EC2 API <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html">ImportImage</a>
    # 			operation, or the <a href="https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html">import-image</a>
    # 			CLI command.</p>
    # @param [Hash, Types::ImportVmImageRequest] params
    # @option params [String] :name
    #   <p>The name of the base image that is created by the import process. Image Builder
    #   			generates the image ARN from a normalized form of the name, so names that
    #   			differ only in case, spaces, or underscores count as the same name. If an
    #   			image with the same name and semantic version already exists in your
    #   			account in the same Amazon Web Services Region, the import creates a new build version
    #   			for it.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version to attach to the base image that was created during the import
    #   			process. This version follows the semantic version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [String] :description
    #   <p>The description for the base image that is created by the import process.</p>
    # @option params [String] :platform
    #   <p>The operating system platform for the imported VM.</p>
    # @option params [String] :os_version
    #   <p>The operating system version for the imported VM.</p>
    # @option params [String] :vm_import_task_id
    #   <p>The <code>importTaskId</code> (API) or <code>ImportTaskId</code> (CLI) from the
    #   			Amazon EC2 VM import process. The import task doesn't need to be complete when you
    #   			call ImportVmImage - Image Builder monitors the task and finishes creating the image
    #   			when the task completes.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>The CloudWatch Logs log group where Image Builder sends the import logs. For
    #   			ImportVmImage, the log group name must be within the
    #   			<code>/aws/imagebuilder/</code> namespace.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to the import resources.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Import a virtual machine as an Image Builder image
    #   # The following example registers the output of an EC2 VM Import/Export task (import-ami) as a new Image Builder image, so you can use the imported virtual machine as a base image.
    #   params = {
    #     name: "my-example-imported-image",
    #     semantic_version: "1.0.0",
    #     platform: Linux,
    #     os_version: "Amazon Linux 2",
    #     vm_import_task_id: "import-ami-1234567890abcdef0",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE00000"
    #   }
    #   options = {}
    #   response = client.import_vm_image(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "f8a1d0ce-42b7-4d6a-9b12-3c84a02e5f19",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE00000",
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-imported-image/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     platform: "Windows" # One of: ["Windows", "Linux", "macOS"], # required
    #     os_version: "OsVersion",
    #     vm_import_task_id: "NonEmptyString", # required
    #     logging_configuration: {
    #       log_group_name: "LogGroupName"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.import_vm_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_arn: "Arn",
    #     client_token: "ClientToken"
    #   }
    # @return [Types::ImportVmImageResponse]
    def import_vm_image(params = {}, options = {})
      request = build_request(:import_vm_image, params)
      request.send_request(options)
    end

    # <p>Returns a list of component build versions for the specified component
    # 			version ARN. You can only list build versions for components that your
    # 			account owns. Deprecated build versions aren't included in the
    # 			results.</p>
    # @param [Hash, Types::ListComponentBuildVersionsRequest] params
    # @option params [String] :component_version_arn
    #   <p>The component version ARN whose build versions you want to list. The ARN
    #   			must specify an exact version, without a build number suffix. If you
    #   			don't specify an ARN, Image Builder returns build versions for the components
    #   			that your account owns.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the build versions of a component
    #   # The following example lists the build versions that exist for version 1.0.0 of the specified component. The list returns the most recent build version first.
    #   params = {
    #     component_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0"
    #   }
    #   options = {}
    #   response = client.list_component_build_versions(params, options)
    #   response.to_h #=>
    #   {
    #     component_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/2",
    #         name: "my-example-component",
    #         version: "1.0.0",
    #         platform: Linux,
    #         supported_os_versions: [
    #           "Amazon Linux 2023"
    #         ],
    #         state: {
    #           status: ACTIVE
    #         },
    #         type: BUILD,
    #         owner: "111122223333",
    #         description: "Installs the latest version of my application",
    #         change_description: "Updated the install command to use dnf",
    #         date_created: "2026-09-09T18:35:23.098Z",
    #         tags: {
    #           "Environment" => "Production"
    #         }
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1",
    #         name: "my-example-component",
    #         version: "1.0.0",
    #         platform: Linux,
    #         supported_os_versions: [
    #           "Amazon Linux 2023"
    #         ],
    #         state: {
    #           status: ACTIVE
    #         },
    #         type: BUILD,
    #         owner: "111122223333",
    #         description: "Installs the latest version of my application",
    #         change_description: "Initial version",
    #         date_created: "2026-09-09T18:35:20.731Z",
    #         tags: {
    #           "Environment" => "Production"
    #         }
    #       }
    #     ],
    #     request_id: "1d8693f0-26e1-42d7-ba35-d95ace1ce7e0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     component_version_arn: "ComponentVersionArn",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_component_build_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     component_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         version: "VersionNumber",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         supported_os_versions: ["OsVersion"],
    #         state: {
    #           status: "DEPRECATED" # One of: ["DEPRECATED", "DISABLED", "ACTIVE"],
    #           reason: "NonEmptyString"
    #         },
    #         type: "BUILD" # One of: ["BUILD", "TEST"],
    #         owner: "NonEmptyString",
    #         description: "NonEmptyString",
    #         change_description: "NonEmptyString",
    #         date_created: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         publisher: "NonEmptyString",
    #         obfuscate: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListComponentBuildVersionsResponse]
    def list_component_build_versions(params = {}, options = {})
      request = build_request(:list_component_build_versions, params)
      request.send_request(options)
    end

    # <p>Returns the list of components that you have access to. By default, the
    # 			response doesn't include components in the
    # 			<code>DEPRECATED</code> state. To list deprecated components, use the
    # 			<code>status</code> filter with the value <code>DEPRECATED</code>.</p>
    #          <note>
    #             <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    # 	You can assign values for the first three, and can filter on all of them.</p>
    #             <p>
    #                <b>Filtering:</b> You can use wildcards (x) to specify the most recent versions or nodes when
    # 	selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes
    # 	to the right of the first wildcard must also be wildcards.</p>
    #          </note>
    # @param [Hash, Types::ListComponentsRequest] params
    # @option params [String] :owner
    #   <p>Filters results based on the type of owner for the component. By default, this request
    #   			returns a list of components that your account owns. To see results for other types of
    #   			owners, you can specify components that Amazon manages, components from the
    #   			Amazon Web Services Marketplace, third party components, or components that other accounts have shared
    #   			with you.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>productCodes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>supportedOsVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :by_name
    #   <p>Specifies whether to return one entry per component name, with all versions
    #   			of each component aggregated. Defaults to <code>false</code>, which returns
    #   			one entry per component version. You can't combine this option with the
    #   			<code>version</code> filter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List components that you own
    #   # The following example lists the component versions that your account owns, filtered to components for the Linux platform.
    #   params = {
    #     owner: Self,
    #     filters: [
    #       {
    #         name: "platform",
    #         values: [
    #           "Linux"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    #   response.to_h #=>
    #   {
    #     component_version_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0",
    #         name: "my-example-component",
    #         version: "1.0.0",
    #         description: "Installs my example application",
    #         platform: Linux,
    #         supported_os_versions: [
    #           "Amazon Linux 2023"
    #         ],
    #         type: BUILD,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T18:31:49.661Z",
    #         status: ACTIVE
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-imported-component/1.0.0",
    #         name: "my-example-imported-component",
    #         version: "1.0.0",
    #         description: "Installs my application from an imported shell script",
    #         platform: Linux,
    #         type: BUILD,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T18:31:21.941Z",
    #         status: ACTIVE
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-test-component/1.0.0",
    #         name: "my-example-test-component",
    #         version: "1.0.0",
    #         description: "Verifies that my example application is installed",
    #         platform: Linux,
    #         type: TEST,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T18:31:52.888Z",
    #         status: ACTIVE
    #       }
    #     ],
    #     request_id: "fc51d989-ca0a-4ac7-9ca6-fb7786e70955"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     owner: "Self" # One of: ["Self", "Shared", "Amazon", "ThirdParty", "AWSMarketplace"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     component_version_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         version: "VersionNumber",
    #         description: "NonEmptyString",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         supported_os_versions: ["OsVersion"],
    #         type: "BUILD" # One of: ["BUILD", "TEST"],
    #         owner: "NonEmptyString",
    #         date_created: "DateTime",
    #         status: "DEPRECATED" # One of: ["DEPRECATED", "DISABLED", "ACTIVE"],
    #         product_codes: [
    #           {
    #             product_code_id: "ProductCodeId", # required
    #             product_code_type: "marketplace" # One of: ["marketplace"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListComponentsResponse]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p>Returns a list of container recipes.</p>
    # @param [Hash, Types::ListContainerRecipesRequest] params
    # @option params [String] :owner
    #   <p>Returns container recipes belonging to the specified owner, that have been
    #   			shared with you. You can omit this field to return container recipes
    #   			belonging to your account. For container recipes, the valid owner values are
    #   			<code>Self</code>, <code>Shared</code>, and <code>Amazon</code>.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>containerType</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the container recipes you own
    #   # The following example lists the container recipes that you own.
    #   params = {
    #     owner: Self
    #   }
    #   options = {}
    #   response = client.list_container_recipes(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "883e6f0e-8883-4c1a-9710-791afb74be0d",
    #     container_recipe_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0",
    #         container_type: DOCKER,
    #         name: "my-example-container-recipe",
    #         platform: Linux,
    #         owner: "111122223333",
    #         parent_image: "amazonlinux:latest",
    #         date_created: "2026-09-09T19:31:26.363Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     owner: "Self" # One of: ["Self", "Shared", "Amazon", "ThirdParty", "AWSMarketplace"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_container_recipes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     container_recipe_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         container_type: "DOCKER" # One of: ["DOCKER"],
    #         name: "ResourceName",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         owner: "NonEmptyString",
    #         parent_image: "NonEmptyString",
    #         date_created: "DateTime",
    #         instance_image: "NonEmptyString",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListContainerRecipesResponse]
    def list_container_recipes(params = {}, options = {})
      request = build_request(:list_container_recipes, params)
      request.send_request(options)
    end

    # <p>Returns a list of distribution configurations.</p>
    # @param [Hash, Types::ListDistributionConfigurationsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List distribution configurations that match a name filter
    #   # The following example lists the distribution configurations whose name matches the filter value.
    #   params = {
    #     filters: [
    #       {
    #         name: "name",
    #         values: [
    #           "my-example-distribution-configuration"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_distribution_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "1057325c-6b4a-4e16-ac6e-12f1d8fcc6f9",
    #     distribution_configuration_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration",
    #         name: "my-example-distribution-configuration",
    #         description: "Distributes AMIs to us-west-2",
    #         date_created: "2026-09-09T21:09:02.581Z",
    #         regions: [
    #           "us-west-2"
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_distribution_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     distribution_configuration_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         date_created: "DateTime",
    #         date_updated: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         regions: ["NonEmptyString"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDistributionConfigurationsResponse]
    def list_distribution_configurations(params = {}, options = {})
      request = build_request(:list_distribution_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of image build versions.</p>
    # @param [Hash, Types::ListImageBuildVersionsRequest] params
    # @option params [String] :image_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image version whose build versions you want to retrieve.
    #   			The ARN must specify an exact version
    #   			(<code><major>.<minor>.<patch></code>) - wildcards aren't allowed.
    #   			This parameter is optional. If you don't specify it, Image Builder returns build
    #   			versions for all of the images in your account.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the build versions of an image
    #   # The following example lists the build versions that exist for version 1.0.0 of the specified image, with the output AMI that each build produced.
    #   params = {
    #     image_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0"
    #   }
    #   options = {}
    #   response = client.list_image_build_versions(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "b4808907-dcad-4951-ada5-dd151e93135a",
    #     image_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #         name: "my-example-recipe",
    #         type: AMI,
    #         version: "1.0.0/1",
    #         platform: Linux,
    #         os_version: "Amazon Linux 2023",
    #         state: {
    #           status: AVAILABLE
    #         },
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:12:18.677Z",
    #         output_resources: {
    #           amis: [
    #             {
    #               region: "us-west-2",
    #               image: "ami-1234567890abcdef0",
    #               name: "my-example-recipe 2026-09-09T19-19-08.103311Z",
    #               account_id: "111122223333"
    #             }
    #           ]
    #         },
    #         build_type: USER_INITIATED
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_version_arn: "ImageVersionArn",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_build_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         type: "AMI" # One of: ["AMI", "DOCKER"],
    #         version: "VersionNumberWithBuild",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         os_version: "OsVersion",
    #         state: {
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #           reason: "NonEmptyString",
    #           failure_context: {
    #             image_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #             workflow_execution_id: "WorkflowExecutionId",
    #             workflow_arn: "WorkflowBuildVersionArn",
    #             step_execution_id: "WorkflowStepExecutionId",
    #             failed_step: "WorkflowStepName",
    #             component_failure: {
    #               component_arn: "ComponentBuildVersionArn",
    #               phase_name: "NonEmptyString",
    #               step_name: "NonEmptyString",
    #               action: "NonEmptyString",
    #               error_message: "NonEmptyMaxLengthString"
    #             },
    #             distribution_failure: {
    #               error_message: "NonEmptyMaxLengthString",
    #               region_failures: [
    #                 {
    #                   region: "NonEmptyString",
    #                   status: "FAILED" # One of: ["FAILED", "CANCELLED", "TIMED_OUT"],
    #                   image_configuration_step: "ASSOCIATE_LICENSES" # One of: ["ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"],
    #                   error_message: "NonEmptyMaxLengthString",
    #                   target_account_id: "AccountId"
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         owner: "NonEmptyString",
    #         date_created: "DateTime",
    #         output_resources: {
    #           amis: [
    #             {
    #               region: "NonEmptyString",
    #               image: "NonEmptyString",
    #               name: "NonEmptyString",
    #               description: "NonEmptyString",
    #               state: {
    #                 status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #                 reason: "NonEmptyString",
    #                 failure_context: {
    #                   image_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #                   workflow_execution_id: "WorkflowExecutionId",
    #                   workflow_arn: "WorkflowBuildVersionArn",
    #                   step_execution_id: "WorkflowStepExecutionId",
    #                   failed_step: "WorkflowStepName",
    #                   component_failure: {
    #                     component_arn: "ComponentBuildVersionArn",
    #                     phase_name: "NonEmptyString",
    #                     step_name: "NonEmptyString",
    #                     action: "NonEmptyString",
    #                     error_message: "NonEmptyMaxLengthString"
    #                   },
    #                   distribution_failure: {
    #                     error_message: "NonEmptyMaxLengthString",
    #                     region_failures: [
    #                       {
    #                         region: "NonEmptyString",
    #                         status: "FAILED" # One of: ["FAILED", "CANCELLED", "TIMED_OUT"],
    #                         image_configuration_step: "ASSOCIATE_LICENSES" # One of: ["ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"],
    #                         error_message: "NonEmptyMaxLengthString",
    #                         target_account_id: "AccountId"
    #                       }
    #                     ]
    #                   }
    #                 }
    #               },
    #               account_id: "NonEmptyString"
    #             }
    #           ],
    #           containers: [
    #             {
    #               region: "NonEmptyString",
    #               image_uris: ["NonEmptyString"]
    #             }
    #           ]
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         build_type: "USER_INITIATED" # One of: ["USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"],
    #         image_source: "AMAZON_MANAGED" # One of: ["AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"],
    #         deprecation_time: Time.now,
    #         lifecycle_execution_id: "LifecycleExecutionId",
    #         logging_configuration: {
    #           log_group_name: "LogGroupName"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImageBuildVersionsResponse]
    def list_image_build_versions(params = {}, options = {})
      request = build_request(:list_image_build_versions, params)
      request.send_request(options)
    end

    # <p>Lists the packages that are associated with an image build version, as determined by
    # 			Amazon Web Services Systems Manager Inventory at build time.</p>
    # @param [Hash, Types::ListImagePackagesRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version whose packages you want to list. The
    #   			value must be a full build version ARN.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the packages in an image build version
    #   # The following example lists the operating system packages that Image Builder detected in the specified image build version.
    #   params = {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.list_image_packages(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "0363bd96-1a54-4736-a307-7ac6095744e0",
    #     image_package_list: [
    #       {
    #         package_name: "passwd",
    #         package_version: "0.80"
    #       },
    #       {
    #         package_name: "dracut-config-ec2",
    #         package_version: "3.1"
    #       },
    #       {
    #         package_name: "libsolv",
    #         package_version: "0.7.22"
    #       },
    #       {
    #         package_name: "libxcrypt",
    #         package_version: "4.4.33"
    #       },
    #       {
    #         package_name: "python3-policycoreutils",
    #         package_version: "3.4"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_package_list: [
    #       {
    #         package_name: "NonEmptyString",
    #         package_version: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImagePackagesResponse]
    def list_image_packages(params = {}, options = {})
      request = build_request(:list_image_packages, params)
      request.send_request(options)
    end

    # <p>Returns a list of images created by the specified pipeline.</p>
    # @param [Hash, Types::ListImagePipelineImagesRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline whose images you want to
    #   			view.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the images that an image pipeline created
    #   # The following example lists the images that the specified pipeline created, including a build that is still in progress.
    #   params = {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    #   options = {}
    #   response = client.list_image_pipeline_images(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "071a0ecb-b07d-4485-832c-e6b88de8ebed",
    #     image_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #         name: "my-example-recipe",
    #         type: AMI,
    #         version: "1.0.0/1",
    #         platform: Linux,
    #         state: {
    #           status: BUILDING
    #         },
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:39:20.458Z",
    #         output_resources: {
    #           amis: [
    #           ]
    #         },
    #         build_type: USER_INITIATED
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_pipeline_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         type: "AMI" # One of: ["AMI", "DOCKER"],
    #         version: "VersionNumberWithBuild",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         os_version: "OsVersion",
    #         state: {
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #           reason: "NonEmptyString",
    #           failure_context: {
    #             image_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #             workflow_execution_id: "WorkflowExecutionId",
    #             workflow_arn: "WorkflowBuildVersionArn",
    #             step_execution_id: "WorkflowStepExecutionId",
    #             failed_step: "WorkflowStepName",
    #             component_failure: {
    #               component_arn: "ComponentBuildVersionArn",
    #               phase_name: "NonEmptyString",
    #               step_name: "NonEmptyString",
    #               action: "NonEmptyString",
    #               error_message: "NonEmptyMaxLengthString"
    #             },
    #             distribution_failure: {
    #               error_message: "NonEmptyMaxLengthString",
    #               region_failures: [
    #                 {
    #                   region: "NonEmptyString",
    #                   status: "FAILED" # One of: ["FAILED", "CANCELLED", "TIMED_OUT"],
    #                   image_configuration_step: "ASSOCIATE_LICENSES" # One of: ["ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"],
    #                   error_message: "NonEmptyMaxLengthString",
    #                   target_account_id: "AccountId"
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         owner: "NonEmptyString",
    #         date_created: "DateTime",
    #         output_resources: {
    #           amis: [
    #             {
    #               region: "NonEmptyString",
    #               image: "NonEmptyString",
    #               name: "NonEmptyString",
    #               description: "NonEmptyString",
    #               state: {
    #                 status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #                 reason: "NonEmptyString",
    #                 failure_context: {
    #                   image_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #                   workflow_execution_id: "WorkflowExecutionId",
    #                   workflow_arn: "WorkflowBuildVersionArn",
    #                   step_execution_id: "WorkflowStepExecutionId",
    #                   failed_step: "WorkflowStepName",
    #                   component_failure: {
    #                     component_arn: "ComponentBuildVersionArn",
    #                     phase_name: "NonEmptyString",
    #                     step_name: "NonEmptyString",
    #                     action: "NonEmptyString",
    #                     error_message: "NonEmptyMaxLengthString"
    #                   },
    #                   distribution_failure: {
    #                     error_message: "NonEmptyMaxLengthString",
    #                     region_failures: [
    #                       {
    #                         region: "NonEmptyString",
    #                         status: "FAILED" # One of: ["FAILED", "CANCELLED", "TIMED_OUT"],
    #                         image_configuration_step: "ASSOCIATE_LICENSES" # One of: ["ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"],
    #                         error_message: "NonEmptyMaxLengthString",
    #                         target_account_id: "AccountId"
    #                       }
    #                     ]
    #                   }
    #                 }
    #               },
    #               account_id: "NonEmptyString"
    #             }
    #           ],
    #           containers: [
    #             {
    #               region: "NonEmptyString",
    #               image_uris: ["NonEmptyString"]
    #             }
    #           ]
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         build_type: "USER_INITIATED" # One of: ["USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"],
    #         image_source: "AMAZON_MANAGED" # One of: ["AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"],
    #         deprecation_time: Time.now,
    #         lifecycle_execution_id: "LifecycleExecutionId",
    #         logging_configuration: {
    #           log_group_name: "LogGroupName"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImagePipelineImagesResponse]
    def list_image_pipeline_images(params = {}, options = {})
      request = build_request(:list_image_pipeline_images, params)
      request.send_request(options)
    end

    # <p>Returns a list of image pipelines.</p>
    # @param [Hash, Types::ListImagePipelinesRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>distributionConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imageRecipeArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>infrastructureConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List image pipelines filtered by name
    #   # The following example lists the image pipelines in your account, using a filter to match a specific pipeline name.
    #   params = {
    #     filters: [
    #       {
    #         name: "name",
    #         values: [
    #           "my-example-pipeline"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_image_pipelines(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "b818f3f9-b851-4de7-95f3-8fabed4e1841",
    #     image_pipeline_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #         name: "my-example-pipeline",
    #         description: "Builds a new version of my image every Sunday",
    #         platform: Linux,
    #         enhanced_image_metadata_enabled: true,
    #         image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #         infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #         image_tests_configuration: {
    #           image_tests_enabled: true,
    #           timeout_minutes: 720
    #         },
    #         schedule: {
    #           schedule_expression: "cron(0 9 ? * SUN *)",
    #           pipeline_execution_start_condition: EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #         },
    #         status: ENABLED,
    #         date_created: "2026-09-09T19:52:05.146Z",
    #         date_updated: "2026-09-09T19:52:05.146Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_pipeline_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         enhanced_image_metadata_enabled: false,
    #         image_recipe_arn: "Arn",
    #         container_recipe_arn: "Arn",
    #         infrastructure_configuration_arn: "Arn",
    #         distribution_configuration_arn: "Arn",
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1
    #         },
    #         schedule: {
    #           schedule_expression: "NonEmptyString",
    #           timezone: "Timezone",
    #           pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY" # One of: ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"],
    #           auto_disable_policy: {
    #             failure_count: 1, # required
    #           }
    #         },
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         date_created: "DateTime",
    #         date_updated: "DateTime",
    #         date_last_run: "DateTime",
    #         last_run_status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #         date_next_run: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         image_scanning_configuration: {
    #           image_scanning_enabled: false,
    #           ecr_configuration: {
    #             repository_name: "NonEmptyString",
    #             container_tags: ["NonEmptyString"]
    #           }
    #         },
    #         image_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         execution_role: "RoleNameOrArn",
    #         workflows: [
    #           {
    #             workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #             parameters: [
    #               {
    #                 name: "WorkflowParameterName", # required
    #                 value: ["WorkflowParameterValue"], # required
    #               }
    #             ],
    #             parallel_group: "ParallelGroup",
    #             on_failure: "CONTINUE" # One of: ["CONTINUE", "ABORT"]
    #           }
    #         ],
    #         logging_configuration: {
    #           image_log_group_name: "LogGroupName",
    #           pipeline_log_group_name: "LogGroupName"
    #         },
    #         consecutive_failures: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImagePipelinesResponse]
    def list_image_pipelines(params = {}, options = {})
      request = build_request(:list_image_pipelines, params)
      request.send_request(options)
    end

    # <p>Returns a list of image recipes.</p>
    # @param [Hash, Types::ListImageRecipesRequest] params
    # @option params [String] :owner
    #   <p>You can specify the recipe owner to filter results by that owner. By default, this request will
    #   			only show image recipes owned by your account. To filter by a different owner, specify one of the
    #   			<code>Valid Values</code> that are listed for this parameter.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the image recipes that you own
    #   # The following example lists the image recipes that you own.
    #   params = {
    #     owner: Self
    #   }
    #   options = {}
    #   response = client.list_image_recipes(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "4b036f1a-3716-441d-a401-419249f6569e",
    #     image_recipe_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-linux-recipe/1.0.0",
    #         name: "my-example-linux-recipe",
    #         platform: Linux,
    #         owner: "111122223333",
    #         parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x",
    #         date_created: "2026-09-09T19:30:33.064Z"
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-windows-recipe/1.0.0",
    #         name: "my-example-windows-recipe",
    #         platform: Windows,
    #         owner: "111122223333",
    #         parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2022-english-full-base-x86/x.x.x",
    #         date_created: "2026-09-09T19:30:35.110Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     owner: "Self" # One of: ["Self", "Shared", "Amazon", "ThirdParty", "AWSMarketplace"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_recipes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_recipe_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         owner: "NonEmptyString",
    #         parent_image: "NonEmptyString",
    #         date_created: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImageRecipesResponse]
    def list_image_recipes(params = {}, options = {})
      request = build_request(:list_image_recipes, params)
      request.send_request(options)
    end

    # <p>Returns a list of image scan aggregations for your account. You can filter by the type
    # 			of key that Image Builder uses to group results. For example, if you want to get a list of
    # 			findings by severity level for one of your pipelines, you might specify your pipeline
    # 			with the <code>imagePipelineArn</code> filter. If you don't specify a filter, Image Builder
    # 			returns an aggregation for your account.</p>
    #          <p>To streamline results, you can use the following filters in your request:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>imageBuildVersionArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>imagePipelineArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>vulnerabilityId</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListImageScanFindingAggregationsRequest] params
    # @option params [Types::Filter] :filter
    #   <p>A filter name and value pair that determines the type of aggregation
    #   			that Image Builder returns. Use one of the following filter names:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>imageBuildVersionArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imagePipelineArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vulnerabilityId</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a filter, Image Builder returns an aggregation for your account.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List image scan finding aggregations for an image pipeline
    #   # The following example aggregates vulnerability findings for images that the specified pipeline created, with counts grouped by severity level.
    #   params = {
    #     filter: {
    #       name: "imagePipelineArn",
    #       values: [
    #         "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_image_scan_finding_aggregations(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "b1c9dd23-7a9c-4a52-a1f7-3b8e9e17b2c4",
    #     aggregation_type: "imagePipelineArn",
    #     responses: [
    #       {
    #         image_pipeline_aggregation: {
    #           image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #           severity_counts: {
    #             all: 25,
    #             critical: 1,
    #             high: 7,
    #             medium: 12
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       name: "FilterName",
    #       values: ["FilterValue"]
    #     },
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_scan_finding_aggregations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     aggregation_type: "NonEmptyString",
    #     responses: [
    #       {
    #         account_aggregation: {
    #           account_id: "NonEmptyString",
    #           severity_counts: {
    #             all: 1,
    #             critical: 1,
    #             high: 1,
    #             medium: 1
    #           }
    #         },
    #         image_aggregation: {
    #           image_build_version_arn: "ImageBuildVersionArn",
    #           severity_counts: {
    #             all: 1,
    #             critical: 1,
    #             high: 1,
    #             medium: 1
    #           }
    #         },
    #         image_pipeline_aggregation: {
    #           image_pipeline_arn: "ImagePipelineArn",
    #           severity_counts: {
    #             all: 1,
    #             critical: 1,
    #             high: 1,
    #             medium: 1
    #           }
    #         },
    #         vulnerability_id_aggregation: {
    #           vulnerability_id: "NonEmptyString",
    #           severity_counts: {
    #             all: 1,
    #             critical: 1,
    #             high: 1,
    #             medium: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImageScanFindingAggregationsResponse]
    def list_image_scan_finding_aggregations(params = {}, options = {})
      request = build_request(:list_image_scan_finding_aggregations, params)
      request.send_request(options)
    end

    # <p>Returns a list of image scan findings for your account. Amazon Inspector generates the
    # 			findings when it scans images that have scanning enabled.</p>
    # @param [Hash, Types::ListImageScanFindingsRequest] params
    # @option params [Array<Types::ImageScanFindingsFilter>] :filters
    #   <p>An array of name value pairs that you can use to filter your results. You can use the
    #   			following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>imageBuildVersionArn</code> – Filters findings by the
    #   					image build version that was scanned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imagePipelineArn</code> – Filters findings by the
    #   					pipeline that created the scanned image.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vulnerabilityId</code> – Filters findings by
    #   					vulnerability ID, for example a CVE ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>severity</code> – Filters findings by severity
    #   					level.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't request a filter, then all findings in your account are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List vulnerability findings for an image build
    #   # The following example lists the vulnerability findings that Amazon Inspector detected for the specified image build version.
    #   params = {
    #     filters: [
    #       {
    #         name: "imageBuildVersionArn",
    #         values: [
    #           "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_image_scan_findings(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "233de8e7-3b58-4319-a6af-f6774cf7d371",
    #     findings: [
    #       {
    #         aws_account_id: "111122223333",
    #         image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #         image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #         type: "PACKAGE_VULNERABILITY",
    #         description: "In the Linux kernel, the following vulnerability has been resolved:\n\nvirtio: break and reset virtio devices on device_shutdown()",
    #         title: "CVE-2025-38064 - kernel",
    #         remediation: {
    #           recommendation: {
    #             text: "None Provided"
    #           }
    #         },
    #         severity: "HIGH",
    #         first_observed_at: Time.parse("2026-01-06T20:12:57Z"),
    #         updated_at: Time.parse("2026-01-06T20:12:57Z"),
    #         inspector_score: 7.0,
    #         inspector_score_details: {
    #           adjusted_cvss: {
    #             score_source: "AMAZON_CVE",
    #             cvss_source: "AMAZON_CVE",
    #             version: "3.1",
    #             score: 7.0,
    #             scoring_vector: "CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H",
    #             adjustments: [
    #             ]
    #           }
    #         },
    #         package_vulnerability_details: {
    #           vulnerability_id: "CVE-2025-38064",
    #           vulnerable_packages: [
    #             {
    #               name: "kernel",
    #               version: "4.14.355",
    #               epoch: 0,
    #               release: "280.652.amzn2",
    #               arch: "X86_64",
    #               package_manager: "OS",
    #               fixed_in_version: "0:5.15.189-131.202.amzn2",
    #               remediation: "yum update kernel"
    #             }
    #           ],
    #           source: "AMAZON_CVE",
    #           cvss: [
    #             {
    #               base_score: 7.0,
    #               scoring_vector: "CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H",
    #               version: "3.1",
    #               source: "AMAZON_CVE"
    #             }
    #           ],
    #           related_vulnerabilities: [
    #             "ALAS2-2025-2955",
    #             "ALAS2023-2025-1130"
    #           ],
    #           source_url: "https://alas.aws.amazon.com/cve/json/v1/CVE-2025-38064.json",
    #           vendor_severity: "Important",
    #           vendor_created_at: Time.parse("2025-06-18T00:00:00Z"),
    #           vendor_updated_at: Time.parse("2025-06-25T00:00:00Z"),
    #           reference_urls: [
    #             "https://alas.aws.amazon.com/AL2/ALAS2-2025-2955.html",
    #             "https://alas.aws.amazon.com/AL2023/ALAS2023-2025-1130.html"
    #           ]
    #         },
    #         fix_available: "YES"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_image_scan_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     findings: [
    #       {
    #         aws_account_id: "NonEmptyString",
    #         image_build_version_arn: "ImageBuildVersionArn",
    #         image_pipeline_arn: "ImagePipelineArn",
    #         type: "NonEmptyString",
    #         description: "NonEmptyString",
    #         title: "NonEmptyString",
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString"
    #           }
    #         },
    #         severity: "NonEmptyString",
    #         first_observed_at: Time.now,
    #         updated_at: Time.now,
    #         inspector_score: 1.0,
    #         inspector_score_details: {
    #           adjusted_cvss: {
    #             score_source: "NonEmptyString",
    #             cvss_source: "NonEmptyString",
    #             version: "NonEmptyString",
    #             score: 1.0,
    #             scoring_vector: "NonEmptyString",
    #             adjustments: [
    #               {
    #                 metric: "NonEmptyString",
    #                 reason: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         },
    #         package_vulnerability_details: {
    #           vulnerability_id: "VulnerabilityId", # required
    #           vulnerable_packages: [
    #             {
    #               name: "NonEmptyString",
    #               version: "NonEmptyString",
    #               source_layer_hash: "SourceLayerHash",
    #               epoch: 1,
    #               release: "NonEmptyString",
    #               arch: "PackageArchitecture",
    #               package_manager: "NonEmptyString",
    #               file_path: "NonEmptyString",
    #               fixed_in_version: "NonEmptyString",
    #               remediation: "NonEmptyString"
    #             }
    #           ],
    #           source: "NonEmptyString",
    #           cvss: [
    #             {
    #               base_score: 1.0,
    #               scoring_vector: "NonEmptyString",
    #               version: "NonEmptyString",
    #               source: "NonEmptyString"
    #             }
    #           ],
    #           related_vulnerabilities: ["VulnerabilityId"],
    #           source_url: "NonEmptyString",
    #           vendor_severity: "NonEmptyString",
    #           vendor_created_at: Time.now,
    #           vendor_updated_at: Time.now,
    #           reference_urls: ["NonEmptyString"]
    #         },
    #         fix_available: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImageScanFindingsResponse]
    def list_image_scan_findings(params = {}, options = {})
      request = build_request(:list_image_scan_findings, params)
      request.send_request(options)
    end

    # <p>Returns the list of images that you have access to.</p>
    # @param [Hash, Types::ListImagesRequest] params
    # @option params [String] :owner
    #   <p>Filters the list to images owned by you, by Amazon, or shared with you by other accounts.
    #   		By default, only your account's images are returned.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :by_name
    #   <p>Specifies whether to return one entry per image name, with all versions of
    #   			each image aggregated. Defaults to <code>false</code>, which returns one
    #   			entry per image version. You can't combine this option with the
    #   			<code>version</code> filter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @option params [Boolean] :include_deprecated
    #   <p>Specifies whether to include deprecated Amazon-managed images in the
    #   			results. Deprecated images that you own are always returned. Defaults to
    #   			<code>false</code>.</p>
    # @example List images that you own
    #   # The following example lists the image versions that you own. Setting byName to false returns each image version as its own entry, instead of grouping build versions under their image name.
    #   params = {
    #     owner: Self,
    #     by_name: false
    #   }
    #   options = {}
    #   response = client.list_images(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "19794296-a45f-4079-8741-e00d3c916318",
    #     image_version_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0",
    #         name: "my-example-recipe",
    #         type: AMI,
    #         version: "1.0.0",
    #         platform: Linux,
    #         os_version: "Amazon Linux 2023",
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:12:18.677Z",
    #         build_type: USER_INITIATED
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-windows-image/1.0.0",
    #         name: "my-example-windows-image",
    #         type: AMI,
    #         version: "1.0.0",
    #         platform: Windows,
    #         os_version: "Microsoft Windows Server 2025",
    #         owner: "111122223333",
    #         date_created: "2026-03-10T19:57:27.323Z",
    #         build_type: USER_INITIATED
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-windows-image/1.0.1",
    #         name: "my-example-windows-image",
    #         type: AMI,
    #         version: "1.0.1",
    #         platform: Windows,
    #         os_version: "Microsoft Windows Server 2025",
    #         owner: "111122223333",
    #         date_created: "2026-03-10T20:32:31.795Z",
    #         build_type: USER_INITIATED
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     owner: "Self" # One of: ["Self", "Shared", "Amazon", "ThirdParty", "AWSMarketplace"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     include_deprecated: false
    #   }
    #   options = {}
    #   response = client.list_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_version_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         type: "AMI" # One of: ["AMI", "DOCKER"],
    #         version: "VersionNumber",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         os_version: "OsVersion",
    #         owner: "NonEmptyString",
    #         date_created: "DateTime",
    #         build_type: "USER_INITIATED" # One of: ["USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"],
    #         image_source: "AMAZON_MANAGED" # One of: ["AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImagesResponse]
    def list_images(params = {}, options = {})
      request = build_request(:list_images, params)
      request.send_request(options)
    end

    # <p>Returns a list of infrastructure configurations.</p>
    # @param [Hash, Types::ListInfrastructureConfigurationsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List infrastructure configurations by name
    #   # The following example lists your infrastructure configurations, filtered to a specific resource name.
    #   params = {
    #     filters: [
    #       {
    #         name: "name",
    #         values: [
    #           "my-example-infrastructure-configuration"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_infrastructure_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "dbadaf86-3a9d-48fc-8e34-6062ef0a70f2",
    #     infrastructure_configuration_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure-configuration",
    #         name: "my-example-infrastructure-configuration",
    #         description: "An example infrastructure configuration for Amazon Linux builds",
    #         date_created: "2026-09-09T19:37:17.350Z",
    #         tags: {
    #           "Environment" => "test"
    #         },
    #         instance_types: [
    #           "m5.large",
    #           "m5.xlarge"
    #         ],
    #         instance_profile_name: "EC2InstanceProfileForImageBuilder"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_infrastructure_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     infrastructure_configuration_summary_list: [
    #       {
    #         arn: "ImageBuilderArn",
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         date_created: "DateTime",
    #         date_updated: "DateTime",
    #         resource_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         instance_types: ["InstanceType"],
    #         instance_profile_name: "InstanceProfileNameType",
    #         placement: {
    #           availability_zone: "NonEmptyString",
    #           tenancy: "default" # One of: ["default", "dedicated", "host"],
    #           host_id: "NonEmptyString",
    #           host_resource_group_arn: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListInfrastructureConfigurationsResponse]
    def list_infrastructure_configurations(params = {}, options = {})
      request = build_request(:list_infrastructure_configurations, params)
      request.send_request(options)
    end

    # <p>Lists resources that the runtime instance of the image lifecycle identified for lifecycle actions.</p>
    # @param [Hash, Types::ListLifecycleExecutionResourcesRequest] params
    # @option params [String] :lifecycle_execution_id
    #   <p>The unique identifier for a runtime instance of the lifecycle policy.</p>
    # @option params [String] :parent_resource_id
    #   <p>The Amazon Resource Name (ARN) of an image build version to get the output resources for,
    #   			such as AMIs or container images in Amazon ECR. You can get this value from the
    #   			<code>resourceId</code> in the top-level response. If you leave this
    #   			property empty, the response lists the Image Builder resources that the lifecycle
    #   			execution identified for lifecycle actions. If the image build version that
    #   			you specify in <code>parentResourceId</code> wasn't part of this
    #   			lifecycle execution, the response contains an empty list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the resources that a lifecycle execution acted on
    #   # The following example lists the resources that the specified lifecycle execution acted on. For a scheduled resource state update that hasn't started to apply changes yet, the resources list is empty.
    #   params = {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503"
    #   }
    #   options = {}
    #   response = client.list_lifecycle_execution_resources(params, options)
    #   response.to_h #=>
    #   {
    #     resources: [
    #     ],
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503",
    #     lifecycle_execution_state: {
    #       status: IN_PROGRESS
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_execution_id: "LifecycleExecutionId", # required
    #     parent_resource_id: "NonEmptyString",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_lifecycle_execution_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_execution_id: "LifecycleExecutionId",
    #     lifecycle_execution_state: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "PENDING"],
    #       reason: "NonEmptyString"
    #     },
    #     resources: [
    #       {
    #         account_id: "NonEmptyString",
    #         resource_id: "NonEmptyString",
    #         state: {
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "SKIPPED", "SUCCESS"],
    #           reason: "NonEmptyString"
    #         },
    #         action: {
    #           name: "AVAILABLE" # One of: ["AVAILABLE", "DELETE", "DEPRECATE", "DISABLE"],
    #           reason: "NonEmptyString"
    #         },
    #         region: "NonEmptyString",
    #         snapshots: [
    #           {
    #             snapshot_id: "NonEmptyString",
    #             state: {
    #               status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "SKIPPED", "SUCCESS"],
    #               reason: "NonEmptyString"
    #             }
    #           }
    #         ],
    #         image_uris: ["NonEmptyString"],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLifecycleExecutionResourcesResponse]
    def list_lifecycle_execution_resources(params = {}, options = {})
      request = build_request(:list_lifecycle_execution_resources, params)
      request.send_request(options)
    end

    # <p>Retrieves the lifecycle runtime history for the specified resource.</p>
    # @param [Hash, Types::ListLifecycleExecutionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list lifecycle executions. Specify a
    #   			lifecycle policy ARN to list its executions, or an image build version ARN
    #   			to list the executions that <a>StartResourceStateUpdate</a>
    #   			started for that image. Other ARN types aren't valid for this
    #   			request.</p>
    # @example List lifecycle executions for an image build version
    #   # The following example lists the lifecycle executions that have run against the specified image build version. The execution shown was started with StartResourceStateUpdate rather than a lifecycle policy, so it has no lifecyclePolicyArn.
    #   params = {
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.list_lifecycle_executions(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_executions: [
    #       {
    #         lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503",
    #         resources_impacted_summary: {
    #           has_impacted_resources: false
    #         },
    #         state: {
    #           status: IN_PROGRESS
    #         },
    #         start_time: Time.parse("2026-09-09T21:42:29Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     resource_arn: "ImageBuilderArn", # required
    #   }
    #   options = {}
    #   response = client.list_lifecycle_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_executions: [
    #       {
    #         lifecycle_execution_id: "LifecycleExecutionId",
    #         lifecycle_policy_arn: "LifecyclePolicyArn",
    #         resources_impacted_summary: {
    #           has_impacted_resources: false
    #         },
    #         state: {
    #           status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "PENDING"],
    #           reason: "NonEmptyString"
    #         },
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLifecycleExecutionsResponse]
    def list_lifecycle_executions(params = {}, options = {})
      request = build_request(:list_lifecycle_executions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of lifecycle policies in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListLifecyclePoliciesRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Use the following filters to streamline results: <code>name</code>,
    #   			<code>resourceType</code>, and <code>status</code>. Filter names are
    #   			matched exactly as shown.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List enabled lifecycle policies
    #   # The following example lists the lifecycle policies in your account that have ENABLED status.
    #   params = {
    #     filters: [
    #       {
    #         name: "status",
    #         values: [
    #           "ENABLED"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_lifecycle_policies(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-ami-policy",
    #         name: "my-example-ami-policy",
    #         description: "Deletes AMI image builds after they reach 6 months old",
    #         status: ENABLED,
    #         execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role",
    #         resource_type: AMI_IMAGE,
    #         date_created: Time.parse("2026-09-09T19:36:17Z")
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-container-policy",
    #         name: "my-example-container-policy",
    #         description: "Deletes container image builds after they reach 6 months old",
    #         status: ENABLED,
    #         execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role",
    #         resource_type: CONTAINER_IMAGE,
    #         date_created: Time.parse("2026-09-09T19:36:19Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_lifecycle_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_summary_list: [
    #       {
    #         arn: "LifecyclePolicyArn",
    #         name: "ResourceName",
    #         description: "NonEmptyString",
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         execution_role: "RoleNameOrArn",
    #         resource_type: "AMI_IMAGE" # One of: ["AMI_IMAGE", "CONTAINER_IMAGE"],
    #         date_created: Time.now,
    #         date_updated: Time.now,
    #         date_last_run: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLifecyclePoliciesResponse]
    def list_lifecycle_policies(params = {}, options = {})
      request = build_request(:list_lifecycle_policies, params)
      request.send_request(options)
    end

    # <p>Returns the list of tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    # @example List the tags for a resource
    #   # The following example lists the tags that are assigned to an existing component build version.
    #   params = {
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "CostCenter" => "12345",
    #       "Environment" => "Production"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ImageBuilderArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the workflow steps in your Amazon Web Services account that have paused at a
    # 			<code>WaitForAction</code> step, and are waiting for you to respond. To send
    # 			a response, call <a>SendWorkflowStepAction</a>.</p>
    # @param [Hash, Types::ListWaitingWorkflowStepsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List workflow steps that are waiting for an action
    #   # The following example lists the workflow steps in your account that are paused at a WaitForAction step, waiting for you to resume or stop the workflow with SendWorkflowStepAction.
    #   params = {
    #     max_results: 25
    #   }
    #   options = {}
    #   response = client.list_waiting_workflow_steps(params, options)
    #   response.to_h #=>
    #   {
    #     steps: [
    #       {
    #         step_execution_id: "step-8eb24d7a-036e-46b5-94a3-90a5d8b5ac4a",
    #         image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-wait-recipe/1.0.0/1",
    #         workflow_execution_id: "wf-782460a6-8dc5-4262-90ff-0509eef0053c",
    #         workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-wait-workflow/1.0.0/1",
    #         name: "WaitForApproval",
    #         action: "WaitForAction",
    #         start_time: "2026-09-09T20:02:59.931Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_waiting_workflow_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     steps: [
    #       {
    #         step_execution_id: "WorkflowStepExecutionId",
    #         image_build_version_arn: "ImageBuildVersionArn",
    #         workflow_execution_id: "WorkflowExecutionId",
    #         workflow_build_version_arn: "WorkflowBuildVersionArn",
    #         name: "WorkflowStepName",
    #         action: "WorkflowStepAction",
    #         start_time: "DateTime"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWaitingWorkflowStepsResponse]
    def list_waiting_workflow_steps(params = {}, options = {})
      request = build_request(:list_waiting_workflow_steps, params)
      request.send_request(options)
    end

    # <p>Returns a list of build versions for a specific workflow resource.</p>
    # @param [Hash, Types::ListWorkflowBuildVersionsRequest] params
    # @option params [String] :workflow_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource for which to get a list of build versions.
    #   			The version segments can contain wildcards (<code>x</code>) to match multiple
    #   			versions of the workflow. If you don't specify an ARN, the response lists build
    #   			versions for all of the workflows in your account.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List the build versions of a workflow
    #   # The following example lists the build versions that exist for version 1.0.0 of the specified workflow, with the most recent build version first and the change description for each build version showing what changed.
    #   params = {
    #     workflow_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0"
    #   }
    #   options = {}
    #   response = client.list_workflow_build_versions(params, options)
    #   response.to_h #=>
    #   {
    #     workflow_summary_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/2",
    #         name: "my-example-workflow",
    #         version: "1.0.0",
    #         description: "Workflow to build my example image",
    #         change_description: "Added a step to collect image metadata from the build instance",
    #         type: BUILD,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:56:38.339Z"
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1",
    #         name: "my-example-workflow",
    #         version: "1.0.0",
    #         description: "Workflow to build my example image",
    #         change_description: "Initial version",
    #         type: BUILD,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:41:14.997Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_version_arn: "WorkflowWildcardVersionArn",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_workflow_build_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_summary_list: [
    #       {
    #         arn: "WorkflowBuildVersionArn",
    #         name: "ResourceName",
    #         version: "VersionNumber",
    #         description: "NonEmptyString",
    #         change_description: "NonEmptyString",
    #         type: "BUILD" # One of: ["BUILD", "TEST", "DISTRIBUTION"],
    #         owner: "NonEmptyString",
    #         state: {
    #           status: "DEPRECATED" # One of: ["DEPRECATED"],
    #           reason: "NonEmptyString"
    #         },
    #         date_created: "DateTime",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkflowBuildVersionsResponse]
    def list_workflow_build_versions(params = {}, options = {})
      request = build_request(:list_workflow_build_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of workflow runtime instance metadata objects for a specific image build
    # 			version.</p>
    # @param [Hash, Types::ListWorkflowExecutionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @option params [String] :image_build_version_arn
    #   <p>List all workflow runtime instances for the specified image build version
    #   			resource ARN.</p>
    # @example List the workflow runtime instances for an image build version
    #   # The following example lists the workflow runtime instances that ran for the specified image build version, which was built with the Image Builder default build and test workflows.
    #   params = {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    #   options = {}
    #   response = client.list_workflow_executions(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "c78ef9a3-cce8-4e7d-ae96-426fb7e59f5d",
    #     workflow_executions: [
    #       {
    #         workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1",
    #         workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908",
    #         type: BUILD,
    #         status: COMPLETED,
    #         total_step_count: 7,
    #         total_steps_succeeded: 5,
    #         total_steps_failed: 0,
    #         total_steps_skipped: 2,
    #         start_time: "2026-09-09T19:12:23.175Z",
    #         end_time: "2026-09-09T19:19:06.158Z",
    #         retried: false
    #       },
    #       {
    #         workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/test/test-image/1.0.3/1",
    #         workflow_execution_id: "wf-1a3639b8-1366-4b73-8347-706874020dad",
    #         type: TEST,
    #         status: COMPLETED,
    #         total_step_count: 4,
    #         total_steps_succeeded: 2,
    #         total_steps_failed: 0,
    #         total_steps_skipped: 2,
    #         start_time: "2026-09-09T19:19:11.709Z",
    #         end_time: "2026-09-09T19:21:47.830Z",
    #         retried: false
    #       }
    #     ],
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #   }
    #   options = {}
    #   response = client.list_workflow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     workflow_executions: [
    #       {
    #         workflow_build_version_arn: "WorkflowBuildVersionArn",
    #         workflow_execution_id: "WorkflowExecutionId",
    #         type: "BUILD" # One of: ["BUILD", "TEST", "DISTRIBUTION"],
    #         status: "PENDING" # One of: ["PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETED", "CANCELLED"],
    #         message: "WorkflowExecutionMessage",
    #         total_step_count: 1,
    #         total_steps_succeeded: 1,
    #         total_steps_failed: 1,
    #         total_steps_skipped: 1,
    #         start_time: "DateTime",
    #         end_time: "DateTime",
    #         parallel_group: "ParallelGroup",
    #         retried: false
    #       }
    #     ],
    #     image_build_version_arn: "ImageBuildVersionArn",
    #     message: "ImageBuildMessage",
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkflowExecutionsResponse]
    def list_workflow_executions(params = {}, options = {})
      request = build_request(:list_workflow_executions, params)
      request.send_request(options)
    end

    # <p>Returns runtime data for each step in a runtime instance of the workflow
    # 			that you specify in the request.</p>
    # @param [Hash, Types::ListWorkflowStepExecutionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @option params [String] :workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    # @example List the steps that ran in a workflow execution
    #   # The following example lists runtime details for each step in the specified runtime instance of a workflow, in this case the build workflow from an image build.
    #   params = {
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908"
    #   }
    #   options = {}
    #   response = client.list_workflow_step_executions(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "c6258beb-bc78-40dc-8bf9-fa5a8a93d3f3",
    #     steps: [
    #       {
    #         step_execution_id: "step-2e6fef0d-657c-4b7e-8706-ff24da9afa01",
    #         name: "LaunchBuildInstance",
    #         action: "LaunchInstance",
    #         status: COMPLETED,
    #         inputs: "{\"waitFor\": \"ssmAgent\"}",
    #         outputs: "{\"instanceId\": \"i-1234567890abcdef0\"}",
    #         start_time: "2026-09-09T19:12:23.418Z",
    #         end_time: "2026-09-09T19:14:50.822Z"
    #       },
    #       {
    #         step_execution_id: "step-f76c24fe-dc70-435b-8dc1-987a0ca6d5a5",
    #         name: "ApplyBuildComponents",
    #         action: "ExecuteComponents",
    #         status: SKIPPED,
    #         inputs: "{\"instanceId.$\": \"$.stepOutputs.LaunchBuildInstance.instanceId\"}",
    #         start_time: "2026-09-09T19:14:51.229Z",
    #         end_time: "2026-09-09T19:14:51.229Z"
    #       },
    #       {
    #         step_execution_id: "step-aa880a39-e72c-4561-aa05-eb3de860441a",
    #         name: "InventoryCollection",
    #         action: "CollectImageMetadata",
    #         status: COMPLETED,
    #         inputs: "{\"instanceId\": \"i-1234567890abcdef0\"}",
    #         outputs: "{\"osVersion\": \"Amazon Linux 2023\", \"associationId\": \"7416ce2e-4ee8-4660-8c42-a09a03f61010\"}",
    #         start_time: "2026-09-09T19:14:51.818Z",
    #         end_time: "2026-09-09T19:16:26.267Z"
    #       },
    #       {
    #         step_execution_id: "step-572bdd17-25c4-4729-9f2e-7fd611807751",
    #         name: "RunSanitizeScript",
    #         action: "SanitizeInstance",
    #         status: COMPLETED,
    #         outputs: "{\"status\": \"Success\", \"output\": \"Skipping cleanup\\n\", \"runCommandId\": \"9eef9fe1-12e8-4c97-8e9a-4e79632864f4\"}",
    #         start_time: "2026-09-09T19:16:26.742Z",
    #         end_time: "2026-09-09T19:16:36.559Z"
    #       },
    #       {
    #         step_execution_id: "step-06026579-939d-4b1b-b36e-fa58cb712a48",
    #         name: "RunSysPrepScript",
    #         action: "RunSysPrep",
    #         status: SKIPPED,
    #         inputs: "{\"instanceId.$\": \"$.stepOutputs.LaunchBuildInstance.instanceId\"}",
    #         start_time: "2026-09-09T19:16:36.973Z",
    #         end_time: "2026-09-09T19:16:36.973Z"
    #       },
    #       {
    #         step_execution_id: "step-50e4312d-400c-453e-957c-714cbee6961c",
    #         name: "CreateOutputAMI",
    #         action: "CreateImage",
    #         status: COMPLETED,
    #         inputs: "{\"instanceId\": \"i-1234567890abcdef0\"}",
    #         outputs: "{\"imageId\": \"ami-1234567890abcdef0\"}",
    #         start_time: "2026-09-09T19:16:37.499Z",
    #         end_time: "2026-09-09T19:19:02.135Z"
    #       },
    #       {
    #         step_execution_id: "step-22673db0-e280-4948-b9b5-789791531c34",
    #         name: "TerminateBuildInstance",
    #         action: "TerminateInstance",
    #         status: COMPLETED,
    #         inputs: "{\"instanceId\": \"i-1234567890abcdef0\"}",
    #         start_time: "2026-09-09T19:19:02.546Z",
    #         end_time: "2026-09-09T19:19:06.132Z"
    #       }
    #     ],
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1",
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     workflow_execution_id: "WorkflowExecutionId", # required
    #   }
    #   options = {}
    #   response = client.list_workflow_step_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     steps: [
    #       {
    #         step_execution_id: "WorkflowStepExecutionId",
    #         name: "WorkflowStepName",
    #         description: "WorkflowStepDescription",
    #         action: "WorkflowStepAction",
    #         status: "PENDING" # One of: ["PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"],
    #         rollback_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "SKIPPED", "FAILED"],
    #         message: "WorkflowStepMessage",
    #         inputs: "WorkflowStepInputs",
    #         outputs: "WorkflowStepOutputs",
    #         start_time: "DateTime",
    #         end_time: "DateTime",
    #         attempt_number: 1,
    #         max_attempts: 1
    #       }
    #     ],
    #     workflow_build_version_arn: "WorkflowBuildVersionArn",
    #     workflow_execution_id: "WorkflowExecutionId",
    #     image_build_version_arn: "ImageBuildVersionArn",
    #     message: "ImageBuildMessage",
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkflowStepExecutionsResponse]
    def list_workflow_step_executions(params = {}, options = {})
      request = build_request(:list_workflow_step_executions, params)
      request.send_request(options)
    end

    # <p>Lists workflow versions based on filtering parameters. To list the build
    # 			versions of a specific workflow version, call
    # 			<a>ListWorkflowBuildVersions</a>.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [String] :owner
    #   <p>Filters results based on the workflow owner. By default, this request returns
    #   			the workflows that your account owns (<code>Self</code>). Specify
    #   			<code>Amazon</code> to list the workflows that Image Builder manages. Image Builder rejects
    #   			the <code>Shared</code> and <code>ThirdParty</code> owner values for
    #   			workflows, and <code>AWSMarketplace</code> returns no results.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to narrow the list of workflows. You can filter on
    #   			<code>name</code>, <code>version</code>, <code>description</code>, and
    #   			<code>type</code>.</p>
    # @option params [Boolean] :by_name
    #   <p>Specifies whether to return one entry per workflow name, with all versions of
    #   			each workflow aggregated. Defaults to <code>false</code>, which returns one
    #   			entry per workflow version. You can't combine this option with the
    #   			<code>version</code> filter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    # @example List workflows that you own
    #   # The following example lists the workflow versions that you own.
    #   params = {
    #     owner: Self
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    #   response.to_h #=>
    #   {
    #     workflow_version_list: [
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-build-workflow/1.0.0",
    #         name: "my-example-build-workflow",
    #         version: "1.0.0",
    #         description: "Builds my example image",
    #         type: BUILD,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:56:09.033Z"
    #       },
    #       {
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/test/my-example-test-workflow/1.0.0",
    #         name: "my-example-test-workflow",
    #         version: "1.0.0",
    #         description: "Tests my example image",
    #         type: TEST,
    #         owner: "111122223333",
    #         date_created: "2026-09-09T19:56:12.440Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     owner: "Self" # One of: ["Self", "Shared", "Amazon", "ThirdParty", "AWSMarketplace"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_version_list: [
    #       {
    #         arn: "WorkflowWildcardVersionArn",
    #         name: "ResourceName",
    #         version: "VersionNumber",
    #         description: "NonEmptyString",
    #         type: "BUILD" # One of: ["BUILD", "TEST", "DISTRIBUTION"],
    #         owner: "NonEmptyString",
    #         date_created: "DateTime"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkflowsResponse]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Applies a policy to a component. The preferred way to share resources is with
    # 			the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a>. If you use the PutComponentPolicy operation instead, you
    # 			must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a>. Otherwise, the resource
    # 			isn't visible to the principals that it's shared with.</p>
    # @param [Hash, Types::PutComponentPolicyRequest] params
    # @option params [String] :component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy should be applied
    #   			to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
    # @example Share a component with another account
    #   # The following example applies a resource policy that grants another account permission to get and list the component.
    #   params = {
    #     component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetComponent\", \"imagebuilder:ListComponents\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1\"]}]}"
    #   }
    #   options = {}
    #   response = client.put_component_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "ad5a3a66-95c0-4eb5-b34e-f28980256275",
    #     component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     component_arn: "ComponentBuildVersionArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_component_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     component_arn: "ComponentBuildVersionArn"
    #   }
    # @return [Types::PutComponentPolicyResponse]
    def put_component_policy(params = {}, options = {})
      request = build_request(:put_component_policy, params)
      request.send_request(options)
    end

    # <p>Applies a policy to a container recipe. The preferred way to share resources is with
    # 			the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a>. If you use the PutContainerRecipePolicy operation instead, you
    # 			must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a>. Otherwise, the resource
    # 			isn't visible to the principals that it's shared with.</p>
    # @param [Hash, Types::PutContainerRecipePolicyRequest] params
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy should be
    #   			applied to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply to the container recipe.</p>
    # @example Share a container recipe with another account
    #   # The following example applies a resource policy that grants another AWS account permission to view and use the specified container recipe.
    #   params = {
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Sid\": \"AllowSharedAccountContainerRecipeAccess\", \"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetContainerRecipe\", \"imagebuilder:ListContainerRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0\"}]}"
    #   }
    #   options = {}
    #   response = client.put_container_recipe_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "dd917975-9d5d-49ce-9d94-daa753088dec",
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_container_recipe_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     container_recipe_arn: "ContainerRecipeArn"
    #   }
    # @return [Types::PutContainerRecipePolicyResponse]
    def put_container_recipe_policy(params = {}, options = {})
      request = build_request(:put_container_recipe_policy, params)
      request.send_request(options)
    end

    # <p>Applies a policy to an image. The preferred way to share resources is with
    # 			the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a>. If you use the PutImagePolicy operation instead, you
    # 			must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a>. Otherwise, the resource
    # 			isn't visible to the principals that it's shared with.</p>
    # @param [Hash, Types::PutImagePolicyRequest] params
    # @option params [String] :image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy should be applied
    #   			to.</p>
    # @option params [String] :policy
    #   <p>The resource policy to apply to the image, as a JSON policy document.
    #   			Image Builder validates the policy with Amazon Web Services RAM before applying it, and rejects
    #   			invalid policies with <code>InvalidParameterValueException</code>.</p>
    # @example Share an image with another AWS account
    #   # The following example applies a resource policy to an image build version that grants another AWS account permission to view the image.
    #   params = {
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImage\", \"imagebuilder:ListImages\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1\"]}]}"
    #   }
    #   options = {}
    #   response = client.put_image_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "7bbf7e76-0f08-430d-b77e-17c161725825",
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_arn: "ImageBuildVersionArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_image_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::PutImagePolicyResponse]
    def put_image_policy(params = {}, options = {})
      request = build_request(:put_image_policy, params)
      request.send_request(options)
    end

    # <p>Applies a policy to an image recipe. The preferred way to share resources is with
    # 			the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a>. If you use the PutImageRecipePolicy operation instead, you
    # 			must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a>. Otherwise, the resource
    # 			isn't visible to the principals that it's shared with.</p>
    # @param [Hash, Types::PutImageRecipePolicyRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied
    #   			to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
    # @example Share an image recipe with another account
    #   # The following example applies a resource policy that grants another AWS account permission to view the specified image recipe.
    #   params = {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImageRecipe\", \"imagebuilder:ListImageRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0\"}]}"
    #   }
    #   options = {}
    #   response = client.put_image_recipe_policy(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "3a27bb63-329e-40ab-88f2-c1638504bd35",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_recipe_arn: "ImageRecipeArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_image_recipe_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn"
    #   }
    # @return [Types::PutImageRecipePolicyResponse]
    def put_image_recipe_policy(params = {}, options = {})
      request = build_request(:put_image_recipe_policy, params)
      request.send_request(options)
    end

    # <p>Retries a failed or canceled image build without rebuilding the phases
    # 			that already completed. The image re-runs asynchronously in place: the same
    # 			build version returns to the test or distribution phase where it failed and
    # 			continues from there. No new image build version is created. Retry is only
    # 			supported for AMI-based images.</p>
    # @param [Hash, Types::RetryImageRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version that you want to retry. The image
    #   			must be in the <code>FAILED</code> or <code>CANCELLED</code> state.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Retry an image build
    #   # The following example retries a cancelled image build, which resumes in place from the phase where it stopped.
    #   params = {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEfffff"
    #   }
    #   options = {}
    #   response = client.retry_image(params, options)
    #   response.to_h #=>
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEfffff",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.retry_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::RetryImageResponse]
    def retry_image(params = {}, options = {})
      request = build_request(:retry_image, params)
      request.send_request(options)
    end

    # <p>Sends an action to a workflow step that has paused at a
    # 			<code>WaitForAction</code> step, so that image creation can continue.
    # 			To find the steps that are waiting for an action, call
    # 			<a>ListWaitingWorkflowSteps</a>.</p>
    # @param [Hash, Types::SendWorkflowStepActionRequest] params
    # @option params [String] :step_execution_id
    #   <p>Uniquely identifies the waiting workflow step that you send the action to.
    #   			To get this identifier, call <a>ListWaitingWorkflowSteps</a>.</p>
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version associated with the workflow
    #   			step execution. This value must match the image that owns the waiting step.
    #   			If the ARN does not correspond to the image running the workflow,
    #   			then the request fails with a validation error.</p>
    # @option params [String] :action
    #   <p>The action to perform on the paused workflow step.
    #   			<code>RESUME</code> completes the waiting step, and the workflow continues.
    #   			<code>STOP</code> fails the step, and the step's <code>onFailure</code>
    #   			setting determines whether the workflow continues or aborts. The workflow
    #   			step must be in a waiting state to accept an action. The request fails if
    #   			the step has already timed out or been actioned.</p>
    # @option params [String] :reason
    #   <p>The reason for the action. This value is stored with the step
    #   			execution record and is accessible in subsequent workflow steps
    #   			via step output references.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Stop a workflow step that is waiting for action
    #   # The following example sends the STOP action to a workflow step that has paused the image build, identified by the step execution ID that ListWaitingWorkflowSteps returns.
    #   params = {
    #     step_execution_id: "step-8eb24d7a-036e-46b5-94a3-90a5d8b5ac4a",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-wait-recipe/1.0.0/1",
    #     action: STOP,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE67890"
    #   }
    #   options = {}
    #   response = client.send_workflow_step_action(params, options)
    #   response.to_h #=>
    #   {
    #     step_execution_id: "step-8eb24d7a-036e-46b5-94a3-90a5d8b5ac4a",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-wait-recipe/1.0.0/1",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE67890"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     step_execution_id: "WorkflowStepExecutionId", # required
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     action: "RESUME" # One of: ["RESUME", "STOP"], # required
    #     reason: "NonEmptyString",
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.send_workflow_step_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_execution_id: "WorkflowStepExecutionId",
    #     image_build_version_arn: "ImageBuildVersionArn",
    #     client_token: "ClientToken"
    #   }
    # @return [Types::SendWorkflowStepActionResponse]
    def send_workflow_step_action(params = {}, options = {})
      request = build_request(:send_workflow_step_action, params)
      request.send_request(options)
    end

    # <p>Manually triggers a pipeline to create an image. You can start a build
    # 			this way whether the pipeline is enabled or disabled. The response returns
    # 			as soon as Image Builder creates the new image resource and queues the build. Use
    # 			the returned <code>imageBuildVersionArn</code> with
    # 			<a>GetImage</a> to track build progress.</p>
    # @param [Hash, Types::StartImagePipelineExecutionRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually
    #   			invoke.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for Image Builder to apply to the image resource that's created
    #   			when pipeline execution starts.</p>
    # @example Start a pipeline build manually
    #   # The following example starts a build for the specified pipeline. The response returns the ARN of the new image build version.
    #   params = {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE66666"
    #   }
    #   options = {}
    #   response = client.start_image_pipeline_execution(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "f477f64c-9ece-4478-977d-5821f8ed051b",
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE66666",
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_image_pipeline_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::StartImagePipelineExecutionResponse]
    def start_image_pipeline_execution(params = {}, options = {})
      request = build_request(:start_image_pipeline_execution, params)
      request.send_request(options)
    end

    # <p>Begins an ad-hoc state change for the specified image build version.
    # 			This is a one-time operation - if you schedule the update, it runs only
    # 			once. If the
    # 			request includes underlying resources, or schedules the update far enough in
    # 			the future, Image Builder runs the update as an asynchronous lifecycle execution and
    # 			returns its identifier. Otherwise, for target states other than
    # 			<code>DELETED</code>, the state change applies immediately. If a request
    # 			that starts a lifecycle execution arrives while the image already has one in
    # 			progress, Image Builder rejects it.</p>
    # @param [Hash, Types::StartResourceStateUpdateRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version to update. The
    #   			image must be in one of these terminal states: <code>AVAILABLE</code>,
    #   			<code>DEPRECATED</code>, <code>DISABLED</code>,
    #   			<code>FAILED</code>, or <code>CANCELLED</code>. Images with
    #   			<code>FAILED</code> or <code>CANCELLED</code> status can transition only
    #   			to <code>DELETED</code>.</p>
    # @option params [Types::ResourceState] :state
    #   <p>Specifies the lifecycle action to take for this request. For AMI-based
    #   			images, valid values are <code>AVAILABLE</code>,
    #   			<code>DEPRECATED</code>, <code>DISABLED</code>, and
    #   			<code>DELETED</code>. For container-based images, only
    #   			<code>DELETED</code> is supported.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that's used to update image state. You
    #   			must provide this property together with <code>includeResources</code>.
    #   			Neither is valid without the other.</p>
    # @option params [Types::ResourceStateUpdateIncludeResources] :include_resources
    #   <p>Specifies which underlying resources to update, in addition to the Image Builder
    #   			image resource itself. Snapshots and containers are only valid for the
    #   			<code>DELETED</code> state. To set an image to <code>DELETED</code>, you
    #   			must include its underlying resources. To delete only the Image Builder image
    #   			record, use the <a>DeleteImage</a> operation instead.</p>
    # @option params [Types::ResourceStateUpdateExclusionRules] :exclusion_rules
    #   <p>Rules that Image Builder evaluates against each of the image's AMIs. Matching
    #   			AMIs and their snapshots are skipped. Exclusion rules only take effect when
    #   			the request includes AMIs. If the target state is <code>DELETED</code> and
    #   			any resource was skipped, the Image Builder image resource itself is also retained.
    #   			For the <code>DEPRECATED</code> and <code>DISABLED</code> target states,
    #   			Image Builder updates the image resource's state regardless of
    #   			exclusions.</p>
    # @option params [Time] :update_at
    #   <p>The timestamp that indicates when resources are updated by a lifecycle
    #   			action. This property is valid only when the target status is
    #   			<code>DEPRECATED</code>, and the value must be a future time. If you
    #   			don't specify a value, Image Builder begins the state update right away. For a
    #   			scheduled deprecation, included AMIs get their EC2 deprecation time set
    #   			immediately, and Image Builder schedules the image resource to transition to
    #   			<code>DEPRECATED</code> at that time.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Schedule an image build version for deprecation
    #   # The following example schedules the specified image build version and its AMI to move to the DEPRECATED state at the requested future time. It returns the ID of the lifecycle execution that applies the update.
    #   params = {
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1",
    #     state: {
    #       status: DEPRECATED
    #     },
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-state-update-role",
    #     include_resources: {
    #       amis: true
    #     },
    #     update_at: Time.parse("2026-09-11T21:20:00Z"),
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE24680"
    #   }
    #   options = {}
    #   response = client.start_resource_state_update(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503",
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ImageBuildVersionArn", # required
    #     state: { # required
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "DEPRECATED", "DISABLED"]
    #     },
    #     execution_role: "RoleNameOrArn",
    #     include_resources: {
    #       amis: false,
    #       snapshots: false,
    #       containers: false
    #     },
    #     exclusion_rules: {
    #       amis: {
    #         is_public: false,
    #         regions: ["NonEmptyString"],
    #         shared_accounts: ["AccountId"],
    #         last_launched: {
    #           value: 1, # required
    #           unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #         },
    #         tag_map: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     },
    #     update_at: Time.now,
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.start_resource_state_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_execution_id: "LifecycleExecutionId",
    #     resource_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::StartResourceStateUpdateResponse]
    def start_resource_state_update(params = {}, options = {})
      request = build_request(:start_resource_state_update, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the resource.</p>
    # @example Add tags to a component build version
    #   # The following example adds two tags to a component build version.
    #   params = {
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-tagged-component/1.0.0/1",
    #     tags: {
    #       "Environment" => "Production",
    #       "CostCenter" => "12345"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ImageBuilderArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    # @example Remove a tag from a resource
    #   # The following example removes the CostCenter tag key from the specified component build version.
    #   params = {
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-tagged-component/1.0.0/1",
    #     tag_keys: [
    #       "CostCenter"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ImageBuilderArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a distribution configuration. Distribution configurations define and
    # 			configure the outputs for your images, including the target Regions,
    # 			accounts, and settings for each Region.</p>
    #          <note>
    #             <p>This operation doesn't support selective updates. The request
    # 				replaces the stored configuration, so include every setting that you
    # 				want to keep.</p>
    #          </note>
    # @param [Hash, Types::UpdateDistributionConfigurationRequest] params
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			update.</p>
    # @option params [String] :description
    #   <p>The description of the distribution configuration.</p>
    # @option params [Array<Types::Distribution>] :distributions
    #   <p>The distribution settings for the configuration. Each entry defines how
    #   			output images are distributed in one target Amazon Web Services Region. A Region can
    #   			appear at most once in the list. This list replaces the configuration's existing
    #   			distributions entirely.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Update a distribution configuration
    #   # The following example replaces the distribution settings for the specified configuration with a single distribution that names the output AMI with the build date.
    #   params = {
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution",
    #     distributions: [
    #       {
    #         region: "us-west-2",
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}"
    #         }
    #       }
    #     ],
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEccccc"
    #   }
    #   options = {}
    #   response = client.update_distribution_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "97d5c3e8-93d6-424c-90e0-bab18b20bf54",
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #     description: "NonEmptyString",
    #     distributions: [ # required
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #             organization_arns: ["OrganizationArn"],
    #             organizational_unit_arns: ["OrganizationalUnitArn"]
    #           }
    #         },
    #         container_distribution_configuration: {
    #           description: "NonEmptyString",
    #           container_tags: ["NonEmptyString"],
    #           target_repository: { # required
    #             service: "ECR" # One of: ["ECR"], # required
    #             repository_name: "NonEmptyString", # required
    #           }
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "LaunchTemplateId", # required
    #             account_id: "AccountId",
    #             set_default_version: false
    #           }
    #         ],
    #         s3_export_configuration: {
    #           role_name: "NonEmptyString", # required
    #           disk_image_format: "VMDK" # One of: ["VMDK", "RAW", "VHD"], # required
    #           s3_bucket: "NonEmptyString", # required
    #           s3_prefix: "NonEmptyString"
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: "LaunchTemplateId",
    #               launch_template_name: "NonEmptyString",
    #               launch_template_version: "NonEmptyString"
    #             },
    #             account_id: "AccountId"
    #           }
    #         ],
    #         ssm_parameter_configurations: [
    #           {
    #             ami_account_id: "AccountId",
    #             parameter_name: "SsmParameterName", # required
    #             data_type: "text" # One of: ["text", "aws:ec2:image"]
    #           }
    #         ]
    #       }
    #     ],
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.update_distribution_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     distribution_configuration_arn: "DistributionConfigurationArn"
    #   }
    # @return [Types::UpdateDistributionConfigurationResponse]
    def update_distribution_configuration(params = {}, options = {})
      request = build_request(:update_distribution_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an image pipeline. Use image pipelines to automate the creation and
    # 			distribution of images. You must specify exactly one recipe for your image, using either
    # 			a <code>containerRecipeArn</code> or an <code>imageRecipeArn</code>. The
    # 			recipe must be the same type, image or container, as the pipeline's current
    # 			recipe.</p>
    #          <note>
    #             <p>UpdateImagePipeline does not support selective updates. The request
    # 				replaces the pipeline's entire configuration, so include every setting
    # 				that you want to keep. Any optional property that you omit is removed
    # 				or reset to its default.</p>
    #          </note>
    # @param [Hash, Types::UpdateImagePipelineRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to update.</p>
    # @option params [String] :description
    #   <p>The description of the image pipeline.</p>
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that configures
    #   			images created by this image pipeline. You must specify either this property
    #   			or <code>containerRecipeArn</code>, but not both.</p>
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure images
    #   			created by this container pipeline. You must specify either this property or
    #   			<code>imageRecipeArn</code>, but not both.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that Image Builder uses to
    #   			build images created by this image pipeline.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that Image Builder uses to
    #   			configure and distribute images created by this image pipeline.</p>
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   <p>Specifies the test settings that Image Builder applies to images that this
    #   			pipeline creates. If you don't provide test settings, Image Builder stores a default
    #   			configuration with image tests enabled.</p>
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule of the image pipeline. Because the update replaces the entire
    #   			configuration, omitting this property removes any existing schedule. The
    #   			pipeline then runs only when you call
    #   			<a>StartImagePipelineExecution</a>.</p>
    # @option params [String] :status
    #   <p>The status of the image pipeline. Defaults to <code>ENABLED</code> when
    #   			omitted. To keep a pipeline disabled, include this property set to
    #   			<code>DISABLED</code> in your update request.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>Contains settings for vulnerability scans that Amazon Inspector runs against the test instance
    #   			during image creation.</p>
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   <p>The array of workflow configuration objects for builds that this pipeline
    #   			starts. You must also specify <code>executionRole</code> when you provide
    #   			workflows.</p>
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   <p>Specifies the logging configuration for the image pipeline. Use this
    #   			to define custom CloudWatch Logs log groups for your pipeline execution
    #   			logs and image build logs. The service manages log groups with names
    #   			starting with <code>/aws/imagebuilder/</code> using the service-linked
    #   			role. For custom log group names outside of this prefix, you must also
    #   			provide an <code>executionRole</code>.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions. If you omit this property, the
    #   			pipeline reverts to the Image Builder service-linked role.</p>
    # @option params [Hash<String, String>] :image_tags
    #   <p>The tags that Image Builder applies to the Image Builder image resource that this
    #   			pipeline's scheduled executions create. These tags don't apply to the
    #   			output AMI. To tag output AMIs, use <code>amiTags</code> in the
    #   			pipeline's distribution configuration.</p>
    # @example Update an image pipeline
    #   # The following example changes the pipeline's schedule to build every day at 6:00 AM UTC.
    #   params = {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline",
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     schedule: {
    #       schedule_expression: "cron(0 6 * * ? *)",
    #       pipeline_execution_start_condition: EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #     },
    #     status: ENABLED,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEddddd"
    #   }
    #   options = {}
    #   response = client.update_image_pipeline(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "7a414b2d-e462-4850-ae7a-fe25a1223e0f",
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     description: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: "NonEmptyString",
    #       timezone: "Timezone",
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY" # One of: ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"],
    #       auto_disable_policy: {
    #         failure_count: 1, # required
    #       }
    #     },
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     client_token: "ClientToken", # required
    #     image_scanning_configuration: {
    #       image_scanning_enabled: false,
    #       ecr_configuration: {
    #         repository_name: "NonEmptyString",
    #         container_tags: ["NonEmptyString"]
    #       }
    #     },
    #     workflows: [
    #       {
    #         workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "WorkflowParameterName", # required
    #             value: ["WorkflowParameterValue"], # required
    #           }
    #         ],
    #         parallel_group: "ParallelGroup",
    #         on_failure: "CONTINUE" # One of: ["CONTINUE", "ABORT"]
    #       }
    #     ],
    #     logging_configuration: {
    #       image_log_group_name: "LogGroupName",
    #       pipeline_log_group_name: "LogGroupName"
    #     },
    #     execution_role: "RoleNameOrArn",
    #     image_tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_image_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_pipeline_arn: "ImagePipelineArn"
    #   }
    # @return [Types::UpdateImagePipelineResponse]
    def update_image_pipeline(params = {}, options = {})
      request = build_request(:update_image_pipeline, params)
      request.send_request(options)
    end

    # <p>Updates an infrastructure configuration. An infrastructure configuration defines
    # 			the environment in which Image Builder builds and tests your image.</p>
    #          <note>
    #             <p>This operation doesn't support selective updates.
    # 				The request replaces the configuration, so include every setting that
    # 				you want to keep. Omitted optional properties are cleared.</p>
    #          </note>
    # @param [Hash, Types::UpdateInfrastructureConfigurationRequest] params
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			update.</p>
    # @option params [String] :description
    #   <p>The description of the infrastructure configuration.</p>
    # @option params [Array<String>] :instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. Image Builder picks one of these instance types
    #   			based on availability. If you don't specify instance types, Image Builder selects
    #   			compatible instance types automatically. If you specify a Dedicated Host,
    #   			Image Builder uses only instance types that the host supports.</p>
    # @option params [String] :instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI. The instance profile must exist in your account.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    # @option params [String] :subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2
    #   			AMI. If you specify <code>subnetId</code>, you must also specify one or
    #   			more security group IDs in <code>securityGroupIds</code>. Otherwise, the
    #   			request fails.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration of the infrastructure configuration. When you
    #   			configure S3 logs, Image Builder writes logs from the build and test process to the
    #   			specified bucket under the key prefix.</p>
    # @option params [String] :key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    # @option params [Boolean] :terminate_instance_on_failure
    #   <p>Specifies whether to terminate the instance on failure. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails. Defaults to <code>true</code>.</p>
    # @option params [Boolean] :terminate_instance_on_completion
    #   <p>Specifies whether Image Builder terminates build and test instances when image creation
    #   			ends without a failure (success, cancellation, or expiration). Defaults to
    #   			<code>true</code>.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to which Image Builder
    #   			sends image build event notifications. Specify a standard topic. Image Builder doesn't support FIFO
    #   			topics. Image Builder validates the topic when you create or update the configuration.
    #   			You must have permission to publish to the topic.</p>
    #            <note>
    #               <p>EC2 Image Builder can't send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. If your SNS topic is encrypted, the key must be owned by the
    #   				same account that owns your Image Builder resources.</p>
    #            </note>
    # @option params [Hash<String, String>] :resource_tags
    #   <p>The metadata tags to assign to the Amazon EC2 instance that Image Builder launches during
    #   			the build process. Tags are formatted as key value pairs. Tag keys can't
    #   			begin with <code>aws:</code> or match one of the following reserved keys:
    #   			<code>CreatedBy</code>, <code>Ec2ImageBuilderArn</code>, <code>Name</code>,
    #   			or <code>Tags</code>.</p>
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   <p>The instance metadata service (IMDS) settings that Image Builder applies to the EC2
    #   			build and test instances it launches during image creation. If you don't
    #   			set these options, the EC2 launch defaults for the instance apply. For more
    #   			information about instance metadata options, see one of the following
    #   			links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   						<i>
    #                        <i>Amazon EC2 User Guide</i>
    #                     </i> for Linux instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   						<i>
    #                        <i>Amazon EC2 Windows Guide</i>
    #                     </i> for Windows instances.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Placement] :placement
    #   <p>The instance placement settings that define where the build and test
    #   			instances that Image Builder launches during image creation run. These settings
    #   			don't affect instances that you launch from the output image.</p>
    # @option params [Types::ParentInstanceConfiguration] :parent_instance
    #   <p>The Amazon EC2 Auto Scaling group that Image Builder takes the build instance from, instead of
    #   			launching a new instance. This applies only to the build phase.</p>
    #            <p>To use this feature, the execution role for the build must have permissions to
    #   			describe the Auto Scaling group, tag the instance while it's still in the group, and
    #   			detach it from the group. For more information, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/infra-config-parent-instance.html">Build on an
    #   				instance from an Auto Scaling group</a> in the <i>EC2 Image Builder User
    #   				Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Update an infrastructure configuration
    #   # The following example updates an infrastructure configuration to use larger instance types and to keep the build instance running when the image build fails.
    #   params = {
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure",
    #     description: "An infrastructure configuration for Amazon Linux builds",
    #     instance_profile_name: "EC2InstanceProfileForImageBuilder",
    #     instance_types: [
    #       "t3.large",
    #       "t3.xlarge"
    #     ],
    #     terminate_instance_on_failure: false,
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEbbbbb"
    #   }
    #   options = {}
    #   response = client.update_infrastructure_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     request_id: "ffe990d5-7720-4061-a8d6-da6a7c4a6a3e",
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     description: "NonEmptyString",
    #     instance_types: ["InstanceType"],
    #     instance_profile_name: "InstanceProfileNameType", # required
    #     security_group_ids: ["NonEmptyString"],
    #     subnet_id: "NonEmptyString",
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString"
    #       }
    #     },
    #     key_pair: "NonEmptyString",
    #     terminate_instance_on_failure: false,
    #     terminate_instance_on_completion: false,
    #     sns_topic_arn: "SnsTopicArn",
    #     resource_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     instance_metadata_options: {
    #       http_tokens: "HttpTokens",
    #       http_put_response_hop_limit: 1
    #     },
    #     placement: {
    #       availability_zone: "NonEmptyString",
    #       tenancy: "default" # One of: ["default", "dedicated", "host"],
    #       host_id: "NonEmptyString",
    #       host_resource_group_arn: "NonEmptyString"
    #     },
    #     parent_instance: {
    #       auto_scaling_group: { # required
    #         name: "NonEmptyString", # required
    #         capacity_wait_timeout_seconds: 1
    #       }
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.update_infrastructure_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn"
    #   }
    # @return [Types::UpdateInfrastructureConfigurationResponse]
    def update_infrastructure_configuration(params = {}, options = {})
      request = build_request(:update_infrastructure_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the specified lifecycle policy. The request replaces the existing
    # 			policy configuration rather than merging changes, so re-specify every setting
    # 			that you want to keep. The <code>resourceType</code> must match the existing
    # 			policy's value.</p>
    # @param [Hash, Types::UpdateLifecyclePolicyRequest] params
    # @option params [String] :lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource.</p>
    # @option params [String] :description
    #   <p>Optional description for the lifecycle policy. Because the update replaces the
    #   			entire configuration, omitting this property removes any existing
    #   			description.</p>
    # @option params [String] :status
    #   <p>Indicates whether the lifecycle policy resource is enabled. Defaults to
    #   			<code>ENABLED</code> when omitted, so updating a disabled policy without
    #   			setting this property re-enables it.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access
    #   			to run lifecycle actions.</p>
    # @option params [String] :resource_type
    #   <p>The type of image resource that the lifecycle policy applies to. The value
    #   			must match the policy's existing resource type. You can't change the
    #   			resource type of an existing lifecycle policy.</p>
    # @option params [Array<Types::LifecyclePolicyDetail>] :policy_details
    #   <p>The configuration details for a lifecycle policy resource.</p>
    # @option params [Types::LifecyclePolicyResourceSelection] :resource_selection
    #   <p>Selection criteria for resources that the lifecycle policy applies to. You
    #   			must specify exactly one selection criteria: either recipes or a tag map,
    #   			not both.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Update a lifecycle policy
    #   # The following example updates a lifecycle policy to delete AMI images and their associated snapshots after 12 months, retaining the 3 most recent images.
    #   params = {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-policy",
    #     description: "Deletes AMI images and their snapshots after 12 months, retaining the 3 most recent",
    #     status: ENABLED,
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role",
    #     resource_type: AMI_IMAGE,
    #     policy_details: [
    #       {
    #         action: {
    #           type: DELETE,
    #           include_resources: {
    #             amis: true,
    #             snapshots: true
    #           }
    #         },
    #         filter: {
    #           type: AGE,
    #           value: 12,
    #           unit: MONTHS,
    #           retain_at_least: 3
    #         }
    #       }
    #     ],
    #     resource_selection: {
    #       tag_map: {
    #         "environment" => "production"
    #       }
    #     },
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEaaaaa"
    #   }
    #   options = {}
    #   response = client.update_lifecycle_policy(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-policy"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_policy_arn: "LifecyclePolicyArn", # required
    #     description: "NonEmptyString",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     execution_role: "RoleNameOrArn", # required
    #     resource_type: "AMI_IMAGE" # One of: ["AMI_IMAGE", "CONTAINER_IMAGE"], # required
    #     policy_details: [ # required
    #       {
    #         action: { # required
    #           type: "DELETE" # One of: ["DELETE", "DEPRECATE", "DISABLE"], # required
    #           include_resources: {
    #             amis: false,
    #             snapshots: false,
    #             containers: false
    #           }
    #         },
    #         filter: { # required
    #           type: "AGE" # One of: ["AGE", "COUNT"], # required
    #           value: 1, # required
    #           unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"],
    #           retain_at_least: 1
    #         },
    #         exclusion_rules: {
    #           tag_map: {
    #             "TagKey" => "TagValue"
    #           },
    #           amis: {
    #             is_public: false,
    #             regions: ["NonEmptyString"],
    #             shared_accounts: ["AccountId"],
    #             last_launched: {
    #               value: 1, # required
    #               unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             },
    #             tag_map: {
    #               "TagKey" => "TagValue"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     resource_selection: { # required
    #       recipes: [
    #         {
    #           name: "ResourceName", # required
    #           semantic_version: "WildcardVersionNumber", # required
    #         }
    #       ],
    #       tag_map: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.update_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_arn: "LifecyclePolicyArn"
    #   }
    # @return [Types::UpdateLifecyclePolicyResponse]
    def update_lifecycle_policy(params = {}, options = {})
      request = build_request(:update_lifecycle_policy, params)
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
      context[:gem_name] = 'aws-sdk-imagebuilder'
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
