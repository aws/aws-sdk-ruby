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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:kafka)

module Aws::Kafka
  # An API client for Aws::Kafka.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Kafka
    @identifier = :kafka

    add_plugin(::Aws::Kafka::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Kafka::EndpointProvider)
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

    # <p>Associates one or more Scram Secrets with an Amazon MSK cluster.</p>
    # @param [Hash, Types::BatchAssociateScramSecretRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    # @option params [Array<String>] :secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     secret_arn_list: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.batch_associate_scram_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     unprocessed_scram_secrets: [
    #       {
    #         error_code: "__string",
    #         error_message: "__string",
    #         secret_arn: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateScramSecretResponse]
    def batch_associate_scram_secret(params = {}, options = {})
      request = build_request(:batch_associate_scram_secret, params)
      request.send_request(options)
    end

    # <p>Disassociates one or more Scram Secrets from an Amazon MSK cluster.</p>
    # @param [Hash, Types::BatchDisassociateScramSecretRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    # @option params [Array<String>] :secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     secret_arn_list: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.batch_disassociate_scram_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     unprocessed_scram_secrets: [
    #       {
    #         error_code: "__string",
    #         error_message: "__string",
    #         secret_arn: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateScramSecretResponse]
    def batch_disassociate_scram_secret(params = {}, options = {})
      request = build_request(:batch_disassociate_scram_secret, params)
      request.send_request(options)
    end

    # <p>Creates a new MSK cluster.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [Types::BrokerNodeGroupInfo] :broker_node_group_info
    #   <p>Information about the broker nodes in the cluster.</p>
    # @option params [Types::ClientAuthentication] :client_authentication
    #   <p>Includes all client authentication related information.</p>
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    # @option params [Types::ConfigurationInfo] :configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    # @option params [Types::EncryptionInfo] :encryption_info
    #   <p>Includes all encryption-related information.</p>
    # @option params [String] :enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    # @option params [Types::OpenMonitoringInfo] :open_monitoring
    #   <p>The settings for open monitoring.</p>
    # @option params [String] :kafka_version
    #   <p>The version of Apache Kafka.</p>
    # @option params [Types::LoggingInfo] :logging_info
    # @option params [Integer] :number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Create tags when creating the cluster.</p>
    # @option params [String] :storage_mode
    #   <p>This controls storage mode for supported storage tiers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_node_group_info: { # required
    #       broker_az_distribution: "DEFAULT" # One of: ["DEFAULT"],
    #       client_subnets: ["__string"], # required
    #       instance_type: "__stringMin5Max32", # required
    #       security_groups: ["__string"],
    #       storage_info: {
    #         ebs_storage_info: {
    #           provisioned_throughput: {
    #             enabled: false,
    #             volume_throughput: 1
    #           },
    #           volume_size: 1
    #         }
    #       },
    #       connectivity_info: {
    #         public_access: {
    #           type: "__string"
    #         },
    #         vpc_connectivity: {
    #           client_authentication: {
    #             sasl: {
    #               scram: {
    #                 enabled: false
    #               },
    #               iam: {
    #                 enabled: false
    #               }
    #             },
    #             tls: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       zone_ids: ["__string"]
    #     },
    #     client_authentication: {
    #       sasl: {
    #         scram: {
    #           enabled: false
    #         },
    #         iam: {
    #           enabled: false
    #         }
    #       },
    #       tls: {
    #         certificate_authority_arn_list: ["__string"],
    #         enabled: false
    #       },
    #       unauthenticated: {
    #         enabled: false
    #       }
    #     },
    #     cluster_name: "__stringMin1Max64", # required
    #     configuration_info: {
    #       arn: "__string", # required
    #       revision: 1, # required
    #     },
    #     encryption_info: {
    #       encryption_at_rest: {
    #         data_volume_kms_key_id: "__string", # required
    #       },
    #       encryption_in_transit: {
    #         client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #         in_cluster: false
    #       }
    #     },
    #     enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #     open_monitoring: {
    #       prometheus: { # required
    #         jmx_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false, # required
    #         }
    #       }
    #     },
    #     kafka_version: "__stringMin1Max128", # required
    #     logging_info: {
    #       broker_logs: { # required
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
    #     number_of_broker_nodes: 1, # required
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"]
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_name: "__string",
    #     state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new MSK cluster.</p>
    # @param [Hash, Types::CreateClusterV2Request] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags that you want the cluster to have.</p>
    # @option params [Types::ProvisionedRequest] :provisioned
    #   <p>Information about the provisioned cluster.</p>
    # @option params [Types::ServerlessRequest] :serverless
    #   <p>Information about the serverless cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "__stringMin1Max64", # required
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     provisioned: {
    #       broker_node_group_info: { # required
    #         broker_az_distribution: "DEFAULT" # One of: ["DEFAULT"],
    #         client_subnets: ["__string"], # required
    #         instance_type: "__stringMin5Max32", # required
    #         security_groups: ["__string"],
    #         storage_info: {
    #           ebs_storage_info: {
    #             provisioned_throughput: {
    #               enabled: false,
    #               volume_throughput: 1
    #             },
    #             volume_size: 1
    #           }
    #         },
    #         connectivity_info: {
    #           public_access: {
    #             type: "__string"
    #           },
    #           vpc_connectivity: {
    #             client_authentication: {
    #               sasl: {
    #                 scram: {
    #                   enabled: false
    #                 },
    #                 iam: {
    #                   enabled: false
    #                 }
    #               },
    #               tls: {
    #                 enabled: false
    #               }
    #             }
    #           }
    #         },
    #         zone_ids: ["__string"]
    #       },
    #       client_authentication: {
    #         sasl: {
    #           scram: {
    #             enabled: false
    #           },
    #           iam: {
    #             enabled: false
    #           }
    #         },
    #         tls: {
    #           certificate_authority_arn_list: ["__string"],
    #           enabled: false
    #         },
    #         unauthenticated: {
    #           enabled: false
    #         }
    #       },
    #       configuration_info: {
    #         arn: "__string", # required
    #         revision: 1, # required
    #       },
    #       encryption_info: {
    #         encryption_at_rest: {
    #           data_volume_kms_key_id: "__string", # required
    #         },
    #         encryption_in_transit: {
    #           client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #           in_cluster: false
    #         }
    #       },
    #       enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #       open_monitoring: {
    #         prometheus: { # required
    #           jmx_exporter: {
    #             enabled_in_broker: false, # required
    #           },
    #           node_exporter: {
    #             enabled_in_broker: false, # required
    #           }
    #         }
    #       },
    #       kafka_version: "__stringMin1Max128", # required
    #       logging_info: {
    #         broker_logs: { # required
    #           cloud_watch_logs: {
    #             enabled: false, # required
    #             log_group: "__string"
    #           },
    #           firehose: {
    #             delivery_stream: "__string",
    #             enabled: false, # required
    #           },
    #           s3: {
    #             bucket: "__string",
    #             enabled: false, # required
    #             prefix: "__string"
    #           }
    #         }
    #       },
    #       number_of_broker_nodes: 1, # required
    #       storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"]
    #     },
    #     serverless: {
    #       vpc_configs: [ # required
    #         {
    #           subnet_ids: ["__string"], # required
    #           security_group_ids: ["__string"]
    #         }
    #       ],
    #       client_authentication: {
    #         sasl: {
    #           iam: {
    #             enabled: false
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_name: "__string",
    #     state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"],
    #     cluster_type: "PROVISIONED" # One of: ["PROVISIONED", "SERVERLESS"]
    #   }
    # @return [Types::CreateClusterV2Response]
    def create_cluster_v2(params = {}, options = {})
      request = build_request(:create_cluster_v2, params)
      request.send_request(options)
    end

    # <p>Creates a new MSK configuration.</p>
    # @param [Hash, Types::CreateConfigurationRequest] params
    # @option params [String] :description
    #   <p>The description of the configuration.</p>
    # @option params [Array<String>] :kafka_versions
    #   <p>The versions of Apache Kafka with which you can use this MSK configuration.</p>
    # @option params [String] :name
    #   <p>The name of the configuration.</p>
    # @option params [String] :server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. 
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__string",
    #     kafka_versions: ["__string"],
    #     name: "__string", # required
    #     server_properties: "data", # required
    #   }
    #   options = {}
    #   response = client.create_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     latest_revision: {
    #       creation_time: Time.now, # required
    #       description: "__string",
    #       revision: 1, # required
    #     },
    #     name: "__string",
    #     state: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #   }
    # @return [Types::CreateConfigurationResponse]
    def create_configuration(params = {}, options = {})
      request = build_request(:create_configuration, params)
      request.send_request(options)
    end

    # <p>Creates the replicator.</p>
    # @param [Hash, Types::CreateReplicatorRequest] params
    # @option params [String] :description
    #   <p>A summary description of the replicator.</p>
    # @option params [Array<Types::KafkaCluster>] :kafka_clusters
    #   <p>Kafka Clusters to use in setting up sources / targets for replication.</p>
    # @option params [Array<Types::ReplicationInfo>] :replication_info_list
    #   <p>A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.</p>
    # @option params [String] :replicator_name
    #   <p>The name of the replicator. Alpha-numeric characters with '-' are allowed.</p>
    # @option params [String] :service_execution_role_arn
    #   <p>The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters)</p>
    # @option params [Hash<String, String>] :tags
    #   <p>List of tags to attach to created Replicator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__stringMax1024",
    #     kafka_clusters: [ # required
    #       {
    #         amazon_msk_cluster: { # required
    #           msk_cluster_arn: "__string", # required
    #         },
    #         vpc_config: { # required
    #           security_group_ids: ["__string"],
    #           subnet_ids: ["__string"], # required
    #         }
    #       }
    #     ],
    #     replication_info_list: [ # required
    #       {
    #         consumer_group_replication: { # required
    #           consumer_groups_to_exclude: ["__stringMax256"],
    #           consumer_groups_to_replicate: ["__stringMax256"], # required
    #           detect_and_copy_new_consumer_groups: false,
    #           synchronise_consumer_group_offsets: false
    #         },
    #         source_kafka_cluster_arn: "__string", # required
    #         target_compression_type: "NONE" # One of: ["NONE", "GZIP", "SNAPPY", "LZ4", "ZSTD"], # required
    #         target_kafka_cluster_arn: "__string", # required
    #         topic_replication: { # required
    #           copy_access_control_lists_for_topics: false,
    #           copy_topic_configurations: false,
    #           detect_and_copy_new_topics: false,
    #           starting_position: {
    #             type: "LATEST" # One of: ["LATEST", "EARLIEST"]
    #           },
    #           topic_name_configuration: {
    #             type: "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS" # One of: ["PREFIXED_WITH_SOURCE_CLUSTER_ALIAS", "IDENTICAL"]
    #           },
    #           topics_to_exclude: ["__stringMax249"],
    #           topics_to_replicate: ["__stringMax249"], # required
    #         }
    #       }
    #     ],
    #     replicator_name: "__stringMin1Max128Pattern09AZaZ09AZaZ0", # required
    #     service_execution_role_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_replicator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replicator_arn: "__string",
    #     replicator_name: "__string",
    #     replicator_state: "RUNNING" # One of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #   }
    # @return [Types::CreateReplicatorResponse]
    def create_replicator(params = {}, options = {})
      request = build_request(:create_replicator, params)
      request.send_request(options)
    end

    # <p>Creates a new MSK VPC connection.</p>
    # @param [Hash, Types::CreateVpcConnectionRequest] params
    # @option params [String] :target_cluster_arn
    #   <p>The cluster Amazon Resource Name (ARN) for the VPC connection.</p>
    # @option params [String] :authentication
    #   <p>The authentication type of VPC connection.</p>
    # @option params [String] :vpc_id
    #   <p>The VPC ID of VPC connection.</p>
    # @option params [Array<String>] :client_subnets
    #   <p>The list of client subnets.</p>
    # @option params [Array<String>] :security_groups
    #   <p>The list of security groups.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags for the VPC connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_cluster_arn: "__string", # required
    #     authentication: "__string", # required
    #     vpc_id: "__string", # required
    #     client_subnets: ["__string"], # required
    #     security_groups: ["__string"], # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_vpc_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connection_arn: "__string",
    #     state: "CREATING" # One of: ["CREATING", "AVAILABLE", "INACTIVE", "DEACTIVATING", "DELETING", "FAILED", "REJECTED", "REJECTING"],
    #     authentication: "__string",
    #     vpc_id: "__string",
    #     client_subnets: ["__string"],
    #     security_groups: ["__string"],
    #     creation_time: Time.now,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateVpcConnectionResponse]
    def create_vpc_connection(params = {}, options = {})
      request = build_request(:create_vpc_connection, params)
      request.send_request(options)
    end

    # <p>Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [String] :current_version
    #   <p>The current version of the MSK cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   }
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the MSK cluster policy specified by the Amazon Resource Name (ARN) in the request.</p>
    # @param [Hash, Types::DeleteClusterPolicyRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteClusterPolicyResponse]
    def delete_cluster_policy(params = {}, options = {})
      request = build_request(:delete_cluster_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an MSK Configuration.</p>
    # @param [Hash, Types::DeleteConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     state: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #   }
    # @return [Types::DeleteConfigurationResponse]
    def delete_configuration(params = {}, options = {})
      request = build_request(:delete_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a replicator.</p>
    # @param [Hash, Types::DeleteReplicatorRequest] params
    # @option params [String] :current_version
    #   <p>The current version of the replicator.</p>
    # @option params [String] :replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     current_version: "__string",
    #     replicator_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_replicator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replicator_arn: "__string",
    #     replicator_state: "RUNNING" # One of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #   }
    # @return [Types::DeleteReplicatorResponse]
    def delete_replicator(params = {}, options = {})
      request = build_request(:delete_replicator, params)
      request.send_request(options)
    end

    # <p>Deletes a MSK VPC connection.</p>
    # @param [Hash, Types::DeleteVpcConnectionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connection_arn: "__string",
    #     state: "CREATING" # One of: ["CREATING", "AVAILABLE", "INACTIVE", "DEACTIVATING", "DELETING", "FAILED", "REJECTED", "REJECTING"]
    #   }
    # @return [Types::DeleteVpcConnectionResponse]
    def delete_vpc_connection(params = {}, options = {})
      request = build_request(:delete_vpc_connection, params)
      request.send_request(options)
    end

    # <p>Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.</p>
    # @param [Hash, Types::DescribeClusterRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_info: {
    #       active_operation_arn: "__string",
    #       broker_node_group_info: {
    #         broker_az_distribution: "DEFAULT" # One of: ["DEFAULT"],
    #         client_subnets: ["__string"], # required
    #         instance_type: "__stringMin5Max32", # required
    #         security_groups: ["__string"],
    #         storage_info: {
    #           ebs_storage_info: {
    #             provisioned_throughput: {
    #               enabled: false,
    #               volume_throughput: 1
    #             },
    #             volume_size: 1
    #           }
    #         },
    #         connectivity_info: {
    #           public_access: {
    #             type: "__string"
    #           },
    #           vpc_connectivity: {
    #             client_authentication: {
    #               sasl: {
    #                 scram: {
    #                   enabled: false
    #                 },
    #                 iam: {
    #                   enabled: false
    #                 }
    #               },
    #               tls: {
    #                 enabled: false
    #               }
    #             }
    #           }
    #         },
    #         zone_ids: ["__string"]
    #       },
    #       client_authentication: {
    #         sasl: {
    #           scram: {
    #             enabled: false
    #           },
    #           iam: {
    #             enabled: false
    #           }
    #         },
    #         tls: {
    #           certificate_authority_arn_list: ["__string"],
    #           enabled: false
    #         },
    #         unauthenticated: {
    #           enabled: false
    #         }
    #       },
    #       cluster_arn: "__string",
    #       cluster_name: "__string",
    #       creation_time: Time.now,
    #       current_broker_software_info: {
    #         configuration_arn: "__string",
    #         configuration_revision: 1,
    #         kafka_version: "__string"
    #       },
    #       current_version: "__string",
    #       encryption_info: {
    #         encryption_at_rest: {
    #           data_volume_kms_key_id: "__string", # required
    #         },
    #         encryption_in_transit: {
    #           client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #           in_cluster: false
    #         }
    #       },
    #       enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #       open_monitoring: {
    #         prometheus: { # required
    #           jmx_exporter: {
    #             enabled_in_broker: false, # required
    #           },
    #           node_exporter: {
    #             enabled_in_broker: false, # required
    #           }
    #         }
    #       },
    #       logging_info: {
    #         broker_logs: { # required
    #           cloud_watch_logs: {
    #             enabled: false, # required
    #             log_group: "__string"
    #           },
    #           firehose: {
    #             delivery_stream: "__string",
    #             enabled: false, # required
    #           },
    #           s3: {
    #             bucket: "__string",
    #             enabled: false, # required
    #             prefix: "__string"
    #           }
    #         }
    #       },
    #       number_of_broker_nodes: 1,
    #       state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"],
    #       state_info: {
    #         code: "__string",
    #         message: "__string"
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       zookeeper_connect_string: "__string",
    #       zookeeper_connect_string_tls: "__string",
    #       storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #       customer_action_status: "CRITICAL_ACTION_REQUIRED" # One of: ["CRITICAL_ACTION_REQUIRED", "ACTION_RECOMMENDED", "NONE"]
    #     }
    #   }
    # @return [Types::DescribeClusterResponse]
    def describe_cluster(params = {}, options = {})
      request = build_request(:describe_cluster, params)
      request.send_request(options)
    end

    # <p>Returns a description of the cluster operation specified by the ARN.</p>
    # @param [Hash, Types::DescribeClusterOperationRequest] params
    # @option params [String] :cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_operation_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_operation_info: {
    #       client_request_id: "__string",
    #       cluster_arn: "__string",
    #       creation_time: Time.now,
    #       end_time: Time.now,
    #       error_info: {
    #         error_code: "__string",
    #         error_string: "__string"
    #       },
    #       operation_arn: "__string",
    #       operation_state: "__string",
    #       operation_steps: [
    #         {
    #           step_info: {
    #             step_status: "__string"
    #           },
    #           step_name: "__string"
    #         }
    #       ],
    #       operation_type: "__string",
    #       source_cluster_info: {
    #         broker_ebs_volume_info: [
    #           {
    #             kafka_broker_node_id: "__string", # required
    #             provisioned_throughput: {
    #               enabled: false,
    #               volume_throughput: 1
    #             },
    #             volume_size_gb: 1
    #           }
    #         ],
    #         configuration_info: {
    #           arn: "__string", # required
    #           revision: 1, # required
    #         },
    #         number_of_broker_nodes: 1,
    #         enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #         open_monitoring: {
    #           prometheus: { # required
    #             jmx_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #             node_exporter: {
    #               enabled_in_broker: false, # required
    #             }
    #           }
    #         },
    #         kafka_version: "__string",
    #         logging_info: {
    #           broker_logs: { # required
    #             cloud_watch_logs: {
    #               enabled: false, # required
    #               log_group: "__string"
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false, # required
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false, # required
    #               prefix: "__string"
    #             }
    #           }
    #         },
    #         instance_type: "__stringMin5Max32",
    #         client_authentication: {
    #           sasl: {
    #             scram: {
    #               enabled: false
    #             },
    #             iam: {
    #               enabled: false
    #             }
    #           },
    #           tls: {
    #             certificate_authority_arn_list: ["__string"],
    #             enabled: false
    #           },
    #           unauthenticated: {
    #             enabled: false
    #           }
    #         },
    #         encryption_info: {
    #           encryption_at_rest: {
    #             data_volume_kms_key_id: "__string", # required
    #           },
    #           encryption_in_transit: {
    #             client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #             in_cluster: false
    #           }
    #         },
    #         connectivity_info: {
    #           public_access: {
    #             type: "__string"
    #           },
    #           vpc_connectivity: {
    #             client_authentication: {
    #               sasl: {
    #                 scram: {
    #                   enabled: false
    #                 },
    #                 iam: {
    #                   enabled: false
    #                 }
    #               },
    #               tls: {
    #                 enabled: false
    #               }
    #             }
    #           }
    #         },
    #         storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #         broker_count_update_info: {
    #           created_broker_ids: [1.0],
    #           deleted_broker_ids: [1.0]
    #         }
    #       },
    #       target_cluster_info: {
    #         broker_ebs_volume_info: [
    #           {
    #             kafka_broker_node_id: "__string", # required
    #             provisioned_throughput: {
    #               enabled: false,
    #               volume_throughput: 1
    #             },
    #             volume_size_gb: 1
    #           }
    #         ],
    #         configuration_info: {
    #           arn: "__string", # required
    #           revision: 1, # required
    #         },
    #         number_of_broker_nodes: 1,
    #         enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #         open_monitoring: {
    #           prometheus: { # required
    #             jmx_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #             node_exporter: {
    #               enabled_in_broker: false, # required
    #             }
    #           }
    #         },
    #         kafka_version: "__string",
    #         logging_info: {
    #           broker_logs: { # required
    #             cloud_watch_logs: {
    #               enabled: false, # required
    #               log_group: "__string"
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false, # required
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false, # required
    #               prefix: "__string"
    #             }
    #           }
    #         },
    #         instance_type: "__stringMin5Max32",
    #         client_authentication: {
    #           sasl: {
    #             scram: {
    #               enabled: false
    #             },
    #             iam: {
    #               enabled: false
    #             }
    #           },
    #           tls: {
    #             certificate_authority_arn_list: ["__string"],
    #             enabled: false
    #           },
    #           unauthenticated: {
    #             enabled: false
    #           }
    #         },
    #         encryption_info: {
    #           encryption_at_rest: {
    #             data_volume_kms_key_id: "__string", # required
    #           },
    #           encryption_in_transit: {
    #             client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #             in_cluster: false
    #           }
    #         },
    #         connectivity_info: {
    #           public_access: {
    #             type: "__string"
    #           },
    #           vpc_connectivity: {
    #             client_authentication: {
    #               sasl: {
    #                 scram: {
    #                   enabled: false
    #                 },
    #                 iam: {
    #                   enabled: false
    #                 }
    #               },
    #               tls: {
    #                 enabled: false
    #               }
    #             }
    #           }
    #         },
    #         storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #         broker_count_update_info: {
    #           created_broker_ids: [1.0],
    #           deleted_broker_ids: [1.0]
    #         }
    #       },
    #       vpc_connection_info: {
    #         vpc_connection_arn: "__string",
    #         owner: "__string",
    #         user_identity: {
    #           type: "AWSACCOUNT" # One of: ["AWSACCOUNT", "AWSSERVICE"],
    #           principal_id: "__string"
    #         },
    #         creation_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeClusterOperationResponse]
    def describe_cluster_operation(params = {}, options = {})
      request = build_request(:describe_cluster_operation, params)
      request.send_request(options)
    end

    # <p>Returns a description of the cluster operation specified by the ARN.</p>
    # @param [Hash, Types::DescribeClusterOperationV2Request] params
    # @option params [String] :cluster_operation_arn
    #   ARN of the cluster operation to describe.
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_operation_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster_operation_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_operation_info: {
    #       cluster_arn: "__string",
    #       cluster_type: "PROVISIONED" # One of: ["PROVISIONED", "SERVERLESS"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       error_info: {
    #         error_code: "__string",
    #         error_string: "__string"
    #       },
    #       operation_arn: "__string",
    #       operation_state: "__string",
    #       operation_type: "__string",
    #       provisioned: {
    #         operation_steps: [
    #           {
    #             step_info: {
    #               step_status: "__string"
    #             },
    #             step_name: "__string"
    #           }
    #         ],
    #         source_cluster_info: {
    #           broker_ebs_volume_info: [
    #             {
    #               kafka_broker_node_id: "__string", # required
    #               provisioned_throughput: {
    #                 enabled: false,
    #                 volume_throughput: 1
    #               },
    #               volume_size_gb: 1
    #             }
    #           ],
    #           configuration_info: {
    #             arn: "__string", # required
    #             revision: 1, # required
    #           },
    #           number_of_broker_nodes: 1,
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #           open_monitoring: {
    #             prometheus: { # required
    #               jmx_exporter: {
    #                 enabled_in_broker: false, # required
    #               },
    #               node_exporter: {
    #                 enabled_in_broker: false, # required
    #               }
    #             }
    #           },
    #           kafka_version: "__string",
    #           logging_info: {
    #             broker_logs: { # required
    #               cloud_watch_logs: {
    #                 enabled: false, # required
    #                 log_group: "__string"
    #               },
    #               firehose: {
    #                 delivery_stream: "__string",
    #                 enabled: false, # required
    #               },
    #               s3: {
    #                 bucket: "__string",
    #                 enabled: false, # required
    #                 prefix: "__string"
    #               }
    #             }
    #           },
    #           instance_type: "__stringMin5Max32",
    #           client_authentication: {
    #             sasl: {
    #               scram: {
    #                 enabled: false
    #               },
    #               iam: {
    #                 enabled: false
    #               }
    #             },
    #             tls: {
    #               certificate_authority_arn_list: ["__string"],
    #               enabled: false
    #             },
    #             unauthenticated: {
    #               enabled: false
    #             }
    #           },
    #           encryption_info: {
    #             encryption_at_rest: {
    #               data_volume_kms_key_id: "__string", # required
    #             },
    #             encryption_in_transit: {
    #               client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #               in_cluster: false
    #             }
    #           },
    #           connectivity_info: {
    #             public_access: {
    #               type: "__string"
    #             },
    #             vpc_connectivity: {
    #               client_authentication: {
    #                 sasl: {
    #                   scram: {
    #                     enabled: false
    #                   },
    #                   iam: {
    #                     enabled: false
    #                   }
    #                 },
    #                 tls: {
    #                   enabled: false
    #                 }
    #               }
    #             }
    #           },
    #           storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #           broker_count_update_info: {
    #             created_broker_ids: [1.0],
    #             deleted_broker_ids: [1.0]
    #           }
    #         },
    #         target_cluster_info: {
    #           broker_ebs_volume_info: [
    #             {
    #               kafka_broker_node_id: "__string", # required
    #               provisioned_throughput: {
    #                 enabled: false,
    #                 volume_throughput: 1
    #               },
    #               volume_size_gb: 1
    #             }
    #           ],
    #           configuration_info: {
    #             arn: "__string", # required
    #             revision: 1, # required
    #           },
    #           number_of_broker_nodes: 1,
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #           open_monitoring: {
    #             prometheus: { # required
    #               jmx_exporter: {
    #                 enabled_in_broker: false, # required
    #               },
    #               node_exporter: {
    #                 enabled_in_broker: false, # required
    #               }
    #             }
    #           },
    #           kafka_version: "__string",
    #           logging_info: {
    #             broker_logs: { # required
    #               cloud_watch_logs: {
    #                 enabled: false, # required
    #                 log_group: "__string"
    #               },
    #               firehose: {
    #                 delivery_stream: "__string",
    #                 enabled: false, # required
    #               },
    #               s3: {
    #                 bucket: "__string",
    #                 enabled: false, # required
    #                 prefix: "__string"
    #               }
    #             }
    #           },
    #           instance_type: "__stringMin5Max32",
    #           client_authentication: {
    #             sasl: {
    #               scram: {
    #                 enabled: false
    #               },
    #               iam: {
    #                 enabled: false
    #               }
    #             },
    #             tls: {
    #               certificate_authority_arn_list: ["__string"],
    #               enabled: false
    #             },
    #             unauthenticated: {
    #               enabled: false
    #             }
    #           },
    #           encryption_info: {
    #             encryption_at_rest: {
    #               data_volume_kms_key_id: "__string", # required
    #             },
    #             encryption_in_transit: {
    #               client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #               in_cluster: false
    #             }
    #           },
    #           connectivity_info: {
    #             public_access: {
    #               type: "__string"
    #             },
    #             vpc_connectivity: {
    #               client_authentication: {
    #                 sasl: {
    #                   scram: {
    #                     enabled: false
    #                   },
    #                   iam: {
    #                     enabled: false
    #                   }
    #                 },
    #                 tls: {
    #                   enabled: false
    #                 }
    #               }
    #             }
    #           },
    #           storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #           broker_count_update_info: {
    #             created_broker_ids: [1.0],
    #             deleted_broker_ids: [1.0]
    #           }
    #         },
    #         vpc_connection_info: {
    #           vpc_connection_arn: "__string",
    #           owner: "__string",
    #           user_identity: {
    #             type: "AWSACCOUNT" # One of: ["AWSACCOUNT", "AWSSERVICE"],
    #             principal_id: "__string"
    #           },
    #           creation_time: Time.now
    #         }
    #       },
    #       serverless: {
    #         vpc_connection_info: {
    #           creation_time: Time.now,
    #           owner: "__string",
    #           user_identity: {
    #             type: "AWSACCOUNT" # One of: ["AWSACCOUNT", "AWSSERVICE"],
    #             principal_id: "__string"
    #           },
    #           vpc_connection_arn: "__string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeClusterOperationV2Response]
    def describe_cluster_operation_v2(params = {}, options = {})
      request = build_request(:describe_cluster_operation_v2, params)
      request.send_request(options)
    end

    # <p>Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.</p>
    # @param [Hash, Types::DescribeClusterV2Request] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_info: {
    #       active_operation_arn: "__string",
    #       cluster_type: "PROVISIONED" # One of: ["PROVISIONED", "SERVERLESS"],
    #       cluster_arn: "__string",
    #       cluster_name: "__string",
    #       creation_time: Time.now,
    #       current_version: "__string",
    #       state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"],
    #       state_info: {
    #         code: "__string",
    #         message: "__string"
    #       },
    #       tags: {
    #         "__string" => "__string"
    #       },
    #       provisioned: {
    #         broker_node_group_info: { # required
    #           broker_az_distribution: "DEFAULT" # One of: ["DEFAULT"],
    #           client_subnets: ["__string"], # required
    #           instance_type: "__stringMin5Max32", # required
    #           security_groups: ["__string"],
    #           storage_info: {
    #             ebs_storage_info: {
    #               provisioned_throughput: {
    #                 enabled: false,
    #                 volume_throughput: 1
    #               },
    #               volume_size: 1
    #             }
    #           },
    #           connectivity_info: {
    #             public_access: {
    #               type: "__string"
    #             },
    #             vpc_connectivity: {
    #               client_authentication: {
    #                 sasl: {
    #                   scram: {
    #                     enabled: false
    #                   },
    #                   iam: {
    #                     enabled: false
    #                   }
    #                 },
    #                 tls: {
    #                   enabled: false
    #                 }
    #               }
    #             }
    #           },
    #           zone_ids: ["__string"]
    #         },
    #         current_broker_software_info: {
    #           configuration_arn: "__string",
    #           configuration_revision: 1,
    #           kafka_version: "__string"
    #         },
    #         client_authentication: {
    #           sasl: {
    #             scram: {
    #               enabled: false
    #             },
    #             iam: {
    #               enabled: false
    #             }
    #           },
    #           tls: {
    #             certificate_authority_arn_list: ["__string"],
    #             enabled: false
    #           },
    #           unauthenticated: {
    #             enabled: false
    #           }
    #         },
    #         encryption_info: {
    #           encryption_at_rest: {
    #             data_volume_kms_key_id: "__string", # required
    #           },
    #           encryption_in_transit: {
    #             client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #             in_cluster: false
    #           }
    #         },
    #         enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #         open_monitoring: {
    #           prometheus: { # required
    #             jmx_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #             node_exporter: {
    #               enabled_in_broker: false, # required
    #             }
    #           }
    #         },
    #         logging_info: {
    #           broker_logs: { # required
    #             cloud_watch_logs: {
    #               enabled: false, # required
    #               log_group: "__string"
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false, # required
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false, # required
    #               prefix: "__string"
    #             }
    #           }
    #         },
    #         number_of_broker_nodes: 1, # required
    #         zookeeper_connect_string: "__string",
    #         zookeeper_connect_string_tls: "__string",
    #         storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #         customer_action_status: "CRITICAL_ACTION_REQUIRED" # One of: ["CRITICAL_ACTION_REQUIRED", "ACTION_RECOMMENDED", "NONE"]
    #       },
    #       serverless: {
    #         vpc_configs: [ # required
    #           {
    #             subnet_ids: ["__string"], # required
    #             security_group_ids: ["__string"]
    #           }
    #         ],
    #         client_authentication: {
    #           sasl: {
    #             iam: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeClusterV2Response]
    def describe_cluster_v2(params = {}, options = {})
      request = build_request(:describe_cluster_v2, params)
      request.send_request(options)
    end

    # <p>Returns a description of this MSK configuration.</p>
    # @param [Hash, Types::DescribeConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     description: "__string",
    #     kafka_versions: ["__string"],
    #     latest_revision: {
    #       creation_time: Time.now, # required
    #       description: "__string",
    #       revision: 1, # required
    #     },
    #     name: "__string",
    #     state: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #   }
    # @return [Types::DescribeConfigurationResponse]
    def describe_configuration(params = {}, options = {})
      request = build_request(:describe_configuration, params)
      request.send_request(options)
    end

    # <p>Returns a description of this revision of the configuration.</p>
    # @param [Hash, Types::DescribeConfigurationRevisionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    # @option params [Integer] :revision
    #   <p>A string that uniquely identifies a revision of an MSK configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #     revision: 1, # required
    #   }
    #   options = {}
    #   response = client.describe_configuration_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     description: "__string",
    #     revision: 1,
    #     server_properties: "data"
    #   }
    # @return [Types::DescribeConfigurationRevisionResponse]
    def describe_configuration_revision(params = {}, options = {})
      request = build_request(:describe_configuration_revision, params)
      request.send_request(options)
    end

    # <p>Describes a replicator.</p>
    # @param [Hash, Types::DescribeReplicatorRequest] params
    # @option params [String] :replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replicator_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_replicator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     current_version: "__string",
    #     is_replicator_reference: false,
    #     kafka_clusters: [
    #       {
    #         amazon_msk_cluster: {
    #           msk_cluster_arn: "__string", # required
    #         },
    #         kafka_cluster_alias: "__string",
    #         vpc_config: {
    #           security_group_ids: ["__string"],
    #           subnet_ids: ["__string"], # required
    #         }
    #       }
    #     ],
    #     replication_info_list: [
    #       {
    #         consumer_group_replication: {
    #           consumer_groups_to_exclude: ["__stringMax256"],
    #           consumer_groups_to_replicate: ["__stringMax256"], # required
    #           detect_and_copy_new_consumer_groups: false,
    #           synchronise_consumer_group_offsets: false
    #         },
    #         source_kafka_cluster_alias: "__string",
    #         target_compression_type: "NONE" # One of: ["NONE", "GZIP", "SNAPPY", "LZ4", "ZSTD"],
    #         target_kafka_cluster_alias: "__string",
    #         topic_replication: {
    #           copy_access_control_lists_for_topics: false,
    #           copy_topic_configurations: false,
    #           detect_and_copy_new_topics: false,
    #           starting_position: {
    #             type: "LATEST" # One of: ["LATEST", "EARLIEST"]
    #           },
    #           topic_name_configuration: {
    #             type: "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS" # One of: ["PREFIXED_WITH_SOURCE_CLUSTER_ALIAS", "IDENTICAL"]
    #           },
    #           topics_to_exclude: ["__stringMax249"],
    #           topics_to_replicate: ["__stringMax249"], # required
    #         }
    #       }
    #     ],
    #     replicator_arn: "__string",
    #     replicator_description: "__string",
    #     replicator_name: "__string",
    #     replicator_resource_arn: "__string",
    #     replicator_state: "RUNNING" # One of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"],
    #     service_execution_role_arn: "__string",
    #     state_info: {
    #       code: "__string",
    #       message: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeReplicatorResponse]
    def describe_replicator(params = {}, options = {})
      request = build_request(:describe_replicator, params)
      request.send_request(options)
    end

    # <p>Returns a description of this MSK VPC connection.</p>
    # @param [Hash, Types::DescribeVpcConnectionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_vpc_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connection_arn: "__string",
    #     target_cluster_arn: "__string",
    #     state: "CREATING" # One of: ["CREATING", "AVAILABLE", "INACTIVE", "DEACTIVATING", "DELETING", "FAILED", "REJECTED", "REJECTING"],
    #     authentication: "__string",
    #     vpc_id: "__string",
    #     subnets: ["__string"],
    #     security_groups: ["__string"],
    #     creation_time: Time.now,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeVpcConnectionResponse]
    def describe_vpc_connection(params = {}, options = {})
      request = build_request(:describe_vpc_connection, params)
      request.send_request(options)
    end

    # <p>A list of brokers that a client application can use to bootstrap. This list doesn't necessarily include all of the brokers in the cluster. The following Python 3.6 example shows how you can use the Amazon Resource Name (ARN) of a cluster to get its bootstrap brokers. If you don't know the ARN of your cluster, you can use the <code>ListClusters</code> operation to get the ARNs of all the clusters in this account and Region.</p>
    # @param [Hash, Types::GetBootstrapBrokersRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_bootstrap_brokers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bootstrap_broker_string: "__string",
    #     bootstrap_broker_string_tls: "__string",
    #     bootstrap_broker_string_sasl_scram: "__string",
    #     bootstrap_broker_string_sasl_iam: "__string",
    #     bootstrap_broker_string_public_tls: "__string",
    #     bootstrap_broker_string_public_sasl_scram: "__string",
    #     bootstrap_broker_string_public_sasl_iam: "__string",
    #     bootstrap_broker_string_vpc_connectivity_tls: "__string",
    #     bootstrap_broker_string_vpc_connectivity_sasl_scram: "__string",
    #     bootstrap_broker_string_vpc_connectivity_sasl_iam: "__string"
    #   }
    # @return [Types::GetBootstrapBrokersResponse]
    def get_bootstrap_brokers(params = {}, options = {})
      request = build_request(:get_bootstrap_brokers, params)
      request.send_request(options)
    end

    # <p>Get the MSK cluster policy specified by the Amazon Resource Name (ARN) in the request.</p>
    # @param [Hash, Types::GetClusterPolicyRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_cluster_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     current_version: "__string",
    #     policy: "__string"
    #   }
    # @return [Types::GetClusterPolicyResponse]
    def get_cluster_policy(params = {}, options = {})
      request = build_request(:get_cluster_policy, params)
      request.send_request(options)
    end

    # <p>Gets the Apache Kafka versions to which you can update the MSK cluster.</p>
    # @param [Hash, Types::GetCompatibleKafkaVersionsRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string"
    #   }
    #   options = {}
    #   response = client.get_compatible_kafka_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compatible_kafka_versions: [
    #       {
    #         source_version: "__string",
    #         target_versions: ["__string"]
    #       }
    #     ]
    #   }
    # @return [Types::GetCompatibleKafkaVersionsResponse]
    def get_compatible_kafka_versions(params = {}, options = {})
      request = build_request(:get_compatible_kafka_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the VPC connections in this Region.</p>
    # @param [Hash, Types::ListClientVpcConnectionsRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_client_vpc_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_vpc_connections: [
    #       {
    #         authentication: "__string",
    #         creation_time: Time.now,
    #         state: "CREATING" # One of: ["CREATING", "AVAILABLE", "INACTIVE", "DEACTIVATING", "DELETING", "FAILED", "REJECTED", "REJECTING"],
    #         vpc_connection_arn: "__string", # required
    #         owner: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListClientVpcConnectionsResponse]
    def list_client_vpc_connections(params = {}, options = {})
      request = build_request(:list_client_vpc_connections, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the operations that have been performed on the specified MSK cluster.</p>
    # @param [Hash, Types::ListClusterOperationsRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_cluster_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_operation_info_list: [
    #       {
    #         client_request_id: "__string",
    #         cluster_arn: "__string",
    #         creation_time: Time.now,
    #         end_time: Time.now,
    #         error_info: {
    #           error_code: "__string",
    #           error_string: "__string"
    #         },
    #         operation_arn: "__string",
    #         operation_state: "__string",
    #         operation_steps: [
    #           {
    #             step_info: {
    #               step_status: "__string"
    #             },
    #             step_name: "__string"
    #           }
    #         ],
    #         operation_type: "__string",
    #         source_cluster_info: {
    #           broker_ebs_volume_info: [
    #             {
    #               kafka_broker_node_id: "__string", # required
    #               provisioned_throughput: {
    #                 enabled: false,
    #                 volume_throughput: 1
    #               },
    #               volume_size_gb: 1
    #             }
    #           ],
    #           configuration_info: {
    #             arn: "__string", # required
    #             revision: 1, # required
    #           },
    #           number_of_broker_nodes: 1,
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #           open_monitoring: {
    #             prometheus: { # required
    #               jmx_exporter: {
    #                 enabled_in_broker: false, # required
    #               },
    #               node_exporter: {
    #                 enabled_in_broker: false, # required
    #               }
    #             }
    #           },
    #           kafka_version: "__string",
    #           logging_info: {
    #             broker_logs: { # required
    #               cloud_watch_logs: {
    #                 enabled: false, # required
    #                 log_group: "__string"
    #               },
    #               firehose: {
    #                 delivery_stream: "__string",
    #                 enabled: false, # required
    #               },
    #               s3: {
    #                 bucket: "__string",
    #                 enabled: false, # required
    #                 prefix: "__string"
    #               }
    #             }
    #           },
    #           instance_type: "__stringMin5Max32",
    #           client_authentication: {
    #             sasl: {
    #               scram: {
    #                 enabled: false
    #               },
    #               iam: {
    #                 enabled: false
    #               }
    #             },
    #             tls: {
    #               certificate_authority_arn_list: ["__string"],
    #               enabled: false
    #             },
    #             unauthenticated: {
    #               enabled: false
    #             }
    #           },
    #           encryption_info: {
    #             encryption_at_rest: {
    #               data_volume_kms_key_id: "__string", # required
    #             },
    #             encryption_in_transit: {
    #               client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #               in_cluster: false
    #             }
    #           },
    #           connectivity_info: {
    #             public_access: {
    #               type: "__string"
    #             },
    #             vpc_connectivity: {
    #               client_authentication: {
    #                 sasl: {
    #                   scram: {
    #                     enabled: false
    #                   },
    #                   iam: {
    #                     enabled: false
    #                   }
    #                 },
    #                 tls: {
    #                   enabled: false
    #                 }
    #               }
    #             }
    #           },
    #           storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #           broker_count_update_info: {
    #             created_broker_ids: [1.0],
    #             deleted_broker_ids: [1.0]
    #           }
    #         },
    #         target_cluster_info: {
    #           broker_ebs_volume_info: [
    #             {
    #               kafka_broker_node_id: "__string", # required
    #               provisioned_throughput: {
    #                 enabled: false,
    #                 volume_throughput: 1
    #               },
    #               volume_size_gb: 1
    #             }
    #           ],
    #           configuration_info: {
    #             arn: "__string", # required
    #             revision: 1, # required
    #           },
    #           number_of_broker_nodes: 1,
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #           open_monitoring: {
    #             prometheus: { # required
    #               jmx_exporter: {
    #                 enabled_in_broker: false, # required
    #               },
    #               node_exporter: {
    #                 enabled_in_broker: false, # required
    #               }
    #             }
    #           },
    #           kafka_version: "__string",
    #           logging_info: {
    #             broker_logs: { # required
    #               cloud_watch_logs: {
    #                 enabled: false, # required
    #                 log_group: "__string"
    #               },
    #               firehose: {
    #                 delivery_stream: "__string",
    #                 enabled: false, # required
    #               },
    #               s3: {
    #                 bucket: "__string",
    #                 enabled: false, # required
    #                 prefix: "__string"
    #               }
    #             }
    #           },
    #           instance_type: "__stringMin5Max32",
    #           client_authentication: {
    #             sasl: {
    #               scram: {
    #                 enabled: false
    #               },
    #               iam: {
    #                 enabled: false
    #               }
    #             },
    #             tls: {
    #               certificate_authority_arn_list: ["__string"],
    #               enabled: false
    #             },
    #             unauthenticated: {
    #               enabled: false
    #             }
    #           },
    #           encryption_info: {
    #             encryption_at_rest: {
    #               data_volume_kms_key_id: "__string", # required
    #             },
    #             encryption_in_transit: {
    #               client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #               in_cluster: false
    #             }
    #           },
    #           connectivity_info: {
    #             public_access: {
    #               type: "__string"
    #             },
    #             vpc_connectivity: {
    #               client_authentication: {
    #                 sasl: {
    #                   scram: {
    #                     enabled: false
    #                   },
    #                   iam: {
    #                     enabled: false
    #                   }
    #                 },
    #                 tls: {
    #                   enabled: false
    #                 }
    #               }
    #             }
    #           },
    #           storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #           broker_count_update_info: {
    #             created_broker_ids: [1.0],
    #             deleted_broker_ids: [1.0]
    #           }
    #         },
    #         vpc_connection_info: {
    #           vpc_connection_arn: "__string",
    #           owner: "__string",
    #           user_identity: {
    #             type: "AWSACCOUNT" # One of: ["AWSACCOUNT", "AWSSERVICE"],
    #             principal_id: "__string"
    #           },
    #           creation_time: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListClusterOperationsResponse]
    def list_cluster_operations(params = {}, options = {})
      request = build_request(:list_cluster_operations, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the operations that have been performed on the specified MSK cluster.</p>
    # @param [Hash, Types::ListClusterOperationsV2Request] params
    # @option params [String] :cluster_arn
    #   The arn of the cluster whose operations are being requested.
    # @option params [Integer] :max_results
    #   The maxResults of the query.
    # @option params [String] :next_token
    #   The nextToken of the query.
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_cluster_operations_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_operation_info_list: [
    #       {
    #         cluster_arn: "__string",
    #         cluster_type: "PROVISIONED" # One of: ["PROVISIONED", "SERVERLESS"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         operation_arn: "__string",
    #         operation_state: "__string",
    #         operation_type: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListClusterOperationsV2Response]
    def list_cluster_operations_v2(params = {}, options = {})
      request = build_request(:list_cluster_operations_v2, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the MSK clusters in the current Region.</p>
    # @param [Hash, Types::ListClustersRequest] params
    # @option params [String] :cluster_name_filter
    #   <p>Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name_filter: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_info_list: [
    #       {
    #         active_operation_arn: "__string",
    #         broker_node_group_info: {
    #           broker_az_distribution: "DEFAULT" # One of: ["DEFAULT"],
    #           client_subnets: ["__string"], # required
    #           instance_type: "__stringMin5Max32", # required
    #           security_groups: ["__string"],
    #           storage_info: {
    #             ebs_storage_info: {
    #               provisioned_throughput: {
    #                 enabled: false,
    #                 volume_throughput: 1
    #               },
    #               volume_size: 1
    #             }
    #           },
    #           connectivity_info: {
    #             public_access: {
    #               type: "__string"
    #             },
    #             vpc_connectivity: {
    #               client_authentication: {
    #                 sasl: {
    #                   scram: {
    #                     enabled: false
    #                   },
    #                   iam: {
    #                     enabled: false
    #                   }
    #                 },
    #                 tls: {
    #                   enabled: false
    #                 }
    #               }
    #             }
    #           },
    #           zone_ids: ["__string"]
    #         },
    #         client_authentication: {
    #           sasl: {
    #             scram: {
    #               enabled: false
    #             },
    #             iam: {
    #               enabled: false
    #             }
    #           },
    #           tls: {
    #             certificate_authority_arn_list: ["__string"],
    #             enabled: false
    #           },
    #           unauthenticated: {
    #             enabled: false
    #           }
    #         },
    #         cluster_arn: "__string",
    #         cluster_name: "__string",
    #         creation_time: Time.now,
    #         current_broker_software_info: {
    #           configuration_arn: "__string",
    #           configuration_revision: 1,
    #           kafka_version: "__string"
    #         },
    #         current_version: "__string",
    #         encryption_info: {
    #           encryption_at_rest: {
    #             data_volume_kms_key_id: "__string", # required
    #           },
    #           encryption_in_transit: {
    #             client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #             in_cluster: false
    #           }
    #         },
    #         enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #         open_monitoring: {
    #           prometheus: { # required
    #             jmx_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #             node_exporter: {
    #               enabled_in_broker: false, # required
    #             }
    #           }
    #         },
    #         logging_info: {
    #           broker_logs: { # required
    #             cloud_watch_logs: {
    #               enabled: false, # required
    #               log_group: "__string"
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false, # required
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false, # required
    #               prefix: "__string"
    #             }
    #           }
    #         },
    #         number_of_broker_nodes: 1,
    #         state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"],
    #         state_info: {
    #           code: "__string",
    #           message: "__string"
    #         },
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         zookeeper_connect_string: "__string",
    #         zookeeper_connect_string_tls: "__string",
    #         storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #         customer_action_status: "CRITICAL_ACTION_REQUIRED" # One of: ["CRITICAL_ACTION_REQUIRED", "ACTION_RECOMMENDED", "NONE"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListClustersResponse]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the MSK clusters in the current Region.</p>
    # @param [Hash, Types::ListClustersV2Request] params
    # @option params [String] :cluster_name_filter
    #   <p>Specify a prefix of the names of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    # @option params [String] :cluster_type_filter
    #   <p>Specify either PROVISIONED or SERVERLESS.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name_filter: "__string",
    #     cluster_type_filter: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_clusters_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_info_list: [
    #       {
    #         active_operation_arn: "__string",
    #         cluster_type: "PROVISIONED" # One of: ["PROVISIONED", "SERVERLESS"],
    #         cluster_arn: "__string",
    #         cluster_name: "__string",
    #         creation_time: Time.now,
    #         current_version: "__string",
    #         state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"],
    #         state_info: {
    #           code: "__string",
    #           message: "__string"
    #         },
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         provisioned: {
    #           broker_node_group_info: { # required
    #             broker_az_distribution: "DEFAULT" # One of: ["DEFAULT"],
    #             client_subnets: ["__string"], # required
    #             instance_type: "__stringMin5Max32", # required
    #             security_groups: ["__string"],
    #             storage_info: {
    #               ebs_storage_info: {
    #                 provisioned_throughput: {
    #                   enabled: false,
    #                   volume_throughput: 1
    #                 },
    #                 volume_size: 1
    #               }
    #             },
    #             connectivity_info: {
    #               public_access: {
    #                 type: "__string"
    #               },
    #               vpc_connectivity: {
    #                 client_authentication: {
    #                   sasl: {
    #                     scram: {
    #                       enabled: false
    #                     },
    #                     iam: {
    #                       enabled: false
    #                     }
    #                   },
    #                   tls: {
    #                     enabled: false
    #                   }
    #                 }
    #               }
    #             },
    #             zone_ids: ["__string"]
    #           },
    #           current_broker_software_info: {
    #             configuration_arn: "__string",
    #             configuration_revision: 1,
    #             kafka_version: "__string"
    #           },
    #           client_authentication: {
    #             sasl: {
    #               scram: {
    #                 enabled: false
    #               },
    #               iam: {
    #                 enabled: false
    #               }
    #             },
    #             tls: {
    #               certificate_authority_arn_list: ["__string"],
    #               enabled: false
    #             },
    #             unauthenticated: {
    #               enabled: false
    #             }
    #           },
    #           encryption_info: {
    #             encryption_at_rest: {
    #               data_volume_kms_key_id: "__string", # required
    #             },
    #             encryption_in_transit: {
    #               client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #               in_cluster: false
    #             }
    #           },
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #           open_monitoring: {
    #             prometheus: { # required
    #               jmx_exporter: {
    #                 enabled_in_broker: false, # required
    #               },
    #               node_exporter: {
    #                 enabled_in_broker: false, # required
    #               }
    #             }
    #           },
    #           logging_info: {
    #             broker_logs: { # required
    #               cloud_watch_logs: {
    #                 enabled: false, # required
    #                 log_group: "__string"
    #               },
    #               firehose: {
    #                 delivery_stream: "__string",
    #                 enabled: false, # required
    #               },
    #               s3: {
    #                 bucket: "__string",
    #                 enabled: false, # required
    #                 prefix: "__string"
    #               }
    #             }
    #           },
    #           number_of_broker_nodes: 1, # required
    #           zookeeper_connect_string: "__string",
    #           zookeeper_connect_string_tls: "__string",
    #           storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #           customer_action_status: "CRITICAL_ACTION_REQUIRED" # One of: ["CRITICAL_ACTION_REQUIRED", "ACTION_RECOMMENDED", "NONE"]
    #         },
    #         serverless: {
    #           vpc_configs: [ # required
    #             {
    #               subnet_ids: ["__string"], # required
    #               security_group_ids: ["__string"]
    #             }
    #           ],
    #           client_authentication: {
    #             sasl: {
    #               iam: {
    #                 enabled: false
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListClustersV2Response]
    def list_clusters_v2(params = {}, options = {})
      request = build_request(:list_clusters_v2, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the MSK configurations in this Region.</p>
    # @param [Hash, Types::ListConfigurationRevisionsRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_configuration_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     revisions: [
    #       {
    #         creation_time: Time.now, # required
    #         description: "__string",
    #         revision: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListConfigurationRevisionsResponse]
    def list_configuration_revisions(params = {}, options = {})
      request = build_request(:list_configuration_revisions, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the MSK configurations in this Region.</p>
    # @param [Hash, Types::ListConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [
    #       {
    #         arn: "__string", # required
    #         creation_time: Time.now, # required
    #         description: "__string", # required
    #         kafka_versions: ["__string"], # required
    #         latest_revision: { # required
    #           creation_time: Time.now, # required
    #           description: "__string",
    #           revision: 1, # required
    #         },
    #         name: "__string", # required
    #         state: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED"], # required
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListConfigurationsResponse]
    def list_configurations(params = {}, options = {})
      request = build_request(:list_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of Apache Kafka versions.</p>
    # @param [Hash, Types::ListKafkaVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_kafka_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kafka_versions: [
    #       {
    #         version: "__string",
    #         status: "ACTIVE" # One of: ["ACTIVE", "DEPRECATED"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListKafkaVersionsResponse]
    def list_kafka_versions(params = {}, options = {})
      request = build_request(:list_kafka_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of the broker nodes in the cluster.</p>
    # @param [Hash, Types::ListNodesRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     node_info_list: [
    #       {
    #         added_to_cluster_time: "__string",
    #         broker_node_info: {
    #           attached_eni_id: "__string",
    #           broker_id: 1.0,
    #           client_subnet: "__string",
    #           client_vpc_ip_address: "__string",
    #           current_broker_software_info: {
    #             configuration_arn: "__string",
    #             configuration_revision: 1,
    #             kafka_version: "__string"
    #           },
    #           endpoints: ["__string"]
    #         },
    #         controller_node_info: {
    #           endpoints: ["__string"]
    #         },
    #         instance_type: "__string",
    #         node_arn: "__string",
    #         node_type: "BROKER" # One of: ["BROKER"],
    #         zookeeper_node_info: {
    #           attached_eni_id: "__string",
    #           client_vpc_ip_address: "__string",
    #           endpoints: ["__string"],
    #           zookeeper_id: 1.0,
    #           zookeeper_version: "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListNodesResponse]
    def list_nodes(params = {}, options = {})
      request = build_request(:list_nodes, params)
      request.send_request(options)
    end

    # <p>Lists the replicators.</p>
    # @param [Hash, Types::ListReplicatorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>If the response of ListReplicators is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListReplicators.</p>
    # @option params [String] :replicator_name_filter
    #   <p>Returns replicators starting with given name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     replicator_name_filter: "__string"
    #   }
    #   options = {}
    #   response = client.list_replicators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     replicators: [
    #       {
    #         creation_time: Time.now,
    #         current_version: "__string",
    #         is_replicator_reference: false,
    #         kafka_clusters_summary: [
    #           {
    #             amazon_msk_cluster: {
    #               msk_cluster_arn: "__string", # required
    #             },
    #             kafka_cluster_alias: "__string"
    #           }
    #         ],
    #         replication_info_summary_list: [
    #           {
    #             source_kafka_cluster_alias: "__string",
    #             target_kafka_cluster_alias: "__string"
    #           }
    #         ],
    #         replicator_arn: "__string",
    #         replicator_name: "__string",
    #         replicator_resource_arn: "__string",
    #         replicator_state: "RUNNING" # One of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListReplicatorsResponse]
    def list_replicators(params = {}, options = {})
      request = build_request(:list_replicators, params)
      request.send_request(options)
    end

    # <p>Returns a list of the Scram Secrets associated with an Amazon MSK cluster.</p>
    # @param [Hash, Types::ListScramSecretsRequest] params
    # @option params [String] :cluster_arn
    #   <p>The arn of the cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maxResults of the query.</p>
    # @option params [String] :next_token
    #   <p>The nextToken of the query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_scram_secrets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     secret_arn_list: ["__string"]
    #   }
    # @return [Types::ListScramSecretsResponse]
    def list_scram_secrets(params = {}, options = {})
      request = build_request(:list_scram_secrets, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags associated with the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
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
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the VPC connections in this Region.</p>
    # @param [Hash, Types::ListVpcConnectionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
    #               To get the next batch, provide this token in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_vpc_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connections: [
    #       {
    #         vpc_connection_arn: "__string", # required
    #         target_cluster_arn: "__string", # required
    #         creation_time: Time.now,
    #         authentication: "__string",
    #         vpc_id: "__string",
    #         state: "CREATING" # One of: ["CREATING", "AVAILABLE", "INACTIVE", "DEACTIVATING", "DELETING", "FAILED", "REJECTED", "REJECTING"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListVpcConnectionsResponse]
    def list_vpc_connections(params = {}, options = {})
      request = build_request(:list_vpc_connections, params)
      request.send_request(options)
    end

    # <p>Creates or updates the MSK cluster policy specified by the cluster Amazon Resource Name (ARN) in the request.</p>
    # @param [Hash, Types::PutClusterPolicyRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @option params [String] :current_version
    #   <p>The policy version.</p>
    # @option params [String] :policy
    #   <p>The policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string",
    #     policy: "__string", # required
    #   }
    #   options = {}
    #   response = client.put_cluster_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     current_version: "__string"
    #   }
    # @return [Types::PutClusterPolicyResponse]
    def put_cluster_policy(params = {}, options = {})
      request = build_request(:put_cluster_policy, params)
      request.send_request(options)
    end

    # Reboots brokers.
    # @param [Hash, Types::RebootBrokerRequest] params
    # @option params [Array<String>] :broker_ids
    #   <p>The list of broker IDs to be rebooted. The reboot-broker operation supports rebooting one broker at a time.</p>
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_ids: ["__string"], # required
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.reboot_broker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::RebootBrokerResponse]
    def reboot_broker(params = {}, options = {})
      request = build_request(:reboot_broker, params)
      request.send_request(options)
    end

    # <p>Returns empty response.</p>
    # @param [Hash, Types::RejectClientVpcConnectionRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @option params [String] :vpc_connection_arn
    #   <p>The VPC connection ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     vpc_connection_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.reject_client_vpc_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RejectClientVpcConnectionResponse]
    def reject_client_vpc_connection(params = {}, options = {})
      request = build_request(:reject_client_vpc_connection, params)
      request.send_request(options)
    end

    # <p>Adds tags to the specified MSK resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pair for the resource tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the tags associated with the keys that are provided in the query.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys must be unique for a given cluster. In addition, the following restrictions apply:</p>
    #               <ul>
    #                  <li>
    #                     <p>Each tag key must be unique. If you add a tag with a key that's already in
    #                     use, your new tag overwrites the existing key-value pair. </p>
    #                  </li>
    #                  <li>
    #                     <p>You can't start a tag key with aws: because this prefix is reserved for use
    #                     by  AWS.  AWS creates tags that begin with this prefix on your behalf, but
    #                     you can't edit or delete them.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must be between 1 and 128 Unicode characters in length.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must consist of the following characters: Unicode letters, digits,
    #                     white space, and the following special characters: _ . / = + -
    #                        @.</p>
    #                  </li>
    #               </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the number of broker nodes in the cluster.</p>
    # @param [Hash, Types::UpdateBrokerCountRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [String] :current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    # @option params [Integer] :target_number_of_broker_nodes
    #   <p>The number of broker nodes that you want the cluster to have after this operation completes successfully.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     target_number_of_broker_nodes: 1, # required
    #   }
    #   options = {}
    #   response = client.update_broker_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateBrokerCountResponse]
    def update_broker_count(params = {}, options = {})
      request = build_request(:update_broker_count, params)
      request.send_request(options)
    end

    # <p>Updates the EBS storage associated with MSK brokers.</p>
    # @param [Hash, Types::UpdateBrokerStorageRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [String] :current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    # @option params [Array<Types::BrokerEBSVolumeInfo>] :target_broker_ebs_volume_info
    #   <p>Describes the target volume size and the ID of the broker to apply the update to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     target_broker_ebs_volume_info: [ # required
    #       {
    #         kafka_broker_node_id: "__string", # required
    #         provisioned_throughput: {
    #           enabled: false,
    #           volume_throughput: 1
    #         },
    #         volume_size_gb: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_broker_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateBrokerStorageResponse]
    def update_broker_storage(params = {}, options = {})
      request = build_request(:update_broker_storage, params)
      request.send_request(options)
    end

    # <p>Updates EC2 instance type.</p>
    # @param [Hash, Types::UpdateBrokerTypeRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [String] :current_version
    #   <p>The cluster version that you want to change. After this operation completes successfully, the cluster will have a new version.</p>
    # @option params [String] :target_instance_type
    #   <p>The Amazon MSK broker type that you want all of the brokers in this cluster to be.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     target_instance_type: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_broker_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateBrokerTypeResponse]
    def update_broker_type(params = {}, options = {})
      request = build_request(:update_broker_type, params)
      request.send_request(options)
    end

    # <p>Updates the cluster with the configuration that is specified in the request body.</p>
    # @param [Hash, Types::UpdateClusterConfigurationRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [Types::ConfigurationInfo] :configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    # @option params [String] :current_version
    #   <p>The version of the cluster that needs to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     configuration_info: { # required
    #       arn: "__string", # required
    #       revision: 1, # required
    #     },
    #     current_version: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_cluster_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateClusterConfigurationResponse]
    def update_cluster_configuration(params = {}, options = {})
      request = build_request(:update_cluster_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the Apache Kafka version for the cluster.</p>
    # @param [Hash, Types::UpdateClusterKafkaVersionRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    # @option params [Types::ConfigurationInfo] :configuration_info
    #   <p>The custom configuration that should be applied on the new version of cluster.</p>
    # @option params [String] :current_version
    #   <p>Current cluster version.</p>
    # @option params [String] :target_kafka_version
    #   <p>Target Kafka version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     configuration_info: {
    #       arn: "__string", # required
    #       revision: 1, # required
    #     },
    #     current_version: "__string", # required
    #     target_kafka_version: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_cluster_kafka_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateClusterKafkaVersionResponse]
    def update_cluster_kafka_version(params = {}, options = {})
      request = build_request(:update_cluster_kafka_version, params)
      request.send_request(options)
    end

    # <p>Updates an MSK configuration.</p>
    # @param [Hash, Types::UpdateConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    # @option params [String] :description
    #   <p>The description of the configuration revision.</p>
    # @option params [String] :server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. 
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "__string", # required
    #     description: "__string",
    #     server_properties: "data", # required
    #   }
    #   options = {}
    #   response = client.update_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     latest_revision: {
    #       creation_time: Time.now, # required
    #       description: "__string",
    #       revision: 1, # required
    #     }
    #   }
    # @return [Types::UpdateConfigurationResponse]
    def update_configuration(params = {}, options = {})
      request = build_request(:update_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the cluster's connectivity configuration.</p>
    # @param [Hash, Types::UpdateConnectivityRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    # @option params [Types::ConnectivityInfo] :connectivity_info
    #   <p>Information about the broker access configuration.</p>
    # @option params [String] :current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     connectivity_info: { # required
    #       public_access: {
    #         type: "__string"
    #       },
    #       vpc_connectivity: {
    #         client_authentication: {
    #           sasl: {
    #             scram: {
    #               enabled: false
    #             },
    #             iam: {
    #               enabled: false
    #             }
    #           },
    #           tls: {
    #             enabled: false
    #           }
    #         }
    #       }
    #     },
    #     current_version: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_connectivity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateConnectivityResponse]
    def update_connectivity(params = {}, options = {})
      request = build_request(:update_connectivity, params)
      request.send_request(options)
    end

    # <p>Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.</p>
    # @param [Hash, Types::UpdateMonitoringRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [String] :current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    # @option params [String] :enhanced_monitoring
    #   <p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>
    # @option params [Types::OpenMonitoringInfo] :open_monitoring
    #   <p>The settings for open monitoring.</p>
    # @option params [Types::LoggingInfo] :logging_info
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"],
    #     open_monitoring: {
    #       prometheus: { # required
    #         jmx_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false, # required
    #         }
    #       }
    #     },
    #     logging_info: {
    #       broker_logs: { # required
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
    #     }
    #   }
    #   options = {}
    #   response = client.update_monitoring(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateMonitoringResponse]
    def update_monitoring(params = {}, options = {})
      request = build_request(:update_monitoring, params)
      request.send_request(options)
    end

    # <p>Updates replication info of a replicator.</p>
    # @param [Hash, Types::UpdateReplicationInfoRequest] params
    # @option params [Types::ConsumerGroupReplicationUpdate] :consumer_group_replication
    #   <p>Updated consumer group replication information.</p>
    # @option params [String] :current_version
    #   <p>Current replicator version.</p>
    # @option params [String] :replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator to be updated.</p>
    # @option params [String] :source_kafka_cluster_arn
    #   <p>The ARN of the source Kafka cluster.</p>
    # @option params [String] :target_kafka_cluster_arn
    #   <p>The ARN of the target Kafka cluster.</p>
    # @option params [Types::TopicReplicationUpdate] :topic_replication
    #   <p>Updated topic replication information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consumer_group_replication: {
    #       consumer_groups_to_exclude: ["__stringMax256"], # required
    #       consumer_groups_to_replicate: ["__stringMax256"], # required
    #       detect_and_copy_new_consumer_groups: false, # required
    #       synchronise_consumer_group_offsets: false, # required
    #     },
    #     current_version: "__string", # required
    #     replicator_arn: "__string", # required
    #     source_kafka_cluster_arn: "__string", # required
    #     target_kafka_cluster_arn: "__string", # required
    #     topic_replication: {
    #       copy_access_control_lists_for_topics: false, # required
    #       copy_topic_configurations: false, # required
    #       detect_and_copy_new_topics: false, # required
    #       topics_to_exclude: ["__stringMax249"], # required
    #       topics_to_replicate: ["__stringMax249"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_replication_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replicator_arn: "__string",
    #     replicator_state: "RUNNING" # One of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #   }
    # @return [Types::UpdateReplicationInfoResponse]
    def update_replication_info(params = {}, options = {})
      request = build_request(:update_replication_info, params)
      request.send_request(options)
    end

    # <p>Updates the security settings for the cluster. You can use this operation to specify encryption and authentication on existing clusters.</p>
    # @param [Hash, Types::UpdateSecurityRequest] params
    # @option params [Types::ClientAuthentication] :client_authentication
    #   <p>Includes all client authentication related information.</p>
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    # @option params [String] :current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    # @option params [Types::EncryptionInfo] :encryption_info
    #   <p>Includes all encryption-related information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_authentication: {
    #       sasl: {
    #         scram: {
    #           enabled: false
    #         },
    #         iam: {
    #           enabled: false
    #         }
    #       },
    #       tls: {
    #         certificate_authority_arn_list: ["__string"],
    #         enabled: false
    #       },
    #       unauthenticated: {
    #         enabled: false
    #       }
    #     },
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     encryption_info: {
    #       encryption_at_rest: {
    #         data_volume_kms_key_id: "__string", # required
    #       },
    #       encryption_in_transit: {
    #         client_broker: "TLS" # One of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"],
    #         in_cluster: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_security(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateSecurityResponse]
    def update_security(params = {}, options = {})
      request = build_request(:update_security, params)
      request.send_request(options)
    end

    # Updates cluster broker volume size (or) sets cluster storage mode to TIERED.
    # @param [Hash, Types::UpdateStorageRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    # @option params [String] :current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput
    #   <p>EBS volume provisioned throughput information.</p>
    # @option params [String] :storage_mode
    #   <p>Controls storage mode for supported storage tiers.</p>
    # @option params [Integer] :volume_size_gb
    #   <p>size of the EBS volume to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     provisioned_throughput: {
    #       enabled: false,
    #       volume_throughput: 1
    #     },
    #     storage_mode: "LOCAL" # One of: ["LOCAL", "TIERED"],
    #     volume_size_gb: 1
    #   }
    #   options = {}
    #   response = client.update_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "__string",
    #     cluster_operation_arn: "__string"
    #   }
    # @return [Types::UpdateStorageResponse]
    def update_storage(params = {}, options = {})
      request = build_request(:update_storage, params)
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
      context[:gem_name] = 'aws-sdk-kafka'
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
