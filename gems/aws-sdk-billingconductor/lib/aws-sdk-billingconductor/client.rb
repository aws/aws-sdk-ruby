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

module Aws::Billingconductor
  # An API client for Aws::Billingconductor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBillingConductor

    add_plugin(::Aws::Billingconductor::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Billingconductor::EndpointProvider)
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

    # <p>Connects an array of account IDs in a consolidated billing family to a predefined
    #       billing group. The account IDs must be a part of the consolidated billing family during the
    #       current month, and not already associated with another billing group. The maximum number of
    #       accounts that can be associated in one call is 30. </p>
    # @param [Hash, Types::AssociateAccountsOperationInput] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the billing group that associates the array of
    #         account IDs. </p>
    # @option params [Array<String>] :account_ids
    #   <p>
    #         The associating array of account IDs.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingGroupArn", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.associate_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingGroupArn"
    #   }
    # @return [Types::AssociateAccountsOperationOutput]
    def associate_accounts(params = {}, options = {})
      request = build_request(:associate_accounts, params)
      request.send_request(options)
    end

    # <p>Connects an array of <code>PricingRuleArns</code> to a defined <code>PricingPlan</code>.
    #       The maximum number <code>PricingRuleArn</code> that can be associated in one call is 30. </p>
    # @param [Hash, Types::AssociatePricingRulesOperationInput] params
    # @option params [String] :arn
    #   <p>
    #         The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with.
    #       </p>
    # @option params [Array<String>] :pricing_rule_arns
    #   <p>
    #         The <code>PricingRuleArns</code> that are associated with the Pricing Plan.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PricingPlanArn", # required
    #     pricing_rule_arns: ["PricingRuleArn"], # required
    #   }
    #   options = {}
    #   response = client.associate_pricing_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingPlanArn"
    #   }
    # @return [Types::AssociatePricingRulesOperationOutput]
    def associate_pricing_rules(params = {}, options = {})
      request = build_request(:associate_pricing_rules, params)
      request.send_request(options)
    end

    # <p>
    #       Associates a batch of resources to a percentage custom line item.
    #     </p>
    # @param [Hash, Types::BatchAssociateResourcesToCustomLineItemOperationInput] params
    # @option params [String] :target_arn
    #   <p>
    #         A percentage custom line item ARN to associate the resources to.
    #       </p>
    # @option params [Array<String>] :resource_arns
    #   <p>
    #         A list containing the ARNs of the resources to be associated.
    #       </p>
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "CustomLineItemArn", # required
    #     resource_arns: ["CustomLineItemAssociationElement"], # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod"
    #     }
    #   }
    #   options = {}
    #   response = client.batch_associate_resources_to_custom_line_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successfully_associated_resources: [
    #       {
    #         arn: "CustomLineItemAssociationElement",
    #         error: {
    #           message: "String",
    #           reason: "AssociateResourceErrorReason"
    #         }
    #       }
    #     ],
    #     failed_associated_resources: [
    #       {
    #         arn: "CustomLineItemAssociationElement",
    #         error: {
    #           message: "String",
    #           reason: "AssociateResourceErrorReason"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateResourcesToCustomLineItemOperationOutput]
    def batch_associate_resources_to_custom_line_item(params = {}, options = {})
      request = build_request(:batch_associate_resources_to_custom_line_item, params)
      request.send_request(options)
    end

    # <p>
    #       Disassociates a batch of resources from a percentage custom line item.
    #     </p>
    # @param [Hash, Types::BatchDisassociateResourcesFromCustomLineItemOperationInput] params
    # @option params [String] :target_arn
    #   <p>
    #         A percentage custom line item ARN to disassociate the resources from.
    #       </p>
    # @option params [Array<String>] :resource_arns
    #   <p>
    #         A list containing the ARNs of resources to be disassociated.
    #       </p>
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "CustomLineItemArn", # required
    #     resource_arns: ["CustomLineItemAssociationElement"], # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod"
    #     }
    #   }
    #   options = {}
    #   response = client.batch_disassociate_resources_from_custom_line_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successfully_disassociated_resources: [
    #       {
    #         arn: "CustomLineItemAssociationElement",
    #         error: {
    #           message: "String",
    #           reason: "AssociateResourceErrorReason"
    #         }
    #       }
    #     ],
    #     failed_disassociated_resources: [
    #       {
    #         arn: "CustomLineItemAssociationElement",
    #         error: {
    #           message: "String",
    #           reason: "AssociateResourceErrorReason"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateResourcesFromCustomLineItemOperationOutput]
    def batch_disassociate_resources_from_custom_line_item(params = {}, options = {})
      request = build_request(:batch_disassociate_resources_from_custom_line_item, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a billing group that resembles a consolidated billing family that Amazon Web Services charges, based off of the predefined pricing plan computation.
    #     </p>
    # @param [Hash, Types::CreateBillingGroupOperationInput] params
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update. 
    #       </p>
    # @option params [String] :name
    #   <p>
    #         The billing group name. The names must be unique.
    #       </p>
    # @option params [Types::AccountGrouping] :account_grouping
    #   <p>
    #         The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated billing family.
    #       </p>
    # @option params [Types::ComputationPreference] :computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    # @option params [String] :primary_account_id
    #   <p> The account ID that serves as the main account in a billing group. </p>
    # @option params [String] :description
    #   <p>The description of the billing group. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> A map that contains tag keys and tag values that are attached to a billing group. This
    #         feature isn't available during the beta. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "BillingGroupName", # required
    #     account_grouping: { # required
    #       linked_account_ids: ["AccountId"], # required
    #       auto_associate: false
    #     },
    #     computation_preference: { # required
    #       pricing_plan_arn: "PricingPlanFullArn", # required
    #     },
    #     primary_account_id: "AccountId",
    #     description: "BillingGroupDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingGroupArn"
    #   }
    # @return [Types::CreateBillingGroupOperationOutput]
    def create_billing_group(params = {}, options = {})
      request = build_request(:create_billing_group, params)
      request.send_request(options)
    end

    # <p>Creates a custom line item that can be used to create a one-time fixed charge that can be
    #       applied to a single billing group for the current or previous billing period. The one-time
    #       fixed charge is either a fee or discount. </p>
    # @param [Hash, Types::CreateCustomLineItemOperationInput] params
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update. 
    #       </p>
    # @option params [String] :name
    #   <p>
    #         The name of the custom line item.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The description of the custom line item. This is shown on the Bills page in association with the charge value.
    #       </p>
    # @option params [String] :billing_group_arn
    #   <p> The Amazon Resource Name (ARN) that references the billing group where the custom line
    #         item applies to. </p>
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p> A time range for which the custom line item is effective. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> A map that contains tag keys and tag values that are attached to a custom line item. </p>
    # @option params [Types::CustomLineItemChargeDetails] :charge_details
    #   <p>
    #         A <code>CustomLineItemChargeDetails</code> that describes the charge details for a custom line item.
    #       </p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account in which this custom line item will be applied to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "CustomLineItemName", # required
    #     description: "CustomLineItemDescription", # required
    #     billing_group_arn: "BillingGroupArn", # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     charge_details: { # required
    #       flat: {
    #         charge_value: 1.0, # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0, # required
    #         associated_values: ["CustomLineItemAssociationElement"]
    #       },
    #       type: "CustomLineItemType", # required
    #       line_item_filters: [
    #         {
    #           attribute: "LineItemFilterAttributeName", # required
    #           match_option: "MatchOption", # required
    #           values: ["LineItemFilterValue"], # required
    #         }
    #       ]
    #     },
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_custom_line_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "CustomLineItemArn"
    #   }
    # @return [Types::CreateCustomLineItemOperationOutput]
    def create_custom_line_item(params = {}, options = {})
      request = build_request(:create_custom_line_item, params)
      request.send_request(options)
    end

    # <p>Creates a pricing plan that is used for computing Amazon Web Services charges for billing groups.
    #     </p>
    # @param [Hash, Types::CreatePricingPlanOperationInput] params
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update. 
    #       </p>
    # @option params [String] :name
    #   <p>The name of the pricing plan. The names must be unique to each pricing plan. </p>
    # @option params [String] :description
    #   <p>The description of the pricing plan. </p>
    # @option params [Array<String>] :pricing_rule_arns
    #   <p> A list of Amazon Resource Names (ARNs) that define the pricing plan parameters. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A map that contains tag keys and tag values that are attached to a pricing plan.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "PricingPlanName", # required
    #     description: "PricingPlanDescription",
    #     pricing_rule_arns: ["PricingRuleArn"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_pricing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingPlanArn"
    #   }
    # @return [Types::CreatePricingPlanOperationOutput]
    def create_pricing_plan(params = {}, options = {})
      request = build_request(:create_pricing_plan, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a pricing rule can be associated to a pricing plan, or a set of pricing plans.
    #     </p>
    # @param [Hash, Types::CreatePricingRuleOperationInput] params
    # @option params [String] :client_token
    #   <p> The token that's needed to support idempotency. Idempotency isn't currently supported,
    #         but will be implemented in a future update. </p>
    # @option params [String] :name
    #   <p>
    #         The pricing rule name. The names must be unique to each pricing rule.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The pricing rule description.
    #       </p>
    # @option params [String] :scope
    #   <p> The scope of pricing rule that indicates if it's globally applicable, or it's
    #         service-specific. </p>
    # @option params [String] :type
    #   <p>
    #         The type of pricing rule.
    #       </p>
    # @option params [Float] :modifier_percentage
    #   <p> A percentage modifier that's applied on the public pricing rates. </p>
    # @option params [String] :service
    #   <p>
    #         If the <code>Scope</code> attribute is set to <code>SERVICE</code> or <code>SKU</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for.
    #       </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A map that contains tag keys and tag values that are attached to a pricing rule.
    #       </p>
    # @option params [String] :billing_entity
    #   <p>
    #         The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace.
    #       </p>
    # @option params [Types::CreateTieringInput] :tiering
    #   <p>
    #         The set of tiering configurations for the pricing rule.
    #       </p>
    # @option params [String] :usage_type
    #   <p>
    #         Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p>
    #            <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an<code> M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. 
    #         
    #       </p>
    # @option params [String] :operation
    #   <p>
    #         Operation is the specific Amazon Web Services action covered by this line item. This describes the specific usage of the line item.</p>
    #            <p>
    #           If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "PricingRuleName", # required
    #     description: "PricingRuleDescription",
    #     scope: "PricingRuleScope", # required
    #     type: "PricingRuleType", # required
    #     modifier_percentage: 1.0,
    #     service: "Service",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     billing_entity: "BillingEntity",
    #     tiering: {
    #       free_tier: { # required
    #         activated: false, # required
    #       }
    #     },
    #     usage_type: "UsageType",
    #     operation: "Operation"
    #   }
    #   options = {}
    #   response = client.create_pricing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingRuleArn"
    #   }
    # @return [Types::CreatePricingRuleOperationOutput]
    def create_pricing_rule(params = {}, options = {})
      request = build_request(:create_pricing_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a billing group.
    #     </p>
    # @param [Hash, Types::DeleteBillingGroupOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that you're deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingGroupArn", # required
    #   }
    #   options = {}
    #   response = client.delete_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingGroupArn"
    #   }
    # @return [Types::DeleteBillingGroupOperationOutput]
    def delete_billing_group(params = {}, options = {})
      request = build_request(:delete_billing_group, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes the custom line item identified by the given ARN in the current, or previous billing period.
    #     </p>
    # @param [Hash, Types::DeleteCustomLineItemOperationInput] params
    # @option params [String] :arn
    #   <p>
    #         The ARN of the custom line item to be deleted.
    #       </p>
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "CustomLineItemArn", # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_custom_line_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "CustomLineItemArn"
    #   }
    # @return [Types::DeleteCustomLineItemOperationOutput]
    def delete_custom_line_item(params = {}, options = {})
      request = build_request(:delete_custom_line_item, params)
      request.send_request(options)
    end

    # <p>Deletes a pricing plan. The pricing plan must not be associated with any billing groups to
    #       delete successfully.</p>
    # @param [Hash, Types::DeletePricingPlanOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan that you're deleting. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PricingPlanArn", # required
    #   }
    #   options = {}
    #   response = client.delete_pricing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingPlanArn"
    #   }
    # @return [Types::DeletePricingPlanOperationOutput]
    def delete_pricing_plan(params = {}, options = {})
      request = build_request(:delete_pricing_plan, params)
      request.send_request(options)
    end

    # <p> Deletes the pricing rule that's identified by the input Amazon Resource Name (ARN). </p>
    # @param [Hash, Types::DeletePricingRuleOperationInput] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule that you are deleting. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PricingRuleArn", # required
    #   }
    #   options = {}
    #   response = client.delete_pricing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingRuleArn"
    #   }
    # @return [Types::DeletePricingRuleOperationOutput]
    def delete_pricing_rule(params = {}, options = {})
      request = build_request(:delete_pricing_rule, params)
      request.send_request(options)
    end

    # <p>Removes the specified list of account IDs from the given billing group. </p>
    # @param [Hash, Types::DisassociateAccountsOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs will
    #         disassociate from. </p>
    # @option params [Array<String>] :account_ids
    #   <p>The array of account IDs to disassociate.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingGroupArn", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingGroupArn"
    #   }
    # @return [Types::DisassociateAccountsOperationOutput]
    def disassociate_accounts(params = {}, options = {})
      request = build_request(:disassociate_accounts, params)
      request.send_request(options)
    end

    # <p>
    #       Disassociates a list of pricing rules from a pricing plan.
    #     </p>
    # @param [Hash, Types::DisassociatePricingRulesOperationInput] params
    # @option params [String] :arn
    #   <p> The pricing plan Amazon Resource Name (ARN) to disassociate pricing rules from. </p>
    # @option params [Array<String>] :pricing_rule_arns
    #   <p> A list containing the Amazon Resource Name (ARN) of the pricing rules that will be
    #         disassociated. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PricingPlanArn", # required
    #     pricing_rule_arns: ["PricingRuleArn"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_pricing_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingPlanArn"
    #   }
    # @return [Types::DisassociatePricingRulesOperationOutput]
    def disassociate_pricing_rules(params = {}, options = {})
      request = build_request(:disassociate_pricing_rules, params)
      request.send_request(options)
    end

    # <p>Retrieves the margin summary report, which includes the Amazon Web Services cost and charged 
    #       amount (pro forma cost) by Amazon Web Service for a specific billing group.</p>
    # @param [Hash, Types::GetBillingGroupCostReportInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Number (ARN) that uniquely identifies the billing group.</p>
    # @option params [Types::BillingPeriodRange] :billing_period_range
    #   <p>A time range for which the margin summary is effective. You can specify up to 12 months.</p>
    # @option params [Array<String>] :group_by
    #   <p>A list of strings that specify the attributes that are used to break down costs in the
    #         margin summary reports for the billing group. For example, you can view your costs by the
    #         Amazon Web Service name or the billing period.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of margin summary reports to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used on subsequent calls to get reports.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingGroupArn", # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod", # required
    #     },
    #     group_by: ["GroupByAttributeName"],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_billing_group_cost_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_group_cost_report_results: [
    #       {
    #         arn: "BillingGroupArn",
    #         aws_cost: "AWSCost",
    #         proforma_cost: "ProformaCost",
    #         margin: "Margin",
    #         margin_percentage: "MarginPercentage",
    #         currency: "Currency",
    #         attributes: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetBillingGroupCostReportOutput]
    def get_billing_group_cost_report(params = {}, options = {})
      request = build_request(:get_billing_group_cost_report, params)
      request.send_request(options)
    end

    # <p> This is a paginated call to list linked accounts that are linked to the payer account for
    #       the specified time period. If no information is provided, the current billing period is used.
    #       The response will optionally include the billing group that's associated with the linked
    #       account.</p>
    # @param [Hash, Types::ListAccountAssociationsOperationInput] params
    # @option params [String] :billing_period
    #   <p>
    #         The preferred billing period to get account associations.
    #       </p>
    # @option params [Types::ListAccountAssociationsFilter] :filters
    #   <p>The filter on the account ID of the linked account, or any of the following:</p>
    #            <p>
    #               <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>
    #            <p>
    #               <code>UNMONITORED</code>: linked accounts that aren't associated to billing groups.</p>
    #            <p>
    #               <code>Billing Group Arn</code>: linked accounts that are associated to the provided
    #         billing group Arn. </p>
    # @option params [String] :next_token
    #   <p>
    #         The pagination token that's used on subsequent calls to retrieve accounts.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     filters: {
    #       association: "Association",
    #       account_id: "AccountId",
    #       account_ids: ["AccountId"]
    #     },
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_account_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     linked_accounts: [
    #       {
    #         account_id: "AccountId",
    #         billing_group_arn: "BillingGroupArn",
    #         account_name: "AccountName",
    #         account_email: "AccountEmail"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccountAssociationsOperationOutput]
    def list_account_associations(params = {}, options = {})
      request = build_request(:list_account_associations, params)
      request.send_request(options)
    end

    # <p>A paginated call to retrieve a summary report of actual Amazon Web Services charges and the calculated
    #       Amazon Web Services charges based on the associated pricing plan of a billing group.</p>
    # @param [Hash, Types::ListBillingGroupCostReportsOperationInput] params
    # @option params [String] :billing_period
    #   <p>The preferred billing period for your report.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of reports to retrieve.
    #       </p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used on subsequent calls to get reports.
    #       </p>
    # @option params [Types::ListBillingGroupCostReportsFilter] :filters
    #   <p>A <code>ListBillingGroupCostReportsFilter</code> to specify billing groups to retrieve reports from.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       billing_group_arns: ["BillingGroupArn"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_billing_group_cost_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_group_cost_reports: [
    #       {
    #         arn: "BillingGroupArn",
    #         aws_cost: "AWSCost",
    #         proforma_cost: "ProformaCost",
    #         margin: "Margin",
    #         margin_percentage: "MarginPercentage",
    #         currency: "Currency"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListBillingGroupCostReportsOperationOutput]
    def list_billing_group_cost_reports(params = {}, options = {})
      request = build_request(:list_billing_group_cost_reports, params)
      request.send_request(options)
    end

    # <p>A paginated call to retrieve a list of billing groups for the given billing period. If you don't provide a billing group, the current billing period is used.</p>
    # @param [Hash, Types::ListBillingGroupsOperationInput] params
    # @option params [String] :billing_period
    #   <p>The preferred billing period to get billing groups.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of billing groups to retrieve.
    #       </p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used on subsequent calls to get billing groups.
    #       </p>
    # @option params [Types::ListBillingGroupsFilter] :filters
    #   <p>A <code>ListBillingGroupsFilter</code> that specifies the billing group and pricing plan to retrieve billing group information.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       arns: ["BillingGroupArn"],
    #       pricing_plan: "PricingPlanFullArn",
    #       statuses: ["BillingGroupStatus"],
    #       auto_associate: false
    #     }
    #   }
    #   options = {}
    #   response = client.list_billing_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_groups: [
    #       {
    #         name: "BillingGroupName",
    #         arn: "BillingGroupArn",
    #         description: "BillingGroupDescription",
    #         primary_account_id: "AccountId",
    #         computation_preference: {
    #           pricing_plan_arn: "PricingPlanFullArn", # required
    #         },
    #         size: 1,
    #         creation_time: 1,
    #         last_modified_time: 1,
    #         status: "BillingGroupStatus",
    #         status_reason: "BillingGroupStatusReason",
    #         account_grouping: {
    #           auto_associate: false
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListBillingGroupsOperationOutput]
    def list_billing_groups(params = {}, options = {})
      request = build_request(:list_billing_groups, params)
      request.send_request(options)
    end

    # <p>A paginated call to get a list of all custom line item versions.</p>
    # @param [Hash, Types::ListCustomLineItemVersionsOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the custom line item.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom line item versions to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used on subsequent calls to retrieve custom line item versions.</p>
    # @option params [Types::ListCustomLineItemVersionsFilter] :filters
    #   <p>A <code>ListCustomLineItemVersionsFilter</code> that specifies the billing period range in which the custom line item versions are applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "CustomLineItemArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       billing_period_range: {
    #         start_billing_period: "BillingPeriod",
    #         end_billing_period: "BillingPeriod"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_custom_line_item_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_line_item_versions: [
    #       {
    #         name: "CustomLineItemName",
    #         charge_details: {
    #           flat: {
    #             charge_value: 1.0, # required
    #           },
    #           percentage: {
    #             percentage_value: 1.0, # required
    #           },
    #           type: "CustomLineItemType", # required
    #           line_item_filters: [
    #             {
    #               attribute: "LineItemFilterAttributeName", # required
    #               match_option: "MatchOption", # required
    #               values: ["LineItemFilterValue"], # required
    #             }
    #           ]
    #         },
    #         currency_code: "CurrencyCode",
    #         description: "CustomLineItemDescription",
    #         product_code: "CustomLineItemProductCode",
    #         billing_group_arn: "BillingGroupArn",
    #         creation_time: 1,
    #         last_modified_time: 1,
    #         association_size: 1,
    #         start_billing_period: "BillingPeriod",
    #         end_billing_period: "BillingPeriod",
    #         arn: "CustomLineItemArn",
    #         start_time: 1,
    #         account_id: "AccountId"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListCustomLineItemVersionsOperationOutput]
    def list_custom_line_item_versions(params = {}, options = {})
      request = build_request(:list_custom_line_item_versions, params)
      request.send_request(options)
    end

    # <p>
    #       A paginated call to get a list of all custom line items (FFLIs) for the given billing period. If you don't provide a billing period, the current billing period is used.
    #     </p>
    # @param [Hash, Types::ListCustomLineItemsOperationInput] params
    # @option params [String] :billing_period
    #   <p>
    #         The preferred billing period to get custom line items (FFLIs).
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of billing groups to retrieve.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The pagination token that's used on subsequent calls to get custom line items (FFLIs).
    #       </p>
    # @option params [Types::ListCustomLineItemsFilter] :filters
    #   <p>A <code>ListCustomLineItemsFilter</code> that specifies the custom line item names
    #         and/or billing group Amazon Resource Names (ARNs) to retrieve FFLI information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       names: ["CustomLineItemName"],
    #       billing_groups: ["BillingGroupArn"],
    #       arns: ["CustomLineItemArn"],
    #       account_ids: ["AccountId"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_custom_line_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_line_items: [
    #       {
    #         arn: "CustomLineItemArn",
    #         name: "CustomLineItemName",
    #         charge_details: {
    #           flat: {
    #             charge_value: 1.0, # required
    #           },
    #           percentage: {
    #             percentage_value: 1.0, # required
    #           },
    #           type: "CustomLineItemType", # required
    #           line_item_filters: [
    #             {
    #               attribute: "LineItemFilterAttributeName", # required
    #               match_option: "MatchOption", # required
    #               values: ["LineItemFilterValue"], # required
    #             }
    #           ]
    #         },
    #         currency_code: "CurrencyCode",
    #         description: "CustomLineItemDescription",
    #         product_code: "CustomLineItemProductCode",
    #         billing_group_arn: "BillingGroupArn",
    #         creation_time: 1,
    #         last_modified_time: 1,
    #         association_size: 1,
    #         account_id: "AccountId"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListCustomLineItemsOperationOutput]
    def list_custom_line_items(params = {}, options = {})
      request = build_request(:list_custom_line_items, params)
      request.send_request(options)
    end

    # <p>A paginated call to get pricing plans for the given billing period. If you don't provide a billing period, the current billing period is used.
    #     </p>
    # @param [Hash, Types::ListPricingPlansOperationInput] params
    # @option params [String] :billing_period
    #   <p>The preferred billing period to get pricing plan.
    #       </p>
    # @option params [Types::ListPricingPlansFilter] :filters
    #   <p>A <code>ListPricingPlansFilter</code> that specifies the Amazon Resource Name (ARNs)
    #         of pricing plans to retrieve pricing plans information.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of pricing plans to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used on subsequent call to get pricing plans.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     filters: {
    #       arns: ["PricingPlanArn"]
    #     },
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_pricing_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_period: "BillingPeriod",
    #     pricing_plans: [
    #       {
    #         name: "PricingPlanName",
    #         arn: "PricingPlanArn",
    #         description: "PricingPlanDescription",
    #         size: 1,
    #         creation_time: 1,
    #         last_modified_time: 1
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPricingPlansOperationOutput]
    def list_pricing_plans(params = {}, options = {})
      request = build_request(:list_pricing_plans, params)
      request.send_request(options)
    end

    # <p>
    #       A list of the pricing plans that are associated with a pricing rule.
    #     </p>
    # @param [Hash, Types::ListPricingPlansAssociatedWithPricingRuleOperationInput] params
    # @option params [String] :billing_period
    #   <p>
    #         The pricing plan billing period for which associations will be listed.
    #       </p>
    # @option params [String] :pricing_rule_arn
    #   <p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The optional maximum number of pricing rule associations to retrieve. 
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The optional pagination token returned by a previous call.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     pricing_rule_arn: "PricingRuleArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_pricing_plans_associated_with_pricing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_period: "BillingPeriod",
    #     pricing_rule_arn: "PricingRuleArn",
    #     pricing_plan_arns: ["PricingPlanArn"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPricingPlansAssociatedWithPricingRuleOperationOutput]
    def list_pricing_plans_associated_with_pricing_rule(params = {}, options = {})
      request = build_request(:list_pricing_plans_associated_with_pricing_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Describes a pricing rule that can be associated to a pricing plan, or set of pricing plans.
    #     </p>
    # @param [Hash, Types::ListPricingRulesOperationInput] params
    # @option params [String] :billing_period
    #   <p>
    #         The preferred billing period to get the pricing plan.
    #       </p>
    # @option params [Types::ListPricingRulesFilter] :filters
    #   <p> A <code>DescribePricingRuleFilter</code> that specifies the Amazon Resource Name (ARNs)
    #         of pricing rules to retrieve pricing rules information. </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of pricing rules to retrieve.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The pagination token that's used on subsequent call to get pricing rules.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     filters: {
    #       arns: ["PricingRuleArn"]
    #     },
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_pricing_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_period: "BillingPeriod",
    #     pricing_rules: [
    #       {
    #         name: "PricingRuleName",
    #         arn: "PricingRuleArn",
    #         description: "PricingRuleDescription",
    #         scope: "PricingRuleScope",
    #         type: "PricingRuleType",
    #         modifier_percentage: 1.0,
    #         service: "Service",
    #         associated_pricing_plan_count: 1,
    #         creation_time: 1,
    #         last_modified_time: 1,
    #         billing_entity: "BillingEntity",
    #         tiering: {
    #           free_tier: { # required
    #             activated: false, # required
    #           }
    #         },
    #         usage_type: "UsageType",
    #         operation: "Operation"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPricingRulesOperationOutput]
    def list_pricing_rules(params = {}, options = {})
      request = build_request(:list_pricing_rules, params)
      request.send_request(options)
    end

    # <p>
    #       Lists the pricing rules that are associated with a pricing plan.
    #     </p>
    # @param [Hash, Types::ListPricingRulesAssociatedToPricingPlanOperationInput] params
    # @option params [String] :billing_period
    #   <p>
    #         The billing period for which the pricing rule associations are to be listed.
    #       </p>
    # @option params [String] :pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan for which associations are to be
    #         listed.</p>
    # @option params [Integer] :max_results
    #   <p>The optional maximum number of pricing rule associations to retrieve.</p>
    # @option params [String] :next_token
    #   <p>
    #         The optional pagination token returned by a previous call.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     pricing_plan_arn: "PricingPlanArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_pricing_rules_associated_to_pricing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_period: "BillingPeriod",
    #     pricing_plan_arn: "PricingPlanArn",
    #     pricing_rule_arns: ["PricingRuleArn"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPricingRulesAssociatedToPricingPlanOperationOutput]
    def list_pricing_rules_associated_to_pricing_plan(params = {}, options = {})
      request = build_request(:list_pricing_rules_associated_to_pricing_plan, params)
      request.send_request(options)
    end

    # <p>
    #       List the resources that are associated to a custom line item.
    #     </p>
    # @param [Hash, Types::ListResourcesAssociatedToCustomLineItemOperationInput] params
    # @option params [String] :billing_period
    #   <p>
    #         The billing period for which the resource associations will be listed.
    #       </p>
    # @option params [String] :arn
    #   <p>
    #         The ARN of the custom line item for which the resource associations will be listed.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         (Optional) The maximum number of resource associations to be retrieved.
    #       </p>
    # @option params [String] :next_token
    #   <p> (Optional) The pagination token that's returned by a previous request. </p>
    # @option params [Types::ListResourcesAssociatedToCustomLineItemFilter] :filters
    #   <p>
    #         (Optional) A <code>ListResourcesAssociatedToCustomLineItemFilter</code> that can specify the types of resources that should be retrieved. 
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_period: "BillingPeriod",
    #     arn: "CustomLineItemArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       relationship: "CustomLineItemRelationship"
    #     }
    #   }
    #   options = {}
    #   response = client.list_resources_associated_to_custom_line_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "CustomLineItemArn",
    #     associated_resources: [
    #       {
    #         arn: "CustomLineItemAssociationElement",
    #         relationship: "CustomLineItemRelationship",
    #         end_billing_period: "BillingPeriod"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListResourcesAssociatedToCustomLineItemOperationOutput]
    def list_resources_associated_to_custom_line_item(params = {}, options = {})
      request = build_request(:list_resources_associated_to_custom_line_item, params)
      request.send_request(options)
    end

    # <p>
    #       A list the tags for a resource.
    #     </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) that identifies the resource to list the tags.
    #       </p>
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

    # <p> Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #       If existing tags on a resource are not specified in the request parameters, they are not
    #       changed. </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the resource to which to add tags.
    #       </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The tags to add to the resource as a list of key-value pairs.
    #       </p>
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

    # <p>
    #       Deletes specified tags from a resource.
    #     </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the resource to which to delete tags.
    #       </p>
    # @option params [Array<String>] :tag_keys
    #   <p>
    #         The tags to delete from the resource as a list of key-value pairs.
    #       </p>
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

    # <p>This updates an existing billing group.
    #     </p>
    # @param [Hash, Types::UpdateBillingGroupOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the billing group being updated. </p>
    # @option params [String] :name
    #   <p>The name of the billing group. The names must be unique to each billing group.
    #       </p>
    # @option params [String] :status
    #   <p>The status of the billing group. Only one of the valid values can be used.
    #       </p>
    # @option params [Types::ComputationPreference] :computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    # @option params [String] :description
    #   <p>A description of the billing group. 
    #       </p>
    # @option params [Types::UpdateBillingGroupAccountGrouping] :account_grouping
    #   <p>Specifies if the billing group has automatic account
    #   association (<code>AutoAssociate</code>) enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingGroupArn", # required
    #     name: "BillingGroupName",
    #     status: "BillingGroupStatus",
    #     computation_preference: {
    #       pricing_plan_arn: "PricingPlanFullArn", # required
    #     },
    #     description: "BillingGroupDescription",
    #     account_grouping: {
    #       auto_associate: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingGroupArn",
    #     name: "BillingGroupName",
    #     description: "BillingGroupDescription",
    #     primary_account_id: "AccountId",
    #     pricing_plan_arn: "PricingPlanArn",
    #     size: 1,
    #     last_modified_time: 1,
    #     status: "BillingGroupStatus",
    #     status_reason: "BillingGroupStatusReason",
    #     account_grouping: {
    #       auto_associate: false
    #     }
    #   }
    # @return [Types::UpdateBillingGroupOperationOutput]
    def update_billing_group(params = {}, options = {})
      request = build_request(:update_billing_group, params)
      request.send_request(options)
    end

    # <p>
    #       Update an existing custom line item in the current or previous billing period.
    #     </p>
    # @param [Hash, Types::UpdateCustomLineItemOperationInput] params
    # @option params [String] :arn
    #   <p>
    #         The ARN of the custom line item to be updated.
    #       </p>
    # @option params [String] :name
    #   <p>
    #         The new name for the custom line item.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The new line item description of the custom line item.
    #       </p>
    # @option params [Types::UpdateCustomLineItemChargeDetails] :charge_details
    #   <p>
    #         A <code>ListCustomLineItemChargeDetails</code> containing the new charge details for the custom line item.
    #       </p>
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "CustomLineItemArn", # required
    #     name: "CustomLineItemName",
    #     description: "CustomLineItemDescription",
    #     charge_details: {
    #       flat: {
    #         charge_value: 1.0, # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0, # required
    #       },
    #       line_item_filters: [
    #         {
    #           attribute: "LineItemFilterAttributeName", # required
    #           match_option: "MatchOption", # required
    #           values: ["LineItemFilterValue"], # required
    #         }
    #       ]
    #     },
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod"
    #     }
    #   }
    #   options = {}
    #   response = client.update_custom_line_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "CustomLineItemArn",
    #     billing_group_arn: "BillingGroupFullArn",
    #     name: "CustomLineItemName",
    #     description: "CustomLineItemDescription",
    #     charge_details: {
    #       flat: {
    #         charge_value: 1.0, # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0, # required
    #       },
    #       type: "CustomLineItemType", # required
    #       line_item_filters: [
    #         {
    #           attribute: "LineItemFilterAttributeName", # required
    #           match_option: "MatchOption", # required
    #           values: ["LineItemFilterValue"], # required
    #         }
    #       ]
    #     },
    #     last_modified_time: 1,
    #     association_size: 1
    #   }
    # @return [Types::UpdateCustomLineItemOperationOutput]
    def update_custom_line_item(params = {}, options = {})
      request = build_request(:update_custom_line_item, params)
      request.send_request(options)
    end

    # <p>This updates an existing pricing plan.
    #     </p>
    # @param [Hash, Types::UpdatePricingPlanOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan that you're updating. </p>
    # @option params [String] :name
    #   <p>The name of the pricing plan. The name must be unique to each pricing plan.
    #       </p>
    # @option params [String] :description
    #   <p>The description of the pricing plan. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PricingPlanArn", # required
    #     name: "PricingPlanName",
    #     description: "PricingPlanDescription"
    #   }
    #   options = {}
    #   response = client.update_pricing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingPlanArn",
    #     name: "PricingPlanName",
    #     description: "PricingPlanDescription",
    #     size: 1,
    #     last_modified_time: 1
    #   }
    # @return [Types::UpdatePricingPlanOperationOutput]
    def update_pricing_plan(params = {}, options = {})
      request = build_request(:update_pricing_plan, params)
      request.send_request(options)
    end

    # <p>
    #       Updates an existing pricing rule.
    #     </p>
    # @param [Hash, Types::UpdatePricingRuleOperationInput] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule to update. </p>
    # @option params [String] :name
    #   <p>
    #         The new name of the pricing rule. The name must be unique to each pricing rule.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The new description for the pricing rule.
    #       </p>
    # @option params [String] :type
    #   <p>
    #         The new pricing rule type.
    #       </p>
    # @option params [Float] :modifier_percentage
    #   <p>
    #         The new modifier to show pricing plan rates as a percentage.
    #       </p>
    # @option params [Types::UpdateTieringInput] :tiering
    #   <p>
    #         The set of tiering configurations for the pricing rule.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PricingRuleArn", # required
    #     name: "PricingRuleName",
    #     description: "PricingRuleDescription",
    #     type: "PricingRuleType",
    #     modifier_percentage: 1.0,
    #     tiering: {
    #       free_tier: { # required
    #         activated: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_pricing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PricingRuleArn",
    #     name: "PricingRuleName",
    #     description: "PricingRuleDescription",
    #     scope: "PricingRuleScope",
    #     type: "PricingRuleType",
    #     modifier_percentage: 1.0,
    #     service: "Service",
    #     associated_pricing_plan_count: 1,
    #     last_modified_time: 1,
    #     billing_entity: "BillingEntity",
    #     tiering: {
    #       free_tier: { # required
    #         activated: false, # required
    #       }
    #     },
    #     usage_type: "UsageType",
    #     operation: "Operation"
    #   }
    # @return [Types::UpdatePricingRuleOperationOutput]
    def update_pricing_rule(params = {}, options = {})
      request = build_request(:update_pricing_rule, params)
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
      context[:gem_name] = 'aws-sdk-billingconductor'
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
