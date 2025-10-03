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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::BCMPricingCalculator
  # An API client for Aws::BCMPricingCalculator.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBCMPricingCalculator

    add_plugin(::Aws::BCMPricingCalculator::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BCMPricingCalculator::EndpointProvider)
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

    # <p> Create Compute Savings Plans, EC2 Instance Savings Plans, or EC2 Reserved Instances commitments that you want to model in a Bill Scenario. </p> <note> <p>The <code>BatchCreateBillScenarioCommitmentModification</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:CreateBillScenarioCommitmentModification</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchCreateBillScenarioCommitmentModificationRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to create the modeled commitment. </p>
    # @option params [Array<Types::BatchCreateBillScenarioCommitmentModificationEntry>] :commitment_modifications
    #   <p> List of commitments that you want to model in the Bill Scenario. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     commitment_modifications: [ # required
    #       {
    #         key: "Key", # required
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId", # required
    #         commitment_action: { # required
    #           # One of:
    #           add_reserved_instance_action: {
    #             reserved_instances_offering_id: "Uuid",
    #             instance_count: 1
    #           },
    #           add_savings_plan_action: {
    #             savings_plan_offering_id: "Uuid",
    #             commitment: 1.0
    #           },
    #           negate_reserved_instance_action: {
    #             reserved_instances_id: "Uuid"
    #           },
    #           negate_savings_plan_action: {
    #             savings_plan_id: "Uuid"
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_create_bill_scenario_commitment_modification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         key: "Key",
    #         id: "ResourceId",
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId",
    #         commitment_action: {
    #           # One of:
    #           add_reserved_instance_action: {
    #             reserved_instances_offering_id: "Uuid",
    #             instance_count: 1
    #           },
    #           add_savings_plan_action: {
    #             savings_plan_offering_id: "Uuid",
    #             commitment: 1.0
    #           },
    #           negate_reserved_instance_action: {
    #             reserved_instances_id: "Uuid"
    #           },
    #           negate_savings_plan_action: {
    #             savings_plan_id: "Uuid"
    #           }
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         key: "Key",
    #         error_message: "String",
    #         error_code: "CONFLICT" # One of: ["CONFLICT", "INTERNAL_SERVER_ERROR", "INVALID_ACCOUNT"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateBillScenarioCommitmentModificationResponse]
    def batch_create_bill_scenario_commitment_modification(params = {}, options = {})
      request = build_request(:batch_create_bill_scenario_commitment_modification, params)
      request.send_request(options)
    end

    # <p> Create Amazon Web Services service usage that you want to model in a Bill Scenario. </p> <note> <p>The <code>BatchCreateBillScenarioUsageModification</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:CreateBillScenarioUsageModification</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchCreateBillScenarioUsageModificationRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to create the modeled usage. </p>
    # @option params [Array<Types::BatchCreateBillScenarioUsageModificationEntry>] :usage_modifications
    #   <p> List of usage that you want to model in the Bill Scenario. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     usage_modifications: [ # required
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         availability_zone: "AvailabilityZone",
    #         key: "Key", # required
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId", # required
    #         amounts: [
    #           {
    #             start_hour: Time.now, # required
    #             amount: 1.0, # required
    #           }
    #         ],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_create_bill_scenario_usage_modification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         availability_zone: "AvailabilityZone",
    #         id: "ResourceId",
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId",
    #         quantities: [
    #           {
    #             start_hour: Time.now,
    #             unit: "String",
    #             amount: 1.0
    #           }
    #         ],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         },
    #         key: "Key"
    #       }
    #     ],
    #     errors: [
    #       {
    #         key: "Key",
    #         error_message: "String",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateBillScenarioUsageModificationResponse]
    def batch_create_bill_scenario_usage_modification(params = {}, options = {})
      request = build_request(:batch_create_bill_scenario_usage_modification, params)
      request.send_request(options)
    end

    # <p> Create Amazon Web Services service usage that you want to model in a Workload Estimate. </p> <note> <p>The <code>BatchCreateWorkloadEstimateUsage</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:CreateWorkloadEstimateUsage</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchCreateWorkloadEstimateUsageRequest] params
    # @option params [String] :workload_estimate_id
    #   <p> The ID of the Workload estimate for which you want to create the modeled usage. </p>
    # @option params [Array<Types::BatchCreateWorkloadEstimateUsageEntry>] :usage
    #   <p> List of usage that you want to model in the Workload estimate. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_estimate_id: "ResourceId", # required
    #     usage: [ # required
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         key: "Key", # required
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId", # required
    #         amount: 1.0, # required
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_create_workload_estimate_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         id: "ResourceId",
    #         usage_account_id: "AccountId",
    #         group: "UsageGroup",
    #         quantity: {
    #           unit: "String",
    #           amount: 1.0
    #         },
    #         cost: 1.0,
    #         currency: "USD" # One of: ["USD"],
    #         status: "VALID" # One of: ["VALID", "INVALID", "STALE"],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         },
    #         key: "Key"
    #       }
    #     ],
    #     errors: [
    #       {
    #         key: "Key",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateWorkloadEstimateUsageResponse]
    def batch_create_workload_estimate_usage(params = {}, options = {})
      request = build_request(:batch_create_workload_estimate_usage, params)
      request.send_request(options)
    end

    # <p> Delete commitment that you have created in a Bill Scenario. You can only delete a commitment that you had added and cannot model deletion (or removal) of a existing commitment. If you want model deletion of an existing commitment, see the negate <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BillScenarioCommitmentModificationAction.html"> BillScenarioCommitmentModificationAction</a> of <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchCreateBillScenarioUsageModification.html"> BatchCreateBillScenarioCommitmentModification</a> operation. </p> <note> <p>The <code>BatchDeleteBillScenarioCommitmentModification</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:DeleteBillScenarioCommitmentModification</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchDeleteBillScenarioCommitmentModificationRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to delete the modeled commitment. </p>
    # @option params [Array<String>] :ids
    #   <p> List of commitments that you want to delete from the Bill Scenario. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     ids: ["ResourceId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_bill_scenario_commitment_modification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         id: "ResourceId",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "CONFLICT", "INTERNAL_SERVER_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteBillScenarioCommitmentModificationResponse]
    def batch_delete_bill_scenario_commitment_modification(params = {}, options = {})
      request = build_request(:batch_delete_bill_scenario_commitment_modification, params)
      request.send_request(options)
    end

    # <p> Delete usage that you have created in a Bill Scenario. You can only delete usage that you had added and cannot model deletion (or removal) of a existing usage. If you want model removal of an existing usage, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateBillScenarioUsageModification.html"> BatchUpdateBillScenarioUsageModification</a>. </p> <note> <p>The <code>BatchDeleteBillScenarioUsageModification</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:DeleteBillScenarioUsageModification</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchDeleteBillScenarioUsageModificationRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to delete the modeled usage. </p>
    # @option params [Array<String>] :ids
    #   <p> List of usage that you want to delete from the Bill Scenario. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     ids: ["ResourceId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_bill_scenario_usage_modification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         id: "ResourceId",
    #         error_message: "String",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "CONFLICT", "INTERNAL_SERVER_ERROR"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteBillScenarioUsageModificationResponse]
    def batch_delete_bill_scenario_usage_modification(params = {}, options = {})
      request = build_request(:batch_delete_bill_scenario_usage_modification, params)
      request.send_request(options)
    end

    # <p> Delete usage that you have created in a Workload estimate. You can only delete usage that you had added and cannot model deletion (or removal) of a existing usage. If you want model removal of an existing usage, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateWorkloadEstimateUsage.html"> BatchUpdateWorkloadEstimateUsage</a>. </p> <note> <p>The <code>BatchDeleteWorkloadEstimateUsage</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:DeleteWorkloadEstimateUsage</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchDeleteWorkloadEstimateUsageRequest] params
    # @option params [String] :workload_estimate_id
    #   <p> The ID of the Workload estimate for which you want to delete the modeled usage. </p>
    # @option params [Array<String>] :ids
    #   <p> List of usage that you want to delete from the Workload estimate. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_estimate_id: "ResourceId", # required
    #     ids: ["ResourceId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_workload_estimate_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         id: "ResourceId",
    #         error_message: "String",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteWorkloadEstimateUsageResponse]
    def batch_delete_workload_estimate_usage(params = {}, options = {})
      request = build_request(:batch_delete_workload_estimate_usage, params)
      request.send_request(options)
    end

    # <p> Update a newly added or existing commitment. You can update the commitment group based on a commitment ID and a Bill scenario ID. </p> <note> <p>The <code>BatchUpdateBillScenarioCommitmentModification</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:UpdateBillScenarioCommitmentModification</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchUpdateBillScenarioCommitmentModificationRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to modify the commitment group of a modeled commitment. </p>
    # @option params [Array<Types::BatchUpdateBillScenarioCommitmentModificationEntry>] :commitment_modifications
    #   <p> List of commitments that you want to update in a Bill Scenario. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     commitment_modifications: [ # required
    #       {
    #         id: "ResourceId", # required
    #         group: "UsageGroup"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_bill_scenario_commitment_modification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId",
    #         usage_account_id: "AccountId",
    #         group: "UsageGroup",
    #         commitment_action: {
    #           # One of:
    #           add_reserved_instance_action: {
    #             reserved_instances_offering_id: "Uuid",
    #             instance_count: 1
    #           },
    #           add_savings_plan_action: {
    #             savings_plan_offering_id: "Uuid",
    #             commitment: 1.0
    #           },
    #           negate_reserved_instance_action: {
    #             reserved_instances_id: "Uuid"
    #           },
    #           negate_savings_plan_action: {
    #             savings_plan_id: "Uuid"
    #           }
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         id: "ResourceId",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateBillScenarioCommitmentModificationResponse]
    def batch_update_bill_scenario_commitment_modification(params = {}, options = {})
      request = build_request(:batch_update_bill_scenario_commitment_modification, params)
      request.send_request(options)
    end

    # <p> Update a newly added or existing usage lines. You can update the usage amounts, usage hour, and usage group based on a usage ID and a Bill scenario ID. </p> <note> <p>The <code>BatchUpdateBillScenarioUsageModification</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:UpdateBillScenarioUsageModification</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchUpdateBillScenarioUsageModificationRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to modify the usage lines. </p>
    # @option params [Array<Types::BatchUpdateBillScenarioUsageModificationEntry>] :usage_modifications
    #   <p> List of usage lines that you want to update in a Bill Scenario identified by the usage ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     usage_modifications: [ # required
    #       {
    #         id: "ResourceId", # required
    #         group: "UsageGroup",
    #         amounts: [
    #           {
    #             start_hour: Time.now, # required
    #             amount: 1.0, # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_bill_scenario_usage_modification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         availability_zone: "AvailabilityZone",
    #         id: "ResourceId",
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId",
    #         quantities: [
    #           {
    #             start_hour: Time.now,
    #             unit: "String",
    #             amount: 1.0
    #           }
    #         ],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         id: "ResourceId",
    #         error_message: "String",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateBillScenarioUsageModificationResponse]
    def batch_update_bill_scenario_usage_modification(params = {}, options = {})
      request = build_request(:batch_update_bill_scenario_usage_modification, params)
      request.send_request(options)
    end

    # <p> Update a newly added or existing usage lines. You can update the usage amounts and usage group based on a usage ID and a Workload estimate ID. </p> <note> <p>The <code>BatchUpdateWorkloadEstimateUsage</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>bcm-pricing-calculator:UpdateWorkloadEstimateUsage</code> in your policies.</p> </note>
    # @param [Hash, Types::BatchUpdateWorkloadEstimateUsageRequest] params
    # @option params [String] :workload_estimate_id
    #   <p> The ID of the Workload estimate for which you want to modify the usage lines. </p>
    # @option params [Array<Types::BatchUpdateWorkloadEstimateUsageEntry>] :usage
    #   <p> List of usage line amounts and usage group that you want to update in a Workload estimate identified by the usage ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_estimate_id: "ResourceId", # required
    #     usage: [ # required
    #       {
    #         id: "ResourceId", # required
    #         group: "UsageGroup",
    #         amount: 1.0
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_workload_estimate_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         id: "ResourceId",
    #         usage_account_id: "AccountId",
    #         group: "UsageGroup",
    #         quantity: {
    #           unit: "String",
    #           amount: 1.0
    #         },
    #         cost: 1.0,
    #         currency: "USD" # One of: ["USD"],
    #         status: "VALID" # One of: ["VALID", "INVALID", "STALE"],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         id: "ResourceId",
    #         error_message: "String",
    #         error_code: "BAD_REQUEST" # One of: ["BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateWorkloadEstimateUsageResponse]
    def batch_update_workload_estimate_usage(params = {}, options = {})
      request = build_request(:batch_update_workload_estimate_usage, params)
      request.send_request(options)
    end

    # <p> Create a Bill estimate from a Bill scenario. In the Bill scenario you can model usage addition, usage changes, and usage removal. You can also model commitment addition and commitment removal. After all changes in a Bill scenario is made satisfactorily, you can call this API with a Bill scenario ID to generate the Bill estimate. Bill estimate calculates the pre-tax cost for your consolidated billing family, incorporating all modeled usage and commitments alongside existing usage and commitments from your most recent completed anniversary bill, with any applicable discounts applied. </p>
    # @param [Hash, Types::CreateBillEstimateRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to create a Bill estimate. </p>
    # @option params [String] :name
    #   <p> The name of the Bill estimate that will be created. Names must be unique for an account. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> An optional list of tags to associate with the specified BillEstimate. You can use resource tags to control access to your BillEstimate using IAM policies. Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags: </p> <ul> <li> <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services. </p> </li> <li> <p>The maximum length of a key is 128 characters.</p> </li> <li> <p>The maximum length of a value is 256 characters.</p> </li> <li> <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>.</p> </li> <li> <p>Keys and values are case sensitive.</p> </li> <li> <p>Keys and values are trimmed for any leading or trailing whitespaces.</p> </li> <li> <p>Don't use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     name: "BillEstimateName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_bill_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "BillEstimateName",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     failure_message: "String",
    #     bill_interval: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     cost_summary: {
    #       total_cost_difference: {
    #         historical_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         estimated_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         }
    #       },
    #       service_cost_differences: {
    #         "String" => {
    #           historical_cost: {
    #             amount: 1.0,
    #             currency: "USD" # One of: ["USD"]
    #           },
    #           estimated_cost: {
    #             amount: 1.0,
    #             currency: "USD" # One of: ["USD"]
    #           }
    #         }
    #       }
    #     },
    #     created_at: Time.now,
    #     expires_at: Time.now
    #   }
    # @return [Types::CreateBillEstimateResponse]
    def create_bill_estimate(params = {}, options = {})
      request = build_request(:create_bill_estimate, params)
      request.send_request(options)
    end

    # <p> Creates a new bill scenario to model potential changes to Amazon Web Services usage and costs. </p>
    # @param [Hash, Types::CreateBillScenarioRequest] params
    # @option params [String] :name
    #   <p> A descriptive name for the bill scenario. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier to ensure idempotency of the request. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags to apply to the bill scenario. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BillScenarioName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_bill_scenario(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "BillScenarioName",
    #     bill_interval: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     status: "READY" # One of: ["READY", "LOCKED", "FAILED", "STALE"],
    #     created_at: Time.now,
    #     expires_at: Time.now,
    #     failure_message: "String"
    #   }
    # @return [Types::CreateBillScenarioResponse]
    def create_bill_scenario(params = {}, options = {})
      request = build_request(:create_bill_scenario, params)
      request.send_request(options)
    end

    # <p> Creates a new workload estimate to model costs for a specific workload. </p>
    # @param [Hash, Types::CreateWorkloadEstimateRequest] params
    # @option params [String] :name
    #   <p> A descriptive name for the workload estimate. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier to ensure idempotency of the request. </p>
    # @option params [String] :rate_type
    #   <p> The type of pricing rates to use for the estimate. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags to apply to the workload estimate. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkloadEstimateName", # required
    #     client_token: "ClientToken",
    #     rate_type: "BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"],
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_workload_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "WorkloadEstimateName",
    #     created_at: Time.now,
    #     expires_at: Time.now,
    #     rate_type: "BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"],
    #     rate_timestamp: Time.now,
    #     status: "UPDATING" # One of: ["UPDATING", "VALID", "INVALID", "ACTION_NEEDED"],
    #     total_cost: 1.0,
    #     cost_currency: "USD" # One of: ["USD"],
    #     failure_message: "String"
    #   }
    # @return [Types::CreateWorkloadEstimateResponse]
    def create_workload_estimate(params = {}, options = {})
      request = build_request(:create_workload_estimate, params)
      request.send_request(options)
    end

    # <p> Deletes an existing bill estimate. </p>
    # @param [Hash, Types::DeleteBillEstimateRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the bill estimate to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_bill_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBillEstimateResponse]
    def delete_bill_estimate(params = {}, options = {})
      request = build_request(:delete_bill_estimate, params)
      request.send_request(options)
    end

    # <p> Deletes an existing bill scenario. </p>
    # @param [Hash, Types::DeleteBillScenarioRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the bill scenario to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_bill_scenario(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBillScenarioResponse]
    def delete_bill_scenario(params = {}, options = {})
      request = build_request(:delete_bill_scenario, params)
      request.send_request(options)
    end

    # <p> Deletes an existing workload estimate. </p>
    # @param [Hash, Types::DeleteWorkloadEstimateRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the workload estimate to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_workload_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkloadEstimateResponse]
    def delete_workload_estimate(params = {}, options = {})
      request = build_request(:delete_workload_estimate, params)
      request.send_request(options)
    end

    # <p> Retrieves details of a specific bill estimate. </p>
    # @param [Hash, Types::GetBillEstimateRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the bill estimate to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_bill_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "BillEstimateName",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     failure_message: "String",
    #     bill_interval: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     cost_summary: {
    #       total_cost_difference: {
    #         historical_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         estimated_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         }
    #       },
    #       service_cost_differences: {
    #         "String" => {
    #           historical_cost: {
    #             amount: 1.0,
    #             currency: "USD" # One of: ["USD"]
    #           },
    #           estimated_cost: {
    #             amount: 1.0,
    #             currency: "USD" # One of: ["USD"]
    #           }
    #         }
    #       }
    #     },
    #     created_at: Time.now,
    #     expires_at: Time.now
    #   }
    # @return [Types::GetBillEstimateResponse]
    def get_bill_estimate(params = {}, options = {})
      request = build_request(:get_bill_estimate, params)
      request.send_request(options)
    end

    # <p> Retrieves details of a specific bill scenario. </p>
    # @param [Hash, Types::GetBillScenarioRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the bill scenario to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_bill_scenario(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "BillScenarioName",
    #     bill_interval: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     status: "READY" # One of: ["READY", "LOCKED", "FAILED", "STALE"],
    #     created_at: Time.now,
    #     expires_at: Time.now,
    #     failure_message: "String"
    #   }
    # @return [Types::GetBillScenarioResponse]
    def get_bill_scenario(params = {}, options = {})
      request = build_request(:get_bill_scenario, params)
      request.send_request(options)
    end

    # <p> Retrieves the current preferences for Pricing Calculator. </p>
    # @param [Hash, Types::GetPreferencesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     management_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]],
    #     member_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]],
    #     standalone_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]]
    #   }
    # @return [Types::GetPreferencesResponse]
    def get_preferences(params = {}, options = {})
      request = build_request(:get_preferences, params)
      request.send_request(options)
    end

    # <p> Retrieves details of a specific workload estimate. </p>
    # @param [Hash, Types::GetWorkloadEstimateRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the workload estimate to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_workload_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "WorkloadEstimateName",
    #     created_at: Time.now,
    #     expires_at: Time.now,
    #     rate_type: "BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"],
    #     rate_timestamp: Time.now,
    #     status: "UPDATING" # One of: ["UPDATING", "VALID", "INVALID", "ACTION_NEEDED"],
    #     total_cost: 1.0,
    #     cost_currency: "USD" # One of: ["USD"],
    #     failure_message: "String"
    #   }
    # @return [Types::GetWorkloadEstimateResponse]
    def get_workload_estimate(params = {}, options = {})
      request = build_request(:get_workload_estimate, params)
      request.send_request(options)
    end

    # <p> Lists the commitments associated with a bill estimate. </p>
    # @param [Hash, Types::ListBillEstimateCommitmentsRequest] params
    # @option params [String] :bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list commitments for. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_estimate_id: "ResourceId", # required
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_estimate_commitments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId",
    #         purchase_agreement_type: "SAVINGS_PLANS" # One of: ["SAVINGS_PLANS", "RESERVED_INSTANCE"],
    #         offering_id: "Uuid",
    #         usage_account_id: "AccountId",
    #         region: "String",
    #         term_length: "String",
    #         payment_option: "String",
    #         upfront_payment: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         monthly_payment: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillEstimateCommitmentsResponse]
    def list_bill_estimate_commitments(params = {}, options = {})
      request = build_request(:list_bill_estimate_commitments, params)
      request.send_request(options)
    end

    # <p> Lists the input commitment modifications associated with a bill estimate. </p>
    # @param [Hash, Types::ListBillEstimateInputCommitmentModificationsRequest] params
    # @option params [String] :bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list input commitment modifications for. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_estimate_id: "ResourceId", # required
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_estimate_input_commitment_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId",
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId",
    #         commitment_action: {
    #           # One of:
    #           add_reserved_instance_action: {
    #             reserved_instances_offering_id: "Uuid",
    #             instance_count: 1
    #           },
    #           add_savings_plan_action: {
    #             savings_plan_offering_id: "Uuid",
    #             commitment: 1.0
    #           },
    #           negate_reserved_instance_action: {
    #             reserved_instances_id: "Uuid"
    #           },
    #           negate_savings_plan_action: {
    #             savings_plan_id: "Uuid"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillEstimateInputCommitmentModificationsResponse]
    def list_bill_estimate_input_commitment_modifications(params = {}, options = {})
      request = build_request(:list_bill_estimate_input_commitment_modifications, params)
      request.send_request(options)
    end

    # <p> Lists the input usage modifications associated with a bill estimate. </p>
    # @param [Hash, Types::ListBillEstimateInputUsageModificationsRequest] params
    # @option params [String] :bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list input usage modifications for. </p>
    # @option params [Array<Types::ListUsageFilter>] :filters
    #   <p> Filters to apply to the list of input usage modifications. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_estimate_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "SERVICE_CODE", "USAGE_TYPE", "OPERATION", "LOCATION", "USAGE_GROUP", "HISTORICAL_USAGE_ACCOUNT_ID", "HISTORICAL_SERVICE_CODE", "HISTORICAL_USAGE_TYPE", "HISTORICAL_OPERATION", "HISTORICAL_LOCATION"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_estimate_input_usage_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         availability_zone: "AvailabilityZone",
    #         id: "ResourceId",
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId",
    #         quantities: [
    #           {
    #             start_hour: Time.now,
    #             unit: "String",
    #             amount: 1.0
    #           }
    #         ],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillEstimateInputUsageModificationsResponse]
    def list_bill_estimate_input_usage_modifications(params = {}, options = {})
      request = build_request(:list_bill_estimate_input_usage_modifications, params)
      request.send_request(options)
    end

    # <p> Lists the line items associated with a bill estimate. </p>
    # @param [Hash, Types::ListBillEstimateLineItemsRequest] params
    # @option params [String] :bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list line items for. </p>
    # @option params [Array<Types::ListBillEstimateLineItemsFilter>] :filters
    #   <p> Filters to apply to the list of line items. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_estimate_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "SERVICE_CODE", "USAGE_TYPE", "OPERATION", "LOCATION", "LINE_ITEM_TYPE"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_estimate_line_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         availability_zone: "AvailabilityZone",
    #         id: "ResourceId",
    #         line_item_id: "String",
    #         line_item_type: "String",
    #         payer_account_id: "AccountId",
    #         usage_account_id: "AccountId",
    #         estimated_usage_quantity: {
    #           amount: 1.0,
    #           unit: "String"
    #         },
    #         estimated_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         historical_usage_quantity: {
    #           amount: 1.0,
    #           unit: "String"
    #         },
    #         historical_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         savings_plan_arns: ["String"]
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillEstimateLineItemsResponse]
    def list_bill_estimate_line_items(params = {}, options = {})
      request = build_request(:list_bill_estimate_line_items, params)
      request.send_request(options)
    end

    # <p> Lists all bill estimates for the account. </p>
    # @param [Hash, Types::ListBillEstimatesRequest] params
    # @option params [Array<Types::ListBillEstimatesFilter>] :filters
    #   <p> Filters to apply to the list of bill estimates. </p>
    # @option params [Types::FilterTimestamp] :created_at_filter
    #   <p> Filter bill estimates based on the creation date. </p>
    # @option params [Types::FilterTimestamp] :expires_at_filter
    #   <p> Filter bill estimates based on the expiration date. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "STATUS" # One of: ["STATUS", "NAME"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     created_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now
    #     },
    #     expires_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now
    #     },
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_estimates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId", # required
    #         name: "BillEstimateName",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #         bill_interval: {
    #           start: Time.now,
    #           end: Time.now
    #         },
    #         created_at: Time.now,
    #         expires_at: Time.now
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillEstimatesResponse]
    def list_bill_estimates(params = {}, options = {})
      request = build_request(:list_bill_estimates, params)
      request.send_request(options)
    end

    # <p> Lists the commitment modifications associated with a bill scenario. </p>
    # @param [Hash, Types::ListBillScenarioCommitmentModificationsRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The unique identifier of the bill scenario to list commitment modifications for. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_scenario_commitment_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId",
    #         usage_account_id: "AccountId",
    #         group: "UsageGroup",
    #         commitment_action: {
    #           # One of:
    #           add_reserved_instance_action: {
    #             reserved_instances_offering_id: "Uuid",
    #             instance_count: 1
    #           },
    #           add_savings_plan_action: {
    #             savings_plan_offering_id: "Uuid",
    #             commitment: 1.0
    #           },
    #           negate_reserved_instance_action: {
    #             reserved_instances_id: "Uuid"
    #           },
    #           negate_savings_plan_action: {
    #             savings_plan_id: "Uuid"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillScenarioCommitmentModificationsResponse]
    def list_bill_scenario_commitment_modifications(params = {}, options = {})
      request = build_request(:list_bill_scenario_commitment_modifications, params)
      request.send_request(options)
    end

    # <p> Lists the usage modifications associated with a bill scenario. </p>
    # @param [Hash, Types::ListBillScenarioUsageModificationsRequest] params
    # @option params [String] :bill_scenario_id
    #   <p> The unique identifier of the bill scenario to list usage modifications for. </p>
    # @option params [Array<Types::ListUsageFilter>] :filters
    #   <p> Filters to apply to the list of usage modifications. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bill_scenario_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "SERVICE_CODE", "USAGE_TYPE", "OPERATION", "LOCATION", "USAGE_GROUP", "HISTORICAL_USAGE_ACCOUNT_ID", "HISTORICAL_SERVICE_CODE", "HISTORICAL_USAGE_TYPE", "HISTORICAL_OPERATION", "HISTORICAL_LOCATION"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_scenario_usage_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         availability_zone: "AvailabilityZone",
    #         id: "ResourceId",
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId",
    #         quantities: [
    #           {
    #             start_hour: Time.now,
    #             unit: "String",
    #             amount: 1.0
    #           }
    #         ],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillScenarioUsageModificationsResponse]
    def list_bill_scenario_usage_modifications(params = {}, options = {})
      request = build_request(:list_bill_scenario_usage_modifications, params)
      request.send_request(options)
    end

    # <p> Lists all bill scenarios for the account. </p>
    # @param [Hash, Types::ListBillScenariosRequest] params
    # @option params [Array<Types::ListBillScenariosFilter>] :filters
    #   <p> Filters to apply to the list of bill scenarios. </p>
    # @option params [Types::FilterTimestamp] :created_at_filter
    #   <p> Filter bill scenarios based on the creation date. </p>
    # @option params [Types::FilterTimestamp] :expires_at_filter
    #   <p> Filter bill scenarios based on the expiration date. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "STATUS" # One of: ["STATUS", "NAME"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     created_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now
    #     },
    #     expires_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now
    #     },
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_bill_scenarios(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId", # required
    #         name: "BillScenarioName",
    #         bill_interval: {
    #           start: Time.now,
    #           end: Time.now
    #         },
    #         status: "READY" # One of: ["READY", "LOCKED", "FAILED", "STALE"],
    #         created_at: Time.now,
    #         expires_at: Time.now,
    #         failure_message: "String"
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListBillScenariosResponse]
    def list_bill_scenarios(params = {}, options = {})
      request = build_request(:list_bill_scenarios, params)
      request.send_request(options)
    end

    # <p> Lists all tags associated with a specified resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the resource to list tags for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> Lists the usage associated with a workload estimate. </p>
    # @param [Hash, Types::ListWorkloadEstimateUsageRequest] params
    # @option params [String] :workload_estimate_id
    #   <p> The unique identifier of the workload estimate to list usage for. </p>
    # @option params [Array<Types::ListUsageFilter>] :filters
    #   <p> Filters to apply to the list of usage items. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_estimate_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "SERVICE_CODE", "USAGE_TYPE", "OPERATION", "LOCATION", "USAGE_GROUP", "HISTORICAL_USAGE_ACCOUNT_ID", "HISTORICAL_SERVICE_CODE", "HISTORICAL_USAGE_TYPE", "HISTORICAL_OPERATION", "HISTORICAL_LOCATION"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workload_estimate_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         location: "String",
    #         id: "ResourceId",
    #         usage_account_id: "AccountId",
    #         group: "UsageGroup",
    #         quantity: {
    #           unit: "String",
    #           amount: 1.0
    #         },
    #         cost: 1.0,
    #         currency: "USD" # One of: ["USD"],
    #         status: "VALID" # One of: ["VALID", "INVALID", "STALE"],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListWorkloadEstimateUsageResponse]
    def list_workload_estimate_usage(params = {}, options = {})
      request = build_request(:list_workload_estimate_usage, params)
      request.send_request(options)
    end

    # <p> Lists all workload estimates for the account. </p>
    # @param [Hash, Types::ListWorkloadEstimatesRequest] params
    # @option params [Types::FilterTimestamp] :created_at_filter
    #   <p> Filter workload estimates based on the creation date. </p>
    # @option params [Types::FilterTimestamp] :expires_at_filter
    #   <p> Filter workload estimates based on the expiration date. </p>
    # @option params [Array<Types::ListWorkloadEstimatesFilter>] :filters
    #   <p> Filters to apply to the list of workload estimates. </p>
    # @option params [String] :next_token
    #   <p> A token to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     created_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now
    #     },
    #     expires_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now
    #     },
    #     filters: [
    #       {
    #         name: "STATUS" # One of: ["STATUS", "NAME"], # required
    #         values: ["String"], # required
    #         match_option: "EQUALS" # One of: ["EQUALS", "STARTS_WITH", "CONTAINS"]
    #       }
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workload_estimates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId", # required
    #         name: "WorkloadEstimateName",
    #         created_at: Time.now,
    #         expires_at: Time.now,
    #         rate_type: "BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"],
    #         rate_timestamp: Time.now,
    #         status: "UPDATING" # One of: ["UPDATING", "VALID", "INVALID", "ACTION_NEEDED"],
    #         total_cost: 1.0,
    #         cost_currency: "USD" # One of: ["USD"],
    #         failure_message: "String"
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListWorkloadEstimatesResponse]
    def list_workload_estimates(params = {}, options = {})
      request = build_request(:list_workload_estimates, params)
      request.send_request(options)
    end

    # <p> Adds one or more tags to a specified resource. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the resource to add tags to. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags to add to the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tags: { # required
    #       "ResourceTagKey" => "ResourceTagValue"
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

    # <p> Removes one or more tags from a specified resource. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the resource to remove tags from. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> The keys of the tags to remove from the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tag_keys: ["ResourceTagKey"], # required
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

    # <p> Updates an existing bill estimate. </p>
    # @param [Hash, Types::UpdateBillEstimateRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the bill estimate to update. </p>
    # @option params [String] :name
    #   <p> The new name for the bill estimate. </p>
    # @option params [Time] :expires_at
    #   <p> The new expiration date for the bill estimate. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #     name: "BillEstimateName",
    #     expires_at: Time.now
    #   }
    #   options = {}
    #   response = client.update_bill_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "BillEstimateName",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     failure_message: "String",
    #     bill_interval: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     cost_summary: {
    #       total_cost_difference: {
    #         historical_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         estimated_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         }
    #       },
    #       service_cost_differences: {
    #         "String" => {
    #           historical_cost: {
    #             amount: 1.0,
    #             currency: "USD" # One of: ["USD"]
    #           },
    #           estimated_cost: {
    #             amount: 1.0,
    #             currency: "USD" # One of: ["USD"]
    #           }
    #         }
    #       }
    #     },
    #     created_at: Time.now,
    #     expires_at: Time.now
    #   }
    # @return [Types::UpdateBillEstimateResponse]
    def update_bill_estimate(params = {}, options = {})
      request = build_request(:update_bill_estimate, params)
      request.send_request(options)
    end

    # <p> Updates an existing bill scenario. </p>
    # @param [Hash, Types::UpdateBillScenarioRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the bill scenario to update. </p>
    # @option params [String] :name
    #   <p> The new name for the bill scenario. </p>
    # @option params [Time] :expires_at
    #   <p> The new expiration date for the bill scenario. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #     name: "BillScenarioName",
    #     expires_at: Time.now
    #   }
    #   options = {}
    #   response = client.update_bill_scenario(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "BillScenarioName",
    #     bill_interval: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     status: "READY" # One of: ["READY", "LOCKED", "FAILED", "STALE"],
    #     created_at: Time.now,
    #     expires_at: Time.now,
    #     failure_message: "String"
    #   }
    # @return [Types::UpdateBillScenarioResponse]
    def update_bill_scenario(params = {}, options = {})
      request = build_request(:update_bill_scenario, params)
      request.send_request(options)
    end

    # <p> Updates the preferences for Pricing Calculator. </p>
    # @param [Hash, Types::UpdatePreferencesRequest] params
    # @option params [Array<String>] :management_account_rate_type_selections
    #   <p> The updated preferred rate types for the management account. </p>
    # @option params [Array<String>] :member_account_rate_type_selections
    #   <p> The updated preferred rate types for member accounts. </p>
    # @option params [Array<String>] :standalone_account_rate_type_selections
    #   <p> The updated preferred rate types for a standalone account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     management_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]],
    #     member_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]],
    #     standalone_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]]
    #   }
    #   options = {}
    #   response = client.update_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     management_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]],
    #     member_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]],
    #     standalone_account_rate_type_selections: ["BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"]]
    #   }
    # @return [Types::UpdatePreferencesResponse]
    def update_preferences(params = {}, options = {})
      request = build_request(:update_preferences, params)
      request.send_request(options)
    end

    # <p> Updates an existing workload estimate. </p>
    # @param [Hash, Types::UpdateWorkloadEstimateRequest] params
    # @option params [String] :identifier
    #   <p> The unique identifier of the workload estimate to update. </p>
    # @option params [String] :name
    #   <p> The new name for the workload estimate. </p>
    # @option params [Time] :expires_at
    #   <p> The new expiration date for the workload estimate. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #     name: "WorkloadEstimateName",
    #     expires_at: Time.now
    #   }
    #   options = {}
    #   response = client.update_workload_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "WorkloadEstimateName",
    #     created_at: Time.now,
    #     expires_at: Time.now,
    #     rate_type: "BEFORE_DISCOUNTS" # One of: ["BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"],
    #     rate_timestamp: Time.now,
    #     status: "UPDATING" # One of: ["UPDATING", "VALID", "INVALID", "ACTION_NEEDED"],
    #     total_cost: 1.0,
    #     cost_currency: "USD" # One of: ["USD"],
    #     failure_message: "String"
    #   }
    # @return [Types::UpdateWorkloadEstimateResponse]
    def update_workload_estimate(params = {}, options = {})
      request = build_request(:update_workload_estimate, params)
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
      context[:gem_name] = 'aws-sdk-bcmpricingcalculator'
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
