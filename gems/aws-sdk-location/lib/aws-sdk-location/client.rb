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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Location
  # An API client for Aws::Location.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LocationService

    add_plugin(::Aws::Location::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Location::EndpointProvider)
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

    # <p>Creates an association between a geofence collection and a tracker resource. This
    #             allows the tracker resource to communicate location data to the linked geofence
    #             collection. </p>
    #          <p>You can associate up to five geofence collections to each tracker resource.</p>
    #          <note>
    #             <p>Currently not supported — Cross-account configurations, such as creating associations between a tracker resource in one account and a geofence collection in another account.</p>
    #          </note>
    # @param [Hash, Types::AssociateTrackerConsumerInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be associated with a geofence collection.</p>
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker
    #               resource. Used when you need to specify a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     consumer_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.associate_tracker_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateTrackerConsumerOutput]
    def associate_tracker_consumer(params = {}, options = {})
      request = build_request(:associate_tracker_consumer, params)
      request.send_request(options)
    end

    # <p>Deletes the position history of one or more devices from a tracker resource.</p>
    # @param [Hash, Types::BatchDeleteDevicePositionHistoryInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to delete the device position history from.</p>
    # @option params [Array<String>] :device_ids
    #   <p>Devices whose position history you want to delete.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>“DeviceIds” : [DeviceId1,DeviceId2]</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     device_ids: ["Id"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_device_position_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         device_id: "Id", # required
    #         error: { # required
    #           code: "BatchItemErrorCode",
    #           message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteDevicePositionHistoryOutput]
    def batch_delete_device_position_history(params = {}, options = {})
      request = build_request(:batch_delete_device_position_history, params)
      request.send_request(options)
    end

    # <p>Deletes a batch of geofences from a geofence collection.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently.</p>
    #          </note>
    # @param [Hash, Types::BatchDeleteGeofenceInput] params
    # @option params [String] :collection_name
    #   <p>The geofence collection storing the geofences to be deleted.</p>
    # @option params [Array<String>] :geofence_ids
    #   <p>The batch of geofences to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     geofence_ids: ["Id"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_geofence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         error: { # required
    #           code: "BatchItemErrorCode",
    #           message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteGeofenceOutput]
    def batch_delete_geofence(params = {}, options = {})
      request = build_request(:batch_delete_geofence, params)
      request.send_request(options)
    end

    # <p>Evaluates device positions against the geofence geometries from a given geofence
    #             collection.</p>
    #          <p>This operation always returns an empty response because geofences are asynchronously
    #             evaluated. The evaluation determines if the device has entered or exited a geofenced
    #             area, and then publishes one of the following events to Amazon EventBridge:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ENTER</code> if Amazon Location determines that the tracked device has entered
    #                     a geofenced area.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EXIT</code> if Amazon Location determines that the tracked device has exited a
    #                     geofenced area.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The last geofence that a device was observed within is tracked for 30 days after
    #                 the most recent device position update.</p>
    #          </note>
    #          <note>
    #             <p>Geofence evaluation uses the given device position. It does not account for the
    #                 optional <code>Accuracy</code> of a <code>DevicePositionUpdate</code>.</p>
    #          </note>
    #          <note>
    #             <p>The <code>DeviceID</code> is used as a string to represent the device. You do not
    #                 need to have a <code>Tracker</code> associated with the
    #                 <code>DeviceID</code>.</p>
    #          </note>
    # @param [Hash, Types::BatchEvaluateGeofencesInput] params
    # @option params [String] :collection_name
    #   <p>The geofence collection used in evaluating the position of devices against its
    #               geofences.</p>
    # @option params [Array<Types::DevicePositionUpdate>] :device_position_updates
    #   <p>Contains device details for each device to be evaluated against the given geofence
    #               collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     device_position_updates: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_evaluate_geofences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         error: { # required
    #           code: "BatchItemErrorCode",
    #           message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchEvaluateGeofencesOutput]
    def batch_evaluate_geofences(params = {}, options = {})
      request = build_request(:batch_evaluate_geofences, params)
      request.send_request(options)
    end

    # <p>Lists the latest device positions for requested devices.</p>
    # @param [Hash, Types::BatchGetDevicePositionInput] params
    # @option params [String] :tracker_name
    #   <p>The tracker resource retrieving the device position.</p>
    # @option params [Array<String>] :device_ids
    #   <p>Devices whose position you want to retrieve.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>device-ids=DeviceId1&amp;device-ids=DeviceId2</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     device_ids: ["Id"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_device_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         device_id: "Id", # required
    #         error: { # required
    #           code: "BatchItemErrorCode",
    #           message: "String"
    #         }
    #       }
    #     ],
    #     device_positions: [ # required
    #       {
    #         device_id: "Id",
    #         sample_time: Time.now, # required
    #         received_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetDevicePositionOutput]
    def batch_get_device_position(params = {}, options = {})
      request = build_request(:batch_get_device_position, params)
      request.send_request(options)
    end

    # <p>A batch request for storing geofence geometries into a given geofence collection, or
    #             updates the geometry of an existing geofence if a geofence ID is included in the
    #             request.</p>
    # @param [Hash, Types::BatchPutGeofenceInput] params
    # @option params [String] :collection_name
    #   <p>The geofence collection storing the geofences.</p>
    # @option params [Array<Types::BatchPutGeofenceRequestEntry>] :entries
    #   <p>The batch of geofences to be stored in a geofence collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     entries: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         geometry: { # required
    #           polygon: [
    #             [
    #               [1.0]
    #             ]
    #           ],
    #           circle: {
    #             center: [1.0], # required
    #             radius: 1.0, # required
    #           },
    #           geobuf: "data",
    #           multi_polygon: [
    #             [
    #               [
    #                 [1.0]
    #               ]
    #             ]
    #           ]
    #         },
    #         geofence_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_geofence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successes: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         error: { # required
    #           code: "BatchItemErrorCode",
    #           message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutGeofenceOutput]
    def batch_put_geofence(params = {}, options = {})
      request = build_request(:batch_put_geofence, params)
      request.send_request(options)
    end

    # <p>Uploads position update data for one or more devices to a tracker resource (up to 
    #            10 devices per batch). Amazon Location uses the data when it reports the last known device 
    #            position and position history. Amazon Location retains location data for 30 days.</p>
    #          <note>
    #             <p>Position updates are handled based on the <code>PositionFiltering</code> 
    #                property of the tracker. When <code>PositionFiltering</code> is set to 
    #                <code>TimeBased</code>, updates are evaluated against linked geofence collections, 
    #                and location data is stored at a maximum of one position per 30 second interval. 
    #                If your update frequency is more often than every 30 seconds, only one update per 
    #                30 seconds is stored for each unique device ID.</p>
    #             <p>When <code>PositionFiltering</code> is set to <code>DistanceBased</code> 
    #                 filtering, location data is stored and evaluated against linked geofence 
    #                 collections only if the device has moved more than 30 m (98.4 ft).</p>
    #             <p>When <code>PositionFiltering</code> is set to <code>AccuracyBased</code> 
    #                 filtering, location data is stored and evaluated against linked geofence 
    #                 collections only if the device has moved more than the measured accuracy. For 
    #                 example, if two consecutive updates from a device have a horizontal accuracy of 
    #                 5 m and 10 m, the second update is neither stored or evaluated if the device has 
    #                 moved less than 15 m. If <code>PositionFiltering</code> is set to 
    #                 <code>AccuracyBased</code> filtering, Amazon Location uses the default value 
    #                 <code>{ "Horizontal": 0}</code> when accuracy is not provided on a
    #                 <code>DevicePositionUpdate</code>.</p>
    #          </note>
    # @param [Hash, Types::BatchUpdateDevicePositionInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to update.</p>
    # @option params [Array<Types::DevicePositionUpdate>] :updates
    #   <p>Contains the position update details for each device, up to 10 devices.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     updates: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_device_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         error: { # required
    #           code: "BatchItemErrorCode",
    #           message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateDevicePositionOutput]
    def batch_update_device_position(params = {}, options = {})
      request = build_request(:batch_update_device_position, params)
      request.send_request(options)
    end

    # <p>
    #             <a href="https://docs.aws.amazon.com/location/previous/developerguide/calculate-route.html">Calculates a route</a> given the following required parameters:
    #                 <code>DeparturePosition</code> and <code>DestinationPosition</code>. Requires that
    #             you first <a href="https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html">create a
    #                 route calculator resource</a>.</p>
    #          <p>By default, a request that doesn't specify a departure time uses the best time of day
    #             to travel with the best traffic conditions when calculating the route.</p>
    #          <p>Additional options include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/location/previous/developerguide/departure-time.html">Specifying a
    #                         departure time</a> using either <code>DepartureTime</code> or
    #                         <code>DepartNow</code>. This calculates a route based on predictive traffic
    #                     data at the given time. </p>
    #                <note>
    #                   <p>You can't specify both <code>DepartureTime</code> and
    #                             <code>DepartNow</code> in a single request. Specifying both parameters
    #                         returns a validation error.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/location/previous/developerguide/travel-mode.html">Specifying a travel
    #                         mode</a> using TravelMode sets the transportation mode used to calculate
    #                     the routes. This also lets you specify additional route preferences in
    #                         <code>CarModeOptions</code> if traveling by <code>Car</code>, or
    #                         <code>TruckModeOptions</code> if traveling by <code>Truck</code>.</p>
    #                <note>
    #                   <p>If you specify <code>walking</code> for the travel mode and your data 
    #                     provider is Esri, the start and destination must be within 40km.</p>
    #                </note>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CalculateRouteInput] params
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route.
    #           </p>
    # @option params [Array<Float>] :departure_position
    #   <p>The start position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>[-123.115, 49.285]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you specify a departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. If Esri is the provider for your route calculator,
    #                   specifying a route that is longer than 400 km returns a <code>400
    #                       RoutesValidationException</code> error.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    # @option params [Array<Float>] :destination_position
    #   <p>The finish position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #            <ul>
    #               <li>
    #                  <p> For example, <code>[-122.339, 47.615]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you specify a destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    # @option params [Array<Array<Float>>] :waypoint_positions
    #   <p>Specifies an ordered list of up to 23 intermediate positions to include along a route
    #               between the departure position and destination position. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, from the <code>DeparturePosition</code>
    #                     <code>[-123.115, 49.285]</code>, the route follows the order that the waypoint
    #                       positions are given <code>[[-122.757, 49.0021],[-122.349, 47.620]]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you specify a waypoint position that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #               <p>Specifying more than 23 waypoints returns a <code>400 ValidationException</code>
    #                   error.</p>
    #               <p>If Esri is the provider for your route calculator, specifying a route that is
    #                   longer than 400 km returns a <code>400 RoutesValidationException</code>
    #                   error.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility. You can choose <code>Car</code>, <code>Truck</code>, 
    #               <code>Walking</code>, <code>Bicycle</code> or <code>Motorcycle</code> as options for 
    #               the <code>TravelMode</code>.</p>
    #            <note>
    #               <p>
    #                  <code>Bicycle</code> and <code>Motorcycle</code> are only valid when using Grab as
    #                   a data provider, and only within Southeast Asia.</p>
    #               <p>
    #                  <code>Truck</code> is not available for Grab.</p>
    #               <p>For more details on the using Grab for routing, including areas of coverage, see
    #                       <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    #            </note>
    #            <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #            <ul>
    #               <li>
    #                  <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                  <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #            <p>Default Value: <code>Car</code>
    #            </p>
    # @option params [Time] :departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route.
    #               Otherwise, the best time of day to travel with the best traffic conditions is used to
    #               calculate the route.</p>
    #            <ul>
    #               <li>
    #                  <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate a
    #               route. Otherwise, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    # @option params [String] :distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    # @option params [Boolean] :include_leg_geometry
    #   <p>Set to include the geometry details in the result for each path between a pair of
    #               positions.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    # @option params [Types::CalculateRouteCarModeOptions] :car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    # @option params [Types::CalculateRouteTruckModeOptions] :truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    # @option params [Time] :arrival_time
    #   <p>Specifies the desired time of arrival. Uses the given time to calculate the route. 
    #               Otherwise, the best time of day to travel with the best traffic conditions is used to calculate the route.</p>
    #            <note>
    #               <p>ArrivalTime is not supported Esri.</p>
    #            </note>
    # @option params [String] :optimize_for
    #   <p>Specifies the distance to optimize for when calculating a route.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculator_name: "ResourceName", # required
    #     departure_position: [1.0], # required
    #     destination_position: [1.0], # required
    #     waypoint_positions: [
    #       [1.0]
    #     ],
    #     travel_mode: "TravelMode",
    #     departure_time: Time.now,
    #     depart_now: false,
    #     distance_unit: "DistanceUnit",
    #     include_leg_geometry: false,
    #     car_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false
    #     },
    #     truck_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #       dimensions: {
    #         length: 1.0,
    #         height: 1.0,
    #         width: 1.0,
    #         unit: "DimensionUnit"
    #       },
    #       weight: {
    #         total: 1.0,
    #         unit: "VehicleWeightUnit"
    #       }
    #     },
    #     arrival_time: Time.now,
    #     optimize_for: "OptimizationMode",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.calculate_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     legs: [ # required
    #       {
    #         start_position: [1.0], # required
    #         end_position: [1.0], # required
    #         distance: 1.0, # required
    #         duration_seconds: 1.0, # required
    #         geometry: {
    #           line_string: [
    #             [1.0]
    #           ]
    #         },
    #         steps: [ # required
    #           {
    #             start_position: [1.0], # required
    #             end_position: [1.0], # required
    #             distance: 1.0, # required
    #             duration_seconds: 1.0, # required
    #             geometry_offset: 1
    #           }
    #         ]
    #       }
    #     ],
    #     summary: { # required
    #       route_b_box: [1.0], # required
    #       data_source: "String", # required
    #       distance: 1.0, # required
    #       duration_seconds: 1.0, # required
    #       distance_unit: "DistanceUnit", # required
    #     }
    #   }
    # @return [Types::CalculateRouteOutput]
    def calculate_route(params = {}, options = {})
      request = build_request(:calculate_route, params)
      request.send_request(options)
    end

    # <p>
    #             <a href="https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html"> Calculates a route
    #                 matrix</a> given the following required parameters:
    #                 <code>DeparturePositions</code> and <code>DestinationPositions</code>.
    #                 <code>CalculateRouteMatrix</code> calculates routes and returns the travel time and
    #             travel distance from each departure position to each destination position in the
    #             request. For example, given departure positions A and B, and destination positions X and
    #             Y, <code>CalculateRouteMatrix</code> will return time and distance for routes from A to
    #             X, A to Y, B to X, and B to Y (in that order). The number of results returned (and
    #             routes calculated) will be the number of <code>DeparturePositions</code> times the
    #             number of <code>DestinationPositions</code>.</p>
    #          <note>
    #             <p>Your account is charged for each route calculated, not the number of
    #                 requests.</p>
    #          </note>
    #          <p>Requires that you first <a href="https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html">create a
    #                 route calculator resource</a>.</p>
    #          <p>By default, a request that doesn't specify a departure time uses the best time of day
    #             to travel with the best traffic conditions when calculating routes.</p>
    #          <p>Additional options include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/location/previous/developerguide/departure-time.html"> Specifying a
    #                         departure time</a> using either <code>DepartureTime</code> or
    #                         <code>DepartNow</code>. This calculates routes based on predictive traffic
    #                     data at the given time. </p>
    #                <note>
    #                   <p>You can't specify both <code>DepartureTime</code> and
    #                             <code>DepartNow</code> in a single request. Specifying both parameters
    #                         returns a validation error.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/location/previous/developerguide/travel-mode.html">Specifying a travel
    #                         mode</a> using TravelMode sets the transportation mode used to calculate
    #                     the routes. This also lets you specify additional route preferences in
    #                         <code>CarModeOptions</code> if traveling by <code>Car</code>, or
    #                         <code>TruckModeOptions</code> if traveling by <code>Truck</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CalculateRouteMatrixInput] params
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route
    #               matrix. </p>
    # @option params [Array<Array<Float>>] :departure_positions
    #   <p>The list of departure (origin) positions for the route matrix. An array of points,
    #               each of which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-123.115,
    #               49.285]</code>.</p>
    #            <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html#matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #            </important>
    #            <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDeparturePositions</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    # @option params [Array<Array<Float>>] :destination_positions
    #   <p>The list of destination positions for the route matrix. An array of points, each of
    #               which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-122.339,
    #               47.615]</code>
    #            </p>
    #            <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html#matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #            </important>
    #            <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDestinationPositions</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility.</p>
    #            <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #            <ul>
    #               <li>
    #                  <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                  <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>Bicycle</code> or <code>Motorcycle</code> are only valid when using
    #                       <code>Grab</code> as a data provider, and only within Southeast Asia.</p>
    #               <p>
    #                  <code>Truck</code> is not available for Grab.</p>
    #               <p>For more information about using Grab as a data provider, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    #            </note>
    #            <p>Default Value: <code>Car</code>
    #            </p>
    # @option params [Time] :departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route
    #               matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>. If
    #               neither is set, the best time of day to travel with the best traffic conditions is used
    #               to calculate the route matrix.</p>
    #            <note>
    #               <p>Setting a departure time in the past returns a <code>400
    #                       ValidationException</code> error.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate the
    #               route matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>.
    #               If neither is set, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route matrix.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    # @option params [String] :distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    # @option params [Types::CalculateRouteCarModeOptions] :car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    # @option params [Types::CalculateRouteTruckModeOptions] :truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculator_name: "ResourceName", # required
    #     departure_positions: [ # required
    #       [1.0]
    #     ],
    #     destination_positions: [ # required
    #       [1.0]
    #     ],
    #     travel_mode: "TravelMode",
    #     departure_time: Time.now,
    #     depart_now: false,
    #     distance_unit: "DistanceUnit",
    #     car_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false
    #     },
    #     truck_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #       dimensions: {
    #         length: 1.0,
    #         height: 1.0,
    #         width: 1.0,
    #         unit: "DimensionUnit"
    #       },
    #       weight: {
    #         total: 1.0,
    #         unit: "VehicleWeightUnit"
    #       }
    #     },
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.calculate_route_matrix(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_matrix: [ # required
    #       [
    #         {
    #           distance: 1.0,
    #           duration_seconds: 1.0,
    #           error: {
    #             code: "RouteMatrixErrorCode", # required
    #             message: "String"
    #           }
    #         }
    #       ]
    #     ],
    #     snapped_departure_positions: [
    #       [1.0]
    #     ],
    #     snapped_destination_positions: [
    #       [1.0]
    #     ],
    #     summary: { # required
    #       data_source: "String", # required
    #       route_count: 1, # required
    #       error_count: 1, # required
    #       distance_unit: "DistanceUnit", # required
    #     }
    #   }
    # @return [Types::CalculateRouteMatrixOutput]
    def calculate_route_matrix(params = {}, options = {})
      request = build_request(:calculate_route_matrix, params)
      request.send_request(options)
    end

    # <p>Creates a geofence collection, which manages and stores geofences.</p>
    # @param [Hash, Types::CreateGeofenceCollectionInput] params
    # @option params [String] :collection_name
    #   <p>A custom name for the geofence collection.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique geofence collection name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleGeofenceCollection</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :description
    #   <p>An optional description for the geofence collection.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the geofence collection. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    # @option params [String] :kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services KMS customer
    #                   managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.create_geofence_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection_name: "ResourceName", # required
    #     collection_arn: "Arn", # required
    #     create_time: Time.now, # required
    #   }
    # @return [Types::CreateGeofenceCollectionOutput]
    def create_geofence_collection(params = {}, options = {})
      request = build_request(:create_geofence_collection, params)
      request.send_request(options)
    end

    # <p>Creates an API key resource in your Amazon Web Services account, which lets you grant
    #             actions for Amazon Location resources to the API key bearer.</p>
    #          <note>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">Using API keys</a>.</p>
    #          </note>
    # @param [Hash, Types::CreateKeyInput] params
    # @option params [String] :key_name
    #   <p>A custom name for the API key resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique API key name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleAPIKey</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ApiKeyRestrictions] :restrictions
    #   <p>The API key restrictions for the API key resource.</p>
    # @option params [String] :description
    #   <p>An optional description for the API key resource.</p>
    # @option params [Time] :expire_time
    #   <p>The optional timestamp for when the API key resource will expire in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. One of <code>NoExpiry</code> or
    #                   <code>ExpireTime</code> must be set.</p>
    # @option params [Boolean] :no_expiry
    #   <p>Optionally set to <code>true</code> to set no expiration time for the API key. One of
    #                   <code>NoExpiry</code> or <code>ExpireTime</code> must be set.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the map resource. A tag is a key-value pair that helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_name: "ResourceName", # required
    #     restrictions: { # required
    #       allow_actions: ["ApiKeyAction"], # required
    #       allow_resources: ["GeoArnV2"], # required
    #       allow_referers: ["RefererPattern"]
    #     },
    #     description: "ResourceDescription",
    #     expire_time: Time.now,
    #     no_expiry: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: "ApiKey", # required
    #     key_arn: "Arn", # required
    #     key_name: "ResourceName", # required
    #     create_time: Time.now, # required
    #   }
    # @return [Types::CreateKeyOutput]
    def create_key(params = {}, options = {})
      request = build_request(:create_key, params)
      request.send_request(options)
    end

    # <p>Creates a map resource in your Amazon Web Services account, which provides map tiles of different
    #             styles sourced from global location data providers.</p>
    #          <note>
    #             <p>If your application is tracking or routing assets you use in your business, such 
    #                 as delivery vehicles or employees, you must not use Esri as your geolocation 
    #                 provider. See section 82 of the <a href="http://aws.amazon.com/service-terms">Amazon Web Services
    #                     service terms</a> for more details.</p>
    #          </note>
    # @param [Hash, Types::CreateMapInput] params
    # @option params [String] :map_name
    #   <p>The name for the map resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique map resource name. </p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleMap</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::MapConfiguration] :configuration
    #   <p>Specifies the <code>MapConfiguration</code>, including the map style, for the 
    #               map resource that you create. The map style defines the look of maps and the data 
    #               provider for your map resource.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :description
    #   <p>An optional description for the map resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the map resource. A tag is a key-value pair helps manage,
    #               identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length:  256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters: + - = . _ : /
    #                       @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #     configuration: { # required
    #       style: "MapStyle", # required
    #       political_view: "CountryCode3",
    #       custom_layers: ["CustomLayer"]
    #     },
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     map_name: "ResourceName", # required
    #     map_arn: "GeoArn", # required
    #     create_time: Time.now, # required
    #   }
    # @return [Types::CreateMapOutput]
    def create_map(params = {}, options = {})
      request = build_request(:create_map, params)
      request.send_request(options)
    end

    # <p>Creates a place index resource in your Amazon Web Services account. Use a place index resource to
    #             geocode addresses and other text queries by using the
    #                 <code>SearchPlaceIndexForText</code> operation, and reverse geocode coordinates by
    #             using the <code>SearchPlaceIndexForPosition</code> operation, and enable autosuggestions
    #             by using the <code>SearchPlaceIndexForSuggestions</code> operation.</p>
    #          <note>
    #             <p>If your application is tracking or routing assets you use in your business, such 
    #                 as delivery vehicles or employees, you must not use Esri as your geolocation 
    #                 provider. See section 82 of the <a href="http://aws.amazon.com/service-terms">Amazon Web Services
    #                     service terms</a> for more details.</p>
    #          </note>
    # @param [Hash, Types::CreatePlaceIndexInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource. </p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique place index resource name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExamplePlaceIndex</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :data_source
    #   <p>Specifies the geospatial data provider for the new place index.</p>
    #            <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error.</p>
    #            </note>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm">Esri details on geocoding coverage</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code> – Grab provides place index functionality for Southeast 
    #                       Asia. For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a>' coverage, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area">GrabMaps countries and areas covered</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html">HERE details on goecoding coverage</a>.</p>
    #                  <important>
    #                     <p>If you specify HERE Technologies (<code>Here</code>) as the data provider,
    #                           you may not <a href="https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html">store results</a> for locations in Japan. For more information, see
    #                           the <a href="http://aws.amazon.com/service-terms/">Amazon Web Services service
    #                               terms</a> for Amazon Location Service.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #            <p>For additional information , see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service developer guide</i>.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :description
    #   <p>The optional description for the place index resource.</p>
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   <p>Specifies the data storage option requesting Places.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the place index resource. A tag is a key-value pair that
    #               helps you manage, identify, search, and filter your resources.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                  <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @</p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #     data_source: "String", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription",
    #     data_source_configuration: {
    #       intended_use: "IntendedUse"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_place_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_name: "ResourceName", # required
    #     index_arn: "GeoArn", # required
    #     create_time: Time.now, # required
    #   }
    # @return [Types::CreatePlaceIndexOutput]
    def create_place_index(params = {}, options = {})
      request = build_request(:create_place_index, params)
      request.send_request(options)
    end

    # <p>Creates a route calculator resource in your Amazon Web Services account.</p>
    #          <p>You can send requests to a route calculator resource to estimate travel time,
    #             distance, and get directions. A route calculator sources traffic and road network data
    #             from your chosen data provider.</p>
    #          <note>
    #             <p>If your application is tracking or routing assets you use in your business, such 
    #                 as delivery vehicles or employees, you must not use Esri as your geolocation 
    #                 provider. See section 82 of the <a href="http://aws.amazon.com/service-terms">Amazon Web Services
    #                     service terms</a> for more details.</p>
    #          </note>
    # @param [Hash, Types::CreateRouteCalculatorInput] params
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource. </p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-), periods (.),
    #                       and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique Route calculator resource name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleRouteCalculator</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :data_source
    #   <p>Specifies the data provider of traffic and road network data.</p>
    #            <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error.</p>
    #            </note>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm">Esri details on street networks and traffic coverage</a>.</p>
    #                  <p>Route calculators that use Esri as a
    #                       data source only calculate routes that are shorter than 400 km.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code> – Grab provides routing functionality for Southeast Asia.
    #                       For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a>' coverage,
    #                       see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area">GrabMaps
    #                           countries and areas covered</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/car-routing.html">HERE car routing coverage</a> and <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/truck-routing.html">HERE truck routing coverage</a>.</p>
    #               </li>
    #            </ul>
    #            <p>For additional information , see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service Developer Guide</i>.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :description
    #   <p>The optional description for the route calculator resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the route calculator resource. A tag is a key-value pair
    #               helps manage, identify, search, and filter your resources by labelling them.</p>
    #            <ul>
    #               <li>
    #                  <p>For example: { <code>"tag1" : "value1"</code>, <code>"tag2" :
    #                       "value2"</code>}</p>
    #               </li>
    #            </ul>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculator_name: "ResourceName", # required
    #     data_source: "String", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_route_calculator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculator_name: "ResourceName", # required
    #     calculator_arn: "GeoArn", # required
    #     create_time: Time.now, # required
    #   }
    # @return [Types::CreateRouteCalculatorOutput]
    def create_route_calculator(params = {}, options = {})
      request = build_request(:create_route_calculator, params)
      request.send_request(options)
    end

    # <p>Creates a tracker resource in your Amazon Web Services account, which lets you retrieve current and
    #             historical location of devices.</p>
    # @param [Hash, Types::CreateTrackerInput] params
    # @option params [String] :tracker_name
    #   <p>The name for the tracker resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-), periods (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique tracker resource name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleTracker</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #              <code>RequestBasedUsage</code>.</p>
    # @option params [String] :kms_key_id
    #   <p>A key identifier for an 
    #              <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services 
    #                  KMS customer managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN.</p>
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :description
    #   <p>An optional description for the tracker resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the tracker resource. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    # @option params [String] :position_filtering
    #   <p>Specifies the position filtering for the tracker resource.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TimeBased</code> - Location updates are evaluated against linked geofence collections, 
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds, 
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are 
    #                       ignored. Location updates within this area are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This can reduce the effects of GPS noise
    #                       when displaying device trajectories on a map, and can help control your costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #            <p>This field is optional. If not specified, the default value is <code>TimeBased</code>.</p>
    # @option params [Boolean] :event_bridge_enabled
    #   <p>Whether to enable position <code>UPDATE</code> events from this tracker to be sent to 
    #               EventBridge.</p>
    #            <note>
    #               <p>You do not need enable this feature to get <code>ENTER</code> and 
    #                   <code>EXIT</code> events for geofences with this tracker. Those events are
    #                   always sent to EventBridge.</p>
    #            </note>
    # @option params [Boolean] :kms_key_enable_geospatial_queries
    #   <p>Enables <code>GeospatialQueries</code> for a tracker that uses a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services
    #               KMS customer managed key</a>.</p>
    #            <p>This parameter is only used if you are using a KMS customer managed key.</p>
    #            <note>
    #               <p>If you wish to encrypt your data using your own KMS customer managed key, then the Bounding Polygon Queries feature will be disabled by default. 
    #                   This is because by using this feature, a representation of your device positions will not be encrypted using the your KMS managed key. The exact device position, however; is still encrypted using your managed key.</p>
    #               <p>You can choose to opt-in to the Bounding Polygon Quseries feature. This is done by setting the <code>KmsKeyEnableGeospatialQueries</code> parameter to 
    #                   true when creating or updating a Tracker.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     kms_key_id: "KmsKeyId",
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     position_filtering: "PositionFiltering",
    #     event_bridge_enabled: false,
    #     kms_key_enable_geospatial_queries: false
    #   }
    #   options = {}
    #   response = client.create_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tracker_name: "ResourceName", # required
    #     tracker_arn: "Arn", # required
    #     create_time: Time.now, # required
    #   }
    # @return [Types::CreateTrackerOutput]
    def create_tracker(params = {}, options = {})
      request = build_request(:create_tracker, params)
      request.send_request(options)
    end

    # <p>Deletes a geofence collection from your Amazon Web Services account.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently. If the geofence collection is the
    #                 target of a tracker resource, the devices will no longer be monitored.</p>
    #          </note>
    # @param [Hash, Types::DeleteGeofenceCollectionInput] params
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_geofence_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGeofenceCollectionOutput]
    def delete_geofence_collection(params = {}, options = {})
      request = build_request(:delete_geofence_collection, params)
      request.send_request(options)
    end

    # <p>Deletes the specified API key. The API key must have been deactivated more than
    #             90 days previously.</p>
    # @param [Hash, Types::DeleteKeyInput] params
    # @option params [String] :key_name
    #   <p>The name of the API key to delete.</p>
    # @option params [Boolean] :force_delete
    #   <p>ForceDelete bypasses an API key's expiry conditions and deletes the key. Set the parameter <code>true</code> to delete the key or to <code>false</code> to not preemptively delete the API key.</p>
    #            <p>Valid values: <code>true</code>, or <code>false</code>.</p>
    #            <p>Required: No</p>
    #            <note>
    #               <p>This action is irreversible. Only use ForceDelete if you are certain the key is no longer in use.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_name: "ResourceName", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKeyOutput]
    def delete_key(params = {}, options = {})
      request = build_request(:delete_key, params)
      request.send_request(options)
    end

    # <p>Deletes a map resource from your Amazon Web Services account.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently. If the map is being used in an application,
    #                 the map may not render.</p>
    #          </note>
    # @param [Hash, Types::DeleteMapInput] params
    # @option params [String] :map_name
    #   <p>The name of the map resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMapOutput]
    def delete_map(params = {}, options = {})
      request = build_request(:delete_map, params)
      request.send_request(options)
    end

    # <p>Deletes a place index resource from your Amazon Web Services account.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently.</p>
    #          </note>
    # @param [Hash, Types::DeletePlaceIndexInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_place_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePlaceIndexOutput]
    def delete_place_index(params = {}, options = {})
      request = build_request(:delete_place_index, params)
      request.send_request(options)
    end

    # <p>Deletes a route calculator resource from your Amazon Web Services account.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently.</p>
    #          </note>
    # @param [Hash, Types::DeleteRouteCalculatorInput] params
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculator_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_route_calculator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRouteCalculatorOutput]
    def delete_route_calculator(params = {}, options = {})
      request = build_request(:delete_route_calculator, params)
      request.send_request(options)
    end

    # <p>Deletes a tracker resource from your Amazon Web Services account.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently. If the tracker resource is in use, you may
    #                 encounter an error. Make sure that the target resource isn't a dependency for your
    #                 applications.</p>
    #          </note>
    # @param [Hash, Types::DeleteTrackerInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrackerOutput]
    def delete_tracker(params = {}, options = {})
      request = build_request(:delete_tracker, params)
      request.send_request(options)
    end

    # <p>Retrieves the geofence collection details.</p>
    # @param [Hash, Types::DescribeGeofenceCollectionInput] params
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_geofence_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection_name: "ResourceName", # required
    #     collection_arn: "Arn", # required
    #     description: "ResourceDescription", # required
    #     pricing_plan: "PricingPlan",
    #     pricing_plan_data_source: "String",
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     geofence_count: 1
    #   }
    # @return [Types::DescribeGeofenceCollectionOutput]
    def describe_geofence_collection(params = {}, options = {})
      request = build_request(:describe_geofence_collection, params)
      request.send_request(options)
    end

    # <p>Retrieves the API key resource details.</p>
    # @param [Hash, Types::DescribeKeyInput] params
    # @option params [String] :key_name
    #   <p>The name of the API key resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: "ApiKey", # required
    #     key_arn: "Arn", # required
    #     key_name: "ResourceName", # required
    #     restrictions: { # required
    #       allow_actions: ["ApiKeyAction"], # required
    #       allow_resources: ["GeoArnV2"], # required
    #       allow_referers: ["RefererPattern"]
    #     },
    #     create_time: Time.now, # required
    #     expire_time: Time.now, # required
    #     update_time: Time.now, # required
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeKeyOutput]
    def describe_key(params = {}, options = {})
      request = build_request(:describe_key, params)
      request.send_request(options)
    end

    # <p>Retrieves the map resource details.</p>
    # @param [Hash, Types::DescribeMapInput] params
    # @option params [String] :map_name
    #   <p>The name of the map resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     map_name: "ResourceName", # required
    #     map_arn: "GeoArn", # required
    #     pricing_plan: "PricingPlan",
    #     data_source: "String", # required
    #     configuration: { # required
    #       style: "MapStyle", # required
    #       political_view: "CountryCode3",
    #       custom_layers: ["CustomLayer"]
    #     },
    #     description: "ResourceDescription", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::DescribeMapOutput]
    def describe_map(params = {}, options = {})
      request = build_request(:describe_map, params)
      request.send_request(options)
    end

    # <p>Retrieves the place index resource details.</p>
    # @param [Hash, Types::DescribePlaceIndexInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_place_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_name: "ResourceName", # required
    #     index_arn: "GeoArn", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription", # required
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     data_source: "String", # required
    #     data_source_configuration: { # required
    #       intended_use: "IntendedUse"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribePlaceIndexOutput]
    def describe_place_index(params = {}, options = {})
      request = build_request(:describe_place_index, params)
      request.send_request(options)
    end

    # <p>Retrieves the route calculator resource details.</p>
    # @param [Hash, Types::DescribeRouteCalculatorInput] params
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculator_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_route_calculator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculator_name: "ResourceName", # required
    #     calculator_arn: "GeoArn", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription", # required
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     data_source: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeRouteCalculatorOutput]
    def describe_route_calculator(params = {}, options = {})
      request = build_request(:describe_route_calculator, params)
      request.send_request(options)
    end

    # <p>Retrieves the tracker resource details.</p>
    # @param [Hash, Types::DescribeTrackerInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tracker_name: "ResourceName", # required
    #     tracker_arn: "Arn", # required
    #     description: "ResourceDescription", # required
    #     pricing_plan: "PricingPlan",
    #     pricing_plan_data_source: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     kms_key_id: "KmsKeyId",
    #     position_filtering: "PositionFiltering",
    #     event_bridge_enabled: false,
    #     kms_key_enable_geospatial_queries: false
    #   }
    # @return [Types::DescribeTrackerOutput]
    def describe_tracker(params = {}, options = {})
      request = build_request(:describe_tracker, params)
      request.send_request(options)
    end

    # <p>Removes the association between a tracker resource and a geofence collection.</p>
    #          <note>
    #             <p>Once you unlink a tracker resource from a geofence collection, the tracker
    #                 positions will no longer be automatically evaluated against geofences.</p>
    #          </note>
    # @param [Hash, Types::DisassociateTrackerConsumerInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be dissociated from the consumer.</p>
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be disassociated from
    #               the tracker resource. Used when you need to specify a resource across all Amazon Web Services. </p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     consumer_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_tracker_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateTrackerConsumerOutput]
    def disassociate_tracker_consumer(params = {}, options = {})
      request = build_request(:disassociate_tracker_consumer, params)
      request.send_request(options)
    end

    # <p>This action forecasts future geofence events that are likely to occur within a
    #             specified time horizon if a device continues moving at its current speed. Each
    #             forecasted event is associated with a geofence from a provided geofence collection. A
    #             forecast event can have one of the following states:</p>
    #          <p>
    #             <code>ENTER</code>: The device position is outside the referenced geofence, but the
    #             device may cross into the geofence during the forecasting time horizon if it maintains
    #             its current speed.</p>
    #          <p>
    #             <code>EXIT</code>: The device position is inside the referenced geofence, but the
    #             device may leave the geofence during the forecasted time horizon if the device maintains
    #             it's current speed.</p>
    #          <p>
    #             <code>IDLE</code>:The device is inside the geofence, and it will remain inside the
    #             geofence through the end of the time horizon if the device maintains it's current
    #             speed.</p>
    #          <note>
    #             <p>Heading direction is not considered in the current version. The API takes a
    #                 conservative approach and includes events that can occur for any heading.</p>
    #          </note>
    # @param [Hash, Types::ForecastGeofenceEventsRequest] params
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection.</p>
    # @option params [Types::ForecastGeofenceEventsDeviceState] :device_state
    #   <p>Represents the device's state, including its current position and speed. When speed is
    #               omitted, this API performs a <i>containment check</i>. The
    #                   <i>containment check</i> operation returns <code>IDLE</code> events
    #               for geofences where the device is currently inside of, but no other events.</p>
    # @option params [Float] :time_horizon_minutes
    #   <p>The forward-looking time window for forecasting, specified in minutes. The API only
    #               returns events that are predicted to occur within this time horizon. When no value is
    #               specified, this API performs a <i>containment check</i>. The
    #                   <i>containment check</i> operation returns <code>IDLE</code> events
    #               for geofences where the device is currently inside of, but no other events.</p>
    # @option params [String] :distance_unit
    #   <p>The distance unit used for the <code>NearestDistance</code> property returned in a
    #               forecasted event. The measurement system must match for <code>DistanceUnit</code> and
    #                   <code>SpeedUnit</code>; if <code>Kilometers</code> is specified for
    #                   <code>DistanceUnit</code>, then <code>SpeedUnit</code> must be
    #                   <code>KilometersPerHour</code>. </p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    # @option params [String] :speed_unit
    #   <p>The speed unit for the device captured by the device state. The measurement system
    #               must match for <code>DistanceUnit</code> and <code>SpeedUnit</code>; if
    #                   <code>Kilometers</code> is specified for <code>DistanceUnit</code>, then
    #                   <code>SpeedUnit</code> must be <code>KilometersPerHour</code>.</p>
    #            <p>Default Value: <code>KilometersPerHour</code>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call.</p>
    #            <p>Default value: <code>20</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     device_state: { # required
    #       position: [1.0], # required
    #       speed: 1.0
    #     },
    #     time_horizon_minutes: 1.0,
    #     distance_unit: "DistanceUnit",
    #     speed_unit: "SpeedUnit",
    #     next_token: "LargeToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.forecast_geofence_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecasted_events: [ # required
    #       {
    #         event_id: "Uuid", # required
    #         geofence_id: "Id", # required
    #         is_device_in_geofence: false, # required
    #         nearest_distance: 1.0, # required
    #         event_type: "ForecastedGeofenceEventType", # required
    #         forecasted_breach_time: Time.now,
    #         geofence_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "LargeToken",
    #     distance_unit: "DistanceUnit", # required
    #     speed_unit: "SpeedUnit", # required
    #   }
    # @return [Types::ForecastGeofenceEventsResponse]
    def forecast_geofence_events(params = {}, options = {})
      request = build_request(:forecast_geofence_events, params)
      request.send_request(options)
    end

    # <p>Retrieves a device's most recent position according to its sample time.</p>
    #          <note>
    #             <p>Device positions are deleted after 30 days.</p>
    #          </note>
    # @param [Hash, Types::GetDevicePositionInput] params
    # @option params [String] :tracker_name
    #   <p>The tracker resource receiving the position update.</p>
    # @option params [String] :device_id
    #   <p>The device whose position you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     device_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_device_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_id: "Id",
    #     sample_time: Time.now, # required
    #     received_time: Time.now, # required
    #     position: [1.0], # required
    #     accuracy: {
    #       horizontal: 1.0, # required
    #     },
    #     position_properties: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetDevicePositionOutput]
    def get_device_position(params = {}, options = {})
      request = build_request(:get_device_position, params)
      request.send_request(options)
    end

    # <p>Retrieves the device position history from a tracker resource within a specified range
    #             of time.</p>
    #          <note>
    #             <p>Device positions are deleted after 30 days.</p>
    #          </note>
    # @param [Hash, Types::GetDevicePositionHistoryInput] params
    # @option params [String] :tracker_name
    #   <p>The tracker resource receiving the request for the device position history.</p>
    # @option params [String] :device_id
    #   <p>The device whose position history you want to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @option params [Time] :start_time_inclusive
    #   <p>Specify the start time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be 24 hours
    #               prior to the time that the request is made.</p>
    #            <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>StartTimeInclusive</code> must be before
    #                           <code>EndTimeExclusive</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :end_time_exclusive
    #   <p>Specify the end time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be the time
    #               that the request is made.</p>
    #            <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>EndTimeExclusive</code> must be after the time for
    #                           <code>StartTimeInclusive</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of device positions returned in a single call.</p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     device_id: "Id", # required
    #     next_token: "Token",
    #     start_time_inclusive: Time.now,
    #     end_time_exclusive: Time.now,
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_device_position_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_positions: [ # required
    #       {
    #         device_id: "Id",
    #         sample_time: Time.now, # required
    #         received_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetDevicePositionHistoryOutput]
    def get_device_position_history(params = {}, options = {})
      request = build_request(:get_device_position_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the geofence details from a geofence collection.</p>
    #          <note>
    #             <p>The returned geometry will always match the geometry format used when the geofence
    #                 was created.</p>
    #          </note>
    # @param [Hash, Types::GetGeofenceInput] params
    # @option params [String] :collection_name
    #   <p>The geofence collection storing the target geofence.</p>
    # @option params [String] :geofence_id
    #   <p>The geofence you're retrieving details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     geofence_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_geofence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geofence_id: "Id", # required
    #     geometry: { # required
    #       polygon: [
    #         [
    #           [1.0]
    #         ]
    #       ],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1.0, # required
    #       },
    #       geobuf: "data",
    #       multi_polygon: [
    #         [
    #           [
    #             [1.0]
    #           ]
    #         ]
    #       ]
    #     },
    #     status: "String", # required
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     geofence_properties: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetGeofenceOutput]
    def get_geofence(params = {}, options = {})
      request = build_request(:get_geofence, params)
      request.send_request(options)
    end

    # <p>Retrieves glyphs used to display labels on a map.</p>
    # @param [Hash, Types::GetMapGlyphsInput] params
    # @option params [String] :map_name
    #   <p>The map resource associated with the glyph ﬁle.</p>
    # @option params [String] :font_stack
    #   <p>A comma-separated list of fonts to load glyphs from in order of preference. For
    #               example, <code>Noto Sans Regular, Arial Unicode</code>.</p>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri</a> styles: </p>
    #            <ul>
    #               <li>
    #                  <p>VectorEsriDarkGrayCanvas – <code>Ubuntu Medium Italic</code> | <code>Ubuntu
    #                           Medium</code> | <code>Ubuntu Italic</code> | <code>Ubuntu Regular</code> |
    #                           <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriLightGrayCanvas – <code>Ubuntu Italic</code> | <code>Ubuntu
    #                           Regular</code> | <code>Ubuntu Light</code> | <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriTopographic – <code>Noto Sans Italic</code> | <code>Noto Sans
    #                           Regular</code> | <code>Noto Sans Bold</code> | <code>Noto Serif
    #                           Regular</code> | <code>Roboto Condensed Light Italic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriStreets – <code>Arial Regular</code> | <code>Arial Italic</code> |
    #                           <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriNavigation – <code>Arial Regular</code> | <code>Arial Italic</code>
    #                       | <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE Technologies</a> styles:</p>
    #            <ul>
    #               <li>
    #                  <p>VectorHereContrast – <code>Fira 
    #                       GO Regular</code> | <code>Fira GO Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorHereExplore, VectorHereExploreTruck, HybridHereExploreSatellite – 
    #                       <code>Fira GO Italic</code> | <code>Fira GO Map</code> | 
    #                       <code>Fira GO Map Bold</code> | <code>Noto Sans CJK JP Bold</code> | 
    #                       <code>Noto Sans CJK JP Light</code> | 
    #                       <code>Noto Sans CJK JP Regular</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a> styles:</p>
    #            <ul>
    #               <li>
    #                  <p>VectorGrabStandardLight, VectorGrabStandardDark – 
    #                       <code>Noto Sans Regular</code> |
    #                       <code>Noto Sans Medium</code> |
    #                       <code>Noto Sans Bold</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/open-data.html">Open Data</a> styles:</p>
    #            <ul>
    #               <li>
    #                  <p>VectorOpenDataStandardLight, VectorOpenDataStandardDark,
    #                       VectorOpenDataVisualizationLight, VectorOpenDataVisualizationDark – 
    #                       <code>Amazon Ember Regular,Noto Sans Regular</code> |
    #                       <code>Amazon Ember Bold,Noto Sans Bold</code> | 
    #                       <code>Amazon Ember Medium,Noto Sans Medium</code> |
    #                       <code>Amazon Ember Regular Italic,Noto Sans Italic</code> | 
    #                       <code>Amazon Ember Condensed RC Regular,Noto Sans Regular</code> | 
    #                       <code>Amazon Ember Condensed RC Bold,Noto Sans Bold</code> |
    #                       <code>Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular</code> |
    #                       <code>Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic 
    #                           Condensed Bold</code> |
    #                       <code>Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold</code> |
    #                       <code>Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic 
    #                           Regular</code> |
    #                       <code>Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic 
    #                           Condensed Regular</code> |
    #                       <code>Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The fonts used by the Open Data map styles are combined fonts
    #                   that use <code>Amazon Ember</code> for most glyphs but <code>Noto Sans</code> 
    #                   for glyphs unsupported by <code>Amazon Ember</code>.</p>
    #            </note>
    # @option params [String] :font_unicode_range
    #   <p>A Unicode range of characters to download glyphs for. Each response will contain 256
    #               characters. For example, 0–255 includes all characters from range <code>U+0000</code> to
    #                   <code>00FF</code>. Must be aligned to multiples of 256.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #     font_stack: "String", # required
    #     font_unicode_range: "String", # required
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_map_glyphs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String"
    #   }
    # @return [Types::GetMapGlyphsOutput]
    def get_map_glyphs(params = {}, options = {})
      request = build_request(:get_map_glyphs, params)
      request.send_request(options)
    end

    # <p>Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is a PNG
    #             image paired with a JSON document describing the offsets of individual icons that will
    #             be displayed on a rendered map.</p>
    # @param [Hash, Types::GetMapSpritesInput] params
    # @option params [String] :map_name
    #   <p>The map resource associated with the sprite ﬁle.</p>
    # @option params [String] :file_name
    #   <p>The name of the sprite ﬁle. Use the following ﬁle names for the sprite sheet:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.png</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.png</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #            <p>For the JSON document containing image offsets. Use the following ﬁle names:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.json</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.json</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #     file_name: "String", # required
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_map_sprites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String"
    #   }
    # @return [Types::GetMapSpritesOutput]
    def get_map_sprites(params = {}, options = {})
      request = build_request(:get_map_sprites, params)
      request.send_request(options)
    end

    # <p>Retrieves the map style descriptor from a map resource. </p>
    #          <p>The style descriptor contains speciﬁcations on how features render on a map. For
    #             example, what data to display, what order to display the data in, and the style for the
    #             data. Style descriptors follow the Mapbox Style Specification.</p>
    # @param [Hash, Types::GetMapStyleDescriptorInput] params
    # @option params [String] :map_name
    #   <p>The map resource to retrieve the style descriptor from.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_map_style_descriptor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String"
    #   }
    # @return [Types::GetMapStyleDescriptorOutput]
    def get_map_style_descriptor(params = {}, options = {})
      request = build_request(:get_map_style_descriptor, params)
      request.send_request(options)
    end

    # <p>Retrieves a vector data tile from the map resource. Map tiles are used by clients to
    #             render a map. they're addressed using a grid arrangement with an X coordinate, Y
    #             coordinate, and Z (zoom) level. </p>
    #          <p>The origin (0, 0) is the top left of the map. Increasing the zoom level by 1 doubles
    #             both the X and Y dimensions, so a tile containing data for the entire world at (0/0/0)
    #             will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).</p>
    # @param [Hash, Types::GetMapTileInput] params
    # @option params [String] :map_name
    #   <p>The map resource to retrieve the map tiles from.</p>
    # @option params [String] :z
    #   <p>The zoom value for the map tile.</p>
    # @option params [String] :x
    #   <p>The X axis value for the map tile.</p>
    # @option params [String] :y
    #   <p>The Y axis value for the map tile. </p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #     z: "String", # required
    #     x: "String", # required
    #     y: "String", # required
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_map_tile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String"
    #   }
    # @return [Types::GetMapTileOutput]
    def get_map_tile(params = {}, options = {})
      request = build_request(:get_map_tile, params)
      request.send_request(options)
    end

    # <p>Finds a place by its unique ID. A <code>PlaceId</code> is returned by other search
    #             operations.</p>
    #          <note>
    #             <p>A PlaceId is valid only if all of the following are the same in the original
    #                 search request and the call to <code>GetPlace</code>.</p>
    #             <ul>
    #                <li>
    #                   <p>Customer Amazon Web Services account</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services Region</p>
    #                </li>
    #                <li>
    #                   <p>Data provider specified in the place index resource</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <note>
    #             <p>If your Place index resource is configured with Grab as your geolocation 
    #                 provider and Storage as Intended use, the GetPlace operation is unavailable. For 
    #                 more information, see <a href="http://aws.amazon.com/service-terms">AWS service 
    #                     terms</a>.</p>
    #          </note>
    # @param [Hash, Types::GetPlaceInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource that you want to use for the search.</p>
    # @option params [String] :place_id
    #   <p>The identifier of the place to find.</p>
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for a location around Athens,
    #               Greece, with the <code>language</code> parameter set to <code>en</code>. The
    #                   <code>city</code> in the results will most likely be returned as
    #               <code>Athens</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #                   <code>city</code> in the results will more likely be returned as
    #               <code>Αθήνα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #     place_id: "PlaceId", # required
    #     language: "LanguageTag",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_place(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     place: { # required
    #       label: "String",
    #       geometry: { # required
    #         point: [1.0]
    #       },
    #       address_number: "String",
    #       street: "String",
    #       neighborhood: "String",
    #       municipality: "String",
    #       sub_region: "String",
    #       region: "String",
    #       country: "String",
    #       postal_code: "String",
    #       interpolated: false,
    #       time_zone: {
    #         name: "String", # required
    #         offset: 1
    #       },
    #       unit_type: "String",
    #       unit_number: "String",
    #       categories: ["PlaceCategory"],
    #       supplemental_categories: ["PlaceSupplementalCategory"],
    #       sub_municipality: "String"
    #     }
    #   }
    # @return [Types::GetPlaceOutput]
    def get_place(params = {}, options = {})
      request = build_request(:get_place, params)
      request.send_request(options)
    end

    # <p>A batch request to retrieve all device positions.</p>
    # @param [Hash, Types::ListDevicePositionsInput] params
    # @option params [String] :tracker_name
    #   <p>The tracker resource containing the requested devices.</p>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of entries returned in a single call.</p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @option params [Types::TrackingFilterGeometry] :filter_geometry
    #   <p>The geometry used to filter device positions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter_geometry: {
    #       polygon: [
    #         [
    #           [1.0]
    #         ]
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_device_positions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListDevicePositionsOutput]
    def list_device_positions(params = {}, options = {})
      request = build_request(:list_device_positions, params)
      request.send_request(options)
    end

    # <p>Lists geofence collections in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListGeofenceCollectionsInput] params
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_geofence_collections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         collection_name: "ResourceName", # required
    #         description: "ResourceDescription", # required
    #         pricing_plan: "PricingPlan",
    #         pricing_plan_data_source: "String",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListGeofenceCollectionsOutput]
    def list_geofence_collections(params = {}, options = {})
      request = build_request(:list_geofence_collections, params)
      request.send_request(options)
    end

    # <p>Lists geofences stored in a given geofence collection.</p>
    # @param [Hash, Types::ListGeofencesInput] params
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection storing the list of geofences.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of geofences returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     next_token: "LargeToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_geofences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         geometry: { # required
    #           polygon: [
    #             [
    #               [1.0]
    #             ]
    #           ],
    #           circle: {
    #             center: [1.0], # required
    #             radius: 1.0, # required
    #           },
    #           geobuf: "data",
    #           multi_polygon: [
    #             [
    #               [
    #                 [1.0]
    #               ]
    #             ]
    #           ]
    #         },
    #         status: "String", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         geofence_properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "LargeToken"
    #   }
    # @return [Types::ListGeofencesOutput]
    def list_geofences(params = {}, options = {})
      request = build_request(:list_geofences, params)
      request.send_request(options)
    end

    # <p>Lists API key resources in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListKeysInput] params
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @option params [Types::ApiKeyFilter] :filter
    #   <p>Optionally filter the list to only <code>Active</code> or <code>Expired</code> API
    #               keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       key_status: "Status"
    #     }
    #   }
    #   options = {}
    #   response = client.list_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         key_name: "ResourceName", # required
    #         expire_time: Time.now, # required
    #         description: "ResourceDescription",
    #         restrictions: { # required
    #           allow_actions: ["ApiKeyAction"], # required
    #           allow_resources: ["GeoArnV2"], # required
    #           allow_referers: ["RefererPattern"]
    #         },
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListKeysOutput]
    def list_keys(params = {}, options = {})
      request = build_request(:list_keys, params)
      request.send_request(options)
    end

    # <p>Lists map resources in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListMapsInput] params
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_maps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         map_name: "ResourceName", # required
    #         description: "ResourceDescription", # required
    #         data_source: "String", # required
    #         pricing_plan: "PricingPlan",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListMapsOutput]
    def list_maps(params = {}, options = {})
      request = build_request(:list_maps, params)
      request.send_request(options)
    end

    # <p>Lists place index resources in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListPlaceIndexesInput] params
    # @option params [Integer] :max_results
    #   <p>An optional limit for the maximum number of results returned in a single call.</p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_place_indexes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         index_name: "ResourceName", # required
    #         description: "ResourceDescription", # required
    #         data_source: "String", # required
    #         pricing_plan: "PricingPlan",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPlaceIndexesOutput]
    def list_place_indexes(params = {}, options = {})
      request = build_request(:list_place_indexes, params)
      request.send_request(options)
    end

    # <p>Lists route calculator resources in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListRouteCalculatorsInput] params
    # @option params [Integer] :max_results
    #   <p>An optional maximum number of results returned in a single call.</p>
    #            <p>Default Value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default Value: <code>null</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_route_calculators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         calculator_name: "ResourceName", # required
    #         description: "ResourceDescription", # required
    #         data_source: "String", # required
    #         pricing_plan: "PricingPlan",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListRouteCalculatorsOutput]
    def list_route_calculators(params = {}, options = {})
      request = build_request(:list_route_calculators, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags that are applied to the specified Amazon Location resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists geofence collections currently associated to the given tracker resource.</p>
    # @param [Hash, Types::ListTrackerConsumersInput] params
    # @option params [String] :tracker_name
    #   <p>The tracker resource whose associated geofence collections you want to list.</p>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_tracker_consumers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumer_arns: ["Arn"], # required
    #     next_token: "Token"
    #   }
    # @return [Types::ListTrackerConsumersOutput]
    def list_tracker_consumers(params = {}, options = {})
      request = build_request(:list_tracker_consumers, params)
      request.send_request(options)
    end

    # <p>Lists tracker resources in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListTrackersInput] params
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_trackers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [ # required
    #       {
    #         tracker_name: "ResourceName", # required
    #         description: "ResourceDescription", # required
    #         pricing_plan: "PricingPlan",
    #         pricing_plan_data_source: "String",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListTrackersOutput]
    def list_trackers(params = {}, options = {})
      request = build_request(:list_trackers, params)
      request.send_request(options)
    end

    # <p>Stores a geofence geometry in a given geofence collection, or updates the geometry of
    #             an existing geofence if a geofence ID is included in the request. </p>
    # @param [Hash, Types::PutGeofenceInput] params
    # @option params [String] :collection_name
    #   <p>The geofence collection to store the geofence in.</p>
    # @option params [String] :geofence_id
    #   <p>An identifier for the geofence. For example, <code>ExampleGeofence-1</code>.</p>
    # @option params [Types::GeofenceGeometry] :geometry
    #   <p>Contains the details to specify the position of the geofence. Can be a circle, a
    #               polygon, or a multipolygon. <code>Polygon</code> and <code>MultiPolygon</code>
    #               geometries can be defined using their respective parameters, or encoded in Geobuf format
    #               using the <code>Geobuf</code> parameter. Including multiple geometry types in the same
    #               request will return a validation error.</p>
    #            <note>
    #               <p>The geofence <code>Polygon</code> and <code>MultiPolygon</code> formats support a
    #                   maximum of 1,000 total vertices. The <code>Geobuf</code> format supports a maximum
    #                   of 100,000 vertices.</p>
    #            </note>
    # @option params [Hash<String, String>] :geofence_properties
    #   <p>Associates one of more properties with the geofence. A property is a key-value pair
    #               stored with the geofence and added to any geofence event triggered with that
    #               geofence.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     geofence_id: "Id", # required
    #     geometry: { # required
    #       polygon: [
    #         [
    #           [1.0]
    #         ]
    #       ],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1.0, # required
    #       },
    #       geobuf: "data",
    #       multi_polygon: [
    #         [
    #           [
    #             [1.0]
    #           ]
    #         ]
    #       ]
    #     },
    #     geofence_properties: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.put_geofence(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geofence_id: "Id", # required
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::PutGeofenceOutput]
    def put_geofence(params = {}, options = {})
      request = build_request(:put_geofence, params)
      request.send_request(options)
    end

    # <p>Reverse geocodes a given coordinate and returns a legible address. Allows you to
    #             search for Places or points of interest near a given position.</p>
    # @param [Hash, Types::SearchPlaceIndexForPositionInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    # @option params [Array<Float>] :position
    #   <p>Specifies the longitude and latitude of the position to query.</p>
    #            <p> This parameter must contain a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents a position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter. The maximum number of results returned per request.</p>
    #            <p>Default value: <code>50</code>
    #            </p>
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for a location around Athens,
    #               Greece, with the <code>language</code> parameter set to <code>en</code>. The
    #                   <code>city</code> in the results will most likely be returned as
    #               <code>Athens</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #                   <code>city</code> in the results will more likely be returned as
    #               <code>Αθήνα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #     position: [1.0], # required
    #     max_results: 1,
    #     language: "LanguageTag",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.search_place_index_for_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: { # required
    #       position: [1.0], # required
    #       max_results: 1,
    #       data_source: "String", # required
    #       language: "LanguageTag"
    #     },
    #     results: [ # required
    #       {
    #         place: { # required
    #           label: "String",
    #           geometry: { # required
    #             point: [1.0]
    #           },
    #           address_number: "String",
    #           street: "String",
    #           neighborhood: "String",
    #           municipality: "String",
    #           sub_region: "String",
    #           region: "String",
    #           country: "String",
    #           postal_code: "String",
    #           interpolated: false,
    #           time_zone: {
    #             name: "String", # required
    #             offset: 1
    #           },
    #           unit_type: "String",
    #           unit_number: "String",
    #           categories: ["PlaceCategory"],
    #           supplemental_categories: ["PlaceSupplementalCategory"],
    #           sub_municipality: "String"
    #         },
    #         distance: 1.0, # required
    #         place_id: "PlaceId"
    #       }
    #     ]
    #   }
    # @return [Types::SearchPlaceIndexForPositionOutput]
    def search_place_index_for_position(params = {}, options = {})
      request = build_request(:search_place_index_for_position, params)
      request.send_request(options)
    end

    # <p>Generates suggestions for addresses and points of interest based on partial or
    #             misspelled free-form text. This operation is also known as autocomplete, autosuggest, or
    #             fuzzy matching.</p>
    #          <p>Optional parameters let you narrow your search results by bounding box or country, or
    #             bias your search toward a specific position on the globe.</p>
    #          <note>
    #             <p>You can search for suggested place names near a specified position by using
    #                     <code>BiasPosition</code>, or filter results within a bounding box by using
    #                     <code>FilterBBox</code>. These parameters are mutually exclusive; using both
    #                     <code>BiasPosition</code> and <code>FilterBBox</code> in the same command
    #                 returns an error.</p>
    #          </note>
    # @param [Hash, Types::SearchPlaceIndexForSuggestionsInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    # @option params [String] :text
    #   <p>The free-form partial text to use to generate place suggestions. For example,
    #                   <code>eiffel tow</code>.</p>
    # @option params [Array<Float>] :bias_position
    #   <p>An optional parameter that indicates a preference for place suggestions that are
    #               closer to a specified position.</p>
    #            <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #            <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    # @option params [Array<Float>] :filter_b_box
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within a specified bounding box.</p>
    #            <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #            <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #            <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    # @option params [Array<String>] :filter_countries
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within the provided list of countries.</p>
    #            <ul>
    #               <li>
    #                  <p>Use the <a href="https://www.iso.org/iso-3166-country-codes.html">ISO
    #                           3166</a> 3-digit country code. For example, Australia uses three
    #                       upper-case characters: <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #            <p>The default: <code>5</code>
    #            </p>
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results. If no language is specified,
    #               or not supported for a particular result, the partner automatically chooses a language
    #               for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for <code>Athens, Gr</code>
    #               to get suggestions with the <code>language</code> parameter set to <code>en</code>. The
    #               results found will most likely be returned as <code>Athens, Greece</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα, Ελλάδα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    # @option params [Array<String>] :filter_categories
    #   <p>A list of one or more Amazon Location categories to filter the returned places. If you 
    #               include more than one category, the results will include results that match 
    #               <i>any</i> of the categories listed.</p>
    #            <p>For more information about using categories, including a list of Amazon Location
    #               categories, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html">Categories and filtering</a>, in the <i>Amazon Location Service developer 
    #                       guide</i>.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #     text: "SensitiveString", # required
    #     bias_position: [1.0],
    #     filter_b_box: [1.0],
    #     filter_countries: ["CountryCode3"],
    #     max_results: 1,
    #     language: "LanguageTag",
    #     filter_categories: ["PlaceCategory"],
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.search_place_index_for_suggestions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: { # required
    #       text: "SensitiveString", # required
    #       bias_position: [1.0],
    #       filter_b_box: [1.0],
    #       filter_countries: ["CountryCode3"],
    #       max_results: 1,
    #       data_source: "String", # required
    #       language: "LanguageTag",
    #       filter_categories: ["PlaceCategory"]
    #     },
    #     results: [ # required
    #       {
    #         text: "String", # required
    #         place_id: "PlaceId",
    #         categories: ["PlaceCategory"],
    #         supplemental_categories: ["PlaceSupplementalCategory"]
    #       }
    #     ]
    #   }
    # @return [Types::SearchPlaceIndexForSuggestionsOutput]
    def search_place_index_for_suggestions(params = {}, options = {})
      request = build_request(:search_place_index_for_suggestions, params)
      request.send_request(options)
    end

    # <p>Geocodes free-form text, such as an address, name, city, or region to allow you to
    #             search for Places or points of interest. </p>
    #          <p>Optional parameters let you narrow your search results by bounding box or country, or
    #             bias your search toward a specific position on the globe.</p>
    #          <note>
    #             <p>You can search for places near a given position using <code>BiasPosition</code>,
    #                 or filter results within a bounding box using <code>FilterBBox</code>. Providing
    #                 both parameters simultaneously returns an error.</p>
    #          </note>
    #          <p>Search results are returned in order of highest to lowest relevance.</p>
    # @param [Hash, Types::SearchPlaceIndexForTextInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    # @option params [String] :text
    #   <p>The address, name, city, or region to be used in the search in free-form text format.
    #               For example, <code>123 Any Street</code>.</p>
    # @option params [Array<Float>] :bias_position
    #   <p>An optional parameter that indicates a preference for places that are closer to a
    #               specified position.</p>
    #            <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #            <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    # @option params [Array<Float>] :filter_b_box
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               within the provided bounding box.</p>
    #            <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #            <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #            <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    # @option params [Array<String>] :filter_countries
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               in a specified list of countries.</p>
    #            <ul>
    #               <li>
    #                  <p>Valid values include <a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a>
    #                       3-digit country codes. For example, Australia uses three upper-case characters:
    #                           <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #            <p>The default: <code>50</code>
    #            </p>
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for <code>Athens,
    #                   Greece</code>, with the <code>language</code> parameter set to <code>en</code>. The
    #               result found will most likely be returned as <code>Athens</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    # @option params [Array<String>] :filter_categories
    #   <p>A list of one or more Amazon Location categories to filter the returned places. If you 
    #               include more than one category, the results will include results that match 
    #               <i>any</i> of the categories listed.</p>
    #            <p>For more information about using categories, including a list of Amazon Location
    #               categories, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html">Categories and filtering</a>, in the <i>Amazon Location Service developer 
    #                       guide</i>.</p>
    # @option params [String] :key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #     text: "SensitiveString", # required
    #     bias_position: [1.0],
    #     filter_b_box: [1.0],
    #     filter_countries: ["CountryCode3"],
    #     max_results: 1,
    #     language: "LanguageTag",
    #     filter_categories: ["PlaceCategory"],
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.search_place_index_for_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: { # required
    #       text: "SensitiveString", # required
    #       bias_position: [1.0],
    #       filter_b_box: [1.0],
    #       filter_countries: ["CountryCode3"],
    #       max_results: 1,
    #       result_b_box: [1.0],
    #       data_source: "String", # required
    #       language: "LanguageTag",
    #       filter_categories: ["PlaceCategory"]
    #     },
    #     results: [ # required
    #       {
    #         place: { # required
    #           label: "String",
    #           geometry: { # required
    #             point: [1.0]
    #           },
    #           address_number: "String",
    #           street: "String",
    #           neighborhood: "String",
    #           municipality: "String",
    #           sub_region: "String",
    #           region: "String",
    #           country: "String",
    #           postal_code: "String",
    #           interpolated: false,
    #           time_zone: {
    #             name: "String", # required
    #             offset: 1
    #           },
    #           unit_type: "String",
    #           unit_number: "String",
    #           categories: ["PlaceCategory"],
    #           supplemental_categories: ["PlaceSupplementalCategory"],
    #           sub_municipality: "String"
    #         },
    #         distance: 1.0,
    #         relevance: 1.0,
    #         place_id: "PlaceId"
    #       }
    #     ]
    #   }
    # @return [Types::SearchPlaceIndexForTextOutput]
    def search_place_index_for_text(params = {}, options = {})
      request = build_request(:search_place_index_for_text, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Amazon Location Service
    #             resource.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to
    #             scope user permissions, by granting a user permission to access or change only resources
    #             with certain tag values.</p>
    #          <p>You can use the <code>TagResource</code> operation with an Amazon Location Service
    #             resource that already has tags. If you specify a new tag key for the resource, this tag
    #             is appended to the tags already associated with the resource. If you specify a tag key
    #             that's already associated with the resource, the new tag value that you specify replaces
    #             the previous value for that tag. </p>
    #          <p>You can associate up to 50 tags with a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to update.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to specific resource. A tag is a key-value pair that helps
    #               you manage, identify, search, and filter your resources.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                  <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @</p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
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

    # <p>Removes one or more tags from the specified Amazon Location resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove
    #               tags.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["String"], # required
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

    # <p>Updates the specified properties of a given geofence collection.</p>
    # @param [Hash, Types::UpdateGeofenceCollectionInput] params
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection to update.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :description
    #   <p>Updates the description for the geofence collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.update_geofence_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection_name: "ResourceName", # required
    #     collection_arn: "Arn", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateGeofenceCollectionOutput]
    def update_geofence_collection(params = {}, options = {})
      request = build_request(:update_geofence_collection, params)
      request.send_request(options)
    end

    # <p>Updates the specified properties of a given API key resource.</p>
    # @param [Hash, Types::UpdateKeyInput] params
    # @option params [String] :key_name
    #   <p>The name of the API key resource to update.</p>
    # @option params [String] :description
    #   <p>Updates the description for the API key resource.</p>
    # @option params [Time] :expire_time
    #   <p>Updates the timestamp for when the API key resource will expire in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    # @option params [Boolean] :no_expiry
    #   <p>Whether the API key should expire. Set to <code>true</code> to set the API key to have
    #               no expiration time.</p>
    # @option params [Boolean] :force_update
    #   <p>The boolean flag to be included for updating <code>ExpireTime</code> or
    #                   <code>Restrictions</code> details.</p>
    #            <p>Must be set to <code>true</code> to update an API key resource that has been used in
    #               the past 7 days.</p>
    #            <p>
    #               <code>False</code> if force update is not preferred</p>
    #            <p>Default value: <code>False</code>
    #            </p>
    # @option params [Types::ApiKeyRestrictions] :restrictions
    #   <p>Updates the API key restrictions for the API key resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     expire_time: Time.now,
    #     no_expiry: false,
    #     force_update: false,
    #     restrictions: {
    #       allow_actions: ["ApiKeyAction"], # required
    #       allow_resources: ["GeoArnV2"], # required
    #       allow_referers: ["RefererPattern"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "Arn", # required
    #     key_name: "ResourceName", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateKeyOutput]
    def update_key(params = {}, options = {})
      request = build_request(:update_key, params)
      request.send_request(options)
    end

    # <p>Updates the specified properties of a given map resource.</p>
    # @param [Hash, Types::UpdateMapInput] params
    # @option params [String] :map_name
    #   <p>The name of the map resource to update.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :description
    #   <p>Updates the description for the map resource.</p>
    # @option params [Types::MapConfigurationUpdate] :configuration_update
    #   <p>Updates the parts of the map configuration that can be updated, including the
    #               political view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription",
    #     configuration_update: {
    #       political_view: "CountryCode3OrEmpty",
    #       custom_layers: ["CustomLayer"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     map_name: "ResourceName", # required
    #     map_arn: "GeoArn", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateMapOutput]
    def update_map(params = {}, options = {})
      request = build_request(:update_map, params)
      request.send_request(options)
    end

    # <p>Updates the specified properties of a given place index resource.</p>
    # @param [Hash, Types::UpdatePlaceIndexInput] params
    # @option params [String] :index_name
    #   <p>The name of the place index resource to update.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :description
    #   <p>Updates the description for the place index resource.</p>
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   <p>Updates the data storage option for the place index resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription",
    #     data_source_configuration: {
    #       intended_use: "IntendedUse"
    #     }
    #   }
    #   options = {}
    #   response = client.update_place_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_name: "ResourceName", # required
    #     index_arn: "GeoArn", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdatePlaceIndexOutput]
    def update_place_index(params = {}, options = {})
      request = build_request(:update_place_index, params)
      request.send_request(options)
    end

    # <p>Updates the specified properties for a given route calculator resource.</p>
    # @param [Hash, Types::UpdateRouteCalculatorInput] params
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource to update.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :description
    #   <p>Updates the description for the route calculator resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculator_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.update_route_calculator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculator_name: "ResourceName", # required
    #     calculator_arn: "GeoArn", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateRouteCalculatorOutput]
    def update_route_calculator(params = {}, options = {})
      request = build_request(:update_route_calculator, params)
      request.send_request(options)
    end

    # <p>Updates the specified properties of a given tracker resource.</p>
    # @param [Hash, Types::UpdateTrackerInput] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to update.</p>
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #               <code>RequestBasedUsage</code>.</p>
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :description
    #   <p>Updates the description for the tracker resource.</p>
    # @option params [String] :position_filtering
    #   <p>Updates the position filtering for the tracker resource.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TimeBased</code> - Location updates are evaluated against linked geofence collections, 
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds, 
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are 
    #                       ignored. Location updates within this distance are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This helps educe the effects of GPS noise 
    #                       when displaying device trajectories on a map, and can help control costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :event_bridge_enabled
    #   <p>Whether to enable position <code>UPDATE</code> events from this tracker to be sent to 
    #               EventBridge.</p>
    #            <note>
    #               <p>You do not need enable this feature to get <code>ENTER</code> and 
    #                   <code>EXIT</code> events for geofences with this tracker. Those events are
    #                   always sent to EventBridge.</p>
    #            </note>
    # @option params [Boolean] :kms_key_enable_geospatial_queries
    #   <p>Enables <code>GeospatialQueries</code> for a tracker that uses a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services
    #               KMS customer managed key</a>.</p>
    #            <p>This parameter is only used if you are using a KMS customer managed key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     pricing_plan: "PricingPlan",
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #     position_filtering: "PositionFiltering",
    #     event_bridge_enabled: false,
    #     kms_key_enable_geospatial_queries: false
    #   }
    #   options = {}
    #   response = client.update_tracker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tracker_name: "ResourceName", # required
    #     tracker_arn: "Arn", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateTrackerOutput]
    def update_tracker(params = {}, options = {})
      request = build_request(:update_tracker, params)
      request.send_request(options)
    end

    # <p>Verifies the integrity of the device's position by determining if it was reported behind a proxy, and by comparing it to an inferred position estimated based on the device's state.</p>
    #          <note>
    #             <p>The Location Integrity SDK provides enhanced 
    #             features related to device verification, and it is available for use by request. 
    #             To get access to the SDK, contact <a href="https://aws.amazon.com/contact-us/sales-support/?pg=locationprice&amp;cta=herobtn">Sales Support</a>.</p>
    #          </note>
    # @param [Hash, Types::VerifyDevicePositionRequest] params
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be associated with verification request.</p>
    # @option params [Types::DeviceState] :device_state
    #   <p>The device's state, including position, IP address, cell signals and Wi-Fi access points.</p>
    # @option params [String] :distance_unit
    #   <p>The distance unit for the verification request.</p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tracker_name: "ResourceName", # required
    #     device_state: { # required
    #       device_id: "Id", # required
    #       sample_time: Time.now, # required
    #       position: [1.0], # required
    #       accuracy: {
    #         horizontal: 1.0, # required
    #       },
    #       ipv4_address: "String",
    #       wi_fi_access_points: [
    #         {
    #           mac_address: "String", # required
    #           rss: 1, # required
    #         }
    #       ],
    #       cell_signals: {
    #         lte_cell_details: [ # required
    #           {
    #             cell_id: 1, # required
    #             mcc: 1, # required
    #             mnc: 1, # required
    #             local_id: {
    #               earfcn: 1, # required
    #               pci: 1, # required
    #             },
    #             network_measurements: [
    #               {
    #                 earfcn: 1, # required
    #                 cell_id: 1, # required
    #                 pci: 1, # required
    #                 rsrp: 1,
    #                 rsrq: 1.0
    #               }
    #             ],
    #             timing_advance: 1,
    #             nr_capable: false,
    #             rsrp: 1,
    #             rsrq: 1.0,
    #             tac: 1
    #           }
    #         ]
    #       }
    #     },
    #     distance_unit: "DistanceUnit"
    #   }
    #   options = {}
    #   response = client.verify_device_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inferred_state: { # required
    #       position: [1.0],
    #       accuracy: {
    #         horizontal: 1.0, # required
    #       },
    #       deviation_distance: 1.0,
    #       proxy_detected: false, # required
    #     },
    #     device_id: "Id", # required
    #     sample_time: Time.now, # required
    #     received_time: Time.now, # required
    #     distance_unit: "DistanceUnit", # required
    #   }
    # @return [Types::VerifyDevicePositionResponse]
    def verify_device_position(params = {}, options = {})
      request = build_request(:verify_device_position, params)
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
      context[:gem_name] = 'aws-sdk-location'
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
