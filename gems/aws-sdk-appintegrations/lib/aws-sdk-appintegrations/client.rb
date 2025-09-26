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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::AppIntegrations
  # An API client for Aws::AppIntegrations.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonAppIntegrationService

    add_plugin(::Aws::AppIntegrations::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    #  Custom Endpoint
    # @option options [Aws::AppIntegrations::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates and persists an Application resource.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the application.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the application.</p>
    # @option params [String] :description
    #   <p>The description of the application.</p>
    # @option params [Types::ApplicationSourceConfig] :application_source_config
    #   <p>The configuration for where the application should be loaded from.</p>
    # @option params [Array<Types::Subscription>] :subscriptions
    #   <p>The events that the application subscribes.</p>
    # @option params [Array<Types::Publication>] :publications
    #   <p>The events that the application publishes.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [Array<String>] :permissions
    #   <p>The configuration of events or requests that the application has access to.</p>
    # @option params [Boolean] :is_service
    #   <p>Indicates whether the application is a service.</p>
    # @option params [Integer] :initialization_timeout
    #   <p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>
    # @option params [Types::ApplicationConfig] :application_config
    #   <p>The configuration settings for the application.</p>
    # @option params [Types::IframeConfig] :iframe_config
    #   <p>The iframe configuration for the application.</p>
    # @example To create an application
    #   # The following creates an application named My Application with access url https://example.com.
    #   params = {
    #     name: "My Application",
    #     namespace: "myapplication",
    #     description: "My first application.",
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "https://example.com"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    #   response.to_h #=>
    #   {
    #     id: "98542c53-e8ac-4570-9c85-c6552c8d9c5e",
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApplicationName", # required
    #     namespace: "ApplicationNamespace", # required
    #     description: "Description",
    #     application_source_config: { # required
    #       external_url_config: {
    #         access_url: "URL", # required
    #         approved_origins: ["ApplicationTrustedSource"]
    #       }
    #     },
    #     subscriptions: [
    #       {
    #         event: "EventName", # required
    #         description: "Description"
    #       }
    #     ],
    #     publications: [
    #       {
    #         event: "EventName", # required
    #         schema: "EventDefinitionSchema", # required
    #         description: "Description"
    #       }
    #     ],
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     permissions: ["Permission"],
    #     is_service: false,
    #     initialization_timeout: 1,
    #     application_config: {
    #       contact_handling: {
    #         scope: "CROSS_CONTACTS" # One of: ["CROSS_CONTACTS", "PER_CONTACT"]
    #       }
    #     },
    #     iframe_config: {
    #       allow: ["IframePermission"],
    #       sandbox: ["IframePermission"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     id: "UUID"
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates and persists a DataIntegration resource.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been
    #         previously associated. Use a different DataIntegration, or recreate the DataIntegration
    #         using the <code>CreateDataIntegration</code> API.</p>
    #          </note>
    # @param [Hash, Types::CreateDataIntegrationRequest] params
    # @option params [String] :name
    #   <p>The name of the DataIntegration.</p>
    # @option params [String] :description
    #   <p>A description of the DataIntegration.</p>
    # @option params [String] :kms_key
    #   <p>The KMS key ARN for the DataIntegration.</p>
    # @option params [String] :source_uri
    #   <p>The URI of the data source.</p>
    # @option params [Types::ScheduleConfiguration] :schedule_config
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Types::FileConfiguration] :file_configuration
    #   <p>The configuration for what files should be pulled from the source.</p>
    # @option params [Hash<String, Hash<String, Array<String>>>] :object_configuration
    #   <p>The configuration for what data should be pulled from the source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     kms_key: "NonBlankString", # required
    #     source_uri: "SourceURI",
    #     schedule_config: {
    #       first_execution_from: "NonBlankString",
    #       object: "Object",
    #       schedule_expression: "NonBlankString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "IdempotencyToken",
    #     file_configuration: {
    #       folders: ["NonBlankLongString"], # required
    #       filters: {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     },
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     id: "UUID",
    #     name: "Name",
    #     description: "Description",
    #     kms_key: "NonBlankString",
    #     source_uri: "SourceURI",
    #     schedule_configuration: {
    #       first_execution_from: "NonBlankString",
    #       object: "Object",
    #       schedule_expression: "NonBlankString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "IdempotencyToken",
    #     file_configuration: {
    #       folders: ["NonBlankLongString"], # required
    #       filters: {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     },
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     }
    #   }
    # @return [Types::CreateDataIntegrationResponse]
    def create_data_integration(params = {}, options = {})
      request = build_request(:create_data_integration, params)
      request.send_request(options)
    end

    # <p>Creates and persists a DataIntegrationAssociation resource.</p>
    # @param [Hash, Types::CreateDataIntegrationAssociationRequest] params
    # @option params [String] :data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    # @option params [String] :client_id
    #   <p>The identifier for the client that is associated with the DataIntegration
    #         association.</p>
    # @option params [Hash<String, Hash<String, Array<String>>>] :object_configuration
    #   <p>The configuration for what data should be pulled from the source.</p>
    # @option params [String] :destination_uri
    #   <p>The URI of the data destination.</p>
    # @option params [Hash<String, String>] :client_association_metadata
    #   <p>The mapping of metadata to be extracted from the data.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Types::ExecutionConfiguration] :execution_configuration
    #   <p>The configuration for how the files should be pulled from the source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_integration_identifier: "Identifier", # required
    #     client_id: "ClientId",
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     },
    #     destination_uri: "DestinationURI",
    #     client_association_metadata: {
    #       "NonBlankString" => "NonBlankString"
    #     },
    #     client_token: "IdempotencyToken",
    #     execution_configuration: {
    #       execution_mode: "ON_DEMAND" # One of: ["ON_DEMAND", "SCHEDULED"], # required
    #       on_demand_configuration: {
    #         start_time: "NonBlankString", # required
    #         end_time: "NonBlankString"
    #       },
    #       schedule_configuration: {
    #         first_execution_from: "NonBlankString",
    #         object: "Object",
    #         schedule_expression: "NonBlankString", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_integration_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_integration_association_id: "UUID",
    #     data_integration_arn: "Arn"
    #   }
    # @return [Types::CreateDataIntegrationAssociationResponse]
    def create_data_integration_association(params = {}, options = {})
      request = build_request(:create_data_integration_association, params)
      request.send_request(options)
    end

    # <p>Creates an EventIntegration, given a specified name, description, and a reference to an
    #         Amazon EventBridge bus in your account and a partner event source that pushes events to
    #       that bus. No objects are created in the your account, only metadata that is persisted on the
    #       EventIntegration control plane.</p>
    # @param [Hash, Types::CreateEventIntegrationRequest] params
    # @option params [String] :name
    #   <p>The name of the event integration.</p>
    # @option params [String] :description
    #   <p>The description of the event integration.</p>
    # @option params [Types::EventFilter] :event_filter
    #   <p>The event filter.</p>
    # @option params [String] :event_bridge_bus
    #   <p>The EventBridge bus.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     event_filter: { # required
    #       source: "Source", # required
    #     },
    #     event_bridge_bus: "EventBridgeBus", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_event_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_integration_arn: "Arn"
    #   }
    # @return [Types::CreateEventIntegrationResponse]
    def create_event_integration(params = {}, options = {})
      request = build_request(:create_event_integration, params)
      request.send_request(options)
    end

    # <p>Deletes the Application. Only Applications that don't have any Application Associations
    #       can be deleted.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    # @example To delete an application
    #   # The following deletes an application.
    #   params = {
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e"
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ArnOrUUID", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes the DataIntegration. Only DataIntegrations that don't have any
    #       DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the
    #       underlying Amazon AppFlow flow and service linked role. </p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.  
    # Use a different DataIntegration, or recreate the DataIntegration using the 
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    # @param [Hash, Types::DeleteDataIntegrationRequest] params
    # @option params [String] :data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_integration_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_data_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataIntegrationResponse]
    def delete_data_integration(params = {}, options = {})
      request = build_request(:delete_data_integration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified existing event integration. If the event integration is associated
    #       with clients, the request is rejected.</p>
    # @param [Hash, Types::DeleteEventIntegrationRequest] params
    # @option params [String] :name
    #   <p>The name of the event integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.delete_event_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventIntegrationResponse]
    def delete_event_integration(params = {}, options = {})
      request = build_request(:delete_event_integration, params)
      request.send_request(options)
    end

    # <p>Get an Application resource.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    # @example To get an application
    #   # The following retrives an application.
    #   params = {
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e"
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    #   response.to_h #=>
    #   {
    #     name: "My Application",
    #     namespace: "myapplication",
    #     description: "My first application.",
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "https://example.com"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ArnOrUUID", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     id: "UUID",
    #     name: "ApplicationName",
    #     namespace: "ApplicationNamespace",
    #     description: "Description",
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "URL", # required
    #         approved_origins: ["ApplicationTrustedSource"]
    #       }
    #     },
    #     subscriptions: [
    #       {
    #         event: "EventName", # required
    #         description: "Description"
    #       }
    #     ],
    #     publications: [
    #       {
    #         event: "EventName", # required
    #         schema: "EventDefinitionSchema", # required
    #         description: "Description"
    #       }
    #     ],
    #     created_time: Time.now,
    #     last_modified_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     permissions: ["Permission"],
    #     is_service: false,
    #     initialization_timeout: 1,
    #     application_config: {
    #       contact_handling: {
    #         scope: "CROSS_CONTACTS" # One of: ["CROSS_CONTACTS", "PER_CONTACT"]
    #       }
    #     },
    #     iframe_config: {
    #       allow: ["IframePermission"],
    #       sandbox: ["IframePermission"]
    #     }
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Returns information about the DataIntegration.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.  
    # Use a different DataIntegration, or recreate the DataIntegration using the 
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    # @param [Hash, Types::GetDataIntegrationRequest] params
    # @option params [String] :identifier
    #   <p>A unique identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_data_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     id: "UUID",
    #     name: "Name",
    #     description: "Description",
    #     kms_key: "NonBlankString",
    #     source_uri: "SourceURI",
    #     schedule_configuration: {
    #       first_execution_from: "NonBlankString",
    #       object: "Object",
    #       schedule_expression: "NonBlankString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     file_configuration: {
    #       folders: ["NonBlankLongString"], # required
    #       filters: {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     },
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"]
    #       }
    #     }
    #   }
    # @return [Types::GetDataIntegrationResponse]
    def get_data_integration(params = {}, options = {})
      request = build_request(:get_data_integration, params)
      request.send_request(options)
    end

    # <p>Returns information about the event integration.</p>
    # @param [Hash, Types::GetEventIntegrationRequest] params
    # @option params [String] :name
    #   <p>The name of the event integration. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #   }
    #   options = {}
    #   response = client.get_event_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name",
    #     description: "Description",
    #     event_integration_arn: "Arn",
    #     event_bridge_bus: "EventBridgeBus",
    #     event_filter: {
    #       source: "Source", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetEventIntegrationResponse]
    def get_event_integration(params = {}, options = {})
      request = build_request(:get_event_integration, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of application associations for an application.</p>
    # @param [Hash, Types::ListApplicationAssociationsRequest] params
    # @option params [String] :application_id
    #   <p>A unique identifier for the Application.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example To list application associations of an application
    #   # The following retrives application associations of an application
    #   params = {
    #     application_id: "98542c53-e8ac-4570-9c85-c6552c8d9c5e"
    #   }
    #   options = {}
    #   response = client.list_application_associations(params, options)
    #   response.to_h #=>
    #   {
    #     application_associations: [
    #       {
    #         application_arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e",
    #         application_association_arn: "arn:aws:app-integrations:us-west-2:0123456789012:application-association/98542c53-e8ac-4570-9c85-c6552c8d9c5e/461dfb57-320a-454d-9bba-bb560845ff38",
    #         client_id: "connect.amazonaws.com"
    #       }
    #     ],
    #     next_token: "abc"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ArnOrUUID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_application_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_associations: [
    #       {
    #         application_association_arn: "Arn",
    #         application_arn: "Arn",
    #         client_id: "ClientId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationAssociationsResponse]
    def list_application_associations(params = {}, options = {})
      request = build_request(:list_application_associations, params)
      request.send_request(options)
    end

    # <p>Lists applications in the account.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example To list applications in the account
    #   # The following lists application summary in the account.
    #   params = {
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         id: "98542c53-e8ac-4570-9c85-c6552c8d9c5e",
    #         arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e",
    #         name: "My Application",
    #         namespace: "myapplication"
    #       }
    #     ],
    #     next_token: "abc"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         arn: "Arn",
    #         id: "UUID",
    #         name: "ApplicationName",
    #         namespace: "ApplicationNamespace",
    #         created_time: Time.now,
    #         last_modified_time: Time.now,
    #         is_service: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of DataIntegration associations in the account.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.  
    # Use a different DataIntegration, or recreate the DataIntegration using the 
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    # @param [Hash, Types::ListDataIntegrationAssociationsRequest] params
    # @option params [String] :data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_integration_identifier: "Identifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_integration_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_integration_associations: [
    #       {
    #         data_integration_association_arn: "Arn",
    #         data_integration_arn: "Arn",
    #         client_id: "ClientId",
    #         destination_uri: "DestinationURI",
    #         last_execution_status: {
    #           execution_status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED"],
    #           status_message: "NonBlankString"
    #         },
    #         execution_configuration: {
    #           execution_mode: "ON_DEMAND" # One of: ["ON_DEMAND", "SCHEDULED"], # required
    #           on_demand_configuration: {
    #             start_time: "NonBlankString", # required
    #             end_time: "NonBlankString"
    #           },
    #           schedule_configuration: {
    #             first_execution_from: "NonBlankString",
    #             object: "Object",
    #             schedule_expression: "NonBlankString", # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataIntegrationAssociationsResponse]
    def list_data_integration_associations(params = {}, options = {})
      request = build_request(:list_data_integration_associations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of DataIntegrations in the account.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.  
    # Use a different DataIntegration, or recreate the DataIntegration using the 
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    # @param [Hash, Types::ListDataIntegrationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_integrations: [
    #       {
    #         arn: "Arn",
    #         name: "Name",
    #         source_uri: "SourceURI"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataIntegrationsResponse]
    def list_data_integrations(params = {}, options = {})
      request = build_request(:list_data_integrations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of event integration associations in the account. </p>
    # @param [Hash, Types::ListEventIntegrationAssociationsRequest] params
    # @option params [String] :event_integration_name
    #   <p>The name of the event integration. </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_integration_name: "Name", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_integration_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_integration_associations: [
    #       {
    #         event_integration_association_arn: "Arn",
    #         event_integration_association_id: "UUID",
    #         event_integration_name: "Name",
    #         client_id: "ClientId",
    #         event_bridge_rule_name: "EventBridgeRuleName",
    #         client_association_metadata: {
    #           "NonBlankString" => "NonBlankString"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventIntegrationAssociationsResponse]
    def list_event_integration_associations(params = {}, options = {})
      request = build_request(:list_event_integration_associations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of event integrations in the account.</p>
    # @param [Hash, Types::ListEventIntegrationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_integrations: [
    #       {
    #         event_integration_arn: "Arn",
    #         name: "Name",
    #         description: "Description",
    #         event_filter: {
    #           source: "Source", # required
    #         },
    #         event_bridge_bus: "EventBridgeBus",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventIntegrationsResponse]
    def list_event_integrations(params = {}, options = {})
      request = build_request(:list_event_integrations, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates and persists an Application resource.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Application.</p>
    # @option params [String] :name
    #   <p>The name of the application.</p>
    # @option params [String] :description
    #   <p>The description of the application.</p>
    # @option params [Types::ApplicationSourceConfig] :application_source_config
    #   <p>The configuration for where the application should be loaded from.</p>
    # @option params [Array<Types::Subscription>] :subscriptions
    #   <p>The events that the application subscribes.</p>
    # @option params [Array<Types::Publication>] :publications
    #   <p>The events that the application publishes.</p>
    # @option params [Array<String>] :permissions
    #   <p>The configuration of events or requests that the application has access to.</p>
    # @option params [Boolean] :is_service
    #   <p>Indicates whether the application is a service.</p>
    # @option params [Integer] :initialization_timeout
    #   <p>The maximum time in milliseconds allowed to establish a connection with the workspace.</p>
    # @option params [Types::ApplicationConfig] :application_config
    #   <p>The configuration settings for the application.</p>
    # @option params [Types::IframeConfig] :iframe_config
    #   <p>The iframe configuration for the application.</p>
    # @example To update an application
    #   # The following updates an existing application named with a new name.
    #   params = {
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e",
    #     name: "My New Application Name"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ArnOrUUID", # required
    #     name: "ApplicationName",
    #     description: "Description",
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "URL", # required
    #         approved_origins: ["ApplicationTrustedSource"]
    #       }
    #     },
    #     subscriptions: [
    #       {
    #         event: "EventName", # required
    #         description: "Description"
    #       }
    #     ],
    #     publications: [
    #       {
    #         event: "EventName", # required
    #         schema: "EventDefinitionSchema", # required
    #         description: "Description"
    #       }
    #     ],
    #     permissions: ["Permission"],
    #     is_service: false,
    #     initialization_timeout: 1,
    #     application_config: {
    #       contact_handling: {
    #         scope: "CROSS_CONTACTS" # One of: ["CROSS_CONTACTS", "PER_CONTACT"]
    #       }
    #     },
    #     iframe_config: {
    #       allow: ["IframePermission"],
    #       sandbox: ["IframePermission"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates the description of a DataIntegration.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.  
    # Use a different DataIntegration, or recreate the DataIntegration using the 
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    # @param [Hash, Types::UpdateDataIntegrationRequest] params
    # @option params [String] :identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    # @option params [String] :name
    #   <p>The name of the DataIntegration.</p>
    # @option params [String] :description
    #   <p>A description of the DataIntegration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     name: "Name",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_data_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataIntegrationResponse]
    def update_data_integration(params = {}, options = {})
      request = build_request(:update_data_integration, params)
      request.send_request(options)
    end

    # <p>Updates and persists a DataIntegrationAssociation resource.</p>
    #          <note>
    #             <p>
    #       Updating a DataIntegrationAssociation with ExecutionConfiguration will rerun the on-demand job.
    #       </p>
    #          </note>
    # @param [Hash, Types::UpdateDataIntegrationAssociationRequest] params
    # @option params [String] :data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    # @option params [String] :data_integration_association_identifier
    #   <p>A unique identifier. of the DataIntegrationAssociation resource</p>
    # @option params [Types::ExecutionConfiguration] :execution_configuration
    #   <p>The configuration for how the files should be pulled from the source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_integration_identifier: "Identifier", # required
    #     data_integration_association_identifier: "Identifier", # required
    #     execution_configuration: { # required
    #       execution_mode: "ON_DEMAND" # One of: ["ON_DEMAND", "SCHEDULED"], # required
    #       on_demand_configuration: {
    #         start_time: "NonBlankString", # required
    #         end_time: "NonBlankString"
    #       },
    #       schedule_configuration: {
    #         first_execution_from: "NonBlankString",
    #         object: "Object",
    #         schedule_expression: "NonBlankString", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_integration_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataIntegrationAssociationResponse]
    def update_data_integration_association(params = {}, options = {})
      request = build_request(:update_data_integration_association, params)
      request.send_request(options)
    end

    # <p>Updates the description of an event integration.</p>
    # @param [Hash, Types::UpdateEventIntegrationRequest] params
    # @option params [String] :name
    #   <p>The name of the event integration.</p>
    # @option params [String] :description
    #   <p>The description of the event integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_event_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEventIntegrationResponse]
    def update_event_integration(params = {}, options = {})
      request = build_request(:update_event_integration, params)
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
      context[:gem_name] = 'aws-sdk-appintegrations'
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
