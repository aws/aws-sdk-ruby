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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:kafkaconnect)

module Aws::KafkaConnect
  # An API client for Aws::KafkaConnect.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::KafkaConnect
    @identifier = :kafkaconnect

    add_plugin(::Aws::KafkaConnect::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::KafkaConnect::EndpointProvider)
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

    # <p>Creates a connector using the specified properties. </p>
    # @param [Hash, Types::CreateConnectorRequest] params
    # @option params [Types::Capacity] :capacity
    #   <p>Information about the capacity allocated to the connector. Exactly one of the two properties must be specified.</p>
    # @option params [Hash<String, String>] :connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    # @option params [String] :connector_description
    #   <p>A summary description of the connector.</p>
    # @option params [String] :connector_name
    #   <p>The name of the connector.</p>
    # @option params [Types::KafkaCluster] :kafka_cluster
    #   <p>Specifies which Apache Kafka cluster to connect to.</p>
    # @option params [Types::KafkaClusterClientAuthentication] :kafka_cluster_client_authentication
    #   <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    # @option params [Types::KafkaClusterEncryptionInTransit] :kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    # @option params [String] :kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.</p>
    # @option params [Types::LogDelivery] :log_delivery
    #   <p>Details about log delivery.</p>
    # @option params [String] :network_type
    #   <p>The network type of the connector. It gives connectors connectivity to either IPv4 (IPV4) or IPv4 and IPv6 (DUAL) destinations. Defaults to IPV4.</p>
    # @option params [Array<Types::Plugin>] :plugins
    #   <important> <p>Amazon MSK Connect does not currently support specifying multiple plugins as a list. To use more than one plugin for your connector, you can create a single custom plugin using a ZIP file that bundles multiple plugins together.</p> </important> <p>Specifies which plugin to use for the connector. You must specify a single-element list containing one <code>customPlugin</code> object.</p>
    # @option params [String] :service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.</p>
    # @option params [Types::WorkerConfiguration] :worker_configuration
    #   <p>Specifies which worker configuration to use with the connector.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags you want to attach to the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity: { # required
    #       auto_scaling: {
    #         max_worker_count: 1, # required
    #         mcu_count: 1, # required
    #         min_worker_count: 1, # required
    #         scale_in_policy: {
    #           cpu_utilization_percentage: 1, # required
    #         },
    #         scale_out_policy: {
    #           cpu_utilization_percentage: 1, # required
    #         },
    #         max_autoscaling_task_count: 1
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1, # required
    #         worker_count: 1, # required
    #       }
    #     },
    #     connector_configuration: { # required
    #       "__string" => "__string"
    #     },
    #     connector_description: "__stringMax1024",
    #     connector_name: "__stringMin1Max128", # required
    #     kafka_cluster: { # required
    #       apache_kafka_cluster: { # required
    #         bootstrap_servers: "__string", # required
    #         vpc: { # required
    #           security_groups: ["__string"],
    #           subnets: ["__string"], # required
    #         }
    #       }
    #     },
    #     kafka_cluster_client_authentication: { # required
    #       authentication_type: "KafkaClusterClientAuthenticationType", # required
    #     },
    #     kafka_cluster_encryption_in_transit: { # required
    #       encryption_type: "KafkaClusterEncryptionInTransitType", # required
    #     },
    #     kafka_connect_version: "__string", # required
    #     log_delivery: {
    #       worker_log_delivery: { # required
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: "__string"
    #         },
    #         firehose: {
    #           delivery_stream: "__string",
    #           enabled: false, # required
    #         },
    #         s3: {
    #           bucket: "__string",
    #           enabled: false, # required
    #           prefix: "__string"
    #         }
    #       }
    #     },
    #     network_type: "NetworkType",
    #     plugins: [ # required
    #       {
    #         custom_plugin: { # required
    #           custom_plugin_arn: "__string", # required
    #           revision: 1, # required
    #         }
    #       }
    #     ],
    #     service_execution_role_arn: "__string", # required
    #     worker_configuration: {
    #       revision: 1, # required
    #       worker_configuration_arn: "__string", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "__string",
    #     connector_name: "__string",
    #     connector_state: "ConnectorState"
    #   }
    # @return [Types::CreateConnectorOutput]
    def create_connector(params = {}, options = {})
      request = build_request(:create_connector, params)
      request.send_request(options)
    end

    # <p>Creates a custom plugin using the specified properties.</p>
    # @param [Hash, Types::CreateCustomPluginRequest] params
    # @option params [String] :content_type
    #   <p>The type of the plugin file.</p>
    # @option params [String] :description
    #   <p>A summary description of the custom plugin.</p>
    # @option params [Types::CustomPluginLocation] :location
    #   <p>Information about the location of a custom plugin.</p>
    # @option params [String] :name
    #   <p>The name of the custom plugin.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags you want to attach to the custom plugin.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "CustomPluginContentType", # required
    #     description: "__stringMax1024",
    #     location: { # required
    #       s3_location: { # required
    #         bucket_arn: "__string", # required
    #         file_key: "__string", # required
    #         object_version: "__string"
    #       }
    #     },
    #     name: "__stringMin1Max128", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_custom_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_plugin_arn: "__string",
    #     custom_plugin_state: "CustomPluginState",
    #     name: "__string",
    #     revision: 1
    #   }
    # @return [Types::CreateCustomPluginOutput]
    def create_custom_plugin(params = {}, options = {})
      request = build_request(:create_custom_plugin, params)
      request.send_request(options)
    end

    # <p>Creates a worker configuration using the specified properties.</p>
    # @param [Hash, Types::CreateWorkerConfigurationRequest] params
    # @option params [String] :description
    #   <p>A summary description of the worker configuration.</p>
    # @option params [String] :name
    #   <p>The name of the worker configuration.</p>
    # @option params [String] :properties_file_content
    #   <p>Base64 encoded contents of connect-distributed.properties file.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags you want to attach to the worker configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__stringMax1024",
    #     name: "__stringMin1Max128", # required
    #     properties_file_content: "__sensitiveString", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_worker_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     latest_revision: {
    #       creation_time: Time.now,
    #       description: "__string",
    #       revision: 1
    #     },
    #     name: "__string",
    #     worker_configuration_arn: "__string",
    #     worker_configuration_state: "WorkerConfigurationState"
    #   }
    # @return [Types::CreateWorkerConfigurationOutput]
    def create_worker_configuration(params = {}, options = {})
      request = build_request(:create_worker_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified connector.</p>
    # @param [Hash, Types::DeleteConnectorRequest] params
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to delete.</p>
    # @option params [String] :current_version
    #   <p>The current version of the connector that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "__string", # required
    #     current_version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "__string",
    #     connector_state: "ConnectorState"
    #   }
    # @return [Types::DeleteConnectorOutput]
    def delete_connector(params = {}, options = {})
      request = build_request(:delete_connector, params)
      request.send_request(options)
    end

    # <p>Deletes a custom plugin.</p>
    # @param [Hash, Types::DeleteCustomPluginRequest] params
    # @option params [String] :custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_plugin_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_plugin_arn: "__string",
    #     custom_plugin_state: "CustomPluginState"
    #   }
    # @return [Types::DeleteCustomPluginOutput]
    def delete_custom_plugin(params = {}, options = {})
      request = build_request(:delete_custom_plugin, params)
      request.send_request(options)
    end

    # <p>Deletes the specified worker configuration.</p>
    # @param [Hash, Types::DeleteWorkerConfigurationRequest] params
    # @option params [String] :worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_configuration_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_worker_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     worker_configuration_arn: "__string",
    #     worker_configuration_state: "WorkerConfigurationState"
    #   }
    # @return [Types::DeleteWorkerConfigurationOutput]
    def delete_worker_configuration(params = {}, options = {})
      request = build_request(:delete_worker_configuration, params)
      request.send_request(options)
    end

    # <p>Returns summary information about the connector.</p>
    # @param [Hash, Types::DescribeConnectorRequest] params
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity: {
    #       auto_scaling: {
    #         max_worker_count: 1,
    #         mcu_count: 1,
    #         min_worker_count: 1,
    #         scale_in_policy: {
    #           cpu_utilization_percentage: 1
    #         },
    #         scale_out_policy: {
    #           cpu_utilization_percentage: 1
    #         },
    #         max_autoscaling_task_count: 1
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1,
    #         worker_count: 1
    #       }
    #     },
    #     connector_arn: "__string",
    #     connector_configuration: {
    #       "__string" => "__string"
    #     },
    #     connector_description: "__string",
    #     connector_name: "__string",
    #     connector_state: "ConnectorState",
    #     creation_time: Time.now,
    #     current_version: "__string",
    #     kafka_cluster: {
    #       apache_kafka_cluster: {
    #         bootstrap_servers: "__string",
    #         vpc: {
    #           security_groups: ["__string"],
    #           subnets: ["__string"]
    #         }
    #       }
    #     },
    #     kafka_cluster_client_authentication: {
    #       authentication_type: "KafkaClusterClientAuthenticationType"
    #     },
    #     kafka_cluster_encryption_in_transit: {
    #       encryption_type: "KafkaClusterEncryptionInTransitType"
    #     },
    #     kafka_connect_version: "__string",
    #     log_delivery: {
    #       worker_log_delivery: {
    #         cloud_watch_logs: {
    #           enabled: false,
    #           log_group: "__string"
    #         },
    #         firehose: {
    #           delivery_stream: "__string",
    #           enabled: false
    #         },
    #         s3: {
    #           bucket: "__string",
    #           enabled: false,
    #           prefix: "__string"
    #         }
    #       }
    #     },
    #     network_type: "NetworkType",
    #     plugins: [
    #       {
    #         custom_plugin: {
    #           custom_plugin_arn: "__string",
    #           revision: 1
    #         }
    #       }
    #     ],
    #     service_execution_role_arn: "__string",
    #     worker_configuration: {
    #       revision: 1,
    #       worker_configuration_arn: "__string"
    #     },
    #     state_description: {
    #       code: "__string",
    #       message: "__string"
    #     }
    #   }
    # @return [Types::DescribeConnectorOutput]
    def describe_connector(params = {}, options = {})
      request = build_request(:describe_connector, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified connector's operations.</p>
    # @param [Hash, Types::DescribeConnectorOperationRequest] params
    # @option params [String] :connector_operation_arn
    #   <p>ARN of the connector operation to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_operation_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_connector_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "__string",
    #     connector_operation_arn: "__string",
    #     connector_operation_state: "ConnectorOperationState",
    #     connector_operation_type: "ConnectorOperationType",
    #     operation_steps: [
    #       {
    #         step_type: "ConnectorOperationStepType",
    #         step_state: "ConnectorOperationStepState"
    #       }
    #     ],
    #     origin_worker_setting: {
    #       capacity: {
    #         auto_scaling: {
    #           max_worker_count: 1,
    #           mcu_count: 1,
    #           min_worker_count: 1,
    #           scale_in_policy: {
    #             cpu_utilization_percentage: 1
    #           },
    #           scale_out_policy: {
    #             cpu_utilization_percentage: 1
    #           },
    #           max_autoscaling_task_count: 1
    #         },
    #         provisioned_capacity: {
    #           mcu_count: 1,
    #           worker_count: 1
    #         }
    #       }
    #     },
    #     origin_connector_configuration: {
    #       "__string" => "__string"
    #     },
    #     target_worker_setting: {
    #       capacity: {
    #         auto_scaling: {
    #           max_worker_count: 1,
    #           mcu_count: 1,
    #           min_worker_count: 1,
    #           scale_in_policy: {
    #             cpu_utilization_percentage: 1
    #           },
    #           scale_out_policy: {
    #             cpu_utilization_percentage: 1
    #           },
    #           max_autoscaling_task_count: 1
    #         },
    #         provisioned_capacity: {
    #           mcu_count: 1,
    #           worker_count: 1
    #         }
    #       }
    #     },
    #     target_connector_configuration: {
    #       "__string" => "__string"
    #     },
    #     error_info: {
    #       code: "__string",
    #       message: "__string"
    #     },
    #     creation_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::DescribeConnectorOperationResponse]
    def describe_connector_operation(params = {}, options = {})
      request = build_request(:describe_connector_operation, params)
      request.send_request(options)
    end

    # <p>A summary description of the custom plugin.</p>
    # @param [Hash, Types::DescribeCustomPluginRequest] params
    # @option params [String] :custom_plugin_arn
    #   <p>Returns information about a custom plugin.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_plugin_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_plugin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     custom_plugin_arn: "__string",
    #     custom_plugin_state: "CustomPluginState",
    #     description: "__string",
    #     latest_revision: {
    #       content_type: "CustomPluginContentType",
    #       creation_time: Time.now,
    #       description: "__string",
    #       file_description: {
    #         file_md5: "__string",
    #         file_size: 1
    #       },
    #       location: {
    #         s3_location: {
    #           bucket_arn: "__string",
    #           file_key: "__string",
    #           object_version: "__string"
    #         }
    #       },
    #       revision: 1
    #     },
    #     name: "__string",
    #     state_description: {
    #       code: "__string",
    #       message: "__string"
    #     }
    #   }
    # @return [Types::DescribeCustomPluginOutput]
    def describe_custom_plugin(params = {}, options = {})
      request = build_request(:describe_custom_plugin, params)
      request.send_request(options)
    end

    # <p>Returns information about a worker configuration.</p>
    # @param [Hash, Types::DescribeWorkerConfigurationRequest] params
    # @option params [String] :worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_configuration_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_worker_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     description: "__string",
    #     latest_revision: {
    #       creation_time: Time.now,
    #       description: "__string",
    #       properties_file_content: "__sensitiveString",
    #       revision: 1
    #     },
    #     name: "__string",
    #     worker_configuration_arn: "__string",
    #     worker_configuration_state: "WorkerConfigurationState"
    #   }
    # @return [Types::DescribeWorkerConfigurationOutput]
    def describe_worker_configuration(params = {}, options = {})
      request = build_request(:describe_worker_configuration, params)
      request.send_request(options)
    end

    # <p>Lists information about a connector's operation(s).</p>
    # @param [Hash, Types::ListConnectorOperationsRequest] params
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector for which to list operations.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of connector operations to fetch in one get request.</p>
    # @option params [String] :next_token
    #   <p>If the response is truncated, it includes a NextToken. Send this NextToken in a subsequent request to continue listing from where it left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_connector_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_operations: [
    #       {
    #         connector_operation_arn: "__string",
    #         connector_operation_type: "ConnectorOperationType",
    #         connector_operation_state: "ConnectorOperationState",
    #         creation_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListConnectorOperationsResponse]
    def list_connector_operations(params = {}, options = {})
      request = build_request(:list_connector_operations, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the connectors in this account and Region. The list is limited to connectors whose name starts with the specified prefix. The response also includes a description of each of the listed connectors.</p>
    # @param [Hash, Types::ListConnectorsRequest] params
    # @option params [String] :connector_name_prefix
    #   <p>The name prefix that you want to use to search for and list connectors.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of connectors to list in one response.</p>
    # @option params [String] :next_token
    #   <p>If the response of a ListConnectors operation is truncated, it will include a NextToken. Send this NextToken in a subsequent request to continue listing from where the previous operation left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_name_prefix: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connectors: [
    #       {
    #         capacity: {
    #           auto_scaling: {
    #             max_worker_count: 1,
    #             mcu_count: 1,
    #             min_worker_count: 1,
    #             scale_in_policy: {
    #               cpu_utilization_percentage: 1
    #             },
    #             scale_out_policy: {
    #               cpu_utilization_percentage: 1
    #             },
    #             max_autoscaling_task_count: 1
    #           },
    #           provisioned_capacity: {
    #             mcu_count: 1,
    #             worker_count: 1
    #           }
    #         },
    #         connector_arn: "__string",
    #         connector_description: "__string",
    #         connector_name: "__string",
    #         connector_state: "ConnectorState",
    #         creation_time: Time.now,
    #         current_version: "__string",
    #         kafka_cluster: {
    #           apache_kafka_cluster: {
    #             bootstrap_servers: "__string",
    #             vpc: {
    #               security_groups: ["__string"],
    #               subnets: ["__string"]
    #             }
    #           }
    #         },
    #         kafka_cluster_client_authentication: {
    #           authentication_type: "KafkaClusterClientAuthenticationType"
    #         },
    #         kafka_cluster_encryption_in_transit: {
    #           encryption_type: "KafkaClusterEncryptionInTransitType"
    #         },
    #         kafka_connect_version: "__string",
    #         log_delivery: {
    #           worker_log_delivery: {
    #             cloud_watch_logs: {
    #               enabled: false,
    #               log_group: "__string"
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false,
    #               prefix: "__string"
    #             }
    #           }
    #         },
    #         network_type: "NetworkType",
    #         plugins: [
    #           {
    #             custom_plugin: {
    #               custom_plugin_arn: "__string",
    #               revision: 1
    #             }
    #           }
    #         ],
    #         service_execution_role_arn: "__string",
    #         worker_configuration: {
    #           revision: 1,
    #           worker_configuration_arn: "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListConnectorsOutput]
    def list_connectors(params = {}, options = {})
      request = build_request(:list_connectors, params)
      request.send_request(options)
    end

    # <p>Returns a list of all of the custom plugins in this account and Region.</p>
    # @param [Hash, Types::ListCustomPluginsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom plugins to list in one response.</p>
    # @option params [String] :next_token
    #   <p>If the response of a ListCustomPlugins operation is truncated, it will include a NextToken. Send this NextToken in a subsequent request to continue listing from where the previous operation left off.</p>
    # @option params [String] :name_prefix
    #   <p>Lists custom plugin names that start with the specified text string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     name_prefix: "__string"
    #   }
    #   options = {}
    #   response = client.list_custom_plugins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_plugins: [
    #       {
    #         creation_time: Time.now,
    #         custom_plugin_arn: "__string",
    #         custom_plugin_state: "CustomPluginState",
    #         description: "__string",
    #         latest_revision: {
    #           content_type: "CustomPluginContentType",
    #           creation_time: Time.now,
    #           description: "__string",
    #           file_description: {
    #             file_md5: "__string",
    #             file_size: 1
    #           },
    #           location: {
    #             s3_location: {
    #               bucket_arn: "__string",
    #               file_key: "__string",
    #               object_version: "__string"
    #             }
    #           },
    #           revision: 1
    #         },
    #         name: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListCustomPluginsOutput]
    def list_custom_plugins(params = {}, options = {})
      request = build_request(:list_custom_plugins, params)
      request.send_request(options)
    end

    # <p>Lists all the tags attached to the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list all attached tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
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

    # <p>Returns a list of all of the worker configurations in this account and Region.</p>
    # @param [Hash, Types::ListWorkerConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of worker configurations to list in one response.</p>
    # @option params [String] :next_token
    #   <p>If the response of a ListWorkerConfigurations operation is truncated, it will include a NextToken. Send this NextToken in a subsequent request to continue listing from where the previous operation left off.</p>
    # @option params [String] :name_prefix
    #   <p>Lists worker configuration names that start with the specified text string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     name_prefix: "__string"
    #   }
    #   options = {}
    #   response = client.list_worker_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     worker_configurations: [
    #       {
    #         creation_time: Time.now,
    #         description: "__string",
    #         latest_revision: {
    #           creation_time: Time.now,
    #           description: "__string",
    #           revision: 1
    #         },
    #         name: "__string",
    #         worker_configuration_arn: "__string",
    #         worker_configuration_state: "WorkerConfigurationState"
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkerConfigurationsOutput]
    def list_worker_configurations(params = {}, options = {})
      request = build_request(:list_worker_configurations, params)
      request.send_request(options)
    end

    # <p>Restarts the specified connector. By default, this operation restarts the connector and all of its tasks. This operation is asynchronous and returns a connector operation ARN that you can pass to <code>DescribeConnectorOperation</code> to track the state of the restart.</p>
    # @param [Hash, Types::RestartConnectorRequest] params
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to restart.</p>
    # @option params [Boolean] :only_failed_tasks
    #   <p>Specifies whether to restart only the connector's failed tasks. If <code>true</code>, the operation restarts only the tasks that are currently in a failed state, and healthy tasks continue running. If <code>false</code> or not specified, the operation restarts the connector and all of its tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "__string", # required
    #     only_failed_tasks: false
    #   }
    #   options = {}
    #   response = client.restart_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "__string",
    #     connector_operation_arn: "__string"
    #   }
    # @return [Types::RestartConnectorResponse]
    def restart_connector(params = {}, options = {})
      request = build_request(:restart_connector, params)
      request.send_request(options)
    end

    # <p>Attaches tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to attach tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you want to attach to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
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

    # <p>Removes tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
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

    # <p>Updates the specified connector. For request body, specify only one parameter: either <code>capacity</code> or <code>connectorConfiguration</code>.</p>
    # @param [Hash, Types::UpdateConnectorRequest] params
    # @option params [Types::CapacityUpdate] :capacity
    #   <p>The target capacity.</p>
    # @option params [Hash<String, String>] :connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to update.</p>
    # @option params [String] :current_version
    #   <p>The current version of the connector that you want to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity: {
    #       auto_scaling: {
    #         max_worker_count: 1, # required
    #         mcu_count: 1, # required
    #         min_worker_count: 1, # required
    #         scale_in_policy: { # required
    #           cpu_utilization_percentage: 1, # required
    #         },
    #         scale_out_policy: { # required
    #           cpu_utilization_percentage: 1, # required
    #         },
    #         max_autoscaling_task_count: 1
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1, # required
    #         worker_count: 1, # required
    #       }
    #     },
    #     connector_configuration: {
    #       "__string" => "__string"
    #     },
    #     connector_arn: "__string", # required
    #     current_version: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "__string",
    #     connector_state: "ConnectorState",
    #     connector_operation_arn: "__string"
    #   }
    # @return [Types::UpdateConnectorOutput]
    def update_connector(params = {}, options = {})
      request = build_request(:update_connector, params)
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
      context[:gem_name] = 'aws-sdk-kafkaconnect'
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
