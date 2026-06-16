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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:xray)

module Aws::XRay
  # An API client for Aws::XRay.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSXRay
    @identifier = :xray

    add_plugin(::Aws::XRay::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::XRay::EndpointProvider)
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

    # <note>
    #             <p>You cannot find traces through this API if Transaction Search is enabled since trace is not indexed in X-Ray.</p>
    #          </note>
    #          <p>Retrieves a list of traces specified by ID. Each trace is a collection of segment
    #       documents that originates from a single request. Use <code>GetTraceSummaries</code> to get a
    #       list of trace IDs.</p>
    # @param [Hash, Types::BatchGetTracesRequest] params
    # @option params [Array<String>] :trace_ids
    #   <p>Specify the trace IDs of requests for which to retrieve segments.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.batch_get_traces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traces: [
    #       {
    #         id: "TraceId",
    #         duration: 1.0,
    #         limit_exceeded: false,
    #         segments: [
    #           {
    #             id: "SegmentId",
    #             document: "SegmentDocument"
    #           }
    #         ]
    #       }
    #     ],
    #     unprocessed_trace_ids: ["TraceId"],
    #     next_token: "String"
    #   }
    # @return [Types::BatchGetTracesResult]
    def batch_get_traces(params = {}, options = {})
      request = build_request(:batch_get_traces, params)
      request.send_request(options)
    end

    # <p>
    # Cancels an ongoing trace retrieval job initiated by <code>StartTraceRetrieval</code> using the provided <code>RetrievalToken</code>. A successful cancellation will return an HTTP 200 response.
    # </p>
    # @param [Hash, Types::CancelTraceRetrievalRequest] params
    # @option params [String] :retrieval_token
    #   <p>
    #   Retrieval token.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     retrieval_token: "RetrievalToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_trace_retrieval(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelTraceRetrievalResult]
    def cancel_trace_retrieval(params = {}, options = {})
      request = build_request(:cancel_trace_retrieval, params)
      request.send_request(options)
    end

    # <p>Creates a group resource with a name and a filter expression. </p>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the new group. Default is a reserved name and names must
    #               be unique.</p>
    # @option params [String] :filter_expression
    #   <p>The filter expression defining criteria by which to group traces.</p>
    # @option params [Types::InsightsConfiguration] :insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #            <ul>
    #               <li>
    #                  <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       new group or false to disable insights for the new group.</p>
    #               </li>
    #               <li>
    #                  <p>The NotificationsEnabled boolean can be set to true to enable insights
    #                       notifications for the new group. Notifications may only be enabled on a group
    #                       with InsightsEnabled set to true.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray group.
    #               For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #                   resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #                       / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services
    #                       use.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName", # required
    #     filter_expression: "FilterExpression",
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_name: "String",
    #       group_arn: "String",
    #       filter_expression: "String",
    #       insights_configuration: {
    #         insights_enabled: false,
    #         notifications_enabled: false
    #       }
    #     }
    #   }
    # @return [Types::CreateGroupResult]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Creates a rule to control sampling behavior for instrumented applications. Services
    #          retrieve rules with <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html">GetSamplingRules</a>, and evaluate each rule in ascending
    #          order of <i>priority</i> for each request. If a rule matches, the service
    #          records a trace, borrowing it from the reservoir size. After 10 seconds, the service
    #          reports back to X-Ray with <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a> to get updated versions of
    #          each in-use rule. The updated rule contains a trace quota that the service can use instead
    #          of borrowing from the reservoir.</p>
    # @param [Hash, Types::CreateSamplingRuleRequest] params
    # @option params [Types::SamplingRule] :sampling_rule
    #   <p>The rule definition.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray sampling
    #            rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #               resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #                  / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services
    #                  use.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     sampling_rule: { # required
    #       rule_name: "RuleName",
    #       rule_arn: "String",
    #       resource_arn: "ResourceARN", # required
    #       priority: 1, # required
    #       fixed_rate: 1.0, # required
    #       reservoir_size: 1, # required
    #       service_name: "ServiceName", # required
    #       service_type: "ServiceType", # required
    #       host: "Host", # required
    #       http_method: "HTTPMethod", # required
    #       url_path: "URLPath", # required
    #       version: 1, # required
    #       attributes: {
    #         "AttributeKey" => "AttributeValue"
    #       },
    #       sampling_rate_boost: {
    #         max_rate: 1.0, # required
    #         cooldown_window_minutes: 1, # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_sampling_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampling_rule_record: {
    #       sampling_rule: {
    #         rule_name: "RuleName",
    #         rule_arn: "String",
    #         resource_arn: "ResourceARN", # required
    #         priority: 1, # required
    #         fixed_rate: 1.0, # required
    #         reservoir_size: 1, # required
    #         service_name: "ServiceName", # required
    #         service_type: "ServiceType", # required
    #         host: "Host", # required
    #         http_method: "HTTPMethod", # required
    #         url_path: "URLPath", # required
    #         version: 1, # required
    #         attributes: {
    #           "AttributeKey" => "AttributeValue"
    #         },
    #         sampling_rate_boost: {
    #           max_rate: 1.0, # required
    #           cooldown_window_minutes: 1, # required
    #         }
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now
    #     }
    #   }
    # @return [Types::CreateSamplingRuleResult]
    def create_sampling_rule(params = {}, options = {})
      request = build_request(:create_sampling_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a group resource.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group.</p>
    # @option params [String] :group_arn
    #   <p>The ARN of the group that was generated on creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group_arn: "GroupARN"
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResult]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Deletes a resource policy from the target Amazon Web Services account.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the resource policy to delete.</p>
    # @option params [String] :policy_revision_id
    #   <p>Specifies a specific policy revision to delete. Provide a <code>PolicyRevisionId</code> to ensure an atomic delete operation. If the provided revision id does 
    #               not match the latest policy revision id, an <code>InvalidPolicyRevisionIdException</code> exception is returned.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResult]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a sampling rule.</p>
    # @param [Hash, Types::DeleteSamplingRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    # @option params [String] :rule_arn
    #   <p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "String",
    #     rule_arn: "String"
    #   }
    #   options = {}
    #   response = client.delete_sampling_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampling_rule_record: {
    #       sampling_rule: {
    #         rule_name: "RuleName",
    #         rule_arn: "String",
    #         resource_arn: "ResourceARN", # required
    #         priority: 1, # required
    #         fixed_rate: 1.0, # required
    #         reservoir_size: 1, # required
    #         service_name: "ServiceName", # required
    #         service_type: "ServiceType", # required
    #         host: "Host", # required
    #         http_method: "HTTPMethod", # required
    #         url_path: "URLPath", # required
    #         version: 1, # required
    #         attributes: {
    #           "AttributeKey" => "AttributeValue"
    #         },
    #         sampling_rate_boost: {
    #           max_rate: 1.0, # required
    #           cooldown_window_minutes: 1, # required
    #         }
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteSamplingRuleResult]
    def delete_sampling_rule(params = {}, options = {})
      request = build_request(:delete_sampling_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves the current encryption configuration for X-Ray data.</p>
    # @param [Hash, Types::GetEncryptionConfigRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_config: {
    #       key_id: "String",
    #       status: "UPDATING" # One of: ["UPDATING", "ACTIVE"],
    #       type: "NONE" # One of: ["NONE", "KMS"]
    #     }
    #   }
    # @return [Types::GetEncryptionConfigResult]
    def get_encryption_config(params = {}, options = {})
      request = build_request(:get_encryption_config, params)
      request.send_request(options)
    end

    # <p>Retrieves group resource details.</p>
    # @param [Hash, Types::GetGroupRequest] params
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group.</p>
    # @option params [String] :group_arn
    #   <p>The ARN of the group that was generated on creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group_arn: "GroupARN"
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_name: "String",
    #       group_arn: "String",
    #       filter_expression: "String",
    #       insights_configuration: {
    #         insights_enabled: false,
    #         notifications_enabled: false
    #       }
    #     }
    #   }
    # @return [Types::GetGroupResult]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # <p>Retrieves all active group details.</p>
    # @param [Hash, Types::GetGroupsRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "GetGroupsNextToken"
    #   }
    #   options = {}
    #   response = client.get_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         group_name: "String",
    #         group_arn: "String",
    #         filter_expression: "String",
    #         insights_configuration: {
    #           insights_enabled: false,
    #           notifications_enabled: false
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetGroupsResult]
    def get_groups(params = {}, options = {})
      request = build_request(:get_groups, params)
      request.send_request(options)
    end

    # <p>
    # Retrieves all indexing rules.</p>
    #          <p>Indexing rules are used to determine the server-side sampling rate for spans ingested through the CloudWatchLogs destination and indexed by X-Ray. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html">Transaction Search</a>.</p>
    # @param [Hash, Types::GetIndexingRulesRequest] params
    # @option params [String] :next_token
    #   <p>
    #   Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #     
    #     
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_indexing_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     indexing_rules: [
    #       {
    #         name: "RuleName",
    #         modified_at: Time.now,
    #         rule: {
    #           # One of:
    #           probabilistic: {
    #             desired_sampling_percentage: 1.0, # required
    #             actual_sampling_percentage: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetIndexingRulesResult]
    def get_indexing_rules(params = {}, options = {})
      request = build_request(:get_indexing_rules, params)
      request.send_request(options)
    end

    # <p>Retrieves the summary information of an insight. This includes impact to clients and
    #          root cause services, the top anomalous services, the category, the state of the insight,
    #          and the start and end time of the insight.</p>
    # @param [Hash, Types::GetInsightRequest] params
    # @option params [String] :insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId", # required
    #   }
    #   options = {}
    #   response = client.get_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight: {
    #       insight_id: "InsightId",
    #       group_arn: "GroupARN",
    #       group_name: "GroupName",
    #       root_cause_service_id: {
    #         name: "String",
    #         names: ["String"],
    #         account_id: "String",
    #         type: "String"
    #       },
    #       categories: ["FAULT" # One of: ["FAULT"]],
    #       state: "ACTIVE" # One of: ["ACTIVE", "CLOSED"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       summary: "InsightSummaryText",
    #       client_request_impact_statistics: {
    #         fault_count: 1,
    #         ok_count: 1,
    #         total_count: 1
    #       },
    #       root_cause_service_request_impact_statistics: {
    #         fault_count: 1,
    #         ok_count: 1,
    #         total_count: 1
    #       },
    #       top_anomalous_services: [
    #         {
    #           service_id: {
    #             name: "String",
    #             names: ["String"],
    #             account_id: "String",
    #             type: "String"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetInsightResult]
    def get_insight(params = {}, options = {})
      request = build_request(:get_insight, params)
      request.send_request(options)
    end

    # <p>X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an
    #          event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray
    #          console.</p>
    # @param [Hash, Types::GetInsightEventsRequest] params
    # @option params [String] :insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    # @option params [Integer] :max_results
    #   <p>Used to retrieve at most the specified value of events.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page of events. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_insight_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_events: [
    #       {
    #         summary: "EventSummaryText",
    #         event_time: Time.now,
    #         client_request_impact_statistics: {
    #           fault_count: 1,
    #           ok_count: 1,
    #           total_count: 1
    #         },
    #         root_cause_service_request_impact_statistics: {
    #           fault_count: 1,
    #           ok_count: 1,
    #           total_count: 1
    #         },
    #         top_anomalous_services: [
    #           {
    #             service_id: {
    #               name: "String",
    #               names: ["String"],
    #               account_id: "String",
    #               type: "String"
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetInsightEventsResult]
    def get_insight_events(params = {}, options = {})
      request = build_request(:get_insight_events, params)
      request.send_request(options)
    end

    # <p>Retrieves a service graph structure filtered by the specified insight. The service graph is limited to only
    #          structural information. For a complete service graph, use this API with the GetServiceGraph API.</p>
    # @param [Hash, Types::GetInsightImpactGraphRequest] params
    # @option params [String] :insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    # @option params [Time] :start_time
    #   <p>The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value
    #            provided and can't be more than 30 days old.</p>
    # @option params [Time] :end_time
    #   <p>The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided.
    #            The time range between the start time and end time can't be more than six hours. </p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_insight_impact_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_id: "InsightId",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     service_graph_start_time: Time.now,
    #     service_graph_end_time: Time.now,
    #     services: [
    #       {
    #         reference_id: 1,
    #         type: "String",
    #         name: "String",
    #         names: ["String"],
    #         account_id: "String",
    #         edges: [
    #           {
    #             reference_id: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetInsightImpactGraphResult]
    def get_insight_impact_graph(params = {}, options = {})
      request = build_request(:get_insight_impact_graph, params)
      request.send_request(options)
    end

    # <p>Retrieves the summaries of all insights in the specified group matching the provided filter values.</p>
    # @param [Hash, Types::GetInsightSummariesRequest] params
    # @option params [Array<String>] :states
    #   <p>The list of insight states. </p>
    # @option params [String] :group_arn
    #   <p>The Amazon Resource Name (ARN) of the group. Required if the GroupName isn't provided.</p>
    # @option params [String] :group_name
    #   <p>The name of the group. Required if the GroupARN isn't provided.</p>
    # @option params [Time] :start_time
    #   <p>The beginning of the time frame in which the insights started. The start time can't be more than 30 days
    #            old.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time frame in which the insights ended. The end time can't be more than 30 days old.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     states: ["ACTIVE" # One of: ["ACTIVE", "CLOSED"]],
    #     group_arn: "GroupARN",
    #     group_name: "GroupName",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_insight_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_summaries: [
    #       {
    #         insight_id: "InsightId",
    #         group_arn: "GroupARN",
    #         group_name: "GroupName",
    #         root_cause_service_id: {
    #           name: "String",
    #           names: ["String"],
    #           account_id: "String",
    #           type: "String"
    #         },
    #         categories: ["FAULT" # One of: ["FAULT"]],
    #         state: "ACTIVE" # One of: ["ACTIVE", "CLOSED"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         summary: "InsightSummaryText",
    #         client_request_impact_statistics: {
    #           fault_count: 1,
    #           ok_count: 1,
    #           total_count: 1
    #         },
    #         root_cause_service_request_impact_statistics: {
    #           fault_count: 1,
    #           ok_count: 1,
    #           total_count: 1
    #         },
    #         top_anomalous_services: [
    #           {
    #             service_id: {
    #               name: "String",
    #               names: ["String"],
    #               account_id: "String",
    #               type: "String"
    #             }
    #           }
    #         ],
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetInsightSummariesResult]
    def get_insight_summaries(params = {}, options = {})
      request = build_request(:get_insight_summaries, params)
      request.send_request(options)
    end

    # <p>
    #   Retrieves a service graph for traces based on the specified <code>RetrievalToken</code> from the CloudWatch log group generated by Transaction Search. This API does not initiate a retrieval job. You must first execute <code>StartTraceRetrieval</code> to obtain the required <code>RetrievalToken</code>.
    # </p>
    #          <p>The trace graph describes services that process incoming requests and any downstream services they call, which may include Amazon Web Services resources, external APIs, or databases.</p>
    #          <p>The response is empty until the <code>RetrievalStatus</code> is <i>COMPLETE</i>. Retry the request after the status changes from <i>RUNNING</i> or <i>SCHEDULED</i> to <i>COMPLETE</i> to access the full service graph.</p>
    #          <p>
    #     When CloudWatch log is the destination, this API can support cross-account observability and service graph retrieval across linked accounts.</p>
    #          <p>For retrieving graphs from X-Ray directly as opposed to the Transaction-Search Log group, see <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetTraceGraph.html">GetTraceGraph</a>.</p>
    # @param [Hash, Types::GetRetrievedTracesGraphRequest] params
    # @option params [String] :retrieval_token
    #   <p>
    #       Retrieval token.
    #     </p>
    # @option params [String] :next_token
    #   <p>
    #       Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       
    #       
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     retrieval_token: "RetrievalToken", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_retrieved_traces_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retrieval_status: "SCHEDULED" # One of: ["SCHEDULED", "RUNNING", "COMPLETE", "FAILED", "CANCELLED", "TIMEOUT"],
    #     services: [
    #       {
    #         service: {
    #           reference_id: 1,
    #           name: "String",
    #           names: ["String"],
    #           root: false,
    #           account_id: "String",
    #           type: "String",
    #           state: "String",
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           edges: [
    #             {
    #               reference_id: 1,
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               summary_statistics: {
    #                 ok_count: 1,
    #                 error_statistics: {
    #                   throttle_count: 1,
    #                   other_count: 1,
    #                   total_count: 1
    #                 },
    #                 fault_statistics: {
    #                   other_count: 1,
    #                   total_count: 1
    #                 },
    #                 total_count: 1,
    #                 total_response_time: 1.0
    #               },
    #               response_time_histogram: [
    #                 {
    #                   value: 1.0,
    #                   count: 1
    #                 }
    #               ],
    #               aliases: [
    #                 {
    #                   name: "String",
    #                   names: ["String"],
    #                   type: "String"
    #                 }
    #               ],
    #               edge_type: "String",
    #               received_event_age_histogram: [
    #                 {
    #                   value: 1.0,
    #                   count: 1
    #                 }
    #               ]
    #             }
    #           ],
    #           summary_statistics: {
    #             ok_count: 1,
    #             error_statistics: {
    #               throttle_count: 1,
    #               other_count: 1,
    #               total_count: 1
    #             },
    #             fault_statistics: {
    #               other_count: 1,
    #               total_count: 1
    #             },
    #             total_count: 1,
    #             total_response_time: 1.0
    #           },
    #           duration_histogram: [
    #             {
    #               value: 1.0,
    #               count: 1
    #             }
    #           ],
    #           response_time_histogram: [
    #             {
    #               value: 1.0,
    #               count: 1
    #             }
    #           ]
    #         },
    #         links: [
    #           {
    #             reference_type: "String",
    #             source_trace_id: "String",
    #             destination_trace_ids: ["TraceId"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetRetrievedTracesGraphResult]
    def get_retrieved_traces_graph(params = {}, options = {})
      request = build_request(:get_retrieved_traces_graph, params)
      request.send_request(options)
    end

    # <p>Retrieves all sampling rules.</p>
    # @param [Hash, Types::GetSamplingRulesRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_sampling_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampling_rule_records: [
    #       {
    #         sampling_rule: {
    #           rule_name: "RuleName",
    #           rule_arn: "String",
    #           resource_arn: "ResourceARN", # required
    #           priority: 1, # required
    #           fixed_rate: 1.0, # required
    #           reservoir_size: 1, # required
    #           service_name: "ServiceName", # required
    #           service_type: "ServiceType", # required
    #           host: "Host", # required
    #           http_method: "HTTPMethod", # required
    #           url_path: "URLPath", # required
    #           version: 1, # required
    #           attributes: {
    #             "AttributeKey" => "AttributeValue"
    #           },
    #           sampling_rate_boost: {
    #             max_rate: 1.0, # required
    #             cooldown_window_minutes: 1, # required
    #           }
    #         },
    #         created_at: Time.now,
    #         modified_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetSamplingRulesResult]
    def get_sampling_rules(params = {}, options = {})
      request = build_request(:get_sampling_rules, params)
      request.send_request(options)
    end

    # <p>Retrieves information about recent sampling results for all sampling rules.</p>
    # @param [Hash, Types::GetSamplingStatisticSummariesRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_sampling_statistic_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampling_statistic_summaries: [
    #       {
    #         rule_name: "String",
    #         timestamp: Time.now,
    #         request_count: 1,
    #         borrow_count: 1,
    #         sampled_count: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetSamplingStatisticSummariesResult]
    def get_sampling_statistic_summaries(params = {}, options = {})
      request = build_request(:get_sampling_statistic_summaries, params)
      request.send_request(options)
    end

    # <p>Requests a sampling quota for rules that the service is using to sample requests.
    #       </p>
    # @param [Hash, Types::GetSamplingTargetsRequest] params
    # @option params [Array<Types::SamplingStatisticsDocument>] :sampling_statistics_documents
    #   <p>Information about rules that the service is using to sample requests.</p>
    # @option params [Array<Types::SamplingBoostStatisticsDocument>] :sampling_boost_statistics_documents
    #   <p>Information about rules that the service is using to boost sampling rate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sampling_statistics_documents: [ # required
    #       {
    #         rule_name: "RuleName", # required
    #         client_id: "ClientID", # required
    #         timestamp: Time.now, # required
    #         request_count: 1, # required
    #         sampled_count: 1, # required
    #         borrow_count: 1
    #       }
    #     ],
    #     sampling_boost_statistics_documents: [
    #       {
    #         rule_name: "RuleName", # required
    #         service_name: "ServiceName", # required
    #         timestamp: Time.now, # required
    #         anomaly_count: 1, # required
    #         total_count: 1, # required
    #         sampled_anomaly_count: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_sampling_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampling_target_documents: [
    #       {
    #         rule_name: "String",
    #         fixed_rate: 1.0,
    #         reservoir_quota: 1,
    #         reservoir_quota_ttl: Time.now,
    #         interval: 1,
    #         sampling_boost: {
    #           boost_rate: 1.0, # required
    #           boost_rate_ttl: Time.now, # required
    #         }
    #       }
    #     ],
    #     last_rule_modification: Time.now,
    #     unprocessed_statistics: [
    #       {
    #         rule_name: "String",
    #         error_code: "String",
    #         message: "String"
    #       }
    #     ],
    #     unprocessed_boost_statistics: [
    #       {
    #         rule_name: "String",
    #         error_code: "String",
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetSamplingTargetsResult]
    def get_sampling_targets(params = {}, options = {})
      request = build_request(:get_sampling_targets, params)
      request.send_request(options)
    end

    # <p>Retrieves a document that describes services that process incoming requests, and
    #       downstream services that they call as a result. Root services process incoming requests and
    #       make calls to downstream services. Root services are applications that use the <a href="https://docs.aws.amazon.com/xray/index.html">Amazon Web Services X-Ray SDK</a>.
    #       Downstream services can be other applications, Amazon Web Services resources, HTTP web APIs, or SQL
    #       databases.</p>
    # @param [Hash, Types::GetServiceGraphRequest] params
    # @option params [Time] :start_time
    #   <p>The start of the time frame for which to generate a graph.</p>
    # @option params [Time] :end_time
    #   <p>The end of the timeframe for which to generate a graph.</p>
    # @option params [String] :group_name
    #   <p>The name of a group based on which you want to generate a graph.</p>
    # @option params [String] :group_arn
    #   <p>The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_service_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     services: [
    #       {
    #         reference_id: 1,
    #         name: "String",
    #         names: ["String"],
    #         root: false,
    #         account_id: "String",
    #         type: "String",
    #         state: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         edges: [
    #           {
    #             reference_id: 1,
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             summary_statistics: {
    #               ok_count: 1,
    #               error_statistics: {
    #                 throttle_count: 1,
    #                 other_count: 1,
    #                 total_count: 1
    #               },
    #               fault_statistics: {
    #                 other_count: 1,
    #                 total_count: 1
    #               },
    #               total_count: 1,
    #               total_response_time: 1.0
    #             },
    #             response_time_histogram: [
    #               {
    #                 value: 1.0,
    #                 count: 1
    #               }
    #             ],
    #             aliases: [
    #               {
    #                 name: "String",
    #                 names: ["String"],
    #                 type: "String"
    #               }
    #             ],
    #             edge_type: "String",
    #             received_event_age_histogram: [
    #               {
    #                 value: 1.0,
    #                 count: 1
    #               }
    #             ]
    #           }
    #         ],
    #         summary_statistics: {
    #           ok_count: 1,
    #           error_statistics: {
    #             throttle_count: 1,
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           fault_statistics: {
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           total_count: 1,
    #           total_response_time: 1.0
    #         },
    #         duration_histogram: [
    #           {
    #             value: 1.0,
    #             count: 1
    #           }
    #         ],
    #         response_time_histogram: [
    #           {
    #             value: 1.0,
    #             count: 1
    #           }
    #         ]
    #       }
    #     ],
    #     contains_old_group_versions: false,
    #     next_token: "String"
    #   }
    # @return [Types::GetServiceGraphResult]
    def get_service_graph(params = {}, options = {})
      request = build_request(:get_service_graph, params)
      request.send_request(options)
    end

    # <p>Get an aggregation of service statistics defined by a specific time
    #             range.</p>
    # @param [Hash, Types::GetTimeSeriesServiceStatisticsRequest] params
    # @option params [Time] :start_time
    #   <p>The start of the time frame for which to aggregate statistics.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time frame for which to aggregate statistics.</p>
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group for which to pull statistics from.</p>
    # @option params [String] :group_arn
    #   <p>The Amazon Resource Name (ARN) of the group for which to pull statistics from.</p>
    # @option params [String] :entity_selector_expression
    #   <p>A filter expression defining entities that will be aggregated for statistics.
    #               Supports ID, service, and edge functions. If no selector expression is specified, edge
    #               statistics are returned. </p>
    # @option params [Integer] :period
    #   <p>Aggregation period in seconds.</p>
    # @option params [Boolean] :forecast_statistics
    #   <p>The forecasted high and low fault count values. Forecast enabled requests require the
    #               EntitySelectorExpression ID be provided.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     entity_selector_expression: "EntitySelectorExpression",
    #     period: 1,
    #     forecast_statistics: false,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_time_series_service_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_series_service_statistics: [
    #       {
    #         timestamp: Time.now,
    #         edge_summary_statistics: {
    #           ok_count: 1,
    #           error_statistics: {
    #             throttle_count: 1,
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           fault_statistics: {
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           total_count: 1,
    #           total_response_time: 1.0
    #         },
    #         service_summary_statistics: {
    #           ok_count: 1,
    #           error_statistics: {
    #             throttle_count: 1,
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           fault_statistics: {
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           total_count: 1,
    #           total_response_time: 1.0
    #         },
    #         service_forecast_statistics: {
    #           fault_count_high: 1,
    #           fault_count_low: 1
    #         },
    #         response_time_histogram: [
    #           {
    #             value: 1.0,
    #             count: 1
    #           }
    #         ]
    #       }
    #     ],
    #     contains_old_group_versions: false,
    #     next_token: "String"
    #   }
    # @return [Types::GetTimeSeriesServiceStatisticsResult]
    def get_time_series_service_statistics(params = {}, options = {})
      request = build_request(:get_time_series_service_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves a service graph for one or more specific trace IDs.</p>
    # @param [Hash, Types::GetTraceGraphRequest] params
    # @option params [Array<String>] :trace_ids
    #   <p>Trace IDs of requests for which to generate a service graph.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_trace_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     services: [
    #       {
    #         reference_id: 1,
    #         name: "String",
    #         names: ["String"],
    #         root: false,
    #         account_id: "String",
    #         type: "String",
    #         state: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         edges: [
    #           {
    #             reference_id: 1,
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             summary_statistics: {
    #               ok_count: 1,
    #               error_statistics: {
    #                 throttle_count: 1,
    #                 other_count: 1,
    #                 total_count: 1
    #               },
    #               fault_statistics: {
    #                 other_count: 1,
    #                 total_count: 1
    #               },
    #               total_count: 1,
    #               total_response_time: 1.0
    #             },
    #             response_time_histogram: [
    #               {
    #                 value: 1.0,
    #                 count: 1
    #               }
    #             ],
    #             aliases: [
    #               {
    #                 name: "String",
    #                 names: ["String"],
    #                 type: "String"
    #               }
    #             ],
    #             edge_type: "String",
    #             received_event_age_histogram: [
    #               {
    #                 value: 1.0,
    #                 count: 1
    #               }
    #             ]
    #           }
    #         ],
    #         summary_statistics: {
    #           ok_count: 1,
    #           error_statistics: {
    #             throttle_count: 1,
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           fault_statistics: {
    #             other_count: 1,
    #             total_count: 1
    #           },
    #           total_count: 1,
    #           total_response_time: 1.0
    #         },
    #         duration_histogram: [
    #           {
    #             value: 1.0,
    #             count: 1
    #           }
    #         ],
    #         response_time_histogram: [
    #           {
    #             value: 1.0,
    #             count: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetTraceGraphResult]
    def get_trace_graph(params = {}, options = {})
      request = build_request(:get_trace_graph, params)
      request.send_request(options)
    end

    # <p>
    #   Retrieves the current destination of data sent to <code>PutTraceSegments</code> and <i>OpenTelemetry protocol (OTLP)</i> endpoint. The Transaction Search feature requires a CloudWatchLogs destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html">Transaction Search</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-OpenTelemetry-Sections.html">OpenTelemetry</a>.
    # </p>
    # @param [Hash, Types::GetTraceSegmentDestinationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_trace_segment_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination: "XRay" # One of: ["XRay", "CloudWatchLogs"],
    #     status: "PENDING" # One of: ["PENDING", "ACTIVE"]
    #   }
    # @return [Types::GetTraceSegmentDestinationResult]
    def get_trace_segment_destination(params = {}, options = {})
      request = build_request(:get_trace_segment_destination, params)
      request.send_request(options)
    end

    # <p>Retrieves IDs and annotations for traces available for a specified time frame using an
    #       optional filter. To get the full traces, pass the trace IDs to
    #       <code>BatchGetTraces</code>.</p>
    #          <p>A filter expression can target traced requests that hit specific service nodes or
    #       edges, have errors, or come from a known user. For example, the following filter expression
    #       targets traces that pass through <code>api.example.com</code>:</p>
    #          <p>
    #             <code>service("api.example.com")</code>
    #          </p>
    #          <p>This filter expression finds traces that have an annotation named <code>account</code>
    #       with the value <code>12345</code>:</p>
    #          <p>
    #             <code>annotation.account = "12345"</code>
    #          </p>
    #          <p>For a full list of indexed fields and keywords that you can use in filter expressions,
    #       see <a href="https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-console.html#xray-console-filters">Use filter
    #         expressions</a> in the <i>Amazon Web Services X-Ray Developer Guide</i>.</p>
    # @param [Hash, Types::GetTraceSummariesRequest] params
    # @option params [Time] :start_time
    #   <p>The start of the time frame for which to retrieve traces.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time frame for which to retrieve traces.</p>
    # @option params [String] :time_range_type
    #   <p>Query trace summaries by TraceId (trace start time), Event (trace update time), or Service (trace segment end time).</p>
    # @option params [Boolean] :sampling
    #   <p>Set to <code>true</code> to get summaries for only a subset of available
    #         traces.</p>
    # @option params [Types::SamplingStrategy] :sampling_strategy
    #   <p>A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and
    #               Value.</p>
    # @option params [String] :filter_expression
    #   <p>Specify a filter expression to retrieve trace summaries for services or requests that
    #         meet certain requirements.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page
    #         of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     time_range_type: "TraceId" # One of: ["TraceId", "Event", "Service"],
    #     sampling: false,
    #     sampling_strategy: {
    #       name: "PartialScan" # One of: ["PartialScan", "FixedRate"],
    #       value: 1.0
    #     },
    #     filter_expression: "FilterExpression",
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_trace_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trace_summaries: [
    #       {
    #         id: "TraceId",
    #         start_time: Time.now,
    #         duration: 1.0,
    #         response_time: 1.0,
    #         has_fault: false,
    #         has_error: false,
    #         has_throttle: false,
    #         is_partial: false,
    #         http: {
    #           http_url: "String",
    #           http_status: 1,
    #           http_method: "String",
    #           user_agent: "String",
    #           client_ip: "String"
    #         },
    #         annotations: {
    #           "AnnotationKey" => [
    #             {
    #               annotation_value: {
    #                 # One of:
    #                 number_value: 1.0,
    #                 boolean_value: false,
    #                 string_value: "String"
    #               },
    #               service_ids: [
    #                 {
    #                   name: "String",
    #                   names: ["String"],
    #                   account_id: "String",
    #                   type: "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         users: [
    #           {
    #             user_name: "String",
    #             service_ids: [
    #               {
    #                 name: "String",
    #                 names: ["String"],
    #                 account_id: "String",
    #                 type: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         service_ids: [
    #           {
    #             name: "String",
    #             names: ["String"],
    #             account_id: "String",
    #             type: "String"
    #           }
    #         ],
    #         resource_ar_ns: [
    #           {
    #             arn: "String"
    #           }
    #         ],
    #         instance_ids: [
    #           {
    #             id: "String"
    #           }
    #         ],
    #         availability_zones: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         entry_point: {
    #           name: "String",
    #           names: ["String"],
    #           account_id: "String",
    #           type: "String"
    #         },
    #         fault_root_causes: [
    #           {
    #             services: [
    #               {
    #                 name: "String",
    #                 names: ["String"],
    #                 type: "String",
    #                 account_id: "String",
    #                 entity_path: [
    #                   {
    #                     name: "String",
    #                     exceptions: [
    #                       {
    #                         name: "String",
    #                         message: "String"
    #                       }
    #                     ],
    #                     remote: false
    #                   }
    #                 ],
    #                 inferred: false
    #               }
    #             ],
    #             client_impacting: false
    #           }
    #         ],
    #         error_root_causes: [
    #           {
    #             services: [
    #               {
    #                 name: "String",
    #                 names: ["String"],
    #                 type: "String",
    #                 account_id: "String",
    #                 entity_path: [
    #                   {
    #                     name: "String",
    #                     exceptions: [
    #                       {
    #                         name: "String",
    #                         message: "String"
    #                       }
    #                     ],
    #                     remote: false
    #                   }
    #                 ],
    #                 inferred: false
    #               }
    #             ],
    #             client_impacting: false
    #           }
    #         ],
    #         response_time_root_causes: [
    #           {
    #             services: [
    #               {
    #                 name: "String",
    #                 names: ["String"],
    #                 type: "String",
    #                 account_id: "String",
    #                 entity_path: [
    #                   {
    #                     name: "String",
    #                     coverage: 1.0,
    #                     remote: false
    #                   }
    #                 ],
    #                 inferred: false
    #               }
    #             ],
    #             client_impacting: false
    #           }
    #         ],
    #         revision: 1,
    #         matched_event_time: Time.now
    #       }
    #     ],
    #     approximate_time: Time.now,
    #     traces_processed_count: 1,
    #     next_token: "String"
    #   }
    # @return [Types::GetTraceSummariesResult]
    def get_trace_summaries(params = {}, options = {})
      request = build_request(:get_trace_summaries, params)
      request.send_request(options)
    end

    # <p>Returns the list of resource policies in the target Amazon Web Services account.</p>
    # @param [Hash, Types::ListResourcePoliciesRequest] params
    # @option params [String] :next_token
    #   <p>Not currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "ResourcePolicyNextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_document: "PolicyDocument",
    #         policy_revision_id: "PolicyRevisionId",
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "ResourcePolicyNextToken"
    #   }
    # @return [Types::ListResourcePoliciesResult]
    def list_resource_policies(params = {}, options = {})
      request = build_request(:list_resource_policies, params)
      request.send_request(options)
    end

    # <p>
    #   Retrieves a list of traces for a given <code>RetrievalToken</code> from the CloudWatch log group generated by Transaction Search. For information on what each trace returns, see <a href="https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html">BatchGetTraces</a>.
    # </p>
    #          <p>This API does not initiate a retrieval process. To start a trace retrieval, use <code>StartTraceRetrieval</code>, which generates the required <code>RetrievalToken</code>.</p>
    #          <p>
    #     When the <code>RetrievalStatus</code> is not <i>COMPLETE</i>, the API will return an empty response. Retry the request once the retrieval has completed to access the full list of traces.</p>
    #          <p>For cross-account observability, this API can retrieve traces from linked accounts when CloudWatch log is set as the destination across relevant accounts. For more details, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    #          <p>For retrieving data from X-Ray directly as opposed to the Transaction Search generated log group, see <a href="https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html">BatchGetTraces</a>.</p>
    # @param [Hash, Types::ListRetrievedTracesRequest] params
    # @option params [String] :retrieval_token
    #   <p>
    #   Retrieval token.
    #   </p>
    # @option params [String] :trace_format
    #   <p>
    #   Format of the requested traces.
    #   </p>
    # @option params [String] :next_token
    #   <p>
    #       Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       
    #       
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     retrieval_token: "RetrievalToken", # required
    #     trace_format: "XRAY" # One of: ["XRAY", "OTEL"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_retrieved_traces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retrieval_status: "SCHEDULED" # One of: ["SCHEDULED", "RUNNING", "COMPLETE", "FAILED", "CANCELLED", "TIMEOUT"],
    #     trace_format: "XRAY" # One of: ["XRAY", "OTEL"],
    #     traces: [
    #       {
    #         id: "TraceId",
    #         duration: 1.0,
    #         spans: [
    #           {
    #             id: "SpanId",
    #             document: "SpanDocument"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRetrievedTracesResult]
    def list_retrieved_traces(params = {}, options = {})
      request = build_request(:list_retrieved_traces, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    # @option params [String] :next_token
    #   <p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with 
    #       the current page of results as the value of this parameter to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     next_token: "String"
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
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Updates the encryption configuration for X-Ray data.</p>
    # @param [Hash, Types::PutEncryptionConfigRequest] params
    # @option params [String] :key_id
    #   <p>An Amazon Web Services KMS key in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Alias</b> - The name of the key. For example,
    #               <code>alias/MyKey</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Key ID</b> - The KMS key ID of the key. For example,
    #             <code>ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. Amazon Web Services X-Ray does not support asymmetric KMS keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ARN</b> - The full Amazon Resource Name of the key ID or alias.
    #             For example,
    #               <code>arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>.
    #             Use this format to specify a key in a different account.</p>
    #               </li>
    #            </ul>
    #            <p>Omit this key if you set <code>Type</code> to <code>NONE</code>.</p>
    # @option params [String] :type
    #   <p>The type of encryption. Set to <code>KMS</code> to use your own key for encryption. Set
    #         to <code>NONE</code> for default encryption.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "EncryptionKeyId",
    #     type: "NONE" # One of: ["NONE", "KMS"], # required
    #   }
    #   options = {}
    #   response = client.put_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_config: {
    #       key_id: "String",
    #       status: "UPDATING" # One of: ["UPDATING", "ACTIVE"],
    #       type: "NONE" # One of: ["NONE", "KMS"]
    #     }
    #   }
    # @return [Types::PutEncryptionConfigResult]
    def put_encryption_config(params = {}, options = {})
      request = build_request(:put_encryption_config, params)
      request.send_request(options)
    end

    # <p>
    #             Sets the resource policy to grant one or more Amazon Web Services services and accounts permissions to 
    #             access X-Ray. Each resource policy will be associated with a specific Amazon Web Services account. 
    #             Each Amazon Web Services account can have a maximum of 5 resource policies, and each policy name must be 
    #             unique within that account. The maximum size of each resource policy is 5KB.
    #         </p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the resource policy. Must be unique within a specific Amazon Web Services account.</p>
    # @option params [String] :policy_document
    #   <p>The resource policy document, which can be up to 5kb in size.</p>
    # @option params [String] :policy_revision_id
    #   <p>Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. 
    #               The revision id is unique to each policy in the account.</p>
    #            <p>If the policy revision id does not match the latest revision id, the operation will fail with an <code>InvalidPolicyRevisionIdException</code> exception. You can also provide a 
    #               <code>PolicyRevisionId</code> of 0. In this case, the operation will fail with an <code>InvalidPolicyRevisionIdException</code> exception if a resource policy with the same name already exists.
    #           </p>
    # @option params [Boolean] :bypass_policy_lockout_check
    #   <p>A flag to indicate whether to bypass the resource policy lockout safety check.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately.</p>
    #            </important>
    #            <p>Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent <code>PutResourcePolicy</code> request.</p>
    #            <p>The default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #     policy_revision_id: "PolicyRevisionId",
    #     bypass_policy_lockout_check: false
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       policy_name: "PolicyName",
    #       policy_document: "PolicyDocument",
    #       policy_revision_id: "PolicyRevisionId",
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::PutResourcePolicyResult]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Used by the Amazon Web Services X-Ray daemon to upload telemetry.</p>
    # @param [Hash, Types::PutTelemetryRecordsRequest] params
    # @option params [Array<Types::TelemetryRecord>] :telemetry_records
    #   <p></p>
    # @option params [String] :ec2_instance_id
    #   <p></p>
    # @option params [String] :hostname
    #   <p></p>
    # @option params [String] :resource_arn
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     telemetry_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code4_xx_count: 1,
    #           http_code5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1
    #         }
    #       }
    #     ],
    #     ec2_instance_id: "EC2InstanceId",
    #     hostname: "Hostname",
    #     resource_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.put_telemetry_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutTelemetryRecordsResult]
    def put_telemetry_records(params = {}, options = {})
      request = build_request(:put_telemetry_records, params)
      request.send_request(options)
    end

    # <p>Uploads segment documents to Amazon Web Services X-Ray. 
    #       A segment document can be a completed segment, an in-progress segment, or an array of
    #       subsegments.</p>
    #          <p>Segments must include the following fields. For the full segment document schema, see
    #       <a href="https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-api.html#xray-api-segmentdocuments.html">Amazon Web Services X-Ray
    #         Segment Documents</a> in the <i>Amazon Web Services X-Ray Developer Guide</i>.</p>
    #          <p class="title">
    #             <b>Required segment document fields</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>name</code> - The name of the service that handled the request.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>id</code> - A 64-bit identifier for the segment, unique among segments in the same trace, in 16
    #           hexadecimal digits.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>trace_id</code> - A unique identifier that connects all segments and subsegments originating from
    #           a single client request.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>start_time</code> - Time the segment or subsegment was created, in floating point seconds in
    #           epoch time, accurate to milliseconds. For example, <code>1480615200.010</code> or
    #             <code>1.480615200010E9</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>end_time</code> - Time the segment or subsegment was closed. For example,
    #             <code>1480615200.090</code> or <code>1.480615200090E9</code>. Specify either an <code>end_time</code> or
    #             <code>in_progress</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>in_progress</code> - Set to <code>true</code> instead of specifying an <code>end_time</code> to
    #           record that a segment has been started, but is not complete. Send an in-progress segment when your application
    #           receives a request that will take a long time to serve, to trace that the request was received. When the
    #           response is sent, send the complete segment to overwrite the in-progress segment.</p>
    #             </li>
    #          </ul>
    #          <p>A <code>trace_id</code> consists of three numbers separated by hyphens. For example,
    #       1-58406520-a006649127e371903a2de979. For trace IDs created by an X-Ray SDK, or by Amazon Web Services services 
    #       integrated with X-Ray, a trace ID includes:</p>
    #          <p class="title">
    #             <b>Trace ID Format</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The version number, for instance, <code>1</code>.</p>
    #             </li>
    #             <li>
    #                <p>The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For
    #           example, 10:00AM December 2nd, 2016 PST in epoch time is <code>1480615200</code> seconds,
    #           or <code>58406520</code> in hexadecimal.</p>
    #             </li>
    #             <li>
    #                <p>A 96-bit identifier for the trace, globally unique, in 24 hexadecimal
    #           digits.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Trace IDs created via OpenTelemetry have a different format based on the 
    #       <a href="https://www.w3.org/TR/trace-context/">W3C Trace Context specification</a>.
    #       A W3C trace ID must be formatted in the X-Ray trace ID format when sending to X-Ray. For example, a W3C
    #       trace ID <code>4efaaf4d1e8720b39541901950019ee5</code> should be formatted as 
    #       <code>1-4efaaf4d-1e8720b39541901950019ee5</code> when sending to X-Ray. While X-Ray trace IDs include 
    #       the original request timestamp in Unix epoch time, this is not required or validated.
    #     </p>
    #          </note>
    # @param [Hash, Types::PutTraceSegmentsRequest] params
    # @option params [Array<String>] :trace_segment_documents
    #   <p>A string containing a JSON document defining one or more segments or
    #         subsegments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_segment_documents: ["TraceSegmentDocument"], # required
    #   }
    #   options = {}
    #   response = client.put_trace_segments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_trace_segments: [
    #       {
    #         id: "String",
    #         error_code: "String",
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::PutTraceSegmentsResult]
    def put_trace_segments(params = {}, options = {})
      request = build_request(:put_trace_segments, params)
      request.send_request(options)
    end

    # <p>
    #   Initiates a trace retrieval process using the specified time range and for the given trace IDs in the  Transaction Search generated CloudWatch log group. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html">Transaction Search</a>.
    # </p>
    #          <p>API returns a <code>RetrievalToken</code>, which can be used with <code>ListRetrievedTraces</code> or <code>GetRetrievedTracesGraph</code> to fetch results. Retrievals will time out after 60 minutes. To execute long time ranges, consider segmenting into multiple retrievals.</p>
    #          <p>If you are using <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>, you can use this operation in a monitoring account to retrieve data from a linked source account, as long as both accounts have transaction search enabled.</p>
    #          <p>For retrieving data from X-Ray directly as opposed to the Transaction-Search Log group, see <a href="https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html">BatchGetTraces</a>.</p>
    # @param [Hash, Types::StartTraceRetrievalRequest] params
    # @option params [Array<String>] :trace_ids
    #   <p>
    #     Specify the trace IDs of the traces to be retrieved.
    #   </p>
    # @option params [Time] :start_time
    #   <p>
    #     The start of the time range to retrieve traces. The range is inclusive, so the specified start time is included in the query. 
    #     Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.
    #   </p>
    # @option params [Time] :end_time
    #   <p>
    #     The end of the time range to retrieve traces. The range is inclusive, so the specified end time is included in the query. Specified as epoch time,
    #     the number of seconds since January 1, 1970, 00:00:00 UTC.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_ids: ["TraceId"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.start_trace_retrieval(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retrieval_token: "RetrievalToken"
    #   }
    # @return [Types::StartTraceRetrievalResult]
    def start_trace_retrieval(params = {}, options = {})
      request = build_request(:start_trace_retrieval, params)
      request.send_request(options)
    end

    # <p>Applies tags to an existing Amazon Web Services X-Ray group or sampling rule.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray group or
    #         sampling rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #         in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #             / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services use. You
    #             cannot edit or delete system tags.</p>
    #               </li>
    #            </ul>
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

    # <p>Removes tags from an Amazon Web Services X-Ray group or sampling rule. You cannot edit or delete system
    #       tags (those with an <code>aws:</code> prefix).</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>
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

    # <p>Updates a group resource.</p>
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group.</p>
    # @option params [String] :group_arn
    #   <p>The ARN that was generated upon creation.</p>
    # @option params [String] :filter_expression
    #   <p>The updated filter expression defining criteria by which to group traces.</p>
    # @option params [Types::InsightsConfiguration] :insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #            <ul>
    #               <li>
    #                  <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       group or false to disable insights for the group.</p>
    #               </li>
    #               <li>
    #                  <p>The NotificationsEnabled boolean can be set to true to enable insights notifications for the group.
    #                       Notifications can only be enabled on a group with InsightsEnabled set to true.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     filter_expression: "FilterExpression",
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_name: "String",
    #       group_arn: "String",
    #       filter_expression: "String",
    #       insights_configuration: {
    #         insights_enabled: false,
    #         notifications_enabled: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateGroupResult]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>
    # Modifies an indexing rule’s configuration.
    # </p>
    #          <p>Indexing rules are used for determining the sampling rate for spans indexed from CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html">Transaction Search</a>.</p>
    # @param [Hash, Types::UpdateIndexingRuleRequest] params
    # @option params [String] :name
    #   <p>
    #     Name of the indexing rule to be updated.
    #   </p>
    # @option params [Types::IndexingRuleValueUpdate] :rule
    #   <p>
    #       Rule configuration to be updated.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     rule: { # required
    #       # One of:
    #       probabilistic: {
    #         desired_sampling_percentage: 1.0, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_indexing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     indexing_rule: {
    #       name: "RuleName",
    #       modified_at: Time.now,
    #       rule: {
    #         # One of:
    #         probabilistic: {
    #           desired_sampling_percentage: 1.0, # required
    #           actual_sampling_percentage: 1.0
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateIndexingRuleResult]
    def update_indexing_rule(params = {}, options = {})
      request = build_request(:update_indexing_rule, params)
      request.send_request(options)
    end

    # <p>Modifies a sampling rule's configuration.</p>
    # @param [Hash, Types::UpdateSamplingRuleRequest] params
    # @option params [Types::SamplingRuleUpdate] :sampling_rule_update
    #   <p>The rule and fields to change.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sampling_rule_update: { # required
    #       rule_name: "RuleName",
    #       rule_arn: "String",
    #       resource_arn: "ResourceARN",
    #       priority: 1,
    #       fixed_rate: 1.0,
    #       reservoir_size: 1,
    #       host: "Host",
    #       service_name: "ServiceName",
    #       service_type: "ServiceType",
    #       http_method: "HTTPMethod",
    #       url_path: "URLPath",
    #       attributes: {
    #         "AttributeKey" => "AttributeValue"
    #       },
    #       sampling_rate_boost: {
    #         max_rate: 1.0, # required
    #         cooldown_window_minutes: 1, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_sampling_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampling_rule_record: {
    #       sampling_rule: {
    #         rule_name: "RuleName",
    #         rule_arn: "String",
    #         resource_arn: "ResourceARN", # required
    #         priority: 1, # required
    #         fixed_rate: 1.0, # required
    #         reservoir_size: 1, # required
    #         service_name: "ServiceName", # required
    #         service_type: "ServiceType", # required
    #         host: "Host", # required
    #         http_method: "HTTPMethod", # required
    #         url_path: "URLPath", # required
    #         version: 1, # required
    #         attributes: {
    #           "AttributeKey" => "AttributeValue"
    #         },
    #         sampling_rate_boost: {
    #           max_rate: 1.0, # required
    #           cooldown_window_minutes: 1, # required
    #         }
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateSamplingRuleResult]
    def update_sampling_rule(params = {}, options = {})
      request = build_request(:update_sampling_rule, params)
      request.send_request(options)
    end

    # <p>
    #   Modifies the destination of data sent to <code>PutTraceSegments</code>. The Transaction Search feature requires the CloudWatchLogs destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html">Transaction Search</a>.
    # </p>
    # @param [Hash, Types::UpdateTraceSegmentDestinationRequest] params
    # @option params [String] :destination
    #   <p>
    #   The configured destination of trace segments.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination: "XRay" # One of: ["XRay", "CloudWatchLogs"]
    #   }
    #   options = {}
    #   response = client.update_trace_segment_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination: "XRay" # One of: ["XRay", "CloudWatchLogs"],
    #     status: "PENDING" # One of: ["PENDING", "ACTIVE"]
    #   }
    # @return [Types::UpdateTraceSegmentDestinationResult]
    def update_trace_segment_destination(params = {}, options = {})
      request = build_request(:update_trace_segment_destination, params)
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
      context[:gem_name] = 'aws-sdk-xray'
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
