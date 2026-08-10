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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:arczonalshift)

module Aws::ARCZonalShift
  # An API client for Aws::ARCZonalShift.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PercDataPlane
    @identifier = :arczonalshift

    add_plugin(::Aws::ARCZonalShift::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ARCZonalShift::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Cancel an in-progress practice run zonal shift in Amazon Application Recovery Controller.</p>
    # @param [Hash, Types::CancelPracticeRunRequest] params
    # @option params [String] :zonal_shift_id
    #   <p>The identifier of a practice run zonal shift in Amazon Application Recovery Controller that you want to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     zonal_shift_id: "ZonalShiftId", # required
    #   }
    #   options = {}
    #   response = client.cancel_practice_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     zonal_shift_id: "ZonalShiftId", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expiry_time: Time.now, # required
    #     start_time: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"], # required
    #     comment: "ZonalShiftComment", # required
    #   }
    # @return [Types::CancelPracticeRunResponse]
    def cancel_practice_run(params = {}, options = {})
      request = build_request(:cancel_practice_run, params)
      request.send_request(options)
    end

    # <p>Cancel a zonal shift in Amazon Application Recovery Controller. To cancel the zonal shift, specify the zonal shift ID.</p> <p>A zonal shift can be one that you've started for a resource in your Amazon Web Services account in an Amazon Web Services Region, or it can be a zonal shift started by a practice run with zonal autoshift. </p>
    # @param [Hash, Types::CancelZonalShiftRequest] params
    # @option params [String] :zonal_shift_id
    #   <p>The internally-generated identifier of a zonal shift.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     zonal_shift_id: "ZonalShiftId", # required
    #   }
    #   options = {}
    #   response = client.cancel_zonal_shift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     zonal_shift_id: "ZonalShiftId", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expiry_time: Time.now, # required
    #     start_time: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"], # required
    #     comment: "ZonalShiftComment", # required
    #   }
    # @return [Types::CancelZonalShiftOutput]
    def cancel_zonal_shift(params = {}, options = {})
      request = build_request(:cancel_zonal_shift, params)
      request.send_request(options)
    end

    # <p>A practice run configuration for zonal autoshift is required when you enable zonal autoshift. A practice run configuration includes specifications for blocked dates and blocked time windows, and for Amazon CloudWatch alarms that you create to use with practice runs. The alarms that you specify are an <i>outcome alarm</i>, to monitor application health during practice runs and, optionally, a <i>blocking alarm</i>, to block practice runs from starting.</p> <p>When a resource has a practice run configuration, ARC starts zonal shifts for the resource weekly, to shift traffic for practice runs. Practice runs help you to ensure that shifting away traffic from an Availability Zone during an autoshift is safe for your application.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html"> Considerations when you configure zonal autoshift</a> in the Amazon Application Recovery Controller Developer Guide.</p>
    # @param [Hash, Types::CreatePracticeRunConfigurationRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource that Amazon Web Services shifts traffic for with a practice run zonal shift. The identifier is the Amazon Resource Name (ARN) for the resource.</p> <p>Amazon Application Recovery Controller currently supports enabling the following resources for zonal shift and zonal autoshift:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html">Amazon EC2 Auto Scaling groups</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html">Amazon Elastic Kubernetes Service</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html">Application Load Balancer</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html">Network Load Balancer</a> </p> </li> </ul>
    # @option params [Array<String>] :blocked_windows
    #   <p>Optionally, you can block ARC from starting practice runs for specific windows of days and times. </p> <p>The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind, when you specify dates, that dates and times for practice runs are in UTC. Also, be aware of potential time adjustments that might be required for daylight saving time differences. Separate multiple blocked windows with spaces.</p> <p>For example, say you run business report summaries three days a week. For this scenario, you could set the following recurring days and times as blocked windows, for example: <code>Mon:00:00-Mon:10:00 Wed-20:30-Wed:21:30 Fri-20:30-Fri:21:30</code>.</p> <important> <p>The <code>blockedWindows</code> have to start and end on the same day. Windows that span multiple days aren't supported.</p> </important>
    # @option params [Array<String>] :blocked_dates
    #   <p>Optionally, you can block ARC from starting practice runs for a resource on specific calendar dates.</p> <p>The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you specify dates, that dates and times for practice runs are in UTC. Separate multiple blocked dates with spaces.</p> <p>For example, if you have an application update scheduled to launch on May 1, 2024, and you don't want practice runs to shift traffic away at that time, you could set a blocked date for <code>2024-05-01</code>.</p>
    # @option params [Array<Types::ControlCondition>] :blocking_alarms
    #   <p> <i>Blocking alarms</i> for practice runs are optional alarms that you can specify that block practice runs when one or more of the alarms is in an <code>ALARM</code> state.</p>
    # @option params [Array<String>] :allowed_windows
    #   <p>Optionally, you can allow ARC to start practice runs for specific windows of days and times. </p> <p>The format for allowed windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind, when you specify dates, that dates and times for practice runs are in UTC. Also, be aware of potential time adjustments that might be required for daylight saving time differences. Separate multiple allowed windows with spaces.</p> <p>For example, say you want to allow practice runs only on Wednesdays and Fridays from noon to 5 p.m. For this scenario, you could set the following recurring days and times as allowed windows, for example: <code>Wed-12:00-Wed:17:00 Fri-12:00-Fri:17:00</code>.</p> <important> <p>The <code>allowedWindows</code> have to start and end on the same day. Windows that span multiple days aren't supported.</p> </important>
    # @option params [Array<Types::ControlCondition>] :outcome_alarms
    #   <p> <i>Outcome alarms</i> for practice runs are alarms that you specify that end a practice run when one or more of the alarms is in an <code>ALARM</code> state.</p> <p>Configure one or more of these alarms to monitor the health of your application when traffic is shifted away from an Availability Zone during each practice run. You should configure these alarms to go into an <code>ALARM</code> state if you want to stop a zonal shift, to let traffic for the resource return to the original Availability Zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     blocked_windows: ["BlockedWindow"],
    #     blocked_dates: ["BlockedDate"],
    #     blocking_alarms: [
    #       {
    #         type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #         alarm_identifier: "MetricIdentifier", # required
    #       }
    #     ],
    #     allowed_windows: ["AllowedWindow"],
    #     outcome_alarms: [ # required
    #       {
    #         type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #         alarm_identifier: "MetricIdentifier", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_practice_run_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     name: "ResourceName", # required
    #     zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     practice_run_configuration: { # required
    #       blocking_alarms: [
    #         {
    #           type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #           alarm_identifier: "MetricIdentifier", # required
    #         }
    #       ],
    #       outcome_alarms: [ # required
    #         {
    #           type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #           alarm_identifier: "MetricIdentifier", # required
    #         }
    #       ],
    #       blocked_windows: ["BlockedWindow"],
    #       allowed_windows: ["AllowedWindow"],
    #       blocked_dates: ["BlockedDate"]
    #     }
    #   }
    # @return [Types::CreatePracticeRunConfigurationResponse]
    def create_practice_run_configuration(params = {}, options = {})
      request = build_request(:create_practice_run_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the practice run configuration for a resource. Before you can delete a practice run configuration for a resource., you must disable zonal autoshift for the resource. Practice runs must be configured for zonal autoshift to be enabled.</p>
    # @param [Hash, Types::DeletePracticeRunConfigurationRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that you want to delete the practice run configuration for. The identifier is the Amazon Resource Name (ARN) for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_practice_run_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     name: "ResourceName", # required
    #     zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    # @return [Types::DeletePracticeRunConfigurationResponse]
    def delete_practice_run_configuration(params = {}, options = {})
      request = build_request(:delete_practice_run_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the status of the autoshift observer notification. Autoshift observer notifications notify you through Amazon EventBridge when there is an autoshift event for zonal autoshift. The status can be <code>ENABLED</code> or <code>DISABLED</code>. When <code>ENABLED</code>, a notification is sent when an autoshift is triggered. When <code>DISABLED</code>, notifications are not sent. </p>
    # @param [Hash, Types::GetAutoshiftObserverNotificationStatusRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_autoshift_observer_notification_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    # @return [Types::GetAutoshiftObserverNotificationStatusResponse]
    def get_autoshift_observer_notification_status(params = {}, options = {})
      request = build_request(:get_autoshift_observer_notification_status, params)
      request.send_request(options)
    end

    # <p>Get information about a resource that's been registered for zonal shifts with Amazon Application Recovery Controller in this Amazon Web Services Region. Resources that are registered for zonal shifts are managed resources in ARC. You can start zonal shifts and configure zonal autoshift for managed resources.</p>
    # @param [Hash, Types::GetManagedResourceRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that Amazon Web Services shifts traffic for. The identifier is the Amazon Resource Name (ARN) for the resource.</p> <p>Amazon Application Recovery Controller currently supports enabling the following resources for zonal shift and zonal autoshift:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html">Amazon EC2 Auto Scaling groups</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html">Amazon Elastic Kubernetes Service</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html">Application Load Balancer</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html">Network Load Balancer</a> </p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_managed_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn",
    #     name: "ResourceName",
    #     applied_weights: { # required
    #       "AvailabilityZone" => 1.0
    #     },
    #     zonal_shifts: [ # required
    #       {
    #         applied_status: "APPLIED" # One of: ["APPLIED", "NOT_APPLIED"], # required
    #         zonal_shift_id: "ZonalShiftId", # required
    #         resource_identifier: "ResourceIdentifier", # required
    #         away_from: "AvailabilityZone", # required
    #         expiry_time: Time.now, # required
    #         start_time: Time.now, # required
    #         comment: "ZonalShiftComment", # required
    #         shift_type: "ZONAL_SHIFT" # One of: ["ZONAL_SHIFT", "PRACTICE_RUN", "FIS_EXPERIMENT", "ZONAL_AUTOSHIFT"],
    #         practice_run_outcome: "FAILED" # One of: ["FAILED", "INTERRUPTED", "PENDING", "SUCCEEDED", "CAPACITY_CHECK_FAILED"]
    #       }
    #     ],
    #     autoshifts: [
    #       {
    #         applied_status: "APPLIED" # One of: ["APPLIED", "NOT_APPLIED"], # required
    #         away_from: "AvailabilityZone", # required
    #         start_time: Time.now, # required
    #       }
    #     ],
    #     practice_run_configuration: {
    #       blocking_alarms: [
    #         {
    #           type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #           alarm_identifier: "MetricIdentifier", # required
    #         }
    #       ],
    #       outcome_alarms: [ # required
    #         {
    #           type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #           alarm_identifier: "MetricIdentifier", # required
    #         }
    #       ],
    #       blocked_windows: ["BlockedWindow"],
    #       allowed_windows: ["AllowedWindow"],
    #       blocked_dates: ["BlockedDate"]
    #     },
    #     zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    # @return [Types::GetManagedResourceResponse]
    def get_managed_resource(params = {}, options = {})
      request = build_request(:get_managed_resource, params)
      request.send_request(options)
    end

    # <p>Returns the autoshifts for an Amazon Web Services Region. By default, the call returns only <code>ACTIVE</code> autoshifts. Optionally, you can specify the <code>status</code> parameter to return <code>COMPLETED</code> autoshifts. </p>
    # @param [Hash, Types::ListAutoshiftsRequest] params
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @option params [String] :status
    #   <p>The status of the autoshift.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "COMPLETED"],
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_autoshifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         away_from: "AvailabilityZone", # required
    #         end_time: Time.now,
    #         start_time: Time.now, # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "COMPLETED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAutoshiftsResponse]
    def list_autoshifts(params = {}, options = {})
      request = build_request(:list_autoshifts, params)
      request.send_request(options)
    end

    # <p>Lists all the resources in your Amazon Web Services account in this Amazon Web Services Region that are managed for zonal shifts in Amazon Application Recovery Controller, and information about them. The information includes the zonal autoshift status for the resource, as well as the Amazon Resource Name (ARN), the Availability Zones that each resource is deployed in, and the resource name.</p>
    # @param [Hash, Types::ListManagedResourcesRequest] params
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_managed_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         arn: "ResourceArn",
    #         name: "ResourceName",
    #         availability_zones: ["AvailabilityZone"], # required
    #         applied_weights: {
    #           "AvailabilityZone" => 1.0
    #         },
    #         zonal_shifts: [
    #           {
    #             applied_status: "APPLIED" # One of: ["APPLIED", "NOT_APPLIED"], # required
    #             zonal_shift_id: "ZonalShiftId", # required
    #             resource_identifier: "ResourceIdentifier", # required
    #             away_from: "AvailabilityZone", # required
    #             expiry_time: Time.now, # required
    #             start_time: Time.now, # required
    #             comment: "ZonalShiftComment", # required
    #             shift_type: "ZONAL_SHIFT" # One of: ["ZONAL_SHIFT", "PRACTICE_RUN", "FIS_EXPERIMENT", "ZONAL_AUTOSHIFT"],
    #             practice_run_outcome: "FAILED" # One of: ["FAILED", "INTERRUPTED", "PENDING", "SUCCEEDED", "CAPACITY_CHECK_FAILED"]
    #           }
    #         ],
    #         autoshifts: [
    #           {
    #             applied_status: "APPLIED" # One of: ["APPLIED", "NOT_APPLIED"], # required
    #             away_from: "AvailabilityZone", # required
    #             start_time: Time.now, # required
    #           }
    #         ],
    #         zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         practice_run_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListManagedResourcesResponse]
    def list_managed_resources(params = {}, options = {})
      request = build_request(:list_managed_resources, params)
      request.send_request(options)
    end

    # <p>Lists all active and completed zonal shifts in Amazon Application Recovery Controller in your Amazon Web Services account in this Amazon Web Services Region. <code>ListZonalShifts</code> returns customer-initiated zonal shifts, as well as practice run zonal shifts that ARC started on your behalf for zonal autoshift.</p> <p>For more information about listing autoshifts, see <a href="https://docs.aws.amazon.com/arc-zonal-shift/latest/api/API_ListAutoshifts.html">"&gt;ListAutoshifts</a>.</p>
    # @param [Hash, Types::ListZonalShiftsRequest] params
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @option params [String] :status
    #   <p>A status for a zonal shift.</p> <p>The <code>Status</code> for a zonal shift can have one of the following values:</p> <ul> <li> <p> <b>ACTIVE</b>: The zonal shift has been started and is active.</p> </li> <li> <p> <b>EXPIRED</b>: The zonal shift has expired (the expiry time was exceeded).</p> </li> <li> <p> <b>CANCELED</b>: The zonal shift was canceled.</p> </li> </ul>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that you want to list zonal shifts for. The identifier is the Amazon Resource Name (ARN) for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"],
    #     max_results: 1,
    #     resource_identifier: "ResourceIdentifier"
    #   }
    #   options = {}
    #   response = client.list_zonal_shifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         zonal_shift_id: "ZonalShiftId", # required
    #         resource_identifier: "ResourceIdentifier", # required
    #         away_from: "AvailabilityZone", # required
    #         expiry_time: Time.now, # required
    #         start_time: Time.now, # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"], # required
    #         comment: "ZonalShiftComment", # required
    #         shift_type: "ZONAL_SHIFT" # One of: ["ZONAL_SHIFT", "PRACTICE_RUN", "FIS_EXPERIMENT", "ZONAL_AUTOSHIFT"],
    #         practice_run_outcome: "FAILED" # One of: ["FAILED", "INTERRUPTED", "PENDING", "SUCCEEDED", "CAPACITY_CHECK_FAILED"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListZonalShiftsResponse]
    def list_zonal_shifts(params = {}, options = {})
      request = build_request(:list_zonal_shifts, params)
      request.send_request(options)
    end

    # <p>Start an on-demand practice run zonal shift in Amazon Application Recovery Controller. With zonal autoshift enabled, you can start an on-demand practice run to verify preparedness at any time. Amazon Web Services also runs automated practice runs about weekly when you have enabled zonal autoshift.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html"> Considerations when you configure zonal autoshift</a> in the Amazon Application Recovery Controller Developer Guide.</p>
    # @param [Hash, Types::StartPracticeRunRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that you want to start a practice run zonal shift for. The identifier is the Amazon Resource Name (ARN) for the resource.</p>
    # @option params [String] :away_from
    #   <p>The Availability Zone (for example, <code>use1-az1</code>) that traffic is shifted away from for the resource that you specify for the practice run.</p>
    # @option params [String] :comment
    #   <p>The initial comment that you enter about the practice run. Be aware that this comment can be overwritten by Amazon Web Services if the automatic check for balanced capacity fails. For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.capacity-check.html"> Capacity checks for practice runs</a> in the Amazon Application Recovery Controller Developer Guide. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     comment: "ZonalShiftComment", # required
    #   }
    #   options = {}
    #   response = client.start_practice_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     zonal_shift_id: "ZonalShiftId", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expiry_time: Time.now, # required
    #     start_time: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"], # required
    #     comment: "ZonalShiftComment", # required
    #   }
    # @return [Types::StartPracticeRunResponse]
    def start_practice_run(params = {}, options = {})
      request = build_request(:start_practice_run, params)
      request.send_request(options)
    end

    # <p>You start a zonal shift to temporarily move load balancer traffic away from an Availability Zone in an Amazon Web Services Region, to help your application recover immediately, for example, from a developer's bad code deployment or from an Amazon Web Services infrastructure failure in a single Availability Zone. You can start a zonal shift in ARC only for managed resources in your Amazon Web Services account in an Amazon Web Services Region. Resources are automatically registered with ARC by Amazon Web Services services.</p> <p>Amazon Application Recovery Controller currently supports enabling the following resources for zonal shift and zonal autoshift:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html">Amazon EC2 Auto Scaling groups</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html">Amazon Elastic Kubernetes Service</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html">Application Load Balancer</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html">Network Load Balancer</a> </p> </li> </ul> <p>When you start a zonal shift, traffic for the resource is no longer routed to the Availability Zone. The zonal shift is created immediately in ARC. However, it can take a short time, typically up to a few minutes, for existing, in-progress connections in the Availability Zone to complete.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html">Zonal shift</a> in the Amazon Application Recovery Controller Developer Guide.</p>
    # @param [Hash, Types::StartZonalShiftRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that Amazon Web Services shifts traffic for. The identifier is the Amazon Resource Name (ARN) for the resource.</p> <p>Amazon Application Recovery Controller currently supports enabling the following resources for zonal shift and zonal autoshift:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html">Amazon EC2 Auto Scaling groups</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html">Amazon Elastic Kubernetes Service</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html">Application Load Balancer</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html">Network Load Balancer</a> </p> </li> </ul>
    # @option params [String] :away_from
    #   <p>The Availability Zone (for example, <code>use1-az1</code>) that traffic is moved away from for a resource when you start a zonal shift. Until the zonal shift expires or you cancel it, traffic for the resource is instead moved to other Availability Zones in the Amazon Web Services Region.</p>
    # @option params [String] :expires_in
    #   <p>The length of time that you want a zonal shift to be active, which ARC converts to an expiry time (expiration time). Zonal shifts are temporary. You can set a zonal shift to be active initially for up to three days (72 hours).</p> <p>If you want to still keep traffic away from an Availability Zone, you can update the zonal shift and set a new expiration. You can also cancel a zonal shift, before it expires, for example, if you're ready to restore traffic to the Availability Zone.</p> <p>To set a length of time for a zonal shift to be active, specify a whole number, and then one of the following, with no space:</p> <ul> <li> <p> <b>A lowercase letter m:</b> To specify that the value is in minutes.</p> </li> <li> <p> <b>A lowercase letter h:</b> To specify that the value is in hours.</p> </li> </ul> <p>For example: <code>20h</code> means the zonal shift expires in 20 hours. <code>120m</code> means the zonal shift expires in 120 minutes (2 hours).</p>
    # @option params [String] :comment
    #   <p>A comment that you enter about the zonal shift. Only the latest comment is retained; no comment history is maintained. A new comment overwrites any existing comment string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expires_in: "ExpiresIn", # required
    #     comment: "ZonalShiftComment", # required
    #   }
    #   options = {}
    #   response = client.start_zonal_shift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     zonal_shift_id: "ZonalShiftId", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expiry_time: Time.now, # required
    #     start_time: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"], # required
    #     comment: "ZonalShiftComment", # required
    #   }
    # @return [Types::StartZonalShiftOutput]
    def start_zonal_shift(params = {}, options = {})
      request = build_request(:start_zonal_shift, params)
      request.send_request(options)
    end

    # <p>Update the status of autoshift observer notification. Autoshift observer notification enables you to be notified, through Amazon EventBridge, when there is an autoshift event for zonal autoshift.</p> <p>If the status is <code>ENABLED</code>, ARC includes all autoshift events when you use the EventBridge pattern <code>Autoshift In Progress</code>. When the status is <code>DISABLED</code>, ARC includes only autoshift events for autoshifts when one or more of your resources is included in the autoshift.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification"> Notifications for practice runs and autoshifts</a> in the Amazon Application Recovery Controller Developer Guide.</p>
    # @param [Hash, Types::UpdateAutoshiftObserverNotificationStatusRequest] params
    # @option params [String] :status
    #   <p>The status to set for autoshift observer notification. If the status is <code>ENABLED</code>, ARC includes all autoshift events when you use the Amazon EventBridge pattern <code>Autoshift In Progress</code>. When the status is <code>DISABLED</code>, ARC includes only autoshift events for autoshifts when one or more of your resources is included in the autoshift. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_autoshift_observer_notification_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    # @return [Types::UpdateAutoshiftObserverNotificationStatusResponse]
    def update_autoshift_observer_notification_status(params = {}, options = {})
      request = build_request(:update_autoshift_observer_notification_status, params)
      request.send_request(options)
    end

    # <p>Update a practice run configuration to change one or more of the following: add, change, or remove the blocking alarm; change the outcome alarm; or add, change, or remove blocking dates or time windows.</p>
    # @param [Hash, Types::UpdatePracticeRunConfigurationRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that you want to update the practice run configuration for. The identifier is the Amazon Resource Name (ARN) for the resource.</p>
    # @option params [Array<String>] :blocked_windows
    #   <p>Add, change, or remove windows of days and times for when you can, optionally, block ARC from starting a practice run for a resource.</p> <p>The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind, when you specify dates, that dates and times for practice runs are in UTC. Also, be aware of potential time adjustments that might be required for daylight saving time differences. Separate multiple blocked windows with spaces.</p> <p>For example, say you run business report summaries three days a week. For this scenario, you might set the following recurring days and times as blocked windows, for example: <code>MON-20:30-21:30 WED-20:30-21:30 FRI-20:30-21:30</code>.</p>
    # @option params [Array<String>] :blocked_dates
    #   <p>Add, change, or remove blocked dates for a practice run in zonal autoshift.</p> <p>Optionally, you can block practice runs for specific calendar dates. The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you specify dates, that dates and times for practice runs are in UTC. Separate multiple blocked dates with spaces.</p> <p>For example, if you have an application update scheduled to launch on May 1, 2024, and you don't want practice runs to shift traffic away at that time, you could set a blocked date for <code>2024-05-01</code>.</p>
    # @option params [Array<Types::ControlCondition>] :blocking_alarms
    #   <p>Add, change, or remove the Amazon CloudWatch alarms that you optionally specify as the blocking alarms for practice runs.</p>
    # @option params [Array<String>] :allowed_windows
    #   <p>Add, change, or remove windows of days and times for when you can, optionally, allow ARC to start a practice run for a resource.</p> <p>The format for allowed windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind, when you specify dates, that dates and times for practice runs are in UTC. Also, be aware of potential time adjustments that might be required for daylight saving time differences. Separate multiple allowed windows with spaces.</p> <p>For example, say you want to allow practice runs only on Wednesdays and Fridays from noon to 5 p.m. For this scenario, you could set the following recurring days and times as allowed windows, for example: <code>Wed-12:00-Wed:17:00 Fri-12:00-Fri:17:00</code>.</p> <important> <p>The <code>allowedWindows</code> have to start and end on the same day. Windows that span multiple days aren't supported.</p> </important>
    # @option params [Array<Types::ControlCondition>] :outcome_alarms
    #   <p>Specify one or more Amazon CloudWatch alarms as the outcome alarms for practice runs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     blocked_windows: ["BlockedWindow"],
    #     blocked_dates: ["BlockedDate"],
    #     blocking_alarms: [
    #       {
    #         type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #         alarm_identifier: "MetricIdentifier", # required
    #       }
    #     ],
    #     allowed_windows: ["AllowedWindow"],
    #     outcome_alarms: [
    #       {
    #         type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #         alarm_identifier: "MetricIdentifier", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_practice_run_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     name: "ResourceName", # required
    #     zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     practice_run_configuration: { # required
    #       blocking_alarms: [
    #         {
    #           type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #           alarm_identifier: "MetricIdentifier", # required
    #         }
    #       ],
    #       outcome_alarms: [ # required
    #         {
    #           type: "CLOUDWATCH" # One of: ["CLOUDWATCH"], # required
    #           alarm_identifier: "MetricIdentifier", # required
    #         }
    #       ],
    #       blocked_windows: ["BlockedWindow"],
    #       allowed_windows: ["AllowedWindow"],
    #       blocked_dates: ["BlockedDate"]
    #     }
    #   }
    # @return [Types::UpdatePracticeRunConfigurationResponse]
    def update_practice_run_configuration(params = {}, options = {})
      request = build_request(:update_practice_run_configuration, params)
      request.send_request(options)
    end

    # <p>The zonal autoshift configuration for a resource includes the practice run configuration and the status for running autoshifts, zonal autoshift status. When a resource has a practice run configuration, ARC starts weekly zonal shifts for the resource, to shift traffic away from an Availability Zone. Weekly practice runs help you to make sure that your application can continue to operate normally with the loss of one Availability Zone.</p> <p>You can update the zonal autoshift status to enable or disable zonal autoshift. When zonal autoshift is <code>ENABLED</code>, you authorize Amazon Web Services to shift away resource traffic for an application from an Availability Zone during events, on your behalf, to help reduce time to recovery. Traffic is also shifted away for the required weekly practice runs.</p>
    # @param [Hash, Types::UpdateZonalAutoshiftConfigurationRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier for the resource that you want to update the zonal autoshift configuration for. The identifier is the Amazon Resource Name (ARN) for the resource.</p>
    # @option params [String] :zonal_autoshift_status
    #   <p>The zonal autoshift status for the resource that you want to update the zonal autoshift configuration for. Choose <code>ENABLED</code> to authorize Amazon Web Services to shift away resource traffic for an application from an Availability Zone during events, on your behalf, to help reduce time to recovery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_zonal_autoshift_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_identifier: "ResourceIdentifier", # required
    #     zonal_autoshift_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    # @return [Types::UpdateZonalAutoshiftConfigurationResponse]
    def update_zonal_autoshift_configuration(params = {}, options = {})
      request = build_request(:update_zonal_autoshift_configuration, params)
      request.send_request(options)
    end

    # <p>Update an active zonal shift in Amazon Application Recovery Controller in your Amazon Web Services account. You can update a zonal shift to set a new expiration, or edit or replace the comment for the zonal shift.</p>
    # @param [Hash, Types::UpdateZonalShiftRequest] params
    # @option params [String] :zonal_shift_id
    #   <p>The identifier of a zonal shift.</p>
    # @option params [String] :comment
    #   <p>A comment that you enter about the zonal shift. Only the latest comment is retained; no comment history is maintained. A new comment overwrites any existing comment string.</p>
    # @option params [String] :expires_in
    #   <p>The length of time that you want a zonal shift to be active, which ARC converts to an expiry time (expiration time). Zonal shifts are temporary. You can set a zonal shift to be active initially for up to three days (72 hours).</p> <p>If you want to still keep traffic away from an Availability Zone, you can update the zonal shift and set a new expiration. You can also cancel a zonal shift, before it expires, for example, if you're ready to restore traffic to the Availability Zone.</p> <p>To set a length of time for a zonal shift to be active, specify a whole number, and then one of the following, with no space:</p> <ul> <li> <p> <b>A lowercase letter m:</b> To specify that the value is in minutes.</p> </li> <li> <p> <b>A lowercase letter h:</b> To specify that the value is in hours.</p> </li> </ul> <p>For example: <code>20h</code> means the zonal shift expires in 20 hours. <code>120m</code> means the zonal shift expires in 120 minutes (2 hours).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     zonal_shift_id: "ZonalShiftId", # required
    #     comment: "ZonalShiftComment",
    #     expires_in: "ExpiresIn"
    #   }
    #   options = {}
    #   response = client.update_zonal_shift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     zonal_shift_id: "ZonalShiftId", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expiry_time: Time.now, # required
    #     start_time: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "CANCELED"], # required
    #     comment: "ZonalShiftComment", # required
    #   }
    # @return [Types::UpdateZonalShiftOutput]
    def update_zonal_shift(params = {}, options = {})
      request = build_request(:update_zonal_shift, params)
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
      context[:gem_name] = 'aws-sdk-arczonalshift'
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
