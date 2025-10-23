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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iotfleetwise)

module Aws::IoTFleetWise
  # An API client for Aws::IoTFleetWise.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IoTAutobahnControlPlane
    @identifier = :iotfleetwise

    add_plugin(::Aws::IoTFleetWise::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTFleetWise::EndpointProvider)
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

    # <p> Adds, or associates, a vehicle with a fleet. </p>
    # @param [Hash, Types::AssociateVehicleFleetInput] params
    # @option params [String] :vehicle_name
    #   <p> The unique ID of the vehicle to associate with the fleet. </p>
    # @option params [String] :fleet_id
    #   <p> The ID of a fleet. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #     fleet_id: "fleetId", # required
    #   }
    #   options = {}
    #   response = client.associate_vehicle_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateVehicleFleetOutput]
    def associate_vehicle_fleet(params = {}, options = {})
      request = build_request(:associate_vehicle_fleet, params)
      request.send_request(options)
    end

    # <p> Creates a group, or batch, of vehicles. </p>
    #          <note>
    #             <p> You must specify a decoder manifest and a vehicle model (model manifest) for each
    #                 vehicle. </p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html">Create multiple
    #                 vehicles (AWS CLI)</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>. </p>
    # @param [Hash, Types::BatchCreateVehicleInput] params
    # @option params [Array<Types::CreateVehicleRequestItem>] :vehicles
    #   <p> A list of information about each vehicle to create. For more information, see the
    #                    API data type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicles: [ # required
    #       {
    #         vehicle_name: "vehicleName", # required
    #         model_manifest_arn: "arn", # required
    #         decoder_manifest_arn: "arn", # required
    #         attributes: {
    #           "attributeName" => "attributeValue"
    #         },
    #         association_behavior: "CreateIotThing" # One of: ["CreateIotThing", "ValidateIotThingExists"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         state_templates: [
    #           {
    #             identifier: "ResourceIdentifier", # required
    #             state_template_update_strategy: { # required
    #               # One of:
    #               periodic: {
    #                 state_template_update_rate: { # required
    #                   unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #                   value: 1, # required
    #                 }
    #               },
    #               on_change: {
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicles: [
    #       {
    #         vehicle_name: "vehicleName",
    #         arn: "arn",
    #         thing_arn: "arn"
    #       }
    #     ],
    #     errors: [
    #       {
    #         vehicle_name: "vehicleName",
    #         code: "string",
    #         message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateVehicleOutput]
    def batch_create_vehicle(params = {}, options = {})
      request = build_request(:batch_create_vehicle, params)
      request.send_request(options)
    end

    # <p> Updates a group, or batch, of vehicles.</p>
    #          <note>
    #             <p> You must specify a decoder manifest and a vehicle model (model manifest) for each
    #                 vehicle. </p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html">Update multiple
    #                 vehicles (AWS CLI)</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>. </p>
    # @param [Hash, Types::BatchUpdateVehicleInput] params
    # @option params [Array<Types::UpdateVehicleRequestItem>] :vehicles
    #   <p> A list of information about the vehicles to update. For more information, see the
    #                    API data type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicles: [ # required
    #       {
    #         vehicle_name: "vehicleName", # required
    #         model_manifest_arn: "arn",
    #         decoder_manifest_arn: "arn",
    #         attributes: {
    #           "attributeName" => "attributeValue"
    #         },
    #         attribute_update_mode: "Overwrite" # One of: ["Overwrite", "Merge"],
    #         state_templates_to_add: [
    #           {
    #             identifier: "ResourceIdentifier", # required
    #             state_template_update_strategy: { # required
    #               # One of:
    #               periodic: {
    #                 state_template_update_rate: { # required
    #                   unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #                   value: 1, # required
    #                 }
    #               },
    #               on_change: {
    #               }
    #             }
    #           }
    #         ],
    #         state_templates_to_remove: ["ResourceIdentifier"],
    #         state_templates_to_update: [
    #           {
    #             identifier: "ResourceIdentifier", # required
    #             state_template_update_strategy: { # required
    #               # One of:
    #               periodic: {
    #                 state_template_update_rate: { # required
    #                   unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #                   value: 1, # required
    #                 }
    #               },
    #               on_change: {
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicles: [
    #       {
    #         vehicle_name: "vehicleName",
    #         arn: "arn"
    #       }
    #     ],
    #     errors: [
    #       {
    #         vehicle_name: "vehicleName",
    #         code: 1,
    #         message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateVehicleOutput]
    def batch_update_vehicle(params = {}, options = {})
      request = build_request(:batch_update_vehicle, params)
      request.send_request(options)
    end

    # <p>Creates an orchestration of data collection rules. The Amazon Web Services IoT FleetWise Edge Agent software
    #             running in vehicles uses campaigns to decide how to collect and transfer data to the
    #             cloud. You create campaigns in the cloud. After you or your team approve campaigns,
    #             Amazon Web Services IoT FleetWise automatically deploys them to vehicles. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html">Collect and transfer data
    #                 with campaigns</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::CreateCampaignInput] params
    # @option params [String] :name
    #   <p> The name of the campaign to create. </p>
    # @option params [String] :description
    #   <p>An optional description of the campaign to help identify its purpose.</p>
    # @option params [String] :signal_catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the signal catalog to associate with the campaign.
    #           </p>
    # @option params [String] :target_arn
    #   <p> The ARN of the vehicle or fleet to deploy a campaign to. </p>
    # @option params [Time] :start_time
    #   <p>The time, in milliseconds, to deliver a campaign after it was approved. If
    #               it's not specified, <code>0</code> is used.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    # @option params [Time] :expiry_time
    #   <p>The time the campaign expires, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time). Vehicle data isn't collected after the campaign expires. </p>
    #            <p>Default: 253402214400 (December 31, 9999, 00:00:00 UTC)</p>
    # @option params [Integer] :post_trigger_collection_duration
    #   <p>How long (in milliseconds) to collect raw data after a triggering event
    #               initiates the collection. If it's not specified, <code>0</code> is used.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    # @option params [String] :diagnostics_mode
    #   <p>Option for a vehicle to send diagnostic trouble codes to Amazon Web Services IoT FleetWise. If you
    #               want to send diagnostic trouble codes, use <code>SEND_ACTIVE_DTCS</code>. If it's not
    #               specified, <code>OFF</code> is used.</p>
    #            <p>Default: <code>OFF</code>
    #            </p>
    # @option params [String] :spooling_mode
    #   <p>Determines whether to store collected data after a vehicle lost a connection with the
    #               cloud. After a connection is re-established, the data is automatically forwarded to
    #               Amazon Web Services IoT FleetWise. If you want to store collected data when a vehicle loses connection with the
    #               cloud, use <code>TO_DISK</code>. If it's not specified, <code>OFF</code> is used.</p>
    #            <p>Default: <code>OFF</code>
    #            </p>
    # @option params [String] :compression
    #   <p>Determines whether to compress signals before transmitting data to Amazon Web Services IoT FleetWise. If you
    #               don't want to compress the signals, use <code>OFF</code>. If it's not specified,
    #                   <code>SNAPPY</code> is used. </p>
    #            <p>Default: <code>SNAPPY</code>
    #            </p>
    # @option params [Integer] :priority
    #   <p>A number indicating the priority of one campaign over another campaign for
    #               a certain vehicle or fleet. A campaign with the lowest value is deployed to vehicles
    #               before any other campaigns. If it's not specified, <code>0</code> is used. </p>
    #            <p>Default: <code>0</code>
    #            </p>
    # @option params [Array<Types::SignalInformation>] :signals_to_collect
    #   <p>A list of information about signals to collect. </p>
    #            <note>
    #               <p>If you upload a signal as a condition in a data partition for a campaign, then
    #                   those same signals must be included in <code>signalsToCollect</code>.</p>
    #            </note>
    # @option params [Types::CollectionScheme] :collection_scheme
    #   <p> The data collection scheme associated with the campaign. You can specify a scheme
    #               that collects data based on time or an event.</p>
    # @option params [Array<String>] :data_extra_dimensions
    #   <p>A list of vehicle attributes to associate with a campaign. </p>
    #            <p>Enrich the data with specified vehicle attributes. For example, add <code>make</code>
    #               and <code>model</code> to the campaign, and Amazon Web Services IoT FleetWise will associate the data with those
    #               attributes as dimensions in Amazon Timestream. You can then query the data against
    #                   <code>make</code> and <code>model</code>.</p>
    #            <p>Default: An empty array</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the campaign.</p>
    # @option params [Array<Types::DataDestinationConfig>] :data_destination_configs
    #   <p>The destination where the campaign sends data. You can send data to an MQTT topic,
    #               or store it in Amazon S3 or Amazon Timestream.</p>
    #            <p>MQTT is the publish/subscribe messaging protocol used by Amazon Web Services IoT to communicate with
    #               your devices.</p>
    #            <p>Amazon S3 optimizes the cost of data storage and provides additional mechanisms to use vehicle 
    #               data, such as data lakes, centralized data storage, data processing pipelines, and analytics. 
    #               Amazon Web Services IoT FleetWise supports at-least-once file delivery to S3. Your vehicle data is stored on multiple 
    #               Amazon Web Services IoT FleetWise servers for redundancy and high availability.</p>
    #            <p>You can use Amazon Timestream to access and analyze time series data, and Timestream to query
    #               vehicle data so that you can identify trends and patterns.</p>
    # @option params [Array<Types::DataPartition>] :data_partitions
    #   <p>The data partitions associated with the signals collected from the vehicle.</p>
    # @option params [Array<Types::SignalFetchInformation>] :signals_to_fetch
    #   <p>A list of information about signals to fetch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "campaignName", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
    #     target_arn: "arn", # required
    #     start_time: Time.now,
    #     expiry_time: Time.now,
    #     post_trigger_collection_duration: 1,
    #     diagnostics_mode: "OFF" # One of: ["OFF", "SEND_ACTIVE_DTCS"],
    #     spooling_mode: "OFF" # One of: ["OFF", "TO_DISK"],
    #     compression: "OFF" # One of: ["OFF", "SNAPPY"],
    #     priority: 1,
    #     signals_to_collect: [
    #       {
    #         name: "wildcardSignalName", # required
    #         max_sample_count: 1,
    #         minimum_sampling_interval_ms: 1,
    #         data_partition_id: "DataPartitionId"
    #       }
    #     ],
    #     collection_scheme: { # required
    #       # One of:
    #       time_based_collection_scheme: {
    #         period_ms: 1, # required
    #       },
    #       condition_based_collection_scheme: {
    #         expression: "eventExpression", # required
    #         minimum_trigger_interval_ms: 1,
    #         trigger_mode: "ALWAYS" # One of: ["ALWAYS", "RISING_EDGE"],
    #         condition_language_version: 1
    #       }
    #     },
    #     data_extra_dimensions: ["NodePath"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     data_destination_configs: [{
    #       # One of:
    #       s3_config: {
    #         bucket_arn: "S3BucketArn", # required
    #         data_format: "JSON" # One of: ["JSON", "PARQUET"],
    #         storage_compression_format: "NONE" # One of: ["NONE", "GZIP"],
    #         prefix: "Prefix"
    #       },
    #       timestream_config: {
    #         timestream_table_arn: "TimestreamTableArn", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #       },
    #       mqtt_topic_config: {
    #         mqtt_topic_arn: "MqttTopicArn", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #       }
    #     }],
    #     data_partitions: [
    #       {
    #         id: "DataPartitionId", # required
    #         storage_options: { # required
    #           maximum_size: { # required
    #             unit: "MB" # One of: ["MB", "GB", "TB"], # required
    #             value: 1, # required
    #           },
    #           storage_location: "StorageLocation", # required
    #           minimum_time_to_live: { # required
    #             unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS"], # required
    #             value: 1, # required
    #           }
    #         },
    #         upload_options: {
    #           expression: "eventExpression", # required
    #           condition_language_version: 1
    #         }
    #       }
    #     ],
    #     signals_to_fetch: [
    #       {
    #         fully_qualified_name: "NodePath", # required
    #         signal_fetch_config: { # required
    #           # One of:
    #           time_based: {
    #             execution_frequency_ms: 1, # required
    #           },
    #           condition_based: {
    #             condition_expression: "fetchConfigEventExpression", # required
    #             trigger_mode: "ALWAYS" # One of: ["ALWAYS", "RISING_EDGE"], # required
    #           }
    #         },
    #         condition_language_version: 1,
    #         actions: ["actionEventExpression"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "campaignName",
    #     arn: "campaignArn"
    #   }
    # @return [Types::CreateCampaignOutput]
    def create_campaign(params = {}, options = {})
      request = build_request(:create_campaign, params)
      request.send_request(options)
    end

    # <p>Creates the decoder manifest associated with a model manifest. To create a decoder
    #             manifest, the following must be true:</p>
    #          <ul>
    #             <li>
    #                <p>Every signal decoder has a unique name.</p>
    #             </li>
    #             <li>
    #                <p>Each signal decoder is associated with a network interface.</p>
    #             </li>
    #             <li>
    #                <p>Each network interface has a unique ID.</p>
    #             </li>
    #             <li>
    #                <p>The signal decoders are specified in the model manifest.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateDecoderManifestInput] params
    # @option params [String] :name
    #   <p> The unique name of the decoder manifest to create.</p>
    # @option params [String] :description
    #   <p>A brief description of the decoder manifest. </p>
    # @option params [String] :model_manifest_arn
    #   <p> The Amazon Resource Name (ARN) of the vehicle model (model manifest). </p>
    # @option params [Array<Types::SignalDecoder>] :signal_decoders
    #   <p> A list of information about signal decoders. </p>
    # @option params [Array<Types::NetworkInterface>] :network_interfaces
    #   <p> A list of information about available network interfaces. </p>
    # @option params [String] :default_for_unmapped_signals
    #   <p>Use default decoders for all unmapped signals in the model. You don't need to provide any detailed decoding information.</p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the decoder manifest.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     model_manifest_arn: "arn", # required
    #     signal_decoders: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL" # One of: ["CAN_SIGNAL", "OBD_SIGNAL", "MESSAGE_SIGNAL", "CUSTOM_DECODING_SIGNAL"], # required
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             # One of:
    #             primitive_message_definition: {
    #               # One of:
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL" # One of: ["BOOL", "BYTE", "CHAR", "FLOAT32", "FLOAT64", "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "STRING", "WSTRING"], # required
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1
    #               }
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY" # One of: ["FIXED_CAPACITY", "DYNAMIC_UNBOUNDED_CAPACITY", "DYNAMIC_BOUNDED_CAPACITY"], # required
    #               capacity: 1
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         }
    #       }
    #     ],
    #     network_interfaces: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE" # One of: ["CAN_INTERFACE", "OBD_INTERFACE", "VEHICLE_MIDDLEWARE", "CUSTOM_DECODING_INTERFACE"], # required
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion"
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2" # One of: ["ROS_2"], # required
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         }
    #       }
    #     ],
    #     default_for_unmapped_signals: "CUSTOM_DECODING" # One of: ["CUSTOM_DECODING"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_decoder_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::CreateDecoderManifestOutput]
    def create_decoder_manifest(params = {}, options = {})
      request = build_request(:create_decoder_manifest, params)
      request.send_request(options)
    end

    # <p> Creates a fleet that represents a group of vehicles.
    #             </p>
    #          <note>
    #             <p>You must create both a signal catalog and vehicles before you can create a fleet.
    #             </p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleets.html">Fleets</a> in the
    #                 <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    # @param [Hash, Types::CreateFleetInput] params
    # @option params [String] :fleet_id
    #   <p> The unique ID of the fleet to create. </p>
    # @option params [String] :description
    #   <p> A brief description of the fleet to create. </p>
    # @option params [String] :signal_catalog_arn
    #   <p> The Amazon Resource Name (ARN) of a signal catalog. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "fleetId", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "fleetId", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::CreateFleetOutput]
    def create_fleet(params = {}, options = {})
      request = build_request(:create_fleet, params)
      request.send_request(options)
    end

    # <p> Creates a vehicle model (model manifest) that specifies signals (attributes,
    #             branches, sensors, and actuators). </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/vehicle-models.html">Vehicle models</a>
    #             in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    # @param [Hash, Types::CreateModelManifestInput] params
    # @option params [String] :name
    #   <p> The name of the vehicle model to create.</p>
    # @option params [String] :description
    #   <p> A brief description of the vehicle model. </p>
    # @option params [Array<String>] :nodes
    #   <p> A list of nodes, which are a general abstraction of signals. </p>
    # @option params [String] :signal_catalog_arn
    #   <p> The Amazon Resource Name (ARN) of a signal catalog. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the vehicle model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes: ["string"], # required
    #     signal_catalog_arn: "arn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_model_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::CreateModelManifestOutput]
    def create_model_manifest(params = {}, options = {})
      request = build_request(:create_model_manifest, params)
      request.send_request(options)
    end

    # <p> Creates a collection of standardized signals that can be reused to create vehicle
    #             models.</p>
    # @param [Hash, Types::CreateSignalCatalogInput] params
    # @option params [String] :name
    #   <p> The name of the signal catalog to create. </p>
    # @option params [String] :description
    #   <p>A brief description of the signal catalog.</p>
    # @option params [Array<Types::Node>] :nodes
    #   <p> A list of information about nodes, which are a general abstraction of signals. For
    #               more information, see the  API data type.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the signal catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes: [{
    #       # One of:
    #       branch: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       sensor: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       actuator: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       attribute: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         default_value: "string",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       struct: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       property: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         data_encoding: "BINARY" # One of: ["BINARY", "TYPED"],
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       }
    #     }],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_signal_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::CreateSignalCatalogOutput]
    def create_signal_catalog(params = {}, options = {})
      request = build_request(:create_signal_catalog, params)
      request.send_request(options)
    end

    # <p>Creates a state template. State templates contain state properties, which are signals that belong to a signal catalog that is synchronized between the Amazon Web Services IoT FleetWise Edge and the Amazon Web Services Cloud.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::CreateStateTemplateRequest] params
    # @option params [String] :name
    #   <p>The name of the state template.</p>
    # @option params [String] :description
    #   <p>A brief description of the state template.</p>
    # @option params [String] :signal_catalog_arn
    #   <p>The ARN of the signal catalog associated with the state template.</p>
    # @option params [Array<String>] :state_template_properties
    #   <p>A list of signals from which data is collected. The state template properties contain the fully qualified names of the signals.</p>
    # @option params [Array<String>] :data_extra_dimensions
    #   <p>A list of vehicle attributes to associate with the payload published on the state template's 
    #             MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will enrich the protobuf encoded payload with those attributes in the <code>extraDimensions</code>
    #             field.</p>
    # @option params [Array<String>] :metadata_extra_dimensions
    #   <p>A list of vehicle attributes to associate with user properties of the messages published on the
    #             state template's MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will include these attributes as User Properties with the MQTT message.</p>
    #            <p>Default: An empty array</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the state template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
    #     state_template_properties: ["NodePath"], # required
    #     data_extra_dimensions: ["NodePath"],
    #     metadata_extra_dimensions: ["NodePath"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_state_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName",
    #     arn: "arn",
    #     id: "ResourceUniqueId"
    #   }
    # @return [Types::CreateStateTemplateResponse]
    def create_state_template(params = {}, options = {})
      request = build_request(:create_state_template, params)
      request.send_request(options)
    end

    # <p> Creates a vehicle, which is an instance of a vehicle model (model manifest). Vehicles
    #             created from the same vehicle model consist of the same signals inherited from the
    #             vehicle model.</p>
    #          <note>
    #             <p> If you have an existing Amazon Web Services IoT thing, you can use Amazon Web Services IoT FleetWise to create a
    #                 vehicle and collect data from your thing. </p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html">Create a vehicle
    #                 (AWS CLI)</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    # @param [Hash, Types::CreateVehicleInput] params
    # @option params [String] :vehicle_name
    #   <p> The unique ID of the vehicle to create. </p>
    # @option params [String] :model_manifest_arn
    #   <p> The Amazon Resource Name ARN of a vehicle model. </p>
    # @option params [String] :decoder_manifest_arn
    #   <p> The ARN of a decoder manifest. </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    #            <p>To use attributes with Campaigns or State Templates, you must include them using the 
    #               request parameters <code>dataExtraDimensions</code> and/or <code>metadataExtraDimensions</code> 
    #               (for state templates only) when creating your campaign/state template. </p>
    # @option params [String] :association_behavior
    #   <p> An option to create a new Amazon Web Services IoT thing when creating a vehicle, or to validate an
    #               existing Amazon Web Services IoT thing as a vehicle. </p>
    #            <p>Default: <code/>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the vehicle.</p>
    # @option params [Array<Types::StateTemplateAssociation>] :state_templates
    #   <p>Associate state templates with the vehicle. You can monitor the last known state of the vehicle in near real time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #     model_manifest_arn: "arn", # required
    #     decoder_manifest_arn: "arn", # required
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     },
    #     association_behavior: "CreateIotThing" # One of: ["CreateIotThing", "ValidateIotThingExists"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     state_templates: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           # One of:
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #               value: 1, # required
    #             }
    #           },
    #           on_change: {
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicle_name: "vehicleName",
    #     arn: "arn",
    #     thing_arn: "arn"
    #   }
    # @return [Types::CreateVehicleOutput]
    def create_vehicle(params = {}, options = {})
      request = build_request(:create_vehicle, params)
      request.send_request(options)
    end

    # <p> Deletes a data collection campaign. Deleting a campaign suspends all data collection
    #             and removes it from any vehicles. </p>
    # @param [Hash, Types::DeleteCampaignInput] params
    # @option params [String] :name
    #   <p> The name of the campaign to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "campaignName", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "campaignName",
    #     arn: "campaignArn"
    #   }
    # @return [Types::DeleteCampaignOutput]
    def delete_campaign(params = {}, options = {})
      request = build_request(:delete_campaign, params)
      request.send_request(options)
    end

    # <p> Deletes a decoder manifest. You can't delete a decoder manifest if it has vehicles
    #             associated with it. </p>
    # @param [Hash, Types::DeleteDecoderManifestInput] params
    # @option params [String] :name
    #   <p> The name of the decoder manifest to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_decoder_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::DeleteDecoderManifestOutput]
    def delete_decoder_manifest(params = {}, options = {})
      request = build_request(:delete_decoder_manifest, params)
      request.send_request(options)
    end

    # <p> Deletes a fleet. Before you delete a fleet, all vehicles must be
    #             dissociated from the fleet. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html">Delete a fleet (AWS
    #                 CLI)</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteFleetInput] params
    # @option params [String] :fleet_id
    #   <p> The ID of the fleet to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "fleetId", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "fleetId",
    #     arn: "arn"
    #   }
    # @return [Types::DeleteFleetOutput]
    def delete_fleet(params = {}, options = {})
      request = build_request(:delete_fleet, params)
      request.send_request(options)
    end

    # <p> Deletes a vehicle model (model manifest).</p>
    # @param [Hash, Types::DeleteModelManifestInput] params
    # @option params [String] :name
    #   <p> The name of the model manifest to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_model_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::DeleteModelManifestOutput]
    def delete_model_manifest(params = {}, options = {})
      request = build_request(:delete_model_manifest, params)
      request.send_request(options)
    end

    # <p> Deletes a signal catalog. </p>
    # @param [Hash, Types::DeleteSignalCatalogInput] params
    # @option params [String] :name
    #   <p> The name of the signal catalog to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_signal_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::DeleteSignalCatalogOutput]
    def delete_signal_catalog(params = {}, options = {})
      request = build_request(:delete_signal_catalog, params)
      request.send_request(options)
    end

    # <p>Deletes a state template.</p>
    # @param [Hash, Types::DeleteStateTemplateRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the state template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_state_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName",
    #     arn: "arn",
    #     id: "ResourceUniqueId"
    #   }
    # @return [Types::DeleteStateTemplateResponse]
    def delete_state_template(params = {}, options = {})
      request = build_request(:delete_state_template, params)
      request.send_request(options)
    end

    # <p> Deletes a vehicle and removes it from any campaigns.</p>
    # @param [Hash, Types::DeleteVehicleInput] params
    # @option params [String] :vehicle_name
    #   <p>The ID of the vehicle to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #   }
    #   options = {}
    #   response = client.delete_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicle_name: "vehicleName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::DeleteVehicleOutput]
    def delete_vehicle(params = {}, options = {})
      request = build_request(:delete_vehicle, params)
      request.send_request(options)
    end

    # <p>Removes, or disassociates, a vehicle from a fleet. Disassociating a vehicle from a
    #             fleet doesn't delete the vehicle.</p>
    # @param [Hash, Types::DisassociateVehicleFleetInput] params
    # @option params [String] :vehicle_name
    #   <p> The unique ID of the vehicle to disassociate from the fleet.</p>
    # @option params [String] :fleet_id
    #   <p> The unique ID of a fleet. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #     fleet_id: "fleetId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_vehicle_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateVehicleFleetOutput]
    def disassociate_vehicle_fleet(params = {}, options = {})
      request = build_request(:disassociate_vehicle_fleet, params)
      request.send_request(options)
    end

    # <p> Retrieves information about a campaign. </p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::GetCampaignInput] params
    # @option params [String] :name
    #   <p> The name of the campaign to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "campaignName", # required
    #   }
    #   options = {}
    #   response = client.get_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "campaignName",
    #     arn: "campaignArn",
    #     description: "description",
    #     signal_catalog_arn: "arn",
    #     target_arn: "arn",
    #     status: "CREATING" # One of: ["CREATING", "WAITING_FOR_APPROVAL", "RUNNING", "SUSPENDED"],
    #     start_time: Time.now,
    #     expiry_time: Time.now,
    #     post_trigger_collection_duration: 1,
    #     diagnostics_mode: "OFF" # One of: ["OFF", "SEND_ACTIVE_DTCS"],
    #     spooling_mode: "OFF" # One of: ["OFF", "TO_DISK"],
    #     compression: "OFF" # One of: ["OFF", "SNAPPY"],
    #     priority: 1,
    #     signals_to_collect: [
    #       {
    #         name: "wildcardSignalName", # required
    #         max_sample_count: 1,
    #         minimum_sampling_interval_ms: 1,
    #         data_partition_id: "DataPartitionId"
    #       }
    #     ],
    #     collection_scheme: {
    #       # One of:
    #       time_based_collection_scheme: {
    #         period_ms: 1, # required
    #       },
    #       condition_based_collection_scheme: {
    #         expression: "eventExpression", # required
    #         minimum_trigger_interval_ms: 1,
    #         trigger_mode: "ALWAYS" # One of: ["ALWAYS", "RISING_EDGE"],
    #         condition_language_version: 1
    #       }
    #     },
    #     data_extra_dimensions: ["NodePath"],
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     data_destination_configs: [{
    #       # One of:
    #       s3_config: {
    #         bucket_arn: "S3BucketArn", # required
    #         data_format: "JSON" # One of: ["JSON", "PARQUET"],
    #         storage_compression_format: "NONE" # One of: ["NONE", "GZIP"],
    #         prefix: "Prefix"
    #       },
    #       timestream_config: {
    #         timestream_table_arn: "TimestreamTableArn", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #       },
    #       mqtt_topic_config: {
    #         mqtt_topic_arn: "MqttTopicArn", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #       }
    #     }],
    #     data_partitions: [
    #       {
    #         id: "DataPartitionId", # required
    #         storage_options: { # required
    #           maximum_size: { # required
    #             unit: "MB" # One of: ["MB", "GB", "TB"], # required
    #             value: 1, # required
    #           },
    #           storage_location: "StorageLocation", # required
    #           minimum_time_to_live: { # required
    #             unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS"], # required
    #             value: 1, # required
    #           }
    #         },
    #         upload_options: {
    #           expression: "eventExpression", # required
    #           condition_language_version: 1
    #         }
    #       }
    #     ],
    #     signals_to_fetch: [
    #       {
    #         fully_qualified_name: "NodePath", # required
    #         signal_fetch_config: { # required
    #           # One of:
    #           time_based: {
    #             execution_frequency_ms: 1, # required
    #           },
    #           condition_based: {
    #             condition_expression: "fetchConfigEventExpression", # required
    #             trigger_mode: "ALWAYS" # One of: ["ALWAYS", "RISING_EDGE"], # required
    #           }
    #         },
    #         condition_language_version: 1,
    #         actions: ["actionEventExpression"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetCampaignOutput]
    def get_campaign(params = {}, options = {})
      request = build_request(:get_campaign, params)
      request.send_request(options)
    end

    # <p> Retrieves information about a created decoder manifest. </p>
    # @param [Hash, Types::GetDecoderManifestInput] params
    # @option params [String] :name
    #   <p> The name of the decoder manifest to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #   }
    #   options = {}
    #   response = client.get_decoder_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "string", # required
    #     arn: "arn", # required
    #     description: "description",
    #     model_manifest_arn: "arn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "INVALID", "VALIDATING"],
    #     creation_time: Time.now, # required
    #     last_modification_time: Time.now, # required
    #     message: "message"
    #   }
    # @return [Types::GetDecoderManifestOutput]
    def get_decoder_manifest(params = {}, options = {})
      request = build_request(:get_decoder_manifest, params)
      request.send_request(options)
    end

    # <p>Retrieves the encryption configuration for resources and data in Amazon Web Services IoT FleetWise.</p>
    # @param [Hash, Types::GetEncryptionConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kms_key_id: "String",
    #     encryption_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILURE"], # required
    #     encryption_type: "KMS_BASED_ENCRYPTION" # One of: ["KMS_BASED_ENCRYPTION", "FLEETWISE_DEFAULT_ENCRYPTION"], # required
    #     error_message: "errorMessage",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now
    #   }
    # @return [Types::GetEncryptionConfigurationResponse]
    def get_encryption_configuration(params = {}, options = {})
      request = build_request(:get_encryption_configuration, params)
      request.send_request(options)
    end

    # <p> Retrieves information about a fleet. </p>
    # @param [Hash, Types::GetFleetInput] params
    # @option params [String] :fleet_id
    #   <p> The ID of the fleet to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "fleetId", # required
    #   }
    #   options = {}
    #   response = client.get_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "fleetId", # required
    #     arn: "arn", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
    #     creation_time: Time.now, # required
    #     last_modification_time: Time.now, # required
    #   }
    # @return [Types::GetFleetOutput]
    def get_fleet(params = {}, options = {})
      request = build_request(:get_fleet, params)
      request.send_request(options)
    end

    # <p>Retrieves the logging options.</p>
    # @param [Hash, Types::GetLoggingOptionsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_watch_log_delivery: { # required
    #       log_type: "OFF" # One of: ["OFF", "ERROR"], # required
    #       log_group_name: "CloudWatchLogGroupName"
    #     }
    #   }
    # @return [Types::GetLoggingOptionsOutput]
    def get_logging_options(params = {}, options = {})
      request = build_request(:get_logging_options, params)
      request.send_request(options)
    end

    # <p> Retrieves information about a vehicle model (model manifest). </p>
    # @param [Hash, Types::GetModelManifestInput] params
    # @option params [String] :name
    #   <p> The name of the vehicle model to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #   }
    #   options = {}
    #   response = client.get_model_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #     description: "description",
    #     signal_catalog_arn: "arn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "INVALID", "VALIDATING"],
    #     creation_time: Time.now, # required
    #     last_modification_time: Time.now, # required
    #   }
    # @return [Types::GetModelManifestOutput]
    def get_model_manifest(params = {}, options = {})
      request = build_request(:get_model_manifest, params)
      request.send_request(options)
    end

    # <p> Retrieves information about the status of registering your Amazon Web Services account, IAM, and
    #             Amazon Timestream resources so that Amazon Web Services IoT FleetWise can transfer your vehicle data to the Amazon Web Services
    #             Cloud. </p>
    #          <p>For more information, including step-by-step procedures, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html">Setting up Amazon Web Services IoT FleetWise</a>. </p>
    #          <note>
    #             <p>This API operation doesn't require input parameters.</p>
    #          </note>
    # @param [Hash, Types::GetRegisterAccountStatusInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_register_account_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_account_id: "customerAccountId", # required
    #     account_status: "REGISTRATION_PENDING" # One of: ["REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"], # required
    #     timestream_registration_response: {
    #       timestream_database_name: "TimestreamDatabaseName", # required
    #       timestream_table_name: "TimestreamTableName", # required
    #       timestream_database_arn: "arn",
    #       timestream_table_arn: "arn",
    #       registration_status: "REGISTRATION_PENDING" # One of: ["REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"], # required
    #       error_message: "errorMessage"
    #     },
    #     iam_registration_response: { # required
    #       role_arn: "arn", # required
    #       registration_status: "REGISTRATION_PENDING" # One of: ["REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"], # required
    #       error_message: "errorMessage"
    #     },
    #     creation_time: Time.now, # required
    #     last_modification_time: Time.now, # required
    #   }
    # @return [Types::GetRegisterAccountStatusOutput]
    def get_register_account_status(params = {}, options = {})
      request = build_request(:get_register_account_status, params)
      request.send_request(options)
    end

    # <p> Retrieves information about a signal catalog. </p>
    # @param [Hash, Types::GetSignalCatalogInput] params
    # @option params [String] :name
    #   <p> The name of the signal catalog to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #   }
    #   options = {}
    #   response = client.get_signal_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #     description: "description",
    #     node_counts: {
    #       total_nodes: 1,
    #       total_branches: 1,
    #       total_sensors: 1,
    #       total_attributes: 1,
    #       total_actuators: 1,
    #       total_structs: 1,
    #       total_properties: 1
    #     },
    #     creation_time: Time.now, # required
    #     last_modification_time: Time.now, # required
    #   }
    # @return [Types::GetSignalCatalogOutput]
    def get_signal_catalog(params = {}, options = {})
      request = build_request(:get_signal_catalog, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a state template.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::GetStateTemplateRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the state template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_state_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName",
    #     arn: "arn",
    #     description: "description",
    #     signal_catalog_arn: "arn",
    #     state_template_properties: ["NodePath"],
    #     data_extra_dimensions: ["NodePath"],
    #     metadata_extra_dimensions: ["NodePath"],
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     id: "ResourceUniqueId"
    #   }
    # @return [Types::GetStateTemplateResponse]
    def get_state_template(params = {}, options = {})
      request = build_request(:get_state_template, params)
      request.send_request(options)
    end

    # <p> Retrieves information about a vehicle. </p>
    # @param [Hash, Types::GetVehicleInput] params
    # @option params [String] :vehicle_name
    #   <p> The ID of the vehicle to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #   }
    #   options = {}
    #   response = client.get_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicle_name: "vehicleName",
    #     arn: "arn",
    #     model_manifest_arn: "arn",
    #     decoder_manifest_arn: "arn",
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     },
    #     state_templates: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           # One of:
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #               value: 1, # required
    #             }
    #           },
    #           on_change: {
    #           }
    #         }
    #       }
    #     ],
    #     creation_time: Time.now,
    #     last_modification_time: Time.now
    #   }
    # @return [Types::GetVehicleOutput]
    def get_vehicle(params = {}, options = {})
      request = build_request(:get_vehicle, params)
      request.send_request(options)
    end

    # <p> Retrieves information about the status of campaigns, decoder manifests, or state templates
    #             associated with a vehicle.</p>
    # @param [Hash, Types::GetVehicleStatusInput] params
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a 
    #               <code>nextToken</code> pagination token is returned in the response. To retrieve the next 
    #               set of results, reissue the search request and include the returned token. When all results 
    #               have been returned, the response does not contain a pagination token value. This parameter 
    #               is only supported for resources of type <code>CAMPAIGN</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive. This parameter is only 
    #               supported for resources of type <code>CAMPAIGN</code>.</p>
    # @option params [String] :vehicle_name
    #   <p> The ID of the vehicle to retrieve information about. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1,
    #     vehicle_name: "vehicleName", # required
    #   }
    #   options = {}
    #   response = client.get_vehicle_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaigns: [
    #       {
    #         campaign_name: "campaignName",
    #         vehicle_name: "vehicleName",
    #         status: "CREATED" # One of: ["CREATED", "READY", "HEALTHY", "SUSPENDED", "DELETING", "READY_FOR_CHECKIN"]
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::GetVehicleStatusOutput]
    def get_vehicle_status(params = {}, options = {})
      request = build_request(:get_vehicle_status, params)
      request.send_request(options)
    end

    # <p> Creates a decoder manifest using your existing CAN DBC file from your local device.
    #         </p>
    #          <p>The CAN signal name must be unique and not repeated across CAN message definitions in a .dbc file. </p>
    # @param [Hash, Types::ImportDecoderManifestInput] params
    # @option params [String] :name
    #   <p> The name of the decoder manifest to import. </p>
    # @option params [Array<Types::NetworkFileDefinition>] :network_file_definitions
    #   <p> The file to load into an Amazon Web Services account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     network_file_definitions: [{ # required
    #       # One of:
    #       can_dbc: {
    #         network_interface: "InterfaceId", # required
    #         can_dbc_files: ["data"], # required
    #         signals_map: {
    #           "string" => "string"
    #         }
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.import_decoder_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::ImportDecoderManifestOutput]
    def import_decoder_manifest(params = {}, options = {})
      request = build_request(:import_decoder_manifest, params)
      request.send_request(options)
    end

    # <p> Creates a signal catalog using your existing VSS formatted content from your local
    #             device. </p>
    # @param [Hash, Types::ImportSignalCatalogInput] params
    # @option params [String] :name
    #   <p>The name of the signal catalog to import.</p>
    # @option params [String] :description
    #   <p> A brief description of the signal catalog. </p>
    # @option params [Types::FormattedVss] :vss
    #   <p>The contents of the Vehicle Signal Specification (VSS) configuration. VSS is a precise
    #               language used to describe and model signals in vehicle networks.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the signal catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     vss: {
    #       # One of:
    #       vss_json: "String"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_signal_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::ImportSignalCatalogOutput]
    def import_signal_catalog(params = {}, options = {})
      request = build_request(:import_signal_catalog, params)
      request.send_request(options)
    end

    # <p> Lists information about created campaigns. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListCampaignsInput] params
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :status
    #   <p>An optional parameter to filter the results by the status of each created campaign in
    #               your account. The status can be one of: <code>CREATING</code>,
    #                   <code>WAITING_FOR_APPROVAL</code>, <code>RUNNING</code>, or
    #               <code>SUSPENDED</code>.</p>
    # @option params [String] :list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: campaign name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1,
    #     status: "statusStr",
    #     list_response_scope: "METADATA_ONLY" # One of: ["METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.list_campaigns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign_summaries: [
    #       {
    #         arn: "campaignArn",
    #         name: "campaignName",
    #         description: "description",
    #         signal_catalog_arn: "arn",
    #         target_arn: "arn",
    #         status: "CREATING" # One of: ["CREATING", "WAITING_FOR_APPROVAL", "RUNNING", "SUSPENDED"],
    #         creation_time: Time.now, # required
    #         last_modification_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListCampaignsOutput]
    def list_campaigns(params = {}, options = {})
      request = build_request(:list_campaigns, params)
      request.send_request(options)
    end

    # <p> Lists the network interfaces specified in a decoder manifest. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListDecoderManifestNetworkInterfacesInput] params
    # @option params [String] :name
    #   <p> The name of the decoder manifest to list information about. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_decoder_manifest_network_interfaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_interfaces: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE" # One of: ["CAN_INTERFACE", "OBD_INTERFACE", "VEHICLE_MIDDLEWARE", "CUSTOM_DECODING_INTERFACE"], # required
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion"
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2" # One of: ["ROS_2"], # required
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         }
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListDecoderManifestNetworkInterfacesOutput]
    def list_decoder_manifest_network_interfaces(params = {}, options = {})
      request = build_request(:list_decoder_manifest_network_interfaces, params)
      request.send_request(options)
    end

    # <p> A list of information about signal decoders specified in a decoder manifest. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListDecoderManifestSignalsInput] params
    # @option params [String] :name
    #   <p> The name of the decoder manifest to list information about. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_decoder_manifest_signals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signal_decoders: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL" # One of: ["CAN_SIGNAL", "OBD_SIGNAL", "MESSAGE_SIGNAL", "CUSTOM_DECODING_SIGNAL"], # required
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             # One of:
    #             primitive_message_definition: {
    #               # One of:
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL" # One of: ["BOOL", "BYTE", "CHAR", "FLOAT32", "FLOAT64", "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "STRING", "WSTRING"], # required
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1
    #               }
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY" # One of: ["FIXED_CAPACITY", "DYNAMIC_UNBOUNDED_CAPACITY", "DYNAMIC_BOUNDED_CAPACITY"], # required
    #               capacity: 1
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         }
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListDecoderManifestSignalsOutput]
    def list_decoder_manifest_signals(params = {}, options = {})
      request = build_request(:list_decoder_manifest_signals, params)
      request.send_request(options)
    end

    # <p> Lists decoder manifests. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListDecoderManifestsInput] params
    # @option params [String] :model_manifest_arn
    #   <p> The Amazon Resource Name (ARN) of a vehicle model (model manifest) associated with
    #               the decoder manifest. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: decoder manifest name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_manifest_arn: "arn",
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY" # One of: ["METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.list_decoder_manifests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         name: "string",
    #         arn: "arn",
    #         model_manifest_arn: "arn",
    #         description: "description",
    #         status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "INVALID", "VALIDATING"],
    #         creation_time: Time.now, # required
    #         last_modification_time: Time.now, # required
    #         message: "message"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListDecoderManifestsOutput]
    def list_decoder_manifests(params = {}, options = {})
      request = build_request(:list_decoder_manifests, params)
      request.send_request(options)
    end

    # <p> Retrieves information for each created fleet in an Amazon Web Services account. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListFleetsInput] params
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: fleet ID, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY" # One of: ["METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.list_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_summaries: [
    #       {
    #         id: "fleetId", # required
    #         arn: "arn", # required
    #         description: "description",
    #         signal_catalog_arn: "arn", # required
    #         creation_time: Time.now, # required
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListFleetsOutput]
    def list_fleets(params = {}, options = {})
      request = build_request(:list_fleets, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of IDs for all fleets that the vehicle is associated with.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListFleetsForVehicleInput] params
    # @option params [String] :vehicle_name
    #   <p> The ID of the vehicle to retrieve information about. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_fleets_for_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleets: ["fleetId"],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListFleetsForVehicleOutput]
    def list_fleets_for_vehicle(params = {}, options = {})
      request = build_request(:list_fleets_for_vehicle, params)
      request.send_request(options)
    end

    # <p> Lists information about nodes specified in a vehicle model (model manifest). </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListModelManifestNodesInput] params
    # @option params [String] :name
    #   <p> The name of the vehicle model to list information about. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_model_manifest_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [{
    #       # One of:
    #       branch: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       sensor: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       actuator: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       attribute: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         default_value: "string",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       struct: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       property: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         data_encoding: "BINARY" # One of: ["BINARY", "TYPED"],
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       }
    #     }],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListModelManifestNodesOutput]
    def list_model_manifest_nodes(params = {}, options = {})
      request = build_request(:list_model_manifest_nodes, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of vehicle models (model manifests). </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListModelManifestsInput] params
    # @option params [String] :signal_catalog_arn
    #   <p> The ARN of a signal catalog. If you specify a signal catalog, only the vehicle models
    #               associated with it are returned.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: model manifest name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     signal_catalog_arn: "arn",
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY" # One of: ["METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.list_model_manifests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         name: "string",
    #         arn: "arn",
    #         signal_catalog_arn: "arn",
    #         description: "description",
    #         status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "INVALID", "VALIDATING"],
    #         creation_time: Time.now, # required
    #         last_modification_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListModelManifestsOutput]
    def list_model_manifests(params = {}, options = {})
      request = build_request(:list_model_manifests, params)
      request.send_request(options)
    end

    # <p> Lists of information about the signals (nodes) specified in a signal catalog. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListSignalCatalogNodesInput] params
    # @option params [String] :name
    #   <p> The name of the signal catalog to list information about. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :signal_node_type
    #   <p>The type of node in the signal catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #     signal_node_type: "SENSOR" # One of: ["SENSOR", "ACTUATOR", "ATTRIBUTE", "BRANCH", "CUSTOM_STRUCT", "CUSTOM_PROPERTY"]
    #   }
    #   options = {}
    #   response = client.list_signal_catalog_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [{
    #       # One of:
    #       branch: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       sensor: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       actuator: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       attribute: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         default_value: "string",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       struct: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       property: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         data_encoding: "BINARY" # One of: ["BINARY", "TYPED"],
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       }
    #     }],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListSignalCatalogNodesOutput]
    def list_signal_catalog_nodes(params = {}, options = {})
      request = build_request(:list_signal_catalog_nodes, params)
      request.send_request(options)
    end

    # <p> Lists all the created signal catalogs in an Amazon Web Services account. </p>
    #          <p>You can use  to list information about
    #             each signal (node) specified in a signal catalog.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListSignalCatalogsInput] params
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_signal_catalogs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         name: "string",
    #         arn: "arn",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListSignalCatalogsOutput]
    def list_signal_catalogs(params = {}, options = {})
      request = build_request(:list_signal_catalogs, params)
      request.send_request(options)
    end

    # <p>Lists information about created state templates.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::ListStateTemplatesRequest] params
    # @option params [String] :next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: state template ID, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY" # One of: ["METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.list_state_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         name: "resourceName",
    #         arn: "arn",
    #         signal_catalog_arn: "arn",
    #         description: "description",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now,
    #         id: "ResourceUniqueId"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListStateTemplatesResponse]
    def list_state_templates(params = {}, options = {})
      request = build_request(:list_state_templates, params)
      request.send_request(options)
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of summaries of created vehicles. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListVehiclesInput] params
    # @option params [String] :model_manifest_arn
    #   <p> The Amazon Resource Name (ARN) of a vehicle model (model manifest). You can use this optional
    #               parameter to list only the vehicles created from a certain vehicle model. </p>
    # @option params [Array<String>] :attribute_names
    #   <p>The fully qualified names of the attributes. You can use this optional parameter to list the 
    #               vehicles containing all the attributes in the request. For example, <code>attributeNames</code> 
    #               could be "<code>Vehicle.Body.Engine.Type, Vehicle.Color</code>" and the corresponding 
    #               <code>attributeValues</code> could be "<code>1.3 L R2, Blue</code>" . In this case, the API 
    #               will filter vehicles with an attribute name <code>Vehicle.Body.Engine.Type</code> that contains
    #               a value of <code>1.3 L R2</code> AND an attribute name <code>Vehicle.Color</code> that contains
    #               a value of "<code>Blue</code>". A request must contain unique values for the <code>attributeNames</code> 
    #               filter and the matching number of <code>attributeValues</code> filters to return the subset 
    #               of vehicles that match the attributes filter condition.</p>
    # @option params [Array<String>] :attribute_values
    #   <p>Static information about a vehicle attribute value in string format. You can use this optional 
    #               parameter in conjunction with <code>attributeNames</code> to list the vehicles containing all 
    #               the <code>attributeValues</code> corresponding to the <code>attributeNames</code> filter. For 
    #               example, <code>attributeValues</code> could be "<code>1.3 L R2, Blue</code>" and the corresponding 
    #               <code>attributeNames</code> filter could be "<code>Vehicle.Body.Engine.Type, Vehicle.Color</code>". 
    #               In this case, the API will filter vehicles with attribute name <code>Vehicle.Body.Engine.Type</code> 
    #               that contains a value of <code>1.3 L R2</code> AND an attribute name <code>Vehicle.Color</code> that
    #               contains a value of "<code>Blue</code>". A request must contain unique values for the 
    #               <code>attributeNames</code> filter and the matching number of <code>attributeValues</code> 
    #               filter to return the subset of vehicles that match the attributes filter condition.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @option params [String] :list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: vehicle name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_manifest_arn: "arn",
    #     attribute_names: ["attributeName"],
    #     attribute_values: ["attributeValue"],
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY" # One of: ["METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.list_vehicles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicle_summaries: [
    #       {
    #         vehicle_name: "vehicleName", # required
    #         arn: "arn", # required
    #         model_manifest_arn: "arn", # required
    #         decoder_manifest_arn: "arn", # required
    #         creation_time: Time.now, # required
    #         last_modification_time: Time.now, # required
    #         attributes: {
    #           "attributeName" => "attributeValue"
    #         }
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListVehiclesOutput]
    def list_vehicles(params = {}, options = {})
      request = build_request(:list_vehicles, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of summaries of all vehicles associated with a fleet. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the request to return more results.</p>
    #          </note>
    # @param [Hash, Types::ListVehiclesInFleetInput] params
    # @option params [String] :fleet_id
    #   <p> The ID of a fleet. </p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "fleetId", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_vehicles_in_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicles: ["vehicleName"],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListVehiclesInFleetOutput]
    def list_vehicles_in_fleet(params = {}, options = {})
      request = build_request(:list_vehicles_in_fleet, params)
      request.send_request(options)
    end

    # <p>Creates or updates the encryption configuration. Amazon Web Services IoT FleetWise can encrypt your data and
    #             resources using an Amazon Web Services managed key. Or, you can use a KMS key that you own and
    #             manage. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/data-encryption.html">Data
    #                 encryption</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    # @param [Hash, Types::PutEncryptionConfigurationRequest] params
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key that is used for encryption.</p>
    # @option params [String] :encryption_type
    #   <p>The type of encryption. Choose <code>KMS_BASED_ENCRYPTION</code> to use a KMS key or
    #                   <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an Amazon Web Services managed key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kms_key_id: "String",
    #     encryption_type: "KMS_BASED_ENCRYPTION" # One of: ["KMS_BASED_ENCRYPTION", "FLEETWISE_DEFAULT_ENCRYPTION"], # required
    #   }
    #   options = {}
    #   response = client.put_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kms_key_id: "String",
    #     encryption_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILURE"], # required
    #     encryption_type: "KMS_BASED_ENCRYPTION" # One of: ["KMS_BASED_ENCRYPTION", "FLEETWISE_DEFAULT_ENCRYPTION"], # required
    #   }
    # @return [Types::PutEncryptionConfigurationResponse]
    def put_encryption_configuration(params = {}, options = {})
      request = build_request(:put_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates the logging option.</p>
    # @param [Hash, Types::PutLoggingOptionsInput] params
    # @option params [Types::CloudWatchLogDeliveryOptions] :cloud_watch_log_delivery
    #   <p>Creates or updates the log delivery option to Amazon CloudWatch Logs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_watch_log_delivery: { # required
    #       log_type: "OFF" # One of: ["OFF", "ERROR"], # required
    #       log_group_name: "CloudWatchLogGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.put_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutLoggingOptionsOutput]
    def put_logging_options(params = {}, options = {})
      request = build_request(:put_logging_options, params)
      request.send_request(options)
    end

    # <important>
    #             <p>This API operation contains deprecated parameters. Register your account again
    #                 without the Timestream resources parameter so that Amazon Web Services IoT FleetWise can remove the Timestream
    #                 metadata stored. You should then pass the data destination into the <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CreateCampaign.html">CreateCampaign</a> API operation.</p>
    #             <p>You must delete any existing campaigns that include an empty data destination
    #                 before you register your account again. For more information, see the <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_DeleteCampaign.html">DeleteCampaign</a> API operation.</p>
    #             <p>If you want to delete the Timestream inline policy from the service-linked role, such
    #                 as to mitigate an overly permissive policy, you must first delete any existing
    #                 campaigns. Then delete the service-linked role and register your account again to
    #                 enable CloudWatch metrics. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html">DeleteServiceLinkedRole</a> in the <i>Identity and Access Management API
    #                     Reference</i>.</p>
    #          </important>
    #          <p>Registers your Amazon Web Services account, IAM, and Amazon Timestream resources so Amazon Web Services IoT FleetWise can
    #             transfer your vehicle data to the Amazon Web Services Cloud. For more information, including
    #             step-by-step procedures, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html">Setting up
    #                 Amazon Web Services IoT FleetWise</a>. </p>
    #          <note>
    #             <p>An Amazon Web Services account is <b>not</b> the same thing as a
    #                 "user." An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users">Amazon Web Services user</a> is an identity that you create using Identity and Access Management (IAM) and
    #                 takes the form of either an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html">IAM user</a> or an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM role, both
    #                     with credentials</a>. A single Amazon Web Services account can, and typically does,
    #                 contain many users and roles.</p>
    #          </note>
    # @param [Hash, Types::RegisterAccountInput] params
    # @option params [Types::TimestreamResources] :timestream_resources
    #   <p>The registered Amazon Timestream resources that Amazon Web Services IoT FleetWise edge agent software can transfer
    #               your vehicle data to.</p>
    # @option params [Types::IamResources] :iam_resources
    #   <p>The IAM resource that allows Amazon Web Services IoT FleetWise to send data to Amazon Timestream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     timestream_resources: {
    #       timestream_database_name: "TimestreamDatabaseName", # required
    #       timestream_table_name: "TimestreamTableName", # required
    #     },
    #     iam_resources: {
    #       role_arn: "IAMRoleArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.register_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     register_account_status: "REGISTRATION_PENDING" # One of: ["REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"], # required
    #     timestream_resources: {
    #       timestream_database_name: "TimestreamDatabaseName", # required
    #       timestream_table_name: "TimestreamTableName", # required
    #     },
    #     iam_resources: { # required
    #       role_arn: "IAMRoleArn", # required
    #     },
    #     creation_time: Time.now, # required
    #     last_modification_time: Time.now, # required
    #   }
    # @return [Types::RegisterAccountOutput]
    def register_account(params = {}, options = {})
      request = build_request(:register_account, params)
      request.send_request(options)
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata which can be
    #             used to manage a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Removes the given tags (metadata) from the resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p> Updates a campaign. </p>
    # @param [Hash, Types::UpdateCampaignInput] params
    # @option params [String] :name
    #   <p> The name of the campaign to update. </p>
    # @option params [String] :description
    #   <p>The description of the campaign.</p>
    # @option params [Array<String>] :data_extra_dimensions
    #   <p> A list of vehicle attributes to associate with a signal. </p>
    #            <p>Default: An empty array</p>
    # @option params [String] :action
    #   <p> Specifies how to update a campaign. The action can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APPROVE</code> - To approve delivering a data collection scheme to
    #                       vehicles. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPEND</code> - To suspend collecting signal data. The campaign is
    #                       deleted from vehicles and all vehicles in the suspended campaign will stop
    #                       sending data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESUME</code> - To reactivate the <code>SUSPEND</code> campaign. The
    #                       campaign is redeployed to all vehicles and the vehicles will resume sending
    #                       data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE</code> - To update a campaign. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "campaignName", # required
    #     description: "description",
    #     data_extra_dimensions: ["NodePath"],
    #     action: "APPROVE" # One of: ["APPROVE", "SUSPEND", "RESUME", "UPDATE"], # required
    #   }
    #   options = {}
    #   response = client.update_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "campaignArn",
    #     name: "campaignName",
    #     status: "CREATING" # One of: ["CREATING", "WAITING_FOR_APPROVAL", "RUNNING", "SUSPENDED"]
    #   }
    # @return [Types::UpdateCampaignOutput]
    def update_campaign(params = {}, options = {})
      request = build_request(:update_campaign, params)
      request.send_request(options)
    end

    # <p> Updates a decoder manifest.</p>
    #          <p>A decoder manifest can only be updated when the status is <code>DRAFT</code>. Only
    #                 <code>ACTIVE</code> decoder manifests can be associated with vehicles.</p>
    # @param [Hash, Types::UpdateDecoderManifestInput] params
    # @option params [String] :name
    #   <p> The name of the decoder manifest to update.</p>
    # @option params [String] :description
    #   <p> A brief description of the decoder manifest to update. </p>
    # @option params [Array<Types::SignalDecoder>] :signal_decoders_to_add
    #   <p> A list of information about decoding additional signals to add to the decoder
    #               manifest. </p>
    # @option params [Array<Types::SignalDecoder>] :signal_decoders_to_update
    #   <p> A list of updated information about decoding signals to update in the decoder
    #               manifest. </p>
    # @option params [Array<String>] :signal_decoders_to_remove
    #   <p> A list of signal decoders to remove from the decoder manifest. </p>
    # @option params [Array<Types::NetworkInterface>] :network_interfaces_to_add
    #   <p> A list of information about the network interfaces to add to the decoder manifest.
    #           </p>
    # @option params [Array<Types::NetworkInterface>] :network_interfaces_to_update
    #   <p> A list of information about the network interfaces to update in the decoder manifest.
    #           </p>
    # @option params [Array<String>] :network_interfaces_to_remove
    #   <p> A list of network interfaces to remove from the decoder manifest.</p>
    # @option params [String] :status
    #   <p> The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder
    #               manifest can't be edited. If the status is <code>DRAFT</code>, you can edit the decoder
    #               manifest. </p>
    # @option params [String] :default_for_unmapped_signals
    #   <p>Use default decoders for all unmapped signals in the model. You don't need to provide any detailed decoding information.</p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     signal_decoders_to_add: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL" # One of: ["CAN_SIGNAL", "OBD_SIGNAL", "MESSAGE_SIGNAL", "CUSTOM_DECODING_SIGNAL"], # required
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             # One of:
    #             primitive_message_definition: {
    #               # One of:
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL" # One of: ["BOOL", "BYTE", "CHAR", "FLOAT32", "FLOAT64", "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "STRING", "WSTRING"], # required
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1
    #               }
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY" # One of: ["FIXED_CAPACITY", "DYNAMIC_UNBOUNDED_CAPACITY", "DYNAMIC_BOUNDED_CAPACITY"], # required
    #               capacity: 1
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         }
    #       }
    #     ],
    #     signal_decoders_to_update: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL" # One of: ["CAN_SIGNAL", "OBD_SIGNAL", "MESSAGE_SIGNAL", "CUSTOM_DECODING_SIGNAL"], # required
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER" # One of: ["INTEGER", "FLOATING_POINT"]
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             # One of:
    #             primitive_message_definition: {
    #               # One of:
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL" # One of: ["BOOL", "BYTE", "CHAR", "FLOAT32", "FLOAT64", "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "STRING", "WSTRING"], # required
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1
    #               }
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY" # One of: ["FIXED_CAPACITY", "DYNAMIC_UNBOUNDED_CAPACITY", "DYNAMIC_BOUNDED_CAPACITY"], # required
    #               capacity: 1
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         }
    #       }
    #     ],
    #     signal_decoders_to_remove: ["FullyQualifiedName"],
    #     network_interfaces_to_add: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE" # One of: ["CAN_INTERFACE", "OBD_INTERFACE", "VEHICLE_MIDDLEWARE", "CUSTOM_DECODING_INTERFACE"], # required
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion"
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2" # One of: ["ROS_2"], # required
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         }
    #       }
    #     ],
    #     network_interfaces_to_update: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE" # One of: ["CAN_INTERFACE", "OBD_INTERFACE", "VEHICLE_MIDDLEWARE", "CUSTOM_DECODING_INTERFACE"], # required
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion"
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2" # One of: ["ROS_2"], # required
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         }
    #       }
    #     ],
    #     network_interfaces_to_remove: ["InterfaceId"],
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "INVALID", "VALIDATING"],
    #     default_for_unmapped_signals: "CUSTOM_DECODING" # One of: ["CUSTOM_DECODING"]
    #   }
    #   options = {}
    #   response = client.update_decoder_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::UpdateDecoderManifestOutput]
    def update_decoder_manifest(params = {}, options = {})
      request = build_request(:update_decoder_manifest, params)
      request.send_request(options)
    end

    # <p> Updates the description of an existing fleet. </p>
    # @param [Hash, Types::UpdateFleetInput] params
    # @option params [String] :fleet_id
    #   <p> The ID of the fleet to update. </p>
    # @option params [String] :description
    #   <p> An updated description of the fleet. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "fleetId", # required
    #     description: "description"
    #   }
    #   options = {}
    #   response = client.update_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "fleetId",
    #     arn: "arn"
    #   }
    # @return [Types::UpdateFleetOutput]
    def update_fleet(params = {}, options = {})
      request = build_request(:update_fleet, params)
      request.send_request(options)
    end

    # <p> Updates a vehicle model (model manifest). If created vehicles are associated with a
    #             vehicle model, it can't be updated.</p>
    # @param [Hash, Types::UpdateModelManifestInput] params
    # @option params [String] :name
    #   <p> The name of the vehicle model to update. </p>
    # @option params [String] :description
    #   <p> A brief description of the vehicle model. </p>
    # @option params [Array<String>] :nodes_to_add
    #   <p> A list of <code>fullyQualifiedName</code> of nodes, which are a general abstraction
    #               of signals, to add to the vehicle model. </p>
    # @option params [Array<String>] :nodes_to_remove
    #   <p> A list of <code>fullyQualifiedName</code> of nodes, which are a general abstraction
    #               of signals, to remove from the vehicle model. </p>
    # @option params [String] :status
    #   <p> The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle
    #               model can't be edited. If the status is <code>DRAFT</code>, you can edit the vehicle
    #               model. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes_to_add: ["NodePath"],
    #     nodes_to_remove: ["NodePath"],
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "INVALID", "VALIDATING"]
    #   }
    #   options = {}
    #   response = client.update_model_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::UpdateModelManifestOutput]
    def update_model_manifest(params = {}, options = {})
      request = build_request(:update_model_manifest, params)
      request.send_request(options)
    end

    # <p> Updates a signal catalog. </p>
    # @param [Hash, Types::UpdateSignalCatalogInput] params
    # @option params [String] :name
    #   <p> The name of the signal catalog to update. </p>
    # @option params [String] :description
    #   <p> A brief description of the signal catalog to update.</p>
    # @option params [Array<Types::Node>] :nodes_to_add
    #   <p> A list of information about nodes to add to the signal catalog. </p>
    # @option params [Array<Types::Node>] :nodes_to_update
    #   <p> A list of information about nodes to update in the signal catalog. </p>
    # @option params [Array<String>] :nodes_to_remove
    #   <p> A list of <code>fullyQualifiedName</code> of nodes to remove from the signal catalog.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes_to_add: [{
    #       # One of:
    #       branch: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       sensor: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       actuator: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       attribute: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         default_value: "string",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       struct: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       property: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         data_encoding: "BINARY" # One of: ["BINARY", "TYPED"],
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       }
    #     }],
    #     nodes_to_update: [{
    #       # One of:
    #       branch: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       sensor: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       actuator: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       },
    #       attribute: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         description: "description",
    #         unit: "string",
    #         allowed_values: ["string"],
    #         min: 1.0,
    #         max: 1.0,
    #         assigned_value: "string",
    #         default_value: "string",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       struct: {
    #         fully_qualified_name: "string", # required
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message"
    #       },
    #       property: {
    #         fully_qualified_name: "string", # required
    #         data_type: "INT8" # One of: ["INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"], # required
    #         data_encoding: "BINARY" # One of: ["BINARY", "TYPED"],
    #         description: "description",
    #         deprecation_message: "message",
    #         comment: "message",
    #         struct_fully_qualified_name: "NodePath"
    #       }
    #     }],
    #     nodes_to_remove: ["NodePath"]
    #   }
    #   options = {}
    #   response = client.update_signal_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName", # required
    #     arn: "arn", # required
    #   }
    # @return [Types::UpdateSignalCatalogOutput]
    def update_signal_catalog(params = {}, options = {})
      request = build_request(:update_signal_catalog, params)
      request.send_request(options)
    end

    # <p>Updates a state template.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::UpdateStateTemplateRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the state template.</p>
    # @option params [String] :description
    #   <p>A brief description of the state template.</p>
    # @option params [Array<String>] :state_template_properties_to_add
    #   <p>Add signals from which data is collected as part of the state template.</p>
    # @option params [Array<String>] :state_template_properties_to_remove
    #   <p>Remove signals from which data is collected as part of the state template.</p>
    # @option params [Array<String>] :data_extra_dimensions
    #   <p>A list of vehicle attributes to associate with the payload published on the state template's 
    #             MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will enrich the protobuf encoded payload with those attributes in the <code>extraDimensions</code>
    #             field.</p>
    #            <p>Default: An empty array</p>
    # @option params [Array<String>] :metadata_extra_dimensions
    #   <p>A list of vehicle attributes to associate with user properties of the messages published on the
    #             state template's MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will include these attributes as User Properties with the MQTT message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #     description: "description",
    #     state_template_properties_to_add: ["NodePath"],
    #     state_template_properties_to_remove: ["NodePath"],
    #     data_extra_dimensions: ["NodePath"],
    #     metadata_extra_dimensions: ["NodePath"]
    #   }
    #   options = {}
    #   response = client.update_state_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "resourceName",
    #     arn: "arn",
    #     id: "ResourceUniqueId"
    #   }
    # @return [Types::UpdateStateTemplateResponse]
    def update_state_template(params = {}, options = {})
      request = build_request(:update_state_template, params)
      request.send_request(options)
    end

    # <p> Updates a vehicle.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::UpdateVehicleInput] params
    # @option params [String] :vehicle_name
    #   <p>The unique ID of the vehicle to update.</p>
    # @option params [String] :model_manifest_arn
    #   <p>The ARN of a vehicle model (model manifest) associated with the vehicle.</p>
    # @option params [String] :decoder_manifest_arn
    #   <p>The ARN of the decoder manifest associated with this vehicle.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:</p>
    #            <p>
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    # @option params [String] :attribute_update_mode
    #   <p>The method the specified attributes will update the existing attributes on the
    #               vehicle. Use<code>Overwite</code> to replace the vehicle attributes with the specified
    #               attributes. Or use <code>Merge</code> to combine all attributes.</p>
    #            <p>This is required if attributes are present in the input.</p>
    # @option params [Array<Types::StateTemplateAssociation>] :state_templates_to_add
    #   <p>Associate state templates with the vehicle.</p>
    # @option params [Array<String>] :state_templates_to_remove
    #   <p>Remove state templates from the vehicle.</p>
    # @option params [Array<Types::StateTemplateAssociation>] :state_templates_to_update
    #   <p>Change the <code>stateTemplateUpdateStrategy</code> of state templates already associated with the vehicle.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vehicle_name: "vehicleName", # required
    #     model_manifest_arn: "arn",
    #     decoder_manifest_arn: "arn",
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     },
    #     attribute_update_mode: "Overwrite" # One of: ["Overwrite", "Merge"],
    #     state_templates_to_add: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           # One of:
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #               value: 1, # required
    #             }
    #           },
    #           on_change: {
    #           }
    #         }
    #       }
    #     ],
    #     state_templates_to_remove: ["ResourceIdentifier"],
    #     state_templates_to_update: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           # One of:
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND" # One of: ["MILLISECOND", "SECOND", "MINUTE", "HOUR"], # required
    #               value: 1, # required
    #             }
    #           },
    #           on_change: {
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_vehicle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vehicle_name: "vehicleName",
    #     arn: "arn"
    #   }
    # @return [Types::UpdateVehicleOutput]
    def update_vehicle(params = {}, options = {})
      request = build_request(:update_vehicle, params)
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
      context[:gem_name] = 'aws-sdk-iotfleetwise'
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
