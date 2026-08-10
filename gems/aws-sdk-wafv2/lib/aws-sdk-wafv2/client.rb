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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:wafv2)

module Aws::WAFV2
  # An API client for Aws::WAFV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSWAF20190729
    @identifier = :wafv2

    add_plugin(::Aws::WAFV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WAFV2::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Associates a web ACL with a resource, to protect the resource. </p>
    #          <p>Use this for all resource types except for Amazon CloudFront distributions. For Amazon CloudFront, call <code>UpdateDistribution</code> for the distribution and provide the Amazon Resource Name (ARN) of the web ACL in the web ACL ID. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    #          <p>
    #             <b>Required permissions for customer-managed IAM policies</b>
    #          </p>
    #          <p>This call requires permissions that are specific to the protected resource type. 
    #     For details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-AssociateWebACL">Permissions for AssociateWebACL</a> in the <i>WAF Developer Guide</i>. </p>
    #          <p>
    #             <b>Temporary inconsistencies during updates</b>
    #          </p>
    #          <p>When you create or change a web ACL or other WAF resources, the changes take a small amount of time to propagate to all areas where the resources are stored. The propagation time can be from a few seconds to a number of minutes. </p>
    #          <p>The following are examples of the temporary inconsistencies that you might notice during change propagation: </p>
    #          <ul>
    #             <li>
    #                <p>After you create a web ACL, if you try to associate it with a resource, you might get an exception indicating that the web ACL is unavailable. </p>
    #             </li>
    #             <li>
    #                <p>After you add a rule group to a web ACL, the new rule group rules might be in effect in one area where the web ACL is used and not in another.</p>
    #             </li>
    #             <li>
    #                <p>After you change a rule action setting, you might see the old action in some places and the new action in others. </p>
    #             </li>
    #             <li>
    #                <p>After you add an IP address to an IP set that is in use in a blocking rule, the new address might be blocked in one area while still allowed in another.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AssociateWebACLRequest] params
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with the
    #            resource.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the web ACL. </p>
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:<i>partition</i>:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:<i>partition</i>:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:<i>partition</i>:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Cognito user pool: <code>arn:<i>partition</i>:cognito-idp:<i>region</i>:<i>account-id</i>:userpool/<i>user-pool-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an App Runner service: <code>arn:<i>partition</i>:apprunner:<i>region</i>:<i>account-id</i>:service/<i>apprunner-service-name</i>/<i>apprunner-service-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Verified Access instance: <code>arn:<i>partition</i>:ec2:<i>region</i>:<i>account-id</i>:verified-access-instance/<i>instance-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amplify application: <code>arn:<i>partition</i>:amplify:<i>region</i>:<i>account-id</i>:apps/<i>app-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_arn: "ResourceArn", # required
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.associate_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateWebACLResponse]
    def associate_web_acl(params = {}, options = {})
      request = build_request(:associate_web_acl, params)
      request.send_request(options)
    end

    # <p>Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules. 
    #          You can use this to check the capacity requirements for the rules you want to use in a 
    #          <a>RuleGroup</a> or <a>WebACL</a>. 
    #          </p>
    #          <p>WAF uses WCUs to calculate and control the operating
    #          resources that are used to run your rules, rule groups, and web ACLs. WAF
    #          calculates capacity differently for each rule type, to reflect the relative cost of each rule. 
    #          Simple rules that cost little to run use fewer WCUs than more complex rules
    # 				that use more processing power. 
    # 				Rule group capacity is fixed at creation, which helps users plan their  
    #          web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a> 
    #     in the <i>WAF Developer Guide</i>. </p>
    # @param [Hash, Types::CheckCapacityRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Rule>] :rules
    #   <p>An array of <a>Rule</a> that you're configuring to use in a rule group or web
    #            ACL. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     rules: [ # required
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             evaluation_window_sec: 1,
    #             aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #                 uri_path: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 asn: {
    #                 }
    #               }
    #             ]
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             }
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                   enable_machine_learning: false
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     }
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ]
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_anti_d_do_s_rule_set: {
    #                   client_side_action_config: { # required
    #                     challenge: { # required
    #                       usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                       sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                       exempt_uri_regular_expressions: [
    #                         {
    #                           regex_string: "RegexPatternString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                 }
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           asn_match_statement: {
    #             asn_list: [1], # required
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           }
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           none: {
    #           }
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           }
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.check_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity: 1
    #   }
    # @return [Types::CheckCapacityResponse]
    def check_capacity(params = {}, options = {})
      request = build_request(:check_capacity, params)
      request.send_request(options)
    end

    # <p>Creates an API key that contains a set of token domains.</p>
    #          <p>API keys are required for the integration of the CAPTCHA API in your JavaScript client applications. 
    #            The API lets you customize the placement and characteristics of the CAPTCHA puzzle for your end users. 
    #            For more information about the CAPTCHA JavaScript integration, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    #          <p>You can use a single key for up to 5 domains. After you generate a key, you can copy it for use in your JavaScript 
    #            integration. </p>
    # @param [Hash, Types::CreateAPIKeyRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :token_domains
    #   <p>The client application domains that you want to use this API key for.  </p>
    #            <p>Example JSON: <code>"TokenDomains": ["abc.com", "store.abc.com"]</code>
    #            </p>
    #            <p>Public suffixes aren't allowed. For example, you can't use <code>gov.au</code> or <code>co.uk</code> as token domains.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     token_domains: ["TokenDomain"], # required
    #   }
    #   options = {}
    #   response = client.create_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key: "APIKey"
    #   }
    # @return [Types::CreateAPIKeyResponse]
    def create_api_key(params = {}, options = {})
      request = build_request(:create_api_key, params)
      request.send_request(options)
    end

    # <p>Creates an <a>IPSet</a>, which you use to identify web requests that
    #          originate from specific IP addresses or ranges of IP addresses. For example, if you're
    #          receiving a lot of requests from a ranges of IP addresses, you can configure WAF to
    #          block them using an IPSet that lists those IP addresses. </p>
    # @param [Hash, Types::CreateIPSetRequest] params
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>A description of the IP set that helps with identification. </p>
    # @option params [String] :ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    # @option params [Array<String>] :addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses that you want WAF to inspect for in incoming requests. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for <code>/0</code>. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>For requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     description: "EntityDescription",
    #     ip_address_version: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #     addresses: ["IPAddress"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       name: "EntityName",
    #       id: "EntityId",
    #       description: "EntityDescription",
    #       lock_token: "LockToken",
    #       arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::CreateIPSetResponse]
    def create_ip_set(params = {}, options = {})
      request = build_request(:create_ip_set, params)
      request.send_request(options)
    end

    # <p>Creates a <a>RegexPatternSet</a>, which you reference in a <a>RegexPatternSetReferenceStatement</a>, to have WAF inspect a web request
    #          component for the specified patterns.</p>
    # @param [Hash, Types::CreateRegexPatternSetRequest] params
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>A description of the set that helps with identification. </p>
    # @option params [Array<Types::Regex>] :regular_expression_list
    #   <p>Array of regular expression strings. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     description: "EntityDescription",
    #     regular_expression_list: [ # required
    #       {
    #         regex_string: "RegexPatternString"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       name: "EntityName",
    #       id: "EntityId",
    #       description: "EntityDescription",
    #       lock_token: "LockToken",
    #       arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::CreateRegexPatternSetResponse]
    def create_regex_pattern_set(params = {}, options = {})
      request = build_request(:create_regex_pattern_set, params)
      request.send_request(options)
    end

    # <p>Creates a <a>RuleGroup</a> per the specifications provided. </p>
    #          <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>
    # @param [Hash, Types::CreateRuleGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #            <p>When you create your own rule group, you define this, and you cannot change it after creation. 
    #             When you add or modify the rules in a rule group, WAF enforces this limit. You can check the capacity 
    #             for a set of rules using <a>CheckCapacity</a>.</p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule. 
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power. 
    #   				Rule group capacity is fixed at creation, which helps users plan their  
    #            web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a> 
    #       in the <i>WAF Developer Guide</i>. </p>
    # @option params [String] :description
    #   <p>A description of the rule group that helps with identification. </p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you 
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching  
    #            web requests, and parameters that govern how WAF handles them. 
    #         </p>
    # @option params [Types::VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    # @option params [Hash<String, Types::CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, 
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> 
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> 
    #        in the <i>WAF Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     capacity: 1, # required
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             evaluation_window_sec: 1,
    #             aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #                 uri_path: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 asn: {
    #                 }
    #               }
    #             ]
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             }
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                   enable_machine_learning: false
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     }
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ]
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_anti_d_do_s_rule_set: {
    #                   client_side_action_config: { # required
    #                     challenge: { # required
    #                       usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                       sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                       exempt_uri_regular_expressions: [
    #                         {
    #                           regex_string: "RegexPatternString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                 }
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           asn_match_statement: {
    #             asn_list: [1], # required
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           }
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           none: {
    #           }
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           }
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #         content: "ResponseContent", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       name: "EntityName",
    #       id: "EntityId",
    #       description: "EntityDescription",
    #       lock_token: "LockToken",
    #       arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::CreateRuleGroupResponse]
    def create_rule_group(params = {}, options = {})
      request = build_request(:create_rule_group, params)
      request.send_request(options)
    end

    # <p>Creates a <a>WebACL</a> per the specifications provided.</p>
    #          <p> A web ACL defines a collection of rules to use to inspect and control web requests. Each rule has a statement that defines what to look for in web requests and an action that WAF applies to requests that match the statement. In the web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a web ACL with one or more Amazon Web Services resources to protect. The resource types include Amazon CloudFront distribution, Amazon API Gateway REST API, Application Load Balancer, AppSync GraphQL API, Amazon Cognito user pool, App Runner service, Amplify application, and Amazon Web Services Verified Access instance.  </p>
    # @param [Hash, Types::CreateWebACLRequest] params
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [Types::DefaultAction] :default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    # @option params [String] :description
    #   <p>A description of the web ACL that helps with identification. </p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you 
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching  
    #            web requests, and parameters that govern how WAF handles them. 
    #         </p>
    # @option params [Types::VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    # @option params [Types::DataProtectionConfig] :data_protection_config
    #   <p>Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. </p>
    #            <p>The data protection that you configure for the web ACL alters the data that's available for any other data collection activity, 
    #     including your WAF logging destinations, web ACL request sampling, and Amazon Security Lake data collection and management. Your other option for data protection is in the logging configuration, which only affects logging. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    # @option params [Hash<String, Types::CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, 
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> 
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> 
    #        in the <i>WAF Developer Guide</i>. </p>
    # @option params [Types::CaptchaConfig] :captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    # @option params [Types::ChallengeConfig] :challenge_config
    #   <p>Specifies how WAF should handle challenge evaluations for rules that don't have 
    #   their own <code>ChallengeConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>ChallengeConfig</code>. </p>
    # @option params [Array<String>] :token_domains
    #   <p>Specifies the domains that WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When WAF provides a token, it uses the domain of the Amazon Web Services resource that the web ACL is protecting. If you don't specify a list of token domains, WAF accepts tokens only for the domain of the protected resource. With a token domain list, WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.</p>
    #            <p>Example JSON: <code>"TokenDomains": { "mywebsite.com", "myotherwebsite.com" }</code>
    #            </p>
    #            <p>Public suffixes aren't allowed. For example, you can't use <code>gov.au</code> or <code>co.uk</code> as token domains.</p>
    # @option params [Types::AssociationConfig] :association_config
    #   <p>Specifies custom configurations for the associations between the web ACL and protected resources.  </p>
    #            <p>Use this to customize the maximum size of the request body that your protected resources forward to WAF for inspection. You can 
    #       customize this setting for CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resources. The default setting is 16 KB (16,384 bytes). </p>
    #            <note>
    #               <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #            <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    # @option params [Types::OnSourceDDoSProtectionConfig] :on_source_d_do_s_protection_config
    #   <p>Specifies the type of DDoS protection to apply to web request data for a web ACL. For most scenarios, it is recommended to use the default protection level, <code>ACTIVE_UNDER_DDOS</code>. 
    #      If a web ACL is associated with multiple Application Load Balancers, the changes you make to DDoS protection in that web ACL will apply to all associated Application Load Balancers.</p>
    # @option params [Types::ApplicationConfig] :application_config
    #   <p>Configures the ability for the WAF console to store and retrieve application attributes during the web ACL creation process. Application attributes help WAF give recommendations for protection packs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     default_action: { # required
    #       block: {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: "EntityName",
    #           response_headers: [
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       allow: {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             evaluation_window_sec: 1,
    #             aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #                 uri_path: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 asn: {
    #                 }
    #               }
    #             ]
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             }
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                   enable_machine_learning: false
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     }
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ]
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_anti_d_do_s_rule_set: {
    #                   client_side_action_config: { # required
    #                     challenge: { # required
    #                       usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                       sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                       exempt_uri_regular_expressions: [
    #                         {
    #                           regex_string: "RegexPatternString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                 }
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           asn_match_statement: {
    #             asn_list: [1], # required
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           }
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           none: {
    #           }
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           }
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     data_protection_config: {
    #       data_protections: [ # required
    #         {
    #           field: { # required
    #             field_type: "SINGLE_HEADER" # One of: ["SINGLE_HEADER", "SINGLE_COOKIE", "SINGLE_QUERY_ARGUMENT", "QUERY_STRING", "BODY"], # required
    #             field_keys: ["FieldToProtectKeyName"]
    #           },
    #           action: "SUBSTITUTION" # One of: ["SUBSTITUTION", "HASH"], # required
    #           exclude_rule_match_details: false,
    #           exclude_rate_based_details: false
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #         content: "ResponseContent", # required
    #       }
    #     },
    #     captcha_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       }
    #     },
    #     challenge_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       }
    #     },
    #     token_domains: ["TokenDomain"],
    #     association_config: {
    #       request_body: {
    #         "AssociatedResourceType" => {
    #           default_size_inspection_limit: "KB_16" # One of: ["KB_16", "KB_32", "KB_48", "KB_64"], # required
    #         }
    #       }
    #     },
    #     on_source_d_do_s_protection_config: {
    #       alb_low_reputation_mode: "ACTIVE_UNDER_DDOS" # One of: ["ACTIVE_UNDER_DDOS", "ALWAYS_ON"], # required
    #     },
    #     application_config: {
    #       attributes: [
    #         {
    #           name: "AttributeName",
    #           values: ["AttributeValue"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       name: "EntityName",
    #       id: "EntityId",
    #       description: "EntityDescription",
    #       lock_token: "LockToken",
    #       arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::CreateWebACLResponse]
    def create_web_acl(params = {}, options = {})
      request = build_request(:create_web_acl, params)
      request.send_request(options)
    end

    # <p>Deletes the specified API key. </p>
    #          <p>After you delete a key, it can take up to 24 hours for WAF to disallow use of the key in all regions. </p>
    # @param [Hash, Types::DeleteAPIKeyRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :api_key
    #   <p>The encrypted API key that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     api_key: "APIKey", # required
    #   }
    #   options = {}
    #   response = client.delete_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAPIKeyResponse]
    def delete_api_key(params = {}, options = {})
      request = build_request(:delete_api_key, params)
      request.send_request(options)
    end

    # <p>Deletes all rule groups that are managed by Firewall Manager from the specified <a>WebACL</a>. </p>
    #          <p>You can only use this if <code>ManagedByFirewallManager</code> and <code>RetrofittedByFirewallManager</code> are both false in the web ACL. </p>
    # @param [Hash, Types::DeleteFirewallManagerRuleGroupsRequest] params
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    # @option params [String] :web_acl_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_arn: "ResourceArn", # required
    #     web_acl_lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.delete_firewall_manager_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_web_acl_lock_token: "LockToken"
    #   }
    # @return [Types::DeleteFirewallManagerRuleGroupsResponse]
    def delete_firewall_manager_rule_groups(params = {}, options = {})
      request = build_request(:delete_firewall_manager_rule_groups, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>IPSet</a>. </p>
    # @param [Hash, Types::DeleteIPSetRequest] params
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.delete_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIPSetResponse]
    def delete_ip_set(params = {}, options = {})
      request = build_request(:delete_ip_set, params)
      request.send_request(options)
    end

    # <p>Deletes the <a>LoggingConfiguration</a> from the specified web ACL.</p>
    # @param [Hash, Types::DeleteLoggingConfigurationRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>
    # @option params [String] :log_type
    #   <p>Used to distinguish between various logging options. Currently, there is one option.</p>
    #            <p>Default: <code>WAF_LOGS</code>
    #            </p>
    # @option params [String] :log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see 
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     log_type: "WAF_LOGS" # One of: ["WAF_LOGS"],
    #     log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #   }
    #   options = {}
    #   response = client.delete_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLoggingConfigurationResponse]
    def delete_logging_configuration(params = {}, options = {})
      request = build_request(:delete_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Permanently deletes an IAM policy from the specified rule group.</p>
    #          <p>You must be the owner of the rule group to perform this operation.</p>
    # @param [Hash, Types::DeletePermissionPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group from which you want to delete the
    #            policy.</p>
    #            <p>You must be the owner of the rule group to perform this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_permission_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePermissionPolicyResponse]
    def delete_permission_policy(params = {}, options = {})
      request = build_request(:delete_permission_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>RegexPatternSet</a>.</p>
    # @param [Hash, Types::DeleteRegexPatternSetRequest] params
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.delete_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRegexPatternSetResponse]
    def delete_regex_pattern_set(params = {}, options = {})
      request = build_request(:delete_regex_pattern_set, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>RuleGroup</a>.</p>
    # @param [Hash, Types::DeleteRuleGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.delete_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleGroupResponse]
    def delete_rule_group(params = {}, options = {})
      request = build_request(:delete_rule_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>WebACL</a>. </p>
    #          <p>You can only use this if <code>ManagedByFirewallManager</code> is false in the web ACL. </p>
    #          <note>
    #             <p>Before deleting any web ACL, first disassociate it from all resources.</p>
    #             <ul>
    #                <li>
    #                   <p>To retrieve a list of the resources that are associated with a web ACL, use the
    #                   following calls:</p>
    #                   <ul>
    #                      <li>
    #                         <p>For Amazon CloudFront distributions, use the CloudFront call
    #                            <code>ListDistributionsByWebACLId</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html">ListDistributionsByWebACLId</a> 
    #                                in the <i>Amazon CloudFront API Reference</i>. </p>
    #                      </li>
    #                      <li>
    #                         <p>For all other resources, call <a>ListResourcesForWebACL</a>.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #                <li>
    #                   <p>To disassociate a resource from a web ACL, use the following calls:</p>
    #                   <ul>
    #                      <li>
    #                         <p>For Amazon CloudFront distributions, provide an empty web ACL ID in the CloudFront call
    #                            <code>UpdateDistribution</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a>
    #                                in the <i>Amazon CloudFront API Reference</i>. </p>
    #                      </li>
    #                      <li>
    #                         <p>For all other resources, call <a>DisassociateWebACL</a>.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteWebACLRequest] params
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.delete_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWebACLResponse]
    def delete_web_acl(params = {}, options = {})
      request = build_request(:delete_web_acl, params)
      request.send_request(options)
    end

    # <p>Provides high-level information for the Amazon Web Services Managed Rules rule groups and Amazon Web Services Marketplace managed rule groups. </p>
    # @param [Hash, Types::DescribeAllManagedProductsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #   }
    #   options = {}
    #   response = client.describe_all_managed_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_products: [
    #       {
    #         vendor_name: "VendorName",
    #         managed_rule_set_name: "EntityName",
    #         product_id: "ProductId",
    #         product_link: "ProductLink",
    #         product_title: "ProductTitle",
    #         product_description: "ProductDescription",
    #         sns_topic_arn: "ResourceArn",
    #         is_versioning_supported: false,
    #         is_advanced_managed_rule_set: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAllManagedProductsResponse]
    def describe_all_managed_products(params = {}, options = {})
      request = build_request(:describe_all_managed_products, params)
      request.send_request(options)
    end

    # <p>Provides high-level information for the managed rule groups owned by a specific vendor.  </p>
    # @param [Hash, Types::DescribeManagedProductsByVendorRequest] params
    # @option params [String] :vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     vendor_name: "VendorName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #   }
    #   options = {}
    #   response = client.describe_managed_products_by_vendor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_products: [
    #       {
    #         vendor_name: "VendorName",
    #         managed_rule_set_name: "EntityName",
    #         product_id: "ProductId",
    #         product_link: "ProductLink",
    #         product_title: "ProductTitle",
    #         product_description: "ProductDescription",
    #         sns_topic_arn: "ResourceArn",
    #         is_versioning_supported: false,
    #         is_advanced_managed_rule_set: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeManagedProductsByVendorResponse]
    def describe_managed_products_by_vendor(params = {}, options = {})
      request = build_request(:describe_managed_products_by_vendor, params)
      request.send_request(options)
    end

    # <p>Provides high-level information for a managed rule group, including descriptions of the rules. </p>
    # @param [Hash, Types::DescribeManagedRuleGroupRequest] params
    # @option params [String] :vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    # @option params [String] :name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :version_name
    #   <p>The version of the rule group. You can only use a version that is not scheduled for
    #            expiration. If you don't provide this, WAF uses the vendor's default version. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vendor_name: "VendorName", # required
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     version_name: "VersionKeyString"
    #   }
    #   options = {}
    #   response = client.describe_managed_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version_name: "VersionKeyString",
    #     sns_topic_arn: "ResourceArn",
    #     capacity: 1,
    #     rules: [
    #       {
    #         name: "EntityName",
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     label_namespace: "LabelName",
    #     available_labels: [
    #       {
    #         name: "LabelName"
    #       }
    #     ],
    #     consumed_labels: [
    #       {
    #         name: "LabelName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeManagedRuleGroupResponse]
    def describe_managed_rule_group(params = {}, options = {})
      request = build_request(:describe_managed_rule_group, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified resource from its web ACL
    #          association, if it has one. </p>
    #          <p>Use this for all resource types except for Amazon CloudFront distributions. For Amazon CloudFront, call <code>UpdateDistribution</code> for the distribution and provide an empty web ACL ID. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a> in the <i>Amazon CloudFront API Reference</i>. </p>
    #          <p>
    #             <b>Required permissions for customer-managed IAM policies</b>
    #          </p>
    #          <p>This call requires permissions that are specific to the protected resource type. 
    #     For details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-DisassociateWebACL">Permissions for DisassociateWebACL</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::DisassociateWebACLRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to disassociate from the web ACL. </p>
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:<i>partition</i>:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:<i>partition</i>:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:<i>partition</i>:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Cognito user pool: <code>arn:<i>partition</i>:cognito-idp:<i>region</i>:<i>account-id</i>:userpool/<i>user-pool-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an App Runner service: <code>arn:<i>partition</i>:apprunner:<i>region</i>:<i>account-id</i>:service/<i>apprunner-service-name</i>/<i>apprunner-service-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Verified Access instance: <code>arn:<i>partition</i>:ec2:<i>region</i>:<i>account-id</i>:verified-access-instance/<i>instance-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amplify application: <code>arn:<i>partition</i>:amplify:<i>region</i>:<i>account-id</i>:apps/<i>app-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWebACLResponse]
    def disassociate_web_acl(params = {}, options = {})
      request = build_request(:disassociate_web_acl, params)
      request.send_request(options)
    end

    # <p>Generates a presigned download URL for the specified release of the mobile SDK.</p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see 
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::GenerateMobileSdkReleaseUrlRequest] params
    # @option params [String] :platform
    #   <p>The device platform.</p>
    # @option params [String] :release_version
    #   <p>The release version. For the latest available version, specify
    #            <code>LATEST</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform: "IOS" # One of: ["IOS", "ANDROID"], # required
    #     release_version: "VersionKeyString", # required
    #   }
    #   options = {}
    #   response = client.generate_mobile_sdk_release_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "DownloadUrl"
    #   }
    # @return [Types::GenerateMobileSdkReleaseUrlResponse]
    def generate_mobile_sdk_release_url(params = {}, options = {})
      request = build_request(:generate_mobile_sdk_release_url, params)
      request.send_request(options)
    end

    # <p>Returns your API key in decrypted form. Use this to check the token domains that you have defined for the key. </p>
    #          <p>API keys are required for the integration of the CAPTCHA API in your JavaScript client applications. 
    #            The API lets you customize the placement and characteristics of the CAPTCHA puzzle for your end users. 
    #            For more information about the CAPTCHA JavaScript integration, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::GetDecryptedAPIKeyRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :api_key
    #   <p>The encrypted API key. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     api_key: "APIKey", # required
    #   }
    #   options = {}
    #   response = client.get_decrypted_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_domains: ["TokenDomain"],
    #     creation_timestamp: Time.now
    #   }
    # @return [Types::GetDecryptedAPIKeyResponse]
    def get_decrypted_api_key(params = {}, options = {})
      request = build_request(:get_decrypted_api_key, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified <a>IPSet</a>.</p>
    # @param [Hash, Types::GetIPSetRequest] params
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_set: {
    #       name: "EntityName", # required
    #       id: "EntityId", # required
    #       arn: "ResourceArn", # required
    #       description: "EntityDescription",
    #       ip_address_version: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #       addresses: ["IPAddress"], # required
    #     },
    #     lock_token: "LockToken"
    #   }
    # @return [Types::GetIPSetResponse]
    def get_ip_set(params = {}, options = {})
      request = build_request(:get_ip_set, params)
      request.send_request(options)
    end

    # <p>Returns the <a>LoggingConfiguration</a> for the specified web ACL.</p>
    # @param [Hash, Types::GetLoggingConfigurationRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>
    # @option params [String] :log_type
    #   <p>Used to distinguish between various logging options. Currently, there is one option.</p>
    #            <p>Default: <code>WAF_LOGS</code>
    #            </p>
    # @option params [String] :log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see 
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     log_type: "WAF_LOGS" # One of: ["WAF_LOGS"],
    #     log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #   }
    #   options = {}
    #   response = client.get_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: {
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           headers: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_headers: ["FieldToMatchData"],
    #               excluded_headers: ["FieldToMatchData"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           cookies: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_cookies: ["SingleCookieName"],
    #               excluded_cookies: ["SingleCookieName"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           header_order: {
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           ja3_fingerprint: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #           },
    #           ja4_fingerprint: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #           },
    #           uri_fragment: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #           }
    #         }
    #       ],
    #       managed_by_firewall_manager: false,
    #       logging_filter: {
    #         filters: [ # required
    #           {
    #             behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #             requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"], # required
    #             conditions: [ # required
    #               {
    #                 action_condition: {
    #                   action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"], # required
    #                 },
    #                 label_name_condition: {
    #                   label_name: "LabelName", # required
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         default_behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #       },
    #       log_type: "WAF_LOGS" # One of: ["WAF_LOGS"],
    #       log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #     }
    #   }
    # @return [Types::GetLoggingConfigurationResponse]
    def get_logging_configuration(params = {}, options = {})
      request = build_request(:get_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified managed rule set. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @param [Hash, Types::GetManagedRuleSetRequest] params
    # @option params [String] :name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_rule_set: {
    #       name: "EntityName", # required
    #       id: "EntityId", # required
    #       arn: "ResourceArn", # required
    #       description: "EntityDescription",
    #       published_versions: {
    #         "VersionKeyString" => {
    #           associated_rule_group_arn: "ResourceArn",
    #           capacity: 1,
    #           forecasted_lifetime: 1,
    #           publish_timestamp: Time.now,
    #           last_update_timestamp: Time.now,
    #           expiry_timestamp: Time.now
    #         }
    #       },
    #       recommended_version: "VersionKeyString",
    #       label_namespace: "LabelName"
    #     },
    #     lock_token: "LockToken"
    #   }
    # @return [Types::GetManagedRuleSetResponse]
    def get_managed_rule_set(params = {}, options = {})
      request = build_request(:get_managed_rule_set, params)
      request.send_request(options)
    end

    # <p>Retrieves information for the specified mobile SDK release, including release notes and
    #          tags.</p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see 
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::GetMobileSdkReleaseRequest] params
    # @option params [String] :platform
    #   <p>The device platform.</p>
    # @option params [String] :release_version
    #   <p>The release version. For the latest available version, specify
    #            <code>LATEST</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform: "IOS" # One of: ["IOS", "ANDROID"], # required
    #     release_version: "VersionKeyString", # required
    #   }
    #   options = {}
    #   response = client.get_mobile_sdk_release(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mobile_sdk_release: {
    #       release_version: "VersionKeyString",
    #       timestamp: Time.now,
    #       release_notes: "ReleaseNotes",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMobileSdkReleaseResponse]
    def get_mobile_sdk_release(params = {}, options = {})
      request = build_request(:get_mobile_sdk_release, params)
      request.send_request(options)
    end

    # <p>Returns the IAM policy that is attached to the specified rule group.</p>
    #          <p>You must be the owner of the rule group to perform this operation.</p>
    # @param [Hash, Types::GetPermissionPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group for which you want to get the
    #            policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_permission_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyString"
    #   }
    # @return [Types::GetPermissionPolicyResponse]
    def get_permission_policy(params = {}, options = {})
      request = build_request(:get_permission_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the IP addresses that are currently blocked by a rate-based rule instance. This
    #        is only available for rate-based rules that aggregate solely on the IP address or on the forwarded IP 
    #        address. </p>
    #          <p>The maximum
    #          number of addresses that can be blocked for a single rate-based rule instance is 10,000.
    #          If more than 10,000 addresses exceed the rate limit, those with the highest rates are
    #          blocked.</p>
    #          <p>For a rate-based rule that you've defined inside a rule group, provide the name of the
    #          rule group reference statement in your request, in addition to the rate-based rule name and
    #          the web ACL name. </p>
    #          <p>WAF monitors web requests and manages keys independently for each unique combination
    #          of web ACL, optional rule group, and rate-based rule. For example, if you define a
    #          rate-based rule inside a rule group, and then use the rule group in a web ACL, WAF
    #          monitors web requests and manages keys for that web ACL, rule group reference statement,
    #          and rate-based rule instance. If you use the same rule group in a second web ACL, WAF
    #          monitors web requests and manages keys for this second usage completely independent of your
    #          first. </p>
    # @param [Hash, Types::GetRateBasedStatementManagedKeysRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :web_acl_name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    # @option params [String] :web_acl_id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :rule_group_rule_name
    #   <p>The name of the rule group reference statement in your web ACL. This is required only
    #            when you have the rate-based rule nested inside a rule group. </p>
    # @option params [String] :rule_name
    #   <p>The name of the rate-based rule to get the keys for. If you have the rule defined inside
    #            a rule group that you're using in your web ACL, also provide the name of the rule group
    #            reference statement in the request parameter <code>RuleGroupRuleName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     web_acl_name: "EntityName", # required
    #     web_acl_id: "EntityId", # required
    #     rule_group_rule_name: "EntityName",
    #     rule_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.get_rate_based_statement_managed_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_keys_ipv4: {
    #       ip_address_version: "IPV4" # One of: ["IPV4", "IPV6"],
    #       addresses: ["IPAddress"]
    #     },
    #     managed_keys_ipv6: {
    #       ip_address_version: "IPV4" # One of: ["IPV4", "IPV6"],
    #       addresses: ["IPAddress"]
    #     }
    #   }
    # @return [Types::GetRateBasedStatementManagedKeysResponse]
    def get_rate_based_statement_managed_keys(params = {}, options = {})
      request = build_request(:get_rate_based_statement_managed_keys, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified <a>RegexPatternSet</a>.</p>
    # @param [Hash, Types::GetRegexPatternSetRequest] params
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regex_pattern_set: {
    #       name: "EntityName",
    #       id: "EntityId",
    #       arn: "ResourceArn",
    #       description: "EntityDescription",
    #       regular_expression_list: [
    #         {
    #           regex_string: "RegexPatternString"
    #         }
    #       ]
    #     },
    #     lock_token: "LockToken"
    #   }
    # @return [Types::GetRegexPatternSetResponse]
    def get_regex_pattern_set(params = {}, options = {})
      request = build_request(:get_regex_pattern_set, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified <a>RuleGroup</a>.</p>
    # @param [Hash, Types::GetRuleGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName",
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"],
    #     id: "EntityId",
    #     arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.get_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_group: {
    #       name: "EntityName", # required
    #       id: "EntityId", # required
    #       capacity: 1, # required
    #       arn: "ResourceArn", # required
    #       description: "EntityDescription",
    #       rules: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           statement: { # required
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ],
    #               positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ],
    #               sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               }
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #               }
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               evaluation_window_sec: 1,
    #               aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               custom_keys: [
    #                 {
    #                   header: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   cookie: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   query_argument: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   query_string: {
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   http_method: {
    #                   },
    #                   forwarded_ip: {
    #                   },
    #                   ip: {
    #                   },
    #                   label_namespace: {
    #                     namespace: "LabelNamespace", # required
    #                   },
    #                   uri_path: {
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   ja3_fingerprint: {
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   ja4_fingerprint: {
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   asn: {
    #                   }
    #                 }
    #               ]
    #             },
    #             and_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 }
    #               ]
    #             },
    #             or_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 }
    #               ]
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               }
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             label_match_statement: {
    #               scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             asn_match_statement: {
    #               asn_list: [1], # required
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               }
    #             }
    #           },
    #           action: {
    #             block: {
    #               custom_response: {
    #                 response_code: 1, # required
    #                 custom_response_body_key: "EntityName",
    #                 response_headers: [
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             allow: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             captcha: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             challenge: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           },
    #           override_action: {
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           rule_labels: [
    #             {
    #               name: "LabelName", # required
    #             }
    #           ],
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           },
    #           captcha_config: {
    #             immunity_time_property: {
    #               immunity_time: 1, # required
    #             }
    #           },
    #           challenge_config: {
    #             immunity_time_property: {
    #               immunity_time: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       visibility_config: { # required
    #         sampled_requests_enabled: false, # required
    #         cloud_watch_metrics_enabled: false, # required
    #         metric_name: "MetricName", # required
    #       },
    #       label_namespace: "LabelName",
    #       custom_response_bodies: {
    #         "EntityName" => {
    #           content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #           content: "ResponseContent", # required
    #         }
    #       },
    #       available_labels: [
    #         {
    #           name: "LabelName"
    #         }
    #       ],
    #       consumed_labels: [
    #         {
    #           name: "LabelName"
    #         }
    #       ]
    #     },
    #     lock_token: "LockToken"
    #   }
    # @return [Types::GetRuleGroupResponse]
    def get_rule_group(params = {}, options = {})
      request = build_request(:get_rule_group, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about a specified number of requests--a sample--that WAF
    #          randomly selects from among the first 5,000 requests that your Amazon Web Services resource received
    #          during a time range that you choose. You can specify a sample size of up to 500 requests,
    #          and you can specify any time range in the previous three hours.</p>
    #          <p>
    #             <code>GetSampledRequests</code> returns a time range, which is usually the time range that
    #          you specified. However, if your resource (such as a CloudFront distribution) received 5,000
    #          requests before the specified time range elapsed, <code>GetSampledRequests</code> returns
    #          an updated time range. This new time range indicates the actual period during which WAF
    #          selected the requests in the sample.</p>
    # @param [Hash, Types::GetSampledRequestsRequest] params
    # @option params [String] :web_acl_arn
    #   <p>The Amazon resource name (ARN) of the <code>WebACL</code> for which you want a sample of
    #            requests.</p>
    # @option params [String] :rule_metric_name
    #   <p>The metric name assigned to the <code>Rule</code> or <code>RuleGroup</code> dimension for which
    #            you want a sample of requests.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [Types::TimeWindow] :time_window
    #   <p>The start date and time and the end date and time of the range for which you want
    #               <code>GetSampledRequests</code> to return a sample of requests. You must specify the
    #            times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #            designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify
    #            any time range in the previous three hours. If you specify a start time that's earlier than
    #            three hours ago, WAF sets it to three hours ago.</p>
    # @option params [Integer] :max_items
    #   <p>The number of requests that you want WAF to return from among the first 5,000
    #            requests that your Amazon Web Services resource received during the time range. If your resource received
    #            fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code>
    #            returns information about all of them. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_arn: "ResourceArn", # required
    #     rule_metric_name: "MetricName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     time_window: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     max_items: 1, # required
    #   }
    #   options = {}
    #   response = client.get_sampled_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampled_requests: [
    #       {
    #         request: { # required
    #           client_ip: "IPString",
    #           country: "Country",
    #           uri: "URIString",
    #           method: "HTTPMethod",
    #           http_version: "HTTPVersion",
    #           headers: [
    #             {
    #               name: "HeaderName",
    #               value: "HeaderValue"
    #             }
    #           ]
    #         },
    #         weight: 1, # required
    #         timestamp: Time.now,
    #         action: "Action",
    #         rule_name_within_rule_group: "EntityName",
    #         request_headers_inserted: [
    #           {
    #             name: "HeaderName",
    #             value: "HeaderValue"
    #           }
    #         ],
    #         response_code_sent: 1,
    #         labels: [
    #           {
    #             name: "LabelName", # required
    #           }
    #         ],
    #         captcha_response: {
    #           response_code: 1,
    #           solve_timestamp: 1,
    #           failure_reason: "TOKEN_MISSING" # One of: ["TOKEN_MISSING", "TOKEN_EXPIRED", "TOKEN_INVALID", "TOKEN_DOMAIN_MISMATCH"]
    #         },
    #         challenge_response: {
    #           response_code: 1,
    #           solve_timestamp: 1,
    #           failure_reason: "TOKEN_MISSING" # One of: ["TOKEN_MISSING", "TOKEN_EXPIRED", "TOKEN_INVALID", "TOKEN_DOMAIN_MISMATCH"]
    #         },
    #         overridden_action: "Action"
    #       }
    #     ],
    #     population_size: 1,
    #     time_window: {
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetSampledRequestsResponse]
    def get_sampled_requests(params = {}, options = {})
      request = build_request(:get_sampled_requests, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified <a>WebACL</a>.</p>
    # @param [Hash, Types::GetWebACLRequest] params
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName",
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"],
    #     id: "EntityId",
    #     arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.get_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_acl: {
    #       name: "EntityName", # required
    #       id: "EntityId", # required
    #       arn: "ResourceArn", # required
    #       default_action: { # required
    #         block: {
    #           custom_response: {
    #             response_code: 1, # required
    #             custom_response_body_key: "EntityName",
    #             response_headers: [
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               }
    #             ]
    #           }
    #         },
    #         allow: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       description: "EntityDescription",
    #       rules: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           statement: { # required
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ],
    #               positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ],
    #               sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               }
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #               }
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               evaluation_window_sec: 1,
    #               aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               custom_keys: [
    #                 {
    #                   header: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   cookie: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   query_argument: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   query_string: {
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   http_method: {
    #                   },
    #                   forwarded_ip: {
    #                   },
    #                   ip: {
    #                   },
    #                   label_namespace: {
    #                     namespace: "LabelNamespace", # required
    #                   },
    #                   uri_path: {
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   ja3_fingerprint: {
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   ja4_fingerprint: {
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   asn: {
    #                   }
    #                 }
    #               ]
    #             },
    #             and_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 }
    #               ]
    #             },
    #             or_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 }
    #               ]
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               }
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             label_match_statement: {
    #               scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             asn_match_statement: {
    #               asn_list: [1], # required
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               }
    #             }
    #           },
    #           action: {
    #             block: {
    #               custom_response: {
    #                 response_code: 1, # required
    #                 custom_response_body_key: "EntityName",
    #                 response_headers: [
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             allow: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             captcha: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             challenge: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           },
    #           override_action: {
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           rule_labels: [
    #             {
    #               name: "LabelName", # required
    #             }
    #           ],
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           },
    #           captcha_config: {
    #             immunity_time_property: {
    #               immunity_time: 1, # required
    #             }
    #           },
    #           challenge_config: {
    #             immunity_time_property: {
    #               immunity_time: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       visibility_config: { # required
    #         sampled_requests_enabled: false, # required
    #         cloud_watch_metrics_enabled: false, # required
    #         metric_name: "MetricName", # required
    #       },
    #       data_protection_config: {
    #         data_protections: [ # required
    #           {
    #             field: { # required
    #               field_type: "SINGLE_HEADER" # One of: ["SINGLE_HEADER", "SINGLE_COOKIE", "SINGLE_QUERY_ARGUMENT", "QUERY_STRING", "BODY"], # required
    #               field_keys: ["FieldToProtectKeyName"]
    #             },
    #             action: "SUBSTITUTION" # One of: ["SUBSTITUTION", "HASH"], # required
    #             exclude_rule_match_details: false,
    #             exclude_rate_based_details: false
    #           }
    #         ]
    #       },
    #       capacity: 1,
    #       pre_process_firewall_manager_rule_groups: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           firewall_manager_statement: { # required
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 byte_match_statement: {
    #                   search_string: "data", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #                 },
    #                 sqli_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #                 },
    #                 xss_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 size_constraint_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #                   size: 1, # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 geo_match_statement: {
    #                   country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 },
    #                 rule_group_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   excluded_rules: [
    #                     {
    #                       name: "EntityName", # required
    #                     }
    #                   ],
    #                   rule_action_overrides: [
    #                     {
    #                       name: "EntityName", # required
    #                       action_to_use: { # required
    #                         block: {
    #                           custom_response: {
    #                             response_code: 1, # required
    #                             custom_response_body_key: "EntityName",
    #                             response_headers: [
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         allow: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         count: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         captcha: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         challenge: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 ip_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   ip_set_forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #                   }
    #                 },
    #                 regex_pattern_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 rate_based_statement: {
    #                   limit: 1, # required
    #                   evaluation_window_sec: 1,
    #                   aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #                   scope_down_statement: {
    #                     # recursive Statement
    #                   },
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   custom_keys: [
    #                     {
    #                       header: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       cookie: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_argument: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_string: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       http_method: {
    #                       },
    #                       forwarded_ip: {
    #                       },
    #                       ip: {
    #                       },
    #                       label_namespace: {
    #                         namespace: "LabelNamespace", # required
    #                       },
    #                       uri_path: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       ja3_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       ja4_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       asn: {
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 and_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 or_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 not_statement: {
    #                   statement: { # required
    #                     # recursive Statement
    #                   }
    #                 },
    #                 managed_rule_group_statement: {
    #                   # recursive ManagedRuleGroupStatement
    #                 },
    #                 label_match_statement: {
    #                   scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #                   key: "LabelMatchKey", # required
    #                 },
    #                 regex_match_statement: {
    #                   regex_string: "RegexPatternString", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 asn_match_statement: {
    #                   asn_list: [1], # required
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 }
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           override_action: { # required
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           }
    #         }
    #       ],
    #       post_process_firewall_manager_rule_groups: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           firewall_manager_statement: { # required
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 byte_match_statement: {
    #                   search_string: "data", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #                 },
    #                 sqli_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #                 },
    #                 xss_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 size_constraint_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #                   size: 1, # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 geo_match_statement: {
    #                   country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 },
    #                 rule_group_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   excluded_rules: [
    #                     {
    #                       name: "EntityName", # required
    #                     }
    #                   ],
    #                   rule_action_overrides: [
    #                     {
    #                       name: "EntityName", # required
    #                       action_to_use: { # required
    #                         block: {
    #                           custom_response: {
    #                             response_code: 1, # required
    #                             custom_response_body_key: "EntityName",
    #                             response_headers: [
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         allow: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         count: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         captcha: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         challenge: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 ip_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   ip_set_forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #                   }
    #                 },
    #                 regex_pattern_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 rate_based_statement: {
    #                   limit: 1, # required
    #                   evaluation_window_sec: 1,
    #                   aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #                   scope_down_statement: {
    #                     # recursive Statement
    #                   },
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   custom_keys: [
    #                     {
    #                       header: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       cookie: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_argument: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_string: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       http_method: {
    #                       },
    #                       forwarded_ip: {
    #                       },
    #                       ip: {
    #                       },
    #                       label_namespace: {
    #                         namespace: "LabelNamespace", # required
    #                       },
    #                       uri_path: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       ja3_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       ja4_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       asn: {
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 and_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 or_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 not_statement: {
    #                   statement: { # required
    #                     # recursive Statement
    #                   }
    #                 },
    #                 managed_rule_group_statement: {
    #                   # recursive ManagedRuleGroupStatement
    #                 },
    #                 label_match_statement: {
    #                   scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #                   key: "LabelMatchKey", # required
    #                 },
    #                 regex_match_statement: {
    #                   regex_string: "RegexPatternString", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 asn_match_statement: {
    #                   asn_list: [1], # required
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 }
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           override_action: { # required
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           }
    #         }
    #       ],
    #       managed_by_firewall_manager: false,
    #       label_namespace: "LabelName",
    #       custom_response_bodies: {
    #         "EntityName" => {
    #           content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #           content: "ResponseContent", # required
    #         }
    #       },
    #       captcha_config: {
    #         immunity_time_property: {
    #           immunity_time: 1, # required
    #         }
    #       },
    #       challenge_config: {
    #         immunity_time_property: {
    #           immunity_time: 1, # required
    #         }
    #       },
    #       token_domains: ["TokenDomain"],
    #       association_config: {
    #         request_body: {
    #           "AssociatedResourceType" => {
    #             default_size_inspection_limit: "KB_16" # One of: ["KB_16", "KB_32", "KB_48", "KB_64"], # required
    #           }
    #         }
    #       },
    #       retrofitted_by_firewall_manager: false,
    #       on_source_d_do_s_protection_config: {
    #         alb_low_reputation_mode: "ACTIVE_UNDER_DDOS" # One of: ["ACTIVE_UNDER_DDOS", "ALWAYS_ON"], # required
    #       },
    #       application_config: {
    #         attributes: [
    #           {
    #             name: "AttributeName",
    #             values: ["AttributeValue"]
    #           }
    #         ]
    #       }
    #     },
    #     lock_token: "LockToken",
    #     application_integration_url: "OutputUrl"
    #   }
    # @return [Types::GetWebACLResponse]
    def get_web_acl(params = {}, options = {})
      request = build_request(:get_web_acl, params)
      request.send_request(options)
    end

    # <p>Retrieves the <a>WebACL</a> for the specified resource. </p>
    #          <p>This call uses <code>GetWebACL</code>, to verify that your account has permission to access the retrieved web ACL. 
    #           If you get an error that indicates that your account isn't authorized to perform <code>wafv2:GetWebACL</code> on the resource, 
    #               that error won't be included in your CloudTrail event history. </p>
    #          <p>For Amazon CloudFront, don't use this call. Instead, call the CloudFront action
    #             <code>GetDistributionConfig</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html">GetDistributionConfig</a> in the <i>Amazon CloudFront API Reference</i>. </p>
    #          <p>
    #             <b>Required permissions for customer-managed IAM policies</b>
    #          </p>
    #          <p>This call requires permissions that are specific to the protected resource type. 
    #     For details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-GetWebACLForResource">Permissions for GetWebACLForResource</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::GetWebACLForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose web ACL you want to retrieve. </p>
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:<i>partition</i>:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:<i>partition</i>:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:<i>partition</i>:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Cognito user pool: <code>arn:<i>partition</i>:cognito-idp:<i>region</i>:<i>account-id</i>:userpool/<i>user-pool-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an App Runner service: <code>arn:<i>partition</i>:apprunner:<i>region</i>:<i>account-id</i>:service/<i>apprunner-service-name</i>/<i>apprunner-service-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Verified Access instance: <code>arn:<i>partition</i>:ec2:<i>region</i>:<i>account-id</i>:verified-access-instance/<i>instance-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amplify application: <code>arn:<i>partition</i>:amplify:<i>region</i>:<i>account-id</i>:apps/<i>app-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_web_acl_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_acl: {
    #       name: "EntityName", # required
    #       id: "EntityId", # required
    #       arn: "ResourceArn", # required
    #       default_action: { # required
    #         block: {
    #           custom_response: {
    #             response_code: 1, # required
    #             custom_response_body_key: "EntityName",
    #             response_headers: [
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               }
    #             ]
    #           }
    #         },
    #         allow: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       description: "EntityDescription",
    #       rules: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           statement: { # required
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ],
    #               positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ],
    #               sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               }
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #               }
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               evaluation_window_sec: 1,
    #               aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               custom_keys: [
    #                 {
    #                   header: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   cookie: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   query_argument: {
    #                     name: "FieldToMatchData", # required
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   query_string: {
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   http_method: {
    #                   },
    #                   forwarded_ip: {
    #                   },
    #                   ip: {
    #                   },
    #                   label_namespace: {
    #                     namespace: "LabelNamespace", # required
    #                   },
    #                   uri_path: {
    #                     text_transformations: [ # required
    #                       {
    #                         priority: 1, # required
    #                         type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                       }
    #                     ]
    #                   },
    #                   ja3_fingerprint: {
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   ja4_fingerprint: {
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   asn: {
    #                   }
    #                 }
    #               ]
    #             },
    #             and_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 }
    #               ]
    #             },
    #             or_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 }
    #               ]
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               }
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             label_match_statement: {
    #               scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                 },
    #                 headers: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_headers: ["FieldToMatchData"],
    #                     excluded_headers: ["FieldToMatchData"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 cookies: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_cookies: ["SingleCookieName"],
    #                     excluded_cookies: ["SingleCookieName"]
    #                   },
    #                   match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 header_order: {
    #                   oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 uri_fragment: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                 }
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                 }
    #               ]
    #             },
    #             asn_match_statement: {
    #               asn_list: [1], # required
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               }
    #             }
    #           },
    #           action: {
    #             block: {
    #               custom_response: {
    #                 response_code: 1, # required
    #                 custom_response_body_key: "EntityName",
    #                 response_headers: [
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             allow: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             captcha: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             challenge: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           },
    #           override_action: {
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           rule_labels: [
    #             {
    #               name: "LabelName", # required
    #             }
    #           ],
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           },
    #           captcha_config: {
    #             immunity_time_property: {
    #               immunity_time: 1, # required
    #             }
    #           },
    #           challenge_config: {
    #             immunity_time_property: {
    #               immunity_time: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       visibility_config: { # required
    #         sampled_requests_enabled: false, # required
    #         cloud_watch_metrics_enabled: false, # required
    #         metric_name: "MetricName", # required
    #       },
    #       data_protection_config: {
    #         data_protections: [ # required
    #           {
    #             field: { # required
    #               field_type: "SINGLE_HEADER" # One of: ["SINGLE_HEADER", "SINGLE_COOKIE", "SINGLE_QUERY_ARGUMENT", "QUERY_STRING", "BODY"], # required
    #               field_keys: ["FieldToProtectKeyName"]
    #             },
    #             action: "SUBSTITUTION" # One of: ["SUBSTITUTION", "HASH"], # required
    #             exclude_rule_match_details: false,
    #             exclude_rate_based_details: false
    #           }
    #         ]
    #       },
    #       capacity: 1,
    #       pre_process_firewall_manager_rule_groups: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           firewall_manager_statement: { # required
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 byte_match_statement: {
    #                   search_string: "data", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #                 },
    #                 sqli_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #                 },
    #                 xss_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 size_constraint_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #                   size: 1, # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 geo_match_statement: {
    #                   country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 },
    #                 rule_group_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   excluded_rules: [
    #                     {
    #                       name: "EntityName", # required
    #                     }
    #                   ],
    #                   rule_action_overrides: [
    #                     {
    #                       name: "EntityName", # required
    #                       action_to_use: { # required
    #                         block: {
    #                           custom_response: {
    #                             response_code: 1, # required
    #                             custom_response_body_key: "EntityName",
    #                             response_headers: [
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         allow: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         count: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         captcha: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         challenge: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 ip_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   ip_set_forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #                   }
    #                 },
    #                 regex_pattern_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 rate_based_statement: {
    #                   limit: 1, # required
    #                   evaluation_window_sec: 1,
    #                   aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #                   scope_down_statement: {
    #                     # recursive Statement
    #                   },
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   custom_keys: [
    #                     {
    #                       header: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       cookie: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_argument: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_string: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       http_method: {
    #                       },
    #                       forwarded_ip: {
    #                       },
    #                       ip: {
    #                       },
    #                       label_namespace: {
    #                         namespace: "LabelNamespace", # required
    #                       },
    #                       uri_path: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       ja3_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       ja4_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       asn: {
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 and_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 or_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 not_statement: {
    #                   statement: { # required
    #                     # recursive Statement
    #                   }
    #                 },
    #                 managed_rule_group_statement: {
    #                   # recursive ManagedRuleGroupStatement
    #                 },
    #                 label_match_statement: {
    #                   scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #                   key: "LabelMatchKey", # required
    #                 },
    #                 regex_match_statement: {
    #                   regex_string: "RegexPatternString", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 asn_match_statement: {
    #                   asn_list: [1], # required
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 }
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           override_action: { # required
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           }
    #         }
    #       ],
    #       post_process_firewall_manager_rule_groups: [
    #         {
    #           name: "EntityName", # required
    #           priority: 1, # required
    #           firewall_manager_statement: { # required
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               scope_down_statement: {
    #                 byte_match_statement: {
    #                   search_string: "data", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #                 },
    #                 sqli_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ],
    #                   sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #                 },
    #                 xss_match_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 size_constraint_statement: {
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #                   size: 1, # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 geo_match_statement: {
    #                   country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 },
    #                 rule_group_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   excluded_rules: [
    #                     {
    #                       name: "EntityName", # required
    #                     }
    #                   ],
    #                   rule_action_overrides: [
    #                     {
    #                       name: "EntityName", # required
    #                       action_to_use: { # required
    #                         block: {
    #                           custom_response: {
    #                             response_code: 1, # required
    #                             custom_response_body_key: "EntityName",
    #                             response_headers: [
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         allow: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         count: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         captcha: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         challenge: {
    #                           custom_request_handling: {
    #                             insert_headers: [ # required
    #                               {
    #                                 name: "CustomHTTPHeaderName", # required
    #                                 value: "CustomHTTPHeaderValue", # required
    #                               }
    #                             ]
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 ip_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   ip_set_forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #                   }
    #                 },
    #                 regex_pattern_set_reference_statement: {
    #                   arn: "ResourceArn", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 rate_based_statement: {
    #                   limit: 1, # required
    #                   evaluation_window_sec: 1,
    #                   aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #                   scope_down_statement: {
    #                     # recursive Statement
    #                   },
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   },
    #                   custom_keys: [
    #                     {
    #                       header: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       cookie: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_argument: {
    #                         name: "FieldToMatchData", # required
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       query_string: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       http_method: {
    #                       },
    #                       forwarded_ip: {
    #                       },
    #                       ip: {
    #                       },
    #                       label_namespace: {
    #                         namespace: "LabelNamespace", # required
    #                       },
    #                       uri_path: {
    #                         text_transformations: [ # required
    #                           {
    #                             priority: 1, # required
    #                             type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                           }
    #                         ]
    #                       },
    #                       ja3_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       ja4_fingerprint: {
    #                         fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                       },
    #                       asn: {
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 and_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 or_statement: {
    #                   statements: [ # required
    #                     {
    #                       # recursive Statement
    #                     }
    #                   ]
    #                 },
    #                 not_statement: {
    #                   statement: { # required
    #                     # recursive Statement
    #                   }
    #                 },
    #                 managed_rule_group_statement: {
    #                   # recursive ManagedRuleGroupStatement
    #                 },
    #                 label_match_statement: {
    #                   scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #                   key: "LabelMatchKey", # required
    #                 },
    #                 regex_match_statement: {
    #                   regex_string: "RegexPatternString", # required
    #                   field_to_match: { # required
    #                     single_header: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     single_query_argument: {
    #                       name: "FieldToMatchData", # required
    #                     },
    #                     all_query_arguments: {
    #                     },
    #                     uri_path: {
    #                     },
    #                     query_string: {
    #                     },
    #                     body: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     method: {
    #                     },
    #                     json_body: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_paths: ["JsonPointerPath"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #                     },
    #                     headers: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_headers: ["FieldToMatchData"],
    #                         excluded_headers: ["FieldToMatchData"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     cookies: {
    #                       match_pattern: { # required
    #                         all: {
    #                         },
    #                         included_cookies: ["SingleCookieName"],
    #                         excluded_cookies: ["SingleCookieName"]
    #                       },
    #                       match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     header_order: {
    #                       oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja3_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     ja4_fingerprint: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                     },
    #                     uri_fragment: {
    #                       fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #                     }
    #                   },
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 asn_match_statement: {
    #                   asn_list: [1], # required
    #                   forwarded_ip_config: {
    #                     header_name: "ForwardedIPHeaderName", # required
    #                     fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                   }
    #                 }
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   aws_managed_rules_bot_control_rule_set: {
    #                     inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                     enable_machine_learning: false
    #                   },
    #                   aws_managed_rules_atp_rule_set: {
    #                     login_path: "String", # required
    #                     request_inspection: {
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: { # required
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_acfp_rule_set: {
    #                     creation_path: "CreationPathString", # required
    #                     registration_page_path: "RegistrationPagePathString", # required
    #                     request_inspection: { # required
    #                       payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                       username_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       password_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       email_field: {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                       phone_number_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ],
    #                       address_fields: [
    #                         {
    #                           identifier: "FieldIdentifier", # required
    #                         }
    #                       ]
    #                     },
    #                     response_inspection: {
    #                       status_code: {
    #                         success_codes: [1], # required
    #                         failure_codes: [1], # required
    #                       },
    #                       header: {
    #                         name: "ResponseInspectionHeaderName", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       },
    #                       body_contains: {
    #                         success_strings: ["SuccessValue"], # required
    #                         failure_strings: ["FailureValue"], # required
    #                       },
    #                       json: {
    #                         identifier: "FieldIdentifier", # required
    #                         success_values: ["SuccessValue"], # required
    #                         failure_values: ["FailureValue"], # required
    #                       }
    #                     },
    #                     enable_regex_in_path: false
    #                   },
    #                   aws_managed_rules_anti_d_do_s_rule_set: {
    #                     client_side_action_config: { # required
    #                       challenge: { # required
    #                         usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                         sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                         exempt_uri_regular_expressions: [
    #                           {
    #                             regex_string: "RegexPatternString"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                   }
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 }
    #               ],
    #               rule_action_overrides: [
    #                 {
    #                   name: "EntityName", # required
    #                   action_to_use: { # required
    #                     block: {
    #                       custom_response: {
    #                         response_code: 1, # required
    #                         custom_response_body_key: "EntityName",
    #                         response_headers: [
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     allow: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     count: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     captcha: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     challenge: {
    #                       custom_request_handling: {
    #                         insert_headers: [ # required
    #                           {
    #                             name: "CustomHTTPHeaderName", # required
    #                             value: "CustomHTTPHeaderValue", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           override_action: { # required
    #             count: {
    #               custom_request_handling: {
    #                 insert_headers: [ # required
    #                   {
    #                     name: "CustomHTTPHeaderName", # required
    #                     value: "CustomHTTPHeaderValue", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             none: {
    #             }
    #           },
    #           visibility_config: { # required
    #             sampled_requests_enabled: false, # required
    #             cloud_watch_metrics_enabled: false, # required
    #             metric_name: "MetricName", # required
    #           }
    #         }
    #       ],
    #       managed_by_firewall_manager: false,
    #       label_namespace: "LabelName",
    #       custom_response_bodies: {
    #         "EntityName" => {
    #           content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #           content: "ResponseContent", # required
    #         }
    #       },
    #       captcha_config: {
    #         immunity_time_property: {
    #           immunity_time: 1, # required
    #         }
    #       },
    #       challenge_config: {
    #         immunity_time_property: {
    #           immunity_time: 1, # required
    #         }
    #       },
    #       token_domains: ["TokenDomain"],
    #       association_config: {
    #         request_body: {
    #           "AssociatedResourceType" => {
    #             default_size_inspection_limit: "KB_16" # One of: ["KB_16", "KB_32", "KB_48", "KB_64"], # required
    #           }
    #         }
    #       },
    #       retrofitted_by_firewall_manager: false,
    #       on_source_d_do_s_protection_config: {
    #         alb_low_reputation_mode: "ACTIVE_UNDER_DDOS" # One of: ["ACTIVE_UNDER_DDOS", "ALWAYS_ON"], # required
    #       },
    #       application_config: {
    #         attributes: [
    #           {
    #             name: "AttributeName",
    #             values: ["AttributeValue"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetWebACLForResourceResponse]
    def get_web_acl_for_resource(params = {}, options = {})
      request = build_request(:get_web_acl_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the API keys that you've defined for the specified scope. </p>
    #          <p>API keys are required for the integration of the CAPTCHA API in your JavaScript client applications. 
    #            The API lets you customize the placement and characteristics of the CAPTCHA puzzle for your end users. 
    #            For more information about the CAPTCHA JavaScript integration, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::ListAPIKeysRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_api_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     api_key_summaries: [
    #       {
    #         token_domains: ["TokenDomain"],
    #         api_key: "APIKey",
    #         creation_timestamp: Time.now,
    #         version: 1
    #       }
    #     ],
    #     application_integration_url: "OutputUrl"
    #   }
    # @return [Types::ListAPIKeysResponse]
    def list_api_keys(params = {}, options = {})
      request = build_request(:list_api_keys, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available versions for the specified managed rule group. </p>
    # @param [Hash, Types::ListAvailableManagedRuleGroupVersionsRequest] params
    # @option params [String] :vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    # @option params [String] :name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vendor_name: "VendorName", # required
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_available_managed_rule_group_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     versions: [
    #       {
    #         name: "VersionKeyString",
    #         last_update_timestamp: Time.now
    #       }
    #     ],
    #     current_default_version: "VersionKeyString"
    #   }
    # @return [Types::ListAvailableManagedRuleGroupVersionsResponse]
    def list_available_managed_rule_group_versions(params = {}, options = {})
      request = build_request(:list_available_managed_rule_group_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of managed rule groups that are available for you to use. This list
    #          includes all Amazon Web Services Managed Rules rule groups and all of the Amazon Web Services Marketplace managed rule groups that you're
    #          subscribed to.</p>
    # @param [Hash, Types::ListAvailableManagedRuleGroupsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_available_managed_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     managed_rule_groups: [
    #       {
    #         vendor_name: "VendorName",
    #         name: "EntityName",
    #         versioning_supported: false,
    #         description: "EntityDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListAvailableManagedRuleGroupsResponse]
    def list_available_managed_rule_groups(params = {}, options = {})
      request = build_request(:list_available_managed_rule_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of <a>IPSetSummary</a> objects for the IP sets that you
    #          manage.</p>
    # @param [Hash, Types::ListIPSetsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_ip_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     ip_sets: [
    #       {
    #         name: "EntityName",
    #         id: "EntityId",
    #         description: "EntityDescription",
    #         lock_token: "LockToken",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListIPSetsResponse]
    def list_ip_sets(params = {}, options = {})
      request = build_request(:list_ip_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of your <a>LoggingConfiguration</a> objects.</p>
    # @param [Hash, Types::ListLoggingConfigurationsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see 
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1,
    #     log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #   }
    #   options = {}
    #   response = client.list_logging_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configurations: [
    #       {
    #         resource_arn: "ResourceArn", # required
    #         log_destination_configs: ["ResourceArn"], # required
    #         redacted_fields: [
    #           {
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #               oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"]
    #               },
    #               match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #               invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #               oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #             },
    #             headers: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_headers: ["FieldToMatchData"],
    #                 excluded_headers: ["FieldToMatchData"]
    #               },
    #               match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #               oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #             },
    #             cookies: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_cookies: ["SingleCookieName"],
    #                 excluded_cookies: ["SingleCookieName"]
    #               },
    #               match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #               oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #             },
    #             header_order: {
    #               oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #             },
    #             ja3_fingerprint: {
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             ja4_fingerprint: {
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             uri_fragment: {
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #             }
    #           }
    #         ],
    #         managed_by_firewall_manager: false,
    #         logging_filter: {
    #           filters: [ # required
    #             {
    #               behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #               requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"], # required
    #               conditions: [ # required
    #                 {
    #                   action_condition: {
    #                     action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"], # required
    #                   },
    #                   label_name_condition: {
    #                     label_name: "LabelName", # required
    #                   }
    #                 }
    #               ]
    #             }
    #           ],
    #           default_behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #         },
    #         log_type: "WAF_LOGS" # One of: ["WAF_LOGS"],
    #         log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #       }
    #     ],
    #     next_marker: "NextMarker"
    #   }
    # @return [Types::ListLoggingConfigurationsResponse]
    def list_logging_configurations(params = {}, options = {})
      request = build_request(:list_logging_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves the managed rule sets that you own. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @param [Hash, Types::ListManagedRuleSetsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_managed_rule_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     managed_rule_sets: [
    #       {
    #         name: "EntityName",
    #         id: "EntityId",
    #         description: "EntityDescription",
    #         lock_token: "LockToken",
    #         arn: "ResourceArn",
    #         label_namespace: "LabelName"
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedRuleSetsResponse]
    def list_managed_rule_sets(params = {}, options = {})
      request = build_request(:list_managed_rule_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the available releases for the mobile SDK and the specified device
    #          platform. </p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see 
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::ListMobileSdkReleasesRequest] params
    # @option params [String] :platform
    #   <p>The device platform to retrieve the list for.</p>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform: "IOS" # One of: ["IOS", "ANDROID"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_mobile_sdk_releases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     release_summaries: [
    #       {
    #         release_version: "VersionKeyString",
    #         timestamp: Time.now
    #       }
    #     ],
    #     next_marker: "NextMarker"
    #   }
    # @return [Types::ListMobileSdkReleasesResponse]
    def list_mobile_sdk_releases(params = {}, options = {})
      request = build_request(:list_mobile_sdk_releases, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of <a>RegexPatternSetSummary</a> objects for the regex
    #          pattern sets that you manage.</p>
    # @param [Hash, Types::ListRegexPatternSetsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_regex_pattern_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     regex_pattern_sets: [
    #       {
    #         name: "EntityName",
    #         id: "EntityId",
    #         description: "EntityDescription",
    #         lock_token: "LockToken",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListRegexPatternSetsResponse]
    def list_regex_pattern_sets(params = {}, options = {})
      request = build_request(:list_regex_pattern_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of the Amazon Resource Names (ARNs) for the resources that
    #       are associated with the specified web ACL. </p>
    #          <p>For Amazon CloudFront, don't use this call. Instead, use the CloudFront call
    #           <code>ListDistributionsByWebACLId</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html">ListDistributionsByWebACLId</a>
    #           in the <i>Amazon CloudFront API Reference</i>. </p>
    #          <p>
    #             <b>Required permissions for customer-managed IAM policies</b>
    #          </p>
    #          <p>This call requires permissions that are specific to the protected resource type. 
    #     For details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-ListResourcesForWebACL">Permissions for ListResourcesForWebACL</a> in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::ListResourcesForWebACLRequest] params
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    # @option params [String] :resource_type
    #   <p>Retrieves the web ACLs that are used by the specified resource type. </p>
    #            <p>For Amazon CloudFront, don't use this call. Instead, use the CloudFront call
    #             <code>ListDistributionsByWebACLId</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html">ListDistributionsByWebACLId</a>
    #             in the <i>Amazon CloudFront API Reference</i>. </p>
    #            <note>
    #               <p>If you don't provide a resource type, the call uses the resource type <code>APPLICATION_LOAD_BALANCER</code>. </p>
    #            </note>
    #            <p>Default: <code>APPLICATION_LOAD_BALANCER</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_arn: "ResourceArn", # required
    #     resource_type: "APPLICATION_LOAD_BALANCER" # One of: ["APPLICATION_LOAD_BALANCER", "API_GATEWAY", "APPSYNC", "COGNITO_USER_POOL", "APP_RUNNER_SERVICE", "VERIFIED_ACCESS_INSTANCE", "AMPLIFY"]
    #   }
    #   options = {}
    #   response = client.list_resources_for_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arns: ["ResourceArn"]
    #   }
    # @return [Types::ListResourcesForWebACLResponse]
    def list_resources_for_web_acl(params = {}, options = {})
      request = build_request(:list_resources_for_web_acl, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of <a>RuleGroupSummary</a> objects for the rule groups
    #          that you manage. </p>
    # @param [Hash, Types::ListRuleGroupsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     rule_groups: [
    #       {
    #         name: "EntityName",
    #         id: "EntityId",
    #         description: "EntityDescription",
    #         lock_token: "LockToken",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListRuleGroupsResponse]
    def list_rule_groups(params = {}, options = {})
      request = build_request(:list_rule_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves the <a>TagInfoForResource</a> for the specified resource. Tags are
    #          key:value pairs that you can use to categorize and manage your resources, for purposes like
    #          billing. For example, you might set the tag key to "customer" and the value to the customer
    #          name or ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags
    #          for a resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1,
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     tag_info_for_resource: {
    #       resource_arn: "ResourceArn",
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of <a>WebACLSummary</a> objects for the web ACLs that you
    #          manage.</p>
    # @param [Hash, Types::ListWebACLsRequest] params
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> 
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more 
    #             objects are available, in the response, WAF provides a 
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_web_ac_ls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     web_ac_ls: [
    #       {
    #         name: "EntityName",
    #         id: "EntityId",
    #         description: "EntityDescription",
    #         lock_token: "LockToken",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListWebACLsResponse]
    def list_web_ac_ls(params = {}, options = {})
      request = build_request(:list_web_ac_ls, params)
      request.send_request(options)
    end

    # <p>Enables the specified <a>LoggingConfiguration</a>, to start logging from a
    #          web ACL, according to the configuration provided. </p>
    #          <p>If you configure data protection for the web ACL, the protection applies to the data that WAF sends to the logs. </p>
    #          <note>
    #             <p>This operation completely replaces any mutable specifications that you already have for a logging configuration with the ones that you provide to this call. </p>
    #             <p>To modify an existing logging configuration, do the following: </p>
    #             <ol>
    #                <li>
    #                   <p>Retrieve it by calling <a>GetLoggingConfiguration</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>Update its settings as needed</p>
    #                </li>
    #                <li>
    #                   <p>Provide the complete logging configuration specification to this call</p>
    #                </li>
    #             </ol>
    #          </note>
    #          <note>
    #             <p>You can define one logging destination per web ACL.</p>
    #          </note>
    #          <p>You can access information about the traffic that WAF inspects using the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create your logging destination. You can use an Amazon CloudWatch Logs log group, an Amazon Simple Storage Service (Amazon S3) bucket, or an Amazon Kinesis Data Firehose. </p>
    #                <p>The name that you give the destination must start with <code>aws-waf-logs-</code>. Depending on the type of destination, you might need to configure additional settings or permissions. </p>
    #                <p>For configuration requirements and pricing information for each destination type, see 
    #                  <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic</a> 
    #                  in the <i>WAF Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Associate your logging destination to your web ACL using a
    #                   <code>PutLoggingConfiguration</code> request.</p>
    #             </li>
    #          </ol>
    #          <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code>
    #           request, WAF creates an additional role or policy that is required to write
    #               logs to the logging destination. For an Amazon CloudWatch Logs log group, WAF creates a resource policy on the log group.
    #           For an Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis Data Firehose, WAF creates a service-linked role.</p>
    #          <p>For additional information about web ACL logging, see 
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a> 
    #                in the <i>WAF Developer Guide</i>.</p>
    # @param [Hash, Types::PutLoggingConfigurationRequest] params
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_configuration: { # required
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           headers: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_headers: ["FieldToMatchData"],
    #               excluded_headers: ["FieldToMatchData"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           cookies: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_cookies: ["SingleCookieName"],
    #               excluded_cookies: ["SingleCookieName"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           header_order: {
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           ja3_fingerprint: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #           },
    #           ja4_fingerprint: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #           },
    #           uri_fragment: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #           }
    #         }
    #       ],
    #       managed_by_firewall_manager: false,
    #       logging_filter: {
    #         filters: [ # required
    #           {
    #             behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #             requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"], # required
    #             conditions: [ # required
    #               {
    #                 action_condition: {
    #                   action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"], # required
    #                 },
    #                 label_name_condition: {
    #                   label_name: "LabelName", # required
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         default_behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #       },
    #       log_type: "WAF_LOGS" # One of: ["WAF_LOGS"],
    #       log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: {
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           headers: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_headers: ["FieldToMatchData"],
    #               excluded_headers: ["FieldToMatchData"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           cookies: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_cookies: ["SingleCookieName"],
    #               excluded_cookies: ["SingleCookieName"]
    #             },
    #             match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           header_order: {
    #             oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #           },
    #           ja3_fingerprint: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #           },
    #           ja4_fingerprint: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #           },
    #           uri_fragment: {
    #             fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #           }
    #         }
    #       ],
    #       managed_by_firewall_manager: false,
    #       logging_filter: {
    #         filters: [ # required
    #           {
    #             behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #             requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"], # required
    #             conditions: [ # required
    #               {
    #                 action_condition: {
    #                   action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"], # required
    #                 },
    #                 label_name_condition: {
    #                   label_name: "LabelName", # required
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         default_behavior: "KEEP" # One of: ["KEEP", "DROP"], # required
    #       },
    #       log_type: "WAF_LOGS" # One of: ["WAF_LOGS"],
    #       log_scope: "CUSTOMER" # One of: ["CUSTOMER", "SECURITY_LAKE"]
    #     }
    #   }
    # @return [Types::PutLoggingConfigurationResponse]
    def put_logging_configuration(params = {}, options = {})
      request = build_request(:put_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Defines the versions of your managed rule set that you are offering to the customers.
    #          Customers see your offerings as managed rule groups with versioning.</p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #          <p>Customers retrieve their managed rule group list by calling <a>ListAvailableManagedRuleGroups</a>. The name that you provide here for your
    #          managed rule set is the name the customer sees for the corresponding managed rule group.
    #          Customers can retrieve the available versions for a managed rule group by calling <a>ListAvailableManagedRuleGroupVersions</a>. You provide a rule group
    #          specification for each version. For each managed rule set, you must specify a version that
    #          you recommend using. </p>
    #          <p>To initiate the expiration of a managed rule group version, use <a>UpdateManagedRuleSetVersionExpiryDate</a>.</p>
    # @param [Hash, Types::PutManagedRuleSetVersionsRequest] params
    # @option params [String] :name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @option params [String] :recommended_version
    #   <p>The version of the named managed rule group that you'd like your customers to choose,
    #            from among your version offerings. </p>
    # @option params [Hash<String, Types::VersionToPublish>] :versions_to_publish
    #   <p>The versions of the named managed rule group that you want to offer to your customers.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #     recommended_version: "VersionKeyString",
    #     versions_to_publish: {
    #       "VersionKeyString" => {
    #         associated_rule_group_arn: "ResourceArn",
    #         forecasted_lifetime: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_managed_rule_set_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_lock_token: "LockToken"
    #   }
    # @return [Types::PutManagedRuleSetVersionsResponse]
    def put_managed_rule_set_versions(params = {}, options = {})
      request = build_request(:put_managed_rule_set_versions, params)
      request.send_request(options)
    end

    # <p>Use this to share a rule group with other accounts.</p>
    #          <p>This action attaches an IAM policy to the specified resource. You must be the owner of the rule group to perform this operation.</p>
    #          <p>This action is subject to the following restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>You can attach only one policy with each <code>PutPermissionPolicy</code>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>The ARN in the request must be a valid WAF <a>RuleGroup</a> ARN and the
    #                rule group must exist in the same Region.</p>
    #             </li>
    #             <li>
    #                <p>The user making the request must be the owner of the rule group.</p>
    #             </li>
    #          </ul>
    #          <p>If a rule group has been shared with your account, you can access it through the call <code>GetRuleGroup</code>, 
    #           and you can reference it in <code>CreateWebACL</code> and <code>UpdateWebACL</code>. 
    #           Rule groups that are shared with you don't appear in your WAF console rule groups listing.  </p>
    # @param [Hash, Types::PutPermissionPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>RuleGroup</a> to which you want to
    #            attach the policy.</p>
    # @option params [String] :policy
    #   <p>The policy to attach to the specified rule group. </p>
    #            <p>The policy specifications must conform to the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The policy must be composed using IAM Policy version 2012-10-17.</p>
    #               </li>
    #               <li>
    #                  <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Effect</code> must specify <code>Allow</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and 
    #                <code>wafv2:PutFirewallManagerRuleGroups</code> and may optionally specify <code>wafv2:GetRuleGroup</code>. 
    #                    WAF rejects any extra actions or wildcard actions in the policy.</p>
    #               </li>
    #               <li>
    #                  <p>The policy must not include a <code>Resource</code> parameter.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   }
    #   options = {}
    #   response = client.put_permission_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutPermissionPolicyResponse]
    def put_permission_policy(params = {}, options = {})
      request = build_request(:put_permission_policy, params)
      request.send_request(options)
    end

    # <p>Associates tags with the specified Amazon Web Services resource. Tags are key:value pairs that you can
    #          use to categorize and manage your resources, for purposes like billing. For example, you
    #          might set the tag key to "customer" and the value to the customer name or ID. You can
    #          specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Disassociates tags from an Amazon Web Services resource. Tags are key:value pairs that you can
    #          associate with Amazon Web Services resources. For example, the tag key might be "customer" and the tag
    #          value might be "companyA." You can specify one or more tags to add to each container. You
    #          can add up to 50 tags to each Amazon Web Services resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>An array of keys identifying the tags to disassociate from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Updates the specified <a>IPSet</a>. </p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the IP set with the ones that you provide to this call. </p>
    #             <p>To modify an IP set, do the following: </p>
    #             <ol>
    #                <li>
    #                   <p>Retrieve it by calling <a>GetIPSet</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>Update its settings as needed</p>
    #                </li>
    #                <li>
    #                   <p>Provide the complete IP set specification to this call</p>
    #                </li>
    #             </ol>
    #          </note>
    #          <p>
    #             <b>Temporary inconsistencies during updates</b>
    #          </p>
    #          <p>When you create or change a web ACL or other WAF resources, the changes take a small amount of time to propagate to all areas where the resources are stored. The propagation time can be from a few seconds to a number of minutes. </p>
    #          <p>The following are examples of the temporary inconsistencies that you might notice during change propagation: </p>
    #          <ul>
    #             <li>
    #                <p>After you create a web ACL, if you try to associate it with a resource, you might get an exception indicating that the web ACL is unavailable. </p>
    #             </li>
    #             <li>
    #                <p>After you add a rule group to a web ACL, the new rule group rules might be in effect in one area where the web ACL is used and not in another.</p>
    #             </li>
    #             <li>
    #                <p>After you change a rule action setting, you might see the old action in some places and the new action in others. </p>
    #             </li>
    #             <li>
    #                <p>After you add an IP address to an IP set that is in use in a blocking rule, the new address might be blocked in one area while still allowed in another.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateIPSetRequest] params
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :description
    #   <p>A description of the IP set that helps with identification. </p>
    # @option params [Array<String>] :addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses that you want WAF to inspect for in incoming requests. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for <code>/0</code>. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>For requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     description: "EntityDescription",
    #     addresses: ["IPAddress"], # required
    #     lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.update_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_lock_token: "LockToken"
    #   }
    # @return [Types::UpdateIPSetResponse]
    def update_ip_set(params = {}, options = {})
      request = build_request(:update_ip_set, params)
      request.send_request(options)
    end

    # <p>Updates the expiration information for your managed rule set. Use this to initiate the
    #          expiration of a managed rule group version. After you initiate expiration for a version,
    #          WAF excludes it from the response to <a>ListAvailableManagedRuleGroupVersions</a> for the managed rule group. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @param [Hash, Types::UpdateManagedRuleSetVersionExpiryDateRequest] params
    # @option params [String] :name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @option params [String] :version_to_expire
    #   <p>The version that you want to remove from your list of offerings for the named managed
    #            rule group. </p>
    # @option params [Time] :expiry_timestamp
    #   <p>The time that you want the version to expire.</p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #     version_to_expire: "VersionKeyString", # required
    #     expiry_timestamp: Time.now, # required
    #   }
    #   options = {}
    #   response = client.update_managed_rule_set_version_expiry_date(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     expiring_version: "VersionKeyString",
    #     expiry_timestamp: Time.now,
    #     next_lock_token: "LockToken"
    #   }
    # @return [Types::UpdateManagedRuleSetVersionExpiryDateResponse]
    def update_managed_rule_set_version_expiry_date(params = {}, options = {})
      request = build_request(:update_managed_rule_set_version_expiry_date, params)
      request.send_request(options)
    end

    # <p>Updates the specified <a>RegexPatternSet</a>.</p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the regex pattern set with the ones that you provide to this call. </p>
    #             <p>To modify a regex pattern set, do the following: </p>
    #             <ol>
    #                <li>
    #                   <p>Retrieve it by calling <a>GetRegexPatternSet</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>Update its settings as needed</p>
    #                </li>
    #                <li>
    #                   <p>Provide the complete regex pattern set specification to this call</p>
    #                </li>
    #             </ol>
    #          </note>
    #          <p>
    #             <b>Temporary inconsistencies during updates</b>
    #          </p>
    #          <p>When you create or change a web ACL or other WAF resources, the changes take a small amount of time to propagate to all areas where the resources are stored. The propagation time can be from a few seconds to a number of minutes. </p>
    #          <p>The following are examples of the temporary inconsistencies that you might notice during change propagation: </p>
    #          <ul>
    #             <li>
    #                <p>After you create a web ACL, if you try to associate it with a resource, you might get an exception indicating that the web ACL is unavailable. </p>
    #             </li>
    #             <li>
    #                <p>After you add a rule group to a web ACL, the new rule group rules might be in effect in one area where the web ACL is used and not in another.</p>
    #             </li>
    #             <li>
    #                <p>After you change a rule action setting, you might see the old action in some places and the new action in others. </p>
    #             </li>
    #             <li>
    #                <p>After you add an IP address to an IP set that is in use in a blocking rule, the new address might be blocked in one area while still allowed in another.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateRegexPatternSetRequest] params
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :description
    #   <p>A description of the set that helps with identification. </p>
    # @option params [Array<Types::Regex>] :regular_expression_list
    #   <p></p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     description: "EntityDescription",
    #     regular_expression_list: [ # required
    #       {
    #         regex_string: "RegexPatternString"
    #       }
    #     ],
    #     lock_token: "LockToken", # required
    #   }
    #   options = {}
    #   response = client.update_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_lock_token: "LockToken"
    #   }
    # @return [Types::UpdateRegexPatternSetResponse]
    def update_regex_pattern_set(params = {}, options = {})
      request = build_request(:update_regex_pattern_set, params)
      request.send_request(options)
    end

    # <p>Updates the specified <a>RuleGroup</a>.</p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the rule group with the ones that you provide to this call. </p>
    #             <p>To modify a rule group, do the following: </p>
    #             <ol>
    #                <li>
    #                   <p>Retrieve it by calling <a>GetRuleGroup</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>Update its settings as needed</p>
    #                </li>
    #                <li>
    #                   <p>Provide the complete rule group specification to this call</p>
    #                </li>
    #             </ol>
    #          </note>
    #          <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>
    #          <p>
    #             <b>Temporary inconsistencies during updates</b>
    #          </p>
    #          <p>When you create or change a web ACL or other WAF resources, the changes take a small amount of time to propagate to all areas where the resources are stored. The propagation time can be from a few seconds to a number of minutes. </p>
    #          <p>The following are examples of the temporary inconsistencies that you might notice during change propagation: </p>
    #          <ul>
    #             <li>
    #                <p>After you create a web ACL, if you try to associate it with a resource, you might get an exception indicating that the web ACL is unavailable. </p>
    #             </li>
    #             <li>
    #                <p>After you add a rule group to a web ACL, the new rule group rules might be in effect in one area where the web ACL is used and not in another.</p>
    #             </li>
    #             <li>
    #                <p>After you change a rule action setting, you might see the old action in some places and the new action in others. </p>
    #             </li>
    #             <li>
    #                <p>After you add an IP address to an IP set that is in use in a blocking rule, the new address might be blocked in one area while still allowed in another.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateRuleGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [String] :description
    #   <p>A description of the rule group that helps with identification. </p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you 
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching  
    #            web requests, and parameters that govern how WAF handles them. 
    #         </p>
    # @option params [Types::VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @option params [Hash<String, Types::CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, 
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> 
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> 
    #        in the <i>WAF Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             evaluation_window_sec: 1,
    #             aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #                 uri_path: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 asn: {
    #                 }
    #               }
    #             ]
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             }
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                   enable_machine_learning: false
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     }
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ]
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_anti_d_do_s_rule_set: {
    #                   client_side_action_config: { # required
    #                     challenge: { # required
    #                       usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                       sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                       exempt_uri_regular_expressions: [
    #                         {
    #                           regex_string: "RegexPatternString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                 }
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           asn_match_statement: {
    #             asn_list: [1], # required
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           }
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           none: {
    #           }
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           }
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     lock_token: "LockToken", # required
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #         content: "ResponseContent", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_lock_token: "LockToken"
    #   }
    # @return [Types::UpdateRuleGroupResponse]
    def update_rule_group(params = {}, options = {})
      request = build_request(:update_rule_group, params)
      request.send_request(options)
    end

    # <p>Updates the specified <a>WebACL</a>. While updating a web ACL, WAF provides
    #          continuous coverage to the resources that you have associated with the web ACL. </p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the web ACL with the ones that you provide to this call. </p>
    #             <p>To modify a web ACL, do the following: </p>
    #             <ol>
    #                <li>
    #                   <p>Retrieve it by calling <a>GetWebACL</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>Update its settings as needed</p>
    #                </li>
    #                <li>
    #                   <p>Provide the complete web ACL specification to this call</p>
    #                </li>
    #             </ol>
    #          </note>
    #          <p> A web ACL defines a collection of rules to use to inspect and control web requests. Each rule has a statement that defines what to look for in web requests and an action that WAF applies to requests that match the statement. In the web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a web ACL with one or more Amazon Web Services resources to protect. The resource types include Amazon CloudFront distribution, Amazon API Gateway REST API, Application Load Balancer, AppSync GraphQL API, Amazon Cognito user pool, App Runner service, Amplify application, and Amazon Web Services Verified Access instance.  </p>
    #          <p>
    #             <b>Temporary inconsistencies during updates</b>
    #          </p>
    #          <p>When you create or change a web ACL or other WAF resources, the changes take a small amount of time to propagate to all areas where the resources are stored. The propagation time can be from a few seconds to a number of minutes. </p>
    #          <p>The following are examples of the temporary inconsistencies that you might notice during change propagation: </p>
    #          <ul>
    #             <li>
    #                <p>After you create a web ACL, if you try to associate it with a resource, you might get an exception indicating that the web ACL is unavailable. </p>
    #             </li>
    #             <li>
    #                <p>After you add a rule group to a web ACL, the new rule group rules might be in effect in one area where the web ACL is used and not in another.</p>
    #             </li>
    #             <li>
    #                <p>After you change a rule action setting, you might see the old action in some places and the new action in others. </p>
    #             </li>
    #             <li>
    #                <p>After you add an IP address to an IP set that is in use in a blocking rule, the new address might be blocked in one area while still allowed in another.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateWebACLRequest] params
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    # @option params [String] :scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    # @option params [Types::DefaultAction] :default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    # @option params [String] :description
    #   <p>A description of the web ACL that helps with identification. </p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you 
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching  
    #            web requests, and parameters that govern how WAF handles them. 
    #         </p>
    # @option params [Types::VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    # @option params [Types::DataProtectionConfig] :data_protection_config
    #   <p>Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. </p>
    #            <p>The data protection that you configure for the web ACL alters the data that's available for any other data collection activity, 
    #     including your WAF logging destinations, web ACL request sampling, and Amazon Security Lake data collection and management. Your other option for data protection is in the logging configuration, which only affects logging. </p>
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    # @option params [Hash<String, Types::CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, 
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> 
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> 
    #        in the <i>WAF Developer Guide</i>. </p>
    # @option params [Types::CaptchaConfig] :captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    # @option params [Types::ChallengeConfig] :challenge_config
    #   <p>Specifies how WAF should handle challenge evaluations for rules that don't have 
    #   their own <code>ChallengeConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>ChallengeConfig</code>. </p>
    # @option params [Array<String>] :token_domains
    #   <p>Specifies the domains that WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When WAF provides a token, it uses the domain of the Amazon Web Services resource that the web ACL is protecting. If you don't specify a list of token domains, WAF accepts tokens only for the domain of the protected resource. With a token domain list, WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.</p>
    #            <p>Example JSON: <code>"TokenDomains": { "mywebsite.com", "myotherwebsite.com" }</code>
    #            </p>
    #            <p>Public suffixes aren't allowed. For example, you can't use <code>gov.au</code> or <code>co.uk</code> as token domains.</p>
    # @option params [Types::AssociationConfig] :association_config
    #   <p>Specifies custom configurations for the associations between the web ACL and protected resources.  </p>
    #            <p>Use this to customize the maximum size of the request body that your protected resources forward to WAF for inspection. You can 
    #       customize this setting for CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resources. The default setting is 16 KB (16,384 bytes). </p>
    #            <note>
    #               <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #            <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    # @option params [Types::OnSourceDDoSProtectionConfig] :on_source_d_do_s_protection_config
    #   <p>Specifies the type of DDoS protection to apply to web request data for a web ACL. For most scenarios, it is recommended to use the default protection level, <code>ACTIVE_UNDER_DDOS</code>. 
    #      If a web ACL is associated with multiple Application Load Balancers, the changes you make to DDoS protection in that web ACL will apply to all associated Application Load Balancers.</p>
    # @option params [Types::ApplicationConfig] :application_config
    #   <p>Configures the ability for the WAF console to store and retrieve application attributes. 
    #            Application attributes help WAF give recommendations for protection packs.</p>
    #            <p>When using <code>UpdateWebACL</code>, <code>ApplicationConfig</code> follows these rules:</p>
    #            <ul>
    #               <li>
    #                  <p>If you omit <code>ApplicationConfig</code> from the request, all existing entries in the web ACL are retained.</p>
    #               </li>
    #               <li>
    #                  <p>If you include <code>ApplicationConfig</code>, entries must match the existing values exactly. Any attempt to modify existing entries will result in an error.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT" # One of: ["CLOUDFRONT", "REGIONAL"], # required
    #     id: "EntityId", # required
    #     default_action: { # required
    #       block: {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: "EntityName",
    #           response_headers: [
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       allow: {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ],
    #             sensitivity_level: "LOW" # One of: ["LOW", "HIGH"]
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]],
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               position: "FIRST" # One of: ["FIRST", "LAST", "ANY"], # required
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             evaluation_window_sec: 1,
    #             aggregate_key_type: "IP" # One of: ["IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"], # required
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #                 uri_path: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #                     }
    #                   ]
    #                 },
    #                 ja3_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 ja4_fingerprint: {
    #                   fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #                 },
    #                 asn: {
    #                 }
    #               }
    #             ]
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               }
    #             ]
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             }
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               }
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"],
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON" # One of: ["COMMON", "TARGETED"], # required
    #                   enable_machine_learning: false
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     }
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON" # One of: ["JSON", "FORM_ENCODED"], # required
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       }
    #                     ]
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     }
    #                   },
    #                   enable_regex_in_path: false
    #                 },
    #                 aws_managed_rules_anti_d_do_s_rule_set: {
    #                   client_side_action_config: { # required
    #                     challenge: { # required
    #                       usage_of_action: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                       sensitivity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #                       exempt_uri_regular_expressions: [
    #                         {
    #                           regex_string: "RegexPatternString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   sensitivity_to_block: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #                 }
    #               }
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: "LABEL" # One of: ["LABEL", "NAMESPACE"], # required
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 invalid_fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"],
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"]
    #                 },
    #                 match_scope: "ALL" # One of: ["ALL", "KEY", "VALUE"], # required
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE" # One of: ["CONTINUE", "MATCH", "NO_MATCH"], # required
    #               },
    #               ja3_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               ja4_fingerprint: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #               },
    #               uri_fragment: {
    #                 fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"]
    #               }
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"], # required
    #               }
    #             ]
    #           },
    #           asn_match_statement: {
    #             asn_list: [1], # required
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH" # One of: ["MATCH", "NO_MATCH"], # required
    #             }
    #           }
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           none: {
    #           }
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           }
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     data_protection_config: {
    #       data_protections: [ # required
    #         {
    #           field: { # required
    #             field_type: "SINGLE_HEADER" # One of: ["SINGLE_HEADER", "SINGLE_COOKIE", "SINGLE_QUERY_ARGUMENT", "QUERY_STRING", "BODY"], # required
    #             field_keys: ["FieldToProtectKeyName"]
    #           },
    #           action: "SUBSTITUTION" # One of: ["SUBSTITUTION", "HASH"], # required
    #           exclude_rule_match_details: false,
    #           exclude_rate_based_details: false
    #         }
    #       ]
    #     },
    #     lock_token: "LockToken", # required
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN" # One of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"], # required
    #         content: "ResponseContent", # required
    #       }
    #     },
    #     captcha_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       }
    #     },
    #     challenge_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       }
    #     },
    #     token_domains: ["TokenDomain"],
    #     association_config: {
    #       request_body: {
    #         "AssociatedResourceType" => {
    #           default_size_inspection_limit: "KB_16" # One of: ["KB_16", "KB_32", "KB_48", "KB_64"], # required
    #         }
    #       }
    #     },
    #     on_source_d_do_s_protection_config: {
    #       alb_low_reputation_mode: "ACTIVE_UNDER_DDOS" # One of: ["ACTIVE_UNDER_DDOS", "ALWAYS_ON"], # required
    #     },
    #     application_config: {
    #       attributes: [
    #         {
    #           name: "AttributeName",
    #           values: ["AttributeValue"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_lock_token: "LockToken"
    #   }
    # @return [Types::UpdateWebACLResponse]
    def update_web_acl(params = {}, options = {})
      request = build_request(:update_web_acl, params)
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
      context[:gem_name] = 'aws-sdk-wafv2'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
