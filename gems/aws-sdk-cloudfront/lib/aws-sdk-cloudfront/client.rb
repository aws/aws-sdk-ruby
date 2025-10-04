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
require 'aws-sdk-core/plugins/rest_xml_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::CloudFront
  # An API client for Aws::CloudFront.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Cloudfront20200531

    add_plugin(::Aws::CloudFront::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestXmlProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudFront::EndpointProvider)
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

    # <note> <p>The <code>AssociateAlias</code> API operation only supports standard distributions. To move domains between distribution tenants and/or standard distributions, we recommend that you use the <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDomainAssociation.html">UpdateDomainAssociation</a> API operation instead.</p> </note> <p>Associates an alias with a CloudFront standard distribution. An alias is commonly known as a custom domain or vanity domain. It can also be called a CNAME or alternate domain name.</p> <p>With this operation, you can move an alias that's already used for a standard distribution to a different standard distribution. This prevents the downtime that could occur if you first remove the alias from one standard distribution and then separately add the alias to another standard distribution.</p> <p>To use this operation, specify the alias and the ID of the target standard distribution.</p> <p>For more information, including how to set up the target standard distribution, prerequisites that you must complete, and other restrictions, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move">Moving an alternate domain name to a different standard distribution or distribution tenant</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::AssociateAliasRequest] params
    # @option params [String] :target_distribution_id
    #   <p>The ID of the standard distribution that you're associating the alias with.</p>
    # @option params [String] :alias
    #   <p>The alias (also known as a CNAME) to add to the target standard distribution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_distribution_id: "string", # required
    #     alias: "string", # required
    #   }
    #   options = {}
    #   response = client.associate_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_alias(params = {}, options = {})
      request = build_request(:associate_alias, params)
      request.send_request(options)
    end

    # <p>Associates the WAF web ACL with a distribution tenant.</p>
    # @param [Hash, Types::AssociateDistributionTenantWebACLRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution tenant.</p>
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the WAF web ACL to associate.</p>
    # @option params [String] :if_match
    #   <p>The current <code>ETag</code> of the distribution tenant. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     web_acl_arn: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.associate_distribution_tenant_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "string",
    #     web_acl_arn: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::AssociateDistributionTenantWebACLResult]
    def associate_distribution_tenant_web_acl(params = {}, options = {})
      request = build_request(:associate_distribution_tenant_web_acl, params)
      request.send_request(options)
    end

    # <p>Associates the WAF web ACL with a distribution.</p>
    # @param [Hash, Types::AssociateDistributionWebACLRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution.</p>
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the WAF web ACL to associate.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution that you're associating with the WAF web ACL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     web_acl_arn: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.associate_distribution_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "string",
    #     web_acl_arn: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::AssociateDistributionWebACLResult]
    def associate_distribution_web_acl(params = {}, options = {})
      request = build_request(:associate_distribution_web_acl, params)
      request.send_request(options)
    end

    # <p>Creates a staging distribution using the configuration of the provided primary distribution. A staging distribution is a copy of an existing distribution (called the primary distribution) that you can use in a continuous deployment workflow.</p> <p>After you create a staging distribution, you can use <code>UpdateDistribution</code> to modify the staging distribution's configuration. Then you can use <code>CreateContinuousDeploymentPolicy</code> to incrementally move traffic to the staging distribution.</p> <p>This API operation requires the following IAM permissions:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html">GetDistribution</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html">CreateDistribution</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CopyDistribution.html">CopyDistribution</a> </p> </li> </ul>
    # @param [Hash, Types::CopyDistributionRequest] params
    # @option params [String] :primary_distribution_id
    #   <p>The identifier of the primary distribution whose configuration you are copying. To get a distribution ID, use <code>ListDistributions</code>.</p>
    # @option params [Boolean] :staging
    #   <p>The type of distribution that your primary distribution will be copied to. The only valid value is <code>True</code>, indicating that you are copying to a staging distribution.</p>
    # @option params [String] :if_match
    #   <p>The version identifier of the primary distribution whose configuration you are copying. This is the <code>ETag</code> value returned in the response to <code>GetDistribution</code> and <code>GetDistributionConfig</code>.</p>
    # @option params [String] :caller_reference
    #   <p>A value that uniquely identifies a request to create a resource. This helps to prevent CloudFront from creating a duplicate resource if you accidentally resubmit an identical request.</p>
    # @option params [Boolean] :enabled
    #   <p>A Boolean flag to specify the state of the staging distribution when it's created. When you set this value to <code>True</code>, the staging distribution is enabled. When you set this value to <code>False</code>, the staging distribution is disabled.</p> <p>If you omit this field, the default value is <code>True</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     primary_distribution_id: "string", # required
    #     staging: false,
    #     if_match: "string",
    #     caller_reference: "string", # required
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.copy_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now, # required
    #       in_progress_invalidation_batches: 1, # required
    #       domain_name: "string", # required
    #       active_trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       active_trusted_key_groups: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_group_id: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       alias_icp_recordals: [
    #         {
    #           cname: "string",
    #           icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #         }
    #       ]
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CopyDistributionResult]
    def copy_distribution(params = {}, options = {})
      request = build_request(:copy_distribution, params)
      request.send_request(options)
    end

    # <p>Creates an Anycast static IP list.</p>
    # @param [Hash, Types::CreateAnycastIpListRequest] params
    # @option params [String] :name
    #   <p>Name of the Anycast static IP list.</p>
    # @option params [Integer] :ip_count
    #   <p>The number of static IP addresses that are allocated to the Anycast static IP list. Valid values: 21 or 3.</p>
    # @option params [Types::Tags] :tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AnycastIpListName", # required
    #     ip_count: 1, # required
    #     tags: {
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_anycast_ip_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anycast_ip_list: {
    #       id: "string", # required
    #       name: "AnycastIpListName", # required
    #       status: "string", # required
    #       arn: "string", # required
    #       anycast_ips: ["string"], # required
    #       ip_count: 1, # required
    #       last_modified_time: Time.now, # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::CreateAnycastIpListResult]
    def create_anycast_ip_list(params = {}, options = {})
      request = build_request(:create_anycast_ip_list, params)
      request.send_request(options)
    end

    # <p>Creates a cache policy.</p> <p>After you create a cache policy, you can attach it to one or more cache behaviors. When it's attached to a cache behavior, the cache policy determines the following:</p> <ul> <li> <p>The values that CloudFront includes in the <i>cache key</i>. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> </li> <li> <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.</p> <important> <p>If your minimum TTL is greater than 0, CloudFront will cache content for at least the duration specified in the cache policy's minimum TTL, even if the <code>Cache-Control: no-cache</code>, <code>no-store</code>, or <code>private</code> directives are present in the origin headers.</p> </important> </li> </ul> <p>The headers, cookies, and query strings that are included in the cache key are also included in requests that CloudFront sends to the origin. CloudFront sends a request when it can't find an object in its cache that matches the request's cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p> <p>For more information about cache policies, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html">Controlling the cache key</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateCachePolicyRequest] params
    # @option params [Types::CachePolicyConfig] :cache_policy_config
    #   <p>A cache policy configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: { # required
    #           header_behavior: "none" # One of: ["none", "whitelist"], # required
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_cache_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       cache_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         default_ttl: 1,
    #         max_ttl: 1,
    #         min_ttl: 1, # required
    #         parameters_in_cache_key_and_forwarded_to_origin: {
    #           enable_accept_encoding_gzip: false, # required
    #           enable_accept_encoding_brotli: false,
    #           headers_config: { # required
    #             header_behavior: "none" # One of: ["none", "whitelist"], # required
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           cookies_config: { # required
    #             cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #             cookies: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           query_strings_config: { # required
    #             query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #             query_strings: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateCachePolicyResult]
    def create_cache_policy(params = {}, options = {})
      request = build_request(:create_cache_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateCloudFrontOriginAccessIdentityRequest] params
    # @option params [Types::CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   <p>The current configuration information for the identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_front_origin_access_identity_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_cloud_front_origin_access_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_front_origin_access_identity: {
    #       id: "string", # required
    #       s3_canonical_user_id: "string", # required
    #       cloud_front_origin_access_identity_config: {
    #         caller_reference: "string", # required
    #         comment: "string", # required
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateCloudFrontOriginAccessIdentityResult]
    def create_cloud_front_origin_access_identity(params = {}, options = {})
      request = build_request(:create_cloud_front_origin_access_identity, params)
      request.send_request(options)
    end

    # <p>Creates a connection group.</p>
    # @param [Hash, Types::CreateConnectionGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the connection group. Enter a friendly identifier that is unique within your Amazon Web Services account. This name can't be updated after you create the connection group.</p>
    # @option params [Boolean] :ipv6_enabled
    #   <p>Enable IPv6 for the connection group. The default is <code>true</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6">Enable IPv6</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @option params [Types::Tags] :tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @option params [String] :anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    # @option params [Boolean] :enabled
    #   <p>Enable the connection group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string", # required
    #     ipv6_enabled: false,
    #     tags: {
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     },
    #     anycast_ip_list_id: "string",
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.create_connection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_group: {
    #       id: "string",
    #       name: "string",
    #       arn: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       ipv6_enabled: false,
    #       routing_endpoint: "string",
    #       anycast_ip_list_id: "string",
    #       status: "string",
    #       enabled: false,
    #       is_default: false
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::CreateConnectionGroupResult]
    def create_connection_group(params = {}, options = {})
      request = build_request(:create_connection_group, params)
      request.send_request(options)
    end

    # <p>Creates a continuous deployment policy that distributes traffic for a custom domain name to two different CloudFront distributions.</p> <p>To use a continuous deployment policy, first use <code>CopyDistribution</code> to create a staging distribution, then use <code>UpdateDistribution</code> to modify the staging distribution's configuration.</p> <p>After you create and update a staging distribution, you can use a continuous deployment policy to incrementally move traffic to the staging distribution. This workflow enables you to test changes to a distribution's configuration before moving all of your domain's production traffic to the new configuration.</p>
    # @param [Hash, Types::CreateContinuousDeploymentPolicyRequest] params
    # @option params [Types::ContinuousDeploymentPolicyConfig] :continuous_deployment_policy_config
    #   <p>Contains the configuration for a continuous deployment policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     continuous_deployment_policy_config: { # required
    #       staging_distribution_dns_names: { # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       enabled: false, # required
    #       traffic_config: {
    #         single_weight_config: {
    #           weight: 1.0, # required
    #           session_stickiness_config: {
    #             idle_ttl: 1, # required
    #             maximum_ttl: 1, # required
    #           }
    #         },
    #         single_header_config: {
    #           header: "string", # required
    #           value: "string", # required
    #         },
    #         type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_continuous_deployment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_deployment_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       continuous_deployment_policy_config: { # required
    #         staging_distribution_dns_names: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         enabled: false, # required
    #         traffic_config: {
    #           single_weight_config: {
    #             weight: 1.0, # required
    #             session_stickiness_config: {
    #               idle_ttl: 1, # required
    #               maximum_ttl: 1, # required
    #             }
    #           },
    #           single_header_config: {
    #             header: "string", # required
    #             value: "string", # required
    #           },
    #           type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateContinuousDeploymentPolicyResult]
    def create_continuous_deployment_policy(params = {}, options = {})
      request = build_request(:create_continuous_deployment_policy, params)
      request.send_request(options)
    end

    # <p>Creates a CloudFront distribution.</p>
    # @param [Hash, Types::CreateDistributionRequest] params
    # @option params [Types::DistributionConfig] :distribution_config
    #   <p>The distribution's configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_config: { # required
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [ # required
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "sensitiveStringType", # required
    #                 }
    #               ]
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #               origin_read_timeout: 1
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #               ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #             },
    #             vpc_origin_config: {
    #               vpc_origin_id: "string", # required
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             response_completion_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: "OriginShieldRegion"
    #             },
    #             origin_access_control_id: "string"
    #           }
    #         ]
    #       },
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             failover_criteria: { # required
    #               status_codes: { # required
    #                 quantity: 1, # required
    #                 items: [1], # required
    #               }
    #             },
    #             members: { # required
    #               quantity: 1, # required
    #               items: [ # required
    #                 {
    #                   origin_id: "string", # required
    #                 }
    #               ]
    #             },
    #             selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #           }
    #         ]
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #           }
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               include_body: false
    #             }
    #           ]
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: "FunctionARN", # required
    #               event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #             }
    #           ]
    #         },
    #         field_level_encryption_id: "string",
    #         realtime_log_config_arn: "string",
    #         cache_policy_id: "string",
    #         origin_request_policy_id: "string",
    #         response_headers_policy_id: "string",
    #         grpc_config: {
    #           enabled: false, # required
    #         },
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none" # One of: ["none", "whitelist", "all"], # required
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           }
    #         ]
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1
    #           }
    #         ]
    #       },
    #       comment: "CommentType", # required
    #       logging: {
    #         enabled: false,
    #         include_cookies: false,
    #         bucket: "string",
    #         prefix: "string"
    #       },
    #       price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "ServerCertificateId",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #         minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #         certificate: "string",
    #         certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #       is_ipv6_enabled: false,
    #       continuous_deployment_policy_id: "string",
    #       staging: false,
    #       anycast_ip_list_id: "string",
    #       tenant_config: {
    #         parameter_definitions: [
    #           {
    #             name: "ParameterName", # required
    #             definition: { # required
    #               string_schema: {
    #                 comment: "sensitiveStringType",
    #                 default_value: "ParameterValue",
    #                 required: false, # required
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now, # required
    #       in_progress_invalidation_batches: 1, # required
    #       domain_name: "string", # required
    #       active_trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       active_trusted_key_groups: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_group_id: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       alias_icp_recordals: [
    #         {
    #           cname: "string",
    #           icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #         }
    #       ]
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateDistributionResult]
    def create_distribution(params = {}, options = {})
      request = build_request(:create_distribution, params)
      request.send_request(options)
    end

    # <p>Creates a distribution tenant.</p>
    # @param [Hash, Types::CreateDistributionTenantRequest] params
    # @option params [String] :distribution_id
    #   <p>The ID of the multi-tenant distribution to use for creating the distribution tenant.</p>
    # @option params [String] :name
    #   <p>The name of the distribution tenant. Enter a friendly identifier that is unique within your Amazon Web Services account. This name can't be updated after you create the distribution tenant.</p>
    # @option params [Array<Types::DomainItem>] :domains
    #   <p>The domains associated with the distribution tenant. You must specify at least one domain in the request.</p>
    # @option params [Types::Tags] :tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @option params [Types::Customizations] :customizations
    #   <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    # @option params [String] :connection_group_id
    #   <p>The ID of the connection group to associate with the distribution tenant.</p>
    # @option params [Types::ManagedCertificateRequest] :managed_certificate_request
    #   <p>The configuration for the CloudFront managed ACM certificate request.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether the distribution tenant should be enabled when created. If the distribution tenant is disabled, the distribution tenant won't serve traffic.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #     name: "string", # required
    #     domains: [ # required
    #       {
    #         domain: "string", # required
    #       }
    #     ],
    #     tags: {
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     },
    #     customizations: {
    #       web_acl: {
    #         action: "override" # One of: ["override", "disable"], # required
    #         arn: "string"
    #       },
    #       certificate: {
    #         arn: "string", # required
    #       },
    #       geo_restrictions: {
    #         restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #         locations: ["string"]
    #       }
    #     },
    #     parameters: [
    #       {
    #         name: "ParameterName", # required
    #         value: "ParameterValue", # required
    #       }
    #     ],
    #     connection_group_id: "string",
    #     managed_certificate_request: {
    #       validation_token_host: "cloudfront" # One of: ["cloudfront", "self-hosted"], # required
    #       primary_domain_name: "string",
    #       certificate_transparency_logging_preference: "enabled" # One of: ["enabled", "disabled"]
    #     },
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.create_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_tenant: {
    #       id: "string",
    #       distribution_id: "string",
    #       name: "string",
    #       arn: "string",
    #       domains: [
    #         {
    #           domain: "string", # required
    #           status: "active" # One of: ["active", "inactive"]
    #         }
    #       ],
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       customizations: {
    #         web_acl: {
    #           action: "override" # One of: ["override", "disable"], # required
    #           arn: "string"
    #         },
    #         certificate: {
    #           arn: "string", # required
    #         },
    #         geo_restrictions: {
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           locations: ["string"]
    #         }
    #       },
    #       parameters: [
    #         {
    #           name: "ParameterName", # required
    #           value: "ParameterValue", # required
    #         }
    #       ],
    #       connection_group_id: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       enabled: false,
    #       status: "string"
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::CreateDistributionTenantResult]
    def create_distribution_tenant(params = {}, options = {})
      request = build_request(:create_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Create a new distribution with tags. This API operation requires the following IAM permissions:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html">CreateDistribution</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_TagResource.html">TagResource</a> </p> </li> </ul>
    # @param [Hash, Types::CreateDistributionWithTagsRequest] params
    # @option params [Types::DistributionConfigWithTags] :distribution_config_with_tags
    #   <p>The distribution's configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_config_with_tags: { # required
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       tags: { # required
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_distribution_with_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now, # required
    #       in_progress_invalidation_batches: 1, # required
    #       domain_name: "string", # required
    #       active_trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       active_trusted_key_groups: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_group_id: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       alias_icp_recordals: [
    #         {
    #           cname: "string",
    #           icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #         }
    #       ]
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateDistributionWithTagsResult]
    def create_distribution_with_tags(params = {}, options = {})
      request = build_request(:create_distribution_with_tags, params)
      request.send_request(options)
    end

    # <p>Create a new field-level encryption configuration.</p>
    # @param [Hash, Types::CreateFieldLevelEncryptionConfigRequest] params
    # @option params [Types::FieldLevelEncryptionConfig] :field_level_encryption_config
    #   <p>The request to create a new field-level encryption configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     field_level_encryption_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             }
    #           ]
    #         }
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded" # One of: ["URLEncoded"], # required
    #               profile_id: "string",
    #               content_type: "string", # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_field_level_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       field_level_encryption_config: { # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         query_arg_profile_config: {
    #           forward_when_query_arg_profile_is_unknown: false, # required
    #           query_arg_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 query_arg: "string", # required
    #                 profile_id: "string", # required
    #               }
    #             ]
    #           }
    #         },
    #         content_type_profile_config: {
    #           forward_when_content_type_is_unknown: false, # required
    #           content_type_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 format: "URLEncoded" # One of: ["URLEncoded"], # required
    #                 profile_id: "string",
    #                 content_type: "string", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateFieldLevelEncryptionConfigResult]
    def create_field_level_encryption_config(params = {}, options = {})
      request = build_request(:create_field_level_encryption_config, params)
      request.send_request(options)
    end

    # <p>Create a field-level encryption profile.</p>
    # @param [Hash, Types::CreateFieldLevelEncryptionProfileRequest] params
    # @option params [Types::FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   <p>The request to create a field-level encryption profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     field_level_encryption_profile_config: { # required
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_field_level_encryption_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_profile: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       field_level_encryption_profile_config: { # required
    #         name: "string", # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         encryption_entities: { # required
    #           quantity: 1, # required
    #           items: [
    #             {
    #               public_key_id: "string", # required
    #               provider_id: "string", # required
    #               field_patterns: { # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateFieldLevelEncryptionProfileResult]
    def create_field_level_encryption_profile(params = {}, options = {})
      request = build_request(:create_field_level_encryption_profile, params)
      request.send_request(options)
    end

    # <p>Creates a CloudFront function.</p> <p>To create a function, you provide the function code and some configuration information about the function. The response contains an Amazon Resource Name (ARN) that uniquely identifies the function.</p> <p>When you create a function, it's in the <code>DEVELOPMENT</code> stage. In this stage, you can test the function with <code>TestFunction</code>, and update it with <code>UpdateFunction</code>.</p> <p>When you're ready to use your function with a CloudFront distribution, use <code>PublishFunction</code> to copy the function from the <code>DEVELOPMENT</code> stage to <code>LIVE</code>. When it's live, you can attach the function to a distribution's cache behavior, using the function's ARN.</p>
    # @param [Hash, Types::CreateFunctionRequest] params
    # @option params [String] :name
    #   <p>A name to identify the function.</p>
    # @option params [Types::FunctionConfig] :function_config
    #   <p>Configuration information about the function, including an optional comment and the function's runtime.</p>
    # @option params [String] :function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @example To create a function
    #   # Use the following command to create a function.
    #   params = {
    #     name: "my-function-name",
    #     function_config: {
    #       comment: "my-function-comment",
    #       runtime: cloudfront-js-2.0,
    #       key_value_store_associations: {
    #         quantity: 1,
    #         items: [
    #           {
    #             key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889"
    #           }
    #         ]
    #       }
    #     },
    #     function_code: "function-code.js"
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    #   response.to_h #=>
    #   {
    #     function_summary: {
    #       name: "my-function-name",
    #       status: "UNPUBLISHED",
    #       function_config: {
    #         comment: "my-function-comment",
    #         runtime: cloudfront-js-2.0,
    #         key_value_store_associations: {
    #           quantity: 1,
    #           items: [
    #             {
    #               key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889"
    #             }
    #           ]
    #         }
    #       },
    #       function_metadata: {
    #         function_arn: "arn:aws:cloudfront::123456789012:function/my-function-name",
    #         stage: DEVELOPMENT,
    #         created_time: Time.parse("2023-11-07T19:53:50.334Z"),
    #         last_modified_time: Time.parse("2023-11-07T19:53:50.334Z")
    #       }
    #     },
    #     location: "https://cloudfront.amazonaws.com/2020-05-31/function/arn:aws:cloudfront::123456789012:function/my-function-name",
    #     e_tag: "ETVPDKIKX0DER"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     function_config: { # required
    #       comment: "string", # required
    #       runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #       key_value_store_associations: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_value_store_arn: "KeyValueStoreARN", # required
    #           }
    #         ]
    #       }
    #     },
    #     function_code: "data", # required
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_summary: {
    #       name: "FunctionName", # required
    #       status: "string",
    #       function_config: { # required
    #         comment: "string", # required
    #         runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #         key_value_store_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               key_value_store_arn: "KeyValueStoreARN", # required
    #             }
    #           ]
    #         }
    #       },
    #       function_metadata: { # required
    #         function_arn: "string", # required
    #         stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #         created_time: Time.now,
    #         last_modified_time: Time.now, # required
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateFunctionResult]
    def create_function(params = {}, options = {})
      request = build_request(:create_function, params)
      request.send_request(options)
    end

    # <p>Create a new invalidation. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateInvalidationRequest] params
    # @option params [String] :distribution_id
    #   <p>The distribution's id.</p>
    # @option params [Types::InvalidationBatch] :invalidation_batch
    #   <p>The batch information for the invalidation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #     invalidation_batch: { # required
    #       paths: { # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       caller_reference: "string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_invalidation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string",
    #     invalidation: {
    #       id: "string", # required
    #       status: "string", # required
    #       create_time: Time.now, # required
    #       invalidation_batch: { # required
    #         paths: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         caller_reference: "string", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateInvalidationResult]
    def create_invalidation(params = {}, options = {})
      request = build_request(:create_invalidation, params)
      request.send_request(options)
    end

    # <p>Creates an invalidation for a distribution tenant. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateInvalidationForDistributionTenantRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution tenant.</p>
    # @option params [Types::InvalidationBatch] :invalidation_batch
    #   <p>An invalidation batch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     invalidation_batch: { # required
    #       paths: { # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       caller_reference: "string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_invalidation_for_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string",
    #     invalidation: {
    #       id: "string", # required
    #       status: "string", # required
    #       create_time: Time.now, # required
    #       invalidation_batch: { # required
    #         paths: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         caller_reference: "string", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateInvalidationForDistributionTenantResult]
    def create_invalidation_for_distribution_tenant(params = {}, options = {})
      request = build_request(:create_invalidation_for_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Creates a key group that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">CloudFront signed URLs and signed cookies</a>.</p> <p>To create a key group, you must specify at least one public key for the key group. After you create a key group, you can reference it from one or more cache behaviors. When you reference a key group in a cache behavior, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateKeyGroupRequest] params
    # @option params [Types::KeyGroupConfig] :key_group_config
    #   <p>A key group configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_group_config: { # required
    #       name: "string", # required
    #       items: ["string"], # required
    #       comment: "string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_key_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_group: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       key_group_config: { # required
    #         name: "string", # required
    #         items: ["string"], # required
    #         comment: "string"
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateKeyGroupResult]
    def create_key_group(params = {}, options = {})
      request = build_request(:create_key_group, params)
      request.send_request(options)
    end

    # <p>Specifies the key value store resource to add to your account. In your account, the key value store names must be unique. You can also import key value store data in JSON format from an S3 bucket by providing a valid <code>ImportSource</code> that you own.</p>
    # @param [Hash, Types::CreateKeyValueStoreRequest] params
    # @option params [String] :name
    #   <p>The name of the key value store. The minimum length is 1 character and the maximum length is 64 characters.</p>
    # @option params [String] :comment
    #   <p>The comment of the key value store.</p>
    # @option params [Types::ImportSource] :import_source
    #   <p>The S3 bucket that provides the source for the import. The source must be in a valid JSON format.</p>
    # @example To create a KeyValueStore
    #   # Use the following command to create a KeyValueStore.
    #   params = {
    #     name: "my-keyvaluestore-name",
    #     comment: "my-key-valuestore-comment",
    #     import_source: {
    #       source_type: S3,
    #       source_arn: "arn:aws:s3:::amzn-s3-demo-bucket/validJSON.json"
    #     }
    #   }
    #   options = {}
    #   response = client.create_key_value_store(params, options)
    #   response.to_h #=>
    #   {
    #     key_value_store: {
    #       name: "my-keyvaluestore-name",
    #       id: "54947df8-0e9e-4471-a2f9-9af509fb5889",
    #       comment: "my-key-valuestore-comment",
    #       arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889",
    #       status: "PROVISIONING",
    #       last_modified_time: Time.parse("2023-11-07T18:15:52.042Z")
    #     },
    #     e_tag: "ETVPDKIKX0DER",
    #     location: "https://cloudfront.amazonaws.com/2020-05-31/key-value-store/arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "KeyValueStoreName", # required
    #     comment: "KeyValueStoreComment",
    #     import_source: {
    #       source_type: "S3" # One of: ["S3"], # required
    #       source_arn: "string", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_key_value_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_value_store: {
    #       name: "string", # required
    #       id: "string", # required
    #       comment: "string", # required
    #       arn: "string", # required
    #       status: "string",
    #       last_modified_time: Time.now, # required
    #     },
    #     e_tag: "string",
    #     location: "string"
    #   }
    # @return [Types::CreateKeyValueStoreResult]
    def create_key_value_store(params = {}, options = {})
      request = build_request(:create_key_value_store, params)
      request.send_request(options)
    end

    # <p>Enables or disables additional Amazon CloudWatch metrics for the specified CloudFront distribution. The additional metrics incur an additional cost.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional">Viewing additional CloudFront distribution metrics</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateMonitoringSubscriptionRequest] params
    # @option params [String] :distribution_id
    #   <p>The ID of the distribution that you are enabling metrics for.</p>
    # @option params [Types::MonitoringSubscription] :monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #     monitoring_subscription: { # required
    #       realtime_metrics_subscription_config: {
    #         realtime_metrics_subscription_status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_monitoring_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitoring_subscription: {
    #       realtime_metrics_subscription_config: {
    #         realtime_metrics_subscription_status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #       }
    #     }
    #   }
    # @return [Types::CreateMonitoringSubscriptionResult]
    def create_monitoring_subscription(params = {}, options = {})
      request = build_request(:create_monitoring_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a new origin access control in CloudFront. After you create an origin access control, you can add it to an origin in a CloudFront distribution so that CloudFront sends authenticated (signed) requests to the origin.</p> <p>This makes it possible to block public access to the origin, allowing viewers (users) to access the origin's content only through CloudFront.</p> <p>For more information about using a CloudFront origin access control, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html">Restricting access to an Amazon Web Services origin</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateOriginAccessControlRequest] params
    # @option params [Types::OriginAccessControlConfig] :origin_access_control_config
    #   <p>Contains the origin access control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origin_access_control_config: { # required
    #       name: "string", # required
    #       description: "string",
    #       signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #       signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #       origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_origin_access_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_access_control: {
    #       id: "string", # required
    #       origin_access_control_config: {
    #         name: "string", # required
    #         description: "string",
    #         signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #         signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #         origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateOriginAccessControlResult]
    def create_origin_access_control(params = {}, options = {})
      request = build_request(:create_origin_access_control, params)
      request.send_request(options)
    end

    # <p>Creates an origin request policy.</p> <p>After you create an origin request policy, you can attach it to one or more cache behaviors. When it's attached to a cache behavior, the origin request policy determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:</p> <ul> <li> <p>The request body and the URL path (without the domain name) from the viewer request.</p> </li> <li> <p>The headers that CloudFront automatically includes in every origin request, including <code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p> </li> <li> <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.</p> </li> </ul> <p>CloudFront sends a request when it can't find a valid object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use <code>CachePolicy</code>.</p> <p>For more information about origin request policies, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html">Controlling origin requests</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateOriginRequestPolicyRequest] params
    # @option params [Types::OriginRequestPolicyConfig] :origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origin_request_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       headers_config: { # required
    #         header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #         headers: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       cookies_config: { # required
    #         cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #         cookies: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       query_strings_config: { # required
    #         query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #         query_strings: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_origin_request_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_request_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       origin_request_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         headers_config: { # required
    #           header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateOriginRequestPolicyResult]
    def create_origin_request_policy(params = {}, options = {})
      request = build_request(:create_origin_request_policy, params)
      request.send_request(options)
    end

    # <p>Uploads a public key to CloudFront that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    # @param [Hash, Types::CreatePublicKeyRequest] params
    # @option params [Types::PublicKeyConfig] :public_key_config
    #   <p>A CloudFront public key configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     public_key_config: { # required
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key: {
    #       id: "string", # required
    #       created_time: Time.now, # required
    #       public_key_config: { # required
    #         caller_reference: "string", # required
    #         name: "string", # required
    #         encoded_key: "string", # required
    #         comment: "string"
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreatePublicKeyResult]
    def create_public_key(params = {}, options = {})
      request = build_request(:create_public_key, params)
      request.send_request(options)
    end

    # <p>Creates a real-time log configuration.</p> <p>After you create a real-time log configuration, you can attach it to one or more cache behaviors to send real-time log data to the specified Amazon Kinesis data stream.</p> <p>For more information about real-time log configurations, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateRealtimeLogConfigRequest] params
    # @option params [Array<Types::EndPoint>] :end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>
    # @option params [Array<String>] :fields
    #   <p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @option params [String] :name
    #   <p>A unique name to identify this real-time log configuration.</p>
    # @option params [Integer] :sampling_rate
    #   <p>The sampling rate for this real-time log configuration. You can specify a whole number between 1 and 100 (inclusive) to determine the percentage of viewer requests that are represented in the real-time log data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     end_points: [ # required
    #       {
    #         stream_type: "string", # required
    #         kinesis_stream_config: {
    #           role_arn: "string", # required
    #           stream_arn: "string", # required
    #         }
    #       }
    #     ],
    #     fields: ["string"], # required
    #     name: "string", # required
    #     sampling_rate: 1, # required
    #   }
    #   options = {}
    #   response = client.create_realtime_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     realtime_log_config: {
    #       arn: "string", # required
    #       name: "string", # required
    #       sampling_rate: 1, # required
    #       end_points: [ # required
    #         {
    #           stream_type: "string", # required
    #           kinesis_stream_config: {
    #             role_arn: "string", # required
    #             stream_arn: "string", # required
    #           }
    #         }
    #       ],
    #       fields: ["string"], # required
    #     }
    #   }
    # @return [Types::CreateRealtimeLogConfigResult]
    def create_realtime_log_config(params = {}, options = {})
      request = build_request(:create_realtime_log_config, params)
      request.send_request(options)
    end

    # <p>Creates a response headers policy.</p> <p>A response headers policy contains information about a set of HTTP headers. To create a response headers policy, you provide some metadata about the policy and a set of configurations that specify the headers.</p> <p>After you create a response headers policy, you can use its ID to attach it to one or more cache behaviors in a CloudFront distribution. When it's attached to a cache behavior, the response headers policy affects the HTTP headers that CloudFront includes in HTTP responses to requests that match the cache behavior. CloudFront adds or removes response headers according to the configuration of the response headers policy.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html">Adding or removing HTTP headers in CloudFront responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::CreateResponseHeadersPolicyRequest] params
    # @option params [Types::ResponseHeadersPolicyConfig] :response_headers_policy_config
    #   <p>Contains metadata about the response headers policy, and a set of configurations that specify the HTTP headers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     response_headers_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       cors_config: {
    #         access_control_allow_origins: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_headers: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_methods: { # required
    #           quantity: 1, # required
    #           items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #         },
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false, # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: "string"
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: "string", # required
    #         },
    #         content_type_options: {
    #           override: false, # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1, # required
    #         }
    #       },
    #       server_timing_headers_config: {
    #         enabled: false, # required
    #         sampling_rate: 1.0
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #             value: "string", # required
    #             override: false, # required
    #           }
    #         ]
    #       },
    #       remove_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_response_headers_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_headers_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       response_headers_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         cors_config: {
    #           access_control_allow_origins: { # required
    #             quantity: 1, # required
    #             items: ["string"], # required
    #           },
    #           access_control_allow_headers: { # required
    #             quantity: 1, # required
    #             items: ["string"], # required
    #           },
    #           access_control_allow_methods: { # required
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #           },
    #           access_control_allow_credentials: false, # required
    #           access_control_expose_headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           access_control_max_age_sec: 1,
    #           origin_override: false, # required
    #         },
    #         security_headers_config: {
    #           xss_protection: {
    #             override: false, # required
    #             protection: false, # required
    #             mode_block: false,
    #             report_uri: "string"
    #           },
    #           frame_options: {
    #             override: false, # required
    #             frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #           },
    #           referrer_policy: {
    #             override: false, # required
    #             referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #           },
    #           content_security_policy: {
    #             override: false, # required
    #             content_security_policy: "string", # required
    #           },
    #           content_type_options: {
    #             override: false, # required
    #           },
    #           strict_transport_security: {
    #             override: false, # required
    #             include_subdomains: false,
    #             preload: false,
    #             access_control_max_age_sec: 1, # required
    #           }
    #         },
    #         server_timing_headers_config: {
    #           enabled: false, # required
    #           sampling_rate: 1.0
    #         },
    #         custom_headers_config: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               header: "string", # required
    #               value: "string", # required
    #               override: false, # required
    #             }
    #           ]
    #         },
    #         remove_headers_config: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               header: "string", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateResponseHeadersPolicyResult]
    def create_response_headers_policy(params = {}, options = {})
      request = build_request(:create_response_headers_policy, params)
      request.send_request(options)
    end

    # <p>This API is deprecated. Amazon CloudFront is deprecating real-time messaging protocol (RTMP) distributions on December 31, 2020. For more information, <a href="http://forums.aws.amazon.com/ann.jspa?annID=7356">read the announcement</a> on the Amazon CloudFront discussion forum.</p>
    # @param [Hash, Types::CreateStreamingDistributionRequest] params
    # @option params [Types::StreamingDistributionConfig] :streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     streaming_distribution_config: { # required
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #       enabled: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_streaming_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now,
    #       domain_name: "string", # required
    #       active_trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateStreamingDistributionResult]
    def create_streaming_distribution(params = {}, options = {})
      request = build_request(:create_streaming_distribution, params)
      request.send_request(options)
    end

    # <p>This API is deprecated. Amazon CloudFront is deprecating real-time messaging protocol (RTMP) distributions on December 31, 2020. For more information, <a href="http://forums.aws.amazon.com/ann.jspa?annID=7356">read the announcement</a> on the Amazon CloudFront discussion forum.</p>
    # @param [Hash, Types::CreateStreamingDistributionWithTagsRequest] params
    # @option params [Types::StreamingDistributionConfigWithTags] :streaming_distribution_config_with_tags
    #   <p>The streaming distribution's configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     streaming_distribution_config_with_tags: { # required
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #       },
    #       tags: { # required
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_streaming_distribution_with_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now,
    #       domain_name: "string", # required
    #       active_trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateStreamingDistributionWithTagsResult]
    def create_streaming_distribution_with_tags(params = {}, options = {})
      request = build_request(:create_streaming_distribution_with_tags, params)
      request.send_request(options)
    end

    # <p>Create an Amazon CloudFront VPC origin.</p>
    # @param [Hash, Types::CreateVpcOriginRequest] params
    # @option params [Types::VpcOriginEndpointConfig] :vpc_origin_endpoint_config
    #   <p>The VPC origin endpoint configuration.</p>
    # @option params [Types::Tags] :tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @example To create a VPC origin
    #   # The following command creates a VPC origin:
    #   params = {
    #     vpc_origin_endpoint_config: {
    #       name: "my-vpcorigin-name",
    #       arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d",
    #       http_port: 80,
    #       https_port: 443,
    #       origin_protocol_policy: match-viewer,
    #       origin_ssl_protocols: {
    #         quantity: 2,
    #         items: [
    #           TLSv1.1,
    #           TLSv1.2
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_vpc_origin(params, options)
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       status: "Deploying",
    #       vpc_origin_endpoint_config: {
    #         name: "my-vpcorigin-name",
    #         origin_ssl_protocols: {
    #           items: [
    #             TLSv1.1,
    #             TLSv1.2
    #           ],
    #           quantity: 2
    #         },
    #         origin_protocol_policy: match-viewer,
    #         http_port: 80,
    #         https_port: 443,
    #         arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d"
    #       },
    #       created_time: Time.parse("2024-10-15T17:19:42.318Z"),
    #       last_modified_time: Time.parse("2024-10-15T17:19:42.318Z"),
    #       id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #       arn: "arn:aws:cloudfront::123456789012:vpcorigin/vo_BQwjxxQxjCaBcQLzJUFkDM"
    #     },
    #     e_tag: "E23ZP02F085DFQ",
    #     location: "https://cloudfront.amazonaws.com/2020-05-31/vpc-origin/vo_BQwjxxQxjCaBcQLzJUFkDM"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_origin_endpoint_config: { # required
    #       name: "string", # required
    #       arn: "string", # required
    #       http_port: 1, # required
    #       https_port: 1, # required
    #       origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #       origin_ssl_protocols: {
    #         quantity: 1, # required
    #         items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #       }
    #     },
    #     tags: {
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_vpc_origin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       vpc_origin_endpoint_config: { # required
    #         name: "string", # required
    #         arn: "string", # required
    #         http_port: 1, # required
    #         https_port: 1, # required
    #         origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #         origin_ssl_protocols: {
    #           quantity: 1, # required
    #           items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #         }
    #       }
    #     },
    #     location: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::CreateVpcOriginResult]
    def create_vpc_origin(params = {}, options = {})
      request = build_request(:create_vpc_origin, params)
      request.send_request(options)
    end

    # <p>Deletes an Anycast static IP list.</p>
    # @param [Hash, Types::DeleteAnycastIpListRequest] params
    # @option params [String] :id
    #   <p>The ID of the Anycast static IP list.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the Anycast static IP list that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_anycast_ip_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_anycast_ip_list(params = {}, options = {})
      request = build_request(:delete_anycast_ip_list, params)
      request.send_request(options)
    end

    # <p>Deletes a cache policy.</p> <p>You cannot delete a cache policy if it's attached to a cache behavior. First update your distributions to remove the cache policy from all cache behaviors, then delete the cache policy.</p> <p>To delete a cache policy, you must provide the policy's identifier and version. To get these values, you can use <code>ListCachePolicies</code> or <code>GetCachePolicy</code>.</p>
    # @param [Hash, Types::DeleteCachePolicyRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy that you are deleting. To get the identifier, you can use <code>ListCachePolicies</code>.</p>
    # @option params [String] :if_match
    #   <p>The version of the cache policy that you are deleting. The version is the cache policy's <code>ETag</code> value, which you can get using <code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or <code>GetCachePolicyConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_cache_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cache_policy(params = {}, options = {})
      request = build_request(:delete_cache_policy, params)
      request.send_request(options)
    end

    # <p>Delete an origin access identity.</p>
    # @param [Hash, Types::DeleteCloudFrontOriginAccessIdentityRequest] params
    # @option params [String] :id
    #   <p>The origin access identity's ID.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_cloud_front_origin_access_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cloud_front_origin_access_identity(params = {}, options = {})
      request = build_request(:delete_cloud_front_origin_access_identity, params)
      request.send_request(options)
    end

    # <p>Deletes a connection group.</p>
    # @param [Hash, Types::DeleteConnectionGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the connection group to delete.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the connection group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_connection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connection_group(params = {}, options = {})
      request = build_request(:delete_connection_group, params)
      request.send_request(options)
    end

    # <p>Deletes a continuous deployment policy.</p> <p>You cannot delete a continuous deployment policy that's attached to a primary distribution. First update your distribution to remove the continuous deployment policy, then you can delete the policy.</p>
    # @param [Hash, Types::DeleteContinuousDeploymentPolicyRequest] params
    # @option params [String] :id
    #   <p>The identifier of the continuous deployment policy that you are deleting.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the continuous deployment policy that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_continuous_deployment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_continuous_deployment_policy(params = {}, options = {})
      request = build_request(:delete_continuous_deployment_policy, params)
      request.send_request(options)
    end

    # <p>Delete a distribution.</p>
    # @param [Hash, Types::DeleteDistributionRequest] params
    # @option params [String] :id
    #   <p>The distribution ID.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_distribution(params = {}, options = {})
      request = build_request(:delete_distribution, params)
      request.send_request(options)
    end

    # <p>Deletes a distribution tenant. If you use this API operation to delete a distribution tenant that is currently enabled, the request will fail.</p> <p>To delete a distribution tenant, you must first disable the distribution tenant by using the <code>UpdateDistributionTenant</code> API operation.</p>
    # @param [Hash, Types::DeleteDistributionTenantRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution tenant to delete.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution tenant. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_distribution_tenant(params = {}, options = {})
      request = build_request(:delete_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Remove a field-level encryption configuration.</p>
    # @param [Hash, Types::DeleteFieldLevelEncryptionConfigRequest] params
    # @option params [String] :id
    #   <p>The ID of the configuration you want to delete from CloudFront.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_field_level_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_field_level_encryption_config(params = {}, options = {})
      request = build_request(:delete_field_level_encryption_config, params)
      request.send_request(options)
    end

    # <p>Remove a field-level encryption profile.</p>
    # @param [Hash, Types::DeleteFieldLevelEncryptionProfileRequest] params
    # @option params [String] :id
    #   <p>Request the ID of the profile you want to delete from CloudFront.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_field_level_encryption_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_field_level_encryption_profile(params = {}, options = {})
      request = build_request(:delete_field_level_encryption_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a CloudFront function.</p> <p>You cannot delete a function if it's associated with a cache behavior. First, update your distributions to remove the function association from all cache behaviors, then delete the function.</p> <p>To delete a function, you must provide the function's name and version (<code>ETag</code> value). To get these values, you can use <code>ListFunctions</code> and <code>DescribeFunction</code>.</p>
    # @param [Hash, Types::DeleteFunctionRequest] params
    # @option params [String] :name
    #   <p>The name of the function that you are deleting.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are deleting, which you can get using <code>DescribeFunction</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_function(params = {}, options = {})
      request = build_request(:delete_function, params)
      request.send_request(options)
    end

    # <p>Deletes a key group.</p> <p>You cannot delete a key group that is referenced in a cache behavior. First update your distributions to remove the key group from all cache behaviors, then delete the key group.</p> <p>To delete a key group, you must provide the key group's identifier and version. To get these values, use <code>ListKeyGroups</code> followed by <code>GetKeyGroup</code> or <code>GetKeyGroupConfig</code>.</p>
    # @param [Hash, Types::DeleteKeyGroupRequest] params
    # @option params [String] :id
    #   <p>The identifier of the key group that you are deleting. To get the identifier, use <code>ListKeyGroups</code>.</p>
    # @option params [String] :if_match
    #   <p>The version of the key group that you are deleting. The version is the key group's <code>ETag</code> value. To get the <code>ETag</code>, use <code>GetKeyGroup</code> or <code>GetKeyGroupConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_key_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_key_group(params = {}, options = {})
      request = build_request(:delete_key_group, params)
      request.send_request(options)
    end

    # <p>Specifies the key value store to delete.</p>
    # @param [Hash, Types::DeleteKeyValueStoreRequest] params
    # @option params [String] :name
    #   <p>The name of the key value store.</p>
    # @option params [String] :if_match
    #   <p>The key value store to delete, if a match occurs.</p>
    # @example To delete a KeyValueStore
    #   # Use the following command to delete a KeyValueStore.
    #   params = {
    #     name: "my-keyvaluestore-name",
    #     if_match: "ETVPDKIKX0DER"
    #   }
    #   options = {}
    #   response = client.delete_key_value_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "KeyValueStoreName", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_key_value_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_key_value_store(params = {}, options = {})
      request = build_request(:delete_key_value_store, params)
      request.send_request(options)
    end

    # <p>Disables additional CloudWatch metrics for the specified CloudFront distribution.</p>
    # @param [Hash, Types::DeleteMonitoringSubscriptionRequest] params
    # @option params [String] :distribution_id
    #   <p>The ID of the distribution that you are disabling metrics for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_monitoring_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMonitoringSubscriptionResult]
    def delete_monitoring_subscription(params = {}, options = {})
      request = build_request(:delete_monitoring_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes a CloudFront origin access control.</p> <p>You cannot delete an origin access control if it's in use. First, update all distributions to remove the origin access control from all origins, then delete the origin access control.</p>
    # @param [Hash, Types::DeleteOriginAccessControlRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the origin access control that you are deleting.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the origin access control that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_origin_access_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_origin_access_control(params = {}, options = {})
      request = build_request(:delete_origin_access_control, params)
      request.send_request(options)
    end

    # <p>Deletes an origin request policy.</p> <p>You cannot delete an origin request policy if it's attached to any cache behaviors. First update your distributions to remove the origin request policy from all cache behaviors, then delete the origin request policy.</p> <p>To delete an origin request policy, you must provide the policy's identifier and version. To get the identifier, you can use <code>ListOriginRequestPolicies</code> or <code>GetOriginRequestPolicy</code>.</p>
    # @param [Hash, Types::DeleteOriginRequestPolicyRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy that you are deleting. To get the identifier, you can use <code>ListOriginRequestPolicies</code>.</p>
    # @option params [String] :if_match
    #   <p>The version of the origin request policy that you are deleting. The version is the origin request policy's <code>ETag</code> value, which you can get using <code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or <code>GetOriginRequestPolicyConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_origin_request_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_origin_request_policy(params = {}, options = {})
      request = build_request(:delete_origin_request_policy, params)
      request.send_request(options)
    end

    # <p>Remove a public key you previously added to CloudFront.</p>
    # @param [Hash, Types::DeletePublicKeyRequest] params
    # @option params [String] :id
    #   <p>The ID of the public key you want to remove from CloudFront.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_public_key(params = {}, options = {})
      request = build_request(:delete_public_key, params)
      request.send_request(options)
    end

    # <p>Deletes a real-time log configuration.</p> <p>You cannot delete a real-time log configuration if it's attached to a cache behavior. First update your distributions to remove the real-time log configuration from all cache behaviors, then delete the real-time log configuration.</p> <p>To delete a real-time log configuration, you can provide the configuration's name or its Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the name to identify the real-time log configuration to delete.</p>
    # @param [Hash, Types::DeleteRealtimeLogConfigRequest] params
    # @option params [String] :name
    #   <p>The name of the real-time log configuration to delete.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string",
    #     arn: "string"
    #   }
    #   options = {}
    #   response = client.delete_realtime_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_realtime_log_config(params = {}, options = {})
      request = build_request(:delete_realtime_log_config, params)
      request.send_request(options)
    end

    # <p>Deletes a response headers policy.</p> <p>You cannot delete a response headers policy if it's attached to a cache behavior. First update your distributions to remove the response headers policy from all cache behaviors, then delete the response headers policy.</p> <p>To delete a response headers policy, you must provide the policy's identifier and version. To get these values, you can use <code>ListResponseHeadersPolicies</code> or <code>GetResponseHeadersPolicy</code>.</p>
    # @param [Hash, Types::DeleteResponseHeadersPolicyRequest] params
    # @option params [String] :id
    #   <p>The identifier for the response headers policy that you are deleting.</p> <p>To get the identifier, you can use <code>ListResponseHeadersPolicies</code>.</p>
    # @option params [String] :if_match
    #   <p>The version of the response headers policy that you are deleting.</p> <p>The version is the response headers policy's <code>ETag</code> value, which you can get using <code>ListResponseHeadersPolicies</code>, <code>GetResponseHeadersPolicy</code>, or <code>GetResponseHeadersPolicyConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_response_headers_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_response_headers_policy(params = {}, options = {})
      request = build_request(:delete_response_headers_policy, params)
      request.send_request(options)
    end

    # <p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteStreamingDistributionRequest] params
    # @option params [String] :id
    #   <p>The distribution ID.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.delete_streaming_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_streaming_distribution(params = {}, options = {})
      request = build_request(:delete_streaming_distribution, params)
      request.send_request(options)
    end

    # <p>Delete an Amazon CloudFront VPC origin.</p>
    # @param [Hash, Types::DeleteVpcOriginRequest] params
    # @option params [String] :id
    #   <p>The VPC origin ID.</p>
    # @option params [String] :if_match
    #   <p>The version identifier of the VPC origin to delete. This is the <code>ETag</code> value returned in the response to <a>GetVpcOrigin</a>.</p>
    # @example To delete a VPC origin
    #   # The following command deletes a VPC origin:
    #   params = {
    #     id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #     if_match: "E1F83G8C2ARO7P"
    #   }
    #   options = {}
    #   response = client.delete_vpc_origin(params, options)
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       status: "Deploying",
    #       vpc_origin_endpoint_config: {
    #         name: "my-vpcorigin-name",
    #         origin_ssl_protocols: {
    #           items: [
    #             TLSv1.1,
    #             TLSv1.2
    #           ],
    #           quantity: 2
    #         },
    #         origin_protocol_policy: match-viewer,
    #         http_port: 80,
    #         https_port: 443,
    #         arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d"
    #       },
    #       created_time: Time.parse("2024-10-15T17:19:42.318Z"),
    #       last_modified_time: Time.parse("2024-10-15T17:57:08.965Z"),
    #       id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #       arn: "arn:aws:cloudfront::123456789012:vpcorigin/vo_BQwjxxQxjCaBcQLzJUFkDM"
    #     },
    #     e_tag: "E1PA6795UKMFR9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_origin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       vpc_origin_endpoint_config: { # required
    #         name: "string", # required
    #         arn: "string", # required
    #         http_port: 1, # required
    #         https_port: 1, # required
    #         origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #         origin_ssl_protocols: {
    #           quantity: 1, # required
    #           items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::DeleteVpcOriginResult]
    def delete_vpc_origin(params = {}, options = {})
      request = build_request(:delete_vpc_origin, params)
      request.send_request(options)
    end

    # <p>Gets configuration information and metadata about a CloudFront function, but not the function's code. To get a function's code, use <code>GetFunction</code>.</p> <p>To get configuration information and metadata about a function, you must provide the function's name and stage. To get these values, you can use <code>ListFunctions</code>.</p>
    # @param [Hash, Types::DescribeFunctionRequest] params
    # @option params [String] :name
    #   <p>The name of the function that you are getting information about.</p>
    # @option params [String] :stage
    #   <p>The function's stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #   }
    #   options = {}
    #   response = client.describe_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_summary: {
    #       name: "FunctionName", # required
    #       status: "string",
    #       function_config: { # required
    #         comment: "string", # required
    #         runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #         key_value_store_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               key_value_store_arn: "KeyValueStoreARN", # required
    #             }
    #           ]
    #         }
    #       },
    #       function_metadata: { # required
    #         function_arn: "string", # required
    #         stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #         created_time: Time.now,
    #         last_modified_time: Time.now, # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::DescribeFunctionResult]
    def describe_function(params = {}, options = {})
      request = build_request(:describe_function, params)
      request.send_request(options)
    end

    # <p>Specifies the key value store and its configuration.</p>
    # @param [Hash, Types::DescribeKeyValueStoreRequest] params
    # @option params [String] :name
    #   <p>The name of the key value store.</p>
    # @example To describe a KeyValueStore
    #   # Use the following command to describe a KeyValueStore.
    #   params = {
    #     name: "my-keyvaluestore-name"
    #   }
    #   options = {}
    #   response = client.describe_key_value_store(params, options)
    #   response.to_h #=>
    #   {
    #     key_value_store: {
    #       name: "my-keyvaluestore-name",
    #       id: "54947df8-0e9e-4471-a2f9-9af509fb5889",
    #       comment: "my-key-valuestore-comment",
    #       arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889",
    #       status: "READY",
    #       last_modified_time: Time.parse("2023-11-07T18:20:33.056Z")
    #     },
    #     e_tag: "ETVPDKIKX0DER"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "KeyValueStoreName", # required
    #   }
    #   options = {}
    #   response = client.describe_key_value_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_value_store: {
    #       name: "string", # required
    #       id: "string", # required
    #       comment: "string", # required
    #       arn: "string", # required
    #       status: "string",
    #       last_modified_time: Time.now, # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::DescribeKeyValueStoreResult]
    def describe_key_value_store(params = {}, options = {})
      request = build_request(:describe_key_value_store, params)
      request.send_request(options)
    end

    # <p>Disassociates a distribution tenant from the WAF web ACL.</p>
    # @param [Hash, Types::DisassociateDistributionTenantWebACLRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution tenant.</p>
    # @option params [String] :if_match
    #   <p>The current version of the distribution tenant that you're disassociating from the WAF web ACL. This is the <code>ETag</code> value returned in the response to the <code>GetDistributionTenant</code> API operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.disassociate_distribution_tenant_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::DisassociateDistributionTenantWebACLResult]
    def disassociate_distribution_tenant_web_acl(params = {}, options = {})
      request = build_request(:disassociate_distribution_tenant_web_acl, params)
      request.send_request(options)
    end

    # <p>Disassociates a distribution from the WAF web ACL.</p>
    # @param [Hash, Types::DisassociateDistributionWebACLRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution that you're disassociating from the WAF web ACL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.disassociate_distribution_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::DisassociateDistributionWebACLResult]
    def disassociate_distribution_web_acl(params = {}, options = {})
      request = build_request(:disassociate_distribution_web_acl, params)
      request.send_request(options)
    end

    # <p>Gets an Anycast static IP list.</p>
    # @param [Hash, Types::GetAnycastIpListRequest] params
    # @option params [String] :id
    #   <p>The ID of the Anycast static IP list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_anycast_ip_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anycast_ip_list: {
    #       id: "string", # required
    #       name: "AnycastIpListName", # required
    #       status: "string", # required
    #       arn: "string", # required
    #       anycast_ips: ["string"], # required
    #       ip_count: 1, # required
    #       last_modified_time: Time.now, # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetAnycastIpListResult]
    def get_anycast_ip_list(params = {}, options = {})
      request = build_request(:get_anycast_ip_list, params)
      request.send_request(options)
    end

    # <p>Gets a cache policy, including the following metadata:</p> <ul> <li> <p>The policy's identifier.</p> </li> <li> <p>The date and time when the policy was last modified.</p> </li> </ul> <p>To get a cache policy, you must provide the policy's identifier. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>
    # @param [Hash, Types::GetCachePolicyRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_cache_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       cache_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         default_ttl: 1,
    #         max_ttl: 1,
    #         min_ttl: 1, # required
    #         parameters_in_cache_key_and_forwarded_to_origin: {
    #           enable_accept_encoding_gzip: false, # required
    #           enable_accept_encoding_brotli: false,
    #           headers_config: { # required
    #             header_behavior: "none" # One of: ["none", "whitelist"], # required
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           cookies_config: { # required
    #             cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #             cookies: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           query_strings_config: { # required
    #             query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #             query_strings: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetCachePolicyResult]
    def get_cache_policy(params = {}, options = {})
      request = build_request(:get_cache_policy, params)
      request.send_request(options)
    end

    # <p>Gets a cache policy configuration.</p> <p>To get a cache policy configuration, you must provide the policy's identifier. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>
    # @param [Hash, Types::GetCachePolicyConfigRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_cache_policy_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_policy_config: {
    #       comment: "string",
    #       name: "string", # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: { # required
    #           header_behavior: "none" # One of: ["none", "whitelist"], # required
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetCachePolicyConfigResult]
    def get_cache_policy_config(params = {}, options = {})
      request = build_request(:get_cache_policy_config, params)
      request.send_request(options)
    end

    # <p>Get the information about an origin access identity.</p>
    # @param [Hash, Types::GetCloudFrontOriginAccessIdentityRequest] params
    # @option params [String] :id
    #   <p>The identity's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_front_origin_access_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_front_origin_access_identity: {
    #       id: "string", # required
    #       s3_canonical_user_id: "string", # required
    #       cloud_front_origin_access_identity_config: {
    #         caller_reference: "string", # required
    #         comment: "string", # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetCloudFrontOriginAccessIdentityResult]
    def get_cloud_front_origin_access_identity(params = {}, options = {})
      request = build_request(:get_cloud_front_origin_access_identity, params)
      request.send_request(options)
    end

    # <p>Get the configuration information about an origin access identity.</p>
    # @param [Hash, Types::GetCloudFrontOriginAccessIdentityConfigRequest] params
    # @option params [String] :id
    #   <p>The identity's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_front_origin_access_identity_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_front_origin_access_identity_config: {
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetCloudFrontOriginAccessIdentityConfigResult]
    def get_cloud_front_origin_access_identity_config(params = {}, options = {})
      request = build_request(:get_cloud_front_origin_access_identity_config, params)
      request.send_request(options)
    end

    # <p>Gets information about a connection group.</p>
    # @param [Hash, Types::GetConnectionGroupRequest] params
    # @option params [String] :identifier
    #   <p>The ID, name, or Amazon Resource Name (ARN) of the connection group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "string", # required
    #   }
    #   options = {}
    #   response = client.get_connection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_group: {
    #       id: "string",
    #       name: "string",
    #       arn: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       ipv6_enabled: false,
    #       routing_endpoint: "string",
    #       anycast_ip_list_id: "string",
    #       status: "string",
    #       enabled: false,
    #       is_default: false
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetConnectionGroupResult]
    def get_connection_group(params = {}, options = {})
      request = build_request(:get_connection_group, params)
      request.send_request(options)
    end

    # <p>Gets information about a connection group by using the endpoint that you specify.</p>
    # @param [Hash, Types::GetConnectionGroupByRoutingEndpointRequest] params
    # @option params [String] :routing_endpoint
    #   <p>The routing endpoint for the target connection group, such as d111111abcdef8.cloudfront.net.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_endpoint: "string", # required
    #   }
    #   options = {}
    #   response = client.get_connection_group_by_routing_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_group: {
    #       id: "string",
    #       name: "string",
    #       arn: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       ipv6_enabled: false,
    #       routing_endpoint: "string",
    #       anycast_ip_list_id: "string",
    #       status: "string",
    #       enabled: false,
    #       is_default: false
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetConnectionGroupByRoutingEndpointResult]
    def get_connection_group_by_routing_endpoint(params = {}, options = {})
      request = build_request(:get_connection_group_by_routing_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets a continuous deployment policy, including metadata (the policy's identifier and the date and time when the policy was last modified).</p>
    # @param [Hash, Types::GetContinuousDeploymentPolicyRequest] params
    # @option params [String] :id
    #   <p>The identifier of the continuous deployment policy that you are getting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_continuous_deployment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_deployment_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       continuous_deployment_policy_config: { # required
    #         staging_distribution_dns_names: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         enabled: false, # required
    #         traffic_config: {
    #           single_weight_config: {
    #             weight: 1.0, # required
    #             session_stickiness_config: {
    #               idle_ttl: 1, # required
    #               maximum_ttl: 1, # required
    #             }
    #           },
    #           single_header_config: {
    #             header: "string", # required
    #             value: "string", # required
    #           },
    #           type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetContinuousDeploymentPolicyResult]
    def get_continuous_deployment_policy(params = {}, options = {})
      request = build_request(:get_continuous_deployment_policy, params)
      request.send_request(options)
    end

    # <p>Gets configuration information about a continuous deployment policy.</p>
    # @param [Hash, Types::GetContinuousDeploymentPolicyConfigRequest] params
    # @option params [String] :id
    #   <p>The identifier of the continuous deployment policy whose configuration you are getting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_continuous_deployment_policy_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_deployment_policy_config: {
    #       staging_distribution_dns_names: { # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       enabled: false, # required
    #       traffic_config: {
    #         single_weight_config: {
    #           weight: 1.0, # required
    #           session_stickiness_config: {
    #             idle_ttl: 1, # required
    #             maximum_ttl: 1, # required
    #           }
    #         },
    #         single_header_config: {
    #           header: "string", # required
    #           value: "string", # required
    #         },
    #         type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetContinuousDeploymentPolicyConfigResult]
    def get_continuous_deployment_policy_config(params = {}, options = {})
      request = build_request(:get_continuous_deployment_policy_config, params)
      request.send_request(options)
    end

    # <p>Get the information about a distribution.</p>
    # @param [Hash, Types::GetDistributionRequest] params
    # @option params [String] :id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now, # required
    #       in_progress_invalidation_batches: 1, # required
    #       domain_name: "string", # required
    #       active_trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       active_trusted_key_groups: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_group_id: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       alias_icp_recordals: [
    #         {
    #           cname: "string",
    #           icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #         }
    #       ]
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetDistributionResult]
    def get_distribution(params = {}, options = {})
      request = build_request(:get_distribution, params)
      request.send_request(options)
    end

    # <p>Get the configuration information about a distribution.</p>
    # @param [Hash, Types::GetDistributionConfigRequest] params
    # @option params [String] :id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_distribution_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_config: {
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [ # required
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "sensitiveStringType", # required
    #                 }
    #               ]
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #               origin_read_timeout: 1
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #               ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #             },
    #             vpc_origin_config: {
    #               vpc_origin_id: "string", # required
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             response_completion_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: "OriginShieldRegion"
    #             },
    #             origin_access_control_id: "string"
    #           }
    #         ]
    #       },
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             failover_criteria: { # required
    #               status_codes: { # required
    #                 quantity: 1, # required
    #                 items: [1], # required
    #               }
    #             },
    #             members: { # required
    #               quantity: 1, # required
    #               items: [ # required
    #                 {
    #                   origin_id: "string", # required
    #                 }
    #               ]
    #             },
    #             selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #           }
    #         ]
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #           }
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               include_body: false
    #             }
    #           ]
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: "FunctionARN", # required
    #               event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #             }
    #           ]
    #         },
    #         field_level_encryption_id: "string",
    #         realtime_log_config_arn: "string",
    #         cache_policy_id: "string",
    #         origin_request_policy_id: "string",
    #         response_headers_policy_id: "string",
    #         grpc_config: {
    #           enabled: false, # required
    #         },
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none" # One of: ["none", "whitelist", "all"], # required
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           }
    #         ]
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1
    #           }
    #         ]
    #       },
    #       comment: "CommentType", # required
    #       logging: {
    #         enabled: false,
    #         include_cookies: false,
    #         bucket: "string",
    #         prefix: "string"
    #       },
    #       price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "ServerCertificateId",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #         minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #         certificate: "string",
    #         certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #       is_ipv6_enabled: false,
    #       continuous_deployment_policy_id: "string",
    #       staging: false,
    #       anycast_ip_list_id: "string",
    #       tenant_config: {
    #         parameter_definitions: [
    #           {
    #             name: "ParameterName", # required
    #             definition: { # required
    #               string_schema: {
    #                 comment: "sensitiveStringType",
    #                 default_value: "ParameterValue",
    #                 required: false, # required
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetDistributionConfigResult]
    def get_distribution_config(params = {}, options = {})
      request = build_request(:get_distribution_config, params)
      request.send_request(options)
    end

    # <p>Gets information about a distribution tenant.</p>
    # @param [Hash, Types::GetDistributionTenantRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "string", # required
    #   }
    #   options = {}
    #   response = client.get_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_tenant: {
    #       id: "string",
    #       distribution_id: "string",
    #       name: "string",
    #       arn: "string",
    #       domains: [
    #         {
    #           domain: "string", # required
    #           status: "active" # One of: ["active", "inactive"]
    #         }
    #       ],
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       customizations: {
    #         web_acl: {
    #           action: "override" # One of: ["override", "disable"], # required
    #           arn: "string"
    #         },
    #         certificate: {
    #           arn: "string", # required
    #         },
    #         geo_restrictions: {
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           locations: ["string"]
    #         }
    #       },
    #       parameters: [
    #         {
    #           name: "ParameterName", # required
    #           value: "ParameterValue", # required
    #         }
    #       ],
    #       connection_group_id: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       enabled: false,
    #       status: "string"
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetDistributionTenantResult]
    def get_distribution_tenant(params = {}, options = {})
      request = build_request(:get_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Gets information about a distribution tenant by the associated domain.</p>
    # @param [Hash, Types::GetDistributionTenantByDomainRequest] params
    # @option params [String] :domain
    #   <p>A domain name associated with the target distribution tenant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "string", # required
    #   }
    #   options = {}
    #   response = client.get_distribution_tenant_by_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_tenant: {
    #       id: "string",
    #       distribution_id: "string",
    #       name: "string",
    #       arn: "string",
    #       domains: [
    #         {
    #           domain: "string", # required
    #           status: "active" # One of: ["active", "inactive"]
    #         }
    #       ],
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       customizations: {
    #         web_acl: {
    #           action: "override" # One of: ["override", "disable"], # required
    #           arn: "string"
    #         },
    #         certificate: {
    #           arn: "string", # required
    #         },
    #         geo_restrictions: {
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           locations: ["string"]
    #         }
    #       },
    #       parameters: [
    #         {
    #           name: "ParameterName", # required
    #           value: "ParameterValue", # required
    #         }
    #       ],
    #       connection_group_id: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       enabled: false,
    #       status: "string"
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetDistributionTenantByDomainResult]
    def get_distribution_tenant_by_domain(params = {}, options = {})
      request = build_request(:get_distribution_tenant_by_domain, params)
      request.send_request(options)
    end

    # <p>Get the field-level encryption configuration information.</p>
    # @param [Hash, Types::GetFieldLevelEncryptionRequest] params
    # @option params [String] :id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_field_level_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       field_level_encryption_config: { # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         query_arg_profile_config: {
    #           forward_when_query_arg_profile_is_unknown: false, # required
    #           query_arg_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 query_arg: "string", # required
    #                 profile_id: "string", # required
    #               }
    #             ]
    #           }
    #         },
    #         content_type_profile_config: {
    #           forward_when_content_type_is_unknown: false, # required
    #           content_type_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 format: "URLEncoded" # One of: ["URLEncoded"], # required
    #                 profile_id: "string",
    #                 content_type: "string", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetFieldLevelEncryptionResult]
    def get_field_level_encryption(params = {}, options = {})
      request = build_request(:get_field_level_encryption, params)
      request.send_request(options)
    end

    # <p>Get the field-level encryption configuration information.</p>
    # @param [Hash, Types::GetFieldLevelEncryptionConfigRequest] params
    # @option params [String] :id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_field_level_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_config: {
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             }
    #           ]
    #         }
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded" # One of: ["URLEncoded"], # required
    #               profile_id: "string",
    #               content_type: "string", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetFieldLevelEncryptionConfigResult]
    def get_field_level_encryption_config(params = {}, options = {})
      request = build_request(:get_field_level_encryption_config, params)
      request.send_request(options)
    end

    # <p>Get the field-level encryption profile information.</p>
    # @param [Hash, Types::GetFieldLevelEncryptionProfileRequest] params
    # @option params [String] :id
    #   <p>Get the ID for the field-level encryption profile information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_field_level_encryption_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_profile: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       field_level_encryption_profile_config: { # required
    #         name: "string", # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         encryption_entities: { # required
    #           quantity: 1, # required
    #           items: [
    #             {
    #               public_key_id: "string", # required
    #               provider_id: "string", # required
    #               field_patterns: { # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetFieldLevelEncryptionProfileResult]
    def get_field_level_encryption_profile(params = {}, options = {})
      request = build_request(:get_field_level_encryption_profile, params)
      request.send_request(options)
    end

    # <p>Get the field-level encryption profile configuration information.</p>
    # @param [Hash, Types::GetFieldLevelEncryptionProfileConfigRequest] params
    # @option params [String] :id
    #   <p>Get the ID for the field-level encryption profile configuration information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_field_level_encryption_profile_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_profile_config: {
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetFieldLevelEncryptionProfileConfigResult]
    def get_field_level_encryption_profile_config(params = {}, options = {})
      request = build_request(:get_field_level_encryption_profile_config, params)
      request.send_request(options)
    end

    # <p>Gets the code of a CloudFront function. To get configuration information and metadata about a function, use <code>DescribeFunction</code>.</p> <p>To get a function's code, you must provide the function's name and stage. To get these values, you can use <code>ListFunctions</code>.</p>
    # @param [Hash, Types::GetFunctionRequest] params
    # @option params [String] :name
    #   <p>The name of the function whose code you are getting.</p>
    # @option params [String] :stage
    #   <p>The function's stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #   }
    #   options = {}
    #   response = client.get_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_code: "data",
    #     e_tag: "string",
    #     content_type: "string"
    #   }
    # @return [Types::GetFunctionResult]
    def get_function(params = {}, options = {})
      request = build_request(:get_function, params)
      request.send_request(options)
    end

    # <p>Get the information about an invalidation.</p>
    # @param [Hash, Types::GetInvalidationRequest] params
    # @option params [String] :distribution_id
    #   <p>The distribution's ID.</p>
    # @option params [String] :id
    #   <p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_invalidation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invalidation: {
    #       id: "string", # required
    #       status: "string", # required
    #       create_time: Time.now, # required
    #       invalidation_batch: { # required
    #         paths: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         caller_reference: "string", # required
    #       }
    #     }
    #   }
    # @return [Types::GetInvalidationResult]
    def get_invalidation(params = {}, options = {})
      request = build_request(:get_invalidation, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific invalidation for a distribution tenant.</p>
    # @param [Hash, Types::GetInvalidationForDistributionTenantRequest] params
    # @option params [String] :distribution_tenant_id
    #   <p>The ID of the distribution tenant.</p>
    # @option params [String] :id
    #   <p>The ID of the invalidation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_tenant_id: "string", # required
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_invalidation_for_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invalidation: {
    #       id: "string", # required
    #       status: "string", # required
    #       create_time: Time.now, # required
    #       invalidation_batch: { # required
    #         paths: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         caller_reference: "string", # required
    #       }
    #     }
    #   }
    # @return [Types::GetInvalidationForDistributionTenantResult]
    def get_invalidation_for_distribution_tenant(params = {}, options = {})
      request = build_request(:get_invalidation_for_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Gets a key group, including the date and time when the key group was last modified.</p> <p>To get a key group, you must provide the key group's identifier. If the key group is referenced in a distribution's cache behavior, you can get the key group's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the key group is not referenced in a cache behavior, you can get the identifier using <code>ListKeyGroups</code>.</p>
    # @param [Hash, Types::GetKeyGroupRequest] params
    # @option params [String] :id
    #   <p>The identifier of the key group that you are getting. To get the identifier, use <code>ListKeyGroups</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_key_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_group: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       key_group_config: { # required
    #         name: "string", # required
    #         items: ["string"], # required
    #         comment: "string"
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetKeyGroupResult]
    def get_key_group(params = {}, options = {})
      request = build_request(:get_key_group, params)
      request.send_request(options)
    end

    # <p>Gets a key group configuration.</p> <p>To get a key group configuration, you must provide the key group's identifier. If the key group is referenced in a distribution's cache behavior, you can get the key group's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the key group is not referenced in a cache behavior, you can get the identifier using <code>ListKeyGroups</code>.</p>
    # @param [Hash, Types::GetKeyGroupConfigRequest] params
    # @option params [String] :id
    #   <p>The identifier of the key group whose configuration you are getting. To get the identifier, use <code>ListKeyGroups</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_key_group_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_group_config: {
    #       name: "string", # required
    #       items: ["string"], # required
    #       comment: "string"
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetKeyGroupConfigResult]
    def get_key_group_config(params = {}, options = {})
      request = build_request(:get_key_group_config, params)
      request.send_request(options)
    end

    # <p>Gets details about the CloudFront managed ACM certificate.</p>
    # @param [Hash, Types::GetManagedCertificateDetailsRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "string", # required
    #   }
    #   options = {}
    #   response = client.get_managed_certificate_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_certificate_details: {
    #       certificate_arn: "string",
    #       certificate_status: "pending-validation" # One of: ["pending-validation", "issued", "inactive", "expired", "validation-timed-out", "revoked", "failed"],
    #       validation_token_host: "cloudfront" # One of: ["cloudfront", "self-hosted"],
    #       validation_token_details: [
    #         {
    #           domain: "string", # required
    #           redirect_to: "string",
    #           redirect_from: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetManagedCertificateDetailsResult]
    def get_managed_certificate_details(params = {}, options = {})
      request = build_request(:get_managed_certificate_details, params)
      request.send_request(options)
    end

    # <p>Gets information about whether additional CloudWatch metrics are enabled for the specified CloudFront distribution.</p>
    # @param [Hash, Types::GetMonitoringSubscriptionRequest] params
    # @option params [String] :distribution_id
    #   <p>The ID of the distribution that you are getting metrics information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_monitoring_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitoring_subscription: {
    #       realtime_metrics_subscription_config: {
    #         realtime_metrics_subscription_status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetMonitoringSubscriptionResult]
    def get_monitoring_subscription(params = {}, options = {})
      request = build_request(:get_monitoring_subscription, params)
      request.send_request(options)
    end

    # <p>Gets a CloudFront origin access control, including its unique identifier.</p>
    # @param [Hash, Types::GetOriginAccessControlRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the origin access control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_origin_access_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_access_control: {
    #       id: "string", # required
    #       origin_access_control_config: {
    #         name: "string", # required
    #         description: "string",
    #         signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #         signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #         origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetOriginAccessControlResult]
    def get_origin_access_control(params = {}, options = {})
      request = build_request(:get_origin_access_control, params)
      request.send_request(options)
    end

    # <p>Gets a CloudFront origin access control configuration.</p>
    # @param [Hash, Types::GetOriginAccessControlConfigRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the origin access control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_origin_access_control_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_access_control_config: {
    #       name: "string", # required
    #       description: "string",
    #       signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #       signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #       origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetOriginAccessControlConfigResult]
    def get_origin_access_control_config(params = {}, options = {})
      request = build_request(:get_origin_access_control_config, params)
      request.send_request(options)
    end

    # <p>Gets an origin request policy, including the following metadata:</p> <ul> <li> <p>The policy's identifier.</p> </li> <li> <p>The date and time when the policy was last modified.</p> </li> </ul> <p>To get an origin request policy, you must provide the policy's identifier. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>
    # @param [Hash, Types::GetOriginRequestPolicyRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_origin_request_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_request_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       origin_request_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         headers_config: { # required
    #           header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetOriginRequestPolicyResult]
    def get_origin_request_policy(params = {}, options = {})
      request = build_request(:get_origin_request_policy, params)
      request.send_request(options)
    end

    # <p>Gets an origin request policy configuration.</p> <p>To get an origin request policy configuration, you must provide the policy's identifier. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>
    # @param [Hash, Types::GetOriginRequestPolicyConfigRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_origin_request_policy_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_request_policy_config: {
    #       comment: "string",
    #       name: "string", # required
    #       headers_config: { # required
    #         header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #         headers: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       cookies_config: { # required
    #         cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #         cookies: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       query_strings_config: { # required
    #         query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #         query_strings: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetOriginRequestPolicyConfigResult]
    def get_origin_request_policy_config(params = {}, options = {})
      request = build_request(:get_origin_request_policy_config, params)
      request.send_request(options)
    end

    # <p>Gets a public key.</p>
    # @param [Hash, Types::GetPublicKeyRequest] params
    # @option params [String] :id
    #   <p>The identifier of the public key you are getting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key: {
    #       id: "string", # required
    #       created_time: Time.now, # required
    #       public_key_config: { # required
    #         caller_reference: "string", # required
    #         name: "string", # required
    #         encoded_key: "string", # required
    #         comment: "string"
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetPublicKeyResult]
    def get_public_key(params = {}, options = {})
      request = build_request(:get_public_key, params)
      request.send_request(options)
    end

    # <p>Gets a public key configuration.</p>
    # @param [Hash, Types::GetPublicKeyConfigRequest] params
    # @option params [String] :id
    #   <p>The identifier of the public key whose configuration you are getting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_public_key_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key_config: {
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string"
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetPublicKeyConfigResult]
    def get_public_key_config(params = {}, options = {})
      request = build_request(:get_public_key_config, params)
      request.send_request(options)
    end

    # <p>Gets a real-time log configuration.</p> <p>To get a real-time log configuration, you can provide the configuration's name or its Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the name to identify the real-time log configuration to get.</p>
    # @param [Hash, Types::GetRealtimeLogConfigRequest] params
    # @option params [String] :name
    #   <p>The name of the real-time log configuration to get.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string",
    #     arn: "string"
    #   }
    #   options = {}
    #   response = client.get_realtime_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     realtime_log_config: {
    #       arn: "string", # required
    #       name: "string", # required
    #       sampling_rate: 1, # required
    #       end_points: [ # required
    #         {
    #           stream_type: "string", # required
    #           kinesis_stream_config: {
    #             role_arn: "string", # required
    #             stream_arn: "string", # required
    #           }
    #         }
    #       ],
    #       fields: ["string"], # required
    #     }
    #   }
    # @return [Types::GetRealtimeLogConfigResult]
    def get_realtime_log_config(params = {}, options = {})
      request = build_request(:get_realtime_log_config, params)
      request.send_request(options)
    end

    # <p>Gets a response headers policy, including metadata (the policy's identifier and the date and time when the policy was last modified).</p> <p>To get a response headers policy, you must provide the policy's identifier. If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>
    # @param [Hash, Types::GetResponseHeadersPolicyRequest] params
    # @option params [String] :id
    #   <p>The identifier for the response headers policy.</p> <p>If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_response_headers_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_headers_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       response_headers_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         cors_config: {
    #           access_control_allow_origins: { # required
    #             quantity: 1, # required
    #             items: ["string"], # required
    #           },
    #           access_control_allow_headers: { # required
    #             quantity: 1, # required
    #             items: ["string"], # required
    #           },
    #           access_control_allow_methods: { # required
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #           },
    #           access_control_allow_credentials: false, # required
    #           access_control_expose_headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           access_control_max_age_sec: 1,
    #           origin_override: false, # required
    #         },
    #         security_headers_config: {
    #           xss_protection: {
    #             override: false, # required
    #             protection: false, # required
    #             mode_block: false,
    #             report_uri: "string"
    #           },
    #           frame_options: {
    #             override: false, # required
    #             frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #           },
    #           referrer_policy: {
    #             override: false, # required
    #             referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #           },
    #           content_security_policy: {
    #             override: false, # required
    #             content_security_policy: "string", # required
    #           },
    #           content_type_options: {
    #             override: false, # required
    #           },
    #           strict_transport_security: {
    #             override: false, # required
    #             include_subdomains: false,
    #             preload: false,
    #             access_control_max_age_sec: 1, # required
    #           }
    #         },
    #         server_timing_headers_config: {
    #           enabled: false, # required
    #           sampling_rate: 1.0
    #         },
    #         custom_headers_config: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               header: "string", # required
    #               value: "string", # required
    #               override: false, # required
    #             }
    #           ]
    #         },
    #         remove_headers_config: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               header: "string", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetResponseHeadersPolicyResult]
    def get_response_headers_policy(params = {}, options = {})
      request = build_request(:get_response_headers_policy, params)
      request.send_request(options)
    end

    # <p>Gets a response headers policy configuration.</p> <p>To get a response headers policy configuration, you must provide the policy's identifier. If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>
    # @param [Hash, Types::GetResponseHeadersPolicyConfigRequest] params
    # @option params [String] :id
    #   <p>The identifier for the response headers policy.</p> <p>If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_response_headers_policy_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_headers_policy_config: {
    #       comment: "string",
    #       name: "string", # required
    #       cors_config: {
    #         access_control_allow_origins: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_headers: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_methods: { # required
    #           quantity: 1, # required
    #           items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #         },
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false, # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: "string"
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: "string", # required
    #         },
    #         content_type_options: {
    #           override: false, # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1, # required
    #         }
    #       },
    #       server_timing_headers_config: {
    #         enabled: false, # required
    #         sampling_rate: 1.0
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #             value: "string", # required
    #             override: false, # required
    #           }
    #         ]
    #       },
    #       remove_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #           }
    #         ]
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetResponseHeadersPolicyConfigResult]
    def get_response_headers_policy_config(params = {}, options = {})
      request = build_request(:get_response_headers_policy_config, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>
    # @param [Hash, Types::GetStreamingDistributionRequest] params
    # @option params [String] :id
    #   <p>The streaming distribution's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_streaming_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now,
    #       domain_name: "string", # required
    #       active_trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetStreamingDistributionResult]
    def get_streaming_distribution(params = {}, options = {})
      request = build_request(:get_streaming_distribution, params)
      request.send_request(options)
    end

    # <p>Get the configuration information about a streaming distribution.</p>
    # @param [Hash, Types::GetStreamingDistributionConfigRequest] params
    # @option params [String] :id
    #   <p>The streaming distribution's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_streaming_distribution_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_distribution_config: {
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #       enabled: false, # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetStreamingDistributionConfigResult]
    def get_streaming_distribution_config(params = {}, options = {})
      request = build_request(:get_streaming_distribution_config, params)
      request.send_request(options)
    end

    # <p>Get the details of an Amazon CloudFront VPC origin.</p>
    # @param [Hash, Types::GetVpcOriginRequest] params
    # @option params [String] :id
    #   <p>The VPC origin ID.</p>
    # @example To get a VPC origin
    #   # The following command gets a VPC origin:
    #   params = {
    #     id: "vo_BQwjxxQxjCaBcQLzJUFkDM"
    #   }
    #   options = {}
    #   response = client.get_vpc_origin(params, options)
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       status: "Deployed",
    #       vpc_origin_endpoint_config: {
    #         name: "my-vpcorigin-name",
    #         origin_ssl_protocols: {
    #           items: [
    #             TLSv1.1,
    #             TLSv1.2
    #           ],
    #           quantity: 2
    #         },
    #         origin_protocol_policy: match-viewer,
    #         http_port: 80,
    #         https_port: 443,
    #         arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d"
    #       },
    #       created_time: Time.parse("2024-10-15T17:19:42.318Z"),
    #       last_modified_time: Time.parse("2024-10-15T17:24:35.188Z"),
    #       id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #       arn: "arn:aws:cloudfront::123456789012:vpcorigin/vo_BQwjxxQxjCaBcQLzJUFkDM"
    #     },
    #     e_tag: "ETVPDKIKX0DER"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_vpc_origin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       vpc_origin_endpoint_config: { # required
    #         name: "string", # required
    #         arn: "string", # required
    #         http_port: 1, # required
    #         https_port: 1, # required
    #         origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #         origin_ssl_protocols: {
    #           quantity: 1, # required
    #           items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::GetVpcOriginResult]
    def get_vpc_origin(params = {}, options = {})
      request = build_request(:get_vpc_origin, params)
      request.send_request(options)
    end

    # <p>Lists your Anycast static IP lists.</p>
    # @param [Hash, Types::ListAnycastIpListsRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of Anycast static IP lists that you want returned in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_anycast_ip_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anycast_ip_lists: {
    #       items: [
    #         {
    #           id: "string", # required
    #           name: "AnycastIpListName", # required
    #           status: "string", # required
    #           arn: "string", # required
    #           ip_count: 1, # required
    #           last_modified_time: Time.now, # required
    #         }
    #       ],
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #     }
    #   }
    # @return [Types::ListAnycastIpListsResult]
    def list_anycast_ip_lists(params = {}, options = {})
      request = build_request(:list_anycast_ip_lists, params)
      request.send_request(options)
    end

    # <p>Gets a list of cache policies.</p> <p>You can optionally apply a filter to return only the managed policies created by Amazon Web Services, or only the custom policies created in your Amazon Web Services account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListCachePoliciesRequest] params
    # @option params [String] :type
    #   <p>A filter to return only the specified kinds of cache policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p> </li> </ul>
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of cache policies. The response includes cache policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of cache policies that you want in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "managed" # One of: ["managed", "custom"],
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_cache_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_policy_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           type: "managed" # One of: ["managed", "custom"], # required
    #           cache_policy: { # required
    #             id: "string", # required
    #             last_modified_time: Time.now, # required
    #             cache_policy_config: { # required
    #               comment: "string",
    #               name: "string", # required
    #               default_ttl: 1,
    #               max_ttl: 1,
    #               min_ttl: 1, # required
    #               parameters_in_cache_key_and_forwarded_to_origin: {
    #                 enable_accept_encoding_gzip: false, # required
    #                 enable_accept_encoding_brotli: false,
    #                 headers_config: { # required
    #                   header_behavior: "none" # One of: ["none", "whitelist"], # required
    #                   headers: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 cookies_config: { # required
    #                   cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #                   cookies: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 query_strings_config: { # required
    #                   query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #                   query_strings: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListCachePoliciesResult]
    def list_cache_policies(params = {}, options = {})
      request = build_request(:list_cache_policies, params)
      request.send_request(options)
    end

    # <p>Lists origin access identities.</p>
    # @param [Hash, Types::ListCloudFrontOriginAccessIdentitiesRequest] params
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of origin access identities you want in the response body.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_cloud_front_origin_access_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_front_origin_access_identity_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           s3_canonical_user_id: "string", # required
    #           comment: "string", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListCloudFrontOriginAccessIdentitiesResult]
    def list_cloud_front_origin_access_identities(params = {}, options = {})
      request = build_request(:list_cloud_front_origin_access_identities, params)
      request.send_request(options)
    end

    # <note> <p>The <code>ListConflictingAliases</code> API operation only supports standard distributions. To list domain conflicts for both standard distributions and distribution tenants, we recommend that you use the <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDomainConflicts.html">ListDomainConflicts</a> API operation instead.</p> </note> <p>Gets a list of aliases that conflict or overlap with the provided alias, and the associated CloudFront standard distribution and Amazon Web Services accounts for each conflicting alias. An alias is commonly known as a custom domain or vanity domain. It can also be called a CNAME or alternate domain name.</p> <p>In the returned list, the standard distribution and account IDs are partially hidden, which allows you to identify the standard distribution and accounts that you own, and helps to protect the information of ones that you don't own.</p> <p>Use this operation to find aliases that are in use in CloudFront that conflict or overlap with the provided alias. For example, if you provide <code>www.example.com</code> as input, the returned list can include <code>www.example.com</code> and the overlapping wildcard alternate domain name (<code>*.example.com</code>), if they exist. If you provide <code>*.example.com</code> as input, the returned list can include <code>*.example.com</code> and any alternate domain names covered by that wildcard (for example, <code>www.example.com</code>, <code>test.example.com</code>, <code>dev.example.com</code>, and so on), if they exist.</p> <p>To list conflicting aliases, specify the alias to search and the ID of a standard distribution in your account that has an attached TLS certificate that includes the provided alias. For more information, including how to set up the standard distribution and certificate, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move">Moving an alternate domain name to a different standard distribution or distribution tenant</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListConflictingAliasesRequest] params
    # @option params [String] :distribution_id
    #   <p>The ID of a standard distribution in your account that has an attached TLS certificate that includes the provided alias.</p>
    # @option params [String] :alias
    #   <p>The alias (also called a CNAME) to search for conflicting aliases.</p>
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in the list of conflicting aliases. The response includes conflicting aliases in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of conflicting aliases that you want in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "distributionIdString", # required
    #     alias: "aliasString", # required
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_conflicting_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conflicting_aliases_list: {
    #       next_marker: "string",
    #       max_items: 1,
    #       quantity: 1,
    #       items: [
    #         {
    #           alias: "string",
    #           distribution_id: "string",
    #           account_id: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListConflictingAliasesResult]
    def list_conflicting_aliases(params = {}, options = {})
      request = build_request(:list_conflicting_aliases, params)
      request.send_request(options)
    end

    # <p>Lists the connection groups in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListConnectionGroupsRequest] params
    # @option params [Types::ConnectionGroupAssociationFilter] :association_filter
    #   <p>Filter by associated Anycast IP list ID.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of connection groups to retrieve.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of connection groups to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_filter: {
    #       anycast_ip_list_id: "string"
    #     },
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_connection_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "string",
    #     connection_groups: [
    #       {
    #         id: "string", # required
    #         name: "string", # required
    #         arn: "string", # required
    #         routing_endpoint: "string", # required
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         e_tag: "string", # required
    #         anycast_ip_list_id: "string",
    #         enabled: false,
    #         status: "string",
    #         is_default: false
    #       }
    #     ]
    #   }
    # @return [Types::ListConnectionGroupsResult]
    def list_connection_groups(params = {}, options = {})
      request = build_request(:list_connection_groups, params)
      request.send_request(options)
    end

    # <p>Gets a list of the continuous deployment policies in your Amazon Web Services account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListContinuousDeploymentPoliciesRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of continuous deployment policies. The response includes policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of continuous deployment policies that you want returned in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_continuous_deployment_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_deployment_policy_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           continuous_deployment_policy: { # required
    #             id: "string", # required
    #             last_modified_time: Time.now, # required
    #             continuous_deployment_policy_config: { # required
    #               staging_distribution_dns_names: { # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               enabled: false, # required
    #               traffic_config: {
    #                 single_weight_config: {
    #                   weight: 1.0, # required
    #                   session_stickiness_config: {
    #                     idle_ttl: 1, # required
    #                     maximum_ttl: 1, # required
    #                   }
    #                 },
    #                 single_header_config: {
    #                   header: "string", # required
    #                   value: "string", # required
    #                 },
    #                 type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListContinuousDeploymentPoliciesResult]
    def list_continuous_deployment_policies(params = {}, options = {})
      request = build_request(:list_continuous_deployment_policies, params)
      request.send_request(options)
    end

    # <p>Lists the distribution tenants in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListDistributionTenantsRequest] params
    # @option params [Types::DistributionTenantAssociationFilter] :association_filter
    #   <p>Filter by the associated distribution ID or connection group ID.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution tenants to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_filter: {
    #       distribution_id: "string",
    #       connection_group_id: "string"
    #     },
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_distribution_tenants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "string",
    #     distribution_tenant_list: [
    #       {
    #         id: "string", # required
    #         distribution_id: "string", # required
    #         name: "string", # required
    #         arn: "string", # required
    #         domains: [ # required
    #           {
    #             domain: "string", # required
    #             status: "active" # One of: ["active", "inactive"]
    #           }
    #         ],
    #         connection_group_id: "string",
    #         customizations: {
    #           web_acl: {
    #             action: "override" # One of: ["override", "disable"], # required
    #             arn: "string"
    #           },
    #           certificate: {
    #             arn: "string", # required
    #           },
    #           geo_restrictions: {
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             locations: ["string"]
    #           }
    #         },
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         e_tag: "string", # required
    #         enabled: false,
    #         status: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListDistributionTenantsResult]
    def list_distribution_tenants(params = {}, options = {})
      request = build_request(:list_distribution_tenants, params)
      request.send_request(options)
    end

    # <p>Lists distribution tenants by the customization that you specify.</p> <p>You must specify either the <code>CertificateArn</code> parameter or <code>WebACLArn</code> parameter, but not both in the same request.</p>
    # @param [Hash, Types::ListDistributionTenantsByCustomizationRequest] params
    # @option params [String] :web_acl_arn
    #   <p>Filter by the ARN of the associated WAF web ACL.</p>
    # @option params [String] :certificate_arn
    #   <p>Filter by the ARN of the associated ACM certificate.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution tenants to return by the specified customization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_arn: "string",
    #     certificate_arn: "string",
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_distribution_tenants_by_customization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "string",
    #     distribution_tenant_list: [
    #       {
    #         id: "string", # required
    #         distribution_id: "string", # required
    #         name: "string", # required
    #         arn: "string", # required
    #         domains: [ # required
    #           {
    #             domain: "string", # required
    #             status: "active" # One of: ["active", "inactive"]
    #           }
    #         ],
    #         connection_group_id: "string",
    #         customizations: {
    #           web_acl: {
    #             action: "override" # One of: ["override", "disable"], # required
    #             arn: "string"
    #           },
    #           certificate: {
    #             arn: "string", # required
    #           },
    #           geo_restrictions: {
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             locations: ["string"]
    #           }
    #         },
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         e_tag: "string", # required
    #         enabled: false,
    #         status: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListDistributionTenantsByCustomizationResult]
    def list_distribution_tenants_by_customization(params = {}, options = {})
      request = build_request(:list_distribution_tenants_by_customization, params)
      request.send_request(options)
    end

    # <p>List CloudFront distributions.</p>
    # @param [Hash, Types::ListDistributionsRequest] params
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions you want in the response body.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_distributions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           arn: "string", # required
    #           e_tag: "string",
    #           status: "string", # required
    #           last_modified_time: Time.now, # required
    #           domain_name: "string", # required
    #           aliases: { # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           origins: { # required
    #             quantity: 1, # required
    #             items: [ # required
    #               {
    #                 id: "string", # required
    #                 domain_name: "string", # required
    #                 origin_path: "string",
    #                 custom_headers: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       header_name: "string", # required
    #                       header_value: "sensitiveStringType", # required
    #                     }
    #                   ]
    #                 },
    #                 s3_origin_config: {
    #                   origin_access_identity: "string", # required
    #                   origin_read_timeout: 1
    #                 },
    #                 custom_origin_config: {
    #                   http_port: 1, # required
    #                   https_port: 1, # required
    #                   origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                   origin_ssl_protocols: {
    #                     quantity: 1, # required
    #                     items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                   },
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #                 },
    #                 vpc_origin_config: {
    #                   vpc_origin_id: "string", # required
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1
    #                 },
    #                 connection_attempts: 1,
    #                 connection_timeout: 1,
    #                 response_completion_timeout: 1,
    #                 origin_shield: {
    #                   enabled: false, # required
    #                   origin_shield_region: "OriginShieldRegion"
    #                 },
    #                 origin_access_control_id: "string"
    #               }
    #             ]
    #           },
    #           origin_groups: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 id: "string", # required
    #                 failover_criteria: { # required
    #                   status_codes: { # required
    #                     quantity: 1, # required
    #                     items: [1], # required
    #                   }
    #                 },
    #                 members: { # required
    #                   quantity: 1, # required
    #                   items: [ # required
    #                     {
    #                       origin_id: "string", # required
    #                     }
    #                   ]
    #                 },
    #                 selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #               }
    #             ]
    #           },
    #           default_cache_behavior: { # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           },
    #           cache_behaviors: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 path_pattern: "string", # required
    #                 target_origin_id: "string", # required
    #                 trusted_signers: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 trusted_key_groups: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #                 allowed_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   cached_methods: {
    #                     quantity: 1, # required
    #                     items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   }
    #                 },
    #                 smooth_streaming: false,
    #                 compress: false,
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                       include_body: false
    #                     }
    #                   ]
    #                 },
    #                 function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       function_arn: "FunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     }
    #                   ]
    #                 },
    #                 field_level_encryption_id: "string",
    #                 realtime_log_config_arn: "string",
    #                 cache_policy_id: "string",
    #                 origin_request_policy_id: "string",
    #                 response_headers_policy_id: "string",
    #                 grpc_config: {
    #                   enabled: false, # required
    #                 },
    #                 forwarded_values: {
    #                   query_string: false, # required
    #                   cookies: { # required
    #                     forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                     whitelisted_names: {
    #                       quantity: 1, # required
    #                       items: ["string"]
    #                     }
    #                   },
    #                   headers: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   },
    #                   query_string_cache_keys: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 min_ttl: 1,
    #                 default_ttl: 1,
    #                 max_ttl: 1
    #               }
    #             ]
    #           },
    #           custom_error_responses: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 error_code: 1, # required
    #                 response_page_path: "string",
    #                 response_code: "string",
    #                 error_caching_min_ttl: 1
    #               }
    #             ]
    #           },
    #           comment: "sensitiveStringType", # required
    #           price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"], # required
    #           enabled: false, # required
    #           viewer_certificate: { # required
    #             cloud_front_default_certificate: false,
    #             iam_certificate_id: "ServerCertificateId",
    #             acm_certificate_arn: "string",
    #             ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #             minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #             certificate: "string",
    #             certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #           },
    #           restrictions: { # required
    #             geo_restriction: { # required
    #               restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           web_acl_id: "string", # required
    #           http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"], # required
    #           is_ipv6_enabled: false, # required
    #           alias_icp_recordals: [
    #             {
    #               cname: "string",
    #               icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #             }
    #           ],
    #           staging: false, # required
    #           connection_mode: "direct" # One of: ["direct", "tenant-only"],
    #           anycast_ip_list_id: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListDistributionsResult]
    def list_distributions(params = {}, options = {})
      request = build_request(:list_distributions, params)
      request.send_request(options)
    end

    # <p>Lists the distributions in your account that are associated with the specified <code>AnycastIpListId</code>.</p>
    # @param [Hash, Types::ListDistributionsByAnycastIpListIdRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions that you want returned in the response.</p>
    # @option params [String] :anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     anycast_ip_list_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_anycast_ip_list_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           arn: "string", # required
    #           e_tag: "string",
    #           status: "string", # required
    #           last_modified_time: Time.now, # required
    #           domain_name: "string", # required
    #           aliases: { # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           origins: { # required
    #             quantity: 1, # required
    #             items: [ # required
    #               {
    #                 id: "string", # required
    #                 domain_name: "string", # required
    #                 origin_path: "string",
    #                 custom_headers: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       header_name: "string", # required
    #                       header_value: "sensitiveStringType", # required
    #                     }
    #                   ]
    #                 },
    #                 s3_origin_config: {
    #                   origin_access_identity: "string", # required
    #                   origin_read_timeout: 1
    #                 },
    #                 custom_origin_config: {
    #                   http_port: 1, # required
    #                   https_port: 1, # required
    #                   origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                   origin_ssl_protocols: {
    #                     quantity: 1, # required
    #                     items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                   },
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #                 },
    #                 vpc_origin_config: {
    #                   vpc_origin_id: "string", # required
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1
    #                 },
    #                 connection_attempts: 1,
    #                 connection_timeout: 1,
    #                 response_completion_timeout: 1,
    #                 origin_shield: {
    #                   enabled: false, # required
    #                   origin_shield_region: "OriginShieldRegion"
    #                 },
    #                 origin_access_control_id: "string"
    #               }
    #             ]
    #           },
    #           origin_groups: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 id: "string", # required
    #                 failover_criteria: { # required
    #                   status_codes: { # required
    #                     quantity: 1, # required
    #                     items: [1], # required
    #                   }
    #                 },
    #                 members: { # required
    #                   quantity: 1, # required
    #                   items: [ # required
    #                     {
    #                       origin_id: "string", # required
    #                     }
    #                   ]
    #                 },
    #                 selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #               }
    #             ]
    #           },
    #           default_cache_behavior: { # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           },
    #           cache_behaviors: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 path_pattern: "string", # required
    #                 target_origin_id: "string", # required
    #                 trusted_signers: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 trusted_key_groups: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #                 allowed_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   cached_methods: {
    #                     quantity: 1, # required
    #                     items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   }
    #                 },
    #                 smooth_streaming: false,
    #                 compress: false,
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                       include_body: false
    #                     }
    #                   ]
    #                 },
    #                 function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       function_arn: "FunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     }
    #                   ]
    #                 },
    #                 field_level_encryption_id: "string",
    #                 realtime_log_config_arn: "string",
    #                 cache_policy_id: "string",
    #                 origin_request_policy_id: "string",
    #                 response_headers_policy_id: "string",
    #                 grpc_config: {
    #                   enabled: false, # required
    #                 },
    #                 forwarded_values: {
    #                   query_string: false, # required
    #                   cookies: { # required
    #                     forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                     whitelisted_names: {
    #                       quantity: 1, # required
    #                       items: ["string"]
    #                     }
    #                   },
    #                   headers: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   },
    #                   query_string_cache_keys: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 min_ttl: 1,
    #                 default_ttl: 1,
    #                 max_ttl: 1
    #               }
    #             ]
    #           },
    #           custom_error_responses: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 error_code: 1, # required
    #                 response_page_path: "string",
    #                 response_code: "string",
    #                 error_caching_min_ttl: 1
    #               }
    #             ]
    #           },
    #           comment: "sensitiveStringType", # required
    #           price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"], # required
    #           enabled: false, # required
    #           viewer_certificate: { # required
    #             cloud_front_default_certificate: false,
    #             iam_certificate_id: "ServerCertificateId",
    #             acm_certificate_arn: "string",
    #             ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #             minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #             certificate: "string",
    #             certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #           },
    #           restrictions: { # required
    #             geo_restriction: { # required
    #               restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           web_acl_id: "string", # required
    #           http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"], # required
    #           is_ipv6_enabled: false, # required
    #           alias_icp_recordals: [
    #             {
    #               cname: "string",
    #               icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #             }
    #           ],
    #           staging: false, # required
    #           connection_mode: "direct" # One of: ["direct", "tenant-only"],
    #           anycast_ip_list_id: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListDistributionsByAnycastIpListIdResult]
    def list_distributions_by_anycast_ip_list_id(params = {}, options = {})
      request = build_request(:list_distributions_by_anycast_ip_list_id, params)
      request.send_request(options)
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that's associated with the specified cache policy.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListDistributionsByCachePolicyIdRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    # @option params [String] :cache_policy_id
    #   <p>The ID of the cache policy whose associated distribution IDs you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     cache_policy_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_cache_policy_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_id_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: ["string"]
    #     }
    #   }
    # @return [Types::ListDistributionsByCachePolicyIdResult]
    def list_distributions_by_cache_policy_id(params = {}, options = {})
      request = build_request(:list_distributions_by_cache_policy_id, params)
      request.send_request(options)
    end

    # <p>Lists the distributions by the connection mode that you specify.</p>
    # @param [Hash, Types::ListDistributionsByConnectionModeRequest] params
    # @option params [String] :marker
    #   <p> The marker for the next set of distributions to retrieve.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions to return.</p>
    # @option params [String] :connection_mode
    #   <p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     connection_mode: "direct" # One of: ["direct", "tenant-only"], # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_connection_mode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           arn: "string", # required
    #           e_tag: "string",
    #           status: "string", # required
    #           last_modified_time: Time.now, # required
    #           domain_name: "string", # required
    #           aliases: { # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           origins: { # required
    #             quantity: 1, # required
    #             items: [ # required
    #               {
    #                 id: "string", # required
    #                 domain_name: "string", # required
    #                 origin_path: "string",
    #                 custom_headers: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       header_name: "string", # required
    #                       header_value: "sensitiveStringType", # required
    #                     }
    #                   ]
    #                 },
    #                 s3_origin_config: {
    #                   origin_access_identity: "string", # required
    #                   origin_read_timeout: 1
    #                 },
    #                 custom_origin_config: {
    #                   http_port: 1, # required
    #                   https_port: 1, # required
    #                   origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                   origin_ssl_protocols: {
    #                     quantity: 1, # required
    #                     items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                   },
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #                 },
    #                 vpc_origin_config: {
    #                   vpc_origin_id: "string", # required
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1
    #                 },
    #                 connection_attempts: 1,
    #                 connection_timeout: 1,
    #                 response_completion_timeout: 1,
    #                 origin_shield: {
    #                   enabled: false, # required
    #                   origin_shield_region: "OriginShieldRegion"
    #                 },
    #                 origin_access_control_id: "string"
    #               }
    #             ]
    #           },
    #           origin_groups: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 id: "string", # required
    #                 failover_criteria: { # required
    #                   status_codes: { # required
    #                     quantity: 1, # required
    #                     items: [1], # required
    #                   }
    #                 },
    #                 members: { # required
    #                   quantity: 1, # required
    #                   items: [ # required
    #                     {
    #                       origin_id: "string", # required
    #                     }
    #                   ]
    #                 },
    #                 selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #               }
    #             ]
    #           },
    #           default_cache_behavior: { # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           },
    #           cache_behaviors: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 path_pattern: "string", # required
    #                 target_origin_id: "string", # required
    #                 trusted_signers: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 trusted_key_groups: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #                 allowed_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   cached_methods: {
    #                     quantity: 1, # required
    #                     items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   }
    #                 },
    #                 smooth_streaming: false,
    #                 compress: false,
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                       include_body: false
    #                     }
    #                   ]
    #                 },
    #                 function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       function_arn: "FunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     }
    #                   ]
    #                 },
    #                 field_level_encryption_id: "string",
    #                 realtime_log_config_arn: "string",
    #                 cache_policy_id: "string",
    #                 origin_request_policy_id: "string",
    #                 response_headers_policy_id: "string",
    #                 grpc_config: {
    #                   enabled: false, # required
    #                 },
    #                 forwarded_values: {
    #                   query_string: false, # required
    #                   cookies: { # required
    #                     forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                     whitelisted_names: {
    #                       quantity: 1, # required
    #                       items: ["string"]
    #                     }
    #                   },
    #                   headers: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   },
    #                   query_string_cache_keys: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 min_ttl: 1,
    #                 default_ttl: 1,
    #                 max_ttl: 1
    #               }
    #             ]
    #           },
    #           custom_error_responses: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 error_code: 1, # required
    #                 response_page_path: "string",
    #                 response_code: "string",
    #                 error_caching_min_ttl: 1
    #               }
    #             ]
    #           },
    #           comment: "sensitiveStringType", # required
    #           price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"], # required
    #           enabled: false, # required
    #           viewer_certificate: { # required
    #             cloud_front_default_certificate: false,
    #             iam_certificate_id: "ServerCertificateId",
    #             acm_certificate_arn: "string",
    #             ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #             minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #             certificate: "string",
    #             certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #           },
    #           restrictions: { # required
    #             geo_restriction: { # required
    #               restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           web_acl_id: "string", # required
    #           http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"], # required
    #           is_ipv6_enabled: false, # required
    #           alias_icp_recordals: [
    #             {
    #               cname: "string",
    #               icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #             }
    #           ],
    #           staging: false, # required
    #           connection_mode: "direct" # One of: ["direct", "tenant-only"],
    #           anycast_ip_list_id: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListDistributionsByConnectionModeResult]
    def list_distributions_by_connection_mode(params = {}, options = {})
      request = build_request(:list_distributions_by_connection_mode, params)
      request.send_request(options)
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that references the specified key group.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListDistributionsByKeyGroupRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    # @option params [String] :key_group_id
    #   <p>The ID of the key group whose associated distribution IDs you are listing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     key_group_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_key_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_id_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: ["string"]
    #     }
    #   }
    # @return [Types::ListDistributionsByKeyGroupResult]
    def list_distributions_by_key_group(params = {}, options = {})
      request = build_request(:list_distributions_by_key_group, params)
      request.send_request(options)
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that's associated with the specified origin request policy.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListDistributionsByOriginRequestPolicyIdRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    # @option params [String] :origin_request_policy_id
    #   <p>The ID of the origin request policy whose associated distribution IDs you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     origin_request_policy_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_origin_request_policy_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_id_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: ["string"]
    #     }
    #   }
    # @return [Types::ListDistributionsByOriginRequestPolicyIdResult]
    def list_distributions_by_origin_request_policy_id(params = {}, options = {})
      request = build_request(:list_distributions_by_origin_request_policy_id, params)
      request.send_request(options)
    end

    # <p>Gets a list of distributions that have a cache behavior that's associated with the specified real-time log configuration.</p> <p>You can specify the real-time log configuration by its name or its Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the name to identify the real-time log configuration to list distributions for.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListDistributionsByRealtimeLogConfigRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distributions. The response includes distributions in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions that you want in the response.</p>
    # @option params [String] :realtime_log_config_name
    #   <p>The name of the real-time log configuration whose associated distributions you want to list.</p>
    # @option params [String] :realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated distributions you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     realtime_log_config_name: "string",
    #     realtime_log_config_arn: "string"
    #   }
    #   options = {}
    #   response = client.list_distributions_by_realtime_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           arn: "string", # required
    #           e_tag: "string",
    #           status: "string", # required
    #           last_modified_time: Time.now, # required
    #           domain_name: "string", # required
    #           aliases: { # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           origins: { # required
    #             quantity: 1, # required
    #             items: [ # required
    #               {
    #                 id: "string", # required
    #                 domain_name: "string", # required
    #                 origin_path: "string",
    #                 custom_headers: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       header_name: "string", # required
    #                       header_value: "sensitiveStringType", # required
    #                     }
    #                   ]
    #                 },
    #                 s3_origin_config: {
    #                   origin_access_identity: "string", # required
    #                   origin_read_timeout: 1
    #                 },
    #                 custom_origin_config: {
    #                   http_port: 1, # required
    #                   https_port: 1, # required
    #                   origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                   origin_ssl_protocols: {
    #                     quantity: 1, # required
    #                     items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                   },
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #                 },
    #                 vpc_origin_config: {
    #                   vpc_origin_id: "string", # required
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1
    #                 },
    #                 connection_attempts: 1,
    #                 connection_timeout: 1,
    #                 response_completion_timeout: 1,
    #                 origin_shield: {
    #                   enabled: false, # required
    #                   origin_shield_region: "OriginShieldRegion"
    #                 },
    #                 origin_access_control_id: "string"
    #               }
    #             ]
    #           },
    #           origin_groups: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 id: "string", # required
    #                 failover_criteria: { # required
    #                   status_codes: { # required
    #                     quantity: 1, # required
    #                     items: [1], # required
    #                   }
    #                 },
    #                 members: { # required
    #                   quantity: 1, # required
    #                   items: [ # required
    #                     {
    #                       origin_id: "string", # required
    #                     }
    #                   ]
    #                 },
    #                 selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #               }
    #             ]
    #           },
    #           default_cache_behavior: { # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           },
    #           cache_behaviors: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 path_pattern: "string", # required
    #                 target_origin_id: "string", # required
    #                 trusted_signers: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 trusted_key_groups: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #                 allowed_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   cached_methods: {
    #                     quantity: 1, # required
    #                     items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   }
    #                 },
    #                 smooth_streaming: false,
    #                 compress: false,
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                       include_body: false
    #                     }
    #                   ]
    #                 },
    #                 function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       function_arn: "FunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     }
    #                   ]
    #                 },
    #                 field_level_encryption_id: "string",
    #                 realtime_log_config_arn: "string",
    #                 cache_policy_id: "string",
    #                 origin_request_policy_id: "string",
    #                 response_headers_policy_id: "string",
    #                 grpc_config: {
    #                   enabled: false, # required
    #                 },
    #                 forwarded_values: {
    #                   query_string: false, # required
    #                   cookies: { # required
    #                     forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                     whitelisted_names: {
    #                       quantity: 1, # required
    #                       items: ["string"]
    #                     }
    #                   },
    #                   headers: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   },
    #                   query_string_cache_keys: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 min_ttl: 1,
    #                 default_ttl: 1,
    #                 max_ttl: 1
    #               }
    #             ]
    #           },
    #           custom_error_responses: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 error_code: 1, # required
    #                 response_page_path: "string",
    #                 response_code: "string",
    #                 error_caching_min_ttl: 1
    #               }
    #             ]
    #           },
    #           comment: "sensitiveStringType", # required
    #           price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"], # required
    #           enabled: false, # required
    #           viewer_certificate: { # required
    #             cloud_front_default_certificate: false,
    #             iam_certificate_id: "ServerCertificateId",
    #             acm_certificate_arn: "string",
    #             ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #             minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #             certificate: "string",
    #             certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #           },
    #           restrictions: { # required
    #             geo_restriction: { # required
    #               restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           web_acl_id: "string", # required
    #           http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"], # required
    #           is_ipv6_enabled: false, # required
    #           alias_icp_recordals: [
    #             {
    #               cname: "string",
    #               icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #             }
    #           ],
    #           staging: false, # required
    #           connection_mode: "direct" # One of: ["direct", "tenant-only"],
    #           anycast_ip_list_id: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListDistributionsByRealtimeLogConfigResult]
    def list_distributions_by_realtime_log_config(params = {}, options = {})
      request = build_request(:list_distributions_by_realtime_log_config, params)
      request.send_request(options)
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that's associated with the specified response headers policy.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListDistributionsByResponseHeadersPolicyIdRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want to get in the response.</p>
    # @option params [String] :response_headers_policy_id
    #   <p>The ID of the response headers policy whose associated distribution IDs you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     response_headers_policy_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_response_headers_policy_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_id_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: ["string"]
    #     }
    #   }
    # @return [Types::ListDistributionsByResponseHeadersPolicyIdResult]
    def list_distributions_by_response_headers_policy_id(params = {}, options = {})
      request = build_request(:list_distributions_by_response_headers_policy_id, params)
      request.send_request(options)
    end

    # <p>List CloudFront distributions by their VPC origin ID.</p>
    # @param [Hash, Types::ListDistributionsByVpcOriginIdRequest] params
    # @option params [String] :marker
    #   <p>The marker associated with the VPC origin distributions list.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of items included in the list.</p>
    # @option params [String] :vpc_origin_id
    #   <p>The VPC origin ID.</p>
    # @example To list distributions by VPC origin ID
    #   # The following command lists distributions by VPC origin ID:
    #   params = {
    #     vpc_origin_id: "vo_BQwjxxQxjCaBcQLzJUFkDM"
    #   }
    #   options = {}
    #   response = client.list_distributions_by_vpc_origin_id(params, options)
    #   response.to_h #=>
    #   {
    #     distribution_id_list: {
    #       items: [
    #       ],
    #       is_truncated: false,
    #       max_items: 100,
    #       quantity: 0,
    #       marker: "a"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     vpc_origin_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_vpc_origin_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_id_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: ["string"]
    #     }
    #   }
    # @return [Types::ListDistributionsByVpcOriginIdResult]
    def list_distributions_by_vpc_origin_id(params = {}, options = {})
      request = build_request(:list_distributions_by_vpc_origin_id, params)
      request.send_request(options)
    end

    # <p>List the distributions that are associated with a specified WAF web ACL.</p>
    # @param [Hash, Types::ListDistributionsByWebACLIdRequest] params
    # @option params [String] :marker
    #   <p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.)</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>
    # @option params [String] :web_acl_id
    #   <p>The ID of the WAF web ACL that you want to list the associated distributions. If you specify "null" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p> <p>For WAFV2, this is the ARN of the web ACL, such as <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p> <p>For WAF Classic, this is the ID of the web ACL, such as <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     web_acl_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_distributions_by_web_acl_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           arn: "string", # required
    #           e_tag: "string",
    #           status: "string", # required
    #           last_modified_time: Time.now, # required
    #           domain_name: "string", # required
    #           aliases: { # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           origins: { # required
    #             quantity: 1, # required
    #             items: [ # required
    #               {
    #                 id: "string", # required
    #                 domain_name: "string", # required
    #                 origin_path: "string",
    #                 custom_headers: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       header_name: "string", # required
    #                       header_value: "sensitiveStringType", # required
    #                     }
    #                   ]
    #                 },
    #                 s3_origin_config: {
    #                   origin_access_identity: "string", # required
    #                   origin_read_timeout: 1
    #                 },
    #                 custom_origin_config: {
    #                   http_port: 1, # required
    #                   https_port: 1, # required
    #                   origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                   origin_ssl_protocols: {
    #                     quantity: 1, # required
    #                     items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                   },
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #                 },
    #                 vpc_origin_config: {
    #                   vpc_origin_id: "string", # required
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1
    #                 },
    #                 connection_attempts: 1,
    #                 connection_timeout: 1,
    #                 response_completion_timeout: 1,
    #                 origin_shield: {
    #                   enabled: false, # required
    #                   origin_shield_region: "OriginShieldRegion"
    #                 },
    #                 origin_access_control_id: "string"
    #               }
    #             ]
    #           },
    #           origin_groups: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 id: "string", # required
    #                 failover_criteria: { # required
    #                   status_codes: { # required
    #                     quantity: 1, # required
    #                     items: [1], # required
    #                   }
    #                 },
    #                 members: { # required
    #                   quantity: 1, # required
    #                   items: [ # required
    #                     {
    #                       origin_id: "string", # required
    #                     }
    #                   ]
    #                 },
    #                 selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #               }
    #             ]
    #           },
    #           default_cache_behavior: { # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           },
    #           cache_behaviors: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 path_pattern: "string", # required
    #                 target_origin_id: "string", # required
    #                 trusted_signers: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 trusted_key_groups: {
    #                   enabled: false, # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #                 allowed_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   cached_methods: {
    #                     quantity: 1, # required
    #                     items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                   }
    #                 },
    #                 smooth_streaming: false,
    #                 compress: false,
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                       include_body: false
    #                     }
    #                   ]
    #                 },
    #                 function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       function_arn: "FunctionARN", # required
    #                       event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     }
    #                   ]
    #                 },
    #                 field_level_encryption_id: "string",
    #                 realtime_log_config_arn: "string",
    #                 cache_policy_id: "string",
    #                 origin_request_policy_id: "string",
    #                 response_headers_policy_id: "string",
    #                 grpc_config: {
    #                   enabled: false, # required
    #                 },
    #                 forwarded_values: {
    #                   query_string: false, # required
    #                   cookies: { # required
    #                     forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                     whitelisted_names: {
    #                       quantity: 1, # required
    #                       items: ["string"]
    #                     }
    #                   },
    #                   headers: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   },
    #                   query_string_cache_keys: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 min_ttl: 1,
    #                 default_ttl: 1,
    #                 max_ttl: 1
    #               }
    #             ]
    #           },
    #           custom_error_responses: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 error_code: 1, # required
    #                 response_page_path: "string",
    #                 response_code: "string",
    #                 error_caching_min_ttl: 1
    #               }
    #             ]
    #           },
    #           comment: "sensitiveStringType", # required
    #           price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"], # required
    #           enabled: false, # required
    #           viewer_certificate: { # required
    #             cloud_front_default_certificate: false,
    #             iam_certificate_id: "ServerCertificateId",
    #             acm_certificate_arn: "string",
    #             ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #             minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #             certificate: "string",
    #             certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #           },
    #           restrictions: { # required
    #             geo_restriction: { # required
    #               restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           web_acl_id: "string", # required
    #           http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"], # required
    #           is_ipv6_enabled: false, # required
    #           alias_icp_recordals: [
    #             {
    #               cname: "string",
    #               icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #             }
    #           ],
    #           staging: false, # required
    #           connection_mode: "direct" # One of: ["direct", "tenant-only"],
    #           anycast_ip_list_id: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListDistributionsByWebACLIdResult]
    def list_distributions_by_web_acl_id(params = {}, options = {})
      request = build_request(:list_distributions_by_web_acl_id, params)
      request.send_request(options)
    end

    # <note> <p>We recommend that you use the <code>ListDomainConflicts</code> API operation to check for domain conflicts, as it supports both standard distributions and distribution tenants. <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListConflictingAliases.html">ListConflictingAliases</a> performs similar checks but only supports standard distributions.</p> </note> <p>Lists existing domain associations that conflict with the domain that you specify.</p> <p>You can use this API operation to identify potential domain conflicts when moving domains between standard distributions and/or distribution tenants. Domain conflicts must be resolved first before they can be moved. </p> <p>For example, if you provide <code>www.example.com</code> as input, the returned list can include <code>www.example.com</code> and the overlapping wildcard alternate domain name (<code>*.example.com</code>), if they exist. If you provide <code>*.example.com</code> as input, the returned list can include <code>*.example.com</code> and any alternate domain names covered by that wildcard (for example, <code>www.example.com</code>, <code>test.example.com</code>, <code>dev.example.com</code>, and so on), if they exist.</p> <p>To list conflicting domains, specify the following:</p> <ul> <li> <p>The domain to search for</p> </li> <li> <p>The ID of a standard distribution or distribution tenant in your account that has an attached TLS certificate, which covers the specified domain</p> </li> </ul> <p>For more information, including how to set up the standard distribution or distribution tenant, and the certificate, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move">Moving an alternate domain name to a different standard distribution or distribution tenant</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListDomainConflictsRequest] params
    # @option params [String] :domain
    #   <p>The domain to check for conflicts.</p>
    # @option params [Types::DistributionResourceId] :domain_control_validation_resource
    #   <p>The distribution resource identifier. This can be the standard distribution or distribution tenant that has a valid certificate, which covers the domain that you specify.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of domain conflicts to return.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of domain conflicts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "string", # required
    #     domain_control_validation_resource: { # required
    #       distribution_id: "string",
    #       distribution_tenant_id: "string"
    #     },
    #     max_items: 1,
    #     marker: "string"
    #   }
    #   options = {}
    #   response = client.list_domain_conflicts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_conflicts: [
    #       {
    #         domain: "string", # required
    #         resource_type: "distribution" # One of: ["distribution", "distribution-tenant"], # required
    #         resource_id: "string", # required
    #         account_id: "string", # required
    #       }
    #     ],
    #     next_marker: "string"
    #   }
    # @return [Types::ListDomainConflictsResult]
    def list_domain_conflicts(params = {}, options = {})
      request = build_request(:list_domain_conflicts, params)
      request.send_request(options)
    end

    # <p>List all field-level encryption configurations that have been created in CloudFront for this account.</p>
    # @param [Hash, Types::ListFieldLevelEncryptionConfigsRequest] params
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page).</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of field-level encryption configurations you want in the response body.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_field_level_encryption_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           last_modified_time: Time.now, # required
    #           comment: "string",
    #           query_arg_profile_config: {
    #             forward_when_query_arg_profile_is_unknown: false, # required
    #             query_arg_profiles: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   query_arg: "string", # required
    #                   profile_id: "string", # required
    #                 }
    #               ]
    #             }
    #           },
    #           content_type_profile_config: {
    #             forward_when_content_type_is_unknown: false, # required
    #             content_type_profiles: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   format: "URLEncoded" # One of: ["URLEncoded"], # required
    #                   profile_id: "string",
    #                   content_type: "string", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListFieldLevelEncryptionConfigsResult]
    def list_field_level_encryption_configs(params = {}, options = {})
      request = build_request(:list_field_level_encryption_configs, params)
      request.send_request(options)
    end

    # <p>Request a list of field-level encryption profiles that have been created in CloudFront for this account.</p>
    # @param [Hash, Types::ListFieldLevelEncryptionProfilesRequest] params
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page).</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of field-level encryption profiles you want in the response body. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_field_level_encryption_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_profile_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           last_modified_time: Time.now, # required
    #           name: "string", # required
    #           encryption_entities: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 public_key_id: "string", # required
    #                 provider_id: "string", # required
    #                 field_patterns: { # required
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               }
    #             ]
    #           },
    #           comment: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListFieldLevelEncryptionProfilesResult]
    def list_field_level_encryption_profiles(params = {}, options = {})
      request = build_request(:list_field_level_encryption_profiles, params)
      request.send_request(options)
    end

    # <p>Gets a list of all CloudFront functions in your Amazon Web Services account.</p> <p>You can optionally apply a filter to return only the functions that are in the specified stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListFunctionsRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of functions. The response includes functions in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of functions that you want in the response.</p>
    # @option params [String] :stage
    #   <p>An optional filter to return only the functions that are in the specified stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #   }
    #   options = {}
    #   response = client.list_functions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           name: "FunctionName", # required
    #           status: "string",
    #           function_config: { # required
    #             comment: "string", # required
    #             runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #             key_value_store_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   key_value_store_arn: "KeyValueStoreARN", # required
    #                 }
    #               ]
    #             }
    #           },
    #           function_metadata: { # required
    #             function_arn: "string", # required
    #             stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #             created_time: Time.now,
    #             last_modified_time: Time.now, # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListFunctionsResult]
    def list_functions(params = {}, options = {})
      request = build_request(:list_functions, params)
      request.send_request(options)
    end

    # <p>Lists invalidation batches.</p>
    # @param [Hash, Types::ListInvalidationsRequest] params
    # @option params [String] :distribution_id
    #   <p>The distribution's ID.</p>
    # @option params [String] :marker
    #   <p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of invalidation batches that you want in the response body.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_id: "string", # required
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_invalidations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invalidation_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           create_time: Time.now, # required
    #           status: "string", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListInvalidationsResult]
    def list_invalidations(params = {}, options = {})
      request = build_request(:list_invalidations, params)
      request.send_request(options)
    end

    # <p>Lists the invalidations for a distribution tenant.</p>
    # @param [Hash, Types::ListInvalidationsForDistributionTenantRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution tenant.</p>
    # @option params [String] :marker
    #   <p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of invalidations to return for the distribution tenant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_invalidations_for_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invalidation_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           create_time: Time.now, # required
    #           status: "string", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListInvalidationsForDistributionTenantResult]
    def list_invalidations_for_distribution_tenant(params = {}, options = {})
      request = build_request(:list_invalidations_for_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Gets a list of key groups.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListKeyGroupsRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of key groups. The response includes key groups in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of key groups that you want in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_key_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_group_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           key_group: { # required
    #             id: "string", # required
    #             last_modified_time: Time.now, # required
    #             key_group_config: { # required
    #               name: "string", # required
    #               items: ["string"], # required
    #               comment: "string"
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListKeyGroupsResult]
    def list_key_groups(params = {}, options = {})
      request = build_request(:list_key_groups, params)
      request.send_request(options)
    end

    # <p>Specifies the key value stores to list.</p>
    # @param [Hash, Types::ListKeyValueStoresRequest] params
    # @option params [String] :marker
    #   <p>The marker associated with the key value stores list.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of items in the key value stores list.</p>
    # @option params [String] :status
    #   <p>The status of the request for the key value stores list.</p>
    # @example To get a list of KeyValueStores
    #   # The following command retrieves a list of KeyValueStores with READY status.
    #   params = {
    #     status: "READY"
    #   }
    #   options = {}
    #   response = client.list_key_value_stores(params, options)
    #   response.to_h #=>
    #   {
    #     key_value_store_list: {
    #       next_marker: "",
    #       max_items: 100,
    #       quantity: 1,
    #       items: [
    #         {
    #           name: "my-keyvaluestore-name",
    #           id: "54947df8-0e9e-4471-a2f9-9af509fb5889",
    #           comment: "",
    #           arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889",
    #           status: "READY",
    #           last_modified_time: Time.parse("2023-11-07T18:45:21.069Z")
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1,
    #     status: "string"
    #   }
    #   options = {}
    #   response = client.list_key_value_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_value_store_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           name: "string", # required
    #           id: "string", # required
    #           comment: "string", # required
    #           arn: "string", # required
    #           status: "string",
    #           last_modified_time: Time.now, # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListKeyValueStoresResult]
    def list_key_value_stores(params = {}, options = {})
      request = build_request(:list_key_value_stores, params)
      request.send_request(options)
    end

    # <p>Gets the list of CloudFront origin access controls (OACs) in this Amazon Web Services account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send another request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the next request.</p> <note> <p>If you're not using origin access controls for your Amazon Web Services account, the <code>ListOriginAccessControls</code> operation doesn't return the <code>Items</code> element in the response.</p> </note>
    # @param [Hash, Types::ListOriginAccessControlsRequest] params
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of origin access controls. The response includes the items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of origin access controls that you want in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_origin_access_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_access_control_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           description: "string", # required
    #           name: "string", # required
    #           signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #           signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #           origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListOriginAccessControlsResult]
    def list_origin_access_controls(params = {}, options = {})
      request = build_request(:list_origin_access_controls, params)
      request.send_request(options)
    end

    # <p>Gets a list of origin request policies.</p> <p>You can optionally apply a filter to return only the managed policies created by Amazon Web Services, or only the custom policies created in your Amazon Web Services account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListOriginRequestPoliciesRequest] params
    # @option params [String] :type
    #   <p>A filter to return only the specified kinds of origin request policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p> </li> </ul>
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of origin request policies. The response includes origin request policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of origin request policies that you want in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "managed" # One of: ["managed", "custom"],
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_origin_request_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_request_policy_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           type: "managed" # One of: ["managed", "custom"], # required
    #           origin_request_policy: { # required
    #             id: "string", # required
    #             last_modified_time: Time.now, # required
    #             origin_request_policy_config: { # required
    #               comment: "string",
    #               name: "string", # required
    #               headers_config: { # required
    #                 header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               cookies_config: { # required
    #                 cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #                 cookies: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               query_strings_config: { # required
    #                 query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #                 query_strings: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListOriginRequestPoliciesResult]
    def list_origin_request_policies(params = {}, options = {})
      request = build_request(:list_origin_request_policies, params)
      request.send_request(options)
    end

    # <p>List all public keys that have been added to CloudFront for this account.</p>
    # @param [Hash, Types::ListPublicKeysRequest] params
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page).</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of public keys you want in the response body.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_public_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           name: "string", # required
    #           created_time: Time.now, # required
    #           encoded_key: "string", # required
    #           comment: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListPublicKeysResult]
    def list_public_keys(params = {}, options = {})
      request = build_request(:list_public_keys, params)
      request.send_request(options)
    end

    # <p>Gets a list of real-time log configurations.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListRealtimeLogConfigsRequest] params
    # @option params [Integer] :max_items
    #   <p>The maximum number of real-time log configurations that you want in the response.</p>
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of real-time log configurations. The response includes real-time log configurations in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     marker: "string"
    #   }
    #   options = {}
    #   response = client.list_realtime_log_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     realtime_log_configs: {
    #       max_items: 1, # required
    #       items: [
    #         {
    #           arn: "string", # required
    #           name: "string", # required
    #           sampling_rate: 1, # required
    #           end_points: [ # required
    #             {
    #               stream_type: "string", # required
    #               kinesis_stream_config: {
    #                 role_arn: "string", # required
    #                 stream_arn: "string", # required
    #               }
    #             }
    #           ],
    #           fields: ["string"], # required
    #         }
    #       ],
    #       is_truncated: false, # required
    #       marker: "string", # required
    #       next_marker: "string"
    #     }
    #   }
    # @return [Types::ListRealtimeLogConfigsResult]
    def list_realtime_log_configs(params = {}, options = {})
      request = build_request(:list_realtime_log_configs, params)
      request.send_request(options)
    end

    # <p>Gets a list of response headers policies.</p> <p>You can optionally apply a filter to get only the managed policies created by Amazon Web Services, or only the custom policies created in your Amazon Web Services account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>
    # @param [Hash, Types::ListResponseHeadersPoliciesRequest] params
    # @option params [String] :type
    #   <p>A filter to get only the specified kind of response headers policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Gets only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Gets only the custom policies created in your Amazon Web Services account.</p> </li> </ul>
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of response headers policies. The response includes response headers policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of response headers policies that you want to get in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "managed" # One of: ["managed", "custom"],
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_response_headers_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_headers_policy_list: {
    #       next_marker: "string",
    #       max_items: 1, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           type: "managed" # One of: ["managed", "custom"], # required
    #           response_headers_policy: { # required
    #             id: "string", # required
    #             last_modified_time: Time.now, # required
    #             response_headers_policy_config: { # required
    #               comment: "string",
    #               name: "string", # required
    #               cors_config: {
    #                 access_control_allow_origins: { # required
    #                   quantity: 1, # required
    #                   items: ["string"], # required
    #                 },
    #                 access_control_allow_headers: { # required
    #                   quantity: 1, # required
    #                   items: ["string"], # required
    #                 },
    #                 access_control_allow_methods: { # required
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #                 },
    #                 access_control_allow_credentials: false, # required
    #                 access_control_expose_headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 access_control_max_age_sec: 1,
    #                 origin_override: false, # required
    #               },
    #               security_headers_config: {
    #                 xss_protection: {
    #                   override: false, # required
    #                   protection: false, # required
    #                   mode_block: false,
    #                   report_uri: "string"
    #                 },
    #                 frame_options: {
    #                   override: false, # required
    #                   frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #                 },
    #                 referrer_policy: {
    #                   override: false, # required
    #                   referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #                 },
    #                 content_security_policy: {
    #                   override: false, # required
    #                   content_security_policy: "string", # required
    #                 },
    #                 content_type_options: {
    #                   override: false, # required
    #                 },
    #                 strict_transport_security: {
    #                   override: false, # required
    #                   include_subdomains: false,
    #                   preload: false,
    #                   access_control_max_age_sec: 1, # required
    #                 }
    #               },
    #               server_timing_headers_config: {
    #                 enabled: false, # required
    #                 sampling_rate: 1.0
    #               },
    #               custom_headers_config: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header: "string", # required
    #                     value: "string", # required
    #                     override: false, # required
    #                   }
    #                 ]
    #               },
    #               remove_headers_config: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header: "string", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListResponseHeadersPoliciesResult]
    def list_response_headers_policies(params = {}, options = {})
      request = build_request(:list_response_headers_policies, params)
      request.send_request(options)
    end

    # <p>List streaming distributions.</p>
    # @param [Hash, Types::ListStreamingDistributionsRequest] params
    # @option params [String] :marker
    #   <p>The value that you provided for the <code>Marker</code> request parameter.</p>
    # @option params [Integer] :max_items
    #   <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_streaming_distributions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_distribution_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           arn: "string", # required
    #           status: "string", # required
    #           last_modified_time: Time.now, # required
    #           domain_name: "string", # required
    #           s3_origin: { # required
    #             domain_name: "string", # required
    #             origin_access_identity: "string", # required
    #           },
    #           aliases: { # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_signers: { # required
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           comment: "string", # required
    #           price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"], # required
    #           enabled: false, # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListStreamingDistributionsResult]
    def list_streaming_distributions(params = {}, options = {})
      request = build_request(:list_streaming_distributions, params)
      request.send_request(options)
    end

    # <p>List tags for a CloudFront resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html">Tagging a distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource
    #   <p>An ARN of a CloudFront resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>List the CloudFront VPC origins in your account.</p>
    # @param [Hash, Types::ListVpcOriginsRequest] params
    # @option params [String] :marker
    #   <p>The marker associated with the VPC origins list.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of items included in the list.</p>
    # @example To list VPC origins
    #   # The following command lists VPC origins:
    #   params = {}
    #   options = {}
    #   response = client.list_vpc_origins(params, options)
    #   response.to_h #=>
    #   {
    #     vpc_origin_list: {
    #       items: [
    #         {
    #           status: "Deployed",
    #           name: "my-vpcorigin-name",
    #           created_time: Time.parse("2024-10-15T17:19:42.318Z"),
    #           last_modified_time: Time.parse("2024-10-15T17:24:35.188Z"),
    #           id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #           arn: "arn:aws:cloudfront::123456789012:vpcorigin/vo_BQwjxxQxjCaBcQLzJUFkDM",
    #           origin_endpoint_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d"
    #         }
    #       ],
    #       max_items: 100,
    #       quantity: 1,
    #       marker: "a",
    #       is_truncated: true
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_vpc_origins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_origin_list: {
    #       marker: "string", # required
    #       next_marker: "string",
    #       max_items: 1, # required
    #       is_truncated: false, # required
    #       quantity: 1, # required
    #       items: [
    #         {
    #           id: "string", # required
    #           name: "string", # required
    #           status: "string", # required
    #           created_time: Time.now, # required
    #           last_modified_time: Time.now, # required
    #           arn: "string", # required
    #           origin_endpoint_arn: "string", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListVpcOriginsResult]
    def list_vpc_origins(params = {}, options = {})
      request = build_request(:list_vpc_origins, params)
      request.send_request(options)
    end

    # <p>Publishes a CloudFront function by copying the function code from the <code>DEVELOPMENT</code> stage to <code>LIVE</code>. This automatically updates all cache behaviors that are using this function to use the newly published copy in the <code>LIVE</code> stage.</p> <p>When a function is published to the <code>LIVE</code> stage, you can attach the function to a distribution's cache behavior, using the function's Amazon Resource Name (ARN).</p> <p>To publish a function, you must provide the function's name and version (<code>ETag</code> value). To get these values, you can use <code>ListFunctions</code> and <code>DescribeFunction</code>.</p>
    # @param [Hash, Types::PublishFunctionRequest] params
    # @option params [String] :name
    #   <p>The name of the function that you are publishing.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are publishing, which you can get using <code>DescribeFunction</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.publish_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_summary: {
    #       name: "FunctionName", # required
    #       status: "string",
    #       function_config: { # required
    #         comment: "string", # required
    #         runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #         key_value_store_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               key_value_store_arn: "KeyValueStoreARN", # required
    #             }
    #           ]
    #         }
    #       },
    #       function_metadata: { # required
    #         function_arn: "string", # required
    #         stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #         created_time: Time.now,
    #         last_modified_time: Time.now, # required
    #       }
    #     }
    #   }
    # @return [Types::PublishFunctionResult]
    def publish_function(params = {}, options = {})
      request = build_request(:publish_function, params)
      request.send_request(options)
    end

    # <p>Add tags to a CloudFront resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html">Tagging a distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource
    #   <p>An ARN of a CloudFront resource.</p>
    # @option params [Types::Tags] :tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceARN", # required
    #     tags: { # required
    #       items: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
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

    # <p>Tests a CloudFront function.</p> <p>To test a function, you provide an <i>event object</i> that represents an HTTP request or response that your CloudFront distribution could receive in production. CloudFront runs the function, passing it the event object that you provided, and returns the function's result (the modified event object) in the response. The response also contains function logs and error messages, if any exist. For more information about testing functions, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>To test a function, you provide the function's name and version (<code>ETag</code> value) along with the event object. To get the function's name and version, you can use <code>ListFunctions</code> and <code>DescribeFunction</code>.</p>
    # @param [Hash, Types::TestFunctionRequest] params
    # @option params [String] :name
    #   <p>The name of the function that you are testing.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are testing, which you can get using <code>DescribeFunction</code>.</p>
    # @option params [String] :stage
    #   <p>The stage of the function that you are testing, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    # @option params [String] :event_object
    #   <p>The event object to test the function with. For more information about the structure of the event object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     if_match: "string", # required
    #     stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     event_object: "data", # required
    #   }
    #   options = {}
    #   response = client.test_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_result: {
    #       function_summary: {
    #         name: "FunctionName", # required
    #         status: "string",
    #         function_config: { # required
    #           comment: "string", # required
    #           runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #           key_value_store_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 key_value_store_arn: "KeyValueStoreARN", # required
    #               }
    #             ]
    #           }
    #         },
    #         function_metadata: { # required
    #           function_arn: "string", # required
    #           stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #           created_time: Time.now,
    #           last_modified_time: Time.now, # required
    #         }
    #       },
    #       compute_utilization: "string",
    #       function_execution_logs: ["string"],
    #       function_error_message: "sensitiveStringType",
    #       function_output: "sensitiveStringType"
    #     }
    #   }
    # @return [Types::TestFunctionResult]
    def test_function(params = {}, options = {})
      request = build_request(:test_function, params)
      request.send_request(options)
    end

    # <p>Remove tags from a CloudFront resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html">Tagging a distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource
    #   <p>An ARN of a CloudFront resource.</p>
    # @option params [Types::TagKeys] :tag_keys
    #   <p>A complex type that contains zero or more <code>Tag</code> key elements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceARN", # required
    #     tag_keys: { # required
    #       items: ["TagKey"]
    #     }
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

    # <p>Updates a cache policy configuration.</p> <p>When you update a cache policy configuration, all the fields are updated with the values provided in the request. You cannot update some fields independent of others. To update a cache policy configuration:</p> <ol> <li> <p>Use <code>GetCachePolicyConfig</code> to get the current configuration.</p> </li> <li> <p>Locally modify the fields in the cache policy configuration that you want to update.</p> </li> <li> <p>Call <code>UpdateCachePolicy</code> by providing the entire cache policy configuration, including the fields that you modified and those that you didn't.</p> </li> </ol> <important> <p>If your minimum TTL is greater than 0, CloudFront will cache content for at least the duration specified in the cache policy's minimum TTL, even if the <code>Cache-Control: no-cache</code>, <code>no-store</code>, or <code>private</code> directives are present in the origin headers.</p> </important>
    # @param [Hash, Types::UpdateCachePolicyRequest] params
    # @option params [Types::CachePolicyConfig] :cache_policy_config
    #   <p>A cache policy configuration.</p>
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy that you are updating. The identifier is returned in a cache behavior's <code>CachePolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>
    # @option params [String] :if_match
    #   <p>The version of the cache policy that you are updating. The version is returned in the cache policy's <code>ETag</code> field in the response to <code>GetCachePolicyConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: { # required
    #           header_behavior: "none" # One of: ["none", "whitelist"], # required
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         }
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_cache_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       cache_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         default_ttl: 1,
    #         max_ttl: 1,
    #         min_ttl: 1, # required
    #         parameters_in_cache_key_and_forwarded_to_origin: {
    #           enable_accept_encoding_gzip: false, # required
    #           enable_accept_encoding_brotli: false,
    #           headers_config: { # required
    #             header_behavior: "none" # One of: ["none", "whitelist"], # required
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           cookies_config: { # required
    #             cookie_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #             cookies: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           query_strings_config: { # required
    #             query_string_behavior: "none" # One of: ["none", "whitelist", "allExcept", "all"], # required
    #             query_strings: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateCachePolicyResult]
    def update_cache_policy(params = {}, options = {})
      request = build_request(:update_cache_policy, params)
      request.send_request(options)
    end

    # <p>Update an origin access identity.</p>
    # @param [Hash, Types::UpdateCloudFrontOriginAccessIdentityRequest] params
    # @option params [Types::CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   <p>The identity's configuration information.</p>
    # @option params [String] :id
    #   <p>The identity's id.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_front_origin_access_identity_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string", # required
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_cloud_front_origin_access_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_front_origin_access_identity: {
    #       id: "string", # required
    #       s3_canonical_user_id: "string", # required
    #       cloud_front_origin_access_identity_config: {
    #         caller_reference: "string", # required
    #         comment: "string", # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateCloudFrontOriginAccessIdentityResult]
    def update_cloud_front_origin_access_identity(params = {}, options = {})
      request = build_request(:update_cloud_front_origin_access_identity, params)
      request.send_request(options)
    end

    # <p>Updates a connection group.</p>
    # @param [Hash, Types::UpdateConnectionGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the connection group.</p>
    # @option params [Boolean] :ipv6_enabled
    #   <p>Enable IPv6 for the connection group. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6">Enable IPv6</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the connection group that you're updating.</p>
    # @option params [String] :anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    # @option params [Boolean] :enabled
    #   <p>Whether the connection group is enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     ipv6_enabled: false,
    #     if_match: "string", # required
    #     anycast_ip_list_id: "string",
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.update_connection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_group: {
    #       id: "string",
    #       name: "string",
    #       arn: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       ipv6_enabled: false,
    #       routing_endpoint: "string",
    #       anycast_ip_list_id: "string",
    #       status: "string",
    #       enabled: false,
    #       is_default: false
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateConnectionGroupResult]
    def update_connection_group(params = {}, options = {})
      request = build_request(:update_connection_group, params)
      request.send_request(options)
    end

    # <p>Updates a continuous deployment policy. You can update a continuous deployment policy to enable or disable it, to change the percentage of traffic that it sends to the staging distribution, or to change the staging distribution that it sends traffic to.</p> <p>When you update a continuous deployment policy configuration, all the fields are updated with the values that are provided in the request. You cannot update some fields independent of others. To update a continuous deployment policy configuration:</p> <ol> <li> <p>Use <code>GetContinuousDeploymentPolicyConfig</code> to get the current configuration.</p> </li> <li> <p>Locally modify the fields in the continuous deployment policy configuration that you want to update.</p> </li> <li> <p>Use <code>UpdateContinuousDeploymentPolicy</code>, providing the entire continuous deployment policy configuration, including the fields that you modified and those that you didn't.</p> </li> </ol>
    # @param [Hash, Types::UpdateContinuousDeploymentPolicyRequest] params
    # @option params [Types::ContinuousDeploymentPolicyConfig] :continuous_deployment_policy_config
    #   <p>The continuous deployment policy configuration.</p>
    # @option params [String] :id
    #   <p>The identifier of the continuous deployment policy that you are updating.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the continuous deployment policy that you are updating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     continuous_deployment_policy_config: { # required
    #       staging_distribution_dns_names: { # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       enabled: false, # required
    #       traffic_config: {
    #         single_weight_config: {
    #           weight: 1.0, # required
    #           session_stickiness_config: {
    #             idle_ttl: 1, # required
    #             maximum_ttl: 1, # required
    #           }
    #         },
    #         single_header_config: {
    #           header: "string", # required
    #           value: "string", # required
    #         },
    #         type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_continuous_deployment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_deployment_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       continuous_deployment_policy_config: { # required
    #         staging_distribution_dns_names: { # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         enabled: false, # required
    #         traffic_config: {
    #           single_weight_config: {
    #             weight: 1.0, # required
    #             session_stickiness_config: {
    #               idle_ttl: 1, # required
    #               maximum_ttl: 1, # required
    #             }
    #           },
    #           single_header_config: {
    #             header: "string", # required
    #             value: "string", # required
    #           },
    #           type: "SingleWeight" # One of: ["SingleWeight", "SingleHeader"], # required
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateContinuousDeploymentPolicyResult]
    def update_continuous_deployment_policy(params = {}, options = {})
      request = build_request(:update_continuous_deployment_policy, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for a CloudFront distribution.</p> <p>The update process includes getting the current distribution configuration, updating it to make your changes, and then submitting an <code>UpdateDistribution</code> request to make the updates.</p> <p> <b>To update a web distribution using the CloudFront API</b> </p> <ol> <li> <p>Use <code>GetDistributionConfig</code> to get the current configuration, including the version identifier (<code>ETag</code>).</p> </li> <li> <p>Update the distribution configuration that was returned in the response. Note the following important requirements and restrictions:</p> <ul> <li> <p>You must copy the <code>ETag</code> field value from the response. (You'll use it for the <code>IfMatch</code> parameter in your request.) Then, remove the <code>ETag</code> field from the distribution configuration.</p> </li> <li> <p>You can't change the value of <code>CallerReference</code>.</p> </li> </ul> </li> <li> <p>Submit an <code>UpdateDistribution</code> request, providing the updated distribution configuration. The new configuration replaces the existing configuration. The values that you specify in an <code>UpdateDistribution</code> request are not merged into your existing configuration. Make sure to include all fields: the ones that you modified and also the ones that you didn't.</p> </li> </ol>
    # @param [Hash, Types::UpdateDistributionRequest] params
    # @option params [Types::DistributionConfig] :distribution_config
    #   <p>The distribution's configuration information.</p>
    # @option params [String] :id
    #   <p>The distribution's id.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_config: { # required
    #       caller_reference: "string", # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       default_root_object: "string",
    #       origins: { # required
    #         quantity: 1, # required
    #         items: [ # required
    #           {
    #             id: "string", # required
    #             domain_name: "string", # required
    #             origin_path: "string",
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: "string", # required
    #                   header_value: "sensitiveStringType", # required
    #                 }
    #               ]
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: "string", # required
    #               origin_read_timeout: 1
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #               ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #             },
    #             vpc_origin_config: {
    #               vpc_origin_id: "string", # required
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             response_completion_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: "OriginShieldRegion"
    #             },
    #             origin_access_control_id: "string"
    #           }
    #         ]
    #       },
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: "string", # required
    #             failover_criteria: { # required
    #               status_codes: { # required
    #                 quantity: 1, # required
    #                 items: [1], # required
    #               }
    #             },
    #             members: { # required
    #               quantity: 1, # required
    #               items: [ # required
    #                 {
    #                   origin_id: "string", # required
    #                 }
    #               ]
    #             },
    #             selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #           }
    #         ]
    #       },
    #       default_cache_behavior: { # required
    #         target_origin_id: "string", # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #           cached_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #           }
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               include_body: false
    #             }
    #           ]
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: "FunctionARN", # required
    #               event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #             }
    #           ]
    #         },
    #         field_level_encryption_id: "string",
    #         realtime_log_config_arn: "string",
    #         cache_policy_id: "string",
    #         origin_request_policy_id: "string",
    #         response_headers_policy_id: "string",
    #         grpc_config: {
    #           enabled: false, # required
    #         },
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: { # required
    #             forward: "none" # One of: ["none", "whitelist", "all"], # required
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1
    #       },
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: "string", # required
    #             target_origin_id: "string", # required
    #             trusted_signers: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             trusted_key_groups: {
    #               enabled: false, # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #             allowed_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               cached_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #               }
    #             },
    #             smooth_streaming: false,
    #             compress: false,
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   include_body: false
    #                 }
    #               ]
    #             },
    #             function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   function_arn: "FunctionARN", # required
    #                   event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 }
    #               ]
    #             },
    #             field_level_encryption_id: "string",
    #             realtime_log_config_arn: "string",
    #             cache_policy_id: "string",
    #             origin_request_policy_id: "string",
    #             response_headers_policy_id: "string",
    #             grpc_config: {
    #               enabled: false, # required
    #             },
    #             forwarded_values: {
    #               query_string: false, # required
    #               cookies: { # required
    #                 forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                 whitelisted_names: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               headers: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               query_string_cache_keys: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           }
    #         ]
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: "string",
    #             response_code: "string",
    #             error_caching_min_ttl: 1
    #           }
    #         ]
    #       },
    #       comment: "CommentType", # required
    #       logging: {
    #         enabled: false,
    #         include_cookies: false,
    #         bucket: "string",
    #         prefix: "string"
    #       },
    #       price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "ServerCertificateId",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #         minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #         certificate: "string",
    #         certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #       },
    #       restrictions: {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       web_acl_id: "string",
    #       http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #       is_ipv6_enabled: false,
    #       continuous_deployment_policy_id: "string",
    #       staging: false,
    #       anycast_ip_list_id: "string",
    #       tenant_config: {
    #         parameter_definitions: [
    #           {
    #             name: "ParameterName", # required
    #             definition: { # required
    #               string_schema: {
    #                 comment: "sensitiveStringType",
    #                 default_value: "ParameterValue",
    #                 required: false, # required
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now, # required
    #       in_progress_invalidation_batches: 1, # required
    #       domain_name: "string", # required
    #       active_trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       active_trusted_key_groups: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_group_id: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       alias_icp_recordals: [
    #         {
    #           cname: "string",
    #           icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #         }
    #       ]
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateDistributionResult]
    def update_distribution(params = {}, options = {})
      request = build_request(:update_distribution, params)
      request.send_request(options)
    end

    # <p>Updates a distribution tenant.</p>
    # @param [Hash, Types::UpdateDistributionTenantRequest] params
    # @option params [String] :id
    #   <p>The ID of the distribution tenant.</p>
    # @option params [String] :distribution_id
    #   <p>The ID for the multi-tenant distribution.</p>
    # @option params [Array<Types::DomainItem>] :domains
    #   <p>The domains to update for the distribution tenant. A domain object can contain only a domain property. You must specify at least one domain. Each distribution tenant can have up to 5 domains.</p>
    # @option params [Types::Customizations] :customizations
    #   <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    # @option params [String] :connection_group_id
    #   <p>The ID of the target connection group.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution tenant to update. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>
    # @option params [Types::ManagedCertificateRequest] :managed_certificate_request
    #   <p>An object that contains the CloudFront managed ACM certificate request.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether the distribution tenant should be updated to an enabled state. If you update the distribution tenant and it's not enabled, the distribution tenant won't serve traffic.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     distribution_id: "string",
    #     domains: [
    #       {
    #         domain: "string", # required
    #       }
    #     ],
    #     customizations: {
    #       web_acl: {
    #         action: "override" # One of: ["override", "disable"], # required
    #         arn: "string"
    #       },
    #       certificate: {
    #         arn: "string", # required
    #       },
    #       geo_restrictions: {
    #         restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #         locations: ["string"]
    #       }
    #     },
    #     parameters: [
    #       {
    #         name: "ParameterName", # required
    #         value: "ParameterValue", # required
    #       }
    #     ],
    #     connection_group_id: "string",
    #     if_match: "string", # required
    #     managed_certificate_request: {
    #       validation_token_host: "cloudfront" # One of: ["cloudfront", "self-hosted"], # required
    #       primary_domain_name: "string",
    #       certificate_transparency_logging_preference: "enabled" # One of: ["enabled", "disabled"]
    #     },
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.update_distribution_tenant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution_tenant: {
    #       id: "string",
    #       distribution_id: "string",
    #       name: "string",
    #       arn: "string",
    #       domains: [
    #         {
    #           domain: "string", # required
    #           status: "active" # One of: ["active", "inactive"]
    #         }
    #       ],
    #       tags: {
    #         items: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       },
    #       customizations: {
    #         web_acl: {
    #           action: "override" # One of: ["override", "disable"], # required
    #           arn: "string"
    #         },
    #         certificate: {
    #           arn: "string", # required
    #         },
    #         geo_restrictions: {
    #           restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #           locations: ["string"]
    #         }
    #       },
    #       parameters: [
    #         {
    #           name: "ParameterName", # required
    #           value: "ParameterValue", # required
    #         }
    #       ],
    #       connection_group_id: "string",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       enabled: false,
    #       status: "string"
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateDistributionTenantResult]
    def update_distribution_tenant(params = {}, options = {})
      request = build_request(:update_distribution_tenant, params)
      request.send_request(options)
    end

    # <p>Copies the staging distribution's configuration to its corresponding primary distribution. The primary distribution retains its <code>Aliases</code> (also known as alternate domain names or CNAMEs) and <code>ContinuousDeploymentPolicyId</code> value, but otherwise its configuration is overwritten to match the staging distribution.</p> <p>You can use this operation in a continuous deployment workflow after you have tested configuration changes on the staging distribution. After using a continuous deployment policy to move a portion of your domain name's traffic to the staging distribution and verifying that it works as intended, you can use this operation to copy the staging distribution's configuration to the primary distribution. This action will disable the continuous deployment policy and move your domain's traffic back to the primary distribution.</p> <p>This API operation requires the following IAM permissions:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html">GetDistribution</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a> </p> </li> </ul>
    # @param [Hash, Types::UpdateDistributionWithStagingConfigRequest] params
    # @option params [String] :id
    #   <p>The identifier of the primary distribution to which you are copying a staging distribution's configuration.</p>
    # @option params [String] :staging_distribution_id
    #   <p>The identifier of the staging distribution whose configuration you are copying to the primary distribution.</p>
    # @option params [String] :if_match
    #   <p>The current versions (<code>ETag</code> values) of both primary and staging distributions. Provide these in the following format:</p> <p> <code>&lt;primary ETag&gt;, &lt;staging ETag&gt;</code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "string", # required
    #     staging_distribution_id: "string",
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_distribution_with_staging_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now, # required
    #       in_progress_invalidation_batches: 1, # required
    #       domain_name: "string", # required
    #       active_trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       active_trusted_key_groups: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_group_id: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       distribution_config: { # required
    #         caller_reference: "string", # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         default_root_object: "string",
    #         origins: { # required
    #           quantity: 1, # required
    #           items: [ # required
    #             {
    #               id: "string", # required
    #               domain_name: "string", # required
    #               origin_path: "string",
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: "string", # required
    #                     header_value: "sensitiveStringType", # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: "string", # required
    #                 origin_read_timeout: 1
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
    #                 ip_address_type: "ipv4" # One of: ["ipv4", "ipv6", "dualstack"]
    #               },
    #               vpc_origin_config: {
    #                 vpc_origin_id: "string", # required
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               response_completion_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: "OriginShieldRegion"
    #               },
    #               origin_access_control_id: "string"
    #             }
    #           ]
    #         },
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: "string", # required
    #               failover_criteria: { # required
    #                 status_codes: { # required
    #                   quantity: 1, # required
    #                   items: [1], # required
    #                 }
    #               },
    #               members: { # required
    #                 quantity: 1, # required
    #                 items: [ # required
    #                   {
    #                     origin_id: "string", # required
    #                   }
    #                 ]
    #               },
    #               selection_criteria: "default" # One of: ["default", "media-quality-based"]
    #             }
    #           ]
    #         },
    #         default_cache_behavior: { # required
    #           target_origin_id: "string", # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #               items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: "FunctionARN", # required
    #                 event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: "string",
    #           realtime_log_config_arn: "string",
    #           cache_policy_id: "string",
    #           origin_request_policy_id: "string",
    #           response_headers_policy_id: "string",
    #           grpc_config: {
    #             enabled: false, # required
    #           },
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: { # required
    #               forward: "none" # One of: ["none", "whitelist", "all"], # required
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             },
    #             headers: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         },
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: "string", # required
    #               target_origin_id: "string", # required
    #               trusted_signers: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               trusted_key_groups: {
    #                 enabled: false, # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               },
    #               viewer_protocol_policy: "allow-all" # One of: ["allow-all", "https-only", "redirect-to-https"], # required
    #               allowed_methods: {
    #                 quantity: 1, # required
    #                 items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 cached_methods: {
    #                   quantity: 1, # required
    #                   items: ["GET" # One of: ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"]], # required
    #                 }
    #               },
    #               smooth_streaming: false,
    #               compress: false,
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                     include_body: false
    #                   }
    #                 ]
    #               },
    #               function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     function_arn: "FunctionARN", # required
    #                     event_type: "viewer-request" # One of: ["viewer-request", "viewer-response", "origin-request", "origin-response"], # required
    #                   }
    #                 ]
    #               },
    #               field_level_encryption_id: "string",
    #               realtime_log_config_arn: "string",
    #               cache_policy_id: "string",
    #               origin_request_policy_id: "string",
    #               response_headers_policy_id: "string",
    #               grpc_config: {
    #                 enabled: false, # required
    #               },
    #               forwarded_values: {
    #                 query_string: false, # required
    #                 cookies: { # required
    #                   forward: "none" # One of: ["none", "whitelist", "all"], # required
    #                   whitelisted_names: {
    #                     quantity: 1, # required
    #                     items: ["string"]
    #                   }
    #                 },
    #                 headers: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 },
    #                 query_string_cache_keys: {
    #                   quantity: 1, # required
    #                   items: ["string"]
    #                 }
    #               },
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: "string",
    #               response_code: "string",
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: "CommentType", # required
    #         logging: {
    #           enabled: false,
    #           include_cookies: false,
    #           bucket: "string",
    #           prefix: "string"
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: "ServerCertificateId",
    #           acm_certificate_arn: "string",
    #           ssl_support_method: "sni-only" # One of: ["sni-only", "vip", "static-ip"],
    #           minimum_protocol_version: "SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1_2016", "TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021", "TLSv1.3_2025"],
    #           certificate: "string",
    #           certificate_source: "cloudfront" # One of: ["cloudfront", "iam", "acm"]
    #         },
    #         restrictions: {
    #           geo_restriction: { # required
    #             restriction_type: "blacklist" # One of: ["blacklist", "whitelist", "none"], # required
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         web_acl_id: "string",
    #         http_version: "http1.1" # One of: ["http1.1", "http2", "http3", "http2and3"],
    #         is_ipv6_enabled: false,
    #         continuous_deployment_policy_id: "string",
    #         staging: false,
    #         anycast_ip_list_id: "string",
    #         tenant_config: {
    #           parameter_definitions: [
    #             {
    #               name: "ParameterName", # required
    #               definition: { # required
    #                 string_schema: {
    #                   comment: "sensitiveStringType",
    #                   default_value: "ParameterValue",
    #                   required: false, # required
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         connection_mode: "direct" # One of: ["direct", "tenant-only"]
    #       },
    #       alias_icp_recordals: [
    #         {
    #           cname: "string",
    #           icp_recordal_status: "APPROVED" # One of: ["APPROVED", "SUSPENDED", "PENDING"]
    #         }
    #       ]
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateDistributionWithStagingConfigResult]
    def update_distribution_with_staging_config(params = {}, options = {})
      request = build_request(:update_distribution_with_staging_config, params)
      request.send_request(options)
    end

    # <note> <p>We recommend that you use the <code>UpdateDomainAssociation</code> API operation to move a domain association, as it supports both standard distributions and distribution tenants. <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_AssociateAlias.html">AssociateAlias</a> performs similar checks but only supports standard distributions.</p> </note> <p>Moves a domain from its current standard distribution or distribution tenant to another one.</p> <p>You must first disable the source distribution (standard distribution or distribution tenant) and then separately call this operation to move the domain to another target distribution (standard distribution or distribution tenant).</p> <p>To use this operation, specify the domain and the ID of the target resource (standard distribution or distribution tenant). For more information, including how to set up the target resource, prerequisites that you must complete, and other restrictions, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move">Moving an alternate domain name to a different standard distribution or distribution tenant</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateDomainAssociationRequest] params
    # @option params [String] :domain
    #   <p>The domain to update.</p>
    # @option params [Types::DistributionResourceId] :target_resource
    #   <p>The target standard distribution or distribution tenant resource for the domain. You can specify either <code>DistributionId</code> or <code>DistributionTenantId</code>, but not both.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> identifier for the standard distribution or distribution tenant that will be associated with the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "string", # required
    #     target_resource: { # required
    #       distribution_id: "string",
    #       distribution_tenant_id: "string"
    #     },
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: "string",
    #     resource_id: "string",
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateDomainAssociationResult]
    def update_domain_association(params = {}, options = {})
      request = build_request(:update_domain_association, params)
      request.send_request(options)
    end

    # <p>Update a field-level encryption configuration.</p>
    # @param [Hash, Types::UpdateFieldLevelEncryptionConfigRequest] params
    # @option params [Types::FieldLevelEncryptionConfig] :field_level_encryption_config
    #   <p>Request to update a field-level encryption configuration.</p>
    # @option params [String] :id
    #   <p>The ID of the configuration you want to update.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     field_level_encryption_config: { # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             }
    #           ]
    #         }
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded" # One of: ["URLEncoded"], # required
    #               profile_id: "string",
    #               content_type: "string", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_field_level_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       field_level_encryption_config: { # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         query_arg_profile_config: {
    #           forward_when_query_arg_profile_is_unknown: false, # required
    #           query_arg_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 query_arg: "string", # required
    #                 profile_id: "string", # required
    #               }
    #             ]
    #           }
    #         },
    #         content_type_profile_config: {
    #           forward_when_content_type_is_unknown: false, # required
    #           content_type_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 format: "URLEncoded" # One of: ["URLEncoded"], # required
    #                 profile_id: "string",
    #                 content_type: "string", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateFieldLevelEncryptionConfigResult]
    def update_field_level_encryption_config(params = {}, options = {})
      request = build_request(:update_field_level_encryption_config, params)
      request.send_request(options)
    end

    # <p>Update a field-level encryption profile.</p>
    # @param [Hash, Types::UpdateFieldLevelEncryptionProfileRequest] params
    # @option params [Types::FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   <p>Request to update a field-level encryption profile.</p>
    # @option params [String] :id
    #   <p>The ID of the field-level encryption profile request.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     field_level_encryption_profile_config: { # required
    #       name: "string", # required
    #       caller_reference: "string", # required
    #       comment: "string",
    #       encryption_entities: { # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_field_level_encryption_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_level_encryption_profile: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       field_level_encryption_profile_config: { # required
    #         name: "string", # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         encryption_entities: { # required
    #           quantity: 1, # required
    #           items: [
    #             {
    #               public_key_id: "string", # required
    #               provider_id: "string", # required
    #               field_patterns: { # required
    #                 quantity: 1, # required
    #                 items: ["string"]
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateFieldLevelEncryptionProfileResult]
    def update_field_level_encryption_profile(params = {}, options = {})
      request = build_request(:update_field_level_encryption_profile, params)
      request.send_request(options)
    end

    # <p>Updates a CloudFront function.</p> <p>You can update a function's code or the comment that describes the function. You cannot update a function's name.</p> <p>To update a function, you provide the function's name and version (<code>ETag</code> value) along with the updated function code. To get the name and version, you can use <code>ListFunctions</code> and <code>DescribeFunction</code>.</p>
    # @param [Hash, Types::UpdateFunctionRequest] params
    # @option params [String] :name
    #   <p>The name of the function that you are updating.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are updating, which you can get using <code>DescribeFunction</code>.</p>
    # @option params [Types::FunctionConfig] :function_config
    #   <p>Configuration information about the function.</p>
    # @option params [String] :function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @example To update a function
    #   # Use the following command to update a function.
    #   params = {
    #     name: "my-function-name",
    #     function_config: {
    #       comment: "my-changed-comment",
    #       runtime: cloudfront-js-2.0,
    #       key_value_store_associations: {
    #         quantity: 1,
    #         items: [
    #           {
    #             key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889"
    #           }
    #         ]
    #       }
    #     },
    #     function_code: "function-code-changed.js",
    #     if_match: "ETVPDKIKX0DER"
    #   }
    #   options = {}
    #   response = client.update_function(params, options)
    #   response.to_h #=>
    #   {
    #     function_summary: {
    #       name: "my-function-name",
    #       status: "UNPUBLISHED",
    #       function_config: {
    #         comment: "my-changed-comment",
    #         runtime: cloudfront-js-2.0,
    #         key_value_store_associations: {
    #           quantity: 1,
    #           items: [
    #             {
    #               key_value_store_arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889"
    #             }
    #           ]
    #         }
    #       },
    #       function_metadata: {
    #         function_arn: "arn:aws:cloudfront::123456789012:function/my-function-name",
    #         stage: DEVELOPMENT,
    #         created_time: Time.parse("2023-11-07T19:53:50.334Z"),
    #         last_modified_time: Time.parse("2023-11-07T20:01:37.174Z")
    #       }
    #     },
    #     e_tag: "E3UN6WX5RRO2AG"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FunctionName", # required
    #     if_match: "string", # required
    #     function_config: { # required
    #       comment: "string", # required
    #       runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #       key_value_store_associations: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             key_value_store_arn: "KeyValueStoreARN", # required
    #           }
    #         ]
    #       }
    #     },
    #     function_code: "data", # required
    #   }
    #   options = {}
    #   response = client.update_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_summary: {
    #       name: "FunctionName", # required
    #       status: "string",
    #       function_config: { # required
    #         comment: "string", # required
    #         runtime: "cloudfront-js-1.0" # One of: ["cloudfront-js-1.0", "cloudfront-js-2.0"], # required
    #         key_value_store_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               key_value_store_arn: "KeyValueStoreARN", # required
    #             }
    #           ]
    #         }
    #       },
    #       function_metadata: { # required
    #         function_arn: "string", # required
    #         stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #         created_time: Time.now,
    #         last_modified_time: Time.now, # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateFunctionResult]
    def update_function(params = {}, options = {})
      request = build_request(:update_function, params)
      request.send_request(options)
    end

    # <p>Updates a key group.</p> <p>When you update a key group, all the fields are updated with the values provided in the request. You cannot update some fields independent of others. To update a key group:</p> <ol> <li> <p>Get the current key group with <code>GetKeyGroup</code> or <code>GetKeyGroupConfig</code>.</p> </li> <li> <p>Locally modify the fields in the key group that you want to update. For example, add or remove public key IDs.</p> </li> <li> <p>Call <code>UpdateKeyGroup</code> with the entire key group object, including the fields that you modified and those that you didn't.</p> </li> </ol>
    # @param [Hash, Types::UpdateKeyGroupRequest] params
    # @option params [Types::KeyGroupConfig] :key_group_config
    #   <p>The key group configuration.</p>
    # @option params [String] :id
    #   <p>The identifier of the key group that you are updating.</p>
    # @option params [String] :if_match
    #   <p>The version of the key group that you are updating. The version is the key group's <code>ETag</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_group_config: { # required
    #       name: "string", # required
    #       items: ["string"], # required
    #       comment: "string"
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_key_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_group: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       key_group_config: { # required
    #         name: "string", # required
    #         items: ["string"], # required
    #         comment: "string"
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateKeyGroupResult]
    def update_key_group(params = {}, options = {})
      request = build_request(:update_key_group, params)
      request.send_request(options)
    end

    # <p>Specifies the key value store to update.</p>
    # @param [Hash, Types::UpdateKeyValueStoreRequest] params
    # @option params [String] :name
    #   <p>The name of the key value store to update.</p>
    # @option params [String] :comment
    #   <p>The comment of the key value store to update.</p>
    # @option params [String] :if_match
    #   <p>The key value store to update, if a match occurs.</p>
    # @example To update a KeyValueStore
    #   # Use the following command to update a KeyValueStore.
    #   params = {
    #     name: "my-keyvaluestore-name",
    #     comment: "my-changed-comment",
    #     if_match: "ETVPDKIKX0DER"
    #   }
    #   options = {}
    #   response = client.update_key_value_store(params, options)
    #   response.to_h #=>
    #   {
    #     key_value_store: {
    #       name: "my-keyvaluestore-name",
    #       id: "54947df8-0e9e-4471-a2f9-9af509fb5889",
    #       comment: "my-changed-comment",
    #       arn: "arn:aws:cloudfront::123456789012:key-value-store/54947df8-0e9e-4471-a2f9-9af509fb5889",
    #       status: "READY",
    #       last_modified_time: Time.parse("2023-11-07T18:45:21.069Z")
    #     },
    #     e_tag: "E3UN6WX5RRO2AG"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "KeyValueStoreName", # required
    #     comment: "KeyValueStoreComment", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.update_key_value_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_value_store: {
    #       name: "string", # required
    #       id: "string", # required
    #       comment: "string", # required
    #       arn: "string", # required
    #       status: "string",
    #       last_modified_time: Time.now, # required
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateKeyValueStoreResult]
    def update_key_value_store(params = {}, options = {})
      request = build_request(:update_key_value_store, params)
      request.send_request(options)
    end

    # <p>Updates a CloudFront origin access control.</p>
    # @param [Hash, Types::UpdateOriginAccessControlRequest] params
    # @option params [Types::OriginAccessControlConfig] :origin_access_control_config
    #   <p>An origin access control.</p>
    # @option params [String] :id
    #   <p>The unique identifier of the origin access control that you are updating.</p>
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the origin access control that you are updating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origin_access_control_config: { # required
    #       name: "string", # required
    #       description: "string",
    #       signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #       signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #       origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_origin_access_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_access_control: {
    #       id: "string", # required
    #       origin_access_control_config: {
    #         name: "string", # required
    #         description: "string",
    #         signing_protocol: "sigv4" # One of: ["sigv4"], # required
    #         signing_behavior: "never" # One of: ["never", "always", "no-override"], # required
    #         origin_access_control_origin_type: "s3" # One of: ["s3", "mediastore", "mediapackagev2", "lambda"], # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateOriginAccessControlResult]
    def update_origin_access_control(params = {}, options = {})
      request = build_request(:update_origin_access_control, params)
      request.send_request(options)
    end

    # <p>Updates an origin request policy configuration.</p> <p>When you update an origin request policy configuration, all the fields are updated with the values provided in the request. You cannot update some fields independent of others. To update an origin request policy configuration:</p> <ol> <li> <p>Use <code>GetOriginRequestPolicyConfig</code> to get the current configuration.</p> </li> <li> <p>Locally modify the fields in the origin request policy configuration that you want to update.</p> </li> <li> <p>Call <code>UpdateOriginRequestPolicy</code> by providing the entire origin request policy configuration, including the fields that you modified and those that you didn't.</p> </li> </ol>
    # @param [Hash, Types::UpdateOriginRequestPolicyRequest] params
    # @option params [Types::OriginRequestPolicyConfig] :origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy that you are updating. The identifier is returned in a cache behavior's <code>OriginRequestPolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>
    # @option params [String] :if_match
    #   <p>The version of the origin request policy that you are updating. The version is returned in the origin request policy's <code>ETag</code> field in the response to <code>GetOriginRequestPolicyConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origin_request_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       headers_config: { # required
    #         header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #         headers: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       cookies_config: { # required
    #         cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #         cookies: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       },
    #       query_strings_config: { # required
    #         query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #         query_strings: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         }
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_origin_request_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_request_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       origin_request_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         headers_config: { # required
    #           header_behavior: "none" # One of: ["none", "whitelist", "allViewer", "allViewerAndWhitelistCloudFront", "allExcept"], # required
    #           headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         cookies_config: { # required
    #           cookie_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #           cookies: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         },
    #         query_strings_config: { # required
    #           query_string_behavior: "none" # One of: ["none", "whitelist", "all", "allExcept"], # required
    #           query_strings: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           }
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateOriginRequestPolicyResult]
    def update_origin_request_policy(params = {}, options = {})
      request = build_request(:update_origin_request_policy, params)
      request.send_request(options)
    end

    # <p>Update public key information. Note that the only value you can change is the comment.</p>
    # @param [Hash, Types::UpdatePublicKeyRequest] params
    # @option params [Types::PublicKeyConfig] :public_key_config
    #   <p>A public key configuration.</p>
    # @option params [String] :id
    #   <p>The identifier of the public key that you are updating.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     public_key_config: { # required
    #       caller_reference: "string", # required
    #       name: "string", # required
    #       encoded_key: "string", # required
    #       comment: "string"
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key: {
    #       id: "string", # required
    #       created_time: Time.now, # required
    #       public_key_config: { # required
    #         caller_reference: "string", # required
    #         name: "string", # required
    #         encoded_key: "string", # required
    #         comment: "string"
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdatePublicKeyResult]
    def update_public_key(params = {}, options = {})
      request = build_request(:update_public_key, params)
      request.send_request(options)
    end

    # <p>Updates a real-time log configuration.</p> <p>When you update a real-time log configuration, all the parameters are updated with the values provided in the request. You cannot update some parameters independent of others. To update a real-time log configuration:</p> <ol> <li> <p>Call <code>GetRealtimeLogConfig</code> to get the current real-time log configuration.</p> </li> <li> <p>Locally modify the parameters in the real-time log configuration that you want to update.</p> </li> <li> <p>Call this API (<code>UpdateRealtimeLogConfig</code>) by providing the entire real-time log configuration, including the parameters that you modified and those that you didn't.</p> </li> </ol> <p>You cannot update a real-time log configuration's <code>Name</code> or <code>ARN</code>.</p>
    # @param [Hash, Types::UpdateRealtimeLogConfigRequest] params
    # @option params [Array<Types::EndPoint>] :end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>
    # @option params [Array<String>] :fields
    #   <p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @option params [String] :name
    #   <p>The name for this real-time log configuration.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>
    # @option params [Integer] :sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. You must provide an integer between 1 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     end_points: [
    #       {
    #         stream_type: "string", # required
    #         kinesis_stream_config: {
    #           role_arn: "string", # required
    #           stream_arn: "string", # required
    #         }
    #       }
    #     ],
    #     fields: ["string"],
    #     name: "string",
    #     arn: "string",
    #     sampling_rate: 1
    #   }
    #   options = {}
    #   response = client.update_realtime_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     realtime_log_config: {
    #       arn: "string", # required
    #       name: "string", # required
    #       sampling_rate: 1, # required
    #       end_points: [ # required
    #         {
    #           stream_type: "string", # required
    #           kinesis_stream_config: {
    #             role_arn: "string", # required
    #             stream_arn: "string", # required
    #           }
    #         }
    #       ],
    #       fields: ["string"], # required
    #     }
    #   }
    # @return [Types::UpdateRealtimeLogConfigResult]
    def update_realtime_log_config(params = {}, options = {})
      request = build_request(:update_realtime_log_config, params)
      request.send_request(options)
    end

    # <p>Updates a response headers policy.</p> <p>When you update a response headers policy, the entire policy is replaced. You cannot update some policy fields independent of others. To update a response headers policy configuration:</p> <ol> <li> <p>Use <code>GetResponseHeadersPolicyConfig</code> to get the current policy's configuration.</p> </li> <li> <p>Modify the fields in the response headers policy configuration that you want to update.</p> </li> <li> <p>Call <code>UpdateResponseHeadersPolicy</code>, providing the entire response headers policy configuration, including the fields that you modified and those that you didn't.</p> </li> </ol>
    # @param [Hash, Types::UpdateResponseHeadersPolicyRequest] params
    # @option params [Types::ResponseHeadersPolicyConfig] :response_headers_policy_config
    #   <p>A response headers policy configuration.</p>
    # @option params [String] :id
    #   <p>The identifier for the response headers policy that you are updating.</p>
    # @option params [String] :if_match
    #   <p>The version of the response headers policy that you are updating.</p> <p>The version is returned in the cache policy's <code>ETag</code> field in the response to <code>GetResponseHeadersPolicyConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     response_headers_policy_config: { # required
    #       comment: "string",
    #       name: "string", # required
    #       cors_config: {
    #         access_control_allow_origins: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_headers: { # required
    #           quantity: 1, # required
    #           items: ["string"], # required
    #         },
    #         access_control_allow_methods: { # required
    #           quantity: 1, # required
    #           items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #         },
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false, # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: "string"
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: "string", # required
    #         },
    #         content_type_options: {
    #           override: false, # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1, # required
    #         }
    #       },
    #       server_timing_headers_config: {
    #         enabled: false, # required
    #         sampling_rate: 1.0
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #             value: "string", # required
    #             override: false, # required
    #           }
    #         ]
    #       },
    #       remove_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: "string", # required
    #           }
    #         ]
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_response_headers_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_headers_policy: {
    #       id: "string", # required
    #       last_modified_time: Time.now, # required
    #       response_headers_policy_config: { # required
    #         comment: "string",
    #         name: "string", # required
    #         cors_config: {
    #           access_control_allow_origins: { # required
    #             quantity: 1, # required
    #             items: ["string"], # required
    #           },
    #           access_control_allow_headers: { # required
    #             quantity: 1, # required
    #             items: ["string"], # required
    #           },
    #           access_control_allow_methods: { # required
    #             quantity: 1, # required
    #             items: ["GET" # One of: ["GET", "POST", "OPTIONS", "PUT", "DELETE", "PATCH", "HEAD", "ALL"]], # required
    #           },
    #           access_control_allow_credentials: false, # required
    #           access_control_expose_headers: {
    #             quantity: 1, # required
    #             items: ["string"]
    #           },
    #           access_control_max_age_sec: 1,
    #           origin_override: false, # required
    #         },
    #         security_headers_config: {
    #           xss_protection: {
    #             override: false, # required
    #             protection: false, # required
    #             mode_block: false,
    #             report_uri: "string"
    #           },
    #           frame_options: {
    #             override: false, # required
    #             frame_option: "DENY" # One of: ["DENY", "SAMEORIGIN"], # required
    #           },
    #           referrer_policy: {
    #             override: false, # required
    #             referrer_policy: "no-referrer" # One of: ["no-referrer", "no-referrer-when-downgrade", "origin", "origin-when-cross-origin", "same-origin", "strict-origin", "strict-origin-when-cross-origin", "unsafe-url"], # required
    #           },
    #           content_security_policy: {
    #             override: false, # required
    #             content_security_policy: "string", # required
    #           },
    #           content_type_options: {
    #             override: false, # required
    #           },
    #           strict_transport_security: {
    #             override: false, # required
    #             include_subdomains: false,
    #             preload: false,
    #             access_control_max_age_sec: 1, # required
    #           }
    #         },
    #         server_timing_headers_config: {
    #           enabled: false, # required
    #           sampling_rate: 1.0
    #         },
    #         custom_headers_config: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               header: "string", # required
    #               value: "string", # required
    #               override: false, # required
    #             }
    #           ]
    #         },
    #         remove_headers_config: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               header: "string", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateResponseHeadersPolicyResult]
    def update_response_headers_policy(params = {}, options = {})
      request = build_request(:update_response_headers_policy, params)
      request.send_request(options)
    end

    # <p>Update a streaming distribution.</p>
    # @param [Hash, Types::UpdateStreamingDistributionRequest] params
    # @option params [Types::StreamingDistributionConfig] :streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    # @option params [String] :id
    #   <p>The streaming distribution's id.</p>
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     streaming_distribution_config: { # required
    #       caller_reference: "string", # required
    #       s3_origin: { # required
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       },
    #       aliases: {
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       comment: "string", # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       },
    #       trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"]
    #       },
    #       price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #       enabled: false, # required
    #     },
    #     id: "string", # required
    #     if_match: "string"
    #   }
    #   options = {}
    #   response = client.update_streaming_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_distribution: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       last_modified_time: Time.now,
    #       domain_name: "string", # required
    #       active_trusted_signers: { # required
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           {
    #             aws_account_number: "string",
    #             key_pair_ids: {
    #               quantity: 1, # required
    #               items: ["string"]
    #             }
    #           }
    #         ]
    #       },
    #       streaming_distribution_config: { # required
    #         caller_reference: "string", # required
    #         s3_origin: { # required
    #           domain_name: "string", # required
    #           origin_access_identity: "string", # required
    #         },
    #         aliases: {
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         comment: "string", # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: "string", # required
    #           prefix: "string", # required
    #         },
    #         trusted_signers: { # required
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: ["string"]
    #         },
    #         price_class: "PriceClass_100" # One of: ["PriceClass_100", "PriceClass_200", "PriceClass_All", "None"],
    #         enabled: false, # required
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateStreamingDistributionResult]
    def update_streaming_distribution(params = {}, options = {})
      request = build_request(:update_streaming_distribution, params)
      request.send_request(options)
    end

    # <p>Update an Amazon CloudFront VPC origin in your account.</p>
    # @param [Hash, Types::UpdateVpcOriginRequest] params
    # @option params [Types::VpcOriginEndpointConfig] :vpc_origin_endpoint_config
    #   <p>The VPC origin endpoint configuration.</p>
    # @option params [String] :id
    #   <p>The VPC origin ID.</p>
    # @option params [String] :if_match
    #   <p>The VPC origin to update, if a match occurs.</p>
    # @example To update a VPC origin
    #   # The following command updates a VPC origin:
    #   params = {
    #     vpc_origin_endpoint_config: {
    #       name: "my-vpcorigin-name",
    #       arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d",
    #       http_port: 80,
    #       https_port: 443,
    #       origin_protocol_policy: match-viewer,
    #       origin_ssl_protocols: {
    #         quantity: 2,
    #         items: [
    #           TLSv1.1,
    #           TLSv1.2
    #         ]
    #       }
    #     },
    #     id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #     if_match: "ETVPDKIKX0DER"
    #   }
    #   options = {}
    #   response = client.update_vpc_origin(params, options)
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       status: "Deploying",
    #       vpc_origin_endpoint_config: {
    #         name: "my-vpcorigin-name",
    #         origin_ssl_protocols: {
    #           items: [
    #             TLSv1.1,
    #             TLSv1.2
    #           ],
    #           quantity: 2
    #         },
    #         origin_protocol_policy: match-viewer,
    #         http_port: 80,
    #         https_port: 443,
    #         arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-alb-us-west-2/e6aa5c7d26415c6d"
    #       },
    #       created_time: Time.parse("2024-10-15T17:19:42.318Z"),
    #       last_modified_time: Time.parse("2024-10-15T17:47:08.133Z"),
    #       id: "vo_BQwjxxQxjCaBcQLzJUFkDM",
    #       arn: "arn:aws:cloudfront::123456789012:vpcorigin/vo_BQwjxxQxjCaBcQLzJUFkDM"
    #     },
    #     e_tag: "E3UN6WX5RRO2AG"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_origin_endpoint_config: { # required
    #       name: "string", # required
    #       arn: "string", # required
    #       http_port: 1, # required
    #       https_port: 1, # required
    #       origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #       origin_ssl_protocols: {
    #         quantity: 1, # required
    #         items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #       }
    #     },
    #     id: "string", # required
    #     if_match: "string", # required
    #   }
    #   options = {}
    #   response = client.update_vpc_origin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_origin: {
    #       id: "string", # required
    #       arn: "string", # required
    #       status: "string", # required
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       vpc_origin_endpoint_config: { # required
    #         name: "string", # required
    #         arn: "string", # required
    #         http_port: 1, # required
    #         https_port: 1, # required
    #         origin_protocol_policy: "http-only" # One of: ["http-only", "match-viewer", "https-only"], # required
    #         origin_ssl_protocols: {
    #           quantity: 1, # required
    #           items: ["SSLv3" # One of: ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]], # required
    #         }
    #       }
    #     },
    #     e_tag: "string"
    #   }
    # @return [Types::UpdateVpcOriginResult]
    def update_vpc_origin(params = {}, options = {})
      request = build_request(:update_vpc_origin, params)
      request.send_request(options)
    end

    # <p>Verify the DNS configuration for your domain names. This API operation checks whether your domain name points to the correct routing endpoint of the connection group, such as d111111abcdef8.cloudfront.net. You can use this API operation to troubleshoot and resolve DNS configuration issues.</p>
    # @param [Hash, Types::VerifyDnsConfigurationRequest] params
    # @option params [String] :domain
    #   <p>The domain name that you're verifying.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "string",
    #     identifier: "string", # required
    #   }
    #   options = {}
    #   response = client.verify_dns_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dns_configuration_list: [
    #       {
    #         domain: "string", # required
    #         status: "valid-configuration" # One of: ["valid-configuration", "invalid-configuration", "unknown-configuration"], # required
    #         reason: "string"
    #       }
    #     ]
    #   }
    # @return [Types::VerifyDnsConfigurationResult]
    def verify_dns_configuration(params = {}, options = {})
      request = build_request(:verify_dns_configuration, params)
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
      context[:gem_name] = 'aws-sdk-cloudfront'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        distribution_deployed: Waiters::DistributionDeployed,
        invalidation_completed: Waiters::InvalidationCompleted,
        invalidation_for_distribution_tenant_completed: Waiters::InvalidationForDistributionTenantCompleted,
        streaming_distribution_deployed: Waiters::StreamingDistributionDeployed
      }
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
