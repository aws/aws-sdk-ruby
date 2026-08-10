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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:route53recoveryreadiness)

module Aws::Route53RecoveryReadiness
  # An API client for Aws::Route53RecoveryReadiness.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Route53RecoveryReadiness
    @identifier = :route53recoveryreadiness

    add_plugin(::Aws::Route53RecoveryReadiness::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Route53RecoveryReadiness::EndpointProvider)
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

    # <p>Creates a cell in an account.</p>
    # @param [Hash, Types::CreateCellRequest] params
    # @option params [String] :cell_name
    #   <p>The name of the cell to create.</p>
    # @option params [Array<String>] :cells
    #   <p>A list of cell Amazon Resource Names (ARNs) contained within this cell, for use in nested cells. For example, Availability Zones within specific Amazon Web Services Regions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cell_name: "__string", # required
    #     cells: ["__string"],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_cell(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cell_arn: "__stringMax256",
    #     cell_name: "__stringMax64PatternAAZAZ09Z",
    #     cells: ["__string"],
    #     parent_readiness_scopes: ["__string"],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateCellResponse]
    def create_cell(params = {}, options = {})
      request = build_request(:create_cell, params)
      request.send_request(options)
    end

    # <p>Creates a cross-account readiness authorization. This lets you authorize another account to work with Route 53 Application Recovery Controller, for example, to check the readiness status of resources in a separate account.</p>
    # @param [Hash, Types::CreateCrossAccountAuthorizationRequest] params
    # @option params [String] :cross_account_authorization
    #   <p>The cross-account authorization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cross_account_authorization: "CrossAccountAuthorization", # required
    #   }
    #   options = {}
    #   response = client.create_cross_account_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_authorization: "CrossAccountAuthorization"
    #   }
    # @return [Types::CreateCrossAccountAuthorizationResponse]
    def create_cross_account_authorization(params = {}, options = {})
      request = build_request(:create_cross_account_authorization, params)
      request.send_request(options)
    end

    # <p>Creates a readiness check in an account. A readiness check monitors a resource set in your application, such as a set of Amazon Aurora instances, that Application Recovery Controller is auditing recovery readiness for. The audits run once every minute on every resource that's associated with a readiness check.</p>
    # @param [Hash, Types::CreateReadinessCheckRequest] params
    # @option params [String] :readiness_check_name
    #   <p>The name of the readiness check to create.</p>
    # @option params [String] :resource_set_name
    #   <p>The name of the resource set to check.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     readiness_check_name: "__string", # required
    #     resource_set_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_readiness_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     readiness_check_arn: "__stringMax256",
    #     readiness_check_name: "__stringMax64PatternAAZAZ09Z",
    #     resource_set: "__stringMax64PatternAAZAZ09Z",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateReadinessCheckResponse]
    def create_readiness_check(params = {}, options = {})
      request = build_request(:create_readiness_check, params)
      request.send_request(options)
    end

    # <p>Creates a recovery group in an account. A recovery group corresponds to an application and includes a list of the cells that make up the application.</p>
    # @param [Hash, Types::CreateRecoveryGroupRequest] params
    # @option params [Array<String>] :cells
    #   <p>A list of the cell Amazon Resource Names (ARNs) in the recovery group.</p>
    # @option params [String] :recovery_group_name
    #   <p>The name of the recovery group to create.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cells: ["__string"],
    #     recovery_group_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_recovery_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cells: ["__string"],
    #     recovery_group_arn: "__stringMax256",
    #     recovery_group_name: "__stringMax64PatternAAZAZ09Z",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateRecoveryGroupResponse]
    def create_recovery_group(params = {}, options = {})
      request = build_request(:create_recovery_group, params)
      request.send_request(options)
    end

    # <p>Creates a resource set. A resource set is a set of resources of one type that span multiple cells. You can associate a resource set with a readiness check to monitor the resources for failover readiness.</p>
    # @param [Hash, Types::CreateResourceSetRequest] params
    # @option params [String] :resource_set_name
    #   <p>The name of the resource set to create.</p>
    # @option params [String] :resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    # @option params [Array<Types::Resource>] :resources
    #   <p>A list of resource objects in the resource set.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A tag to associate with the parameters for a resource set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set_name: "__string", # required
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #     resources: [ # required
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string"
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string"
    #             }
    #           }
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string"
    #       }
    #     ],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set_arn: "__stringMax256",
    #     resource_set_name: "__stringMax64PatternAAZAZ09Z",
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09",
    #     resources: [
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string"
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string"
    #             }
    #           }
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string"
    #       }
    #     ],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateResourceSetResponse]
    def create_resource_set(params = {}, options = {})
      request = build_request(:create_resource_set, params)
      request.send_request(options)
    end

    # <p>Delete a cell. When successful, the response code is 204, with no response body.</p>
    # @param [Hash, Types::DeleteCellRequest] params
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cell_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_cell(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cell(params = {}, options = {})
      request = build_request(:delete_cell, params)
      request.send_request(options)
    end

    # <p>Deletes cross account readiness authorization.</p>
    # @param [Hash, Types::DeleteCrossAccountAuthorizationRequest] params
    # @option params [String] :cross_account_authorization
    #   <p>The cross-account authorization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cross_account_authorization: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_cross_account_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCrossAccountAuthorizationResponse]
    def delete_cross_account_authorization(params = {}, options = {})
      request = build_request(:delete_cross_account_authorization, params)
      request.send_request(options)
    end

    # <p>Deletes a readiness check.</p>
    # @param [Hash, Types::DeleteReadinessCheckRequest] params
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     readiness_check_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_readiness_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_readiness_check(params = {}, options = {})
      request = build_request(:delete_readiness_check, params)
      request.send_request(options)
    end

    # <p>Deletes a recovery group.</p>
    # @param [Hash, Types::DeleteRecoveryGroupRequest] params
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_group_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_recovery_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_recovery_group(params = {}, options = {})
      request = build_request(:delete_recovery_group, params)
      request.send_request(options)
    end

    # <p>Deletes a resource set.</p>
    # @param [Hash, Types::DeleteResourceSetRequest] params
    # @option params [String] :resource_set_name
    #   <p>Name of a resource set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_set(params = {}, options = {})
      request = build_request(:delete_resource_set, params)
      request.send_request(options)
    end

    # <p>Gets recommendations about architecture designs for improving resiliency for an application, based on a recovery group.</p>
    # @param [Hash, Types::GetArchitectureRecommendationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     recovery_group_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_architecture_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_audit_timestamp: Time.now,
    #     next_token: "__string",
    #     recommendations: [
    #       {
    #         recommendation_text: "__string", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetArchitectureRecommendationsResponse]
    def get_architecture_recommendations(params = {}, options = {})
      request = build_request(:get_architecture_recommendations, params)
      request.send_request(options)
    end

    # <p>Gets information about a cell including cell name, cell Amazon Resource Name (ARN), ARNs of nested cells for this cell, and a list of those cell ARNs with their associated recovery group ARNs.</p>
    # @param [Hash, Types::GetCellRequest] params
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cell_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_cell(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cell_arn: "__stringMax256",
    #     cell_name: "__stringMax64PatternAAZAZ09Z",
    #     cells: ["__string"],
    #     parent_readiness_scopes: ["__string"],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetCellResponse]
    def get_cell(params = {}, options = {})
      request = build_request(:get_cell, params)
      request.send_request(options)
    end

    # <p>Gets readiness for a cell. Aggregates the readiness of all the resources that are associated with the cell into a single value.</p>
    # @param [Hash, Types::GetCellReadinessSummaryRequest] params
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cell_name: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_cell_readiness_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"],
    #     readiness_checks: [
    #       {
    #         readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"],
    #         readiness_check_name: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::GetCellReadinessSummaryResponse]
    def get_cell_readiness_summary(params = {}, options = {})
      request = build_request(:get_cell_readiness_summary, params)
      request.send_request(options)
    end

    # <p>Gets details about a readiness check.</p>
    # @param [Hash, Types::GetReadinessCheckRequest] params
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     readiness_check_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_readiness_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     readiness_check_arn: "__stringMax256",
    #     readiness_check_name: "__stringMax64PatternAAZAZ09Z",
    #     resource_set: "__stringMax64PatternAAZAZ09Z",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetReadinessCheckResponse]
    def get_readiness_check(params = {}, options = {})
      request = build_request(:get_readiness_check, params)
      request.send_request(options)
    end

    # <p>Gets individual readiness status for a readiness check. To see the overall readiness status for a recovery group, that considers the readiness status for all the readiness checks in the recovery group, use GetRecoveryGroupReadinessSummary.</p>
    # @param [Hash, Types::GetReadinessCheckResourceStatusRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    # @option params [String] :resource_identifier
    #   <p>The resource identifier, which is the Amazon Resource Name (ARN) or the identifier generated for the resource by Application Recovery Controller (for example, for a DNS target resource).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     readiness_check_name: "__string", # required
    #     resource_identifier: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_readiness_check_resource_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"],
    #     rules: [
    #       {
    #         last_checked_timestamp: Time.now, # required
    #         messages: [ # required
    #           {
    #             message_text: "__string"
    #           }
    #         ],
    #         readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"], # required
    #         rule_id: "__string", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetReadinessCheckResourceStatusResponse]
    def get_readiness_check_resource_status(params = {}, options = {})
      request = build_request(:get_readiness_check_resource_status, params)
      request.send_request(options)
    end

    # <p>Gets the readiness status for an individual readiness check. To see the overall readiness status for a recovery group, that considers the readiness status for all the readiness checks in a recovery group, use GetRecoveryGroupReadinessSummary.</p>
    # @param [Hash, Types::GetReadinessCheckStatusRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     readiness_check_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_readiness_check_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     messages: [
    #       {
    #         message_text: "__string"
    #       }
    #     ],
    #     next_token: "__string",
    #     readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"],
    #     resources: [
    #       {
    #         component_id: "__string",
    #         last_checked_timestamp: Time.now, # required
    #         readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"], # required
    #         resource_arn: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::GetReadinessCheckStatusResponse]
    def get_readiness_check_status(params = {}, options = {})
      request = build_request(:get_readiness_check_status, params)
      request.send_request(options)
    end

    # <p>Gets details about a recovery group, including a list of the cells that are included in it.</p>
    # @param [Hash, Types::GetRecoveryGroupRequest] params
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_group_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_recovery_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cells: ["__string"],
    #     recovery_group_arn: "__stringMax256",
    #     recovery_group_name: "__stringMax64PatternAAZAZ09Z",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetRecoveryGroupResponse]
    def get_recovery_group(params = {}, options = {})
      request = build_request(:get_recovery_group, params)
      request.send_request(options)
    end

    # <p>Displays a summary of information about a recovery group's readiness status. Includes the readiness checks for resources in the recovery group and the readiness status of each one.</p>
    # @param [Hash, Types::GetRecoveryGroupReadinessSummaryRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     recovery_group_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_recovery_group_readiness_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"],
    #     readiness_checks: [
    #       {
    #         readiness: "READY" # One of: ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"],
    #         readiness_check_name: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::GetRecoveryGroupReadinessSummaryResponse]
    def get_recovery_group_readiness_summary(params = {}, options = {})
      request = build_request(:get_recovery_group_readiness_summary, params)
      request.send_request(options)
    end

    # <p>Displays the details about a resource set, including a list of the resources in the set.</p>
    # @param [Hash, Types::GetResourceSetRequest] params
    # @option params [String] :resource_set_name
    #   <p>Name of a resource set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set_arn: "__stringMax256",
    #     resource_set_name: "__stringMax64PatternAAZAZ09Z",
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09",
    #     resources: [
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string"
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string"
    #             }
    #           }
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string"
    #       }
    #     ],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetResourceSetResponse]
    def get_resource_set(params = {}, options = {})
      request = build_request(:get_resource_set, params)
      request.send_request(options)
    end

    # <p>Lists the cells for an account.</p>
    # @param [Hash, Types::ListCellsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_cells(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cells: [
    #       {
    #         cell_arn: "__stringMax256", # required
    #         cell_name: "__stringMax64PatternAAZAZ09Z", # required
    #         cells: ["__string"], # required
    #         parent_readiness_scopes: ["__string"], # required
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListCellsResponse]
    def list_cells(params = {}, options = {})
      request = build_request(:list_cells, params)
      request.send_request(options)
    end

    # <p>Lists the cross-account readiness authorizations that are in place for an account.</p>
    # @param [Hash, Types::ListCrossAccountAuthorizationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_cross_account_authorizations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_authorizations: ["CrossAccountAuthorization"],
    #     next_token: "__string"
    #   }
    # @return [Types::ListCrossAccountAuthorizationsResponse]
    def list_cross_account_authorizations(params = {}, options = {})
      request = build_request(:list_cross_account_authorizations, params)
      request.send_request(options)
    end

    # <p>Lists the readiness checks for an account.</p>
    # @param [Hash, Types::ListReadinessChecksRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_readiness_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     readiness_checks: [
    #       {
    #         readiness_check_arn: "__stringMax256", # required
    #         readiness_check_name: "__stringMax64PatternAAZAZ09Z",
    #         resource_set: "__stringMax64PatternAAZAZ09Z", # required
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListReadinessChecksResponse]
    def list_readiness_checks(params = {}, options = {})
      request = build_request(:list_readiness_checks, params)
      request.send_request(options)
    end

    # <p>Lists the recovery groups in an account.</p>
    # @param [Hash, Types::ListRecoveryGroupsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_recovery_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     recovery_groups: [
    #       {
    #         cells: ["__string"], # required
    #         recovery_group_arn: "__stringMax256", # required
    #         recovery_group_name: "__stringMax64PatternAAZAZ09Z", # required
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRecoveryGroupsResponse]
    def list_recovery_groups(params = {}, options = {})
      request = build_request(:list_recovery_groups, params)
      request.send_request(options)
    end

    # <p>Lists the resource sets in an account.</p>
    # @param [Hash, Types::ListResourceSetsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_resource_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     resource_sets: [
    #       {
    #         resource_set_arn: "__stringMax256", # required
    #         resource_set_name: "__stringMax64PatternAAZAZ09Z", # required
    #         resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #         resources: [ # required
    #           {
    #             component_id: "__string",
    #             dns_target_resource: {
    #               domain_name: "__string",
    #               hosted_zone_arn: "__string",
    #               record_set_id: "__string",
    #               record_type: "__string",
    #               target_resource: {
    #                 nlb_resource: {
    #                   arn: "__string"
    #                 },
    #                 r53_resource: {
    #                   domain_name: "__string",
    #                   record_set_id: "__string"
    #                 }
    #               }
    #             },
    #             readiness_scopes: ["__string"],
    #             resource_arn: "__string"
    #           }
    #         ],
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListResourceSetsResponse]
    def list_resource_sets(params = {}, options = {})
      request = build_request(:list_resource_sets, params)
      request.send_request(options)
    end

    # <p>Lists all readiness rules, or lists the readiness rules for a specific resource type.</p>
    # @param [Hash, Types::ListRulesRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @option params [String] :resource_type
    #   <p>The resource type that a readiness rule applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     resource_type: "__string"
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     rules: [
    #       {
    #         resource_type: "__stringMax64", # required
    #         rule_description: "__stringMax256", # required
    #         rule_id: "__stringMax64", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRulesResponse]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourcesRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourcesResponse]
    def list_tags_for_resources(params = {}, options = {})
      request = build_request(:list_tags_for_resources, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p></p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys for tags you add to resources.</p>
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

    # <p>Updates a cell to replace the list of nested cells with a new list of nested cells.</p>
    # @param [Hash, Types::UpdateCellRequest] params
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    # @option params [Array<String>] :cells
    #   <p>A list of cell Amazon Resource Names (ARNs), which completely replaces the previous list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cell_name: "__string", # required
    #     cells: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.update_cell(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cell_arn: "__stringMax256",
    #     cell_name: "__stringMax64PatternAAZAZ09Z",
    #     cells: ["__string"],
    #     parent_readiness_scopes: ["__string"],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateCellResponse]
    def update_cell(params = {}, options = {})
      request = build_request(:update_cell, params)
      request.send_request(options)
    end

    # <p>Updates a readiness check.</p>
    # @param [Hash, Types::UpdateReadinessCheckRequest] params
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    # @option params [String] :resource_set_name
    #   <p>The name of the resource set to be checked.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     readiness_check_name: "__string", # required
    #     resource_set_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_readiness_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     readiness_check_arn: "__stringMax256",
    #     readiness_check_name: "__stringMax64PatternAAZAZ09Z",
    #     resource_set: "__stringMax64PatternAAZAZ09Z",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateReadinessCheckResponse]
    def update_readiness_check(params = {}, options = {})
      request = build_request(:update_readiness_check, params)
      request.send_request(options)
    end

    # <p>Updates a recovery group.</p>
    # @param [Hash, Types::UpdateRecoveryGroupRequest] params
    # @option params [Array<String>] :cells
    #   <p>A list of cell Amazon Resource Names (ARNs). This list completely replaces the previous list.</p>
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cells: ["__string"], # required
    #     recovery_group_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_recovery_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cells: ["__string"],
    #     recovery_group_arn: "__stringMax256",
    #     recovery_group_name: "__stringMax64PatternAAZAZ09Z",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateRecoveryGroupResponse]
    def update_recovery_group(params = {}, options = {})
      request = build_request(:update_recovery_group, params)
      request.send_request(options)
    end

    # <p>Updates a resource set.</p>
    # @param [Hash, Types::UpdateResourceSetRequest] params
    # @option params [String] :resource_set_name
    #   <p>Name of a resource set.</p>
    # @option params [String] :resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    # @option params [Array<Types::Resource>] :resources
    #   <p>A list of resource objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set_name: "__string", # required
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #     resources: [ # required
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string"
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string"
    #             }
    #           }
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set_arn: "__stringMax256",
    #     resource_set_name: "__stringMax64PatternAAZAZ09Z",
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09",
    #     resources: [
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string"
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string"
    #             }
    #           }
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string"
    #       }
    #     ],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateResourceSetResponse]
    def update_resource_set(params = {}, options = {})
      request = build_request(:update_resource_set, params)
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
      context[:gem_name] = 'aws-sdk-route53recoveryreadiness'
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
