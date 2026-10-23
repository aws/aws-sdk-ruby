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

    # <p>CancelImageCreation cancels the creation of Image. This operation can only be used on
    # 			images in a non-terminal state.</p>
    # @param [Hash, Types::CancelImageCreationRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to cancel creation
    #   			for.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Cancel a specific image lifecycle policy runtime instance.</p>
    # @param [Hash, Types::CancelLifecycleExecutionRequest] params
    # @option params [String] :lifecycle_execution_id
    #   <p>Identifies the specific runtime instance of the image lifecycle to cancel.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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
    # @param [Hash, Types::CreateComponentRequest] params
    # @option params [String] :name
    #   <p>The name of the component.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
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
    #   				(<code>s3://bucket/key</code>), and the requester must have permission to access the
    #   			S3 bucket it points to. If you use Amazon S3, you can specify component content up to your
    #   			service quota.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the component
    #   				<code>data</code> property. You cannot specify both properties.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this component. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that apply to the component.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     component_build_version_arn: "ComponentBuildVersionArn"
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
    #   <p>The name of the container recipe.</p>
    # @option params [String] :description
    #   <p>The description of the container recipe.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the container recipe. This version follows the semantic
    #   			version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [Array<Types::ComponentConfiguration>] :components
    #   <p>Components for build and test that are included in the container recipe.
    #   			Recipes require a minimum of one build component, and can 
    #   			have a maximum of 20 build and test components in any combination.</p>
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing
    #   			container images.</p>
    # @option params [String] :dockerfile_template_data
    #   <p>The Dockerfile template used to build your image as an inline data blob.</p>
    # @option params [String] :dockerfile_template_uri
    #   <p>The Amazon S3 URI for the Dockerfile that will be used to build your container
    #   			image.</p>
    # @option params [String] :platform_override
    #   <p>Specifies the operating system platform when you use a custom base image.</p>
    # @option params [String] :image_os_version_override
    #   <p>Specifies the operating system version for the base image.</p>
    # @option params [String] :parent_image
    #   <p>The base image for the container recipe.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to the container recipe.</p>
    # @option params [String] :working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    # @option params [Types::TargetContainerRepository] :target_repository
    #   <p>The destination repository for the container image.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies which KMS key is used to encrypt the Dockerfile 
    #   			template. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_type: "DOCKER" # One of: ["DOCKER"], # required
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "VersionNumber", # required
    #     components: [ # required
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
    #   }
    #   options = {}
    #   response = client.create_container_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     container_recipe_arn: "ContainerRecipeArn"
    #   }
    # @return [Types::CreateContainerRecipeResponse]
    def create_container_recipe(params = {}, options = {})
      request = build_request(:create_container_recipe, params)
      request.send_request(options)
    end

    # <p>Creates a new distribution configuration. Distribution configurations define and
    # 			configure the outputs of your pipeline.</p>
    # @param [Hash, Types::CreateDistributionConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the distribution configuration.</p>
    # @option params [String] :description
    #   <p>The description of the distribution configuration.</p>
    # @option params [Array<Types::Distribution>] :distributions
    #   <p>The distributions of the distribution configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the distribution configuration.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Creates a new image. This request will create a new image along with all of the
    # 			configured output resources defined in the distribution configuration. You must specify
    # 			exactly one recipe for your image, using either a ContainerRecipeArn or an
    # 			ImageRecipeArn.</p>
    # @param [Hash, Types::CreateImageRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that defines how images are
    #   			configured, tested, and assessed.</p>
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that defines how images are
    #   			configured and tested.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that defines and
    #   			configures the outputs of your pipeline.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
    #   			environment in which your image will be built and tested.</p>
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   <p>The image tests configuration of the image.</p>
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the image.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   <p>Contains an array of workflow configuration objects.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
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
    #     image_build_version_arn: "ImageBuildVersionArn"
    #   }
    # @return [Types::CreateImageResponse]
    def create_image(params = {}, options = {})
      request = build_request(:create_image, params)
      request.send_request(options)
    end

    # <p>Creates a new image pipeline. Image pipelines enable you to automate the creation and
    # 			distribution of images.</p>
    # @param [Hash, Types::CreateImagePipelineRequest] params
    # @option params [String] :name
    #   <p>The name of the image pipeline.</p>
    # @option params [String] :description
    #   <p>The description of the image pipeline.</p>
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure
    #   			images created by this image pipeline.</p>
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure
    #   			images created by this container pipeline.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that will be used
    #   			to build images created by this image pipeline.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that will be used to
    #   			configure and distribute images created by this image pipeline.</p>
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   <p>The image test configuration of the image pipeline.</p>
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule of the image pipeline.</p>
    # @option params [String] :status
    #   <p>The status of the image pipeline.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the image pipeline.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   <p>Contains an array of workflow configuration objects.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
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
    #     }
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
    #   <p>The name of the image recipe.</p>
    # @option params [String] :description
    #   <p>The description of the image recipe.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the image recipe. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    # @option params [Array<Types::ComponentConfiguration>] :components
    #   <p>The components included in the image recipe.</p>
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
    #   			to the AMI, and the AMI must be in the source Region.</p>
    # @option params [Array<Types::InstanceBlockDeviceMapping>] :block_device_mappings
    #   <p>The block device mappings of the image recipe.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the image recipe.</p>
    # @option params [String] :working_directory
    #   <p>The working directory used during build and test workflows.</p>
    # @option params [Types::AdditionalInstanceConfiguration] :additional_instance_configuration
    #   <p>Specify additional settings and launch scripts for your build instances.</p>
    # @option params [Hash<String, String>] :ami_tags
    #   <p>Tags that are applied to the AMI that Image Builder creates during the Build phase 
    #   			prior to image distribution.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "VersionNumber", # required
    #     components: [ # required
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
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.create_image_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "NonEmptyString",
    #     client_token: "ClientToken",
    #     image_recipe_arn: "ImageRecipeArn"
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
    #   <p>The name of the infrastructure configuration.</p>
    # @option params [String] :description
    #   <p>The description of the infrastructure configuration.</p>
    # @option params [Array<String>] :instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types
    #   			based on availability.</p>
    # @option params [String] :instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    # @option params [String] :subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2 AMI.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    # @option params [String] :key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    # @option params [Boolean] :terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event
    #   			notifications.</p>
    #            <note>
    #               <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
    #   				account that the Image Builder service runs under.</p>
    #            </note>
    # @option params [Hash<String, String>] :resource_tags
    #   <p>The metadata tags to assign to the Amazon EC2 instance that Image Builder launches during the build process. 
    #   			Tags are formatted as key value pairs.</p>
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that pipeline
    #   			builds use to launch EC2 build and test instances.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata tags to assign to the infrastructure configuration resource that Image Builder 
    #   			creates as output. Tags are formatted as key value pairs.</p>
    # @option params [Types::Placement] :placement
    #   <p>The instance placement settings that define where the instances that are launched 
    #   			from your image will run.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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
    #     client_token: "ClientToken", # required
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

    # <p>Create a lifecycle policy resource.</p>
    # @param [Hash, Types::CreateLifecyclePolicyRequest] params
    # @option params [String] :name
    #   <p>The name of the  lifecycle policy to create.</p>
    # @option params [String] :description
    #   <p>Optional description for the lifecycle policy.</p>
    # @option params [String] :status
    #   <p>Indicates whether the lifecycle policy resource is enabled.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to run lifecycle actions.</p>
    # @option params [String] :resource_type
    #   <p>The type of Image Builder resource that the lifecycle policy applies to.</p>
    # @option params [Array<Types::LifecyclePolicyDetail>] :policy_details
    #   <p>Configuration details for the lifecycle policy rules.</p>
    # @option params [Types::LifecyclePolicyResourceSelection] :resource_selection
    #   <p>Selection criteria for the resources that the lifecycle policy applies to. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to apply to the lifecycle policy resource.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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
    #           semantic_version: "VersionNumber", # required
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

    # <p>Create a new workflow or a new version of an existing workflow.</p>
    # @param [Hash, Types::CreateWorkflowRequest] params
    # @option params [String] :name
    #   <p>The name of the workflow to create.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of this workflow resource. The semantic version syntax 
    #   			adheres to the following rules.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
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
    #   <p>Contains the UTF-8 encoded YAML document content for the workflow. 
    #   			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in
    #   			Amazon S3. However, you cannot specify both properties.</p>
    # @option params [String] :uri
    #   <p>The <code>uri</code> of a YAML component document file. This must be an S3 URL
    #   			(<code>s3://bucket/key</code>), and the requester must have permission to access the
    #   			S3 bucket it points to. If you use Amazon S3, you can specify component content up to your
    #   			service quota.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the component
    #   			<code>data</code> property. You cannot specify both properties.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this workflow resource. 
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that apply to the workflow resource.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [String] :type
    #   <p>The phase in the image build process for which the workflow resource 
    #   			is responsible.</p>
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
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     workflow_build_version_arn: "WorkflowBuildVersionArn"
    #   }
    # @return [Types::CreateWorkflowResponse]
    def create_workflow(params = {}, options = {})
      request = build_request(:create_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes a component build version.</p>
    # @param [Hash, Types::DeleteComponentRequest] params
    # @option params [String] :component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version to delete.</p>
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

    # <p>Deletes a container recipe.</p>
    # @param [Hash, Types::DeleteContainerRecipeRequest] params
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to delete.</p>
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

    # <p>Deletes a distribution configuration.</p>
    # @param [Hash, Types::DeleteDistributionConfigurationRequest] params
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration to delete.</p>
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

    # <p>Deletes an image pipeline.</p>
    # @param [Hash, Types::DeleteImagePipelineRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline to delete.</p>
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

    # <p>Deletes an infrastructure configuration.</p>
    # @param [Hash, Types::DeleteInfrastructureConfigurationRequest] params
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete.</p>
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

    # <p>Delete the specified lifecycle policy resource.</p>
    # @param [Hash, Types::DeleteLifecyclePolicyRequest] params
    # @option params [String] :lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource to delete.</p>
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

    # <p>Deletes a specific workflow resource.</p>
    # @param [Hash, Types::DeleteWorkflowRequest] params
    # @option params [String] :workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource to delete.</p>
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

    # <p>Gets a component object.</p>
    # @param [Hash, Types::GetComponentRequest] params
    # @option params [String] :component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that you want to get. Regex requires
    #   			the suffix <code>/\d+$</code>.</p>
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
    #     }
    #   }
    # @return [Types::GetComponentResponse]
    def get_component(params = {}, options = {})
      request = build_request(:get_component, params)
      request.send_request(options)
    end

    # <p>Gets a component policy.</p>
    # @param [Hash, Types::GetComponentPolicyRequest] params
    # @option params [String] :component_arn
    #   <p>The Amazon Resource Name (ARN) of the component whose policy you want to
    #   			retrieve.</p>
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

    # <p>Gets a distribution configuration.</p>
    # @param [Hash, Types::GetDistributionConfigurationRequest] params
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			retrieve.</p>
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

    # <p>Gets an image.</p>
    # @param [Hash, Types::GetImageRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to get.</p>
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
    #       version: "VersionNumber",
    #       platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #       enhanced_image_metadata_enabled: false,
    #       os_version: "OsVersion",
    #       state: {
    #         status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #         reason: "NonEmptyString"
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
    #         }
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
    #               reason: "NonEmptyString"
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
    #     }
    #   }
    # @return [Types::GetImageResponse]
    def get_image(params = {}, options = {})
      request = build_request(:get_image, params)
      request.send_request(options)
    end

    # <p>Gets an image pipeline.</p>
    # @param [Hash, Types::GetImagePipelineRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve.</p>
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

    # <p>Gets an image policy.</p>
    # @param [Hash, Types::GetImagePolicyRequest] params
    # @option params [String] :image_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve.</p>
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

    # <p>Gets an image recipe.</p>
    # @param [Hash, Types::GetImageRecipeRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve.</p>
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
    #       }
    #     }
    #   }
    # @return [Types::GetImageRecipeResponse]
    def get_image_recipe(params = {}, options = {})
      request = build_request(:get_image_recipe, params)
      request.send_request(options)
    end

    # <p>Gets an image recipe policy.</p>
    # @param [Hash, Types::GetImageRecipePolicyRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to
    #   			retrieve.</p>
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

    # <p>Gets an infrastructure configuration.</p>
    # @param [Hash, Types::GetInfrastructureConfigurationRequest] params
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			retrieve.</p>
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
    #       }
    #     }
    #   }
    # @return [Types::GetInfrastructureConfigurationResponse]
    def get_infrastructure_configuration(params = {}, options = {})
      request = build_request(:get_infrastructure_configuration, params)
      request.send_request(options)
    end

    # <p>Get the runtime information that was logged for a specific runtime instance of the lifecycle policy.</p>
    # @param [Hash, Types::GetLifecycleExecutionRequest] params
    # @option params [String] :lifecycle_execution_id
    #   <p>Use the unique identifier for a runtime instance of the lifecycle policy to get runtime details.</p>
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

    # <p>Get details for the specified image lifecycle policy.</p>
    # @param [Hash, Types::GetLifecyclePolicyRequest] params
    # @option params [String] :lifecycle_policy_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the image lifecycle policy resource to get.</p>
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
    #             semantic_version: "VersionNumber", # required
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

    # <p>Verify the subscription and perform resource dependency checks on the requested 
    # 			Amazon Web Services Marketplace resource. For Amazon Web Services Marketplace components, the response contains fields to download the 
    # 			components and their artifacts.</p>
    # @param [Hash, Types::GetMarketplaceResourceRequest] params
    # @option params [String] :resource_type
    #   <p>Specifies which type of Amazon Web Services Marketplace resource Image Builder retrieves.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an Amazon Web Services Marketplace resource.</p>
    # @option params [String] :resource_location
    #   <p>The bucket path that you can specify to download the resource from Amazon S3.</p>
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

    # <p>Get a workflow resource object.</p>
    # @param [Hash, Types::GetWorkflowRequest] params
    # @option params [String] :workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that you want to get.</p>
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
    #     }
    #   }
    # @return [Types::GetWorkflowResponse]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Get the runtime information that was logged for a specific runtime instance 
    # 			of the workflow.</p>
    # @param [Hash, Types::GetWorkflowExecutionRequest] params
    # @option params [String] :workflow_execution_id
    #   <p>Use the unique identifier for a runtime instance of the workflow to get 
    #   			runtime details.</p>
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

    # <p>Get the runtime information that was logged for a specific runtime instance of 
    # 			the workflow step.</p>
    # @param [Hash, Types::GetWorkflowStepExecutionRequest] params
    # @option params [String] :step_execution_id
    #   <p>Use the unique identifier for a specific runtime instance of the workflow step to 
    #   			get runtime details for that step.</p>
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
    #     timeout_seconds: 1
    #   }
    # @return [Types::GetWorkflowStepExecutionResponse]
    def get_workflow_step_execution(params = {}, options = {})
      request = build_request(:get_workflow_step_execution, params)
      request.send_request(options)
    end

    # <p>Imports a component and transforms its data into a component document.</p>
    # @param [Hash, Types::ImportComponentRequest] params
    # @option params [String] :name
    #   <p>The name of the component.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
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
    #   <p>The data of the component. Used to specify the data inline. Either <code>data</code>
    #   			or <code>uri</code> can be used to specify the data within the component.</p>
    # @option params [String] :uri
    #   <p>The uri of the component. Must be an Amazon S3 URL and the requester must have permission
    #   			to access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your
    #   			service quota. Either <code>data</code> or <code>uri</code> can be used to specify the
    #   			data within the component.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this component. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the component.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Import a Windows operating system image from a verified Microsoft ISO disk 
    # 			file. The following disk images are supported:</p>
    #          <ul>
    #             <li>
    #                <p>Windows 11 Enterprise</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ImportDiskImageRequest] params
    # @option params [String] :name
    #   <p>The name of the image resource that's created from the import.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version to attach to the image that's created during the import
    #   			process. This version follows the semantic version syntax.</p>
    # @option params [String] :description
    #   <p>The description for your disk image import.</p>
    # @option params [String] :platform
    #   <p>The operating system platform for the imported image. Allowed values include 
    #   			the following: <code>Windows</code>.</p>
    # @option params [String] :os_version
    #   <p>The operating system version for the imported image. Allowed values include 
    #   			the following: <code>Microsoft Windows 11</code>.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access 
    #   			to perform workflow actions to import an image from a Microsoft ISO file.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration resource that's used for 
    #   			launching the EC2 instance on which the ISO image is built.</p>
    # @option params [String] :uri
    #   <p>The <code>uri</code> of the ISO disk file that's stored in Amazon S3.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to image resources created from the import.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
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

    # <p>When you export your virtual machine (VM) from its virtualization environment, that
    # 			process creates a set of one or more disk container files that act as snapshots of your
    # 			VM’s environment, settings, and data. The Amazon EC2 API <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html">ImportImage</a>
    # 			action uses those files to import your VM and create an AMI. To import using the CLI
    # 			command, see <a href="https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html">import-image</a>
    #          </p>
    #          <p>You can reference the task ID from the VM import to pull in the AMI that the import
    # 			created as the base image for your Image Builder recipe.</p>
    # @param [Hash, Types::ImportVmImageRequest] params
    # @option params [String] :name
    #   <p>The name of the base image that is created by the import process.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version to attach to the base image that was created during the import
    #   			process. This version follows the semantic version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
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
    #   			Amazon EC2 VM import process. Image Builder retrieves information from the import process to pull in
    #   			the AMI that is created from the VM source as the base image for your recipe.</p>
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to the import resources.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Returns the list of component build versions for the specified component 
    # 			version Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListComponentBuildVersionsRequest] params
    # @option params [String] :component_version_arn
    #   <p>The component version Amazon Resource Name (ARN) whose versions you want to
    #   			list.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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

    # <p>Returns the list of components that can be filtered by name, or by using the listed
    # 				<code>filters</code> to streamline results. Newly created components can take up to
    # 			two minutes to appear in the ListComponents API Results.</p>
    #          <note>
    #             <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    # 	You can assign values for the first three, and can filter on all of them.</p>
    #             <p>
    #                <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    # 	to specify the most recent versions or nodes when selecting the base image or components for your 
    # 	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    # 	wildcards.</p>
    #          </note>
    # @param [Hash, Types::ListComponentsRequest] params
    # @option params [String] :owner
    #   <p>Filters results based on the type of owner for the component. By default, this request
    #   			returns a list of components that your account owns. To see results for other types of
    #   			owners, you can specify components that Amazon manages, third party components, or
    #   			components that other accounts have shared with you.</p>
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
    #   <p>Returns the list of components for the specified name.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #   <p>Returns container recipes belonging to the specified owner, that have been shared with
    #   			you. You can omit this field to return container recipes belonging to your
    #   			account.</p>
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #     next_token: "NonEmptyString"
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the image whose build versions you want to
    #   			retrieve.</p>
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #         version: "VersionNumber",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         os_version: "OsVersion",
    #         state: {
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #           reason: "NonEmptyString"
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
    #                 reason: "NonEmptyString"
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

    # <p>List the Packages that are associated with an Image Build Version, as determined by
    # 			Amazon Web Services Systems Manager Inventory at build time.</p>
    # @param [Hash, Types::ListImagePackagesRequest] params
    # @option params [String] :image_build_version_arn
    #   <p>Filter results for the ListImagePackages request by the Image Build Version ARN</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #         version: "VersionNumber",
    #         platform: "Windows" # One of: ["Windows", "Linux", "macOS"],
    #         os_version: "OsVersion",
    #         state: {
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"],
    #           reason: "NonEmptyString"
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
    #                 reason: "NonEmptyString"
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #                   <code>accountId</code>
    #                </p>
    #             </li>
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
    #   <p>A filter name and value pair that is used to return a more specific list of results
    #   			from a list operation. Filters can be used to match a set of resources by specific
    #   			criteria, such as tags, attributes, or IDs.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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

    # <p>Returns a list of image scan findings for your account.</p>
    # @param [Hash, Types::ListImageScanFindingsRequest] params
    # @option params [Array<Types::ImageScanFindingsFilter>] :filters
    #   <p>An array of name value pairs that you can use to filter your results. You can use the
    #   			following filters to streamline results:</p>
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
    #               <li>
    #                  <p>
    #                     <code>severity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you don't request a filter, then all findings in your account are listed.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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

    # <p>Returns the list of images that you have access to. Newly created images can take up
    # 			to two minutes to appear in the ListImages API Results.</p>
    # @param [Hash, Types::ListImagesRequest] params
    # @option params [String] :owner
    #   <p>The owner defines which images you want to list. By default, this request will only
    #   			show images owned by your account. You can use this field to specify if you want to view
    #   			images owned by yourself, by Amazon, or those images that have been shared with you by
    #   			other customers.</p>
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
    #   <p>Requests a list of images with a specific recipe name.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    # @option params [Boolean] :include_deprecated
    #   <p>Includes deprecated images in the response list.</p>
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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

    # <p>List resources that the runtime instance of the image lifecycle identified for lifecycle actions.</p>
    # @param [Hash, Types::ListLifecycleExecutionResourcesRequest] params
    # @option params [String] :lifecycle_execution_id
    #   <p>Use the unique identifier for a runtime instance of the lifecycle policy to get runtime details.</p>
    # @option params [String] :parent_resource_id
    #   <p>You can  leave this empty to get a list of Image Builder resources that were identified for lifecycle actions.</p>
    #            <p>To get a list of associated resources that are impacted for an individual resource (the parent), specify 
    #   			its Amazon Resource Name (ARN). Associated resources are produced from your image and distributed when you run a build, such as 
    #   			AMIs or container images stored in ECR repositories.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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

    # <p>Get the lifecycle runtime history for the specified resource.</p>
    # @param [Hash, Types::ListLifecycleExecutionsRequest] params
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to get a list of lifecycle runtime instances.</p>
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

    # <p>Get a list of lifecycle policies in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListLifecyclePoliciesRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Streamline results based on one of the following values: <code>Name</code>, 
    #   			<code>Status</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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

    # <p>Get a list of workflow steps that are waiting for action for workflows 
    # 			in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListWaitingWorkflowStepsRequest] params
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the workflow resource for which to get a list of build versions.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #         arn: "WorkflowNameArn",
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    # @option params [String] :image_build_version_arn
    #   <p>List all workflow runtime instances for the specified image build version 
    #   			resource ARN.</p>
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
    #         parallel_group: "ParallelGroup"
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
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    # @option params [String] :workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
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
    #         end_time: "DateTime"
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

    # <p>Lists workflow build versions based on filtering parameters.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [String] :owner
    #   <p>Used to get a list of workflow build version filtered by the identity of the creator.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Used to streamline search results.</p>
    # @option params [Boolean] :by_name
    #   <p>Specify all or part of the workflow name to streamline results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
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
    #         arn: "WorkflowVersionArn",
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

    # <p>Applies a policy to a component. We recommend that you call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> to share resources. If you call the Image Builder API
    # 				<code>PutComponentPolicy</code>, you must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be
    # 			visible to all principals with whom the resource is shared.</p>
    # @param [Hash, Types::PutComponentPolicyRequest] params
    # @option params [String] :component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy should be applied
    #   			to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
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

    # <p>Applies a policy to a container image. We recommend that you call the RAM API
    # 			CreateResourceShare
    # 			(https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html) to share
    # 			resources. If you call the Image Builder API <code>PutContainerImagePolicy</code>, you must also
    # 			call the RAM API PromoteResourceShareCreatedFromPolicy
    # 			(https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
    # 			in order for the resource to be visible to all principals with whom the resource is
    # 			shared.</p>
    # @param [Hash, Types::PutContainerRecipePolicyRequest] params
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy should be
    #   			applied to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply to the container recipe.</p>
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

    # <p>Applies a policy to an image. We recommend that you call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> to share resources. If you call the Image Builder API
    # 				<code>PutImagePolicy</code>, you must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be
    # 			visible to all principals with whom the resource is shared.</p>
    # @param [Hash, Types::PutImagePolicyRequest] params
    # @option params [String] :image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy should be applied
    #   			to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
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

    # <p>Applies a policy to an image recipe. We recommend that you call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> to share resources. If you call the Image Builder API
    # 				<code>PutImageRecipePolicy</code>, you must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be
    # 			visible to all principals with whom the resource is shared.</p>
    # @param [Hash, Types::PutImageRecipePolicyRequest] params
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied
    #   			to.</p>
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
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

    # <p>Pauses or resumes image creation when the associated workflow runs a 
    # 			<code>WaitForAction</code> step.</p>
    # @param [Hash, Types::SendWorkflowStepActionRequest] params
    # @option params [String] :step_execution_id
    #   <p>Uniquely identifies the workflow step that sent the step action.</p>
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version to send action for.</p>
    # @option params [String] :action
    #   <p>The action for the image creation process to take while a workflow 
    #   			<code>WaitForAction</code> step waits for an asynchronous action to complete.</p>
    # @option params [String] :reason
    #   <p>The reason why this action is sent.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Manually triggers a pipeline to create an image.</p>
    # @param [Hash, Types::StartImagePipelineExecutionRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually
    #   			invoke.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specify tags for Image Builder to apply to the image resource that's created 
    #   			When it starts pipeline execution.</p>
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

    # <p>Begin asynchronous resource state update for lifecycle changes to the 
    # 			specified image resources.</p>
    # @param [Hash, Types::StartResourceStateUpdateRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the Image Builder resource that is updated. The state update might also 
    #   			impact associated resources.</p>
    # @option params [Types::ResourceState] :state
    #   <p>Indicates the lifecycle action to take for this request.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that’s used to update image state.</p>
    # @option params [Types::ResourceStateUpdateIncludeResources] :include_resources
    #   <p>A list of image resources to update state for.</p>
    # @option params [Types::ResourceStateUpdateExclusionRules] :exclusion_rules
    #   <p>Skip action on the image resource and associated resources if specified 
    #   			exclusion rules are met.</p>
    # @option params [Time] :update_at
    #   <p>The timestamp that indicates when resources are updated by a lifecycle action.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Updates a new distribution configuration. Distribution configurations define and
    # 			configure the outputs of your pipeline.</p>
    # @param [Hash, Types::UpdateDistributionConfigurationRequest] params
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			update.</p>
    # @option params [String] :description
    #   <p>The description of the distribution configuration.</p>
    # @option params [Array<Types::Distribution>] :distributions
    #   <p>The distributions of the distribution configuration.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Updates an image pipeline. Image pipelines enable you to automate the creation and
    # 			distribution of images. You must specify exactly one recipe for your image, using either 
    # 			a <code>containerRecipeArn</code> or an <code>imageRecipeArn</code>.</p>
    #          <note>
    #             <p>UpdateImagePipeline does not support selective updates for the pipeline. You must
    # 				specify all of the required properties in the update request, not just the
    # 				properties that have changed.</p>
    #          </note>
    # @param [Hash, Types::UpdateImagePipelineRequest] params
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to update.</p>
    # @option params [String] :description
    #   <p>The description of the image pipeline.</p>
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure
    #   			images updated by this image pipeline.</p>
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container pipeline to update.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that Image Builder uses to
    #   			build images that this image pipeline has updated.</p>
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that Image Builder uses to
    #   			configure and distribute images that this image pipeline has updated.</p>
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   <p>The image test configuration of the image pipeline.</p>
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule of the image pipeline.</p>
    # @option params [String] :status
    #   <p>The status of the image pipeline.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   <p>Contains the workflows to run for the pipeline.</p>
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   <p>Update logging configuration for the output image that's created when 
    #   			the pipeline runs.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
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
    #     execution_role: "RoleNameOrArn"
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

    # <p>Updates a new infrastructure configuration. An infrastructure configuration defines
    # 			the environment in which your image will be built and tested.</p>
    # @param [Hash, Types::UpdateInfrastructureConfigurationRequest] params
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			update.</p>
    # @option params [String] :description
    #   <p>The description of the infrastructure configuration.</p>
    # @option params [Array<String>] :instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types
    #   			based on availability.</p>
    # @option params [String] :instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    # @option params [String] :subnet_id
    #   <p>The subnet ID to place the instance used to customize your Amazon EC2 AMI in.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    # @option params [String] :key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    # @option params [Boolean] :terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event
    #   			notifications.</p>
    #            <note>
    #               <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
    #   				account that the Image Builder service runs under.</p>
    #            </note>
    # @option params [Hash<String, String>] :resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that pipeline
    #   			builds use to launch EC2 build and test instances. For more information about instance
    #   			metadata options, see one of the following links:</p>
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
    #   <p>The instance placement settings that define where the instances that are launched 
    #   			from your image will run.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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

    # <p>Update the specified lifecycle policy.</p>
    # @param [Hash, Types::UpdateLifecyclePolicyRequest] params
    # @option params [String] :lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource.</p>
    # @option params [String] :description
    #   <p>Optional description for the lifecycle policy.</p>
    # @option params [String] :status
    #   <p>Indicates whether the lifecycle policy resource is enabled.</p>
    # @option params [String] :execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder uses to update the 
    #   			lifecycle policy.</p>
    # @option params [String] :resource_type
    #   <p>The type of image resource that the lifecycle policy applies to.</p>
    # @option params [Array<Types::LifecyclePolicyDetail>] :policy_details
    #   <p>The configuration details for a lifecycle policy resource.</p>
    # @option params [Types::LifecyclePolicyResourceSelection] :resource_selection
    #   <p>Selection criteria for resources that the lifecycle policy applies to.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
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
    #           semantic_version: "VersionNumber", # required
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
