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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::GreengrassV2
  # An API client for Aws::GreengrassV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GreengrassV2

    add_plugin(::Aws::GreengrassV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GreengrassV2::EndpointProvider)
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
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Associates a Greengrass service role with IoT Greengrass for your Amazon Web Services account in this Amazon Web Services Region. IoT Greengrass
    #       uses this role to verify the identity of client devices and manage core device connectivity
    #       information. The role must include the <a href="https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy">AWSGreengrassResourceAccessRolePolicy</a> managed policy or a custom policy that
    #       defines equivalent permissions for the IoT Greengrass features that you use. For more information, see
    #         <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html">Greengrass service role</a> in the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    # @param [Hash, Types::AssociateServiceRoleToAccountRequest] params
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role to associate with IoT Greengrass for your
    #         Amazon Web Services account in this Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_service_role_to_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_at: "String"
    #   }
    # @return [Types::AssociateServiceRoleToAccountResponse]
    def associate_service_role_to_account(params = {}, options = {})
      request = build_request(:associate_service_role_to_account, params)
      request.send_request(options)
    end

    # <p>Associates a list of client devices with a core device. Use this API operation to specify
    #       which client devices can discover a core device through cloud discovery. With cloud discovery,
    #       client devices connect to IoT Greengrass to retrieve associated core devices' connectivity information
    #       and certificates. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html">Configure cloud
    #         discovery</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #          <note>
    #             <p>Client devices are local IoT devices that connect to and communicate with an IoT Greengrass core
    #         device over MQTT. You can connect client devices to a core device to sync MQTT messages and
    #         data to Amazon Web Services IoT Core and interact with client devices in Greengrass components. For more information,
    #         see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html">Interact with
    #           local IoT devices</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::BatchAssociateClientDeviceWithCoreDeviceRequest] params
    # @option params [Array<Types::AssociateClientDeviceWithCoreDeviceEntry>] :entries
    #   <p>The list of client devices to associate.</p>
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [
    #       {
    #         thing_name: "IoTThingName", # required
    #       }
    #     ],
    #     core_device_thing_name: "IoTThingName", # required
    #   }
    #   options = {}
    #   response = client.batch_associate_client_device_with_core_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         thing_name: "IoTThingName",
    #         code: "NonEmptyString",
    #         message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateClientDeviceWithCoreDeviceResponse]
    def batch_associate_client_device_with_core_device(params = {}, options = {})
      request = build_request(:batch_associate_client_device_with_core_device, params)
      request.send_request(options)
    end

    # <p>Disassociates a list of client devices from a core device. After you disassociate a client
    #       device from a core device, the client device won't be able to use cloud discovery to retrieve
    #       the core device's connectivity information and certificates.</p>
    # @param [Hash, Types::BatchDisassociateClientDeviceFromCoreDeviceRequest] params
    # @option params [Array<Types::DisassociateClientDeviceFromCoreDeviceEntry>] :entries
    #   <p>The list of client devices to disassociate.</p>
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [
    #       {
    #         thing_name: "IoTThingName", # required
    #       }
    #     ],
    #     core_device_thing_name: "IoTThingName", # required
    #   }
    #   options = {}
    #   response = client.batch_disassociate_client_device_from_core_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         thing_name: "IoTThingName",
    #         code: "NonEmptyString",
    #         message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateClientDeviceFromCoreDeviceResponse]
    def batch_disassociate_client_device_from_core_device(params = {}, options = {})
      request = build_request(:batch_disassociate_client_device_from_core_device, params)
      request.send_request(options)
    end

    # <p>Cancels a deployment. This operation cancels the deployment for devices that haven't yet
    #       received it. If a device already received the deployment, this operation doesn't change
    #       anything for that device.</p>
    # @param [Hash, Types::CancelDeploymentRequest] params
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.cancel_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "NonEmptyString"
    #   }
    # @return [Types::CancelDeploymentResponse]
    def cancel_deployment(params = {}, options = {})
      request = build_request(:cancel_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a component. Components are software that run on Greengrass core devices. After you
    #       develop and test a component on your core device, you can use this operation to upload your
    #       component to IoT Greengrass. Then, you can deploy the component to other core devices.</p>
    #          <p>You can use this operation to do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Create components from recipes</b>
    #                </p>
    #                <p>Create a component from a recipe, which is a file that defines the component's
    #           metadata, parameters, dependencies, lifecycle, artifacts, and platform capability. For
    #           more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html">IoT Greengrass component recipe
    #             reference</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #                <p>To create a component from a recipe, specify <code>inlineRecipe</code> when you call
    #           this operation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Create components from Lambda functions</b>
    #                </p>
    #                <p>Create a component from an Lambda function that runs on IoT Greengrass. This creates a recipe
    #           and artifacts from the Lambda function's deployment package. You can use this operation to
    #           migrate Lambda functions from IoT Greengrass V1 to IoT Greengrass V2.</p>
    #                <p>This function accepts Lambda functions in all supported versions of Python, Node.js,
    #           and Java runtimes. IoT Greengrass doesn't apply any additional restrictions on deprecated Lambda
    #           runtime versions.</p>
    #                <p>To create a component from a Lambda function, specify <code>lambdaFunction</code> when
    #           you call this operation.</p>
    #                <note>
    #                   <p>IoT Greengrass currently supports Lambda functions on only Linux core devices.</p>
    #                </note>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateComponentVersionRequest] params
    # @option params [String] :inline_recipe
    #   <p>The recipe to use to create the component. The recipe defines the component's metadata,
    #         parameters, dependencies, lifecycle, artifacts, and platform compatibility.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    # @option params [Types::LambdaFunctionRecipeSource] :lambda_function
    #   <p>The parameters to create a component from a Lambda function.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. 
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times. 
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service 
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for 
    #       idempotent requests for up to 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inline_recipe: "data",
    #     lambda_function: {
    #       lambda_arn: "NonEmptyString", # required
    #       component_name: "ComponentNameString",
    #       component_version: "ComponentVersionString",
    #       component_platforms: [
    #         {
    #           name: "NonEmptyString",
    #           attributes: {
    #             "NonEmptyString" => "NonEmptyString"
    #           }
    #         }
    #       ],
    #       component_dependencies: {
    #         "NonEmptyString" => {
    #           version_requirement: "NonEmptyString",
    #           dependency_type: "HARD" # One of: ["HARD", "SOFT"]
    #         }
    #       },
    #       component_lambda_parameters: {
    #         event_sources: [
    #           {
    #             topic: "TopicString", # required
    #             type: "PUB_SUB" # One of: ["PUB_SUB", "IOT_CORE"], # required
    #           }
    #         ],
    #         max_queue_size: 1,
    #         max_instances_count: 1,
    #         max_idle_time_in_seconds: 1,
    #         timeout_in_seconds: 1,
    #         status_timeout_in_seconds: 1,
    #         pinned: false,
    #         input_payload_encoding_type: "json" # One of: ["json", "binary"],
    #         exec_args: ["LambdaExecArg"],
    #         environment_variables: {
    #           "NonEmptyString" => "String"
    #         },
    #         linux_process_params: {
    #           isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #           container_params: {
    #             memory_size_in_kb: 1,
    #             mount_ro_sysfs: false,
    #             volumes: [
    #               {
    #                 source_path: "FileSystemPath", # required
    #                 destination_path: "FileSystemPath", # required
    #                 permission: "ro" # One of: ["ro", "rw"],
    #                 add_group_owner: false
    #               }
    #             ],
    #             devices: [
    #               {
    #                 path: "FileSystemPath", # required
    #                 permission: "ro" # One of: ["ro", "rw"],
    #                 add_group_owner: false
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.create_component_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ComponentVersionARN",
    #     component_name: "ComponentNameString", # required
    #     component_version: "ComponentVersionString", # required
    #     creation_timestamp: Time.now, # required
    #     status: { # required
    #       component_state: "REQUESTED" # One of: ["REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"],
    #       message: "NonEmptyString",
    #       errors: {
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       vendor_guidance: "ACTIVE" # One of: ["ACTIVE", "DISCONTINUED", "DELETED"],
    #       vendor_guidance_message: "NonEmptyString"
    #     }
    #   }
    # @return [Types::CreateComponentVersionResponse]
    def create_component_version(params = {}, options = {})
      request = build_request(:create_component_version, params)
      request.send_request(options)
    end

    # <p>Creates a continuous deployment for a target, which is a Greengrass core device or group of core
    #       devices. When you add a new core device to a group of core devices that has a deployment, IoT Greengrass
    #       deploys that group's deployment to the new device.</p>
    #          <p>You can define one deployment for each target. When you create a new deployment for a
    #       target that has an existing deployment, you replace the previous deployment. IoT Greengrass applies the
    #       new deployment to the target devices.</p>
    #          <p>Every deployment has a revision number that indicates how many deployment revisions you
    #       define for a target. Use this operation to create a new revision of an existing
    #       deployment.</p>
    #          <p>For more information, see the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html">Create deployments</a> in the
    #         <i>IoT Greengrass V2 Developer Guide</i>.</p>
    # @param [Hash, Types::CreateDeploymentRequest] params
    # @option params [String] :target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group. When creating a subdeployment, the targetARN can only be a thing group.</p>
    # @option params [String] :deployment_name
    #   <p>The name of the deployment.</p>
    # @option params [Hash<String, Types::ComponentDeploymentSpecification>] :components
    #   <p>The components to deploy. This is a dictionary, where each key is the name of a component,
    #           and each key's value is the version and configuration to deploy for that component.</p>
    # @option params [Types::DeploymentIoTJobConfiguration] :iot_job_configuration
    #   <p>The job configuration for the deployment configuration. The job configuration specifies
    #         the rollout, timeout, and stop configurations for the deployment configuration.</p>
    # @option params [Types::DeploymentPolicies] :deployment_policies
    #   <p>The deployment policies for the deployment. These policies define how the deployment
    #         updates components and handles failure.</p>
    # @option params [String] :parent_target_arn
    #   <p>The parent deployment's target <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> within a subdeployment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. 
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times. 
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service 
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for 
    #       idempotent requests for up to 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetARN", # required
    #     deployment_name: "DeploymentNameString",
    #     components: {
    #       "NonEmptyString" => {
    #         component_version: "ComponentVersionString", # required
    #         configuration_update: {
    #           merge: "ComponentConfigurationString",
    #           reset: ["ComponentConfigurationPath"]
    #         },
    #         run_with: {
    #           posix_user: "NonEmptyString",
    #           system_resource_limits: {
    #             memory: 1,
    #             cpus: 1.0
    #           },
    #           windows_user: "NonEmptyString"
    #         }
    #       }
    #     },
    #     iot_job_configuration: {
    #       job_executions_rollout_config: {
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           }
    #         },
    #         maximum_per_minute: 1
    #       },
    #       abort_config: {
    #         criteria_list: [ # required
    #           {
    #             failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #             action: "CANCEL" # One of: ["CANCEL"], # required
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1, # required
    #           }
    #         ]
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1
    #       }
    #     },
    #     deployment_policies: {
    #       failure_handling_policy: "ROLLBACK" # One of: ["ROLLBACK", "DO_NOTHING"],
    #       component_update_policy: {
    #         timeout_in_seconds: 1,
    #         action: "NOTIFY_COMPONENTS" # One of: ["NOTIFY_COMPONENTS", "SKIP_NOTIFY_COMPONENTS"]
    #       },
    #       configuration_validation_policy: {
    #         timeout_in_seconds: 1
    #       }
    #     },
    #     parent_target_arn: "ThingGroupARN",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "NonEmptyString",
    #     iot_job_id: "NonEmptyString",
    #     iot_job_arn: "IoTJobARN"
    #   }
    # @return [Types::CreateDeploymentResponse]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Deletes a version of a component from IoT Greengrass.</p>
    #          <note>
    #             <p>This operation deletes the component's recipe and artifacts. As a result, deployments
    #         that refer to this component version will fail. If you have deployments that use this
    #         component version, you can remove the component from the deployment or update the deployment
    #         to use a valid version.</p>
    #          </note>
    # @param [Hash, Types::DeleteComponentRequest] params
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ComponentVersionARN", # required
    #   }
    #   options = {}
    #   response = client.delete_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_component(params = {}, options = {})
      request = build_request(:delete_component, params)
      request.send_request(options)
    end

    # <p>Deletes a Greengrass core device, which is an IoT thing. This operation removes the core
    #       device from the list of core devices. This operation doesn't delete the IoT thing. For more
    #       information about how to delete the IoT thing, see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html">DeleteThing</a> in the
    #         <i>IoT API Reference</i>.</p>
    # @param [Hash, Types::DeleteCoreDeviceRequest] params
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #   }
    #   options = {}
    #   response = client.delete_core_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_core_device(params = {}, options = {})
      request = build_request(:delete_core_device, params)
      request.send_request(options)
    end

    # <p>Deletes a deployment. To delete an active deployment, you must first cancel it. For more
    #       information, see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CancelDeployment.html">CancelDeployment</a>.</p>
    #          <p>Deleting a deployment doesn't affect core devices that run that deployment, because core
    #       devices store the deployment's configuration on the device. Additionally, core devices can
    #       roll back to a previous deployment that has been deleted.</p>
    # @param [Hash, Types::DeleteDeploymentRequest] params
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_deployment(params = {}, options = {})
      request = build_request(:delete_deployment, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata for a version of a component.</p>
    # @param [Hash, Types::DescribeComponentRequest] params
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ComponentVersionARN", # required
    #   }
    #   options = {}
    #   response = client.describe_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ComponentVersionARN",
    #     component_name: "ComponentNameString",
    #     component_version: "ComponentVersionString",
    #     creation_timestamp: Time.now,
    #     publisher: "PublisherString",
    #     description: "DescriptionString",
    #     status: {
    #       component_state: "REQUESTED" # One of: ["REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"],
    #       message: "NonEmptyString",
    #       errors: {
    #         "NonEmptyString" => "NonEmptyString"
    #       },
    #       vendor_guidance: "ACTIVE" # One of: ["ACTIVE", "DISCONTINUED", "DELETED"],
    #       vendor_guidance_message: "NonEmptyString"
    #     },
    #     platforms: [
    #       {
    #         name: "NonEmptyString",
    #         attributes: {
    #           "NonEmptyString" => "NonEmptyString"
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeComponentResponse]
    def describe_component(params = {}, options = {})
      request = build_request(:describe_component, params)
      request.send_request(options)
    end

    # <p>Disassociates the Greengrass service role from IoT Greengrass for your Amazon Web Services account in this Amazon Web Services Region.
    #       Without a service role, IoT Greengrass can't verify the identity of client devices or manage core device
    #       connectivity information. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html">Greengrass service role</a> in
    #       the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    # @param [Hash, Types::DisassociateServiceRoleFromAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_service_role_from_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disassociated_at: "String"
    #   }
    # @return [Types::DisassociateServiceRoleFromAccountResponse]
    def disassociate_service_role_from_account(params = {}, options = {})
      request = build_request(:disassociate_service_role_from_account, params)
      request.send_request(options)
    end

    # <p>Gets the recipe for a version of a component.</p>
    # @param [Hash, Types::GetComponentRequest] params
    # @option params [String] :recipe_output_format
    #   <p>The format of the recipe.</p>
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recipe_output_format: "JSON" # One of: ["JSON", "YAML"],
    #     arn: "ComponentVersionARN", # required
    #   }
    #   options = {}
    #   response = client.get_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recipe_output_format: "JSON" # One of: ["JSON", "YAML"], # required
    #     recipe: "data", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetComponentResponse]
    def get_component(params = {}, options = {})
      request = build_request(:get_component, params)
      request.send_request(options)
    end

    # <p>Gets the pre-signed URL to download a public or a Lambda component artifact. Core devices
    #       call this operation to identify the URL that they can use to download an artifact to
    #       install.</p>
    # @param [Hash, Types::GetComponentVersionArtifactRequest] params
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version. Specify the ARN of a public or a Lambda component version.</p>
    # @option params [String] :artifact_name
    #   <p>The name of the artifact.</p>
    #            <p>You can use the <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html">GetComponent</a> operation to
    #         download the component recipe, which includes the URI of the artifact. The artifact name is
    #         the section of the URI after the scheme. For example, in the artifact URI
    #           <code>greengrass:SomeArtifact.zip</code>, the artifact name is
    #         <code>SomeArtifact.zip</code>.</p>
    # @option params [String] :s3_endpoint_type
    #   <p>Specifies the endpoint to use when getting Amazon S3 pre-signed URLs.</p>
    #            <p>All Amazon Web Services Regions except US East (N. Virginia) use <code>REGIONAL</code> in all cases.
    #         In the US East (N. Virginia) Region the default is <code>GLOBAL</code>, but you can change it
    #         to <code>REGIONAL</code> with this parameter.</p>
    # @option params [String] :iot_endpoint_type
    #   <p>Determines if the Amazon S3 URL returned is a FIPS pre-signed URL endpoint. 
    #         Specify <code>fips</code> if you want the returned Amazon S3 pre-signed URL to point to 
    #         an Amazon S3 FIPS endpoint. If you don't specify a value, the default is <code>standard</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ComponentVersionARN", # required
    #     artifact_name: "NonEmptyString", # required
    #     s3_endpoint_type: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"],
    #     iot_endpoint_type: "fips" # One of: ["fips", "standard"]
    #   }
    #   options = {}
    #   response = client.get_component_version_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pre_signed_url: "NonEmptyString", # required
    #   }
    # @return [Types::GetComponentVersionArtifactResponse]
    def get_component_version_artifact(params = {}, options = {})
      request = build_request(:get_component_version_artifact, params)
      request.send_request(options)
    end

    # <p>Retrieves connectivity information for a Greengrass core device.</p>
    #          <p>Connectivity information includes endpoints and ports where client devices
    #       can connect to an MQTT broker on the core device. When a client device
    #       calls the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html">IoT Greengrass discovery API</a>,
    #       IoT Greengrass returns connectivity information for all of the core devices where the client device can
    #       connect. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html">Connect client devices to
    #         core devices</a> in the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    # @param [Hash, Types::GetConnectivityInfoRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "CoreDeviceThingName", # required
    #   }
    #   options = {}
    #   response = client.get_connectivity_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connectivity_info: [
    #       {
    #         id: "String",
    #         host_address: "String",
    #         port_number: 1,
    #         metadata: "String"
    #       }
    #     ],
    #     message: "String"
    #   }
    # @return [Types::GetConnectivityInfoResponse]
    def get_connectivity_info(params = {}, options = {})
      request = build_request(:get_connectivity_info, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata for a Greengrass core device.</p>
    #          <note>
    #             <p>IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the
    #         IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud,
    #         then the reported status of that device might not reflect its current status. The status
    #         timestamp indicates when the device status was last updated.</p>
    #             <p>Core devices send status updates at the following times:</p>
    #             <ul>
    #                <li>
    #                   <p>When the IoT Greengrass Core software starts</p>
    #                </li>
    #                <li>
    #                   <p>When the core device receives a deployment from the Amazon Web Services Cloud</p>
    #                </li>
    #                <li>
    #                   <p>When the status of any component on the core device becomes
    #             <code>BROKEN</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>At a <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss">regular interval that you can configure</a>, which defaults to 24 hours</p>
    #                </li>
    #                <li>
    #                   <p>For IoT Greengrass Core v2.7.0, the core device sends status updates upon local deployment and
    #             cloud deployment</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetCoreDeviceRequest] params
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #   }
    #   options = {}
    #   response = client.get_core_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_device_thing_name: "CoreDeviceThingName",
    #     core_version: "GGCVersion",
    #     platform: "CoreDevicePlatformString",
    #     architecture: "CoreDeviceArchitectureString",
    #     runtime: "CoreDeviceRuntimeString",
    #     status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #     last_status_update_timestamp: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetCoreDeviceResponse]
    def get_core_device(params = {}, options = {})
      request = build_request(:get_core_device, params)
      request.send_request(options)
    end

    # <p>Gets a deployment. Deployments define the components that run on Greengrass core devices.</p>
    # @param [Hash, Types::GetDeploymentRequest] params
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_arn: "TargetARN",
    #     revision_id: "NonEmptyString",
    #     deployment_id: "NonEmptyString",
    #     deployment_name: "NullableString",
    #     deployment_status: "ACTIVE" # One of: ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"],
    #     iot_job_id: "NullableString",
    #     iot_job_arn: "IoTJobARN",
    #     components: {
    #       "NonEmptyString" => {
    #         component_version: "ComponentVersionString", # required
    #         configuration_update: {
    #           merge: "ComponentConfigurationString",
    #           reset: ["ComponentConfigurationPath"]
    #         },
    #         run_with: {
    #           posix_user: "NonEmptyString",
    #           system_resource_limits: {
    #             memory: 1,
    #             cpus: 1.0
    #           },
    #           windows_user: "NonEmptyString"
    #         }
    #       }
    #     },
    #     deployment_policies: {
    #       failure_handling_policy: "ROLLBACK" # One of: ["ROLLBACK", "DO_NOTHING"],
    #       component_update_policy: {
    #         timeout_in_seconds: 1,
    #         action: "NOTIFY_COMPONENTS" # One of: ["NOTIFY_COMPONENTS", "SKIP_NOTIFY_COMPONENTS"]
    #       },
    #       configuration_validation_policy: {
    #         timeout_in_seconds: 1
    #       }
    #     },
    #     iot_job_configuration: {
    #       job_executions_rollout_config: {
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           }
    #         },
    #         maximum_per_minute: 1
    #       },
    #       abort_config: {
    #         criteria_list: [ # required
    #           {
    #             failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #             action: "CANCEL" # One of: ["CANCEL"], # required
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1, # required
    #           }
    #         ]
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1
    #       }
    #     },
    #     creation_timestamp: Time.now,
    #     is_latest_for_target: false,
    #     parent_target_arn: "ThingGroupARN",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDeploymentResponse]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Gets the service role associated with IoT Greengrass for your Amazon Web Services account in this Amazon Web Services Region.
    #       IoT Greengrass uses this role to verify the identity of client devices and manage core device
    #       connectivity information. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html">Greengrass service role</a> in
    #       the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    # @param [Hash, Types::GetServiceRoleForAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_service_role_for_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_at: "String",
    #     role_arn: "String"
    #   }
    # @return [Types::GetServiceRoleForAccountResponse]
    def get_service_role_for_account(params = {}, options = {})
      request = build_request(:get_service_role_for_account, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of client devices that are associated with a core
    #       device.</p>
    # @param [Hash, Types::ListClientDevicesAssociatedWithCoreDeviceRequest] params
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_device_thing_name: "IoTThingName", # required
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_client_devices_associated_with_core_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_client_devices: [
    #       {
    #         thing_name: "IoTThingName",
    #         association_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListClientDevicesAssociatedWithCoreDeviceResponse]
    def list_client_devices_associated_with_core_device(params = {}, options = {})
      request = build_request(:list_client_devices_associated_with_core_device, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of all versions for a component. Greater versions are listed
    #       first.</p>
    # @param [Hash, Types::ListComponentVersionsRequest] params
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ComponentARN", # required
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_component_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component_versions: [
    #       {
    #         component_name: "ComponentNameString",
    #         component_version: "ComponentVersionString",
    #         arn: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListComponentVersionsResponse]
    def list_component_versions(params = {}, options = {})
      request = build_request(:list_component_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of component summaries. This list includes components that you
    #       have permission to view.</p>
    # @param [Hash, Types::ListComponentsRequest] params
    # @option params [String] :scope
    #   <p>The scope of the components to list.</p>
    #            <p>Default: <code>PRIVATE</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"],
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     components: [
    #       {
    #         arn: "ComponentARN",
    #         component_name: "ComponentNameString",
    #         latest_version: {
    #           arn: "ComponentVersionARN",
    #           component_version: "ComponentVersionString",
    #           creation_timestamp: Time.now,
    #           description: "NonEmptyString",
    #           publisher: "NonEmptyString",
    #           platforms: [
    #             {
    #               name: "NonEmptyString",
    #               attributes: {
    #                 "NonEmptyString" => "NonEmptyString"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListComponentsResponse]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of Greengrass core devices.</p>
    #          <note>
    #             <p>IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the
    #         IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud,
    #         then the reported status of that device might not reflect its current status. The status
    #         timestamp indicates when the device status was last updated.</p>
    #             <p>Core devices send status updates at the following times:</p>
    #             <ul>
    #                <li>
    #                   <p>When the IoT Greengrass Core software starts</p>
    #                </li>
    #                <li>
    #                   <p>When the core device receives a deployment from the Amazon Web Services Cloud</p>
    #                </li>
    #                <li>
    #                   <p>For Greengrass nucleus 2.12.2 and earlier, the core device sends status updates when the
    #             status of any component on the core device becomes <code>ERRORED</code> or
    #               <code>BROKEN</code>.</p>
    #                </li>
    #                <li>
    #                   <p>For Greengrass nucleus 2.12.3 and later, the core device sends status updates when the
    #             status of any component on the core device becomes <code>ERRORED</code>,
    #               <code>BROKEN</code>, <code>RUNNING</code>, or <code>FINISHED</code>.</p>
    #                </li>
    #                <li>
    #                   <p>At a <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss">regular interval that you can configure</a>, which defaults to 24 hours</p>
    #                </li>
    #                <li>
    #                   <p>For IoT Greengrass Core v2.7.0, the core device sends status updates upon local deployment and
    #             cloud deployment</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListCoreDevicesRequest] params
    # @option params [String] :thing_group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT thing group by which to filter. If you specify this parameter,
    #         the list includes only core devices that have successfully deployed a deployment that targets
    #         the thing group. When you remove a core device from a thing group, the list continues to
    #         include that core device.</p>
    # @option params [String] :status
    #   <p>The core device status by which to filter. If you specify this parameter, the list
    #         includes only core devices that have this status. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [String] :runtime
    #   <p>The runtime to be used by the core device. The runtime can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_classic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_lite</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_arn: "ThingGroupARN",
    #     status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #     runtime: "CoreDeviceRuntimeString"
    #   }
    #   options = {}
    #   response = client.list_core_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_devices: [
    #       {
    #         core_device_thing_name: "CoreDeviceThingName",
    #         status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         last_status_update_timestamp: Time.now,
    #         platform: "CoreDevicePlatformString",
    #         architecture: "CoreDeviceArchitectureString",
    #         runtime: "CoreDeviceRuntimeString"
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListCoreDevicesResponse]
    def list_core_devices(params = {}, options = {})
      request = build_request(:list_core_devices, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of deployments.</p>
    # @param [Hash, Types::ListDeploymentsRequest] params
    # @option params [String] :target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    # @option params [String] :history_filter
    #   <p>The filter for the list of deployments. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATEST_ONLY</code> – The list includes only the latest revision of each
    #             deployment.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>LATEST_ONLY</code>
    #            </p>
    # @option params [String] :parent_target_arn
    #   <p>The parent deployment's target <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> within a subdeployment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #            <p>Default: <code>50</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetARN",
    #     history_filter: "ALL" # One of: ["ALL", "LATEST_ONLY"],
    #     parent_target_arn: "ThingGroupARN",
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         target_arn: "TargetARN",
    #         revision_id: "NonEmptyString",
    #         deployment_id: "NonEmptyString",
    #         deployment_name: "NonEmptyString",
    #         creation_timestamp: Time.now,
    #         deployment_status: "ACTIVE" # One of: ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"],
    #         is_latest_for_target: false,
    #         parent_target_arn: "ThingGroupARN"
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListDeploymentsResponse]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of deployment jobs that IoT Greengrass sends to Greengrass core devices.</p>
    # @param [Hash, Types::ListEffectiveDeploymentsRequest] params
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_effective_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effective_deployments: [
    #       {
    #         deployment_id: "DeploymentID", # required
    #         deployment_name: "DeploymentName", # required
    #         iot_job_id: "IoTJobId",
    #         iot_job_arn: "IoTJobARN",
    #         description: "Description",
    #         target_arn: "TargetARN", # required
    #         core_device_execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "QUEUED", "FAILED", "COMPLETED", "TIMED_OUT", "CANCELED", "REJECTED", "SUCCEEDED"], # required
    #         reason: "Reason",
    #         creation_timestamp: Time.now, # required
    #         modified_timestamp: Time.now, # required
    #         status_details: {
    #           error_stack: ["EffectiveDeploymentErrorCode"],
    #           error_types: ["EffectiveDeploymentErrorType"]
    #         }
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListEffectiveDeploymentsResponse]
    def list_effective_deployments(params = {}, options = {})
      request = build_request(:list_effective_deployments, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the components that a Greengrass core device runs. By default,
    #       this list doesn't include components that are deployed as dependencies of other components. To
    #       include dependencies in the response, set the <code>topologyFilter</code> parameter to
    #         <code>ALL</code>.</p>
    #          <note>
    #             <p>IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the
    #         IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud,
    #         then the reported status of that device might not reflect its current status. The status
    #         timestamp indicates when the device status was last updated.</p>
    #             <p>Core devices send status updates at the following times:</p>
    #             <ul>
    #                <li>
    #                   <p>When the IoT Greengrass Core software starts</p>
    #                </li>
    #                <li>
    #                   <p>When the core device receives a deployment from the Amazon Web Services Cloud</p>
    #                </li>
    #                <li>
    #                   <p>When the status of any component on the core device becomes
    #             <code>BROKEN</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>At a <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss">regular interval that you can configure</a>, which defaults to 24 hours</p>
    #                </li>
    #                <li>
    #                   <p>For IoT Greengrass Core v2.7.0, the core device sends status updates upon local deployment and
    #             cloud deployment</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListInstalledComponentsRequest] params
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [String] :topology_filter
    #   <p>The filter for the list of components. Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all components installed on the core
    #             device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROOT</code> – The list includes only <i>root</i>
    #             components, which are components that you specify in a deployment. When you choose this
    #             option, the list doesn't include components that the core device installs as dependencies
    #             of other components.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>ROOT</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #     topology_filter: "ALL" # One of: ["ALL", "ROOT"]
    #   }
    #   options = {}
    #   response = client.list_installed_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     installed_components: [
    #       {
    #         component_name: "ComponentNameString",
    #         component_version: "ComponentVersionString",
    #         lifecycle_state: "NEW" # One of: ["NEW", "INSTALLED", "STARTING", "RUNNING", "STOPPING", "ERRORED", "BROKEN", "FINISHED"],
    #         lifecycle_state_details: "LifecycleStateDetails",
    #         is_root: false,
    #         last_status_change_timestamp: Time.now,
    #         last_reported_timestamp: Time.now,
    #         last_installation_source: "NonEmptyString",
    #         lifecycle_status_codes: ["InstalledComponentLifecycleStatusCode"]
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListInstalledComponentsResponse]
    def list_installed_components(params = {}, options = {})
      request = build_request(:list_installed_components, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of tags for an IoT Greengrass resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GenericV2ARN", # required
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

    # <p>Retrieves a list of components that meet the component, version, and platform requirements
    #       of a deployment. Greengrass core devices call this operation when they receive a deployment to
    #       identify the components to install.</p>
    #          <p>This operation identifies components that meet all dependency requirements for a
    #       deployment. If the requirements conflict, then this operation returns an error and the
    #       deployment fails. For example, this occurs if component <code>A</code> requires version
    #         <code>>2.0.0</code> and component <code>B</code> requires version <code><2.0.0</code>
    #       of a component dependency.</p>
    #          <p>When you specify the component candidates to resolve, IoT Greengrass compares each component's
    #       digest from the core device with the component's digest in the Amazon Web Services Cloud. If the digests
    #       don't match, then IoT Greengrass specifies to use the version from the Amazon Web Services Cloud.</p>
    #          <important>
    #             <p>To use this operation, you must use the data plane API endpoint and authenticate with an
    #         IoT device certificate. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/greengrass.html">IoT Greengrass endpoints and quotas</a>.</p>
    #          </important>
    # @param [Hash, Types::ResolveComponentCandidatesRequest] params
    # @option params [Types::ComponentPlatform] :platform
    #   <p>The platform to use to resolve compatible components.</p>
    # @option params [Array<Types::ComponentCandidate>] :component_candidates
    #   <p>The list of components to resolve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform: {
    #       name: "NonEmptyString",
    #       attributes: {
    #         "NonEmptyString" => "NonEmptyString"
    #       }
    #     },
    #     component_candidates: [
    #       {
    #         component_name: "ComponentNameString",
    #         component_version: "ComponentVersionString",
    #         version_requirements: {
    #           "NonEmptyString" => "NonEmptyString"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.resolve_component_candidates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolved_component_versions: [
    #       {
    #         arn: "ComponentVersionARN",
    #         component_name: "ComponentNameString",
    #         component_version: "ComponentVersionString",
    #         recipe: "data",
    #         vendor_guidance: "ACTIVE" # One of: ["ACTIVE", "DISCONTINUED", "DELETED"],
    #         message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::ResolveComponentCandidatesResponse]
    def resolve_component_candidates(params = {}, options = {})
      request = build_request(:resolve_component_candidates, params)
      request.send_request(options)
    end

    # <p>Adds tags to an IoT Greengrass resource. If a tag already exists for the resource, this operation
    #       updates the tag's value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GenericV2ARN", # required
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

    # <p>Removes a tag from an IoT Greengrass resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GenericV2ARN", # required
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

    # <p>Updates connectivity information for a Greengrass core device.</p>
    #          <p>Connectivity information includes endpoints and ports where client devices
    #       can connect to an MQTT broker on the core device. When a client device
    #       calls the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html">IoT Greengrass discovery API</a>,
    #       IoT Greengrass returns connectivity information for all of the core devices where the client device can
    #       connect. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html">Connect client devices to
    #         core devices</a> in the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateConnectivityInfoRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    # @option params [Array<Types::ConnectivityInfo>] :connectivity_info
    #   <p>The connectivity information for the core device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "CoreDeviceThingName", # required
    #     connectivity_info: [ # required
    #       {
    #         id: "String",
    #         host_address: "String",
    #         port_number: 1,
    #         metadata: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_connectivity_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: "String",
    #     message: "String"
    #   }
    # @return [Types::UpdateConnectivityInfoResponse]
    def update_connectivity_info(params = {}, options = {})
      request = build_request(:update_connectivity_info, params)
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
      context[:gem_name] = 'aws-sdk-greengrassv2'
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
    end
  end
end
