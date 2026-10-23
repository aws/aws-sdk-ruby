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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:workspacesthinclient)

module Aws::WorkSpacesThinClient
  # An API client for Aws::WorkSpacesThinClient.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ThinClient
    @identifier = :workspacesthinclient

    add_plugin(::Aws::WorkSpacesThinClient::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WorkSpacesThinClient::EndpointProvider)
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

    # <p>Creates an environment for your thin client devices.</p>
    # @param [Hash, Types::CreateEnvironmentRequest] params
    # @option params [String] :name
    #   <p>The name for the environment.</p>
    # @option params [String] :desktop_arn
    #   <p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>
    # @option params [String] :desktop_endpoint
    #   <p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>
    # @option params [String] :software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   <p>A specification for a time window to apply software updates.</p>
    # @option params [String] :software_set_update_mode
    #   <p>An option to define which software updates to apply.</p>
    # @option params [String] :desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service key to use to encrypt the environment.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @option params [Hash<String, String>] :device_creation_tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the newly created devices for this environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName",
    #     desktop_arn: "Arn", # required
    #     desktop_endpoint: "DesktopEndpoint",
    #     software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #     maintenance_window: {
    #       type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"], # required
    #       start_time_hour: 1,
    #       start_time_minute: 1,
    #       end_time_hour: 1,
    #       end_time_minute: 1,
    #       days_of_the_week: ["MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]],
    #       apply_time_of: "UTC" # One of: ["UTC", "DEVICE"]
    #     },
    #     software_set_update_mode: "USE_LATEST" # One of: ["USE_LATEST", "USE_DESIRED"],
    #     desired_software_set_id: "SoftwareSetId",
    #     kms_key_arn: "KmsKeyArn",
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String"
    #     },
    #     device_creation_tags: {
    #       "DeviceCreationTagKey" => "DeviceCreationTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       id: "EnvironmentId",
    #       name: "EnvironmentName",
    #       desktop_arn: "Arn",
    #       desktop_endpoint: "DesktopEndpoint",
    #       desktop_type: "workspaces" # One of: ["workspaces", "appstream", "workspaces-web"],
    #       activation_code: "ActivationCode",
    #       software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #       maintenance_window: {
    #         type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"], # required
    #         start_time_hour: 1,
    #         start_time_minute: 1,
    #         end_time_hour: 1,
    #         end_time_minute: 1,
    #         days_of_the_week: ["MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]],
    #         apply_time_of: "UTC" # One of: ["UTC", "DEVICE"]
    #       },
    #       software_set_update_mode: "USE_LATEST" # One of: ["USE_LATEST", "USE_DESIRED"],
    #       desired_software_set_id: "SoftwareSetId",
    #       pending_software_set_id: "SoftwareSetId",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateEnvironmentResponse]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a thin client device.</p>
    # @param [Hash, Types::DeleteDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the device to delete.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeviceId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDeviceResponse]
    def delete_device(params = {}, options = {})
      request = build_request(:delete_device, params)
      request.send_request(options)
    end

    # <p>Deletes an environment.</p>
    # @param [Hash, Types::DeleteEnvironmentRequest] params
    # @option params [String] :id
    #   <p>The ID of the environment to delete.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEnvironmentResponse]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deregisters a thin client device.</p>
    # @param [Hash, Types::DeregisterDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the device to deregister.</p>
    # @option params [String] :target_device_status
    #   <p>The desired new status for the device.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeviceId", # required
    #     target_device_status: "DEREGISTERED" # One of: ["DEREGISTERED", "ARCHIVED"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.deregister_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterDeviceResponse]
    def deregister_device(params = {}, options = {})
      request = build_request(:deregister_device, params)
      request.send_request(options)
    end

    # <p>Returns information for a thin client device.</p>
    # @param [Hash, Types::GetDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the device for which to return information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.get_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: {
    #       id: "DeviceId",
    #       serial_number: "String",
    #       name: "DeviceName",
    #       model: "String",
    #       environment_id: "EnvironmentId",
    #       status: "REGISTERED" # One of: ["REGISTERED", "DEREGISTERING", "DEREGISTERED", "ARCHIVED"],
    #       current_software_set_id: "SoftwareSetId",
    #       current_software_set_version: "String",
    #       desired_software_set_id: "SoftwareSetId",
    #       pending_software_set_id: "SoftwareSetId",
    #       pending_software_set_version: "String",
    #       software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #       software_set_compliance_status: "NONE" # One of: ["NONE", "COMPLIANT", "NOT_COMPLIANT"],
    #       software_set_update_status: "AVAILABLE" # One of: ["AVAILABLE", "IN_PROGRESS", "UP_TO_DATE"],
    #       last_connected_at: Time.now,
    #       last_posture_at: Time.now,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       arn: "Arn",
    #       kms_key_arn: "KmsKeyArn",
    #       last_user_id: "UserId"
    #     }
    #   }
    # @return [Types::GetDeviceResponse]
    def get_device(params = {}, options = {})
      request = build_request(:get_device, params)
      request.send_request(options)
    end

    # <p>Returns information for an environment.</p>
    # @param [Hash, Types::GetEnvironmentRequest] params
    # @option params [String] :id
    #   <p>The ID of the environment for which to return information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       id: "EnvironmentId",
    #       name: "EnvironmentName",
    #       desktop_arn: "Arn",
    #       desktop_endpoint: "DesktopEndpoint",
    #       desktop_type: "workspaces" # One of: ["workspaces", "appstream", "workspaces-web"],
    #       activation_code: "ActivationCode",
    #       registered_devices_count: 1,
    #       software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #       maintenance_window: {
    #         type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"], # required
    #         start_time_hour: 1,
    #         start_time_minute: 1,
    #         end_time_hour: 1,
    #         end_time_minute: 1,
    #         days_of_the_week: ["MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]],
    #         apply_time_of: "UTC" # One of: ["UTC", "DEVICE"]
    #       },
    #       software_set_update_mode: "USE_LATEST" # One of: ["USE_LATEST", "USE_DESIRED"],
    #       desired_software_set_id: "SoftwareSetId",
    #       pending_software_set_id: "SoftwareSetId",
    #       pending_software_set_version: "String",
    #       software_set_compliance_status: "NO_REGISTERED_DEVICES" # One of: ["NO_REGISTERED_DEVICES", "COMPLIANT", "NOT_COMPLIANT"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       arn: "Arn",
    #       kms_key_arn: "KmsKeyArn",
    #       device_creation_tags: {
    #         "DeviceCreationTagKey" => "DeviceCreationTagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetEnvironmentResponse]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Returns information for a software set.</p>
    # @param [Hash, Types::GetSoftwareSetRequest] params
    # @option params [String] :id
    #   <p>The ID of the software set for which to return information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SoftwareSetId", # required
    #   }
    #   options = {}
    #   response = client.get_software_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     software_set: {
    #       id: "SoftwareSetId",
    #       version: "String",
    #       released_at: Time.now,
    #       supported_until: Time.now,
    #       validation_status: "VALIDATED" # One of: ["VALIDATED", "NOT_VALIDATED"],
    #       software: [
    #         {
    #           name: "String",
    #           version: "String"
    #         }
    #       ],
    #       arn: "Arn"
    #     }
    #   }
    # @return [Types::GetSoftwareSetResponse]
    def get_software_set(params = {}, options = {})
      request = build_request(:get_software_set, params)
      request.send_request(options)
    end

    # <p>Returns a list of thin client devices.</p>
    # @param [Hash, Types::ListDevicesRequest] params
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [
    #       {
    #         id: "DeviceId",
    #         serial_number: "String",
    #         name: "DeviceName",
    #         model: "String",
    #         environment_id: "EnvironmentId",
    #         status: "REGISTERED" # One of: ["REGISTERED", "DEREGISTERING", "DEREGISTERED", "ARCHIVED"],
    #         current_software_set_id: "SoftwareSetId",
    #         desired_software_set_id: "SoftwareSetId",
    #         pending_software_set_id: "SoftwareSetId",
    #         software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #         last_connected_at: Time.now,
    #         last_posture_at: Time.now,
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         arn: "Arn",
    #         last_user_id: "UserId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDevicesResponse]
    def list_devices(params = {}, options = {})
      request = build_request(:list_devices, params)
      request.send_request(options)
    end

    # <p>Returns a list of environments.</p>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         id: "EnvironmentId",
    #         name: "EnvironmentName",
    #         desktop_arn: "Arn",
    #         desktop_endpoint: "DesktopEndpoint",
    #         desktop_type: "workspaces" # One of: ["workspaces", "appstream", "workspaces-web"],
    #         activation_code: "ActivationCode",
    #         software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #         maintenance_window: {
    #           type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"], # required
    #           start_time_hour: 1,
    #           start_time_minute: 1,
    #           end_time_hour: 1,
    #           end_time_minute: 1,
    #           days_of_the_week: ["MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]],
    #           apply_time_of: "UTC" # One of: ["UTC", "DEVICE"]
    #         },
    #         software_set_update_mode: "USE_LATEST" # One of: ["USE_LATEST", "USE_DESIRED"],
    #         desired_software_set_id: "SoftwareSetId",
    #         pending_software_set_id: "SoftwareSetId",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         arn: "Arn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEnvironmentsResponse]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Returns a list of software sets.</p>
    # @param [Hash, Types::ListSoftwareSetsRequest] params
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_software_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     software_sets: [
    #       {
    #         id: "SoftwareSetId",
    #         version: "String",
    #         released_at: Time.now,
    #         supported_until: Time.now,
    #         validation_status: "VALIDATED" # One of: ["VALIDATED", "NOT_VALIDATED"],
    #         arn: "Arn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSoftwareSetsResponse]
    def list_software_sets(params = {}, options = {})
      request = build_request(:list_software_sets, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
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

    # <p>Removes a tag or tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
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

    # <p>Updates a thin client device.</p>
    # @param [Hash, Types::UpdateDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the device to update.</p>
    # @option params [String] :name
    #   <p>The name of the device to update.</p>
    # @option params [String] :desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    # @option params [String] :software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeviceId", # required
    #     name: "DeviceName",
    #     desired_software_set_id: "SoftwareSetId",
    #     software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"]
    #   }
    #   options = {}
    #   response = client.update_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: {
    #       id: "DeviceId",
    #       serial_number: "String",
    #       name: "DeviceName",
    #       model: "String",
    #       environment_id: "EnvironmentId",
    #       status: "REGISTERED" # One of: ["REGISTERED", "DEREGISTERING", "DEREGISTERED", "ARCHIVED"],
    #       current_software_set_id: "SoftwareSetId",
    #       desired_software_set_id: "SoftwareSetId",
    #       pending_software_set_id: "SoftwareSetId",
    #       software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #       last_connected_at: Time.now,
    #       last_posture_at: Time.now,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       arn: "Arn",
    #       last_user_id: "UserId"
    #     }
    #   }
    # @return [Types::UpdateDeviceResponse]
    def update_device(params = {}, options = {})
      request = build_request(:update_device, params)
      request.send_request(options)
    end

    # <p>Updates an environment.</p>
    # @param [Hash, Types::UpdateEnvironmentRequest] params
    # @option params [String] :id
    #   <p>The ID of the environment to update.</p>
    # @option params [String] :name
    #   <p>The name of the environment to update.</p>
    # @option params [String] :desktop_arn
    #   <p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>
    # @option params [String] :desktop_endpoint
    #   <p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>
    # @option params [String] :software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   <p>A specification for a time window to apply software updates.</p>
    # @option params [String] :software_set_update_mode
    #   <p>An option to define which software updates to apply.</p>
    # @option params [String] :desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    # @option params [Hash<String, String>] :device_creation_tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the newly created devices for this environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentId", # required
    #     name: "EnvironmentName",
    #     desktop_arn: "Arn",
    #     desktop_endpoint: "DesktopEndpoint",
    #     software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #     maintenance_window: {
    #       type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"], # required
    #       start_time_hour: 1,
    #       start_time_minute: 1,
    #       end_time_hour: 1,
    #       end_time_minute: 1,
    #       days_of_the_week: ["MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]],
    #       apply_time_of: "UTC" # One of: ["UTC", "DEVICE"]
    #     },
    #     software_set_update_mode: "USE_LATEST" # One of: ["USE_LATEST", "USE_DESIRED"],
    #     desired_software_set_id: "SoftwareSetIdOrEmptyString",
    #     device_creation_tags: {
    #       "DeviceCreationTagKey" => "DeviceCreationTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       id: "EnvironmentId",
    #       name: "EnvironmentName",
    #       desktop_arn: "Arn",
    #       desktop_endpoint: "DesktopEndpoint",
    #       desktop_type: "workspaces" # One of: ["workspaces", "appstream", "workspaces-web"],
    #       activation_code: "ActivationCode",
    #       software_set_update_schedule: "USE_MAINTENANCE_WINDOW" # One of: ["USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"],
    #       maintenance_window: {
    #         type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"], # required
    #         start_time_hour: 1,
    #         start_time_minute: 1,
    #         end_time_hour: 1,
    #         end_time_minute: 1,
    #         days_of_the_week: ["MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]],
    #         apply_time_of: "UTC" # One of: ["UTC", "DEVICE"]
    #       },
    #       software_set_update_mode: "USE_LATEST" # One of: ["USE_LATEST", "USE_DESIRED"],
    #       desired_software_set_id: "SoftwareSetId",
    #       pending_software_set_id: "SoftwareSetId",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       arn: "Arn"
    #     }
    #   }
    # @return [Types::UpdateEnvironmentResponse]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>Updates a software set.</p>
    # @param [Hash, Types::UpdateSoftwareSetRequest] params
    # @option params [String] :id
    #   <p>The ID of the software set to update.</p>
    # @option params [String] :validation_status
    #   <p>An option to define if the software set has been validated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SoftwareSetId", # required
    #     validation_status: "VALIDATED" # One of: ["VALIDATED", "NOT_VALIDATED"], # required
    #   }
    #   options = {}
    #   response = client.update_software_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSoftwareSetResponse]
    def update_software_set(params = {}, options = {})
      request = build_request(:update_software_set, params)
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
      context[:gem_name] = 'aws-sdk-workspacesthinclient'
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
