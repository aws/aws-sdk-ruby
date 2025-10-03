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

module Aws::ServiceQuotas
  # An API client for Aws::ServiceQuotas.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ServiceQuotasV20190624

    add_plugin(::Aws::ServiceQuotas::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ServiceQuotas::EndpointProvider)
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

    # <p>Associates your quota request template with your organization. When a new
    #             Amazon Web Services account is created in your organization, the quota increase requests in the
    #             template are automatically applied to the account. You can add a quota increase request
    #             for any adjustable quota to your template.</p>
    # @param [Hash, Types::AssociateServiceQuotaTemplateRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.associate_service_quota_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateServiceQuotaTemplateResponse]
    def associate_service_quota_template(params = {}, options = {})
      request = build_request(:associate_service_quota_template, params)
      request.send_request(options)
    end

    # <p>Creates a Support case for an existing quota increase request. This call only creates 
    #             a Support case if the request has a <code>Pending</code> status. </p>
    # @param [Hash, Types::CreateSupportCaseRequest] params
    # @option params [String] :request_id
    #   <p>The ID of the pending quota increase request for which you want to open a Support case. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_id: "RequestId", # required
    #   }
    #   options = {}
    #   response = client.create_support_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSupportCaseResponse]
    def create_support_case(params = {}, options = {})
      request = build_request(:create_support_case, params)
      request.send_request(options)
    end

    # <p>Deletes the quota increase request for the specified quota from your quota request
    #             template.</p>
    # @param [Hash, Types::DeleteServiceQuotaIncreaseRequestFromTemplateRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [String] :aws_region
    #   <p>Specifies the Amazon Web Services Region for which the request was made.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     aws_region: "AwsRegion", # required
    #   }
    #   options = {}
    #   response = client.delete_service_quota_increase_request_from_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceQuotaIncreaseRequestFromTemplateResponse]
    def delete_service_quota_increase_request_from_template(params = {}, options = {})
      request = build_request(:delete_service_quota_increase_request_from_template, params)
      request.send_request(options)
    end

    # <p>Disables your quota request template. After a template is disabled, the quota increase
    #             requests in the template are not applied to new Amazon Web Services accounts in your organization.
    #             Disabling a quota request template does not apply its quota increase requests.</p>
    # @param [Hash, Types::DisassociateServiceQuotaTemplateRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_service_quota_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateServiceQuotaTemplateResponse]
    def disassociate_service_quota_template(params = {}, options = {})
      request = build_request(:disassociate_service_quota_template, params)
      request.send_request(options)
    end

    # <p>Retrieves the default value for the specified quota. The default value does not
    #             reflect any quota increases.</p>
    # @param [Hash, Types::GetAWSDefaultServiceQuotaRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #   }
    #   options = {}
    #   response = client.get_aws_default_service_quota(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quota: {
    #       service_code: "ServiceCode",
    #       service_name: "ServiceName",
    #       quota_arn: "QuotaArn",
    #       quota_code: "QuotaCode",
    #       quota_name: "QuotaName",
    #       value: 1.0,
    #       unit: "QuotaUnit",
    #       adjustable: false,
    #       global_quota: false,
    #       usage_metric: {
    #         metric_namespace: "QuotaMetricNamespace",
    #         metric_name: "QuotaMetricName",
    #         metric_dimensions: {
    #           "MetricDimensionName" => "MetricDimensionValue"
    #         },
    #         metric_statistic_recommendation: "Statistic"
    #       },
    #       period: {
    #         period_value: 1,
    #         period_unit: "MICROSECOND" # One of: ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #       },
    #       error_reason: {
    #         error_code: "DEPENDENCY_ACCESS_DENIED_ERROR" # One of: ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"],
    #         error_message: "ErrorMessage"
    #       },
    #       quota_applied_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #       quota_context: {
    #         context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #         context_scope_type: "QuotaContextScopeType",
    #         context_id: "QuotaContextId"
    #       },
    #       description: "QuotaDescription"
    #     }
    #   }
    # @return [Types::GetAWSDefaultServiceQuotaResponse]
    def get_aws_default_service_quota(params = {}, options = {})
      request = build_request(:get_aws_default_service_quota, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of the association for the quota request template.</p>
    # @param [Hash, Types::GetAssociationForServiceQuotaTemplateRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_association_for_service_quota_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_quota_template_association_status: "ASSOCIATED" # One of: ["ASSOCIATED", "DISASSOCIATED"]
    #   }
    # @return [Types::GetAssociationForServiceQuotaTemplateResponse]
    def get_association_for_service_quota_template(params = {}, options = {})
      request = build_request(:get_association_for_service_quota_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified quota increase request.</p>
    # @param [Hash, Types::GetRequestedServiceQuotaChangeRequest] params
    # @option params [String] :request_id
    #   <p>Specifies the ID of the quota increase request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_id: "RequestId", # required
    #   }
    #   options = {}
    #   response = client.get_requested_service_quota_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     requested_quota: {
    #       id: "RequestId",
    #       case_id: "CustomerServiceEngagementId",
    #       service_code: "ServiceCode",
    #       service_name: "ServiceName",
    #       quota_code: "QuotaCode",
    #       quota_name: "QuotaName",
    #       desired_value: 1.0,
    #       status: "PENDING" # One of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"],
    #       created: Time.now,
    #       last_updated: Time.now,
    #       requester: "Requester",
    #       quota_arn: "QuotaArn",
    #       global_quota: false,
    #       unit: "QuotaUnit",
    #       quota_requested_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #       quota_context: {
    #         context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #         context_scope_type: "QuotaContextScopeType",
    #         context_id: "QuotaContextId"
    #       }
    #     }
    #   }
    # @return [Types::GetRequestedServiceQuotaChangeResponse]
    def get_requested_service_quota_change(params = {}, options = {})
      request = build_request(:get_requested_service_quota_change, params)
      request.send_request(options)
    end

    # <p>Retrieves the applied quota value for the specified account-level or resource-level quota. For some quotas, only the
    #             default values are available. If the applied quota value is not available for a quota,
    #             the quota is not retrieved.</p>
    # @param [Hash, Types::GetServiceQuotaRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [String] :context_id
    #   <p>Specifies the resource with an Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     context_id: "QuotaContextId"
    #   }
    #   options = {}
    #   response = client.get_service_quota(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quota: {
    #       service_code: "ServiceCode",
    #       service_name: "ServiceName",
    #       quota_arn: "QuotaArn",
    #       quota_code: "QuotaCode",
    #       quota_name: "QuotaName",
    #       value: 1.0,
    #       unit: "QuotaUnit",
    #       adjustable: false,
    #       global_quota: false,
    #       usage_metric: {
    #         metric_namespace: "QuotaMetricNamespace",
    #         metric_name: "QuotaMetricName",
    #         metric_dimensions: {
    #           "MetricDimensionName" => "MetricDimensionValue"
    #         },
    #         metric_statistic_recommendation: "Statistic"
    #       },
    #       period: {
    #         period_value: 1,
    #         period_unit: "MICROSECOND" # One of: ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #       },
    #       error_reason: {
    #         error_code: "DEPENDENCY_ACCESS_DENIED_ERROR" # One of: ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"],
    #         error_message: "ErrorMessage"
    #       },
    #       quota_applied_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #       quota_context: {
    #         context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #         context_scope_type: "QuotaContextScopeType",
    #         context_id: "QuotaContextId"
    #       },
    #       description: "QuotaDescription"
    #     }
    #   }
    # @return [Types::GetServiceQuotaResponse]
    def get_service_quota(params = {}, options = {})
      request = build_request(:get_service_quota, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified quota increase request in your quota request
    #             template.</p>
    # @param [Hash, Types::GetServiceQuotaIncreaseRequestFromTemplateRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [String] :aws_region
    #   <p>Specifies the Amazon Web Services Region for which you made the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     aws_region: "AwsRegion", # required
    #   }
    #   options = {}
    #   response = client.get_service_quota_increase_request_from_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_quota_increase_request_in_template: {
    #       service_code: "ServiceCode",
    #       service_name: "ServiceName",
    #       quota_code: "QuotaCode",
    #       quota_name: "QuotaName",
    #       desired_value: 1.0,
    #       aws_region: "AwsRegion",
    #       unit: "QuotaUnit",
    #       global_quota: false
    #     }
    #   }
    # @return [Types::GetServiceQuotaIncreaseRequestFromTemplateResponse]
    def get_service_quota_increase_request_from_template(params = {}, options = {})
      request = build_request(:get_service_quota_increase_request_from_template, params)
      request.send_request(options)
    end

    # <p>Lists the default values for the quotas for the specified Amazon Web Services service. A default
    #             value does not reflect any quota increases.</p>
    # @param [Hash, Types::ListAWSDefaultServiceQuotasRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :next_token
    #   <p>Specifies a value for receiving additional results after you 
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #       response indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results that you want included on each 
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate 
    #       to the operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_aws_default_service_quotas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     quotas: [
    #       {
    #         service_code: "ServiceCode",
    #         service_name: "ServiceName",
    #         quota_arn: "QuotaArn",
    #         quota_code: "QuotaCode",
    #         quota_name: "QuotaName",
    #         value: 1.0,
    #         unit: "QuotaUnit",
    #         adjustable: false,
    #         global_quota: false,
    #         usage_metric: {
    #           metric_namespace: "QuotaMetricNamespace",
    #           metric_name: "QuotaMetricName",
    #           metric_dimensions: {
    #             "MetricDimensionName" => "MetricDimensionValue"
    #           },
    #           metric_statistic_recommendation: "Statistic"
    #         },
    #         period: {
    #           period_value: 1,
    #           period_unit: "MICROSECOND" # One of: ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #         },
    #         error_reason: {
    #           error_code: "DEPENDENCY_ACCESS_DENIED_ERROR" # One of: ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"],
    #           error_message: "ErrorMessage"
    #         },
    #         quota_applied_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #         quota_context: {
    #           context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #           context_scope_type: "QuotaContextScopeType",
    #           context_id: "QuotaContextId"
    #         },
    #         description: "QuotaDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListAWSDefaultServiceQuotasResponse]
    def list_aws_default_service_quotas(params = {}, options = {})
      request = build_request(:list_aws_default_service_quotas, params)
      request.send_request(options)
    end

    # <p>Retrieves the quota increase requests for the specified Amazon Web Services service. Filter responses to return quota requests at 
    #         either the account level, resource level, or all levels. Responses include any open or closed requests within 90 days.</p>
    # @param [Hash, Types::ListRequestedServiceQuotaChangeHistoryRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :status
    #   <p>Specifies that you want to filter the results to only the requests with the matching
    #               status.</p>
    # @option params [String] :next_token
    #   <p>Specifies a value for receiving additional results after you 
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #       response indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results that you want included on each 
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate 
    #       to the operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :quota_requested_at_level
    #   <p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode",
    #     status: "PENDING" # One of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quota_requested_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"]
    #   }
    #   options = {}
    #   response = client.list_requested_service_quota_change_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     requested_quotas: [
    #       {
    #         id: "RequestId",
    #         case_id: "CustomerServiceEngagementId",
    #         service_code: "ServiceCode",
    #         service_name: "ServiceName",
    #         quota_code: "QuotaCode",
    #         quota_name: "QuotaName",
    #         desired_value: 1.0,
    #         status: "PENDING" # One of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"],
    #         created: Time.now,
    #         last_updated: Time.now,
    #         requester: "Requester",
    #         quota_arn: "QuotaArn",
    #         global_quota: false,
    #         unit: "QuotaUnit",
    #         quota_requested_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #         quota_context: {
    #           context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #           context_scope_type: "QuotaContextScopeType",
    #           context_id: "QuotaContextId"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRequestedServiceQuotaChangeHistoryResponse]
    def list_requested_service_quota_change_history(params = {}, options = {})
      request = build_request(:list_requested_service_quota_change_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the quota increase requests for the specified quota. Filter responses to return quota requests at either the
    #             account level, resource level, or all levels.</p>
    # @param [Hash, Types::ListRequestedServiceQuotaChangeHistoryByQuotaRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [String] :status
    #   <p>Specifies that you want to filter the results to only the requests with the matching
    #               status.</p>
    # @option params [String] :next_token
    #   <p>Specifies a value for receiving additional results after you 
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #       response indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results that you want included on each 
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate 
    #       to the operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :quota_requested_at_level
    #   <p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     status: "PENDING" # One of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quota_requested_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"]
    #   }
    #   options = {}
    #   response = client.list_requested_service_quota_change_history_by_quota(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     requested_quotas: [
    #       {
    #         id: "RequestId",
    #         case_id: "CustomerServiceEngagementId",
    #         service_code: "ServiceCode",
    #         service_name: "ServiceName",
    #         quota_code: "QuotaCode",
    #         quota_name: "QuotaName",
    #         desired_value: 1.0,
    #         status: "PENDING" # One of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"],
    #         created: Time.now,
    #         last_updated: Time.now,
    #         requester: "Requester",
    #         quota_arn: "QuotaArn",
    #         global_quota: false,
    #         unit: "QuotaUnit",
    #         quota_requested_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #         quota_context: {
    #           context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #           context_scope_type: "QuotaContextScopeType",
    #           context_id: "QuotaContextId"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse]
    def list_requested_service_quota_change_history_by_quota(params = {}, options = {})
      request = build_request(:list_requested_service_quota_change_history_by_quota, params)
      request.send_request(options)
    end

    # <p>Lists the quota increase requests in the specified quota request template.</p>
    # @param [Hash, Types::ListServiceQuotaIncreaseRequestsInTemplateRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :aws_region
    #   <p>Specifies the Amazon Web Services Region for which you made the request.</p>
    # @option params [String] :next_token
    #   <p>Specifies a value for receiving additional results after you 
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #       response indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results that you want included on each 
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate 
    #       to the operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode",
    #     aws_region: "AwsRegion",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_service_quota_increase_requests_in_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_quota_increase_request_in_template_list: [
    #       {
    #         service_code: "ServiceCode",
    #         service_name: "ServiceName",
    #         quota_code: "QuotaCode",
    #         quota_name: "QuotaName",
    #         desired_value: 1.0,
    #         aws_region: "AwsRegion",
    #         unit: "QuotaUnit",
    #         global_quota: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceQuotaIncreaseRequestsInTemplateResponse]
    def list_service_quota_increase_requests_in_template(params = {}, options = {})
      request = build_request(:list_service_quota_increase_requests_in_template, params)
      request.send_request(options)
    end

    # <p>Lists the applied quota values for the specified Amazon Web Services service. For some quotas, only
    #             the default values are available. If the applied quota value is not available for a
    #             quota, the quota is not retrieved. Filter responses to return applied quota values at either the account level,
    #             resource level, or all levels.</p>
    # @param [Hash, Types::ListServiceQuotasRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :next_token
    #   <p>Specifies a value for receiving additional results after you 
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #       response indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results that you want included on each 
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate 
    #       to the operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [String] :quota_applied_at_level
    #   <p>Filters the response to return applied quota values for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quota_code: "QuotaCode",
    #     quota_applied_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"]
    #   }
    #   options = {}
    #   response = client.list_service_quotas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     quotas: [
    #       {
    #         service_code: "ServiceCode",
    #         service_name: "ServiceName",
    #         quota_arn: "QuotaArn",
    #         quota_code: "QuotaCode",
    #         quota_name: "QuotaName",
    #         value: 1.0,
    #         unit: "QuotaUnit",
    #         adjustable: false,
    #         global_quota: false,
    #         usage_metric: {
    #           metric_namespace: "QuotaMetricNamespace",
    #           metric_name: "QuotaMetricName",
    #           metric_dimensions: {
    #             "MetricDimensionName" => "MetricDimensionValue"
    #           },
    #           metric_statistic_recommendation: "Statistic"
    #         },
    #         period: {
    #           period_value: 1,
    #           period_unit: "MICROSECOND" # One of: ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #         },
    #         error_reason: {
    #           error_code: "DEPENDENCY_ACCESS_DENIED_ERROR" # One of: ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"],
    #           error_message: "ErrorMessage"
    #         },
    #         quota_applied_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #         quota_context: {
    #           context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #           context_scope_type: "QuotaContextScopeType",
    #           context_id: "QuotaContextId"
    #         },
    #         description: "QuotaDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceQuotasResponse]
    def list_service_quotas(params = {}, options = {})
      request = build_request(:list_service_quotas, params)
      request.send_request(options)
    end

    # <p>Lists the names and codes for the Amazon Web Services services integrated with Service Quotas.</p>
    # @param [Hash, Types::ListServicesRequest] params
    # @option params [String] :next_token
    #   <p>Specifies a value for receiving additional results after you 
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #       response indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results that you want included on each 
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate 
    #       to the operation. If additional items exist beyond those included in the current response, the 
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that 
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get 
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     services: [
    #       {
    #         service_code: "ServiceCode",
    #         service_name: "ServiceName"
    #       }
    #     ]
    #   }
    # @return [Types::ListServicesResponse]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags assigned to the specified applied quota.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags.
    #               You can get this information by using the Service Quotas console, or by listing the quotas
    #               using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds a quota increase request to your quota request template.</p>
    # @param [Hash, Types::PutServiceQuotaIncreaseRequestIntoTemplateRequest] params
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :aws_region
    #   <p>Specifies the Amazon Web Services Region to which the template applies.</p>
    # @option params [Float] :desired_value
    #   <p>Specifies the new, increased value for the quota.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quota_code: "QuotaCode", # required
    #     service_code: "ServiceCode", # required
    #     aws_region: "AwsRegion", # required
    #     desired_value: 1.0, # required
    #   }
    #   options = {}
    #   response = client.put_service_quota_increase_request_into_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_quota_increase_request_in_template: {
    #       service_code: "ServiceCode",
    #       service_name: "ServiceName",
    #       quota_code: "QuotaCode",
    #       quota_name: "QuotaName",
    #       desired_value: 1.0,
    #       aws_region: "AwsRegion",
    #       unit: "QuotaUnit",
    #       global_quota: false
    #     }
    #   }
    # @return [Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse]
    def put_service_quota_increase_request_into_template(params = {}, options = {})
      request = build_request(:put_service_quota_increase_request_into_template, params)
      request.send_request(options)
    end

    # <p>Submits a quota increase request for the specified quota at the account or resource level.</p>
    # @param [Hash, Types::RequestServiceQuotaIncreaseRequest] params
    # @option params [String] :service_code
    #   <p>Specifies the service identifier. To find the service code value 
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    # @option params [String] :quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific 
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    # @option params [Float] :desired_value
    #   <p>Specifies the new, increased value for the quota.</p>
    # @option params [String] :context_id
    #   <p>Specifies the resource with an Amazon Resource Name (ARN).</p>
    # @option params [Boolean] :support_case_allowed
    #   <p>Specifies if an Amazon Web Services Support case can be opened for the quota increase request. This parameter is optional. </p>
    #            <p>By default, this flag is set to <code>True</code> and Amazon Web Services may create a support case for some quota increase requests. 
    #               You can set this flag to <code>False</code> 
    #              if you do not want a support case created when you request a quota increase. If you set the flag to <code>False</code>, 
    #               Amazon Web Services does not open a support case and updates the request status to <code>Not approved</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     desired_value: 1.0, # required
    #     context_id: "QuotaContextId",
    #     support_case_allowed: false
    #   }
    #   options = {}
    #   response = client.request_service_quota_increase(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     requested_quota: {
    #       id: "RequestId",
    #       case_id: "CustomerServiceEngagementId",
    #       service_code: "ServiceCode",
    #       service_name: "ServiceName",
    #       quota_code: "QuotaCode",
    #       quota_name: "QuotaName",
    #       desired_value: 1.0,
    #       status: "PENDING" # One of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"],
    #       created: Time.now,
    #       last_updated: Time.now,
    #       requester: "Requester",
    #       quota_arn: "QuotaArn",
    #       global_quota: false,
    #       unit: "QuotaUnit",
    #       quota_requested_at_level: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE", "ALL"],
    #       quota_context: {
    #         context_scope: "RESOURCE" # One of: ["RESOURCE", "ACCOUNT"],
    #         context_scope_type: "QuotaContextScopeType",
    #         context_id: "QuotaContextId"
    #       }
    #     }
    #   }
    # @return [Types::RequestServiceQuotaIncreaseResponse]
    def request_service_quota_increase(params = {}, options = {})
      request = build_request(:request_service_quota_increase, params)
      request.send_request(options)
    end

    # <p>Adds tags to the specified applied quota. You can include one or more tags to add to
    #             the quota.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota. You can get this information by
    #               using the Service Quotas console, or by listing the quotas using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that you want to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Removes tags from the specified applied quota. You can specify one or more tags to
    #             remove.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can
    #               get this information by using the Service Quotas console, or by listing the quotas using the
    #               <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
      context[:gem_name] = 'aws-sdk-servicequotas'
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
