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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:vpclattice)

module Aws::VPCLattice
  # An API client for Aws::VPCLattice.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MercuryControlPlane
    @identifier = :vpclattice

    add_plugin(::Aws::VPCLattice::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::VPCLattice::EndpointProvider)
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

    # <p>Updates the listener rules in a batch. You can use this operation to change the priority of listener rules. This can be useful when bulk updating or swapping rule priority.</p> <p> <b>Required permissions:</b> <code>vpc-lattice:UpdateRule</code> </p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/security_iam_service-with-iam.html">How Amazon VPC Lattice works with IAM</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::BatchUpdateRuleInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [Array<Types::RuleUpdate>] :rules
    #   <p>The rules for the specified listener.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     rules: [ # required
    #       {
    #         rule_identifier: "RuleIdentifier", # required
    #         match: {
    #           # One of:
    #           http_match: {
    #             method: "HttpMethod",
    #             path_match: {
    #               match: { # required
    #                 # One of:
    #                 exact: "PathMatchExact",
    #                 prefix: "PathMatchPrefix"
    #               },
    #               case_sensitive: false
    #             },
    #             header_matches: [
    #               {
    #                 name: "HeaderMatchName", # required
    #                 match: { # required
    #                   # One of:
    #                   exact: "HeaderMatchExact",
    #                   prefix: "HeaderMatchPrefix",
    #                   contains: "HeaderMatchContains"
    #                 },
    #                 case_sensitive: false
    #               }
    #             ]
    #           }
    #         },
    #         priority: 1,
    #         action: {
    #           # One of:
    #           forward: {
    #             target_groups: [ # required
    #               {
    #                 target_group_identifier: "TargetGroupIdentifier", # required
    #                 weight: 1
    #               }
    #             ]
    #           },
    #           fixed_response: {
    #             status_code: 1, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         arn: "RuleArn",
    #         id: "RuleId",
    #         name: "RuleName",
    #         is_default: false,
    #         match: {
    #           # One of:
    #           http_match: {
    #             method: "HttpMethod",
    #             path_match: {
    #               match: { # required
    #                 # One of:
    #                 exact: "PathMatchExact",
    #                 prefix: "PathMatchPrefix"
    #               },
    #               case_sensitive: false
    #             },
    #             header_matches: [
    #               {
    #                 name: "HeaderMatchName", # required
    #                 match: { # required
    #                   # One of:
    #                   exact: "HeaderMatchExact",
    #                   prefix: "HeaderMatchPrefix",
    #                   contains: "HeaderMatchContains"
    #                 },
    #                 case_sensitive: false
    #               }
    #             ]
    #           }
    #         },
    #         priority: 1,
    #         action: {
    #           # One of:
    #           forward: {
    #             target_groups: [ # required
    #               {
    #                 target_group_identifier: "TargetGroupIdentifier", # required
    #                 weight: 1
    #               }
    #             ]
    #           },
    #           fixed_response: {
    #             status_code: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     unsuccessful: [
    #       {
    #         rule_identifier: "RuleIdentifier",
    #         failure_code: "FailureCode",
    #         failure_message: "FailureMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateRuleOutput]
    def batch_update_rule(params = {}, options = {})
      request = build_request(:batch_update_rule, params)
      request.send_request(options)
    end

    # <p>Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and Amazon Kinesis Data Firehose. The service network owner can use the access logs to audit the services in the network. The service network owner can only see access logs from clients and services that are associated with their service network. Access log entries represent traffic originated from VPCs associated with that network. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html">Access logs</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::CreateAccessLogSubscriptionInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    # @option params [String] :destination_arn
    #   <p>The Amazon Resource Name (ARN) of the destination. The supported destination types are CloudWatch Log groups, Kinesis Data Firehose delivery streams, and Amazon S3 buckets.</p>
    # @option params [String] :service_network_log_type
    #   <p>The type of log that monitors your Amazon VPC Lattice service networks.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the access log subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     resource_identifier: "ResourceIdentifier", # required
    #     destination_arn: "AccessLogDestinationArn", # required
    #     service_network_log_type: "ServiceNetworkLogType",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_log_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AccessLogSubscriptionId", # required
    #     arn: "AccessLogSubscriptionArn", # required
    #     resource_id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     service_network_log_type: "ServiceNetworkLogType",
    #     destination_arn: "AccessLogDestinationArn", # required
    #   }
    # @return [Types::CreateAccessLogSubscriptionOutput]
    def create_access_log_subscription(params = {}, options = {})
      request = build_request(:create_access_log_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a listener for a service. Before you start using your Amazon VPC Lattice service, you must add one or more listeners. A listener is a process that checks for connection requests to your services. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html">Listeners</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::CreateListenerInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :name
    #   <p>The name of the listener. A listener name must be unique within a service. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    # @option params [String] :protocol
    #   <p>The listener protocol.</p>
    # @option params [Integer] :port
    #   <p>The listener port. You can specify a value from 1 to 65535. For HTTP, the default is 80. For HTTPS, the default is 443.</p>
    # @option params [Types::RuleAction] :default_action
    #   <p>The action for the default rule. Each listener has a default rule. The default rule is used if no other rules match.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the listener.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     name: "ListenerName", # required
    #     protocol: "ListenerProtocol", # required
    #     port: 1,
    #     default_action: { # required
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ListenerArn",
    #     id: "ListenerId",
    #     name: "ListenerName",
    #     protocol: "ListenerProtocol",
    #     port: 1,
    #     service_arn: "ServiceArn",
    #     service_id: "ServiceId",
    #     default_action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::CreateListenerOutput]
    def create_listener(params = {}, options = {})
      request = build_request(:create_listener, params)
      request.send_request(options)
    end

    # <p>Creates a resource configuration. A resource configuration defines a specific resource. You can associate a resource configuration with a service network or a VPC endpoint.</p>
    # @param [Hash, Types::CreateResourceConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the resource configuration. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    # @option params [String] :type
    #   <p>The type of resource configuration. A resource configuration can be one of the following types:</p> <ul> <li> <p> <b>SINGLE</b> - A single resource.</p> </li> <li> <p> <b>GROUP</b> - A group of resources. You must create a group resource configuration before you create a child resource configuration.</p> </li> <li> <p> <b>CHILD</b> - A single resource that is part of a group resource configuration.</p> </li> <li> <p> <b>ARN</b> - An Amazon Web Services resource.</p> </li> </ul>
    # @option params [Array<String>] :port_ranges
    #   <p>(SINGLE, GROUP, CHILD) The TCP port ranges that a consumer can use to access a resource configuration (for example: 1-65535). You can separate port ranges using commas (for example: 1,2,22-30).</p>
    # @option params [String] :protocol
    #   <p>(SINGLE, GROUP) The protocol accepted by the resource configuration.</p>
    # @option params [String] :resource_gateway_identifier
    #   <p>(SINGLE, GROUP, ARN) The ID or ARN of the resource gateway used to connect to the resource configuration. For a child resource configuration, this value is inherited from the parent resource configuration.</p>
    # @option params [String] :resource_configuration_group_identifier
    #   <p>(CHILD) The ID or ARN of the parent resource configuration of type <code>GROUP</code>. This is used to associate a child resource configuration with a group resource configuration.</p>
    # @option params [Types::ResourceConfigurationDefinition] :resource_configuration_definition
    #   <p>Identifies the resource configuration in one of the following ways:</p> <ul> <li> <p> <b>Amazon Resource Name (ARN)</b> - Supported resource-types that are provisioned by Amazon Web Services services, such as RDS databases, can be identified by their ARN.</p> </li> <li> <p> <b>Domain name</b> - Any domain name that is publicly resolvable.</p> </li> <li> <p> <b>IP address</b> - For IPv4 and IPv6, only IP addresses in the VPC are supported.</p> </li> </ul>
    # @option params [Boolean] :allow_association_to_shareable_service_network
    #   <p>(SINGLE, GROUP, ARN) Specifies whether the resource configuration can be associated with a sharable service network. The default is false.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceConfigurationName", # required
    #     type: "ResourceConfigurationType", # required
    #     port_ranges: ["PortRange"],
    #     protocol: "ProtocolType",
    #     resource_gateway_identifier: "ResourceGatewayIdentifier",
    #     resource_configuration_group_identifier: "ResourceConfigurationIdentifier",
    #     resource_configuration_definition: {
    #       # One of:
    #       dns_resource: {
    #         domain_name: "DomainName",
    #         ip_address_type: "ResourceConfigurationIpAddressType"
    #       },
    #       ip_resource: {
    #         ip_address: "IpAddress"
    #       },
    #       arn_resource: {
    #         arn: "WildcardArn"
    #       }
    #     },
    #     allow_association_to_shareable_service_network: false,
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_resource_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceConfigurationId",
    #     name: "ResourceConfigurationName",
    #     arn: "ResourceConfigurationArn",
    #     resource_gateway_id: "ResourceGatewayId",
    #     resource_configuration_group_id: "ResourceConfigurationId",
    #     type: "ResourceConfigurationType",
    #     port_ranges: ["PortRange"],
    #     protocol: "ProtocolType",
    #     status: "ResourceConfigurationStatus",
    #     resource_configuration_definition: {
    #       # One of:
    #       dns_resource: {
    #         domain_name: "DomainName",
    #         ip_address_type: "ResourceConfigurationIpAddressType"
    #       },
    #       ip_resource: {
    #         ip_address: "IpAddress"
    #       },
    #       arn_resource: {
    #         arn: "WildcardArn"
    #       }
    #     },
    #     allow_association_to_shareable_service_network: false,
    #     created_at: Time.now,
    #     failure_reason: "String"
    #   }
    # @return [Types::CreateResourceConfigurationResponse]
    def create_resource_configuration(params = {}, options = {})
      request = build_request(:create_resource_configuration, params)
      request.send_request(options)
    end

    # <p>A resource gateway is a point of ingress into the VPC where a resource resides. It spans multiple Availability Zones. For your resource to be accessible from all Availability Zones, you should create your resource gateways to span as many Availability Zones as possible. A VPC can have multiple resource gateways.</p>
    # @param [Hash, Types::CreateResourceGatewayRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :name
    #   <p>The name of the resource gateway.</p>
    # @option params [String] :vpc_identifier
    #   <p>The ID of the VPC for the resource gateway.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The IDs of the VPC subnets in which to create the resource gateway.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The IDs of the security groups to apply to the resource gateway. The security groups must be in the same VPC.</p>
    # @option params [String] :ip_address_type
    #   <p>A resource gateway can have IPv4, IPv6 or dualstack addresses. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource, as described here: </p> <ul> <li> <p> <b>IPv4</b>Assign IPv4 addresses to your resource gateway network interfaces. This option is supported only if all selected subnets have IPv4 address ranges, and the resource also has an IPv4 address.</p> </li> <li> <p> <b>IPv6</b>Assign IPv6 addresses to your resource gateway network interfaces. This option is supported only if all selected subnets are IPv6 only subnets, and the resource also has an IPv6 address.</p> </li> <li> <p> <b>Dualstack</b>Assign both IPv4 and IPv6 addresses to your resource gateway network interfaces. This option is supported only if all selected subnets have both IPv4 and IPv6 address ranges, and the resource either has an IPv4 or IPv6 address.</p> </li> </ul> <p>The IP address type of the resource gateway is independent of the IP address type of the client or the VPC endpoint through which the resource is accessed.</p>
    # @option params [Integer] :ipv4_addresses_per_eni
    #   <p>The number of IPv4 addresses in each ENI for the resource gateway.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "ResourceGatewayName", # required
    #     vpc_identifier: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     ip_address_type: "ResourceGatewayIpAddressType",
    #     ipv4_addresses_per_eni: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_resource_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceGatewayName",
    #     id: "ResourceGatewayId",
    #     arn: "ResourceGatewayArn",
    #     status: "ResourceGatewayStatus",
    #     vpc_identifier: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     ip_address_type: "ResourceGatewayIpAddressType",
    #     ipv4_addresses_per_eni: 1
    #   }
    # @return [Types::CreateResourceGatewayResponse]
    def create_resource_gateway(params = {}, options = {})
      request = build_request(:create_resource_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a listener rule. Each listener has a default rule for checking connection requests, but you can define additional rules. Each rule consists of a priority, one or more actions, and one or more conditions. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules">Listener rules</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::CreateRuleInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [String] :name
    #   <p>The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    # @option params [Types::RuleMatch] :match
    #   <p>The rule match.</p>
    # @option params [Integer] :priority
    #   <p>The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.</p>
    # @option params [Types::RuleAction] :action
    #   <p>The action for the default rule.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     name: "RuleName", # required
    #     match: { # required
    #       # One of:
    #       http_match: {
    #         method: "HttpMethod",
    #         path_match: {
    #           match: { # required
    #             # One of:
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix"
    #           },
    #           case_sensitive: false
    #         },
    #         header_matches: [
    #           {
    #             name: "HeaderMatchName", # required
    #             match: { # required
    #               # One of:
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #               contains: "HeaderMatchContains"
    #             },
    #             case_sensitive: false
    #           }
    #         ]
    #       }
    #     },
    #     priority: 1, # required
    #     action: { # required
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RuleArn",
    #     id: "RuleId",
    #     name: "RuleName",
    #     match: {
    #       # One of:
    #       http_match: {
    #         method: "HttpMethod",
    #         path_match: {
    #           match: { # required
    #             # One of:
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix"
    #           },
    #           case_sensitive: false
    #         },
    #         header_matches: [
    #           {
    #             name: "HeaderMatchName", # required
    #             match: { # required
    #               # One of:
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #               contains: "HeaderMatchContains"
    #             },
    #             case_sensitive: false
    #           }
    #         ]
    #       }
    #     },
    #     priority: 1,
    #     action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::CreateRuleOutput]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Creates a service. A service is any software application that can run on instances containers, or serverless functions within an account or virtual private cloud (VPC).</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html">Services</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::CreateServiceInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :name
    #   <p>The name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the service.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name of the service.</p>
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    # @option params [String] :auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "ServiceName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     custom_domain_name: "ServiceCustomDomainName",
    #     certificate_arn: "CertificateArn",
    #     auth_type: "AuthType"
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceId",
    #     arn: "ServiceArn",
    #     name: "ServiceName",
    #     custom_domain_name: "ServiceCustomDomainName",
    #     certificate_arn: "CertificateArn",
    #     status: "ServiceStatus",
    #     auth_type: "AuthType",
    #     dns_entry: {
    #       domain_name: "String",
    #       hosted_zone_id: "String"
    #     }
    #   }
    # @return [Types::CreateServiceOutput]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Creates a service network. A service network is a logical boundary for a collection of services. You can associate services and VPCs with a service network.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html">Service networks</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::CreateServiceNetworkInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :name
    #   <p>The name of the service network. The name must be unique to the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    # @option params [String] :auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the service network.</p>
    # @option params [Types::SharingConfig] :sharing_config
    #   <p>Specify if the service network should be enabled for sharing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "ServiceNetworkName", # required
    #     auth_type: "AuthType",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     sharing_config: {
    #       enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_service_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkId",
    #     name: "ServiceNetworkName",
    #     arn: "ServiceNetworkArn",
    #     sharing_config: {
    #       enabled: false
    #     },
    #     auth_type: "AuthType"
    #   }
    # @return [Types::CreateServiceNetworkOutput]
    def create_service_network(params = {}, options = {})
      request = build_request(:create_service_network, params)
      request.send_request(options)
    end

    # <p>Associates the specified service network with the specified resource configuration. This allows the resource configuration to receive connections through the service network, including through a service network VPC endpoint.</p>
    # @param [Hash, Types::CreateServiceNetworkResourceAssociationRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :resource_configuration_identifier
    #   <p>The ID of the resource configuration to associate with the service network.</p>
    # @option params [String] :service_network_identifier
    #   <p>The ID of the service network to associate with the resource configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A key-value pair to associate with a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     resource_configuration_identifier: "ResourceConfigurationIdentifier", # required
    #     service_network_identifier: "ServiceNetworkIdentifierWithoutRegex", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_service_network_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkResourceAssociationId",
    #     arn: "ServiceNetworkResourceAssociationArn",
    #     status: "ServiceNetworkResourceAssociationStatus",
    #     created_by: "AccountId"
    #   }
    # @return [Types::CreateServiceNetworkResourceAssociationResponse]
    def create_service_network_resource_association(params = {}, options = {})
      request = build_request(:create_service_network_resource_association, params)
      request.send_request(options)
    end

    # <p>Associates the specified service with the specified service network. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-service-associations">Manage service associations</a> in the <i>Amazon VPC Lattice User Guide</i>.</p> <p>You can't use this operation if the service and service network are already associated or if there is a disassociation or deletion in progress. If the association fails, you can retry the operation by deleting the association and recreating it.</p> <p>You cannot associate a service and service network that are shared with a caller. The caller must own either the service or the service network.</p> <p>As a result of this operation, the association is created in the service network account and the association owner account.</p>
    # @param [Hash, Types::CreateServiceNetworkServiceAssociationInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     service_identifier: "ServiceIdentifier", # required
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_service_network_service_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkServiceAssociationIdentifier",
    #     status: "ServiceNetworkServiceAssociationStatus",
    #     arn: "ServiceNetworkServiceAssociationArn",
    #     created_by: "AccountId",
    #     custom_domain_name: "ServiceCustomDomainName",
    #     dns_entry: {
    #       domain_name: "String",
    #       hosted_zone_id: "String"
    #     }
    #   }
    # @return [Types::CreateServiceNetworkServiceAssociationOutput]
    def create_service_network_service_association(params = {}, options = {})
      request = build_request(:create_service_network_service_association, params)
      request.send_request(options)
    end

    # <p>Associates a VPC with a service network. When you associate a VPC with the service network, it enables all the resources within that VPC to be clients and communicate with other services in the service network. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations">Manage VPC associations</a> in the <i>Amazon VPC Lattice User Guide</i>.</p> <p>You can't use this operation if there is a disassociation in progress. If the association fails, retry by deleting the association and recreating it.</p> <p>As a result of this operation, the association gets created in the service network account and the VPC owner account.</p> <p>If you add a security group to the service network and VPC association, the association must continue to always have at least one security group. You can add or edit security groups at any time. However, to remove all security groups, you must first delete the association and recreate it without security groups.</p>
    # @param [Hash, Types::CreateServiceNetworkVpcAssociationInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>
    # @option params [String] :vpc_identifier
    #   <p>The ID of the VPC.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The IDs of the security groups. Security groups aren't added by default. You can add a security group to apply network level controls to control which resources in a VPC are allowed to access the service network and its services. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Control traffic to resources using security groups</a> in the <i>Amazon VPC User Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #     vpc_identifier: "VpcId", # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_service_network_vpc_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkVpcAssociationId",
    #     status: "ServiceNetworkVpcAssociationStatus",
    #     arn: "ServiceNetworkVpcAssociationArn",
    #     created_by: "AccountId",
    #     security_group_ids: ["SecurityGroupId"]
    #   }
    # @return [Types::CreateServiceNetworkVpcAssociationOutput]
    def create_service_network_vpc_association(params = {}, options = {})
      request = build_request(:create_service_network_vpc_association, params)
      request.send_request(options)
    end

    # <p>Creates a target group. A target group is a collection of targets, or compute resources, that run your application or service. A target group can only be used by a single service.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html">Target groups</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::CreateTargetGroupInput] params
    # @option params [String] :name
    #   <p>The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.</p>
    # @option params [String] :type
    #   <p>The type of target group.</p>
    # @option params [Types::TargetGroupConfig] :config
    #   <p>The target group configuration.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token and parameters, the retry succeeds without performing any actions. If the parameters aren't identical, the retry fails.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the target group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TargetGroupName", # required
    #     type: "TargetGroupType", # required
    #     config: {
    #       port: 1,
    #       protocol: "TargetGroupProtocol",
    #       protocol_version: "TargetGroupProtocolVersion",
    #       ip_address_type: "IpAddressType",
    #       vpc_identifier: "VpcId",
    #       health_check: {
    #         enabled: false,
    #         protocol: "TargetGroupProtocol",
    #         protocol_version: "HealthCheckProtocolVersion",
    #         port: 1,
    #         path: "HealthCheckPath",
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         matcher: {
    #           # One of:
    #           http_code: "HttpCodeMatcher"
    #         }
    #       },
    #       lambda_event_structure_version: "LambdaEventStructureVersion"
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "TargetGroupId",
    #     arn: "TargetGroupArn",
    #     name: "TargetGroupName",
    #     type: "TargetGroupType",
    #     config: {
    #       port: 1,
    #       protocol: "TargetGroupProtocol",
    #       protocol_version: "TargetGroupProtocolVersion",
    #       ip_address_type: "IpAddressType",
    #       vpc_identifier: "VpcId",
    #       health_check: {
    #         enabled: false,
    #         protocol: "TargetGroupProtocol",
    #         protocol_version: "HealthCheckProtocolVersion",
    #         port: 1,
    #         path: "HealthCheckPath",
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         matcher: {
    #           # One of:
    #           http_code: "HttpCodeMatcher"
    #         }
    #       },
    #       lambda_event_structure_version: "LambdaEventStructureVersion"
    #     },
    #     status: "TargetGroupStatus"
    #   }
    # @return [Types::CreateTargetGroupOutput]
    def create_target_group(params = {}, options = {})
      request = build_request(:create_target_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified access log subscription.</p>
    # @param [Hash, Types::DeleteAccessLogSubscriptionInput] params
    # @option params [String] :access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_log_subscription_identifier: "AccessLogSubscriptionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_access_log_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessLogSubscriptionOutput]
    def delete_access_log_subscription(params = {}, options = {})
      request = build_request(:delete_access_log_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes the specified auth policy. If an auth is set to <code>AWS_IAM</code> and the auth policy is deleted, all requests are denied. If you are trying to remove the auth policy completely, you must set the auth type to <code>NONE</code>. If auth is enabled on the resource, but no auth policy is set, all requests are denied.</p>
    # @param [Hash, Types::DeleteAuthPolicyInput] params
    # @option params [String] :resource_identifier
    #   <p>The ID or ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_auth_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAuthPolicyOutput]
    def delete_auth_policy(params = {}, options = {})
      request = build_request(:delete_auth_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified listener.</p>
    # @param [Hash, Types::DeleteListenerInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteListenerOutput]
    def delete_listener(params = {}, options = {})
      request = build_request(:delete_listener, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource configuration.</p>
    # @param [Hash, Types::DeleteResourceConfigurationRequest] params
    # @option params [String] :resource_configuration_identifier
    #   <p>The ID or ARN of the resource configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_configuration_identifier: "ResourceConfigurationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourceConfigurationResponse]
    def delete_resource_configuration(params = {}, options = {})
      request = build_request(:delete_resource_configuration, params)
      request.send_request(options)
    end

    # <p>Disassociates the resource configuration from the resource VPC endpoint.</p>
    # @param [Hash, Types::DeleteResourceEndpointAssociationRequest] params
    # @option params [String] :resource_endpoint_association_identifier
    #   <p>The ID or ARN of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_endpoint_association_identifier: "ResourceEndpointAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_endpoint_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceEndpointAssociationId",
    #     arn: "ResourceEndpointAssociationArn",
    #     resource_configuration_id: "ResourceConfigurationId",
    #     resource_configuration_arn: "ResourceConfigurationArn",
    #     vpc_endpoint_id: "VpcEndpointId"
    #   }
    # @return [Types::DeleteResourceEndpointAssociationResponse]
    def delete_resource_endpoint_association(params = {}, options = {})
      request = build_request(:delete_resource_endpoint_association, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource gateway.</p>
    # @param [Hash, Types::DeleteResourceGatewayRequest] params
    # @option params [String] :resource_gateway_identifier
    #   <p>The ID or ARN of the resource gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_gateway_identifier: "ResourceGatewayIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceGatewayId",
    #     arn: "ResourceGatewayArn",
    #     name: "ResourceGatewayName",
    #     status: "ResourceGatewayStatus"
    #   }
    # @return [Types::DeleteResourceGatewayResponse]
    def delete_resource_gateway(params = {}, options = {})
      request = build_request(:delete_resource_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource policy.</p>
    # @param [Hash, Types::DeleteResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyOutput]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a listener rule. Each listener has a default rule for checking connection requests, but you can define additional rules. Each rule consists of a priority, one or more actions, and one or more conditions. You can delete additional listener rules, but you cannot delete the default rule.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules">Listener rules</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::DeleteRuleInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [String] :rule_identifier
    #   <p>The ID or ARN of the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleOutput]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a service. A service can't be deleted if it's associated with a service network. If you delete a service, all resources related to the service, such as the resource policy, auth policy, listeners, listener rules, and access log subscriptions, are also deleted. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service">Delete a service</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::DeleteServiceInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceId",
    #     arn: "ServiceArn",
    #     name: "ServiceName",
    #     status: "ServiceStatus"
    #   }
    # @return [Types::DeleteServiceOutput]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Deletes a service network. You can only delete the service network if there is no service or VPC associated with it. If you delete a service network, all resources related to the service network, such as the resource policy, auth policy, and access log subscriptions, are also deleted. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network">Delete a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::DeleteServiceNetworkInput] params
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_service_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceNetworkOutput]
    def delete_service_network(params = {}, options = {})
      request = build_request(:delete_service_network, params)
      request.send_request(options)
    end

    # <p>Deletes the association between a service network and a resource configuration.</p>
    # @param [Hash, Types::DeleteServiceNetworkResourceAssociationRequest] params
    # @option params [String] :service_network_resource_association_identifier
    #   <p>The ID of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_resource_association_identifier: "ServiceNetworkResourceAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_service_network_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkResourceAssociationId",
    #     arn: "ServiceNetworkResourceAssociationArn",
    #     status: "ServiceNetworkResourceAssociationStatus"
    #   }
    # @return [Types::DeleteServiceNetworkResourceAssociationResponse]
    def delete_service_network_resource_association(params = {}, options = {})
      request = build_request(:delete_service_network_resource_association, params)
      request.send_request(options)
    end

    # <p>Deletes the association between a service and a service network. This operation fails if an association is still in progress.</p>
    # @param [Hash, Types::DeleteServiceNetworkServiceAssociationInput] params
    # @option params [String] :service_network_service_association_identifier
    #   <p>The ID or ARN of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_service_association_identifier: "ServiceNetworkServiceAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_service_network_service_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkServiceAssociationIdentifier",
    #     status: "ServiceNetworkServiceAssociationStatus",
    #     arn: "ServiceNetworkServiceAssociationArn"
    #   }
    # @return [Types::DeleteServiceNetworkServiceAssociationOutput]
    def delete_service_network_service_association(params = {}, options = {})
      request = build_request(:delete_service_network_service_association, params)
      request.send_request(options)
    end

    # <p>Disassociates the VPC from the service network. You can't disassociate the VPC if there is a create or update association in progress.</p>
    # @param [Hash, Types::DeleteServiceNetworkVpcAssociationInput] params
    # @option params [String] :service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_vpc_association_identifier: "ServiceNetworkVpcAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_service_network_vpc_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkVpcAssociationId",
    #     status: "ServiceNetworkVpcAssociationStatus",
    #     arn: "ServiceNetworkVpcAssociationArn"
    #   }
    # @return [Types::DeleteServiceNetworkVpcAssociationOutput]
    def delete_service_network_vpc_association(params = {}, options = {})
      request = build_request(:delete_service_network_vpc_association, params)
      request.send_request(options)
    end

    # <p>Deletes a target group. You can't delete a target group if it is used in a listener rule or if the target group creation is in progress.</p>
    # @param [Hash, Types::DeleteTargetGroupInput] params
    # @option params [String] :target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "TargetGroupId",
    #     arn: "TargetGroupArn",
    #     status: "TargetGroupStatus"
    #   }
    # @return [Types::DeleteTargetGroupOutput]
    def delete_target_group(params = {}, options = {})
      request = build_request(:delete_target_group, params)
      request.send_request(options)
    end

    # <p>Deregisters the specified targets from the specified target group.</p>
    # @param [Hash, Types::DeregisterTargetsInput] params
    # @option params [String] :target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     targets: [ # required
    #       {
    #         id: "String", # required
    #         port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.deregister_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         id: "String", # required
    #         port: 1
    #       }
    #     ],
    #     unsuccessful: [
    #       {
    #         id: "String",
    #         port: 1,
    #         failure_code: "String",
    #         failure_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DeregisterTargetsOutput]
    def deregister_targets(params = {}, options = {})
      request = build_request(:deregister_targets, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified access log subscription.</p>
    # @param [Hash, Types::GetAccessLogSubscriptionInput] params
    # @option params [String] :access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_log_subscription_identifier: "AccessLogSubscriptionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_access_log_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AccessLogSubscriptionId", # required
    #     arn: "AccessLogSubscriptionArn", # required
    #     resource_id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     destination_arn: "AccessLogDestinationArn", # required
    #     service_network_log_type: "ServiceNetworkLogType",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::GetAccessLogSubscriptionOutput]
    def get_access_log_subscription(params = {}, options = {})
      request = build_request(:get_access_log_subscription, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the auth policy for the specified service or service network.</p>
    # @param [Hash, Types::GetAuthPolicyInput] params
    # @option params [String] :resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_auth_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "AuthPolicyString",
    #     state: "AuthPolicyState",
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetAuthPolicyOutput]
    def get_auth_policy(params = {}, options = {})
      request = build_request(:get_auth_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified listener for the specified service.</p>
    # @param [Hash, Types::GetListenerInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ListenerArn",
    #     id: "ListenerId",
    #     name: "ListenerName",
    #     protocol: "ListenerProtocol",
    #     port: 1,
    #     service_arn: "ServiceArn",
    #     service_id: "ServiceId",
    #     default_action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetListenerOutput]
    def get_listener(params = {}, options = {})
      request = build_request(:get_listener, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified resource configuration.</p>
    # @param [Hash, Types::GetResourceConfigurationRequest] params
    # @option params [String] :resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_configuration_identifier: "ResourceConfigurationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_resource_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceConfigurationId",
    #     name: "ResourceConfigurationName",
    #     arn: "ResourceConfigurationArn",
    #     resource_gateway_id: "ResourceGatewayId",
    #     resource_configuration_group_id: "ResourceConfigurationId",
    #     type: "ResourceConfigurationType",
    #     allow_association_to_shareable_service_network: false,
    #     port_ranges: ["PortRange"],
    #     protocol: "ProtocolType",
    #     custom_domain_name: "DomainName",
    #     status: "ResourceConfigurationStatus",
    #     resource_configuration_definition: {
    #       # One of:
    #       dns_resource: {
    #         domain_name: "DomainName",
    #         ip_address_type: "ResourceConfigurationIpAddressType"
    #       },
    #       ip_resource: {
    #         ip_address: "IpAddress"
    #       },
    #       arn_resource: {
    #         arn: "WildcardArn"
    #       }
    #     },
    #     created_at: Time.now,
    #     amazon_managed: false,
    #     failure_reason: "String",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetResourceConfigurationResponse]
    def get_resource_configuration(params = {}, options = {})
      request = build_request(:get_resource_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified resource gateway.</p>
    # @param [Hash, Types::GetResourceGatewayRequest] params
    # @option params [String] :resource_gateway_identifier
    #   <p>The ID of the resource gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_gateway_identifier: "ResourceGatewayIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_resource_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceGatewayName",
    #     id: "ResourceGatewayId",
    #     arn: "ResourceGatewayArn",
    #     status: "ResourceGatewayStatus",
    #     vpc_id: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     ip_address_type: "ResourceGatewayIpAddressType",
    #     ipv4_addresses_per_eni: 1,
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetResourceGatewayResponse]
    def get_resource_gateway(params = {}, options = {})
      request = build_request(:get_resource_gateway, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified resource policy. The resource policy is an IAM policy created on behalf of the resource owner when they share a resource.</p>
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the service network or service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyString"
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified listener rules. You can also retrieve information about the default listener rule. For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules">Listener rules</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::GetRuleInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [String] :rule_identifier
    #   <p>The ID or ARN of the listener rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RuleArn",
    #     id: "RuleId",
    #     name: "RuleName",
    #     is_default: false,
    #     match: {
    #       # One of:
    #       http_match: {
    #         method: "HttpMethod",
    #         path_match: {
    #           match: { # required
    #             # One of:
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix"
    #           },
    #           case_sensitive: false
    #         },
    #         header_matches: [
    #           {
    #             name: "HeaderMatchName", # required
    #             match: { # required
    #               # One of:
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #               contains: "HeaderMatchContains"
    #             },
    #             case_sensitive: false
    #           }
    #         ]
    #       }
    #     },
    #     priority: 1,
    #     action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetRuleOutput]
    def get_rule(params = {}, options = {})
      request = build_request(:get_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified service.</p>
    # @param [Hash, Types::GetServiceInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceId",
    #     name: "ServiceName",
    #     arn: "ServiceArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     dns_entry: {
    #       domain_name: "String",
    #       hosted_zone_id: "String"
    #     },
    #     custom_domain_name: "ServiceCustomDomainName",
    #     certificate_arn: "CertificateArn",
    #     status: "ServiceStatus",
    #     auth_type: "AuthType",
    #     failure_code: "FailureCode",
    #     failure_message: "FailureMessage"
    #   }
    # @return [Types::GetServiceOutput]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified service network.</p>
    # @param [Hash, Types::GetServiceNetworkInput] params
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_service_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkId",
    #     name: "ServiceNetworkName",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     arn: "ServiceNetworkArn",
    #     auth_type: "AuthType",
    #     sharing_config: {
    #       enabled: false
    #     },
    #     number_of_associated_vp_cs: 1,
    #     number_of_associated_services: 1
    #   }
    # @return [Types::GetServiceNetworkOutput]
    def get_service_network(params = {}, options = {})
      request = build_request(:get_service_network, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified association between a service network and a resource configuration.</p>
    # @param [Hash, Types::GetServiceNetworkResourceAssociationRequest] params
    # @option params [String] :service_network_resource_association_identifier
    #   <p>The ID of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_resource_association_identifier: "ServiceNetworkResourceAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_service_network_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkResourceAssociationId",
    #     arn: "ServiceNetworkResourceAssociationArn",
    #     status: "ServiceNetworkResourceAssociationStatus",
    #     created_by: "AccountId",
    #     created_at: Time.now,
    #     resource_configuration_id: "ResourceConfigurationId",
    #     resource_configuration_arn: "ResourceConfigurationArn",
    #     resource_configuration_name: "ResourceConfigurationName",
    #     service_network_id: "ServiceNetworkIdentifierWithoutRegex",
    #     service_network_arn: "ServiceNetworkIdentifierWithoutRegex",
    #     service_network_name: "ServiceNetworkNameWithoutRegex",
    #     failure_reason: "String",
    #     failure_code: "String",
    #     last_updated_at: Time.now,
    #     private_dns_entry: {
    #       domain_name: "String",
    #       hosted_zone_id: "String"
    #     },
    #     dns_entry: {
    #       domain_name: "String",
    #       hosted_zone_id: "String"
    #     },
    #     is_managed_association: false
    #   }
    # @return [Types::GetServiceNetworkResourceAssociationResponse]
    def get_service_network_resource_association(params = {}, options = {})
      request = build_request(:get_service_network_resource_association, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified association between a service network and a service.</p>
    # @param [Hash, Types::GetServiceNetworkServiceAssociationInput] params
    # @option params [String] :service_network_service_association_identifier
    #   <p>The ID or ARN of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_service_association_identifier: "ServiceNetworkServiceAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_service_network_service_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkServiceAssociationIdentifier",
    #     status: "ServiceNetworkServiceAssociationStatus",
    #     arn: "ServiceNetworkServiceAssociationArn",
    #     created_by: "AccountId",
    #     created_at: Time.now,
    #     service_id: "ServiceId",
    #     service_name: "ServiceName",
    #     service_arn: "ServiceArn",
    #     service_network_id: "ServiceNetworkId",
    #     service_network_name: "ServiceNetworkName",
    #     service_network_arn: "ServiceNetworkArn",
    #     dns_entry: {
    #       domain_name: "String",
    #       hosted_zone_id: "String"
    #     },
    #     custom_domain_name: "ServiceCustomDomainName",
    #     failure_message: "String",
    #     failure_code: "String"
    #   }
    # @return [Types::GetServiceNetworkServiceAssociationOutput]
    def get_service_network_service_association(params = {}, options = {})
      request = build_request(:get_service_network_service_association, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified association between a service network and a VPC.</p>
    # @param [Hash, Types::GetServiceNetworkVpcAssociationInput] params
    # @option params [String] :service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_vpc_association_identifier: "ServiceNetworkVpcAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_service_network_vpc_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkVpcAssociationId",
    #     status: "ServiceNetworkVpcAssociationStatus",
    #     arn: "ServiceNetworkVpcAssociationArn",
    #     created_by: "AccountId",
    #     created_at: Time.now,
    #     service_network_id: "ServiceNetworkId",
    #     service_network_name: "ServiceNetworkName",
    #     service_network_arn: "ServiceNetworkArn",
    #     vpc_id: "VpcId",
    #     security_group_ids: ["SecurityGroupId"],
    #     failure_message: "String",
    #     failure_code: "String",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetServiceNetworkVpcAssociationOutput]
    def get_service_network_vpc_association(params = {}, options = {})
      request = build_request(:get_service_network_vpc_association, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified target group.</p>
    # @param [Hash, Types::GetTargetGroupInput] params
    # @option params [String] :target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "TargetGroupId",
    #     arn: "TargetGroupArn",
    #     name: "TargetGroupName",
    #     type: "TargetGroupType",
    #     config: {
    #       port: 1,
    #       protocol: "TargetGroupProtocol",
    #       protocol_version: "TargetGroupProtocolVersion",
    #       ip_address_type: "IpAddressType",
    #       vpc_identifier: "VpcId",
    #       health_check: {
    #         enabled: false,
    #         protocol: "TargetGroupProtocol",
    #         protocol_version: "HealthCheckProtocolVersion",
    #         port: 1,
    #         path: "HealthCheckPath",
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         matcher: {
    #           # One of:
    #           http_code: "HttpCodeMatcher"
    #         }
    #       },
    #       lambda_event_structure_version: "LambdaEventStructureVersion"
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     status: "TargetGroupStatus",
    #     service_arns: ["ServiceArn"],
    #     failure_message: "String",
    #     failure_code: "String"
    #   }
    # @return [Types::GetTargetGroupOutput]
    def get_target_group(params = {}, options = {})
      request = build_request(:get_target_group, params)
      request.send_request(options)
    end

    # <p>Lists the access log subscriptions for the specified service network or service.</p>
    # @param [Hash, Types::ListAccessLogSubscriptionsInput] params
    # @option params [String] :resource_identifier
    #   <p>The ID or ARN of the service network or service.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_access_log_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "AccessLogSubscriptionId", # required
    #         arn: "AccessLogSubscriptionArn", # required
    #         resource_id: "ResourceId", # required
    #         resource_arn: "ResourceArn", # required
    #         destination_arn: "AccessLogDestinationArn", # required
    #         service_network_log_type: "ServiceNetworkLogType",
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccessLogSubscriptionsOutput]
    def list_access_log_subscriptions(params = {}, options = {})
      request = build_request(:list_access_log_subscriptions, params)
      request.send_request(options)
    end

    # <p>Lists the listeners for the specified service.</p>
    # @param [Hash, Types::ListListenersInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_listeners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         arn: "ListenerArn",
    #         id: "ListenerId",
    #         name: "ListenerName",
    #         protocol: "ListenerProtocol",
    #         port: 1,
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListListenersOutput]
    def list_listeners(params = {}, options = {})
      request = build_request(:list_listeners, params)
      request.send_request(options)
    end

    # <p>Lists the resource configurations owned by or shared with this account.</p>
    # @param [Hash, Types::ListResourceConfigurationsRequest] params
    # @option params [String] :resource_gateway_identifier
    #   <p>The ID of the resource gateway for the resource configuration.</p>
    # @option params [String] :resource_configuration_group_identifier
    #   <p>The ID of the resource configuration of type <code>Group</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_gateway_identifier: "ResourceGatewayIdentifier",
    #     resource_configuration_group_identifier: "ResourceConfigurationIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceConfigurationId",
    #         name: "ResourceConfigurationName",
    #         arn: "ResourceConfigurationArn",
    #         resource_gateway_id: "ResourceGatewayId",
    #         resource_configuration_group_id: "ResourceConfigurationId",
    #         type: "ResourceConfigurationType",
    #         status: "ResourceConfigurationStatus",
    #         amazon_managed: false,
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceConfigurationsResponse]
    def list_resource_configurations(params = {}, options = {})
      request = build_request(:list_resource_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the associations for the specified VPC endpoint.</p>
    # @param [Hash, Types::ListResourceEndpointAssociationsRequest] params
    # @option params [String] :resource_configuration_identifier
    #   <p>The ID for the resource configuration associated with the VPC endpoint.</p>
    # @option params [String] :resource_endpoint_association_identifier
    #   <p>The ID of the association.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>The ID of the VPC endpoint in the association.</p>
    # @option params [String] :vpc_endpoint_owner
    #   <p>The owner of the VPC endpoint in the association.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_configuration_identifier: "ResourceConfigurationIdentifier", # required
    #     resource_endpoint_association_identifier: "ResourceEndpointAssociationIdentifier",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     vpc_endpoint_owner: "VpcEndpointOwner",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_endpoint_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "ResourceEndpointAssociationId",
    #         arn: "ResourceEndpointAssociationArn",
    #         resource_configuration_id: "ResourceConfigurationId",
    #         resource_configuration_arn: "ResourceConfigurationArn",
    #         resource_configuration_name: "ResourceConfigurationName",
    #         vpc_endpoint_id: "VpcEndpointId",
    #         vpc_endpoint_owner: "VpcEndpointOwner",
    #         created_by: "AccountId",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceEndpointAssociationsResponse]
    def list_resource_endpoint_associations(params = {}, options = {})
      request = build_request(:list_resource_endpoint_associations, params)
      request.send_request(options)
    end

    # <p>Lists the resource gateways that you own or that were shared with you.</p>
    # @param [Hash, Types::ListResourceGatewaysRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         name: "ResourceGatewayName",
    #         id: "ResourceGatewayId",
    #         arn: "ResourceGatewayArn",
    #         status: "ResourceGatewayStatus",
    #         vpc_identifier: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         ip_address_type: "ResourceGatewayIpAddressType",
    #         ipv4_addresses_per_eni: 1,
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceGatewaysResponse]
    def list_resource_gateways(params = {}, options = {})
      request = build_request(:list_resource_gateways, params)
      request.send_request(options)
    end

    # <p>Lists the rules for the specified listener.</p>
    # @param [Hash, Types::ListRulesInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         arn: "RuleArn",
    #         id: "RuleId",
    #         name: "RuleName",
    #         is_default: false,
    #         priority: 1,
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRulesOutput]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>Lists the associations between a service network and a resource configuration.</p>
    # @param [Hash, Types::ListServiceNetworkResourceAssociationsRequest] params
    # @option params [String] :service_network_identifier
    #   <p>The ID of the service network.</p>
    # @option params [String] :resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    # @option params [Boolean] :include_children
    #   <p>Include service network resource associations of the child resource configuration with the grouped resource configuration.</p> <p>The type is boolean and the default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier",
    #     resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     include_children: false
    #   }
    #   options = {}
    #   response = client.list_service_network_resource_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "ServiceNetworkResourceAssociationId",
    #         arn: "ServiceNetworkResourceAssociationArn",
    #         status: "ServiceNetworkResourceAssociationStatus",
    #         created_by: "AccountId",
    #         created_at: Time.now,
    #         resource_configuration_id: "ResourceConfigurationId",
    #         resource_configuration_arn: "ResourceConfigurationArn",
    #         resource_configuration_name: "ResourceConfigurationName",
    #         service_network_id: "ServiceNetworkIdentifierWithoutRegex",
    #         service_network_arn: "ServiceNetworkArnWithoutRegex",
    #         service_network_name: "ServiceNetworkNameWithoutRegex",
    #         dns_entry: {
    #           domain_name: "String",
    #           hosted_zone_id: "String"
    #         },
    #         private_dns_entry: {
    #           domain_name: "String",
    #           hosted_zone_id: "String"
    #         },
    #         is_managed_association: false,
    #         failure_code: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceNetworkResourceAssociationsResponse]
    def list_service_network_resource_associations(params = {}, options = {})
      request = build_request(:list_service_network_resource_associations, params)
      request.send_request(options)
    end

    # <p>Lists the associations between a service network and a service. You can filter the list either by service or service network. You must provide either the service network identifier or the service identifier.</p> <p>Every association in Amazon VPC Lattice has a unique Amazon Resource Name (ARN), such as when a service network is associated with a VPC or when a service is associated with a service network. If the association is for a resource is shared with another account, the association includes the local account ID as the prefix in the ARN.</p>
    # @param [Hash, Types::ListServiceNetworkServiceAssociationsInput] params
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier",
    #     service_identifier: "ServiceIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_network_service_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "ServiceNetworkServiceAssociationIdentifier",
    #         status: "ServiceNetworkServiceAssociationStatus",
    #         arn: "ServiceNetworkServiceAssociationArn",
    #         created_by: "AccountId",
    #         created_at: Time.now,
    #         service_id: "ServiceId",
    #         service_name: "ServiceName",
    #         service_arn: "ServiceArn",
    #         service_network_id: "ServiceNetworkId",
    #         service_network_name: "ServiceNetworkName",
    #         service_network_arn: "ServiceNetworkArn",
    #         dns_entry: {
    #           domain_name: "String",
    #           hosted_zone_id: "String"
    #         },
    #         custom_domain_name: "ServiceCustomDomainName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceNetworkServiceAssociationsOutput]
    def list_service_network_service_associations(params = {}, options = {})
      request = build_request(:list_service_network_service_associations, params)
      request.send_request(options)
    end

    # <p>Lists the associations between a service network and a VPC. You can filter the list either by VPC or service network. You must provide either the ID of the service network identifier or the ID of the VPC.</p>
    # @param [Hash, Types::ListServiceNetworkVpcAssociationsInput] params
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    # @option params [String] :vpc_identifier
    #   <p>The ID or ARN of the VPC.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier",
    #     vpc_identifier: "VpcId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_network_vpc_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "ServiceNetworkVpcAssociationId",
    #         arn: "ServiceNetworkVpcAssociationArn",
    #         status: "ServiceNetworkVpcAssociationStatus",
    #         created_by: "AccountId",
    #         created_at: Time.now,
    #         service_network_id: "ServiceNetworkId",
    #         service_network_name: "ServiceNetworkName",
    #         service_network_arn: "ServiceNetworkArn",
    #         vpc_id: "VpcId",
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceNetworkVpcAssociationsOutput]
    def list_service_network_vpc_associations(params = {}, options = {})
      request = build_request(:list_service_network_vpc_associations, params)
      request.send_request(options)
    end

    # <p>Lists the associations between a service network and a VPC endpoint.</p>
    # @param [Hash, Types::ListServiceNetworkVpcEndpointAssociationsRequest] params
    # @option params [String] :service_network_identifier
    #   <p>The ID of the service network associated with the VPC endpoint.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>If there are additional results, a pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_network_vpc_endpoint_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         vpc_endpoint_id: "String",
    #         vpc_id: "String",
    #         vpc_endpoint_owner_id: "String",
    #         id: "String",
    #         state: "String",
    #         service_network_arn: "ServiceNetworkArn",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceNetworkVpcEndpointAssociationsResponse]
    def list_service_network_vpc_endpoint_associations(params = {}, options = {})
      request = build_request(:list_service_network_vpc_endpoint_associations, params)
      request.send_request(options)
    end

    # <p>Lists the service networks owned by or shared with this account. The account ID in the ARN shows which account owns the service network.</p>
    # @param [Hash, Types::ListServiceNetworksInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "ServiceNetworkId",
    #         name: "ServiceNetworkName",
    #         arn: "ServiceNetworkArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         number_of_associated_vp_cs: 1,
    #         number_of_associated_services: 1,
    #         number_of_associated_resource_configurations: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceNetworksOutput]
    def list_service_networks(params = {}, options = {})
      request = build_request(:list_service_networks, params)
      request.send_request(options)
    end

    # <p>Lists the services owned by the caller account or shared with the caller account.</p>
    # @param [Hash, Types::ListServicesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ServiceId",
    #         name: "ServiceName",
    #         arn: "ServiceArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         dns_entry: {
    #           domain_name: "String",
    #           hosted_zone_id: "String"
    #         },
    #         custom_domain_name: "ServiceCustomDomainName",
    #         status: "ServiceStatus"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicesOutput]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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

    # <p>Lists your target groups. You can narrow your search by using the filters below in your request.</p>
    # @param [Hash, Types::ListTargetGroupsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @option params [String] :vpc_identifier
    #   <p>The ID or ARN of the VPC.</p>
    # @option params [String] :target_group_type
    #   <p>The target group type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     vpc_identifier: "VpcId",
    #     target_group_type: "TargetGroupType"
    #   }
    #   options = {}
    #   response = client.list_target_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "TargetGroupId",
    #         arn: "TargetGroupArn",
    #         name: "TargetGroupName",
    #         type: "TargetGroupType",
    #         created_at: Time.now,
    #         port: 1,
    #         protocol: "TargetGroupProtocol",
    #         ip_address_type: "IpAddressType",
    #         vpc_identifier: "VpcId",
    #         last_updated_at: Time.now,
    #         status: "TargetGroupStatus",
    #         service_arns: ["ServiceArn"],
    #         lambda_event_structure_version: "LambdaEventStructureVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetGroupsOutput]
    def list_target_groups(params = {}, options = {})
      request = build_request(:list_target_groups, params)
      request.send_request(options)
    end

    # <p>Lists the targets for the target group. By default, all targets are included. You can use this API to check the health status of targets. You can also ﬁlter the results by target.</p>
    # @param [Hash, Types::ListTargetsInput] params
    # @option params [String] :target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for the next page of results.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     targets: [
    #       {
    #         id: "String", # required
    #         port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "String",
    #         port: 1,
    #         status: "TargetStatus",
    #         reason_code: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetsOutput]
    def list_targets(params = {}, options = {})
      request = build_request(:list_targets, params)
      request.send_request(options)
    end

    # <p>Creates or updates the auth policy. The policy string in JSON must not contain newlines or blank lines.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/auth-policies.html">Auth policies</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>
    # @param [Hash, Types::PutAuthPolicyInput] params
    # @option params [String] :resource_identifier
    #   <p>The ID or ARN of the service network or service for which the policy is created.</p>
    # @option params [String] :policy
    #   <p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     policy: "AuthPolicyString", # required
    #   }
    #   options = {}
    #   response = client.put_auth_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "AuthPolicyString",
    #     state: "AuthPolicyState"
    #   }
    # @return [Types::PutAuthPolicyOutput]
    def put_auth_policy(params = {}, options = {})
      request = build_request(:put_auth_policy, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based permission policy to a service or service network. The policy must contain the same actions and condition statements as the Amazon Web Services Resource Access Manager permission for sharing services and service networks.</p>
    # @param [Hash, Types::PutResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The ID or ARN of the service network or service for which the policy is created.</p>
    # @option params [String] :policy
    #   <p>An IAM policy. The policy string in JSON must not contain newlines or blank lines.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourcePolicyOutput]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Registers the targets with the target group. If it's a Lambda target, you can only have one target in a target group.</p>
    # @param [Hash, Types::RegisterTargetsInput] params
    # @option params [String] :target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     targets: [ # required
    #       {
    #         id: "String", # required
    #         port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         id: "String", # required
    #         port: 1
    #       }
    #     ],
    #     unsuccessful: [
    #       {
    #         id: "String",
    #         port: 1,
    #         failure_code: "String",
    #         failure_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::RegisterTargetsOutput]
    def register_targets(params = {}, options = {})
      request = build_request(:register_targets, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource.</p>
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

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to remove.</p>
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

    # <p>Updates the specified access log subscription.</p>
    # @param [Hash, Types::UpdateAccessLogSubscriptionInput] params
    # @option params [String] :access_log_subscription_identifier
    #   <p>The ID or ARN of the access log subscription.</p>
    # @option params [String] :destination_arn
    #   <p>The Amazon Resource Name (ARN) of the access log destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_log_subscription_identifier: "AccessLogSubscriptionIdentifier", # required
    #     destination_arn: "AccessLogDestinationArn", # required
    #   }
    #   options = {}
    #   response = client.update_access_log_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AccessLogSubscriptionId", # required
    #     arn: "AccessLogSubscriptionArn", # required
    #     resource_id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     destination_arn: "AccessLogDestinationArn", # required
    #   }
    # @return [Types::UpdateAccessLogSubscriptionOutput]
    def update_access_log_subscription(params = {}, options = {})
      request = build_request(:update_access_log_subscription, params)
      request.send_request(options)
    end

    # <p>Updates the specified listener for the specified service.</p>
    # @param [Hash, Types::UpdateListenerInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [Types::RuleAction] :default_action
    #   <p>The action for the default rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     default_action: { # required
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ListenerArn",
    #     id: "ListenerId",
    #     name: "ListenerName",
    #     protocol: "ListenerProtocol",
    #     port: 1,
    #     service_arn: "ServiceArn",
    #     service_id: "ServiceId",
    #     default_action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateListenerOutput]
    def update_listener(params = {}, options = {})
      request = build_request(:update_listener, params)
      request.send_request(options)
    end

    # <p>Updates the specified resource configuration.</p>
    # @param [Hash, Types::UpdateResourceConfigurationRequest] params
    # @option params [String] :resource_configuration_identifier
    #   <p>The ID of the resource configuration.</p>
    # @option params [Types::ResourceConfigurationDefinition] :resource_configuration_definition
    #   <p>Identifies the resource configuration in one of the following ways:</p> <ul> <li> <p> <b>Amazon Resource Name (ARN)</b> - Supported resource-types that are provisioned by Amazon Web Services services, such as RDS databases, can be identified by their ARN.</p> </li> <li> <p> <b>Domain name</b> - Any domain name that is publicly resolvable.</p> </li> <li> <p> <b>IP address</b> - For IPv4 and IPv6, only IP addresses in the VPC are supported.</p> </li> </ul>
    # @option params [Boolean] :allow_association_to_shareable_service_network
    #   <p>Indicates whether to add the resource configuration to service networks that are shared with other accounts.</p>
    # @option params [Array<String>] :port_ranges
    #   <p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_configuration_identifier: "ResourceConfigurationIdentifier", # required
    #     resource_configuration_definition: {
    #       # One of:
    #       dns_resource: {
    #         domain_name: "DomainName",
    #         ip_address_type: "ResourceConfigurationIpAddressType"
    #       },
    #       ip_resource: {
    #         ip_address: "IpAddress"
    #       },
    #       arn_resource: {
    #         arn: "WildcardArn"
    #       }
    #     },
    #     allow_association_to_shareable_service_network: false,
    #     port_ranges: ["PortRange"]
    #   }
    #   options = {}
    #   response = client.update_resource_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceConfigurationId",
    #     name: "ResourceConfigurationName",
    #     arn: "ResourceConfigurationArn",
    #     resource_gateway_id: "ResourceGatewayId",
    #     resource_configuration_group_id: "ResourceConfigurationId",
    #     type: "ResourceConfigurationType",
    #     port_ranges: ["PortRange"],
    #     allow_association_to_shareable_service_network: false,
    #     protocol: "ProtocolType",
    #     status: "ResourceConfigurationStatus",
    #     resource_configuration_definition: {
    #       # One of:
    #       dns_resource: {
    #         domain_name: "DomainName",
    #         ip_address_type: "ResourceConfigurationIpAddressType"
    #       },
    #       ip_resource: {
    #         ip_address: "IpAddress"
    #       },
    #       arn_resource: {
    #         arn: "WildcardArn"
    #       }
    #     }
    #   }
    # @return [Types::UpdateResourceConfigurationResponse]
    def update_resource_configuration(params = {}, options = {})
      request = build_request(:update_resource_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the specified resource gateway.</p>
    # @param [Hash, Types::UpdateResourceGatewayRequest] params
    # @option params [String] :resource_gateway_identifier
    #   <p>The ID or ARN of the resource gateway.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The IDs of the security groups associated with the resource gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_gateway_identifier: "ResourceGatewayIdentifier", # required
    #     security_group_ids: ["SecurityGroupId"]
    #   }
    #   options = {}
    #   response = client.update_resource_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceGatewayName",
    #     id: "ResourceGatewayId",
    #     arn: "ResourceGatewayArn",
    #     status: "ResourceGatewayStatus",
    #     vpc_id: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     ip_address_type: "IpAddressType"
    #   }
    # @return [Types::UpdateResourceGatewayResponse]
    def update_resource_gateway(params = {}, options = {})
      request = build_request(:update_resource_gateway, params)
      request.send_request(options)
    end

    # <p>Updates a specified rule for the listener. You can't modify a default listener rule. To modify a default listener rule, use <code>UpdateListener</code>.</p>
    # @param [Hash, Types::UpdateRuleInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :listener_identifier
    #   <p>The ID or ARN of the listener.</p>
    # @option params [String] :rule_identifier
    #   <p>The ID or ARN of the rule.</p>
    # @option params [Types::RuleMatch] :match
    #   <p>The rule match.</p>
    # @option params [Integer] :priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    # @option params [Types::RuleAction] :action
    #   <p>Information about the action for the specified listener rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     listener_identifier: "ListenerIdentifier", # required
    #     rule_identifier: "RuleIdentifier", # required
    #     match: {
    #       # One of:
    #       http_match: {
    #         method: "HttpMethod",
    #         path_match: {
    #           match: { # required
    #             # One of:
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix"
    #           },
    #           case_sensitive: false
    #         },
    #         header_matches: [
    #           {
    #             name: "HeaderMatchName", # required
    #             match: { # required
    #               # One of:
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #               contains: "HeaderMatchContains"
    #             },
    #             case_sensitive: false
    #           }
    #         ]
    #       }
    #     },
    #     priority: 1,
    #     action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RuleArn",
    #     id: "RuleId",
    #     name: "RuleName",
    #     is_default: false,
    #     match: {
    #       # One of:
    #       http_match: {
    #         method: "HttpMethod",
    #         path_match: {
    #           match: { # required
    #             # One of:
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix"
    #           },
    #           case_sensitive: false
    #         },
    #         header_matches: [
    #           {
    #             name: "HeaderMatchName", # required
    #             match: { # required
    #               # One of:
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #               contains: "HeaderMatchContains"
    #             },
    #             case_sensitive: false
    #           }
    #         ]
    #       }
    #     },
    #     priority: 1,
    #     action: {
    #       # One of:
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1
    #           }
    #         ]
    #       },
    #       fixed_response: {
    #         status_code: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateRuleOutput]
    def update_rule(params = {}, options = {})
      request = build_request(:update_rule, params)
      request.send_request(options)
    end

    # <p>Updates the specified service.</p>
    # @param [Hash, Types::UpdateServiceInput] params
    # @option params [String] :service_identifier
    #   <p>The ID or ARN of the service.</p>
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    # @option params [String] :auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_identifier: "ServiceIdentifier", # required
    #     certificate_arn: "CertificateArn",
    #     auth_type: "AuthType"
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceId",
    #     arn: "ServiceArn",
    #     name: "ServiceName",
    #     custom_domain_name: "ServiceCustomDomainName",
    #     certificate_arn: "CertificateArn",
    #     auth_type: "AuthType"
    #   }
    # @return [Types::UpdateServiceOutput]
    def update_service(params = {}, options = {})
      request = build_request(:update_service, params)
      request.send_request(options)
    end

    # <p>Updates the specified service network.</p>
    # @param [Hash, Types::UpdateServiceNetworkInput] params
    # @option params [String] :service_network_identifier
    #   <p>The ID or ARN of the service network.</p>
    # @option params [String] :auth_type
    #   <p>The type of IAM policy.</p> <ul> <li> <p> <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p> </li> <li> <p> <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #     auth_type: "AuthType", # required
    #   }
    #   options = {}
    #   response = client.update_service_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkId",
    #     name: "ServiceNetworkName",
    #     arn: "ServiceNetworkArn",
    #     auth_type: "AuthType"
    #   }
    # @return [Types::UpdateServiceNetworkOutput]
    def update_service_network(params = {}, options = {})
      request = build_request(:update_service_network, params)
      request.send_request(options)
    end

    # <p>Updates the service network and VPC association. If you add a security group to the service network and VPC association, the association must continue to have at least one security group. You can add or edit security groups at any time. However, to remove all security groups, you must first delete the association and then recreate it without security groups.</p>
    # @param [Hash, Types::UpdateServiceNetworkVpcAssociationInput] params
    # @option params [String] :service_network_vpc_association_identifier
    #   <p>The ID or ARN of the association.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The IDs of the security groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_network_vpc_association_identifier: "ServiceNetworkVpcAssociationIdentifier", # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #   }
    #   options = {}
    #   response = client.update_service_network_vpc_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ServiceNetworkVpcAssociationId",
    #     arn: "ServiceNetworkVpcAssociationArn",
    #     status: "ServiceNetworkVpcAssociationStatus",
    #     created_by: "AccountId",
    #     security_group_ids: ["SecurityGroupId"]
    #   }
    # @return [Types::UpdateServiceNetworkVpcAssociationOutput]
    def update_service_network_vpc_association(params = {}, options = {})
      request = build_request(:update_service_network_vpc_association, params)
      request.send_request(options)
    end

    # <p>Updates the specified target group.</p>
    # @param [Hash, Types::UpdateTargetGroupInput] params
    # @option params [String] :target_group_identifier
    #   <p>The ID or ARN of the target group.</p>
    # @option params [Types::HealthCheckConfig] :health_check
    #   <p>The health check configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     health_check: { # required
    #       enabled: false,
    #       protocol: "TargetGroupProtocol",
    #       protocol_version: "HealthCheckProtocolVersion",
    #       port: 1,
    #       path: "HealthCheckPath",
    #       health_check_interval_seconds: 1,
    #       health_check_timeout_seconds: 1,
    #       healthy_threshold_count: 1,
    #       unhealthy_threshold_count: 1,
    #       matcher: {
    #         # One of:
    #         http_code: "HttpCodeMatcher"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "TargetGroupId",
    #     arn: "TargetGroupArn",
    #     name: "TargetGroupName",
    #     type: "TargetGroupType",
    #     config: {
    #       port: 1,
    #       protocol: "TargetGroupProtocol",
    #       protocol_version: "TargetGroupProtocolVersion",
    #       ip_address_type: "IpAddressType",
    #       vpc_identifier: "VpcId",
    #       health_check: {
    #         enabled: false,
    #         protocol: "TargetGroupProtocol",
    #         protocol_version: "HealthCheckProtocolVersion",
    #         port: 1,
    #         path: "HealthCheckPath",
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         matcher: {
    #           # One of:
    #           http_code: "HttpCodeMatcher"
    #         }
    #       },
    #       lambda_event_structure_version: "LambdaEventStructureVersion"
    #     },
    #     status: "TargetGroupStatus"
    #   }
    # @return [Types::UpdateTargetGroupOutput]
    def update_target_group(params = {}, options = {})
      request = build_request(:update_target_group, params)
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
      context[:gem_name] = 'aws-sdk-vpclattice'
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
