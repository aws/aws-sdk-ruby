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
require 'aws-sdk-core/plugins/json_rpc'

module Aws::CostOptimizationHub
  # An API client for Aws::CostOptimizationHub.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CostOptimizationHubService

    add_plugin(::Aws::CostOptimizationHub::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpc)

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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::CostOptimizationHub::EndpointProvider] :endpoint_provider
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

    # <p>Returns a set of preferences for an account in order to add account-specific preferences into the service. These preferences impact how the savings associated with recommendations are presented—estimated savings after discounts or estimated savings before discounts, for example.</p>
    # @param [Hash, Types::GetPreferencesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_estimation_mode: "BeforeDiscounts" # One of: ["BeforeDiscounts", "AfterDiscounts"],
    #     member_account_discount_visibility: "All" # One of: ["All", "None"],
    #     preferred_commitment: {
    #       term: "OneYear" # One of: ["OneYear", "ThreeYears"],
    #       payment_option: "AllUpfront" # One of: ["AllUpfront", "PartialUpfront", "NoUpfront"]
    #     }
    #   }
    # @return [Types::GetPreferencesResponse]
    def get_preferences(params = {}, options = {})
      request = build_request(:get_preferences, params)
      request.send_request(options)
    end

    # <p>Returns both the current and recommended resource configuration and the estimated cost impact for a recommendation.</p> <p>The <code>recommendationId</code> is only valid for up to a maximum of 24 hours as recommendations are refreshed daily. To retrieve the <code>recommendationId</code>, use the <code>ListRecommendations</code> API.</p>
    # @param [Hash, Types::GetRecommendationRequest] params
    # @option params [String] :recommendation_id
    #   <p>The ID for the recommendation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_id: "String",
    #     resource_id: "String",
    #     resource_arn: "String",
    #     account_id: "String",
    #     currency_code: "String",
    #     recommendation_lookback_period_in_days: 1,
    #     cost_calculation_lookback_period_in_days: 1,
    #     estimated_savings_percentage: 1.0,
    #     estimated_savings_over_cost_calculation_lookback_period: 1.0,
    #     current_resource_type: "Ec2Instance" # One of: ["Ec2Instance", "LambdaFunction", "EbsVolume", "EcsService", "Ec2AutoScalingGroup", "Ec2InstanceSavingsPlans", "ComputeSavingsPlans", "SageMakerSavingsPlans", "Ec2ReservedInstances", "RdsReservedInstances", "OpenSearchReservedInstances", "RedshiftReservedInstances", "ElastiCacheReservedInstances", "RdsDbInstanceStorage", "RdsDbInstance", "AuroraDbClusterStorage", "DynamoDbReservedCapacity", "MemoryDbReservedInstances"],
    #     recommended_resource_type: "Ec2Instance" # One of: ["Ec2Instance", "LambdaFunction", "EbsVolume", "EcsService", "Ec2AutoScalingGroup", "Ec2InstanceSavingsPlans", "ComputeSavingsPlans", "SageMakerSavingsPlans", "Ec2ReservedInstances", "RdsReservedInstances", "OpenSearchReservedInstances", "RedshiftReservedInstances", "ElastiCacheReservedInstances", "RdsDbInstanceStorage", "RdsDbInstance", "AuroraDbClusterStorage", "DynamoDbReservedCapacity", "MemoryDbReservedInstances"],
    #     region: "String",
    #     source: "ComputeOptimizer" # One of: ["ComputeOptimizer", "CostExplorer"],
    #     last_refresh_timestamp: Time.now,
    #     estimated_monthly_savings: 1.0,
    #     estimated_monthly_cost: 1.0,
    #     implementation_effort: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High", "VeryHigh"],
    #     restart_needed: false,
    #     action_type: "Rightsize" # One of: ["Rightsize", "Stop", "Upgrade", "PurchaseSavingsPlans", "PurchaseReservedInstances", "MigrateToGraviton", "Delete", "ScaleIn"],
    #     rollback_possible: false,
    #     current_resource_details: {
    #       # One of:
    #       lambda_function: {
    #         configuration: {
    #           compute: {
    #             v_cpu: 1.0,
    #             memory_size_in_mb: 1,
    #             architecture: "String",
    #             platform: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ecs_service: {
    #         configuration: {
    #           compute: {
    #             v_cpu: 1.0,
    #             memory_size_in_mb: 1,
    #             architecture: "String",
    #             platform: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ec2_instance: {
    #         configuration: {
    #           instance: {
    #             type: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ebs_volume: {
    #         configuration: {
    #           storage: {
    #             type: "String",
    #             size_in_gb: 1.0
    #           },
    #           performance: {
    #             iops: 1.0,
    #             throughput: 1.0
    #           },
    #           attachment_state: "String"
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ec2_auto_scaling_group: {
    #         configuration: {
    #           instance: {
    #             type: "String"
    #           },
    #           mixed_instances: [
    #             {
    #               type: "String"
    #             }
    #           ],
    #           type: "SingleInstanceType" # One of: ["SingleInstanceType", "MixedInstanceTypes"],
    #           allocation_strategy: "Prioritized" # One of: ["Prioritized", "LowestPrice"]
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ec2_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           offering_class: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           current_generation: "String",
    #           platform: "String",
    #           tenancy: "String",
    #           size_flex_eligible: false
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       rds_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           size_flex_eligible: false,
    #           current_generation: "String",
    #           license_model: "String",
    #           database_edition: "String",
    #           database_engine: "String",
    #           deployment_option: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       elasti_cache_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           current_generation: "String",
    #           size_flex_eligible: false
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       open_search_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_type: "String",
    #           current_generation: "String",
    #           size_flex_eligible: false
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       redshift_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           size_flex_eligible: false,
    #           current_generation: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       ec2_instance_savings_plans: {
    #         configuration: {
    #           account_scope: "String",
    #           term: "String",
    #           payment_option: "String",
    #           hourly_commitment: "String",
    #           instance_family: "String",
    #           savings_plans_region: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             monthly_savings_plans_eligible_cost: 1.0,
    #             estimated_monthly_commitment: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_on_demand_cost: 1.0
    #           }
    #         }
    #       },
    #       compute_savings_plans: {
    #         configuration: {
    #           account_scope: "String",
    #           term: "String",
    #           payment_option: "String",
    #           hourly_commitment: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             monthly_savings_plans_eligible_cost: 1.0,
    #             estimated_monthly_commitment: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_on_demand_cost: 1.0
    #           }
    #         }
    #       },
    #       sage_maker_savings_plans: {
    #         configuration: {
    #           account_scope: "String",
    #           term: "String",
    #           payment_option: "String",
    #           hourly_commitment: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             monthly_savings_plans_eligible_cost: 1.0,
    #             estimated_monthly_commitment: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_on_demand_cost: 1.0
    #           }
    #         }
    #       },
    #       rds_db_instance: {
    #         configuration: {
    #           instance: {
    #             db_instance_class: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       rds_db_instance_storage: {
    #         configuration: {
    #           storage_type: "String",
    #           allocated_storage_in_gb: 1.0,
    #           iops: 1.0,
    #           storage_throughput: 1.0
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       aurora_db_cluster_storage: {
    #         configuration: {
    #           storage_type: "String"
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       dynamo_db_reserved_capacity: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           number_of_capacity_units_to_purchase: "String",
    #           capacity_units: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       memory_db_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_type: "String",
    #           instance_family: "String",
    #           size_flex_eligible: false,
    #           current_generation: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       }
    #     },
    #     recommended_resource_details: {
    #       # One of:
    #       lambda_function: {
    #         configuration: {
    #           compute: {
    #             v_cpu: 1.0,
    #             memory_size_in_mb: 1,
    #             architecture: "String",
    #             platform: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ecs_service: {
    #         configuration: {
    #           compute: {
    #             v_cpu: 1.0,
    #             memory_size_in_mb: 1,
    #             architecture: "String",
    #             platform: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ec2_instance: {
    #         configuration: {
    #           instance: {
    #             type: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ebs_volume: {
    #         configuration: {
    #           storage: {
    #             type: "String",
    #             size_in_gb: 1.0
    #           },
    #           performance: {
    #             iops: 1.0,
    #             throughput: 1.0
    #           },
    #           attachment_state: "String"
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ec2_auto_scaling_group: {
    #         configuration: {
    #           instance: {
    #             type: "String"
    #           },
    #           mixed_instances: [
    #             {
    #               type: "String"
    #             }
    #           ],
    #           type: "SingleInstanceType" # One of: ["SingleInstanceType", "MixedInstanceTypes"],
    #           allocation_strategy: "Prioritized" # One of: ["Prioritized", "LowestPrice"]
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       ec2_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           offering_class: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           current_generation: "String",
    #           platform: "String",
    #           tenancy: "String",
    #           size_flex_eligible: false
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       rds_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           size_flex_eligible: false,
    #           current_generation: "String",
    #           license_model: "String",
    #           database_edition: "String",
    #           database_engine: "String",
    #           deployment_option: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       elasti_cache_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           current_generation: "String",
    #           size_flex_eligible: false
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       open_search_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_type: "String",
    #           current_generation: "String",
    #           size_flex_eligible: false
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       redshift_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_family: "String",
    #           instance_type: "String",
    #           size_flex_eligible: false,
    #           current_generation: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       ec2_instance_savings_plans: {
    #         configuration: {
    #           account_scope: "String",
    #           term: "String",
    #           payment_option: "String",
    #           hourly_commitment: "String",
    #           instance_family: "String",
    #           savings_plans_region: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             monthly_savings_plans_eligible_cost: 1.0,
    #             estimated_monthly_commitment: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_on_demand_cost: 1.0
    #           }
    #         }
    #       },
    #       compute_savings_plans: {
    #         configuration: {
    #           account_scope: "String",
    #           term: "String",
    #           payment_option: "String",
    #           hourly_commitment: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             monthly_savings_plans_eligible_cost: 1.0,
    #             estimated_monthly_commitment: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_on_demand_cost: 1.0
    #           }
    #         }
    #       },
    #       sage_maker_savings_plans: {
    #         configuration: {
    #           account_scope: "String",
    #           term: "String",
    #           payment_option: "String",
    #           hourly_commitment: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             monthly_savings_plans_eligible_cost: 1.0,
    #             estimated_monthly_commitment: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_on_demand_cost: 1.0
    #           }
    #         }
    #       },
    #       rds_db_instance: {
    #         configuration: {
    #           instance: {
    #             db_instance_class: "String"
    #           }
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       rds_db_instance_storage: {
    #         configuration: {
    #           storage_type: "String",
    #           allocated_storage_in_gb: 1.0,
    #           iops: 1.0,
    #           storage_throughput: 1.0
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       aurora_db_cluster_storage: {
    #         configuration: {
    #           storage_type: "String"
    #         },
    #         cost_calculation: {
    #           usages: [
    #             {
    #               usage_type: "String",
    #               usage_amount: 1.0,
    #               operation: "String",
    #               product_code: "String",
    #               unit: "String"
    #             }
    #           ],
    #           pricing: {
    #             estimated_cost_before_discounts: 1.0,
    #             estimated_net_unused_amortized_commitments: 1.0,
    #             estimated_discounts: {
    #               savings_plans_discount: 1.0,
    #               reserved_instances_discount: 1.0,
    #               other_discount: 1.0
    #             },
    #             estimated_cost_after_discounts: 1.0
    #           }
    #         }
    #       },
    #       dynamo_db_reserved_capacity: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           number_of_capacity_units_to_purchase: "String",
    #           capacity_units: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       },
    #       memory_db_reserved_instances: {
    #         configuration: {
    #           account_scope: "String",
    #           service: "String",
    #           term: "String",
    #           payment_option: "String",
    #           reserved_instances_region: "String",
    #           upfront_cost: "String",
    #           monthly_recurring_cost: "String",
    #           normalized_units_to_purchase: "String",
    #           number_of_instances_to_purchase: "String",
    #           instance_type: "String",
    #           instance_family: "String",
    #           size_flex_eligible: false,
    #           current_generation: "String"
    #         },
    #         cost_calculation: {
    #           pricing: {
    #             estimated_on_demand_cost: 1.0,
    #             monthly_reservation_eligible_cost: 1.0,
    #             savings_percentage: 1.0,
    #             estimated_monthly_amortized_reservation_cost: 1.0
    #           }
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetRecommendationResponse]
    def get_recommendation(params = {}, options = {})
      request = build_request(:get_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves the enrollment status for an account. It can also return the list of accounts that are enrolled under the organization.</p>
    # @param [Hash, Types::ListEnrollmentStatusesRequest] params
    # @option params [Boolean] :include_organization_info
    #   <p>Indicates whether to return the enrollment status for the organization.</p>
    # @option params [String] :account_id
    #   <p>The account ID of a member account in the organization.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_organization_info: false,
    #     account_id: "AccountId",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_enrollment_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         account_id: "AccountId",
    #         status: "Active" # One of: ["Active", "Inactive"],
    #         last_updated_timestamp: Time.now,
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     include_member_accounts: false,
    #     next_token: "String"
    #   }
    # @return [Types::ListEnrollmentStatusesResponse]
    def list_enrollment_statuses(params = {}, options = {})
      request = build_request(:list_enrollment_statuses, params)
      request.send_request(options)
    end

    # <p>Returns a concise representation of savings estimates for resources. Also returns de-duped savings across different types of recommendations.</p> <note> <p>The following filters are not supported for this API: <code>recommendationIds</code>, <code>resourceArns</code>, and <code>resourceIds</code>.</p> </note>
    # @param [Hash, Types::ListRecommendationSummariesRequest] params
    # @option params [Types::Filter] :filter
    #   <p>Describes a filter that returns a more specific list of recommendations. Filters recommendations by different dimensions.</p>
    # @option params [String] :group_by
    #   <p>The grouping of recommendations by a dimension.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommendations to be returned for the request.</p>
    # @option params [Array<String>] :metrics
    #   <p>Additional metrics to be returned for the request. The only valid value is <code>savingsPercentage</code>.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       restart_needed: false,
    #       rollback_possible: false,
    #       implementation_efforts: ["VeryLow" # One of: ["VeryLow", "Low", "Medium", "High", "VeryHigh"]],
    #       account_ids: ["AccountId"],
    #       regions: ["String"],
    #       resource_types: ["Ec2Instance" # One of: ["Ec2Instance", "LambdaFunction", "EbsVolume", "EcsService", "Ec2AutoScalingGroup", "Ec2InstanceSavingsPlans", "ComputeSavingsPlans", "SageMakerSavingsPlans", "Ec2ReservedInstances", "RdsReservedInstances", "OpenSearchReservedInstances", "RedshiftReservedInstances", "ElastiCacheReservedInstances", "RdsDbInstanceStorage", "RdsDbInstance", "AuroraDbClusterStorage", "DynamoDbReservedCapacity", "MemoryDbReservedInstances"]],
    #       action_types: ["Rightsize" # One of: ["Rightsize", "Stop", "Upgrade", "PurchaseSavingsPlans", "PurchaseReservedInstances", "MigrateToGraviton", "Delete", "ScaleIn"]],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       resource_ids: ["String"],
    #       resource_arns: ["String"],
    #       recommendation_ids: ["String"]
    #     },
    #     group_by: "String", # required
    #     max_results: 1,
    #     metrics: ["SavingsPercentage" # One of: ["SavingsPercentage"]],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_recommendation_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     estimated_total_deduped_savings: 1.0,
    #     items: [
    #       {
    #         group: "String",
    #         estimated_monthly_savings: 1.0,
    #         recommendation_count: 1
    #       }
    #     ],
    #     group_by: "String",
    #     currency_code: "String",
    #     metrics: {
    #       savings_percentage: "String"
    #     },
    #     next_token: "String"
    #   }
    # @return [Types::ListRecommendationSummariesResponse]
    def list_recommendation_summaries(params = {}, options = {})
      request = build_request(:list_recommendation_summaries, params)
      request.send_request(options)
    end

    # <p>Returns a list of recommendations.</p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [Types::Filter] :filter
    #   <p>The constraints that you want all returned recommendations to match.</p>
    # @option params [Types::OrderBy] :order_by
    #   <p>The ordering of recommendations by a dimension.</p>
    # @option params [Boolean] :include_all_recommendations
    #   <p>List of all recommendations for a resource, or a single recommendation if de-duped by <code>resourceId</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommendations that are returned for the request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       restart_needed: false,
    #       rollback_possible: false,
    #       implementation_efforts: ["VeryLow" # One of: ["VeryLow", "Low", "Medium", "High", "VeryHigh"]],
    #       account_ids: ["AccountId"],
    #       regions: ["String"],
    #       resource_types: ["Ec2Instance" # One of: ["Ec2Instance", "LambdaFunction", "EbsVolume", "EcsService", "Ec2AutoScalingGroup", "Ec2InstanceSavingsPlans", "ComputeSavingsPlans", "SageMakerSavingsPlans", "Ec2ReservedInstances", "RdsReservedInstances", "OpenSearchReservedInstances", "RedshiftReservedInstances", "ElastiCacheReservedInstances", "RdsDbInstanceStorage", "RdsDbInstance", "AuroraDbClusterStorage", "DynamoDbReservedCapacity", "MemoryDbReservedInstances"]],
    #       action_types: ["Rightsize" # One of: ["Rightsize", "Stop", "Upgrade", "PurchaseSavingsPlans", "PurchaseReservedInstances", "MigrateToGraviton", "Delete", "ScaleIn"]],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       resource_ids: ["String"],
    #       resource_arns: ["String"],
    #       recommendation_ids: ["String"]
    #     },
    #     order_by: {
    #       dimension: "String",
    #       order: "Asc" # One of: ["Asc", "Desc"]
    #     },
    #     include_all_recommendations: false,
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         recommendation_id: "String",
    #         account_id: "String",
    #         region: "String",
    #         resource_id: "String",
    #         resource_arn: "String",
    #         current_resource_type: "String",
    #         recommended_resource_type: "String",
    #         estimated_monthly_savings: 1.0,
    #         estimated_savings_percentage: 1.0,
    #         estimated_monthly_cost: 1.0,
    #         currency_code: "String",
    #         implementation_effort: "String",
    #         restart_needed: false,
    #         action_type: "String",
    #         rollback_possible: false,
    #         current_resource_summary: "String",
    #         recommended_resource_summary: "String",
    #         last_refresh_timestamp: Time.now,
    #         recommendation_lookback_period_in_days: 1,
    #         source: "ComputeOptimizer" # One of: ["ComputeOptimizer", "CostExplorer"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>Updates the enrollment (opt in and opt out) status of an account to the Cost Optimization Hub service.</p> <p>If the account is a management account or delegated administrator of an organization, this action can also be used to enroll member accounts of the organization.</p> <p>You must have the appropriate permissions to opt in to Cost Optimization Hub and to view its recommendations. When you opt in, Cost Optimization Hub automatically creates a service-linked role in your account to access its data.</p>
    # @param [Hash, Types::UpdateEnrollmentStatusRequest] params
    # @option params [String] :status
    #   <p>Sets the account status.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to enroll member accounts of the organization if the account is the management account or delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "Active" # One of: ["Active", "Inactive"], # required
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.update_enrollment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::UpdateEnrollmentStatusResponse]
    def update_enrollment_status(params = {}, options = {})
      request = build_request(:update_enrollment_status, params)
      request.send_request(options)
    end

    # <p>Updates a set of preferences for an account in order to add account-specific preferences into the service. These preferences impact how the savings associated with recommendations are presented.</p>
    # @param [Hash, Types::UpdatePreferencesRequest] params
    # @option params [String] :savings_estimation_mode
    #   <p>Sets the "savings estimation mode" preference.</p>
    # @option params [String] :member_account_discount_visibility
    #   <p>Sets the "member account discount visibility" preference.</p>
    # @option params [Types::PreferredCommitment] :preferred_commitment
    #   <p>Sets the preferences for how Reserved Instances and Savings Plans cost-saving opportunities are prioritized in terms of payment option and term length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_estimation_mode: "BeforeDiscounts" # One of: ["BeforeDiscounts", "AfterDiscounts"],
    #     member_account_discount_visibility: "All" # One of: ["All", "None"],
    #     preferred_commitment: {
    #       term: "OneYear" # One of: ["OneYear", "ThreeYears"],
    #       payment_option: "AllUpfront" # One of: ["AllUpfront", "PartialUpfront", "NoUpfront"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_estimation_mode: "BeforeDiscounts" # One of: ["BeforeDiscounts", "AfterDiscounts"],
    #     member_account_discount_visibility: "All" # One of: ["All", "None"],
    #     preferred_commitment: {
    #       term: "OneYear" # One of: ["OneYear", "ThreeYears"],
    #       payment_option: "AllUpfront" # One of: ["AllUpfront", "PartialUpfront", "NoUpfront"]
    #     }
    #   }
    # @return [Types::UpdatePreferencesResponse]
    def update_preferences(params = {}, options = {})
      request = build_request(:update_preferences, params)
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
      context[:gem_name] = 'aws-sdk-costoptimizationhub'
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
