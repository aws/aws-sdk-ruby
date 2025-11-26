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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iottwinmaker)

module Aws::IoTTwinMaker
  # An API client for Aws::IoTTwinMaker.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIoTTwinMaker
    @identifier = :iottwinmaker

    add_plugin(::Aws::IoTTwinMaker::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTTwinMaker::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Sets values for multiple time series properties.</p>
    # @param [Hash, Types::BatchPutPropertyValuesInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the properties to set.</p>
    # @option params [Array<Types::PropertyValueEntry>] :entries
    #   <p>An object that maps strings to the property value entries to set. Each string in the
    #            mapping must be unique to this object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entries: [ # required
    #       {
    #         entity_property_reference: { # required
    #           component_name: "Name",
    #           component_path: "ComponentPath",
    #           external_id_property: {
    #             "String" => "String"
    #           },
    #           entity_id: "EntityId",
    #           property_name: "Name", # required
    #         },
    #         property_values: [
    #           {
    #             timestamp: Time.now,
    #             value: { # required
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             time: "Time"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_property_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [ # required
    #       {
    #         errors: [ # required
    #           {
    #             error_code: "String", # required
    #             error_message: "String", # required
    #             entry: { # required
    #               entity_property_reference: { # required
    #                 component_name: "Name",
    #                 component_path: "ComponentPath",
    #                 external_id_property: {
    #                   "String" => "String"
    #                 },
    #                 entity_id: "EntityId",
    #                 property_name: "Name", # required
    #               },
    #               property_values: [
    #                 {
    #                   timestamp: Time.now,
    #                   value: { # required
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: "String",
    #                     list_value: [
    #                       {
    #                         # recursive DataValue
    #                       }
    #                     ],
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       }
    #                     },
    #                     relationship_value: {
    #                       target_entity_id: "EntityId",
    #                       target_component_name: "Name"
    #                     },
    #                     expression: "Expression"
    #                   },
    #                   time: "Time"
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutPropertyValuesOutput]
    def batch_put_property_values(params = {}, options = {})
      request = build_request(:batch_put_property_values, params)
      request.send_request(options)
    end

    # <p>Cancels the metadata transfer job.</p>
    # @param [Hash, Types::CancelMetadataTransferJobRequest] params
    # @option params [String] :metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metadata_transfer_job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.cancel_metadata_transfer_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata_transfer_job_id: "Id", # required
    #     arn: "TwinMakerArn", # required
    #     update_date_time: Time.now, # required
    #     status: { # required
    #       state: "MetadataTransferJobState",
    #       error: {
    #         code: "ErrorCode",
    #         message: "ErrorMessage"
    #       },
    #       queued_position: 1
    #     },
    #     progress: {
    #       total_count: 1,
    #       succeeded_count: 1,
    #       skipped_count: 1,
    #       failed_count: 1
    #     }
    #   }
    # @return [Types::CancelMetadataTransferJobResponse]
    def cancel_metadata_transfer_job(params = {}, options = {})
      request = build_request(:cancel_metadata_transfer_job, params)
      request.send_request(options)
    end

    # <p>Creates a component type.</p>
    # @param [Hash, Types::CreateComponentTypeInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    # @option params [Boolean] :is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    # @option params [String] :description
    #   <p>The description of the component type.</p>
    # @option params [Hash<String, Types::PropertyDefinitionRequest>] :property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each
    #            string in the mapping must be unique to this object.</p>
    # @option params [Array<String>] :extends_from
    #   <p>Specifies the parent component type to extend.</p>
    # @option params [Hash<String, Types::FunctionRequest>] :functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the component type.</p>
    # @option params [Hash<String, Types::PropertyGroupRequest>] :property_groups
    #   <p/>
    # @option params [String] :component_type_name
    #   <p>A friendly name for the component type.</p>
    # @option params [Hash<String, Types::CompositeComponentTypeRequest>] :composite_component_types
    #   <p>This is an object that maps strings to <code>compositeComponentTypes</code> of the <code>componentType</code>. 
    #             <code>CompositeComponentType</code> is referenced by <code>componentTypeId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     is_singleton: false,
    #     component_type_id: "ComponentTypeId", # required
    #     description: "Description",
    #     property_definitions: {
    #       "Name" => {
    #         data_type: {
    #           type: "Type", # required
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             }
    #           ],
    #           unit_of_measure: "String",
    #           relationship: {
    #             target_component_type_id: "ComponentTypeId",
    #             relationship_type: "String"
    #           }
    #         },
    #         is_required_in_entity: false,
    #         is_external_id: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #         default_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: "String",
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             }
    #           ],
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             }
    #           },
    #           relationship_value: {
    #             target_entity_id: "EntityId",
    #             target_component_name: "Name"
    #           },
    #           expression: "Expression"
    #         },
    #         configuration: {
    #           "Name" => "Value"
    #         },
    #         display_name: "PropertyDisplayName"
    #       }
    #     },
    #     extends_from: ["ComponentTypeId"],
    #     functions: {
    #       "Name" => {
    #         required_properties: ["Name"],
    #         scope: "Scope",
    #         implemented_by: {
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           },
    #           is_native: false
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     property_groups: {
    #       "Name" => {
    #         group_type: "GroupType",
    #         property_names: ["Name"]
    #       }
    #     },
    #     component_type_name: "ComponentTypeName",
    #     composite_component_types: {
    #       "Name" => {
    #         component_type_id: "ComponentTypeId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_component_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #     state: "State", # required
    #   }
    # @return [Types::CreateComponentTypeOutput]
    def create_component_type(params = {}, options = {})
      request = build_request(:create_component_type, params)
      request.send_request(options)
    end

    # <p>Creates an entity.</p>
    # @param [Hash, Types::CreateEntityInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    # @option params [String] :entity_name
    #   <p>The name of the entity.</p>
    # @option params [String] :description
    #   <p>The description of the entity.</p>
    # @option params [Hash<String, Types::ComponentRequest>] :components
    #   <p>An object that maps strings to the components in the entity. Each string in the mapping
    #            must be unique to this object.</p>
    # @option params [Hash<String, Types::CompositeComponentRequest>] :composite_components
    #   <p>This is an object that maps strings to <code>compositeComponent</code> updates in the request. 
    #             Each key of the map represents the <code>componentPath</code> of the <code>compositeComponent</code>.</p>
    # @option params [String] :parent_entity_id
    #   <p>The ID of the entity's parent entity.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the entity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entity_id: "EntityId",
    #     entity_name: "EntityName", # required
    #     description: "Description",
    #     components: {
    #       "Name" => {
    #         description: "Description",
    #         component_type_id: "ComponentTypeId",
    #         properties: {
    #           "Name" => {
    #             definition: {
    #               data_type: {
    #                 type: "Type", # required
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: "String",
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       }
    #                     },
    #                     relationship_value: {
    #                       target_entity_id: "EntityId",
    #                       target_component_name: "Name"
    #                     },
    #                     expression: "Expression"
    #                   }
    #                 ],
    #                 unit_of_measure: "String",
    #                 relationship: {
    #                   target_component_type_id: "ComponentTypeId",
    #                   relationship_type: "String"
    #                 }
    #               },
    #               is_required_in_entity: false,
    #               is_external_id: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 integer_value: 1,
    #                 long_value: 1,
    #                 string_value: "String",
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   }
    #                 ],
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   }
    #                 },
    #                 relationship_value: {
    #                   target_entity_id: "EntityId",
    #                   target_component_name: "Name"
    #                 },
    #                 expression: "Expression"
    #               },
    #               configuration: {
    #                 "Name" => "Value"
    #               },
    #               display_name: "PropertyDisplayName"
    #             },
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             update_type: "PropertyUpdateType"
    #           }
    #         },
    #         property_groups: {
    #           "Name" => {
    #             group_type: "GroupType",
    #             property_names: ["Name"],
    #             update_type: "PropertyGroupUpdateType"
    #           }
    #         }
    #       }
    #     },
    #     composite_components: {
    #       "ComponentPath" => {
    #         description: "Description",
    #         properties: {
    #           "Name" => {
    #             definition: {
    #               data_type: {
    #                 type: "Type", # required
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: "String",
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       }
    #                     },
    #                     relationship_value: {
    #                       target_entity_id: "EntityId",
    #                       target_component_name: "Name"
    #                     },
    #                     expression: "Expression"
    #                   }
    #                 ],
    #                 unit_of_measure: "String",
    #                 relationship: {
    #                   target_component_type_id: "ComponentTypeId",
    #                   relationship_type: "String"
    #                 }
    #               },
    #               is_required_in_entity: false,
    #               is_external_id: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 integer_value: 1,
    #                 long_value: 1,
    #                 string_value: "String",
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   }
    #                 ],
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   }
    #                 },
    #                 relationship_value: {
    #                   target_entity_id: "EntityId",
    #                   target_component_name: "Name"
    #                 },
    #                 expression: "Expression"
    #               },
    #               configuration: {
    #                 "Name" => "Value"
    #               },
    #               display_name: "PropertyDisplayName"
    #             },
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             update_type: "PropertyUpdateType"
    #           }
    #         },
    #         property_groups: {
    #           "Name" => {
    #             group_type: "GroupType",
    #             property_names: ["Name"],
    #             update_type: "PropertyGroupUpdateType"
    #           }
    #         }
    #       }
    #     },
    #     parent_entity_id: "ParentEntityId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_id: "EntityId", # required
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #     state: "State", # required
    #   }
    # @return [Types::CreateEntityOutput]
    def create_entity(params = {}, options = {})
      request = build_request(:create_entity, params)
      request.send_request(options)
    end

    # <p>Creates a new metadata transfer job.</p>
    # @param [Hash, Types::CreateMetadataTransferJobRequest] params
    # @option params [String] :metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    # @option params [String] :description
    #   <p>The metadata transfer job description.</p>
    # @option params [Array<Types::SourceConfiguration>] :sources
    #   <p>The metadata transfer job sources.</p>
    # @option params [Types::DestinationConfiguration] :destination
    #   <p>The metadata transfer job destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metadata_transfer_job_id: "Id",
    #     description: "Description",
    #     sources: [ # required
    #       {
    #         type: "SourceType", # required
    #         s3_configuration: {
    #           location: "S3SourceLocation", # required
    #         },
    #         iot_site_wise_configuration: {
    #           filters: [{
    #             # One of:
    #             filter_by_asset_model: {
    #               asset_model_id: "Uuid",
    #               asset_model_external_id: "SiteWiseExternalId",
    #               include_offspring: false,
    #               include_assets: false
    #             },
    #             filter_by_asset: {
    #               asset_id: "Uuid",
    #               asset_external_id: "SiteWiseExternalId",
    #               include_offspring: false,
    #               include_asset_model: false
    #             }
    #           }]
    #         },
    #         iot_twin_maker_configuration: {
    #           workspace: "TwinMakerArn", # required
    #           filters: [{
    #             # One of:
    #             filter_by_component_type: {
    #               component_type_id: "ComponentTypeId", # required
    #             },
    #             filter_by_entity: {
    #               entity_id: "EntityId", # required
    #             }
    #           }]
    #         }
    #       }
    #     ],
    #     destination: { # required
    #       type: "DestinationType", # required
    #       s3_configuration: {
    #         location: "S3DestinationLocation", # required
    #       },
    #       iot_twin_maker_configuration: {
    #         workspace: "TwinMakerArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_metadata_transfer_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata_transfer_job_id: "Id", # required
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #     status: { # required
    #       state: "MetadataTransferJobState",
    #       error: {
    #         code: "ErrorCode",
    #         message: "ErrorMessage"
    #       },
    #       queued_position: 1
    #     }
    #   }
    # @return [Types::CreateMetadataTransferJobResponse]
    def create_metadata_transfer_job(params = {}, options = {})
      request = build_request(:create_metadata_transfer_job, params)
      request.send_request(options)
    end

    # <p>Creates a scene.</p>
    # @param [Hash, Types::CreateSceneInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    # @option params [String] :scene_id
    #   <p>The ID of the scene.</p>
    # @option params [String] :content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    # @option params [String] :description
    #   <p>The description for this scene.</p>
    # @option params [Array<String>] :capabilities
    #   <p>A list of capabilities that the scene uses to render itself.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the scene.</p>
    # @option params [Hash<String, String>] :scene_metadata
    #   <p>The request metadata.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     scene_id: "Id", # required
    #     content_location: "S3Url", # required
    #     description: "Description",
    #     capabilities: ["SceneCapability"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     scene_metadata: {
    #       "Name" => "SceneMetadataValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scene(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #   }
    # @return [Types::CreateSceneOutput]
    def create_scene(params = {}, options = {})
      request = build_request(:create_scene, params)
      request.send_request(options)
    end

    # <p>This action creates a SyncJob.</p>
    # @param [Hash, Types::CreateSyncJobInput] params
    # @option params [String] :workspace_id
    #   <p>The workspace ID.</p>
    # @option params [String] :sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSoource is <code>SITEWISE </code>.</p>
    #            </note>
    # @option params [String] :sync_role
    #   <p>The SyncJob IAM role. This IAM role is used by the SyncJob to read from the syncSource,
    #            and create, update, or delete the corresponding resources.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The SyncJob tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     sync_source: "SyncSource", # required
    #     sync_role: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #     state: "SyncJobState", # required
    #   }
    # @return [Types::CreateSyncJobOutput]
    def create_sync_job(params = {}, options = {})
      request = build_request(:create_sync_job, params)
      request.send_request(options)
    end

    # <p>Creates a workplace.</p>
    # @param [Hash, Types::CreateWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [String] :description
    #   <p>The description of the workspace.</p>
    # @option params [String] :s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are
    #            stored.</p>
    # @option params [String] :role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the workspace</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     description: "Description",
    #     s3_location: "S3Location",
    #     role: "RoleArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #   }
    # @return [Types::CreateWorkspaceOutput]
    def create_workspace(params = {}, options = {})
      request = build_request(:create_workspace, params)
      request.send_request(options)
    end

    # <p>Deletes a component type.</p>
    # @param [Hash, Types::DeleteComponentTypeInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    # @option params [String] :component_type_id
    #   <p>The ID of the component type to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     component_type_id: "ComponentTypeId", # required
    #   }
    #   options = {}
    #   response = client.delete_component_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "State", # required
    #   }
    # @return [Types::DeleteComponentTypeOutput]
    def delete_component_type(params = {}, options = {})
      request = build_request(:delete_component_type, params)
      request.send_request(options)
    end

    # <p>Deletes an entity.</p>
    # @param [Hash, Types::DeleteEntityInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the entity to delete.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the entity to delete.</p>
    # @option params [Boolean] :is_recursive
    #   <p>A Boolean value that specifies whether the operation deletes child entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entity_id: "EntityId", # required
    #     is_recursive: false
    #   }
    #   options = {}
    #   response = client.delete_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "State", # required
    #   }
    # @return [Types::DeleteEntityOutput]
    def delete_entity(params = {}, options = {})
      request = build_request(:delete_entity, params)
      request.send_request(options)
    end

    # <p>Deletes a scene.</p>
    # @param [Hash, Types::DeleteSceneInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [String] :scene_id
    #   <p>The ID of the scene to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     scene_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_scene(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSceneOutput]
    def delete_scene(params = {}, options = {})
      request = build_request(:delete_scene, params)
      request.send_request(options)
    end

    # <p>Delete the SyncJob.</p>
    # @param [Hash, Types::DeleteSyncJobInput] params
    # @option params [String] :workspace_id
    #   <p>The workspace ID.</p>
    # @option params [String] :sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     sync_source: "SyncSource", # required
    #   }
    #   options = {}
    #   response = client.delete_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "SyncJobState", # required
    #   }
    # @return [Types::DeleteSyncJobOutput]
    def delete_sync_job(params = {}, options = {})
      request = build_request(:delete_sync_job, params)
      request.send_request(options)
    end

    # <p>Deletes a workspace.</p>
    # @param [Hash, Types::DeleteWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "WorkspaceDeleteMessage"
    #   }
    # @return [Types::DeleteWorkspaceOutput]
    def delete_workspace(params = {}, options = {})
      request = build_request(:delete_workspace, params)
      request.send_request(options)
    end

    # <p>Run queries to access information from your knowledge graph of entities within
    #          individual workspaces.</p>
    #          <note>
    #             <p>The ExecuteQuery action only works with <a href="https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/home.html">Amazon Web Services Java SDK2</a>.
    #          ExecuteQuery will not work with any Amazon Web Services Java SDK version &lt; 2.x.</p>
    #          </note>
    # @param [Hash, Types::ExecuteQueryInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [String] :query_statement
    #   <p>The query statement.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 50.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     query_statement: "QueryStatement", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.execute_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     column_descriptions: [
    #       {
    #         name: "ColumnName",
    #         type: "ColumnType"
    #       }
    #     ],
    #     rows: [
    #       {
    #         row_data: [""null""]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ExecuteQueryOutput]
    def execute_query(params = {}, options = {})
      request = build_request(:execute_query, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a component type.</p>
    # @param [Hash, Types::GetComponentTypeInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     component_type_id: "ComponentTypeId", # required
    #   }
    #   options = {}
    #   response = client.get_component_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_id: "Id", # required
    #     is_singleton: false,
    #     component_type_id: "ComponentTypeId", # required
    #     description: "Description",
    #     property_definitions: {
    #       "Name" => {
    #         data_type: { # required
    #           type: "Type", # required
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             }
    #           ],
    #           unit_of_measure: "String",
    #           relationship: {
    #             target_component_type_id: "ComponentTypeId",
    #             relationship_type: "String"
    #           }
    #         },
    #         is_time_series: false, # required
    #         is_required_in_entity: false, # required
    #         is_external_id: false, # required
    #         is_stored_externally: false, # required
    #         is_imported: false, # required
    #         is_final: false, # required
    #         is_inherited: false, # required
    #         default_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: "String",
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             }
    #           ],
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             }
    #           },
    #           relationship_value: {
    #             target_entity_id: "EntityId",
    #             target_component_name: "Name"
    #           },
    #           expression: "Expression"
    #         },
    #         configuration: {
    #           "Name" => "Value"
    #         },
    #         display_name: "PropertyDisplayName"
    #       }
    #     },
    #     extends_from: ["ComponentTypeId"],
    #     functions: {
    #       "Name" => {
    #         required_properties: ["Name"],
    #         scope: "Scope",
    #         implemented_by: {
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           },
    #           is_native: false
    #         },
    #         is_inherited: false
    #       }
    #     },
    #     creation_date_time: Time.now, # required
    #     update_date_time: Time.now, # required
    #     arn: "TwinMakerArn", # required
    #     is_abstract: false,
    #     is_schema_initialized: false,
    #     status: {
    #       state: "State",
    #       error: {
    #         code: "ErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     },
    #     property_groups: {
    #       "Name" => {
    #         group_type: "GroupType", # required
    #         property_names: ["Name"], # required
    #         is_inherited: false, # required
    #       }
    #     },
    #     sync_source: "SyncSource",
    #     component_type_name: "ComponentTypeName",
    #     composite_component_types: {
    #       "Name" => {
    #         component_type_id: "ComponentTypeId",
    #         is_inherited: false
    #       }
    #     }
    #   }
    # @return [Types::GetComponentTypeOutput]
    def get_component_type(params = {}, options = {})
      request = build_request(:get_component_type, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an entity.</p>
    # @param [Hash, Types::GetEntityInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entity_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_id: "EntityId", # required
    #     entity_name: "EntityName", # required
    #     arn: "TwinMakerArn", # required
    #     status: { # required
    #       state: "State",
    #       error: {
    #         code: "ErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     },
    #     workspace_id: "Id", # required
    #     description: "Description",
    #     components: {
    #       "Name" => {
    #         component_name: "Name",
    #         description: "Description",
    #         component_type_id: "ComponentTypeId",
    #         status: {
    #           state: "State",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           }
    #         },
    #         defined_in: "String",
    #         properties: {
    #           "Name" => {
    #             definition: {
    #               data_type: { # required
    #                 type: "Type", # required
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: "String",
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       }
    #                     },
    #                     relationship_value: {
    #                       target_entity_id: "EntityId",
    #                       target_component_name: "Name"
    #                     },
    #                     expression: "Expression"
    #                   }
    #                 ],
    #                 unit_of_measure: "String",
    #                 relationship: {
    #                   target_component_type_id: "ComponentTypeId",
    #                   relationship_type: "String"
    #                 }
    #               },
    #               is_time_series: false, # required
    #               is_required_in_entity: false, # required
    #               is_external_id: false, # required
    #               is_stored_externally: false, # required
    #               is_imported: false, # required
    #               is_final: false, # required
    #               is_inherited: false, # required
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 integer_value: 1,
    #                 long_value: 1,
    #                 string_value: "String",
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   }
    #                 ],
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   }
    #                 },
    #                 relationship_value: {
    #                   target_entity_id: "EntityId",
    #                   target_component_name: "Name"
    #                 },
    #                 expression: "Expression"
    #               },
    #               configuration: {
    #                 "Name" => "Value"
    #               },
    #               display_name: "PropertyDisplayName"
    #             },
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             are_all_property_values_returned: false
    #           }
    #         },
    #         property_groups: {
    #           "Name" => {
    #             group_type: "GroupType", # required
    #             property_names: ["Name"], # required
    #             is_inherited: false, # required
    #           }
    #         },
    #         sync_source: "SyncSource",
    #         are_all_properties_returned: false,
    #         composite_components: {
    #           "Name" => {
    #             component_name: "Name", # required
    #             component_type_id: "ComponentTypeId", # required
    #             defined_in: "String",
    #             description: "Description",
    #             property_groups: {
    #               "Name" => {
    #                 group_type: "GroupType", # required
    #                 property_names: ["Name"], # required
    #                 is_inherited: false, # required
    #               }
    #             },
    #             status: { # required
    #               state: "State",
    #               error: {
    #                 code: "ErrorCode",
    #                 message: "ErrorMessage"
    #               }
    #             },
    #             sync_source: "SyncSource",
    #             component_path: "ComponentPath"
    #           }
    #         },
    #         are_all_composite_components_returned: false
    #       }
    #     },
    #     parent_entity_id: "ParentEntityId", # required
    #     has_child_entities: false, # required
    #     creation_date_time: Time.now, # required
    #     update_date_time: Time.now, # required
    #     sync_source: "SyncSource",
    #     are_all_components_returned: false
    #   }
    # @return [Types::GetEntityOutput]
    def get_entity(params = {}, options = {})
      request = build_request(:get_entity, params)
      request.send_request(options)
    end

    # <p>Gets a nmetadata transfer job.</p>
    # @param [Hash, Types::GetMetadataTransferJobRequest] params
    # @option params [String] :metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metadata_transfer_job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_metadata_transfer_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata_transfer_job_id: "Id", # required
    #     arn: "TwinMakerArn", # required
    #     description: "Description",
    #     sources: [ # required
    #       {
    #         type: "SourceType", # required
    #         s3_configuration: {
    #           location: "S3SourceLocation", # required
    #         },
    #         iot_site_wise_configuration: {
    #           filters: [{
    #             # One of:
    #             filter_by_asset_model: {
    #               asset_model_id: "Uuid",
    #               asset_model_external_id: "SiteWiseExternalId",
    #               include_offspring: false,
    #               include_assets: false
    #             },
    #             filter_by_asset: {
    #               asset_id: "Uuid",
    #               asset_external_id: "SiteWiseExternalId",
    #               include_offspring: false,
    #               include_asset_model: false
    #             }
    #           }]
    #         },
    #         iot_twin_maker_configuration: {
    #           workspace: "TwinMakerArn", # required
    #           filters: [{
    #             # One of:
    #             filter_by_component_type: {
    #               component_type_id: "ComponentTypeId", # required
    #             },
    #             filter_by_entity: {
    #               entity_id: "EntityId", # required
    #             }
    #           }]
    #         }
    #       }
    #     ],
    #     destination: { # required
    #       type: "DestinationType", # required
    #       s3_configuration: {
    #         location: "S3DestinationLocation", # required
    #       },
    #       iot_twin_maker_configuration: {
    #         workspace: "TwinMakerArn", # required
    #       }
    #     },
    #     metadata_transfer_job_role: "RoleArn", # required
    #     report_url: "String",
    #     creation_date_time: Time.now, # required
    #     update_date_time: Time.now, # required
    #     status: { # required
    #       state: "MetadataTransferJobState",
    #       error: {
    #         code: "ErrorCode",
    #         message: "ErrorMessage"
    #       },
    #       queued_position: 1
    #     },
    #     progress: {
    #       total_count: 1,
    #       succeeded_count: 1,
    #       skipped_count: 1,
    #       failed_count: 1
    #     }
    #   }
    # @return [Types::GetMetadataTransferJobResponse]
    def get_metadata_transfer_job(params = {}, options = {})
      request = build_request(:get_metadata_transfer_job, params)
      request.send_request(options)
    end

    # <p>Gets the pricing plan.</p>
    # @param [Hash, Types::GetPricingPlanInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_pricing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     current_pricing_plan: { # required
    #       billable_entity_count: 1,
    #       bundle_information: {
    #         bundle_names: ["BundleName"], # required
    #         pricing_tier: "PricingTier"
    #       },
    #       effective_date_time: Time.now, # required
    #       pricing_mode: "PricingMode", # required
    #       update_date_time: Time.now, # required
    #       update_reason: "UpdateReason", # required
    #     },
    #     pending_pricing_plan: {
    #       billable_entity_count: 1,
    #       bundle_information: {
    #         bundle_names: ["BundleName"], # required
    #         pricing_tier: "PricingTier"
    #       },
    #       effective_date_time: Time.now, # required
    #       pricing_mode: "PricingMode", # required
    #       update_date_time: Time.now, # required
    #       update_reason: "UpdateReason", # required
    #     }
    #   }
    # @return [Types::GetPricingPlanOutput]
    def get_pricing_plan(params = {}, options = {})
      request = build_request(:get_pricing_plan, params)
      request.send_request(options)
    end

    # <p>Gets the property values for a component, component type, entity, or workspace.</p>
    #          <p>You must specify a value for either <code>componentName</code>,
    #             <code>componentTypeId</code>, <code>entityId</code>, or <code>workspaceId</code>.</p>
    # @param [Hash, Types::GetPropertyValueInput] params
    # @option params [String] :component_name
    #   <p>The name of the component whose property values the operation returns.</p>
    # @option params [String] :component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    # @option params [String] :component_type_id
    #   <p>The ID of the component type whose property values the operation returns.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the entity whose property values the operation returns.</p>
    # @option params [Array<String>] :selected_properties
    #   <p>The properties whose values the operation returns.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace whose values the operation returns.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @option params [String] :property_group_name
    #   <p>The property group name.</p>
    # @option params [Types::TabularConditions] :tabular_conditions
    #   <p>The tabular conditions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     component_name: "Name",
    #     component_path: "ComponentPath",
    #     component_type_id: "ComponentTypeId",
    #     entity_id: "EntityId",
    #     selected_properties: ["String"], # required
    #     workspace_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     property_group_name: "Name",
    #     tabular_conditions: {
    #       order_by: [
    #         {
    #           order: "Order",
    #           property_name: "String", # required
    #         }
    #       ],
    #       property_filters: [
    #         {
    #           property_name: "String",
    #           operator: "String",
    #           value: {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             integer_value: 1,
    #             long_value: 1,
    #             string_value: "String",
    #             list_value: [
    #               {
    #                 # recursive DataValue
    #               }
    #             ],
    #             map_value: {
    #               "String" => {
    #                 # recursive DataValue
    #               }
    #             },
    #             relationship_value: {
    #               target_entity_id: "EntityId",
    #               target_component_name: "Name"
    #             },
    #             expression: "Expression"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.get_property_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     property_values: {
    #       "Name" => {
    #         property_reference: { # required
    #           component_name: "Name",
    #           component_path: "ComponentPath",
    #           external_id_property: {
    #             "String" => "String"
    #           },
    #           entity_id: "EntityId",
    #           property_name: "Name", # required
    #         },
    #         property_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: "String",
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             }
    #           ],
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             }
    #           },
    #           relationship_value: {
    #             target_entity_id: "EntityId",
    #             target_component_name: "Name"
    #           },
    #           expression: "Expression"
    #         }
    #       }
    #     },
    #     next_token: "NextToken",
    #     tabular_property_values: [
    #       [
    #         {
    #           "Name" => {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             integer_value: 1,
    #             long_value: 1,
    #             string_value: "String",
    #             list_value: [
    #               {
    #                 # recursive DataValue
    #               }
    #             ],
    #             map_value: {
    #               "String" => {
    #                 # recursive DataValue
    #               }
    #             },
    #             relationship_value: {
    #               target_entity_id: "EntityId",
    #               target_component_name: "Name"
    #             },
    #             expression: "Expression"
    #           }
    #         }
    #       ]
    #     ]
    #   }
    # @return [Types::GetPropertyValueOutput]
    def get_property_value(params = {}, options = {})
      request = build_request(:get_property_value, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the history of a time series property value for a component,
    #          component type, entity, or workspace.</p>
    #          <p>You must specify a value for <code>workspaceId</code>. For entity-specific queries,
    #          specify values for <code>componentName</code> and <code>entityId</code>. For cross-entity
    #          quries, specify a value for <code>componentTypeId</code>.</p>
    # @param [Hash, Types::GetPropertyValueHistoryInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    # @option params [Array<String>] :selected_properties
    #   <p>A list of properties whose value histories the request retrieves.</p>
    # @option params [Array<Types::PropertyFilter>] :property_filters
    #   <p>A list of objects that filter the property value history request.</p>
    # @option params [Time] :start_date_time
    #   <p>The date and time of the earliest property value to return.</p>
    # @option params [Time] :end_date_time
    #   <p>The date and time of the latest property value to return.</p>
    # @option params [Types::InterpolationParameters] :interpolation
    #   <p>An object that specifies the interpolation type and the interval over which to
    #            interpolate data.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    # @option params [String] :order_by_time
    #   <p>The time direction to use in the result order.</p>
    # @option params [String] :start_time
    #   <p>The ISO8601 DateTime of the earliest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html">PropertyValue</a>.</p>
    # @option params [String] :end_time
    #   <p>The ISO8601 DateTime of the latest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html">PropertyValue</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entity_id: "EntityId",
    #     component_name: "Name",
    #     component_path: "ComponentPath",
    #     component_type_id: "ComponentTypeId",
    #     selected_properties: ["String"], # required
    #     property_filters: [
    #       {
    #         property_name: "String",
    #         operator: "String",
    #         value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: "String",
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             }
    #           ],
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             }
    #           },
    #           relationship_value: {
    #             target_entity_id: "EntityId",
    #             target_component_name: "Name"
    #           },
    #           expression: "Expression"
    #         }
    #       }
    #     ],
    #     start_date_time: Time.now,
    #     end_date_time: Time.now,
    #     interpolation: {
    #       interpolation_type: "InterpolationType",
    #       interval_in_seconds: 1
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     order_by_time: "OrderByTime",
    #     start_time: "Time",
    #     end_time: "Time"
    #   }
    #   options = {}
    #   response = client.get_property_value_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     property_values: [ # required
    #       {
    #         entity_property_reference: { # required
    #           component_name: "Name",
    #           component_path: "ComponentPath",
    #           external_id_property: {
    #             "String" => "String"
    #           },
    #           entity_id: "EntityId",
    #           property_name: "Name", # required
    #         },
    #         values: [
    #           {
    #             timestamp: Time.now,
    #             value: { # required
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             time: "Time"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetPropertyValueHistoryOutput]
    def get_property_value_history(params = {}, options = {})
      request = build_request(:get_property_value_history, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a scene.</p>
    # @param [Hash, Types::GetSceneInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    # @option params [String] :scene_id
    #   <p>The ID of the scene.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     scene_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_scene(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_id: "Id", # required
    #     scene_id: "Id", # required
    #     content_location: "S3Url", # required
    #     arn: "TwinMakerArn", # required
    #     creation_date_time: Time.now, # required
    #     update_date_time: Time.now, # required
    #     description: "Description",
    #     capabilities: ["SceneCapability"],
    #     scene_metadata: {
    #       "Name" => "SceneMetadataValue"
    #     },
    #     generated_scene_metadata: {
    #       "Name" => "SceneMetadataValue"
    #     },
    #     error: {
    #       code: "SceneErrorCode",
    #       message: "ErrorMessage"
    #     }
    #   }
    # @return [Types::GetSceneOutput]
    def get_scene(params = {}, options = {})
      request = build_request(:get_scene, params)
      request.send_request(options)
    end

    # <p>Gets the SyncJob.</p>
    # @param [Hash, Types::GetSyncJobInput] params
    # @option params [String] :sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    # @option params [String] :workspace_id
    #   <p>The workspace ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_source: "SyncSource", # required
    #     workspace_id: "Id"
    #   }
    #   options = {}
    #   response = client.get_sync_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TwinMakerArn", # required
    #     workspace_id: "Id", # required
    #     sync_source: "SyncSource", # required
    #     sync_role: "RoleArn", # required
    #     status: { # required
    #       state: "SyncJobState",
    #       error: {
    #         code: "ErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     },
    #     creation_date_time: Time.now, # required
    #     update_date_time: Time.now, # required
    #   }
    # @return [Types::GetSyncJobOutput]
    def get_sync_job(params = {}, options = {})
      request = build_request(:get_sync_job, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a workspace.</p>
    # @param [Hash, Types::GetWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "IdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_id: "Id", # required
    #     arn: "TwinMakerArn", # required
    #     description: "Description",
    #     linked_services: ["LinkedService"],
    #     s3_location: "S3Location",
    #     role: "RoleArn",
    #     creation_date_time: Time.now, # required
    #     update_date_time: Time.now, # required
    #   }
    # @return [Types::GetWorkspaceOutput]
    def get_workspace(params = {}, options = {})
      request = build_request(:get_workspace, params)
      request.send_request(options)
    end

    # <p>Lists all component types in a workspace.</p>
    # @param [Hash, Types::ListComponentTypesInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [Array<Types::ListComponentTypesFilter>] :filters
    #   <p>A list of objects that filter the request.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     filters: [{
    #       # One of:
    #       extends_from: "ComponentTypeId",
    #       namespace: "String",
    #       is_abstract: false
    #     }],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_component_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_id: "Id", # required
    #     component_type_summaries: [ # required
    #       {
    #         arn: "TwinMakerArn", # required
    #         component_type_id: "ComponentTypeId", # required
    #         creation_date_time: Time.now, # required
    #         update_date_time: Time.now, # required
    #         description: "Description",
    #         status: {
    #           state: "State",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           }
    #         },
    #         component_type_name: "ComponentTypeName"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    # @return [Types::ListComponentTypesOutput]
    def list_component_types(params = {}, options = {})
      request = build_request(:list_component_types, params)
      request.send_request(options)
    end

    # <p>This API lists the components of an entity.</p>
    # @param [Hash, Types::ListComponentsRequest] params
    # @option params [String] :workspace_id
    #   <p>The workspace ID.</p>
    # @option params [String] :entity_id
    #   <p>The ID for the entity whose metadata (component/properties) is returned by the operation.</p>
    # @option params [String] :component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entity_id: "EntityId", # required
    #     component_path: "ComponentPath",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component_summaries: [ # required
    #       {
    #         component_name: "Name", # required
    #         component_type_id: "ComponentTypeId", # required
    #         defined_in: "String",
    #         description: "Description",
    #         property_groups: {
    #           "Name" => {
    #             group_type: "GroupType", # required
    #             property_names: ["Name"], # required
    #             is_inherited: false, # required
    #           }
    #         },
    #         status: { # required
    #           state: "State",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           }
    #         },
    #         sync_source: "SyncSource",
    #         component_path: "ComponentPath"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComponentsResponse]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p>Lists all entities in a workspace.</p>
    # @param [Hash, Types::ListEntitiesInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [Array<Types::ListEntitiesFilter>] :filters
    #   <p>A list of objects that filter the request.</p>
    #            <note>
    #               <p>Only one object is accepted as a valid input.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     filters: [{
    #       # One of:
    #       parent_entity_id: "ParentEntityId",
    #       component_type_id: "ComponentTypeId",
    #       external_id: "String"
    #     }],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_summaries: [
    #       {
    #         entity_id: "EntityId", # required
    #         entity_name: "EntityName", # required
    #         arn: "TwinMakerArn", # required
    #         parent_entity_id: "ParentEntityId",
    #         status: { # required
    #           state: "State",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           }
    #         },
    #         description: "Description",
    #         has_child_entities: false,
    #         creation_date_time: Time.now, # required
    #         update_date_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEntitiesOutput]
    def list_entities(params = {}, options = {})
      request = build_request(:list_entities, params)
      request.send_request(options)
    end

    # <p>Lists the metadata transfer jobs.</p>
    # @param [Hash, Types::ListMetadataTransferJobsRequest] params
    # @option params [String] :source_type
    #   <p>The metadata transfer job's source type.</p>
    # @option params [String] :destination_type
    #   <p>The metadata transfer job's destination type.</p>
    # @option params [Array<Types::ListMetadataTransferJobsFilter>] :filters
    #   <p>An object that filters metadata transfer jobs.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_type: "SourceType", # required
    #     destination_type: "DestinationType", # required
    #     filters: [{
    #       # One of:
    #       workspace_id: "Id",
    #       state: "MetadataTransferJobState"
    #     }],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_metadata_transfer_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata_transfer_job_summaries: [ # required
    #       {
    #         metadata_transfer_job_id: "Id", # required
    #         arn: "TwinMakerArn", # required
    #         creation_date_time: Time.now, # required
    #         update_date_time: Time.now, # required
    #         status: { # required
    #           state: "MetadataTransferJobState",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           },
    #           queued_position: 1
    #         },
    #         progress: {
    #           total_count: 1,
    #           succeeded_count: 1,
    #           skipped_count: 1,
    #           failed_count: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMetadataTransferJobsResponse]
    def list_metadata_transfer_jobs(params = {}, options = {})
      request = build_request(:list_metadata_transfer_jobs, params)
      request.send_request(options)
    end

    # <p>This API lists the properties of a component.</p>
    # @param [Hash, Types::ListPropertiesRequest] params
    # @option params [String] :workspace_id
    #   <p>The workspace ID.</p>
    # @option params [String] :component_name
    #   <p>The name of the component whose properties are returned by the operation.</p>
    # @option params [String] :component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    # @option params [String] :entity_id
    #   <p>The ID for the entity whose metadata (component/properties) is returned by the operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     component_name: "Name",
    #     component_path: "ComponentPath",
    #     entity_id: "EntityId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     property_summaries: [ # required
    #       {
    #         definition: {
    #           data_type: { # required
    #             type: "Type", # required
    #             nested_type: {
    #               # recursive DataType
    #             },
    #             allowed_values: [
    #               {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 integer_value: 1,
    #                 long_value: 1,
    #                 string_value: "String",
    #                 list_value: {
    #                   # recursive DataValueList
    #                 },
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   }
    #                 },
    #                 relationship_value: {
    #                   target_entity_id: "EntityId",
    #                   target_component_name: "Name"
    #                 },
    #                 expression: "Expression"
    #               }
    #             ],
    #             unit_of_measure: "String",
    #             relationship: {
    #               target_component_type_id: "ComponentTypeId",
    #               relationship_type: "String"
    #             }
    #           },
    #           is_time_series: false, # required
    #           is_required_in_entity: false, # required
    #           is_external_id: false, # required
    #           is_stored_externally: false, # required
    #           is_imported: false, # required
    #           is_final: false, # required
    #           is_inherited: false, # required
    #           default_value: {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             integer_value: 1,
    #             long_value: 1,
    #             string_value: "String",
    #             list_value: [
    #               {
    #                 # recursive DataValue
    #               }
    #             ],
    #             map_value: {
    #               "String" => {
    #                 # recursive DataValue
    #               }
    #             },
    #             relationship_value: {
    #               target_entity_id: "EntityId",
    #               target_component_name: "Name"
    #             },
    #             expression: "Expression"
    #           },
    #           configuration: {
    #             "Name" => "Value"
    #           },
    #           display_name: "PropertyDisplayName"
    #         },
    #         property_name: "Name", # required
    #         value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: "String",
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             }
    #           ],
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             }
    #           },
    #           relationship_value: {
    #             target_entity_id: "EntityId",
    #             target_component_name: "Name"
    #           },
    #           expression: "Expression"
    #         },
    #         are_all_property_values_returned: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPropertiesResponse]
    def list_properties(params = {}, options = {})
      request = build_request(:list_properties, params)
      request.send_request(options)
    end

    # <p>Lists all scenes in a workspace.</p>
    # @param [Hash, Types::ListScenesInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scenes.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to display.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_scenes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scene_summaries: [
    #       {
    #         scene_id: "Id", # required
    #         content_location: "S3Url", # required
    #         arn: "TwinMakerArn", # required
    #         creation_date_time: Time.now, # required
    #         update_date_time: Time.now, # required
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListScenesOutput]
    def list_scenes(params = {}, options = {})
      request = build_request(:list_scenes, params)
      request.send_request(options)
    end

    # <p>List all SyncJobs.</p>
    # @param [Hash, Types::ListSyncJobsInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the sync job.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 50.</p>
    #            <p>Valid Range: Minimum value of 0. Maximum value of 200.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sync_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_job_summaries: [
    #       {
    #         arn: "TwinMakerArn",
    #         workspace_id: "Id",
    #         sync_source: "SyncSource",
    #         status: {
    #           state: "SyncJobState",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           }
    #         },
    #         creation_date_time: Time.now,
    #         update_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSyncJobsOutput]
    def list_sync_jobs(params = {}, options = {})
      request = build_request(:list_sync_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the sync resources.</p>
    # @param [Hash, Types::ListSyncResourcesInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the sync job.</p>
    # @option params [String] :sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    # @option params [Array<Types::SyncResourceFilter>] :filters
    #   <p>A list of objects that filter the request.</p>
    #            <p>The following filter combinations are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>Filter with state</p>
    #               </li>
    #               <li>
    #                  <p>Filter with ResourceType and ResourceId</p>
    #               </li>
    #               <li>
    #                  <p>Filter with ResourceType and ExternalId</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 50.</p>
    #            <p>Valid Range: Minimum value of 0. Maximum value of 200.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     sync_source: "SyncSource", # required
    #     filters: [{
    #       # One of:
    #       state: "SyncResourceState",
    #       resource_type: "SyncResourceType",
    #       resource_id: "Id",
    #       external_id: "Id"
    #     }],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sync_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_resources: [
    #       {
    #         resource_type: "SyncResourceType",
    #         external_id: "Id",
    #         resource_id: "Id",
    #         status: {
    #           state: "SyncResourceState",
    #           error: {
    #             code: "ErrorCode",
    #             message: "ErrorMessage"
    #           }
    #         },
    #         update_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSyncResourcesOutput]
    def list_sync_resources(params = {}, options = {})
      request = build_request(:list_sync_resources, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TwinMakerArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves information about workspaces in the current account.</p>
    # @param [Hash, Types::ListWorkspacesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_summaries: [
    #       {
    #         workspace_id: "Id", # required
    #         arn: "TwinMakerArn", # required
    #         description: "Description",
    #         linked_services: ["LinkedService"],
    #         creation_date_time: Time.now, # required
    #         update_date_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkspacesOutput]
    def list_workspaces(params = {}, options = {})
      request = build_request(:list_workspaces, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to add to this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TwinMakerArn", # required
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

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both
    #            the key and its associated value are removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TwinMakerArn", # required
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

    # <p>Updates information in a component type.</p>
    # @param [Hash, Types::UpdateComponentTypeInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [Boolean] :is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    # @option params [String] :description
    #   <p>The description of the component type.</p>
    # @option params [Hash<String, Types::PropertyDefinitionRequest>] :property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each
    #            string in the mapping must be unique to this object.</p>
    # @option params [Array<String>] :extends_from
    #   <p>Specifies the component type that this component type extends.</p>
    # @option params [Hash<String, Types::FunctionRequest>] :functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    # @option params [Hash<String, Types::PropertyGroupRequest>] :property_groups
    #   <p>The property groups.</p>
    # @option params [String] :component_type_name
    #   <p>The component type name.</p>
    # @option params [Hash<String, Types::CompositeComponentTypeRequest>] :composite_component_types
    #   <p>This is an object that maps strings to <code>compositeComponentTypes</code> of the <code>componentType</code>. 
    #             <code>CompositeComponentType</code> is referenced by <code>componentTypeId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     is_singleton: false,
    #     component_type_id: "ComponentTypeId", # required
    #     description: "Description",
    #     property_definitions: {
    #       "Name" => {
    #         data_type: {
    #           type: "Type", # required
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             }
    #           ],
    #           unit_of_measure: "String",
    #           relationship: {
    #             target_component_type_id: "ComponentTypeId",
    #             relationship_type: "String"
    #           }
    #         },
    #         is_required_in_entity: false,
    #         is_external_id: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #         default_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: "String",
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             }
    #           ],
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             }
    #           },
    #           relationship_value: {
    #             target_entity_id: "EntityId",
    #             target_component_name: "Name"
    #           },
    #           expression: "Expression"
    #         },
    #         configuration: {
    #           "Name" => "Value"
    #         },
    #         display_name: "PropertyDisplayName"
    #       }
    #     },
    #     extends_from: ["ComponentTypeId"],
    #     functions: {
    #       "Name" => {
    #         required_properties: ["Name"],
    #         scope: "Scope",
    #         implemented_by: {
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           },
    #           is_native: false
    #         }
    #       }
    #     },
    #     property_groups: {
    #       "Name" => {
    #         group_type: "GroupType",
    #         property_names: ["Name"]
    #       }
    #     },
    #     component_type_name: "ComponentTypeName",
    #     composite_component_types: {
    #       "Name" => {
    #         component_type_id: "ComponentTypeId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_component_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_id: "Id", # required
    #     arn: "TwinMakerArn", # required
    #     component_type_id: "ComponentTypeId", # required
    #     state: "State", # required
    #   }
    # @return [Types::UpdateComponentTypeOutput]
    def update_component_type(params = {}, options = {})
      request = build_request(:update_component_type, params)
      request.send_request(options)
    end

    # <p>Updates an entity.</p>
    # @param [Hash, Types::UpdateEntityInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    # @option params [String] :entity_name
    #   <p>The name of the entity.</p>
    # @option params [String] :description
    #   <p>The description of the entity.</p>
    # @option params [Hash<String, Types::ComponentUpdateRequest>] :component_updates
    #   <p>An object that maps strings to the component updates in the request. Each string in the
    #            mapping must be unique to this object.</p>
    # @option params [Hash<String, Types::CompositeComponentUpdateRequest>] :composite_component_updates
    #   <p>This is an object that maps strings to <code>compositeComponent</code> updates in the request. Each key 
    #             of the map represents the <code>componentPath</code> of the <code>compositeComponent</code>.</p>
    # @option params [Types::ParentEntityUpdateRequest] :parent_entity_update
    #   <p>An object that describes the update request for a parent entity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     entity_id: "EntityId", # required
    #     entity_name: "EntityName",
    #     description: "Description",
    #     component_updates: {
    #       "Name" => {
    #         update_type: "ComponentUpdateType",
    #         description: "Description",
    #         component_type_id: "ComponentTypeId",
    #         property_updates: {
    #           "Name" => {
    #             definition: {
    #               data_type: {
    #                 type: "Type", # required
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: "String",
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       }
    #                     },
    #                     relationship_value: {
    #                       target_entity_id: "EntityId",
    #                       target_component_name: "Name"
    #                     },
    #                     expression: "Expression"
    #                   }
    #                 ],
    #                 unit_of_measure: "String",
    #                 relationship: {
    #                   target_component_type_id: "ComponentTypeId",
    #                   relationship_type: "String"
    #                 }
    #               },
    #               is_required_in_entity: false,
    #               is_external_id: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 integer_value: 1,
    #                 long_value: 1,
    #                 string_value: "String",
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   }
    #                 ],
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   }
    #                 },
    #                 relationship_value: {
    #                   target_entity_id: "EntityId",
    #                   target_component_name: "Name"
    #                 },
    #                 expression: "Expression"
    #               },
    #               configuration: {
    #                 "Name" => "Value"
    #               },
    #               display_name: "PropertyDisplayName"
    #             },
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             update_type: "PropertyUpdateType"
    #           }
    #         },
    #         property_group_updates: {
    #           "Name" => {
    #             group_type: "GroupType",
    #             property_names: ["Name"],
    #             update_type: "PropertyGroupUpdateType"
    #           }
    #         }
    #       }
    #     },
    #     composite_component_updates: {
    #       "ComponentPath" => {
    #         update_type: "ComponentUpdateType",
    #         description: "Description",
    #         property_updates: {
    #           "Name" => {
    #             definition: {
    #               data_type: {
    #                 type: "Type", # required
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: "String",
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       }
    #                     },
    #                     relationship_value: {
    #                       target_entity_id: "EntityId",
    #                       target_component_name: "Name"
    #                     },
    #                     expression: "Expression"
    #                   }
    #                 ],
    #                 unit_of_measure: "String",
    #                 relationship: {
    #                   target_component_type_id: "ComponentTypeId",
    #                   relationship_type: "String"
    #                 }
    #               },
    #               is_required_in_entity: false,
    #               is_external_id: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 integer_value: 1,
    #                 long_value: 1,
    #                 string_value: "String",
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   }
    #                 ],
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   }
    #                 },
    #                 relationship_value: {
    #                   target_entity_id: "EntityId",
    #                   target_component_name: "Name"
    #                 },
    #                 expression: "Expression"
    #               },
    #               configuration: {
    #                 "Name" => "Value"
    #               },
    #               display_name: "PropertyDisplayName"
    #             },
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: "String",
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 }
    #               ],
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 }
    #               },
    #               relationship_value: {
    #                 target_entity_id: "EntityId",
    #                 target_component_name: "Name"
    #               },
    #               expression: "Expression"
    #             },
    #             update_type: "PropertyUpdateType"
    #           }
    #         },
    #         property_group_updates: {
    #           "Name" => {
    #             group_type: "GroupType",
    #             property_names: ["Name"],
    #             update_type: "PropertyGroupUpdateType"
    #           }
    #         }
    #       }
    #     },
    #     parent_entity_update: {
    #       update_type: "ParentEntityUpdateType", # required
    #       parent_entity_id: "ParentEntityId"
    #     }
    #   }
    #   options = {}
    #   response = client.update_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_date_time: Time.now, # required
    #     state: "State", # required
    #   }
    # @return [Types::UpdateEntityOutput]
    def update_entity(params = {}, options = {})
      request = build_request(:update_entity, params)
      request.send_request(options)
    end

    # <p>Update the pricing plan.</p>
    # @param [Hash, Types::UpdatePricingPlanInput] params
    # @option params [String] :pricing_mode
    #   <p>The pricing mode.</p>
    # @option params [Array<String>] :bundle_names
    #   <p>The bundle names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pricing_mode: "PricingMode", # required
    #     bundle_names: ["BundleName"]
    #   }
    #   options = {}
    #   response = client.update_pricing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     current_pricing_plan: { # required
    #       billable_entity_count: 1,
    #       bundle_information: {
    #         bundle_names: ["BundleName"], # required
    #         pricing_tier: "PricingTier"
    #       },
    #       effective_date_time: Time.now, # required
    #       pricing_mode: "PricingMode", # required
    #       update_date_time: Time.now, # required
    #       update_reason: "UpdateReason", # required
    #     },
    #     pending_pricing_plan: {
    #       billable_entity_count: 1,
    #       bundle_information: {
    #         bundle_names: ["BundleName"], # required
    #         pricing_tier: "PricingTier"
    #       },
    #       effective_date_time: Time.now, # required
    #       pricing_mode: "PricingMode", # required
    #       update_date_time: Time.now, # required
    #       update_reason: "UpdateReason", # required
    #     }
    #   }
    # @return [Types::UpdatePricingPlanOutput]
    def update_pricing_plan(params = {}, options = {})
      request = build_request(:update_pricing_plan, params)
      request.send_request(options)
    end

    # <p>Updates a scene.</p>
    # @param [Hash, Types::UpdateSceneInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    # @option params [String] :scene_id
    #   <p>The ID of the scene.</p>
    # @option params [String] :content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    # @option params [String] :description
    #   <p>The description of this scene.</p>
    # @option params [Array<String>] :capabilities
    #   <p>A list of capabilities that the scene uses to render.</p>
    # @option params [Hash<String, String>] :scene_metadata
    #   <p>The scene metadata.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     scene_id: "Id", # required
    #     content_location: "S3Url",
    #     description: "Description",
    #     capabilities: ["SceneCapability"],
    #     scene_metadata: {
    #       "Name" => "SceneMetadataValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_scene(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_date_time: Time.now, # required
    #   }
    # @return [Types::UpdateSceneOutput]
    def update_scene(params = {}, options = {})
      request = build_request(:update_scene, params)
      request.send_request(options)
    end

    # <p>Updates a workspace.</p>
    # @param [Hash, Types::UpdateWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    # @option params [String] :description
    #   <p>The description of the workspace.</p>
    # @option params [String] :role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    # @option params [String] :s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are
    #            stored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "Id", # required
    #     description: "Description",
    #     role: "RoleArn",
    #     s3_location: "S3Location"
    #   }
    #   options = {}
    #   response = client.update_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_date_time: Time.now, # required
    #   }
    # @return [Types::UpdateWorkspaceOutput]
    def update_workspace(params = {}, options = {})
      request = build_request(:update_workspace, params)
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
      context[:gem_name] = 'aws-sdk-iottwinmaker'
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
