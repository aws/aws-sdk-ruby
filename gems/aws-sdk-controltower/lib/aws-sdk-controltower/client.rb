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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:controltower)

module Aws::ControlTower
  # An API client for Aws::ControlTower.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSControlTowerApis
    @identifier = :controltower

    add_plugin(::Aws::ControlTower::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ControlTower::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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

    # <p>Creates a new landing zone. This API call starts an asynchronous operation that creates and configures a landing zone, based on the parameters specified in the manifest JSON file.</p>
    # @param [Hash, Types::CreateLandingZoneInput] params
    # @option params [String] :version
    #   <p>The landing zone version, for example, 3.0.</p>
    # @option params [JSON] :manifest
    #   <p>The manifest JSON file is a text file that describes your Amazon Web Services resources. For examples, review <a href="https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch">Launch your landing zone</a>. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be applied to the landing zone. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     version: "LandingZoneVersion", # required
    #     manifest: ""null"", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_landing_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn", # required
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::CreateLandingZoneOutput]
    def create_landing_zone(params = {}, options = {})
      request = build_request(:create_landing_zone, params)
      request.send_request(options)
    end

    # <p>Decommissions a landing zone. This API call starts an asynchronous operation that deletes Amazon Web Services Control Tower resources deployed in accounts managed by Amazon Web Services Control Tower.</p>
    # @param [Hash, Types::DeleteLandingZoneInput] params
    # @option params [String] :landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     landing_zone_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_landing_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::DeleteLandingZoneOutput]
    def delete_landing_zone(params = {}, options = {})
      request = build_request(:delete_landing_zone, params)
      request.send_request(options)
    end

    # <p>Disable an <code>EnabledBaseline</code> resource on the specified Target. This API starts an asynchronous operation to remove all resources deployed as part of the baseline enablement. The resource will vary depending on the enabled baseline. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::DisableBaselineInput] params
    # @option params [String] :enabled_baseline_identifier
    #   <p>Identifier of the <code>EnabledBaseline</code> resource to be deactivated, in ARN format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled_baseline_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disable_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::DisableBaselineOutput]
    def disable_baseline(params = {}, options = {})
      request = build_request(:disable_baseline, params)
      request.send_request(options)
    end

    # <p>This API call turns off a control. It starts an asynchronous operation that deletes Amazon Web Services resources on the specified organizational unit and the accounts it contains. The resources will vary according to the control that you specify. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::DisableControlInput] params
    # @option params [String] :control_identifier
    #   <p>The ARN of the control. Only <b>Strongly recommended</b> and <b>Elective</b> controls are permitted, with the exception of the <b>Region deny</b> control. For information on how to find the <code>controlIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    # @option params [String] :target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_identifier: "ControlIdentifier", # required
    #     target_identifier: "TargetIdentifier", # required
    #   }
    #   options = {}
    #   response = client.disable_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::DisableControlOutput]
    def disable_control(params = {}, options = {})
      request = build_request(:disable_control, params)
      request.send_request(options)
    end

    # <p>Enable (apply) a <code>Baseline</code> to a Target. This API starts an asynchronous operation to deploy resources specified by the <code>Baseline</code> to the specified Target. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::EnableBaselineInput] params
    # @option params [String] :baseline_version
    #   <p>The specific version to be enabled of the specified baseline.</p>
    # @option params [Array<Types::EnabledBaselineParameter>] :parameters
    #   <p>A list of <code>key-value</code> objects that specify enablement parameters, where <code>key</code> is a string and <code>value</code> is a document of any type.</p>
    # @option params [String] :baseline_identifier
    #   <p>The ARN of the baseline to be enabled.</p>
    # @option params [String] :target_identifier
    #   <p>The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with input to <code>EnableBaseline</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_version: "BaselineVersion", # required
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: ""null"", # required
    #       }
    #     ],
    #     baseline_identifier: "Arn", # required
    #     target_identifier: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.enable_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #     arn: "Arn", # required
    #   }
    # @return [Types::EnableBaselineOutput]
    def enable_baseline(params = {}, options = {})
      request = build_request(:enable_baseline, params)
      request.send_request(options)
    end

    # <p>This API call activates a control. It starts an asynchronous operation that creates Amazon Web Services resources on the specified organizational unit and the accounts it contains. The resources created will vary according to the control that you specify. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::EnableControlInput] params
    # @option params [String] :control_identifier
    #   <p>The ARN of the control. Only <b>Strongly recommended</b> and <b>Elective</b> controls are permitted, with the exception of the <b>Region deny</b> control. For information on how to find the <code>controlIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    # @option params [String] :target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be applied to the <code>EnabledControl</code> resource.</p>
    # @option params [Array<Types::EnabledControlParameter>] :parameters
    #   <p>A list of input parameter values, which are specified to configure the control when you enable it.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_identifier: "ControlIdentifier", # required
    #     target_identifier: "TargetIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: ""null"", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.enable_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #     arn: "Arn"
    #   }
    # @return [Types::EnableControlOutput]
    def enable_control(params = {}, options = {})
      request = build_request(:enable_control, params)
      request.send_request(options)
    end

    # <p>Retrieve details about an existing <code>Baseline</code> resource by specifying its identifier. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::GetBaselineInput] params
    # @option params [String] :baseline_identifier
    #   <p>The ARN of the <code>Baseline</code> resource to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_identifier: "BaselineArn", # required
    #   }
    #   options = {}
    #   response = client.get_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BaselineArn", # required
    #     name: "String", # required
    #     description: "String"
    #   }
    # @return [Types::GetBaselineOutput]
    def get_baseline(params = {}, options = {})
      request = build_request(:get_baseline, params)
      request.send_request(options)
    end

    # <p>Returns the details of an asynchronous baseline operation, as initiated by any of these APIs: <code>EnableBaseline</code>, <code>DisableBaseline</code>, <code>UpdateEnabledBaseline</code>, <code>ResetEnabledBaseline</code>. A status message is displayed in case of operation failure. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::GetBaselineOperationInput] params
    # @option params [String] :operation_identifier
    #   <p>The operation ID returned from mutating asynchronous APIs (Enable, Disable, Update, Reset).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_baseline_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_operation: { # required
    #       operation_identifier: "OperationIdentifier",
    #       operation_type: "ENABLE_BASELINE" # One of: ["ENABLE_BASELINE", "DISABLE_BASELINE", "UPDATE_ENABLED_BASELINE", "RESET_ENABLED_BASELINE"],
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::GetBaselineOperationOutput]
    def get_baseline_operation(params = {}, options = {})
      request = build_request(:get_baseline_operation, params)
      request.send_request(options)
    end

    # <p>Returns the status of a particular <code>EnableControl</code> or <code>DisableControl</code> operation. Displays a message in case of error. Details for an operation are available for 90 days. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::GetControlOperationInput] params
    # @option params [String] :operation_identifier
    #   <p>The ID of the asynchronous operation, which is used to track status. The operation is available for 90 days.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_control_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_operation: { # required
    #       operation_type: "ENABLE_CONTROL" # One of: ["ENABLE_CONTROL", "DISABLE_CONTROL", "UPDATE_ENABLED_CONTROL", "RESET_ENABLED_CONTROL"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"],
    #       status_message: "String",
    #       operation_identifier: "OperationIdentifier",
    #       control_identifier: "ControlIdentifier",
    #       target_identifier: "TargetIdentifier",
    #       enabled_control_identifier: "Arn"
    #     }
    #   }
    # @return [Types::GetControlOperationOutput]
    def get_control_operation(params = {}, options = {})
      request = build_request(:get_control_operation, params)
      request.send_request(options)
    end

    # <p>Retrieve details of an <code>EnabledBaseline</code> resource by specifying its identifier.</p>
    # @param [Hash, Types::GetEnabledBaselineInput] params
    # @option params [String] :enabled_baseline_identifier
    #   <p>Identifier of the <code>EnabledBaseline</code> resource to be retrieved, in ARN format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled_baseline_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_enabled_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled_baseline_details: {
    #       arn: "Arn", # required
    #       baseline_identifier: "String", # required
    #       baseline_version: "String",
    #       drift_status_summary: {
    #         types: {
    #           inheritance: {
    #             status: "IN_SYNC" # One of: ["IN_SYNC", "DRIFTED"]
    #           }
    #         }
    #       },
    #       target_identifier: "String", # required
    #       parent_identifier: "Arn",
    #       status_summary: { # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "UNDER_CHANGE"],
    #         last_operation_identifier: "OperationIdentifier"
    #       },
    #       parameters: [
    #         {
    #           key: "String", # required
    #           value: ""null"", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetEnabledBaselineOutput]
    def get_enabled_baseline(params = {}, options = {})
      request = build_request(:get_enabled_baseline, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an enabled control. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::GetEnabledControlInput] params
    # @option params [String] :enabled_control_identifier
    #   <p>The <code>controlIdentifier</code> of the enabled control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled_control_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_enabled_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled_control_details: { # required
    #       arn: "Arn",
    #       control_identifier: "ControlIdentifier",
    #       target_identifier: "TargetIdentifier",
    #       target_regions: [
    #         {
    #           name: "RegionName"
    #         }
    #       ],
    #       status_summary: {
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "UNDER_CHANGE"],
    #         last_operation_identifier: "OperationIdentifier"
    #       },
    #       drift_status_summary: {
    #         drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"]
    #       },
    #       parameters: [
    #         {
    #           key: "String", # required
    #           value: ""null"", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetEnabledControlOutput]
    def get_enabled_control(params = {}, options = {})
      request = build_request(:get_enabled_control, params)
      request.send_request(options)
    end

    # <p>Returns details about the landing zone. Displays a message in case of error.</p>
    # @param [Hash, Types::GetLandingZoneInput] params
    # @option params [String] :landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     landing_zone_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.get_landing_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     landing_zone: { # required
    #       version: "LandingZoneVersion", # required
    #       manifest: ""null"", # required
    #       arn: "Arn",
    #       status: "ACTIVE" # One of: ["ACTIVE", "PROCESSING", "FAILED"],
    #       latest_available_version: "LandingZoneVersion",
    #       drift_status: {
    #         status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC"]
    #       }
    #     }
    #   }
    # @return [Types::GetLandingZoneOutput]
    def get_landing_zone(params = {}, options = {})
      request = build_request(:get_landing_zone, params)
      request.send_request(options)
    end

    # <p>Returns the status of the specified landing zone operation. Details for an operation are available for 90 days.</p>
    # @param [Hash, Types::GetLandingZoneOperationInput] params
    # @option params [String] :operation_identifier
    #   <p>A unique identifier assigned to a landing zone operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_landing_zone_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_details: { # required
    #       operation_type: "DELETE" # One of: ["DELETE", "CREATE", "UPDATE", "RESET"],
    #       operation_identifier: "OperationIdentifier",
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::GetLandingZoneOperationOutput]
    def get_landing_zone_operation(params = {}, options = {})
      request = build_request(:get_landing_zone_operation, params)
      request.send_request(options)
    end

    # <p>Returns a summary list of all available baselines. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::ListBaselinesInput] params
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be shown.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_baselines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baselines: [ # required
    #       {
    #         arn: "String", # required
    #         name: "String", # required
    #         description: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBaselinesOutput]
    def list_baselines(params = {}, options = {})
      request = build_request(:list_baselines, params)
      request.send_request(options)
    end

    # <p>Provides a list of operations in progress or queued. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html#list-control-operations-api-examples">ListControlOperation examples</a>.</p>
    # @param [Hash, Types::ListControlOperationsInput] params
    # @option params [Types::ControlOperationFilter] :filter
    #   <p>An input filter for the <code>ListControlOperations</code> API that lets you select the types of control operations to view.</p>
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be shown.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       control_identifiers: ["ControlIdentifier"],
    #       target_identifiers: ["TargetIdentifier"],
    #       enabled_control_identifiers: ["Arn"],
    #       statuses: ["SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"]],
    #       control_operation_types: ["ENABLE_CONTROL" # One of: ["ENABLE_CONTROL", "DISABLE_CONTROL", "UPDATE_ENABLED_CONTROL", "RESET_ENABLED_CONTROL"]]
    #     },
    #     next_token: "ListControlOperationsNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_control_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_operations: [ # required
    #       {
    #         operation_type: "ENABLE_CONTROL" # One of: ["ENABLE_CONTROL", "DISABLE_CONTROL", "UPDATE_ENABLED_CONTROL", "RESET_ENABLED_CONTROL"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"],
    #         status_message: "String",
    #         operation_identifier: "OperationIdentifier",
    #         control_identifier: "ControlIdentifier",
    #         target_identifier: "TargetIdentifier",
    #         enabled_control_identifier: "Arn"
    #       }
    #     ],
    #     next_token: "ListControlOperationsNextToken"
    #   }
    # @return [Types::ListControlOperationsOutput]
    def list_control_operations(params = {}, options = {})
      request = build_request(:list_control_operations, params)
      request.send_request(options)
    end

    # <p>Returns a list of summaries describing <code>EnabledBaseline</code> resources. You can filter the list by the corresponding <code>Baseline</code> or <code>Target</code> of the <code>EnabledBaseline</code> resources. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::ListEnabledBaselinesInput] params
    # @option params [Types::EnabledBaselineFilter] :filter
    #   <p>A filter applied on the <code>ListEnabledBaseline</code> operation. Allowed filters are <code>baselineIdentifiers</code> and <code>targetIdentifiers</code>. The filter can be applied for either, or both.</p>
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be shown.</p>
    # @option params [Boolean] :include_children
    #   <p>A value that can be set to include the child enabled baselines in responses. The default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       target_identifiers: ["Arn"],
    #       baseline_identifiers: ["Arn"],
    #       parent_identifiers: ["Arn"],
    #       statuses: ["SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "UNDER_CHANGE"]],
    #       inheritance_drift_statuses: ["IN_SYNC" # One of: ["IN_SYNC", "DRIFTED"]]
    #     },
    #     next_token: "ListEnabledBaselinesNextToken",
    #     max_results: 1,
    #     include_children: false
    #   }
    #   options = {}
    #   response = client.list_enabled_baselines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled_baselines: [ # required
    #       {
    #         arn: "Arn", # required
    #         baseline_identifier: "String", # required
    #         baseline_version: "String",
    #         drift_status_summary: {
    #           types: {
    #             inheritance: {
    #               status: "IN_SYNC" # One of: ["IN_SYNC", "DRIFTED"]
    #             }
    #           }
    #         },
    #         target_identifier: "String", # required
    #         parent_identifier: "Arn",
    #         status_summary: { # required
    #           status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "UNDER_CHANGE"],
    #           last_operation_identifier: "OperationIdentifier"
    #         }
    #       }
    #     ],
    #     next_token: "ListEnabledBaselinesNextToken"
    #   }
    # @return [Types::ListEnabledBaselinesOutput]
    def list_enabled_baselines(params = {}, options = {})
      request = build_request(:list_enabled_baselines, params)
      request.send_request(options)
    end

    # <p>Lists the controls enabled by Amazon Web Services Control Tower on the specified organizational unit and the accounts it contains. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::ListEnabledControlsInput] params
    # @option params [String] :target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    # @option params [String] :next_token
    #   <p>The token to continue the list from a previous API call with the same parameters.</p>
    # @option params [Integer] :max_results
    #   <p>How many results to return per API call.</p>
    # @option params [Types::EnabledControlFilter] :filter
    #   <p>An input filter for the <code>ListEnabledControls</code> API that lets you select the types of control operations to view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_identifier: "TargetIdentifier",
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       control_identifiers: ["ControlIdentifier"],
    #       statuses: ["SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "UNDER_CHANGE"]],
    #       drift_statuses: ["DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"]]
    #     }
    #   }
    #   options = {}
    #   response = client.list_enabled_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled_controls: [ # required
    #       {
    #         control_identifier: "ControlIdentifier",
    #         arn: "Arn",
    #         target_identifier: "TargetIdentifier",
    #         status_summary: {
    #           status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "UNDER_CHANGE"],
    #           last_operation_identifier: "OperationIdentifier"
    #         },
    #         drift_status_summary: {
    #           drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEnabledControlsOutput]
    def list_enabled_controls(params = {}, options = {})
      request = build_request(:list_enabled_controls, params)
      request.send_request(options)
    end

    # <p>Lists all landing zone operations from the past 90 days. Results are sorted by time, with the most recent operation first.</p>
    # @param [Hash, Types::ListLandingZoneOperationsInput] params
    # @option params [Types::LandingZoneOperationFilter] :filter
    #   <p>An input filter for the <code>ListLandingZoneOperations</code> API that lets you select the types of landing zone operations to view.</p>
    # @option params [String] :next_token
    #   <p>The token to continue the list from a previous API call with the same parameters.</p>
    # @option params [Integer] :max_results
    #   <p>How many results to return per API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       types: ["DELETE" # One of: ["DELETE", "CREATE", "UPDATE", "RESET"]],
    #       statuses: ["SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"]]
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_landing_zone_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     landing_zone_operations: [ # required
    #       {
    #         operation_type: "DELETE" # One of: ["DELETE", "CREATE", "UPDATE", "RESET"],
    #         operation_identifier: "OperationIdentifier",
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLandingZoneOperationsOutput]
    def list_landing_zone_operations(params = {}, options = {})
      request = build_request(:list_landing_zone_operations, params)
      request.send_request(options)
    end

    # <p>Returns the landing zone ARN for the landing zone deployed in your managed account. This API also creates an ARN for existing accounts that do not yet have a landing zone ARN. </p> <p>Returns one landing zone ARN.</p>
    # @param [Hash, Types::ListLandingZonesInput] params
    # @option params [String] :next_token
    #   <p>The token to continue the list from a previous API call with the same parameters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned landing zone ARNs, which is one.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_landing_zones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     landing_zones: [ # required
    #       {
    #         arn: "Arn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLandingZonesOutput]
    def list_landing_zones(params = {}, options = {})
      request = build_request(:list_landing_zones, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags associated with the resource. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Re-enables an <code>EnabledBaseline</code> resource. For example, this API can re-apply the existing <code>Baseline</code> after a new member account is moved to the target OU. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::ResetEnabledBaselineInput] params
    # @option params [String] :enabled_baseline_identifier
    #   <p>Specifies the ID of the <code>EnabledBaseline</code> resource to be re-enabled, in ARN format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled_baseline_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.reset_enabled_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::ResetEnabledBaselineOutput]
    def reset_enabled_baseline(params = {}, options = {})
      request = build_request(:reset_enabled_baseline, params)
      request.send_request(options)
    end

    # <p>Resets an enabled control.</p>
    # @param [Hash, Types::ResetEnabledControlInput] params
    # @option params [String] :enabled_control_identifier
    #   <p>The ARN of the enabled control to be reset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled_control_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.reset_enabled_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::ResetEnabledControlOutput]
    def reset_enabled_control(params = {}, options = {})
      request = build_request(:reset_enabled_control, params)
      request.send_request(options)
    end

    # <p>This API call resets a landing zone. It starts an asynchronous operation that resets the landing zone to the parameters specified in the original configuration, which you specified in the manifest file. Nothing in the manifest file's original landing zone configuration is changed during the reset process, by default. This API is not the same as a rollback of a landing zone version, which is not a supported operation.</p>
    # @param [Hash, Types::ResetLandingZoneInput] params
    # @option params [String] :landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     landing_zone_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.reset_landing_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::ResetLandingZoneOutput]
    def reset_landing_zone(params = {}, options = {})
      request = build_request(:reset_landing_zone, params)
      request.send_request(options)
    end

    # <p>Applies tags to a resource. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be tagged.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be applied to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys to be removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an <code>EnabledBaseline</code> resource's applied parameters or version. For usage examples, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html"> <i>the Amazon Web Services Control Tower User Guide</i> </a>.</p>
    # @param [Hash, Types::UpdateEnabledBaselineInput] params
    # @option params [String] :baseline_version
    #   <p>Specifies the new <code>Baseline</code> version, to which the <code>EnabledBaseline</code> should be updated.</p>
    # @option params [Array<Types::EnabledBaselineParameter>] :parameters
    #   <p>Parameters to apply when making an update.</p>
    # @option params [String] :enabled_baseline_identifier
    #   <p>Specifies the <code>EnabledBaseline</code> resource to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_version: "BaselineVersion", # required
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: ""null"", # required
    #       }
    #     ],
    #     enabled_baseline_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.update_enabled_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::UpdateEnabledBaselineOutput]
    def update_enabled_baseline(params = {}, options = {})
      request = build_request(:update_enabled_baseline, params)
      request.send_request(options)
    end

    # <p> Updates the configuration of an already enabled control.</p> <p>If the enabled control shows an <code>EnablementStatus</code> of SUCCEEDED, supply parameters that are different from the currently configured parameters. Otherwise, Amazon Web Services Control Tower will not accept the request.</p> <p>If the enabled control shows an <code>EnablementStatus</code> of FAILED, Amazon Web Services Control Tower updates the control to match any valid parameters that you supply.</p> <p>If the <code>DriftSummary</code> status for the control shows as <code>DRIFTED</code>, you cannot call this API. Instead, you can update the control by calling the <code>ResetEnabledControl</code> API. Alternatively, you can call <code>DisableControl</code> and then call <code>EnableControl</code> again. Also, you can run an extending governance operation to repair drift. For usage examples, see the <a href="https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html"> <i>Controls Reference Guide</i> </a>. </p>
    # @param [Hash, Types::UpdateEnabledControlInput] params
    # @option params [Array<Types::EnabledControlParameter>] :parameters
    #   <p>A key/value pair, where <code>Key</code> is of type <code>String</code> and <code>Value</code> is of type <code>Document</code>.</p>
    # @option params [String] :enabled_control_identifier
    #   <p> The ARN of the enabled control that will be updated. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameters: [ # required
    #       {
    #         key: "String", # required
    #         value: ""null"", # required
    #       }
    #     ],
    #     enabled_control_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.update_enabled_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::UpdateEnabledControlOutput]
    def update_enabled_control(params = {}, options = {})
      request = build_request(:update_enabled_control, params)
      request.send_request(options)
    end

    # <p>This API call updates the landing zone. It starts an asynchronous operation that updates the landing zone based on the new landing zone version, or on the changed parameters specified in the updated manifest file. </p>
    # @param [Hash, Types::UpdateLandingZoneInput] params
    # @option params [String] :version
    #   <p>The landing zone version, for example, 3.2.</p>
    # @option params [JSON] :manifest
    #   <p>The manifest file (JSON) is a text file that describes your Amazon Web Services resources. For an example, review <a href="https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch">Launch your landing zone</a>. The example manifest file contains each of the available parameters. The schema for the landing zone's JSON manifest file is not published, by design.</p>
    # @option params [String] :landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     version: "LandingZoneVersion", # required
    #     manifest: ""null"", # required
    #     landing_zone_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.update_landing_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_identifier: "OperationIdentifier", # required
    #   }
    # @return [Types::UpdateLandingZoneOutput]
    def update_landing_zone(params = {}, options = {})
      request = build_request(:update_landing_zone, params)
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
      context[:gem_name] = 'aws-sdk-controltower'
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
