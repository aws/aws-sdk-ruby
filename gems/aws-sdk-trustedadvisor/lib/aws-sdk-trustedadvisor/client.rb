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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:trustedadvisor)

module Aws::TrustedAdvisor
  # An API client for Aws::TrustedAdvisor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TrustedAdvisor
    @identifier = :trustedadvisor

    add_plugin(::Aws::TrustedAdvisor::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::TrustedAdvisor::EndpointProvider)
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

    # <p>Update one or more exclusion status for a list of recommendation resources</p>
    # @param [Hash, Types::BatchUpdateRecommendationResourceExclusionRequest] params
    # @option params [Array<Types::RecommendationResourceExclusion>] :recommendation_resource_exclusions
    #   <p>A list of recommendation resource ARNs and exclusion status to update</p>
    # @example Batch updates the exclusion status for a list of recommendation resources
    #   # Example operation for batch_update_recommendation_resource_exclusion
    #   params = {
    #     recommendation_resource_exclusions: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010",
    #         is_excluded: true
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_recommendation_resource_exclusion(params, options)
    #   response.to_h #=>
    #   {
    #     batch_update_recommendation_resource_exclusion_errors: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010",
    #         error_code: "404",
    #         error_message: "Exception that the requested resource has not been found"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_resource_exclusions: [ # required
    #       {
    #         arn: "RecommendationResourceArn", # required
    #         is_excluded: false, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_recommendation_resource_exclusion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_update_recommendation_resource_exclusion_errors: [ # required
    #       {
    #         arn: "RecommendationResourceArn",
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateRecommendationResourceExclusionResponse]
    def batch_update_recommendation_resource_exclusion(params = {}, options = {})
      request = build_request(:batch_update_recommendation_resource_exclusion, params)
      request.send_request(options)
    end

    # <p>Get a specific recommendation within an AWS Organizations organization. This API supports only prioritized
    #             recommendations.
    #         </p>
    # @param [Hash, Types::GetOrganizationRecommendationRequest] params
    # @option params [String] :organization_recommendation_identifier
    #   <p>The Recommendation identifier</p>
    # @example Get an AWS Organization's Recommendation by ARN
    #   # Example operation for get_organization_recommendation
    #   params = {
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5"
    #   }
    #   options = {}
    #   response = client.get_organization_recommendation(params, options)
    #   response.to_h #=>
    #   {
    #     organization_recommendation: {
    #       arn: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #       name: "Lambda Runtime Deprecation Warning",
    #       description: "One or more lambdas are using a deprecated runtime",
    #       aws_services: [
    #         "lambda"
    #       ],
    #       check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5",
    #       id: "9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #       lifecycle_stage: resolved,
    #       pillars: [
    #         security
    #       ],
    #       resources_aggregates: {
    #         error_count: 0,
    #         ok_count: 0,
    #         warning_count: 0
    #       },
    #       source: ta_check,
    #       status: warning,
    #       type: priority
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_organization_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_recommendation: {
    #       id: "String", # required
    #       type: "standard" # One of: ["standard", "priority"], # required
    #       check_arn: "String",
    #       status: "ok" # One of: ["ok", "warning", "error"], # required
    #       lifecycle_stage: "in_progress" # One of: ["in_progress", "pending_response", "dismissed", "resolved"],
    #       pillars: ["cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"]], # required
    #       source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"], # required
    #       aws_services: ["RecommendationAwsService"],
    #       name: "String", # required
    #       resources_aggregates: { # required
    #         ok_count: 1, # required
    #         warning_count: 1, # required
    #         error_count: 1, # required
    #       },
    #       pillar_specific_aggregates: {
    #         cost_optimizing: {
    #           estimated_monthly_savings: 1.0, # required
    #           estimated_percent_monthly_savings: 1.0, # required
    #         }
    #       },
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       arn: "OrganizationRecommendationArn", # required
    #       description: "String", # required
    #       created_by: "String",
    #       updated_on_behalf_of: "String",
    #       updated_on_behalf_of_job_title: "String",
    #       update_reason: "RecommendationUpdateReason",
    #       update_reason_code: "non_critical_account" # One of: ["non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"],
    #       resolved_at: Time.now
    #     }
    #   }
    # @return [Types::GetOrganizationRecommendationResponse]
    def get_organization_recommendation(params = {}, options = {})
      request = build_request(:get_organization_recommendation, params)
      request.send_request(options)
    end

    # <p>Get a specific Recommendation</p>
    # @param [Hash, Types::GetRecommendationRequest] params
    # @option params [String] :recommendation_identifier
    #   <p>The Recommendation identifier</p>
    # @example Get a Recommendation by ARN
    #   # Example operation for get_recommendation
    #   params = {
    #     recommendation_identifier: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578"
    #   }
    #   options = {}
    #   response = client.get_recommendation(params, options)
    #   response.to_h #=>
    #   {
    #     recommendation: {
    #       arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578",
    #       name: "MFA Recommendation",
    #       description: "Enable multi-factor authentication",
    #       aws_services: [
    #         "iam"
    #       ],
    #       check_arn: "arn:aws:trustedadvisor:::check/7DAFEmoDos",
    #       id: "55fa4d2e-bbb7-491a-833b-5773e9589578",
    #       last_updated_at: Time.parse("2023-11-01T15:57:58.673Z"),
    #       pillar_specific_aggregates: {
    #         cost_optimizing: {
    #           estimated_monthly_savings: 0.0,
    #           estimated_percent_monthly_savings: 0.0
    #         }
    #       },
    #       pillars: [
    #         security
    #       ],
    #       resources_aggregates: {
    #         error_count: 1,
    #         ok_count: 0,
    #         warning_count: 0
    #       },
    #       source: ta_check,
    #       status: error,
    #       type: standard
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_identifier: "AccountRecommendationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation: {
    #       id: "String", # required
    #       type: "standard" # One of: ["standard", "priority"], # required
    #       check_arn: "String",
    #       status: "ok" # One of: ["ok", "warning", "error"], # required
    #       lifecycle_stage: "in_progress" # One of: ["in_progress", "pending_response", "dismissed", "resolved"],
    #       pillars: ["cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"]], # required
    #       source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"], # required
    #       aws_services: ["RecommendationAwsService"],
    #       name: "String", # required
    #       resources_aggregates: { # required
    #         ok_count: 1, # required
    #         warning_count: 1, # required
    #         error_count: 1, # required
    #       },
    #       pillar_specific_aggregates: {
    #         cost_optimizing: {
    #           estimated_monthly_savings: 1.0, # required
    #           estimated_percent_monthly_savings: 1.0, # required
    #         }
    #       },
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       arn: "AccountRecommendationArn", # required
    #       description: "String", # required
    #       created_by: "String",
    #       updated_on_behalf_of: "String",
    #       updated_on_behalf_of_job_title: "String",
    #       update_reason: "RecommendationUpdateReason",
    #       update_reason_code: "non_critical_account" # One of: ["non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"],
    #       resolved_at: Time.now
    #     }
    #   }
    # @return [Types::GetRecommendationResponse]
    def get_recommendation(params = {}, options = {})
      request = build_request(:get_recommendation, params)
      request.send_request(options)
    end

    # <p>List a filterable set of Checks</p>
    # @param [Hash, Types::ListChecksRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :pillar
    #   <p>The pillar of the check</p>
    # @option params [String] :aws_service
    #   <p>The aws service associated with the check</p>
    # @option params [String] :source
    #   <p>The source of the check</p>
    # @option params [String] :language
    #   <p>The ISO 639-1 code for the language that you want your checks to appear in.</p>
    # @example List all AWS Trusted Advisor Checks
    #   # Example operation for list_checks
    #   params = {}
    #   options = {}
    #   response = client.list_checks(params, options)
    #   response.to_h #=>
    #   {
    #     check_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor:::check/1iG5NDGVre",
    #         aws_services: [
    #           "EC2"
    #         ],
    #         description: "Checks security groups for rules that allow unrestricted access to a resource. Unrestricted access increases opportunities for malicious activity (hacking, denial-of-service attacks, loss of data).\n<br>\n<br>Note: This check only evaluates security groups that you create and their inbound rules for IPv4 addresses. Security groups created by AWS Directory Services are flagged as red or yellow, but they don’t pose a security risk and can be safely ignored or excluded. For more information, see the <a href=\"https://aws.amazon.com/premiumsupport/faqs/#AWS_Trusted_Advisor\" target=\"_blank\">Trusted Advisor FAQ</a>.\n<br>\n<br>\n<h4 class='headerBodyStyle'>Alert Criteria</h4>\n<br>\nRed: A security group rule has a source IP address with a /0 suffix for ports other than 25, 80, or 443.\n<br>\n<br>\n<h4 class='headerBodyStyle'>Recommended Action</h4>\n<br>\nRestrict access to only those IP addresses that require it. To restrict access to a specific IP address, set the suffix to /32 (for example, 192.0.2.10/32). Be sure to delete overly permissive rules after creating rules that are more restrictive.\n<br>\n<br>\n<h4 class='headerBodyStyle'>Additional Resources</h4>\n<br><a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html\" target=\"_blank\">Amazon EC2 Security Groups</a><br>\n<a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\" target=\"_blank\">Classless Inter-Domain Routing</a> (Wikipedia)",
    #         id: "1iG5NDGVre",
    #         metadata: {
    #           "0" => "Region",
    #           "1" => "Security Group Name",
    #           "2" => "Security Group ID",
    #           "3" => "Protocol",
    #           "4" => "Port",
    #           "5" => "Status",
    #           "6" => "IP Range"
    #         },
    #         name: "Security Groups - Unrestricted Access",
    #         pillars: [
    #           security
    #         ],
    #         source: ta_check
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor:::check/1qazXsw23e",
    #         aws_services: [
    #           "RDS"
    #         ],
    #         description: "Checks your usage of RDS and provides recommendations on purchase of Reserved Instances to help reduce costs incurred from using RDS On-Demand. AWS generates these recommendations by analyzing your On-Demand usage for the past 30 days. We then simulate every combination of reservations in the generated category of usage in order to identify the best number of each type of Reserved Instance to purchase to maximize your savings. This check covers recommendations based on partial upfront payment option with 1-year or 3-year commitment. This check is not available to accounts linked in Consolidated Billing. Recommendations are only available for the Paying Account.<br/><br/>\r\n<h4 class='headerBodyStyle'>Alert Criteria</h4><br/>\nYellow: Optimizing the purchase of RDS Reserved Instances can help reduce costs.<br/><br/>\r\n<h4 class='headerBodyStyle'>Recommended Action</h4><br/>\r\nSee the <a href=\"http://console.aws.amazon.com/billing/home?/costexplorer#/costexplorer\" target=\"_blank\">Cost Explorer</a> page for more detailed recommendations, customization options (e.g. look-back period, payment option, etc.) and to purchase RDS Reserved Instances.\n<br/>\n<br/>\n<h4 class='headerBodyStyle'>Additional Resources</h4><br/>\nInformation on RDS Reserved Instances and how they can save you money can be found <a href=\"http://aws.amazon.com/rds/reserved-instances/\" target=\"_blank\">here</a>.<br>\nFor more information on this recommendation, see <a href=\"http://aws.amazon.com/premiumsupport/technology/trusted-advisor/faqs/#Reserved_Instance_Optimization_Check_Questions\" target=\"_blank\">Reserved Instance Optimization Check Questions</a> in the Trusted Advisor FAQs.<br>\nFor more detailed description of fields, see <a href=\"http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ReservationPurchaseRecommendationDetail.html#awscostmanagement-Type-ReservationPurchaseRecommendationDetail-AverageUtilization\" target=\"_blank\">Cost Explorer documentation</a>",
    #         id: "1qazXsw23e",
    #         metadata: {
    #           "0" => "Region",
    #           "1" => "Family",
    #           "10" => "Upfront Cost of Reserved Instances",
    #           "11" => "Estimated cost of Reserved Instances (monthly)",
    #           "12" => "Estimated On-Demand Cost Post Recommended Reserved Instance Purchase (monthly)",
    #           "13" => "Estimated Break Even (months)",
    #           "14" => "Lookback Period (days)",
    #           "15" => "Term (years)",
    #           "2" => "Instance Type",
    #           "3" => "License Model",
    #           "4" => "Database Edition",
    #           "5" => "Database Engine",
    #           "6" => "Deployment Option",
    #           "7" => "Recommended number of Reserved Instances to purchase",
    #           "8" => "Expected Average Reserved Instance Utilization",
    #           "9" => "Estimated Savings with Recommendation (monthly)"
    #         },
    #         name: "Amazon Relational Database Service (RDS) Reserved Instance Optimization",
    #         pillars: [
    #           cost_optimizing
    #         ],
    #         source: ta_check
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor:::check/1qw23er45t",
    #         aws_services: [
    #           "Redshift"
    #         ],
    #         description: "Checks your usage of Redshift and provides recommendations on purchase of Reserved Nodes to help reduce costs incurred from using Redshift On-Demand. AWS generates these recommendations by analyzing your On-Demand usage for the past 30 days. We then simulate every combination of reservations in the generated category of usage in order to identify the best number of each type of Reserved Nodes to purchase to maximize your savings. This check covers recommendations based on partial upfront payment option with 1-year or 3-year commitment. This check is not available to accounts linked in Consolidated Billing. Recommendations are only available for the Paying Account.<br/><br/>\n<h4 class='headerBodyStyle'>Alert Criteria</h4><br/>Yellow: Optimizing the purchase of Redshift Reserved Nodes can help reduce costs.<br/><br/>\n<h4 class='headerBodyStyle'>Recommended Action</h4><br/>See the <a href=\"https://console.aws.amazon.com/billing/home?/costexplorer#/costexplorer\" target=\"_blank\">Cost Explorer</a> page for more detailed recommendations, customization options (e.g. look-back period, payment option, etc.) and to purchase Redshift Reserved Nodes.<br/><br/>\n<h4 class='headerBodyStyle'>Additional Resources</h4><br/>Information on Redshift Reserved Nodes and how they can save you money can be found <a href=\"http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html\" target=\"_blank\">here</a>.<br>\nFor more information on this recommendation, see <a href=\"http://aws.amazon.com/premiumsupport/technology/trusted-advisor/faqs/#Reserved_Instance_Optimization_Check_Questions\" target=\"_blank\">Reserved Instance Optimization Check Questions</a> in the Trusted Advisor FAQs.<br/>\nFor more detailed description of fields, see <a href=\"http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ReservationPurchaseRecommendationDetail.html#awscostmanagement-Type-ReservationPurchaseRecommendationDetail-AverageUtilization\" target=\"_blank\">Cost Explorer documentation</a>",
    #         id: "1qw23er45t",
    #         metadata: {
    #           "0" => "Region",
    #           "1" => "Family",
    #           "10" => "Lookback Period (days)",
    #           "11" => "Term (years)",
    #           "2" => "Node Type",
    #           "3" => "Recommended number of Reserved Nodes to purchase",
    #           "4" => "Expected Average Reserved Node Utilization",
    #           "5" => "Estimated Savings with Recommendation (monthly)",
    #           "6" => "Upfront Cost of Reserved Nodes",
    #           "7" => "Estimated cost of Reserved Nodes (monthly)",
    #           "8" => "Estimated On-Demand Cost Post Recommended Reserved Nodes Purchase (monthly)",
    #           "9" => "Estimated Break Even (months)"
    #         },
    #         name: "Amazon Redshift Reserved Node Optimization",
    #         pillars: [
    #           cost_optimizing
    #         ],
    #         source: ta_check
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     pillar: "cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"],
    #     aws_service: "RecommendationAwsService",
    #     source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"],
    #     language: "en" # One of: ["en", "ja", "zh", "fr", "de", "ko", "zh_TW", "it", "es", "pt_BR", "id"]
    #   }
    #   options = {}
    #   response = client.list_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     check_summaries: [ # required
    #       {
    #         id: "String", # required
    #         arn: "CheckArn", # required
    #         name: "String", # required
    #         description: "String", # required
    #         pillars: ["cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"]], # required
    #         aws_services: ["RecommendationAwsService"], # required
    #         source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"], # required
    #         metadata: { # required
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListChecksResponse]
    def list_checks(params = {}, options = {})
      request = build_request(:list_checks, params)
      request.send_request(options)
    end

    # <p>Lists the accounts that own the resources for an organization aggregate recommendation. This API only
    #             supports prioritized recommendations.
    #         </p>
    # @param [Hash, Types::ListOrganizationRecommendationAccountsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :organization_recommendation_identifier
    #   <p>The Recommendation identifier</p>
    # @option params [String] :affected_account_id
    #   <p>An account affected by this organization recommendation</p>
    # @example List all Accounts for an AWS Organization's Recommendation
    #   # Example operation for list_organization_recommendation_accounts
    #   params = {
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5"
    #   }
    #   options = {}
    #   response = client.list_organization_recommendation_accounts(params, options)
    #   response.to_h #=>
    #   {
    #     account_recommendation_lifecycle_summaries: [
    #       {
    #         account_id: "000000000000",
    #         account_recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #         lifecycle_stage: resolved,
    #         update_reason: "Resolved issue",
    #         update_reason_code: valid_business_case,
    #         last_updated_at: Time.parse("2023-01-17T18:25:44.552Z")
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #     affected_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_organization_recommendation_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     account_recommendation_lifecycle_summaries: [ # required
    #       {
    #         account_id: "AccountId",
    #         account_recommendation_arn: "AccountRecommendationArn",
    #         lifecycle_stage: "in_progress" # One of: ["in_progress", "pending_response", "dismissed", "resolved"],
    #         updated_on_behalf_of: "String",
    #         updated_on_behalf_of_job_title: "String",
    #         update_reason: "RecommendationUpdateReason",
    #         update_reason_code: "non_critical_account" # One of: ["non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"],
    #         last_updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListOrganizationRecommendationAccountsResponse]
    def list_organization_recommendation_accounts(params = {}, options = {})
      request = build_request(:list_organization_recommendation_accounts, params)
      request.send_request(options)
    end

    # <p>List Resources of a Recommendation within an Organization. This API only supports prioritized
    #             recommendations.
    #         </p>
    # @param [Hash, Types::ListOrganizationRecommendationResourcesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :status
    #   <p>The status of the resource</p>
    # @option params [String] :exclusion_status
    #   <p>The exclusion status of the resource</p>
    # @option params [String] :region_code
    #   <p>The AWS Region code of the resource</p>
    # @option params [String] :organization_recommendation_identifier
    #   <p>The AWS Organization organization's Recommendation identifier</p>
    # @option params [String] :affected_account_id
    #   <p>An account affected by this organization recommendation</p>
    # @example List all Resources for an AWS Organization's Recommendation
    #   # Example operation for list_organization_recommendation_resources
    #   params = {
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0"
    #   }
    #   options = {}
    #   response = client.list_organization_recommendation_resources(params, options)
    #   response.to_h #=>
    #   {
    #     organization_recommendation_resource_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/5a694939-2e54-45a2-ae72-730598fa89d0/bb38affc0ce0681d9a6cd13f30238ba03a8f63dfe7a379dc403c619119d86af",
    #         aws_resource_id: "database-1-instance-1",
    #         id: "bb38affc0ce0681d9a6cd13f302383ba03a8f63dfe7a379dc403c619119d86af",
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"),
    #         metadata: {
    #           "0" => "14",
    #           "1" => "208.79999999999998",
    #           "2" => "database-1-instance-1",
    #           "3" => "db.r5.large",
    #           "4" => "false",
    #           "5" => "us-west-2",
    #           "6" => "arn:aws:rds:us-west-2:000000000000:db:database-1-instance-1",
    #           "7" => "1"
    #         },
    #         recommendation_arn: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0",
    #         region_code: "us-west-2",
    #         status: warning,
    #         exclusion_status: excluded
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/5a694939-2e54-45a2-ae72-730598fa89d0/51fded4d7a3278818df9cfe344ff5762cec46c095a6763d1ba1ba53bd0e1b0e6",
    #         aws_resource_id: "database-1",
    #         id: "51fded4d7a3278818df9cfe344ff5762cec46c095a6763d1ba1ba53bd0e1b0e6",
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"),
    #         metadata: {
    #           "0" => "14",
    #           "1" => "31.679999999999996",
    #           "2" => "database-1",
    #           "3" => "db.t3.small",
    #           "4" => "false",
    #           "5" => "us-west-2",
    #           "6" => "arn:aws:rds:us-west-2:000000000000:db:database-1",
    #           "7" => "20"
    #         },
    #         recommendation_arn: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0",
    #         region_code: "us-west-2",
    #         status: warning,
    #         exclusion_status: excluded
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/5a694939-2e54-45a2-ae72-730598fa89d0/f4d01bd20f4cd5372062aafc8786c489e48f0ead7cdab121463bf9f89e40a36b",
    #         aws_resource_id: "database-2-instance-1-us-west-2a",
    #         id: "f4d01bd20f4cd5372062aafc8786c489e48f0ead7cdab121463bf9f89e40a36b",
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"),
    #         metadata: {
    #           "0" => "14",
    #           "1" => "187.20000000000002",
    #           "2" => "database-2-instance-1-us-west-2a",
    #           "3" => "db.r6g.large",
    #           "4" => "true",
    #           "5" => "us-west-2",
    #           "6" => "arn:aws:rds:us-west-2:000000000000:db:database-2-instance-1-us-west-2a",
    #           "7" => "1"
    #         },
    #         recommendation_arn: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0",
    #         region_code: "us-west-2",
    #         status: warning,
    #         exclusion_status: included
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     status: "ok" # One of: ["ok", "warning", "error"],
    #     exclusion_status: "excluded" # One of: ["excluded", "included"],
    #     region_code: "String",
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #     affected_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_organization_recommendation_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     organization_recommendation_resource_summaries: [ # required
    #       {
    #         id: "String", # required
    #         arn: "RecommendationResourceArn", # required
    #         aws_resource_id: "String", # required
    #         region_code: "RecommendationRegionCode", # required
    #         status: "ok" # One of: ["ok", "warning", "error"], # required
    #         metadata: { # required
    #           "String" => "String"
    #         },
    #         last_updated_at: Time.now, # required
    #         exclusion_status: "excluded" # One of: ["excluded", "included"],
    #         account_id: "AccountId",
    #         recommendation_arn: "OrganizationRecommendationArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListOrganizationRecommendationResourcesResponse]
    def list_organization_recommendation_resources(params = {}, options = {})
      request = build_request(:list_organization_recommendation_resources, params)
      request.send_request(options)
    end

    # <p>List a filterable set of Recommendations within an Organization. This API only supports prioritized
    #             recommendations.
    #         </p>
    # @param [Hash, Types::ListOrganizationRecommendationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :type
    #   <p>The type of the Recommendation</p>
    # @option params [String] :status
    #   <p>The status of the Recommendation</p>
    # @option params [String] :pillar
    #   <p>The pillar of the Recommendation</p>
    # @option params [String] :aws_service
    #   <p>The aws service associated with the Recommendation</p>
    # @option params [String] :source
    #   <p>The source of the Recommendation</p>
    # @option params [String] :check_identifier
    #   <p>The check identifier of the Recommendation</p>
    # @option params [Time] :after_last_updated_at
    #   <p>After the last update of the Recommendation</p>
    # @option params [Time] :before_last_updated_at
    #   <p>Before the last update of the Recommendation</p>
    # @example List all of an AWS Organization's Recommendations
    #   # Example operation for list_organization_recommendations
    #   params = {}
    #   options = {}
    #   response = client.list_organization_recommendations(params, options)
    #   response.to_h #=>
    #   {
    #     organization_recommendation_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #         name: "Lambda Runtime Deprecation Warning",
    #         aws_services: [
    #           "lambda"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5",
    #         id: "9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #         lifecycle_stage: resolved,
    #         pillars: [
    #           security
    #         ],
    #         resources_aggregates: {
    #           error_count: 0,
    #           ok_count: 0,
    #           warning_count: 0
    #         },
    #         source: ta_check,
    #         status: warning,
    #         type: priority
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6",
    #         name: "Lambda Runtime Deprecation Warning",
    #         aws_services: [
    #           "lambda"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5",
    #         id: "4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6",
    #         lifecycle_stage: resolved,
    #         pillars: [
    #           security
    #         ],
    #         resources_aggregates: {
    #           error_count: 0,
    #           ok_count: 0,
    #           warning_count: 0
    #         },
    #         source: ta_check,
    #         status: warning,
    #         type: priority
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Filter and return a max of one AWS Organization Recommendation that is a part of the "security" pillar
    #   # Example operation for list_organization_recommendations
    #   params = {
    #     pillar: security,
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.list_organization_recommendations(params, options)
    #   response.to_h #=>
    #   {
    #     organization_recommendation_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #         name: "Lambda Runtime Deprecation Warning",
    #         aws_services: [
    #           "lambda"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5",
    #         id: "9534ec9b-bf3a-44e8-8213-2ed68b39d9d5",
    #         lifecycle_stage: resolved,
    #         pillars: [
    #           security
    #         ],
    #         resources_aggregates: {
    #           error_count: 0,
    #           ok_count: 0,
    #           warning_count: 0
    #         },
    #         source: ta_check,
    #         status: warning,
    #         type: priority
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Use the "nextToken" returned from a previous request to fetch the next page of filtered AWS Organization Recommendations that are a part of the "security" pillar
    #   # Example operation for list_organization_recommendations
    #   params = {
    #     next_token: "<REDACTED>",
    #     pillar: security,
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.list_organization_recommendations(params, options)
    #   response.to_h #=>
    #   {
    #     organization_recommendation_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6",
    #         name: "Lambda Runtime Deprecation Warning",
    #         aws_services: [
    #           "lambda"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5",
    #         id: "4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6",
    #         lifecycle_stage: resolved,
    #         pillars: [
    #           security
    #         ],
    #         resources_aggregates: {
    #           error_count: 0,
    #           ok_count: 0,
    #           warning_count: 0
    #         },
    #         source: ta_check,
    #         status: warning,
    #         type: priority
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     type: "standard" # One of: ["standard", "priority"],
    #     status: "ok" # One of: ["ok", "warning", "error"],
    #     pillar: "cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"],
    #     aws_service: "RecommendationAwsService",
    #     source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"],
    #     check_identifier: "CheckIdentifier",
    #     after_last_updated_at: Time.now,
    #     before_last_updated_at: Time.now
    #   }
    #   options = {}
    #   response = client.list_organization_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     organization_recommendation_summaries: [ # required
    #       {
    #         id: "String", # required
    #         type: "standard" # One of: ["standard", "priority"], # required
    #         check_arn: "String",
    #         status: "ok" # One of: ["ok", "warning", "error"], # required
    #         lifecycle_stage: "in_progress" # One of: ["in_progress", "pending_response", "dismissed", "resolved"],
    #         pillars: ["cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"]], # required
    #         source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"], # required
    #         aws_services: ["RecommendationAwsService"],
    #         name: "String", # required
    #         resources_aggregates: { # required
    #           ok_count: 1, # required
    #           warning_count: 1, # required
    #           error_count: 1, # required
    #         },
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 1.0, # required
    #             estimated_percent_monthly_savings: 1.0, # required
    #           }
    #         },
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         arn: "OrganizationRecommendationArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListOrganizationRecommendationsResponse]
    def list_organization_recommendations(params = {}, options = {})
      request = build_request(:list_organization_recommendations, params)
      request.send_request(options)
    end

    # <p>List Resources of a Recommendation</p>
    # @param [Hash, Types::ListRecommendationResourcesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :status
    #   <p>The status of the resource</p>
    # @option params [String] :exclusion_status
    #   <p>The exclusion status of the resource</p>
    # @option params [String] :region_code
    #   <p>The AWS Region code of the resource</p>
    # @option params [String] :recommendation_identifier
    #   <p>The Recommendation identifier</p>
    # @example List all Resources for a Recommendation
    #   # Example operation for list_recommendation_resources
    #   params = {
    #     recommendation_identifier: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578"
    #   }
    #   options = {}
    #   response = client.list_recommendation_resources(params, options)
    #   response.to_h #=>
    #   {
    #     recommendation_resource_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010",
    #         id: "18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010",
    #         aws_resource_id: "webcms-dev-01",
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"),
    #         metadata: {
    #           "0" => "14",
    #           "1" => "123.12000000000002",
    #           "2" => "webcms-dev-01",
    #           "3" => "db.m6i.large",
    #           "4" => "false",
    #           "5" => "us-east-1",
    #           "6" => "arn:aws:rds:us-east-1:000000000000:db:webcms-dev-01",
    #           "7" => "20"
    #         },
    #         recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         region_code: "us-east-1",
    #         status: warning,
    #         exclusion_status: excluded
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/e6367ff500ac90db8e4adeb4892e39ee9c36bbf812dcbce4b9e4fefcec9eb63e",
    #         id: "e6367ff500ac90db8e4adeb4892e39ee9c36bbf812dcbce4b9e4fefcec9eb63e",
    #         aws_resource_id: "aws-dev-db-stack-instance-1",
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"),
    #         metadata: {
    #           "0" => "14",
    #           "1" => "29.52",
    #           "2" => "aws-dev-db-stack-instance-1",
    #           "3" => "db.t2.small",
    #           "4" => "false",
    #           "5" => "us-east-1",
    #           "6" => "arn:aws:rds:us-east-1:000000000000:db:aws-dev-db-stack-instance-1",
    #           "7" => "1"
    #         },
    #         recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         region_code: "us-east-1",
    #         status: warning,
    #         exclusion_status: included
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/31aa78ba050a5015d2d38cca7f5f1ce88f70857c4e1c3ad03f8f9fd95dad7459",
    #         id: "31aa78ba050a5015d2d38cca7f5f1ce88f70857c4e1c3ad03f8f9fd95dad7459",
    #         aws_resource_id: "aws-awesome-apps-stack-db",
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"),
    #         metadata: {
    #           "0" => "14",
    #           "1" => "114.48000000000002",
    #           "2" => "aws-awesome-apps-stack-db",
    #           "3" => "db.m6g.large",
    #           "4" => "false",
    #           "5" => "us-east-1",
    #           "6" => "arn:aws:rds:us-east-1:000000000000:db:aws-awesome-apps-stack-db",
    #           "7" => "100"
    #         },
    #         recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         region_code: "us-east-1",
    #         status: warning,
    #         exclusion_status: excluded
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     status: "ok" # One of: ["ok", "warning", "error"],
    #     exclusion_status: "excluded" # One of: ["excluded", "included"],
    #     region_code: "String",
    #     recommendation_identifier: "AccountRecommendationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_recommendation_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     recommendation_resource_summaries: [ # required
    #       {
    #         id: "String", # required
    #         arn: "RecommendationResourceArn", # required
    #         aws_resource_id: "String", # required
    #         region_code: "RecommendationRegionCode", # required
    #         status: "ok" # One of: ["ok", "warning", "error"], # required
    #         metadata: { # required
    #           "String" => "String"
    #         },
    #         last_updated_at: Time.now, # required
    #         exclusion_status: "excluded" # One of: ["excluded", "included"],
    #         recommendation_arn: "AccountRecommendationArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRecommendationResourcesResponse]
    def list_recommendation_resources(params = {}, options = {})
      request = build_request(:list_recommendation_resources, params)
      request.send_request(options)
    end

    # <p>List a filterable set of Recommendations</p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request
    #               to retrieve the next set of results.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :type
    #   <p>The type of the Recommendation</p>
    # @option params [String] :status
    #   <p>The status of the Recommendation</p>
    # @option params [String] :pillar
    #   <p>The pillar of the Recommendation</p>
    # @option params [String] :aws_service
    #   <p>The aws service associated with the Recommendation</p>
    # @option params [String] :source
    #   <p>The source of the Recommendation</p>
    # @option params [String] :check_identifier
    #   <p>The check identifier of the Recommendation</p>
    # @option params [Time] :after_last_updated_at
    #   <p>After the last update of the Recommendation</p>
    # @option params [Time] :before_last_updated_at
    #   <p>Before the last update of the Recommendation</p>
    # @example List all Recommendations
    #   # Example operation for list_recommendations
    #   params = {}
    #   options = {}
    #   response = client.list_recommendations(params, options)
    #   response.to_h #=>
    #   {
    #     recommendation_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         name: "MFA Recommendation",
    #         aws_services: [
    #           "iam"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/7DAFEmoDos",
    #         id: "55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         last_updated_at: Time.parse("2023-11-01T15:57:58.673Z"),
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0,
    #             estimated_percent_monthly_savings: 0.0
    #           }
    #         },
    #         pillars: [
    #           security
    #         ],
    #         resources_aggregates: {
    #           error_count: 1,
    #           ok_count: 0,
    #           warning_count: 0
    #         },
    #         source: ta_check,
    #         status: error,
    #         type: standard
    #       },
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/8b602b6f-452d-4cb2-8a9e-c7650955d9cd",
    #         name: "RDS clusters quota warning",
    #         aws_services: [
    #           "rds"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/gjqMBn6pjz",
    #         id: "8b602b6f-452d-4cb2-8a9e-c7650955d9cd",
    #         last_updated_at: Time.parse("2023-11-01T15:58:17.397Z"),
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0,
    #             estimated_percent_monthly_savings: 0.0
    #           }
    #         },
    #         pillars: [
    #           service_limits
    #         ],
    #         resources_aggregates: {
    #           error_count: 0,
    #           ok_count: 3,
    #           warning_count: 6
    #         },
    #         source: ta_check,
    #         status: warning,
    #         type: standard
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Filter and return a max of one Recommendation that is a part of AWS IAM
    #   # Example operation for list_recommendations
    #   params = {
    #     aws_service: "iam",
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    #   response.to_h #=>
    #   {
    #     recommendation_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         name: "MFA Recommendation",
    #         aws_services: [
    #           "iam"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/7DAFEmoDos",
    #         id: "55fa4d2e-bbb7-491a-833b-5773e9589578",
    #         last_updated_at: Time.parse("2023-11-01T15:57:58.673Z"),
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0,
    #             estimated_percent_monthly_savings: 0.0
    #           }
    #         },
    #         pillars: [
    #           security
    #         ],
    #         resources_aggregates: {
    #           error_count: 1,
    #           ok_count: 0,
    #           warning_count: 0
    #         },
    #         source: ta_check,
    #         status: error,
    #         type: standard
    #       }
    #     ],
    #     next_token: "<REDACTED>"
    #   }
    # @example Use the "nextToken" returned from a previous request to fetch the next page of filtered Recommendations
    #   # Example operation for list_recommendations
    #   params = {
    #     next_token: "<REDACTED>",
    #     aws_service: "rds",
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    #   response.to_h #=>
    #   {
    #     recommendation_summaries: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/8b602b6f-452d-4cb2-8a9e-c7650955d9cd",
    #         name: "RDS clusters quota warning",
    #         aws_services: [
    #           "rds"
    #         ],
    #         check_arn: "arn:aws:trustedadvisor:::check/gjqMBn6pjz",
    #         id: "8b602b6f-452d-4cb2-8a9e-c7650955d9cd",
    #         last_updated_at: Time.parse("2023-11-01T15:58:17.397Z"),
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0,
    #             estimated_percent_monthly_savings: 0.0
    #           }
    #         },
    #         pillars: [
    #           service_limits
    #         ],
    #         resources_aggregates: {
    #           error_count: 0,
    #           ok_count: 3,
    #           warning_count: 6
    #         },
    #         source: ta_check,
    #         status: warning,
    #         type: standard
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     type: "standard" # One of: ["standard", "priority"],
    #     status: "ok" # One of: ["ok", "warning", "error"],
    #     pillar: "cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"],
    #     aws_service: "RecommendationAwsService",
    #     source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"],
    #     check_identifier: "CheckIdentifier",
    #     after_last_updated_at: Time.now,
    #     before_last_updated_at: Time.now
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     recommendation_summaries: [ # required
    #       {
    #         id: "String", # required
    #         type: "standard" # One of: ["standard", "priority"], # required
    #         check_arn: "String",
    #         status: "ok" # One of: ["ok", "warning", "error"], # required
    #         lifecycle_stage: "in_progress" # One of: ["in_progress", "pending_response", "dismissed", "resolved"],
    #         pillars: ["cost_optimizing" # One of: ["cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"]], # required
    #         source: "aws_config" # One of: ["aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected"], # required
    #         aws_services: ["RecommendationAwsService"],
    #         name: "String", # required
    #         resources_aggregates: { # required
    #           ok_count: 1, # required
    #           warning_count: 1, # required
    #           error_count: 1, # required
    #         },
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 1.0, # required
    #             estimated_percent_monthly_savings: 1.0, # required
    #           }
    #         },
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         arn: "AccountRecommendationArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>Update the lifecycle of a Recommendation within an Organization. This API only supports prioritized
    #             recommendations.
    #         </p>
    # @param [Hash, Types::UpdateOrganizationRecommendationLifecycleRequest] params
    # @option params [String] :lifecycle_stage
    #   <p>The new lifecycle stage</p>
    # @option params [String] :update_reason
    #   <p>Reason for the lifecycle stage change</p>
    # @option params [String] :update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    # @option params [String] :organization_recommendation_identifier
    #   <p>The Recommendation identifier for AWS Trusted Advisor Priority recommendations</p>
    # @example Update the lifecycle stage of an AWS Organization's Recommendation that is managed by AWS Trusted Advisor Priority
    #   # Example operation for update_organization_recommendation_lifecycle
    #   params = {
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/96b5e5ca-7930-444c-90c6-06d386128100",
    #     lifecycle_stage: dismissed,
    #     update_reason_code: not_applicable,
    #     update_reason: "Does not apply to this resource"
    #   }
    #   options = {}
    #   response = client.update_organization_recommendation_lifecycle(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_stage: "pending_response" # One of: ["pending_response", "in_progress", "dismissed", "resolved"], # required
    #     update_reason: "RecommendationUpdateReason",
    #     update_reason_code: "non_critical_account" # One of: ["non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"],
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.update_organization_recommendation_lifecycle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_organization_recommendation_lifecycle(params = {}, options = {})
      request = build_request(:update_organization_recommendation_lifecycle, params)
      request.send_request(options)
    end

    # <p>Update the lifecyle of a Recommendation. This API only supports prioritized recommendations.</p>
    # @param [Hash, Types::UpdateRecommendationLifecycleRequest] params
    # @option params [String] :lifecycle_stage
    #   <p>The new lifecycle stage</p>
    # @option params [String] :update_reason
    #   <p>Reason for the lifecycle stage change</p>
    # @option params [String] :update_reason_code
    #   <p>Reason code for the lifecycle state change</p>
    # @option params [String] :recommendation_identifier
    #   <p>The Recommendation identifier for AWS Trusted Advisor Priority recommendations</p>
    # @example Update the lifecycle stage of a Recommendation managed by AWS Trusted Advisor Priority
    #   # Example operation for update_recommendation_lifecycle
    #   params = {
    #     recommendation_identifier: "arn:aws:trustedadvisor::000000000000:recommendation/861c9c6e-f169-405a-8b59-537a8caccd7a",
    #     lifecycle_stage: resolved,
    #     update_reason_code: valid_business_case,
    #     update_reason: "Resolved the recommendation"
    #   }
    #   options = {}
    #   response = client.update_recommendation_lifecycle(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_stage: "pending_response" # One of: ["pending_response", "in_progress", "dismissed", "resolved"], # required
    #     update_reason: "RecommendationUpdateReason",
    #     update_reason_code: "non_critical_account" # One of: ["non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"],
    #     recommendation_identifier: "AccountRecommendationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.update_recommendation_lifecycle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_recommendation_lifecycle(params = {}, options = {})
      request = build_request(:update_recommendation_lifecycle, params)
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
      context[:gem_name] = 'aws-sdk-trustedadvisor'
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
