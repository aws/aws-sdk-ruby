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

module Aws::AppSync
  # An API client for Aws::AppSync.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSDeepdishControlPlaneService

    add_plugin(::Aws::AppSync::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppSync::EndpointProvider)
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

    # <p>Maps an endpoint to your custom domain.</p>
    # @param [Hash, Types::AssociateApiRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :api_id
    #   <p>The API ID. Private APIs can not be associated with custom domains.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_association: {
    #       domain_name: "DomainName",
    #       api_id: "String",
    #       association_status: "PROCESSING" # One of: ["PROCESSING", "FAILED", "SUCCESS"],
    #       deployment_detail: "String"
    #     }
    #   }
    # @return [Types::AssociateApiResponse]
    def associate_api(params = {}, options = {})
      request = build_request(:associate_api, params)
      request.send_request(options)
    end

    # <p>Creates an association between a Merged API and source API using the source API's
    #          identifier.</p>
    # @param [Hash, Types::AssociateMergedGraphqlApiRequest] params
    # @option params [String] :source_api_identifier
    #   <p>The identifier of the AppSync Source API. This is generated by the AppSync service. In
    #            most cases, source APIs (especially in your account) only require the API ID value or ARN
    #            of the source API. However, source APIs from other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the source API.</p>
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @option params [String] :description
    #   <p>The description field.</p>
    # @option params [Types::SourceApiAssociationConfig] :source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_api_identifier: "String", # required
    #     merged_api_identifier: "String", # required
    #     description: "String",
    #     source_api_association_config: {
    #       merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #     }
    #   }
    #   options = {}
    #   response = client.associate_merged_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association: {
    #       association_id: "String",
    #       association_arn: "String",
    #       source_api_id: "String",
    #       source_api_arn: "String",
    #       merged_api_arn: "String",
    #       merged_api_id: "String",
    #       description: "String",
    #       source_api_association_config: {
    #         merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #       },
    #       source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"],
    #       source_api_association_status_detail: "String",
    #       last_successful_merge_date: Time.now
    #     }
    #   }
    # @return [Types::AssociateMergedGraphqlApiResponse]
    def associate_merged_graphql_api(params = {}, options = {})
      request = build_request(:associate_merged_graphql_api, params)
      request.send_request(options)
    end

    # <p>Creates an association between a Merged API and source API using the Merged API's
    #          identifier.</p>
    # @param [Hash, Types::AssociateSourceGraphqlApiRequest] params
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @option params [String] :source_api_identifier
    #   <p>The identifier of the AppSync Source API. This is generated by the AppSync service. In
    #            most cases, source APIs (especially in your account) only require the API ID value or ARN
    #            of the source API. However, source APIs from other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the source API.</p>
    # @option params [String] :description
    #   <p>The description field.</p>
    # @option params [Types::SourceApiAssociationConfig] :source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     merged_api_identifier: "String", # required
    #     source_api_identifier: "String", # required
    #     description: "String",
    #     source_api_association_config: {
    #       merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #     }
    #   }
    #   options = {}
    #   response = client.associate_source_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association: {
    #       association_id: "String",
    #       association_arn: "String",
    #       source_api_id: "String",
    #       source_api_arn: "String",
    #       merged_api_arn: "String",
    #       merged_api_id: "String",
    #       description: "String",
    #       source_api_association_config: {
    #         merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #       },
    #       source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"],
    #       source_api_association_status_detail: "String",
    #       last_successful_merge_date: Time.now
    #     }
    #   }
    # @return [Types::AssociateSourceGraphqlApiResponse]
    def associate_source_graphql_api(params = {}, options = {})
      request = build_request(:associate_source_graphql_api, params)
      request.send_request(options)
    end

    # <p>Creates an <code>Api</code> object. Use this operation to create an AppSync
    #          API with your preferred configuration, such as an Event API that provides real-time message
    #          publishing and message subscriptions over WebSockets.</p>
    # @param [Hash, Types::CreateApiRequest] params
    # @option params [String] :name
    #   <p>The name for the <code>Api</code>.</p>
    # @option params [String] :owner_contact
    #   <p>The owner contact information for the <code>Api</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    # @option params [Types::EventConfig] :event_config
    #   <p>The Event API configuration. This includes the default authorization configuration for
    #            connecting, publishing, and subscribing to an Event API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApiName", # required
    #     owner_contact: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     event_config: {
    #       auth_providers: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           cognito_config: {
    #             user_pool_id: "String", # required
    #             aws_region: "String", # required
    #             app_id_client_regex: "String"
    #           },
    #           open_id_connect_config: {
    #             issuer: "String", # required
    #             client_id: "String",
    #             iat_ttl: 1,
    #             auth_ttl: 1
    #           },
    #           lambda_authorizer_config: {
    #             authorizer_result_ttl_in_seconds: 1,
    #             authorizer_uri: "String", # required
    #             identity_validation_expression: "String"
    #           }
    #         }
    #       ],
    #       connection_auth_modes: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       default_publish_auth_modes: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       default_subscribe_auth_modes: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       log_config: {
    #         log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #         cloud_watch_logs_role_arn: "String", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api: {
    #       api_id: "String",
    #       name: "ApiName",
    #       owner_contact: "OwnerContact",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       dns: {
    #         "String" => "String"
    #       },
    #       api_arn: "String",
    #       created: Time.now,
    #       xray_enabled: false,
    #       waf_web_acl_arn: "String",
    #       event_config: {
    #         auth_providers: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #             cognito_config: {
    #               user_pool_id: "String", # required
    #               aws_region: "String", # required
    #               app_id_client_regex: "String"
    #             },
    #             open_id_connect_config: {
    #               issuer: "String", # required
    #               client_id: "String",
    #               iat_ttl: 1,
    #               auth_ttl: 1
    #             },
    #             lambda_authorizer_config: {
    #               authorizer_result_ttl_in_seconds: 1,
    #               authorizer_uri: "String", # required
    #               identity_validation_expression: "String"
    #             }
    #           }
    #         ],
    #         connection_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         default_publish_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         default_subscribe_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         log_config: {
    #           log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #           cloud_watch_logs_role_arn: "String", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateApiResponse]
    def create_api(params = {}, options = {})
      request = build_request(:create_api, params)
      request.send_request(options)
    end

    # <p>Creates a cache for the GraphQL API.</p>
    # @param [Hash, Types::CreateApiCacheRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [Integer] :ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>Transit encryption flag when connecting to cache. You cannot update this setting after
    #            creation.</p>
    # @option params [Boolean] :at_rest_encryption_enabled
    #   <p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>
    # @option params [String] :api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests from the
    #                  same user are cached. Individual resolvers are automatically cached. All API calls
    #                  will try to return responses from the cache.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>
    #               </li>
    #            </ul>
    # @option params [String] :type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    # @option params [String] :health_metrics_config
    #   <p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the
    #                  throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing
    #                  bottlenecks in a cache configuration.</p>
    #               </li>
    #               <li>
    #                  <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis
    #                  process. This is useful for diagnosing bottlenecks in a cache
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #            <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or
    #               <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     ttl: 1, # required
    #     transit_encryption_enabled: false,
    #     at_rest_encryption_enabled: false,
    #     api_caching_behavior: "FULL_REQUEST_CACHING" # One of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING", "OPERATION_LEVEL_CACHING"], # required
    #     type: "T2_SMALL" # One of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"], # required
    #     health_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.create_api_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_cache: {
    #       ttl: 1,
    #       api_caching_behavior: "FULL_REQUEST_CACHING" # One of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING", "OPERATION_LEVEL_CACHING"],
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       type: "T2_SMALL" # One of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"],
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"],
    #       health_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::CreateApiCacheResponse]
    def create_api_cache(params = {}, options = {})
      request = build_request(:create_api_cache, params)
      request.send_request(options)
    end

    # <p>Creates a unique key that you can distribute to clients who invoke your API.</p>
    # @param [Hash, Types::CreateApiKeyRequest] params
    # @option params [String] :api_id
    #   <p>The ID for your GraphQL API.</p>
    # @option params [String] :description
    #   <p>A description of the purpose of the API key.</p>
    # @option params [Integer] :expires
    #   <p>From the creation time, the time after which the API key expires. The date is
    #            represented as seconds since the epoch, rounded down to the nearest hour. The default value
    #            for this parameter is 7 days from creation time. For more information, see .</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     description: "String",
    #     expires: 1
    #   }
    #   options = {}
    #   response = client.create_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key: {
    #       id: "String",
    #       description: "String",
    #       expires: 1,
    #       deletes: 1
    #     }
    #   }
    # @return [Types::CreateApiKeyResponse]
    def create_api_key(params = {}, options = {})
      request = build_request(:create_api_key, params)
      request.send_request(options)
    end

    # <p>Creates a <code>ChannelNamespace</code> for an <code>Api</code>.</p>
    # @param [Hash, Types::CreateChannelNamespaceRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @option params [String] :name
    #   <p>The name of the <code>ChannelNamespace</code>. This name must be unique within the
    #               <code>Api</code>
    #            </p>
    # @option params [Array<Types::AuthMode>] :subscribe_auth_modes
    #   <p>The authorization mode to use for subscribing to messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    # @option params [Array<Types::AuthMode>] :publish_auth_modes
    #   <p>The authorization mode to use for publishing messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    # @option params [String] :code_handlers
    #   <p>The event handler functions that run custom business logic to process published events
    #            and subscribe requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    # @option params [Types::HandlerConfigs] :handler_configs
    #   <p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "Namespace", # required
    #     subscribe_auth_modes: [
    #       {
    #         auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #       }
    #     ],
    #     publish_auth_modes: [
    #       {
    #         auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #       }
    #     ],
    #     code_handlers: "Code",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     handler_configs: {
    #       on_publish: {
    #         behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #         integration: { # required
    #           data_source_name: "String", # required
    #           lambda_config: {
    #             invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #           }
    #         }
    #       },
    #       on_subscribe: {
    #         behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #         integration: { # required
    #           data_source_name: "String", # required
    #           lambda_config: {
    #             invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_namespace: {
    #       api_id: "String",
    #       name: "Namespace",
    #       subscribe_auth_modes: [
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       publish_auth_modes: [
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       code_handlers: "Code",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       channel_namespace_arn: "String",
    #       created: Time.now,
    #       last_modified: Time.now,
    #       handler_configs: {
    #         on_publish: {
    #           behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #           integration: { # required
    #             data_source_name: "String", # required
    #             lambda_config: {
    #               invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #             }
    #           }
    #         },
    #         on_subscribe: {
    #           behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #           integration: { # required
    #             data_source_name: "String", # required
    #             lambda_config: {
    #               invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateChannelNamespaceResponse]
    def create_channel_namespace(params = {}, options = {})
      request = build_request(:create_channel_namespace, params)
      request.send_request(options)
    end

    # <p>Creates a <code>DataSource</code> object.</p>
    # @param [Hash, Types::CreateDataSourceRequest] params
    # @option params [String] :api_id
    #   <p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>
    # @option params [String] :name
    #   <p>A user-supplied name for the <code>DataSource</code>.</p>
    # @option params [String] :description
    #   <p>A description of the <code>DataSource</code>.</p>
    # @option params [String] :type
    #   <p>The type of the <code>DataSource</code>.</p>
    # @option params [String] :service_role_arn
    #   <p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)
    #            for the data source. The system assumes this role when accessing the data source.</p>
    # @option params [Types::DynamodbDataSourceConfig] :dynamodb_config
    #   <p>Amazon DynamoDB settings.</p>
    # @option params [Types::LambdaDataSourceConfig] :lambda_config
    #   <p>Lambda settings.</p>
    # @option params [Types::ElasticsearchDataSourceConfig] :elasticsearch_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. For new data sources, use <a>CreateDataSourceRequest$openSearchServiceConfig</a> to create an OpenSearch data source.</p>
    # @option params [Types::OpenSearchServiceDataSourceConfig] :open_search_service_config
    #   <p>Amazon OpenSearch Service settings.</p>
    # @option params [Types::HttpDataSourceConfig] :http_config
    #   <p>HTTP endpoint settings.</p>
    # @option params [Types::RelationalDatabaseDataSourceConfig] :relational_database_config
    #   <p>Relational database settings.</p>
    # @option params [Types::EventBridgeDataSourceConfig] :event_bridge_config
    #   <p>Amazon EventBridge settings.</p>
    # @option params [String] :metrics_config
    #   <p>Enables or disables enhanced data source metrics for specified data sources. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>dataSourceLevelMetricsBehavior</code> value is set to
    #               <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>
    #            is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>
    #            will be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     type: "AWS_LAMBDA" # One of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE", "AMAZON_EVENTBRIDGE", "AMAZON_BEDROCK_RUNTIME"], # required
    #     service_role_arn: "String",
    #     dynamodb_config: {
    #       table_name: "String", # required
    #       aws_region: "String", # required
    #       use_caller_credentials: false,
    #       delta_sync_config: {
    #         base_table_ttl: 1,
    #         delta_sync_table_name: "String",
    #         delta_sync_table_ttl: 1
    #       },
    #       versioned: false
    #     },
    #     lambda_config: {
    #       lambda_function_arn: "String", # required
    #     },
    #     elasticsearch_config: {
    #       endpoint: "String", # required
    #       aws_region: "String", # required
    #     },
    #     open_search_service_config: {
    #       endpoint: "String", # required
    #       aws_region: "String", # required
    #     },
    #     http_config: {
    #       endpoint: "String",
    #       authorization_config: {
    #         authorization_type: "AWS_IAM" # One of: ["AWS_IAM"], # required
    #         aws_iam_config: {
    #           signing_region: "String",
    #           signing_service_name: "String"
    #         }
    #       }
    #     },
    #     relational_database_config: {
    #       relational_database_source_type: "RDS_HTTP_ENDPOINT" # One of: ["RDS_HTTP_ENDPOINT"],
    #       rds_http_endpoint_config: {
    #         aws_region: "String",
    #         db_cluster_identifier: "String",
    #         database_name: "String",
    #         schema: "String",
    #         aws_secret_store_arn: "String"
    #       }
    #     },
    #     event_bridge_config: {
    #       event_bus_arn: "String", # required
    #     },
    #     metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.create_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source: {
    #       data_source_arn: "String",
    #       name: "ResourceName",
    #       description: "String",
    #       type: "AWS_LAMBDA" # One of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE", "AMAZON_EVENTBRIDGE", "AMAZON_BEDROCK_RUNTIME"],
    #       service_role_arn: "String",
    #       dynamodb_config: {
    #         table_name: "String", # required
    #         aws_region: "String", # required
    #         use_caller_credentials: false,
    #         delta_sync_config: {
    #           base_table_ttl: 1,
    #           delta_sync_table_name: "String",
    #           delta_sync_table_ttl: 1
    #         },
    #         versioned: false
    #       },
    #       lambda_config: {
    #         lambda_function_arn: "String", # required
    #       },
    #       elasticsearch_config: {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       },
    #       open_search_service_config: {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       },
    #       http_config: {
    #         endpoint: "String",
    #         authorization_config: {
    #           authorization_type: "AWS_IAM" # One of: ["AWS_IAM"], # required
    #           aws_iam_config: {
    #             signing_region: "String",
    #             signing_service_name: "String"
    #           }
    #         }
    #       },
    #       relational_database_config: {
    #         relational_database_source_type: "RDS_HTTP_ENDPOINT" # One of: ["RDS_HTTP_ENDPOINT"],
    #         rds_http_endpoint_config: {
    #           aws_region: "String",
    #           db_cluster_identifier: "String",
    #           database_name: "String",
    #           schema: "String",
    #           aws_secret_store_arn: "String"
    #         }
    #       },
    #       event_bridge_config: {
    #         event_bus_arn: "String", # required
    #       },
    #       metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::CreateDataSourceResponse]
    def create_data_source(params = {}, options = {})
      request = build_request(:create_data_source, params)
      request.send_request(options)
    end

    # <p>Creates a custom <code>DomainName</code> object.</p>
    # @param [Hash, Types::CreateDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager
    #               (ACM) certificate or an Identity and Access Management (IAM)
    #            server certificate.</p>
    # @option params [String] :description
    #   <p>A description of the <code>DomainName</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     certificate_arn: "CertificateArn", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name_config: {
    #       domain_name: "DomainName",
    #       description: "Description",
    #       certificate_arn: "CertificateArn",
    #       appsync_domain_name: "String",
    #       hosted_zone_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       domain_name_arn: "String"
    #     }
    #   }
    # @return [Types::CreateDomainNameResponse]
    def create_domain_name(params = {}, options = {})
      request = build_request(:create_domain_name, params)
      request.send_request(options)
    end

    # <p>Creates a <code>Function</code> object.</p>
    #          <p>A function is a reusable entity. You can use multiple functions to compose the resolver
    #          logic.</p>
    # @param [Hash, Types::CreateFunctionRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [String] :name
    #   <p>The <code>Function</code> name. The function name does not have to be unique.</p>
    # @option params [String] :description
    #   <p>The <code>Function</code> description.</p>
    # @option params [String] :data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    # @option params [String] :request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    # @option params [String] :response_mapping_template
    #   <p>The <code>Function</code> response mapping template.</p>
    # @option params [String] :function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29. Note that when using VTL and mapping templates, the
    #               <code>functionVersion</code> is required.</p>
    # @option params [Types::SyncConfig] :sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    # @option params [Types::AppSyncRuntime] :runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    # @option params [String] :code
    #   <p>The <code>function</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     data_source_name: "ResourceName", # required
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     function_version: "String",
    #     sync_config: {
    #       conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #       conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: "String"
    #       }
    #     },
    #     max_batch_size: 1,
    #     runtime: {
    #       name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #       runtime_version: "String", # required
    #     },
    #     code: "Code"
    #   }
    #   options = {}
    #   response = client.create_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_configuration: {
    #       function_id: "String",
    #       function_arn: "String",
    #       name: "ResourceName",
    #       description: "String",
    #       data_source_name: "ResourceName",
    #       request_mapping_template: "MappingTemplate",
    #       response_mapping_template: "MappingTemplate",
    #       function_version: "String",
    #       sync_config: {
    #         conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #         conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #         lambda_conflict_handler_config: {
    #           lambda_conflict_handler_arn: "String"
    #         }
    #       },
    #       max_batch_size: 1,
    #       runtime: {
    #         name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #         runtime_version: "String", # required
    #       },
    #       code: "Code"
    #     }
    #   }
    # @return [Types::CreateFunctionResponse]
    def create_function(params = {}, options = {})
      request = build_request(:create_function, params)
      request.send_request(options)
    end

    # <p>Creates a <code>GraphqlApi</code> object.</p>
    # @param [Hash, Types::CreateGraphqlApiRequest] params
    # @option params [String] :name
    #   <p>A user-supplied name for the <code>GraphqlApi</code>.</p>
    # @option params [Types::LogConfig] :log_config
    #   <p>The Amazon CloudWatch Logs configuration.</p>
    # @option params [String] :authentication_type
    #   <p>The authentication type: API key, Identity and Access Management (IAM), OpenID
    #            Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
    # @option params [Types::UserPoolConfig] :user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    # @option params [Types::OpenIDConnectConfig] :open_id_connect_config
    #   <p>The OIDC configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A <code>TagMap</code> object.</p>
    # @option params [Array<Types::AdditionalAuthenticationProvider>] :additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    # @option params [Boolean] :xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    # @option params [Types::LambdaAuthorizerConfig] :lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    # @option params [String] :api_type
    #   <p>The value that indicates whether the GraphQL API is a standard API
    #            (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
    # @option params [String] :merged_api_execution_role_arn
    #   <p>The Identity and Access Management service role ARN for a merged API. The AppSync
    #            service assumes this role on behalf of the Merged API to validate access to source APIs at
    #            runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with
    #            the source API changes automatically.</p>
    # @option params [String] :visibility
    #   <p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private
    #               (<code>PRIVATE</code>). If no value is provided, the visibility will be set to
    #               <code>GLOBAL</code> by default. This value cannot be changed once the API has been
    #            created.</p>
    # @option params [String] :owner_contact
    #   <p>The owner contact information for an API resource.</p>
    #            <p>This field accepts any string input with a length of 0 - 256 characters.</p>
    # @option params [String] :introspection_config
    #   <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable
    #               (<code>DISABLED</code>) introspection. If no value is provided, the introspection
    #            configuration will be set to <code>ENABLED</code> by default. This field will produce an
    #            error if the operation attempts to use the introspection feature while this field is
    #            disabled.</p>
    #            <p>For more information about introspection, see <a href="https://graphql.org/learn/introspection/">GraphQL introspection</a>.</p>
    # @option params [Integer] :query_depth_limit
    #   <p>The maximum depth a query can have in a single request. Depth refers to the amount of
    #            nested levels allowed in the body of query. The default value is <code>0</code> (or
    #            unspecified), which indicates there's no depth limit. If you set a limit, it can be between
    #               <code>1</code> and <code>75</code> nested levels. This field will produce a limit error
    #            if the operation falls out of bounds.</p>
    #            <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field
    #            produces an error, the error will be thrown upwards to the first nullable field
    #            available.</p>
    # @option params [Integer] :resolver_count_limit
    #   <p>The maximum number of resolvers that can be invoked in a single request. The default
    #            value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.
    #            When specified, the limit value can be between <code>1</code> and <code>10000</code>. This
    #            field will produce a limit error if the operation falls out of bounds.</p>
    # @option params [Types::EnhancedMetricsConfig] :enhanced_metrics_config
    #   <p>The <code>enhancedMetricsConfig</code> object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     log_config: {
    #       field_log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #       cloud_watch_logs_role_arn: "String", # required
    #       exclude_verbose_content: false
    #     },
    #     authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #     user_pool_config: {
    #       user_pool_id: "String", # required
    #       aws_region: "String", # required
    #       default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #       app_id_client_regex: "String"
    #     },
    #     open_id_connect_config: {
    #       issuer: "String", # required
    #       client_id: "String",
    #       iat_ttl: 1,
    #       auth_ttl: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     additional_authentication_providers: [
    #       {
    #         authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1
    #         },
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           app_id_client_regex: "String"
    #         },
    #         lambda_authorizer_config: {
    #           authorizer_result_ttl_in_seconds: 1,
    #           authorizer_uri: "String", # required
    #           identity_validation_expression: "String"
    #         }
    #       }
    #     ],
    #     xray_enabled: false,
    #     lambda_authorizer_config: {
    #       authorizer_result_ttl_in_seconds: 1,
    #       authorizer_uri: "String", # required
    #       identity_validation_expression: "String"
    #     },
    #     api_type: "GRAPHQL" # One of: ["GRAPHQL", "MERGED"],
    #     merged_api_execution_role_arn: "String",
    #     visibility: "GLOBAL" # One of: ["GLOBAL", "PRIVATE"],
    #     owner_contact: "String",
    #     introspection_config: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     query_depth_limit: 1,
    #     resolver_count_limit: 1,
    #     enhanced_metrics_config: {
    #       resolver_level_metrics_behavior: "FULL_REQUEST_RESOLVER_METRICS" # One of: ["FULL_REQUEST_RESOLVER_METRICS", "PER_RESOLVER_METRICS"], # required
    #       data_source_level_metrics_behavior: "FULL_REQUEST_DATA_SOURCE_METRICS" # One of: ["FULL_REQUEST_DATA_SOURCE_METRICS", "PER_DATA_SOURCE_METRICS"], # required
    #       operation_level_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graphql_api: {
    #       name: "ResourceName",
    #       api_id: "String",
    #       authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #       log_config: {
    #         field_log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #         cloud_watch_logs_role_arn: "String", # required
    #         exclude_verbose_content: false
    #       },
    #       user_pool_config: {
    #         user_pool_id: "String", # required
    #         aws_region: "String", # required
    #         default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         app_id_client_regex: "String"
    #       },
    #       open_id_connect_config: {
    #         issuer: "String", # required
    #         client_id: "String",
    #         iat_ttl: 1,
    #         auth_ttl: 1
    #       },
    #       arn: "String",
    #       uris: {
    #         "String" => "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       additional_authentication_providers: [
    #         {
    #           authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #           open_id_connect_config: {
    #             issuer: "String", # required
    #             client_id: "String",
    #             iat_ttl: 1,
    #             auth_ttl: 1
    #           },
    #           user_pool_config: {
    #             user_pool_id: "String", # required
    #             aws_region: "String", # required
    #             app_id_client_regex: "String"
    #           },
    #           lambda_authorizer_config: {
    #             authorizer_result_ttl_in_seconds: 1,
    #             authorizer_uri: "String", # required
    #             identity_validation_expression: "String"
    #           }
    #         }
    #       ],
    #       xray_enabled: false,
    #       waf_web_acl_arn: "String",
    #       lambda_authorizer_config: {
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_uri: "String", # required
    #         identity_validation_expression: "String"
    #       },
    #       dns: {
    #         "String" => "String"
    #       },
    #       visibility: "GLOBAL" # One of: ["GLOBAL", "PRIVATE"],
    #       api_type: "GRAPHQL" # One of: ["GRAPHQL", "MERGED"],
    #       merged_api_execution_role_arn: "String",
    #       owner: "String",
    #       owner_contact: "String",
    #       introspection_config: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       query_depth_limit: 1,
    #       resolver_count_limit: 1,
    #       enhanced_metrics_config: {
    #         resolver_level_metrics_behavior: "FULL_REQUEST_RESOLVER_METRICS" # One of: ["FULL_REQUEST_RESOLVER_METRICS", "PER_RESOLVER_METRICS"], # required
    #         data_source_level_metrics_behavior: "FULL_REQUEST_DATA_SOURCE_METRICS" # One of: ["FULL_REQUEST_DATA_SOURCE_METRICS", "PER_DATA_SOURCE_METRICS"], # required
    #         operation_level_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    # @return [Types::CreateGraphqlApiResponse]
    def create_graphql_api(params = {}, options = {})
      request = build_request(:create_graphql_api, params)
      request.send_request(options)
    end

    # <p>Creates a <code>Resolver</code> object.</p>
    #          <p>A resolver converts incoming requests into a format that a data source can understand,
    #          and converts the data source's responses into GraphQL.</p>
    # @param [Hash, Types::CreateResolverRequest] params
    # @option params [String] :api_id
    #   <p>The ID for the GraphQL API for which the resolver is being created.</p>
    # @option params [String] :type_name
    #   <p>The name of the <code>Type</code>.</p>
    # @option params [String] :field_name
    #   <p>The name of the field to attach the resolver to.</p>
    # @option params [String] :data_source_name
    #   <p>The name of the data source for which the resolver is being created.</p>
    # @option params [String] :request_mapping_template
    #   <p>The mapping template to use for requests.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    # @option params [String] :response_mapping_template
    #   <p>The mapping template to use for responses from the data source.</p>
    # @option params [String] :kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    # @option params [Types::PipelineConfig] :pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    # @option params [Types::SyncConfig] :sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    # @option params [Types::CachingConfig] :caching_config
    #   <p>The caching configuration for the resolver.</p>
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    # @option params [Types::AppSyncRuntime] :runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    # @option params [String] :code
    #   <p>The <code>resolver</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    # @option params [String] :metrics_config
    #   <p>Enables or disables enhanced resolver metrics for specified resolvers. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>resolverLevelMetricsBehavior</code> value is set to
    #               <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is
    #            set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will
    #            be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #     data_source_name: "ResourceName",
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #     pipeline_config: {
    #       functions: ["String"]
    #     },
    #     sync_config: {
    #       conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #       conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: "String"
    #       }
    #     },
    #     caching_config: {
    #       ttl: 1, # required
    #       caching_keys: ["String"]
    #     },
    #     max_batch_size: 1,
    #     runtime: {
    #       name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #       runtime_version: "String", # required
    #     },
    #     code: "Code",
    #     metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.create_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver: {
    #       type_name: "ResourceName",
    #       field_name: "ResourceName",
    #       data_source_name: "ResourceName",
    #       resolver_arn: "String",
    #       request_mapping_template: "MappingTemplate",
    #       response_mapping_template: "MappingTemplate",
    #       kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #       pipeline_config: {
    #         functions: ["String"]
    #       },
    #       sync_config: {
    #         conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #         conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #         lambda_conflict_handler_config: {
    #           lambda_conflict_handler_arn: "String"
    #         }
    #       },
    #       caching_config: {
    #         ttl: 1, # required
    #         caching_keys: ["String"]
    #       },
    #       max_batch_size: 1,
    #       runtime: {
    #         name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #         runtime_version: "String", # required
    #       },
    #       code: "Code",
    #       metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::CreateResolverResponse]
    def create_resolver(params = {}, options = {})
      request = build_request(:create_resolver, params)
      request.send_request(options)
    end

    # <p>Creates a <code>Type</code> object.</p>
    # @param [Hash, Types::CreateTypeRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :definition
    #   <p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p>
    #            <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL
    #               documentation</a>.</p>
    # @option params [String] :format
    #   <p>The type format: SDL or JSON.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     definition: "String", # required
    #     format: "SDL" # One of: ["SDL", "JSON"], # required
    #   }
    #   options = {}
    #   response = client.create_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: {
    #       name: "ResourceName",
    #       description: "String",
    #       arn: "String",
    #       definition: "String",
    #       format: "SDL" # One of: ["SDL", "JSON"]
    #     }
    #   }
    # @return [Types::CreateTypeResponse]
    def create_type(params = {}, options = {})
      request = build_request(:create_type, params)
      request.send_request(options)
    end

    # <p>Deletes an <code>Api</code> object</p>
    # @param [Hash, Types::DeleteApiRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApiResponse]
    def delete_api(params = {}, options = {})
      request = build_request(:delete_api, params)
      request.send_request(options)
    end

    # <p>Deletes an <code>ApiCache</code> object.</p>
    # @param [Hash, Types::DeleteApiCacheRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_api_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApiCacheResponse]
    def delete_api_cache(params = {}, options = {})
      request = build_request(:delete_api_cache, params)
      request.send_request(options)
    end

    # <p>Deletes an API key.</p>
    # @param [Hash, Types::DeleteApiKeyRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :id
    #   <p>The ID for the API key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApiKeyResponse]
    def delete_api_key(params = {}, options = {})
      request = build_request(:delete_api_key, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>ChannelNamespace</code>.</p>
    # @param [Hash, Types::DeleteChannelNamespaceRequest] params
    # @option params [String] :api_id
    #   <p>The ID of the <code>Api</code> associated with the <code>ChannelNamespace</code>.</p>
    # @option params [String] :name
    #   <p>The name of the <code>ChannelNamespace</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "Namespace", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelNamespaceResponse]
    def delete_channel_namespace(params = {}, options = {})
      request = build_request(:delete_channel_namespace, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>DataSource</code> object.</p>
    # @param [Hash, Types::DeleteDataSourceRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataSourceResponse]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes a custom <code>DomainName</code> object.</p>
    # @param [Hash, Types::DeleteDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainNameResponse]
    def delete_domain_name(params = {}, options = {})
      request = build_request(:delete_domain_name, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>Function</code>.</p>
    # @param [Hash, Types::DeleteFunctionRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [String] :function_id
    #   <p>The <code>Function</code> ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     function_id: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFunctionResponse]
    def delete_function(params = {}, options = {})
      request = build_request(:delete_function, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>GraphqlApi</code> object.</p>
    # @param [Hash, Types::DeleteGraphqlApiRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGraphqlApiResponse]
    def delete_graphql_api(params = {}, options = {})
      request = build_request(:delete_graphql_api, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>Resolver</code> object.</p>
    # @param [Hash, Types::DeleteResolverRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The name of the resolver type.</p>
    # @option params [String] :field_name
    #   <p>The resolver field name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResolverResponse]
    def delete_resolver(params = {}, options = {})
      request = build_request(:delete_resolver, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>Type</code> object.</p>
    # @param [Hash, Types::DeleteTypeRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The type name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTypeResponse]
    def delete_type(params = {}, options = {})
      request = build_request(:delete_type, params)
      request.send_request(options)
    end

    # <p>Removes an <code>ApiAssociation</code> object from a custom domain.</p>
    # @param [Hash, Types::DisassociateApiRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.disassociate_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateApiResponse]
    def disassociate_api(params = {}, options = {})
      request = build_request(:disassociate_api, params)
      request.send_request(options)
    end

    # <p>Deletes an association between a Merged API and source API using the source API's
    #          identifier and the association ID.</p>
    # @param [Hash, Types::DisassociateMergedGraphqlApiRequest] params
    # @option params [String] :source_api_identifier
    #   <p>The identifier of the AppSync Source API. This is generated by the AppSync service. In
    #            most cases, source APIs (especially in your account) only require the API ID value or ARN
    #            of the source API. However, source APIs from other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the source API.</p>
    # @option params [String] :association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_api_identifier: "String", # required
    #     association_id: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_merged_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"]
    #   }
    # @return [Types::DisassociateMergedGraphqlApiResponse]
    def disassociate_merged_graphql_api(params = {}, options = {})
      request = build_request(:disassociate_merged_graphql_api, params)
      request.send_request(options)
    end

    # <p>Deletes an association between a Merged API and source API using the Merged API's
    #          identifier and the association ID.</p>
    # @param [Hash, Types::DisassociateSourceGraphqlApiRequest] params
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @option params [String] :association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     merged_api_identifier: "String", # required
    #     association_id: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_source_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"]
    #   }
    # @return [Types::DisassociateSourceGraphqlApiResponse]
    def disassociate_source_graphql_api(params = {}, options = {})
      request = build_request(:disassociate_source_graphql_api, params)
      request.send_request(options)
    end

    # <p>Evaluates the given code and returns the response. The code definition requirements
    #          depend on the specified runtime. For <code>APPSYNC_JS</code> runtimes, the code defines the
    #          request and response functions. The request function takes the incoming request after a
    #          GraphQL operation is parsed and converts it into a request configuration for the selected
    #          data source operation. The response function interprets responses from the data source and
    #          maps it to the shape of the GraphQL field output type. </p>
    # @param [Hash, Types::EvaluateCodeRequest] params
    # @option params [Types::AppSyncRuntime] :runtime
    #   <p>The runtime to be used when evaluating the code. Currently, only the
    #               <code>APPSYNC_JS</code> runtime is supported.</p>
    # @option params [String] :code
    #   <p>The code definition to be evaluated. Note that <code>code</code> and
    #               <code>runtime</code> are both required for this action. The <code>runtime</code> value
    #            must be <code>APPSYNC_JS</code>.</p>
    # @option params [String] :context
    #   <p>The map that holds all of the contextual information for your resolver invocation. A
    #               <code>context</code> is required for this action.</p>
    # @option params [String] :function
    #   <p>The function within the code to be evaluated. If provided, the valid values are
    #               <code>request</code> and <code>response</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     runtime: { # required
    #       name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #       runtime_version: "String", # required
    #     },
    #     code: "Code", # required
    #     context: "Context", # required
    #     function: "String"
    #   }
    #   options = {}
    #   response = client.evaluate_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_result: "EvaluationResult",
    #     error: {
    #       message: "ErrorMessage",
    #       code_errors: [
    #         {
    #           error_type: "String",
    #           value: "String",
    #           location: {
    #             line: 1,
    #             column: 1,
    #             span: 1
    #           }
    #         }
    #       ]
    #     },
    #     logs: ["String"],
    #     stash: "Stash",
    #     out_errors: "OutErrors"
    #   }
    # @return [Types::EvaluateCodeResponse]
    def evaluate_code(params = {}, options = {})
      request = build_request(:evaluate_code, params)
      request.send_request(options)
    end

    # <p>Evaluates a given template and returns the response. The mapping template can be a
    #          request or response template.</p>
    #          <p>Request templates take the incoming request after a GraphQL operation is parsed and
    #          convert it into a request configuration for the selected data source operation. Response
    #          templates interpret responses from the data source and map it to the shape of the GraphQL
    #          field output type.</p>
    #          <p>Mapping templates are written in the Apache Velocity Template Language (VTL).</p>
    # @param [Hash, Types::EvaluateMappingTemplateRequest] params
    # @option params [String] :template
    #   <p>The mapping template; this can be a request or response template. A
    #               <code>template</code> is required for this action.</p>
    # @option params [String] :context
    #   <p>The map that holds all of the contextual information for your resolver invocation. A
    #               <code>context</code> is required for this action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: "Template", # required
    #     context: "Context", # required
    #   }
    #   options = {}
    #   response = client.evaluate_mapping_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_result: "EvaluationResult",
    #     error: {
    #       message: "ErrorMessage"
    #     },
    #     logs: ["String"],
    #     stash: "Stash",
    #     out_errors: "OutErrors"
    #   }
    # @return [Types::EvaluateMappingTemplateResponse]
    def evaluate_mapping_template(params = {}, options = {})
      request = build_request(:evaluate_mapping_template, params)
      request.send_request(options)
    end

    # <p>Flushes an <code>ApiCache</code> object.</p>
    # @param [Hash, Types::FlushApiCacheRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.flush_api_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::FlushApiCacheResponse]
    def flush_api_cache(params = {}, options = {})
      request = build_request(:flush_api_cache, params)
      request.send_request(options)
    end

    # <p>Retrieves an <code>Api</code> object.</p>
    # @param [Hash, Types::GetApiRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api: {
    #       api_id: "String",
    #       name: "ApiName",
    #       owner_contact: "OwnerContact",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       dns: {
    #         "String" => "String"
    #       },
    #       api_arn: "String",
    #       created: Time.now,
    #       xray_enabled: false,
    #       waf_web_acl_arn: "String",
    #       event_config: {
    #         auth_providers: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #             cognito_config: {
    #               user_pool_id: "String", # required
    #               aws_region: "String", # required
    #               app_id_client_regex: "String"
    #             },
    #             open_id_connect_config: {
    #               issuer: "String", # required
    #               client_id: "String",
    #               iat_ttl: 1,
    #               auth_ttl: 1
    #             },
    #             lambda_authorizer_config: {
    #               authorizer_result_ttl_in_seconds: 1,
    #               authorizer_uri: "String", # required
    #               identity_validation_expression: "String"
    #             }
    #           }
    #         ],
    #         connection_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         default_publish_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         default_subscribe_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         log_config: {
    #           log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #           cloud_watch_logs_role_arn: "String", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetApiResponse]
    def get_api(params = {}, options = {})
      request = build_request(:get_api, params)
      request.send_request(options)
    end

    # <p>Retrieves an <code>ApiAssociation</code> object.</p>
    # @param [Hash, Types::GetApiAssociationRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.get_api_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_association: {
    #       domain_name: "DomainName",
    #       api_id: "String",
    #       association_status: "PROCESSING" # One of: ["PROCESSING", "FAILED", "SUCCESS"],
    #       deployment_detail: "String"
    #     }
    #   }
    # @return [Types::GetApiAssociationResponse]
    def get_api_association(params = {}, options = {})
      request = build_request(:get_api_association, params)
      request.send_request(options)
    end

    # <p>Retrieves an <code>ApiCache</code> object.</p>
    # @param [Hash, Types::GetApiCacheRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_api_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_cache: {
    #       ttl: 1,
    #       api_caching_behavior: "FULL_REQUEST_CACHING" # One of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING", "OPERATION_LEVEL_CACHING"],
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       type: "T2_SMALL" # One of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"],
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"],
    #       health_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetApiCacheResponse]
    def get_api_cache(params = {}, options = {})
      request = build_request(:get_api_cache, params)
      request.send_request(options)
    end

    # <p>Retrieves the channel namespace for a specified <code>Api</code>.</p>
    # @param [Hash, Types::GetChannelNamespaceRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @option params [String] :name
    #   <p>The name of the <code>ChannelNamespace</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "Namespace", # required
    #   }
    #   options = {}
    #   response = client.get_channel_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_namespace: {
    #       api_id: "String",
    #       name: "Namespace",
    #       subscribe_auth_modes: [
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       publish_auth_modes: [
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       code_handlers: "Code",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       channel_namespace_arn: "String",
    #       created: Time.now,
    #       last_modified: Time.now,
    #       handler_configs: {
    #         on_publish: {
    #           behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #           integration: { # required
    #             data_source_name: "String", # required
    #             lambda_config: {
    #               invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #             }
    #           }
    #         },
    #         on_subscribe: {
    #           behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #           integration: { # required
    #             data_source_name: "String", # required
    #             lambda_config: {
    #               invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetChannelNamespaceResponse]
    def get_channel_namespace(params = {}, options = {})
      request = build_request(:get_channel_namespace, params)
      request.send_request(options)
    end

    # <p>Retrieves a <code>DataSource</code> object.</p>
    # @param [Hash, Types::GetDataSourceRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source: {
    #       data_source_arn: "String",
    #       name: "ResourceName",
    #       description: "String",
    #       type: "AWS_LAMBDA" # One of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE", "AMAZON_EVENTBRIDGE", "AMAZON_BEDROCK_RUNTIME"],
    #       service_role_arn: "String",
    #       dynamodb_config: {
    #         table_name: "String", # required
    #         aws_region: "String", # required
    #         use_caller_credentials: false,
    #         delta_sync_config: {
    #           base_table_ttl: 1,
    #           delta_sync_table_name: "String",
    #           delta_sync_table_ttl: 1
    #         },
    #         versioned: false
    #       },
    #       lambda_config: {
    #         lambda_function_arn: "String", # required
    #       },
    #       elasticsearch_config: {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       },
    #       open_search_service_config: {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       },
    #       http_config: {
    #         endpoint: "String",
    #         authorization_config: {
    #           authorization_type: "AWS_IAM" # One of: ["AWS_IAM"], # required
    #           aws_iam_config: {
    #             signing_region: "String",
    #             signing_service_name: "String"
    #           }
    #         }
    #       },
    #       relational_database_config: {
    #         relational_database_source_type: "RDS_HTTP_ENDPOINT" # One of: ["RDS_HTTP_ENDPOINT"],
    #         rds_http_endpoint_config: {
    #           aws_region: "String",
    #           db_cluster_identifier: "String",
    #           database_name: "String",
    #           schema: "String",
    #           aws_secret_store_arn: "String"
    #         }
    #       },
    #       event_bridge_config: {
    #         event_bus_arn: "String", # required
    #       },
    #       metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetDataSourceResponse]
    def get_data_source(params = {}, options = {})
      request = build_request(:get_data_source, params)
      request.send_request(options)
    end

    # <p>Retrieves the record of an existing introspection. If the retrieval is successful, the
    #          result of the instrospection will also be returned. If the retrieval fails the operation,
    #          an error message will be returned instead.</p>
    # @param [Hash, Types::GetDataSourceIntrospectionRequest] params
    # @option params [String] :introspection_id
    #   <p>The introspection ID. Each introspection contains a unique ID that can be used to
    #            reference the instrospection record.</p>
    # @option params [Boolean] :include_models_sdl
    #   <p>A boolean flag that determines whether SDL should be generated for introspected types.
    #            If set to <code>true</code>, each model will contain an <code>sdl</code> property that
    #            contains the SDL for that type. The SDL only contains the type data and no additional
    #            metadata or directives. </p>
    # @option params [String] :next_token
    #   <p>Determines the number of types to be returned in a single response before paginating.
    #            This value is typically taken from <code>nextToken</code> value from the previous
    #            response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of introspected types that will be returned in a single
    #            response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     introspection_id: "String", # required
    #     include_models_sdl: false,
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_data_source_introspection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     introspection_id: "String",
    #     introspection_status: "PROCESSING" # One of: ["PROCESSING", "FAILED", "SUCCESS"],
    #     introspection_status_detail: "String",
    #     introspection_result: {
    #       models: [
    #         {
    #           name: "String",
    #           fields: [
    #             {
    #               name: "String",
    #               type: {
    #                 kind: "String",
    #                 name: "String",
    #                 type: {
    #                   # recursive DataSourceIntrospectionModelFieldType
    #                 },
    #                 values: ["String"]
    #               },
    #               length: 1
    #             }
    #           ],
    #           primary_key: {
    #             name: "String",
    #             fields: ["String"]
    #           },
    #           indexes: [
    #             {
    #               name: "String",
    #               fields: ["String"]
    #             }
    #           ],
    #           sdl: "String"
    #         }
    #       ],
    #       next_token: "PaginationToken"
    #     }
    #   }
    # @return [Types::GetDataSourceIntrospectionResponse]
    def get_data_source_introspection(params = {}, options = {})
      request = build_request(:get_data_source_introspection, params)
      request.send_request(options)
    end

    # <p>Retrieves a custom <code>DomainName</code> object.</p>
    # @param [Hash, Types::GetDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.get_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name_config: {
    #       domain_name: "DomainName",
    #       description: "Description",
    #       certificate_arn: "CertificateArn",
    #       appsync_domain_name: "String",
    #       hosted_zone_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       domain_name_arn: "String"
    #     }
    #   }
    # @return [Types::GetDomainNameResponse]
    def get_domain_name(params = {}, options = {})
      request = build_request(:get_domain_name, params)
      request.send_request(options)
    end

    # <p>Get a <code>Function</code>.</p>
    # @param [Hash, Types::GetFunctionRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [String] :function_id
    #   <p>The <code>Function</code> ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     function_id: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_configuration: {
    #       function_id: "String",
    #       function_arn: "String",
    #       name: "ResourceName",
    #       description: "String",
    #       data_source_name: "ResourceName",
    #       request_mapping_template: "MappingTemplate",
    #       response_mapping_template: "MappingTemplate",
    #       function_version: "String",
    #       sync_config: {
    #         conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #         conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #         lambda_conflict_handler_config: {
    #           lambda_conflict_handler_arn: "String"
    #         }
    #       },
    #       max_batch_size: 1,
    #       runtime: {
    #         name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #         runtime_version: "String", # required
    #       },
    #       code: "Code"
    #     }
    #   }
    # @return [Types::GetFunctionResponse]
    def get_function(params = {}, options = {})
      request = build_request(:get_function, params)
      request.send_request(options)
    end

    # <p>Retrieves a <code>GraphqlApi</code> object.</p>
    # @param [Hash, Types::GetGraphqlApiRequest] params
    # @option params [String] :api_id
    #   <p>The API ID for the GraphQL API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graphql_api: {
    #       name: "ResourceName",
    #       api_id: "String",
    #       authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #       log_config: {
    #         field_log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #         cloud_watch_logs_role_arn: "String", # required
    #         exclude_verbose_content: false
    #       },
    #       user_pool_config: {
    #         user_pool_id: "String", # required
    #         aws_region: "String", # required
    #         default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         app_id_client_regex: "String"
    #       },
    #       open_id_connect_config: {
    #         issuer: "String", # required
    #         client_id: "String",
    #         iat_ttl: 1,
    #         auth_ttl: 1
    #       },
    #       arn: "String",
    #       uris: {
    #         "String" => "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       additional_authentication_providers: [
    #         {
    #           authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #           open_id_connect_config: {
    #             issuer: "String", # required
    #             client_id: "String",
    #             iat_ttl: 1,
    #             auth_ttl: 1
    #           },
    #           user_pool_config: {
    #             user_pool_id: "String", # required
    #             aws_region: "String", # required
    #             app_id_client_regex: "String"
    #           },
    #           lambda_authorizer_config: {
    #             authorizer_result_ttl_in_seconds: 1,
    #             authorizer_uri: "String", # required
    #             identity_validation_expression: "String"
    #           }
    #         }
    #       ],
    #       xray_enabled: false,
    #       waf_web_acl_arn: "String",
    #       lambda_authorizer_config: {
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_uri: "String", # required
    #         identity_validation_expression: "String"
    #       },
    #       dns: {
    #         "String" => "String"
    #       },
    #       visibility: "GLOBAL" # One of: ["GLOBAL", "PRIVATE"],
    #       api_type: "GRAPHQL" # One of: ["GRAPHQL", "MERGED"],
    #       merged_api_execution_role_arn: "String",
    #       owner: "String",
    #       owner_contact: "String",
    #       introspection_config: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       query_depth_limit: 1,
    #       resolver_count_limit: 1,
    #       enhanced_metrics_config: {
    #         resolver_level_metrics_behavior: "FULL_REQUEST_RESOLVER_METRICS" # One of: ["FULL_REQUEST_RESOLVER_METRICS", "PER_RESOLVER_METRICS"], # required
    #         data_source_level_metrics_behavior: "FULL_REQUEST_DATA_SOURCE_METRICS" # One of: ["FULL_REQUEST_DATA_SOURCE_METRICS", "PER_DATA_SOURCE_METRICS"], # required
    #         operation_level_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetGraphqlApiResponse]
    def get_graphql_api(params = {}, options = {})
      request = build_request(:get_graphql_api, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of environmental variable key-value pairs associated with an API by
    #          its ID value.</p>
    # @param [Hash, Types::GetGraphqlApiEnvironmentVariablesRequest] params
    # @option params [String] :api_id
    #   <p>The ID of the API from which the environmental variable list will be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_graphql_api_environment_variables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     }
    #   }
    # @return [Types::GetGraphqlApiEnvironmentVariablesResponse]
    def get_graphql_api_environment_variables(params = {}, options = {})
      request = build_request(:get_graphql_api_environment_variables, params)
      request.send_request(options)
    end

    # <p>Retrieves the introspection schema for a GraphQL API.</p>
    # @param [Hash, Types::GetIntrospectionSchemaRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :format
    #   <p>The schema format: SDL or JSON.</p>
    # @option params [Boolean] :include_directives
    #   <p>A flag that specifies whether the schema introspection should contain directives.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     format: "SDL" # One of: ["SDL", "JSON"], # required
    #     include_directives: false
    #   }
    #   options = {}
    #   response = client.get_introspection_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema: "data"
    #   }
    # @return [Types::GetIntrospectionSchemaResponse]
    def get_introspection_schema(params = {}, options = {})
      request = build_request(:get_introspection_schema, params)
      request.send_request(options)
    end

    # <p>Retrieves a <code>Resolver</code> object.</p>
    # @param [Hash, Types::GetResolverRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The resolver type name.</p>
    # @option params [String] :field_name
    #   <p>The resolver field name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver: {
    #       type_name: "ResourceName",
    #       field_name: "ResourceName",
    #       data_source_name: "ResourceName",
    #       resolver_arn: "String",
    #       request_mapping_template: "MappingTemplate",
    #       response_mapping_template: "MappingTemplate",
    #       kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #       pipeline_config: {
    #         functions: ["String"]
    #       },
    #       sync_config: {
    #         conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #         conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #         lambda_conflict_handler_config: {
    #           lambda_conflict_handler_arn: "String"
    #         }
    #       },
    #       caching_config: {
    #         ttl: 1, # required
    #         caching_keys: ["String"]
    #       },
    #       max_batch_size: 1,
    #       runtime: {
    #         name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #         runtime_version: "String", # required
    #       },
    #       code: "Code",
    #       metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetResolverResponse]
    def get_resolver(params = {}, options = {})
      request = build_request(:get_resolver, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status of a schema creation operation.</p>
    # @param [Hash, Types::GetSchemaCreationStatusRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_schema_creation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PROCESSING" # One of: ["PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"],
    #     details: "String"
    #   }
    # @return [Types::GetSchemaCreationStatusResponse]
    def get_schema_creation_status(params = {}, options = {})
      request = build_request(:get_schema_creation_status, params)
      request.send_request(options)
    end

    # <p>Retrieves a <code>SourceApiAssociation</code> object.</p>
    # @param [Hash, Types::GetSourceApiAssociationRequest] params
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @option params [String] :association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     merged_api_identifier: "String", # required
    #     association_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_source_api_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association: {
    #       association_id: "String",
    #       association_arn: "String",
    #       source_api_id: "String",
    #       source_api_arn: "String",
    #       merged_api_arn: "String",
    #       merged_api_id: "String",
    #       description: "String",
    #       source_api_association_config: {
    #         merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #       },
    #       source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"],
    #       source_api_association_status_detail: "String",
    #       last_successful_merge_date: Time.now
    #     }
    #   }
    # @return [Types::GetSourceApiAssociationResponse]
    def get_source_api_association(params = {}, options = {})
      request = build_request(:get_source_api_association, params)
      request.send_request(options)
    end

    # <p>Retrieves a <code>Type</code> object.</p>
    # @param [Hash, Types::GetTypeRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The type name.</p>
    # @option params [String] :format
    #   <p>The type format: SDL or JSON.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     format: "SDL" # One of: ["SDL", "JSON"], # required
    #   }
    #   options = {}
    #   response = client.get_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: {
    #       name: "ResourceName",
    #       description: "String",
    #       arn: "String",
    #       definition: "String",
    #       format: "SDL" # One of: ["SDL", "JSON"]
    #     }
    #   }
    # @return [Types::GetTypeResponse]
    def get_type(params = {}, options = {})
      request = build_request(:get_type, params)
      request.send_request(options)
    end

    # <p>Lists the API keys for a given API.</p>
    #          <note>
    #             <p>API keys are deleted automatically 60 days after they expire. However, they may still
    #             be included in the response until they have actually been deleted. You can safely call
    #                <code>DeleteApiKey</code> to manually delete a key before it's automatically
    #             deleted.</p>
    #          </note>
    # @param [Hash, Types::ListApiKeysRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_api_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_keys: [
    #       {
    #         id: "String",
    #         description: "String",
    #         expires: 1,
    #         deletes: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListApiKeysResponse]
    def list_api_keys(params = {}, options = {})
      request = build_request(:list_api_keys, params)
      request.send_request(options)
    end

    # <p>Lists the APIs in your AppSync account.</p>
    #          <p>
    #             <code>ListApis</code> returns only the high level API details. For more detailed
    #          information about an API, use <code>GetApi</code>.</p>
    # @param [Hash, Types::ListApisRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_apis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apis: [
    #       {
    #         api_id: "String",
    #         name: "ApiName",
    #         owner_contact: "OwnerContact",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         dns: {
    #           "String" => "String"
    #         },
    #         api_arn: "String",
    #         created: Time.now,
    #         xray_enabled: false,
    #         waf_web_acl_arn: "String",
    #         event_config: {
    #           auth_providers: [ # required
    #             {
    #               auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #               cognito_config: {
    #                 user_pool_id: "String", # required
    #                 aws_region: "String", # required
    #                 app_id_client_regex: "String"
    #               },
    #               open_id_connect_config: {
    #                 issuer: "String", # required
    #                 client_id: "String",
    #                 iat_ttl: 1,
    #                 auth_ttl: 1
    #               },
    #               lambda_authorizer_config: {
    #                 authorizer_result_ttl_in_seconds: 1,
    #                 authorizer_uri: "String", # required
    #                 identity_validation_expression: "String"
    #               }
    #             }
    #           ],
    #           connection_auth_modes: [ # required
    #             {
    #               auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #             }
    #           ],
    #           default_publish_auth_modes: [ # required
    #             {
    #               auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #             }
    #           ],
    #           default_subscribe_auth_modes: [ # required
    #             {
    #               auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #             }
    #           ],
    #           log_config: {
    #             log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #             cloud_watch_logs_role_arn: "String", # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListApisResponse]
    def list_apis(params = {}, options = {})
      request = build_request(:list_apis, params)
      request.send_request(options)
    end

    # <p>Lists the channel namespaces for a specified <code>Api</code>.</p>
    #          <p>
    #             <code>ListChannelNamespaces</code> returns only high level details for the channel
    #          namespace. To retrieve code handlers, use <code>GetChannelNamespace</code>.</p>
    # @param [Hash, Types::ListChannelNamespacesRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_channel_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_namespaces: [
    #       {
    #         api_id: "String",
    #         name: "Namespace",
    #         subscribe_auth_modes: [
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         publish_auth_modes: [
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         code_handlers: "Code",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         channel_namespace_arn: "String",
    #         created: Time.now,
    #         last_modified: Time.now,
    #         handler_configs: {
    #           on_publish: {
    #             behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #             integration: { # required
    #               data_source_name: "String", # required
    #               lambda_config: {
    #                 invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #               }
    #             }
    #           },
    #           on_subscribe: {
    #             behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #             integration: { # required
    #               data_source_name: "String", # required
    #               lambda_config: {
    #                 invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListChannelNamespacesResponse]
    def list_channel_namespaces(params = {}, options = {})
      request = build_request(:list_channel_namespaces, params)
      request.send_request(options)
    end

    # <p>Lists the data sources for a given API.</p>
    # @param [Hash, Types::ListDataSourcesRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_sources: [
    #       {
    #         data_source_arn: "String",
    #         name: "ResourceName",
    #         description: "String",
    #         type: "AWS_LAMBDA" # One of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE", "AMAZON_EVENTBRIDGE", "AMAZON_BEDROCK_RUNTIME"],
    #         service_role_arn: "String",
    #         dynamodb_config: {
    #           table_name: "String", # required
    #           aws_region: "String", # required
    #           use_caller_credentials: false,
    #           delta_sync_config: {
    #             base_table_ttl: 1,
    #             delta_sync_table_name: "String",
    #             delta_sync_table_ttl: 1
    #           },
    #           versioned: false
    #         },
    #         lambda_config: {
    #           lambda_function_arn: "String", # required
    #         },
    #         elasticsearch_config: {
    #           endpoint: "String", # required
    #           aws_region: "String", # required
    #         },
    #         open_search_service_config: {
    #           endpoint: "String", # required
    #           aws_region: "String", # required
    #         },
    #         http_config: {
    #           endpoint: "String",
    #           authorization_config: {
    #             authorization_type: "AWS_IAM" # One of: ["AWS_IAM"], # required
    #             aws_iam_config: {
    #               signing_region: "String",
    #               signing_service_name: "String"
    #             }
    #           }
    #         },
    #         relational_database_config: {
    #           relational_database_source_type: "RDS_HTTP_ENDPOINT" # One of: ["RDS_HTTP_ENDPOINT"],
    #           rds_http_endpoint_config: {
    #             aws_region: "String",
    #             db_cluster_identifier: "String",
    #             database_name: "String",
    #             schema: "String",
    #             aws_secret_store_arn: "String"
    #           }
    #         },
    #         event_bridge_config: {
    #           event_bus_arn: "String", # required
    #         },
    #         metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDataSourcesResponse]
    def list_data_sources(params = {}, options = {})
      request = build_request(:list_data_sources, params)
      request.send_request(options)
    end

    # <p>Lists multiple custom domain names.</p>
    # @param [Hash, Types::ListDomainNamesRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_domain_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name_configs: [
    #       {
    #         domain_name: "DomainName",
    #         description: "Description",
    #         certificate_arn: "CertificateArn",
    #         appsync_domain_name: "String",
    #         hosted_zone_id: "String",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         domain_name_arn: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDomainNamesResponse]
    def list_domain_names(params = {}, options = {})
      request = build_request(:list_domain_names, params)
      request.send_request(options)
    end

    # <p>List multiple functions.</p>
    # @param [Hash, Types::ListFunctionsRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_functions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     functions: [
    #       {
    #         function_id: "String",
    #         function_arn: "String",
    #         name: "ResourceName",
    #         description: "String",
    #         data_source_name: "ResourceName",
    #         request_mapping_template: "MappingTemplate",
    #         response_mapping_template: "MappingTemplate",
    #         function_version: "String",
    #         sync_config: {
    #           conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #           conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #           lambda_conflict_handler_config: {
    #             lambda_conflict_handler_arn: "String"
    #           }
    #         },
    #         max_batch_size: 1,
    #         runtime: {
    #           name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #           runtime_version: "String", # required
    #         },
    #         code: "Code"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListFunctionsResponse]
    def list_functions(params = {}, options = {})
      request = build_request(:list_functions, params)
      request.send_request(options)
    end

    # <p>Lists your GraphQL APIs.</p>
    # @param [Hash, Types::ListGraphqlApisRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @option params [String] :api_type
    #   <p>The value that indicates whether the GraphQL API is a standard API
    #            (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
    # @option params [String] :owner
    #   <p>The account owner of the GraphQL API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     api_type: "GRAPHQL" # One of: ["GRAPHQL", "MERGED"],
    #     owner: "CURRENT_ACCOUNT" # One of: ["CURRENT_ACCOUNT", "OTHER_ACCOUNTS"]
    #   }
    #   options = {}
    #   response = client.list_graphql_apis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graphql_apis: [
    #       {
    #         name: "ResourceName",
    #         api_id: "String",
    #         authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #         log_config: {
    #           field_log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #           cloud_watch_logs_role_arn: "String", # required
    #           exclude_verbose_content: false
    #         },
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #           app_id_client_regex: "String"
    #         },
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1
    #         },
    #         arn: "String",
    #         uris: {
    #           "String" => "String"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         additional_authentication_providers: [
    #           {
    #             authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #             open_id_connect_config: {
    #               issuer: "String", # required
    #               client_id: "String",
    #               iat_ttl: 1,
    #               auth_ttl: 1
    #             },
    #             user_pool_config: {
    #               user_pool_id: "String", # required
    #               aws_region: "String", # required
    #               app_id_client_regex: "String"
    #             },
    #             lambda_authorizer_config: {
    #               authorizer_result_ttl_in_seconds: 1,
    #               authorizer_uri: "String", # required
    #               identity_validation_expression: "String"
    #             }
    #           }
    #         ],
    #         xray_enabled: false,
    #         waf_web_acl_arn: "String",
    #         lambda_authorizer_config: {
    #           authorizer_result_ttl_in_seconds: 1,
    #           authorizer_uri: "String", # required
    #           identity_validation_expression: "String"
    #         },
    #         dns: {
    #           "String" => "String"
    #         },
    #         visibility: "GLOBAL" # One of: ["GLOBAL", "PRIVATE"],
    #         api_type: "GRAPHQL" # One of: ["GRAPHQL", "MERGED"],
    #         merged_api_execution_role_arn: "String",
    #         owner: "String",
    #         owner_contact: "String",
    #         introspection_config: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         query_depth_limit: 1,
    #         resolver_count_limit: 1,
    #         enhanced_metrics_config: {
    #           resolver_level_metrics_behavior: "FULL_REQUEST_RESOLVER_METRICS" # One of: ["FULL_REQUEST_RESOLVER_METRICS", "PER_RESOLVER_METRICS"], # required
    #           data_source_level_metrics_behavior: "FULL_REQUEST_DATA_SOURCE_METRICS" # One of: ["FULL_REQUEST_DATA_SOURCE_METRICS", "PER_DATA_SOURCE_METRICS"], # required
    #           operation_level_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGraphqlApisResponse]
    def list_graphql_apis(params = {}, options = {})
      request = build_request(:list_graphql_apis, params)
      request.send_request(options)
    end

    # <p>Lists the resolvers for a given API and type.</p>
    # @param [Hash, Types::ListResolversRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The type name.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resolvers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolvers: [
    #       {
    #         type_name: "ResourceName",
    #         field_name: "ResourceName",
    #         data_source_name: "ResourceName",
    #         resolver_arn: "String",
    #         request_mapping_template: "MappingTemplate",
    #         response_mapping_template: "MappingTemplate",
    #         kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #         pipeline_config: {
    #           functions: ["String"]
    #         },
    #         sync_config: {
    #           conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #           conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #           lambda_conflict_handler_config: {
    #             lambda_conflict_handler_arn: "String"
    #           }
    #         },
    #         caching_config: {
    #           ttl: 1, # required
    #           caching_keys: ["String"]
    #         },
    #         max_batch_size: 1,
    #         runtime: {
    #           name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #           runtime_version: "String", # required
    #         },
    #         code: "Code",
    #         metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListResolversResponse]
    def list_resolvers(params = {}, options = {})
      request = build_request(:list_resolvers, params)
      request.send_request(options)
    end

    # <p>List the resolvers that are associated with a specific function.</p>
    # @param [Hash, Types::ListResolversByFunctionRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :function_id
    #   <p>The function ID.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     function_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resolvers_by_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolvers: [
    #       {
    #         type_name: "ResourceName",
    #         field_name: "ResourceName",
    #         data_source_name: "ResourceName",
    #         resolver_arn: "String",
    #         request_mapping_template: "MappingTemplate",
    #         response_mapping_template: "MappingTemplate",
    #         kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #         pipeline_config: {
    #           functions: ["String"]
    #         },
    #         sync_config: {
    #           conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #           conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #           lambda_conflict_handler_config: {
    #             lambda_conflict_handler_arn: "String"
    #           }
    #         },
    #         caching_config: {
    #           ttl: 1, # required
    #           caching_keys: ["String"]
    #         },
    #         max_batch_size: 1,
    #         runtime: {
    #           name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #           runtime_version: "String", # required
    #         },
    #         code: "Code",
    #         metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListResolversByFunctionResponse]
    def list_resolvers_by_function(params = {}, options = {})
      request = build_request(:list_resolvers_by_function, params)
      request.send_request(options)
    end

    # <p>Lists the <code>SourceApiAssociationSummary</code> data.</p>
    # @param [Hash, Types::ListSourceApiAssociationsRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_source_api_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association_summaries: [
    #       {
    #         association_id: "String",
    #         association_arn: "String",
    #         source_api_id: "String",
    #         source_api_arn: "String",
    #         merged_api_id: "String",
    #         merged_api_arn: "String",
    #         description: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSourceApiAssociationsResponse]
    def list_source_api_associations(params = {}, options = {})
      request = build_request(:list_source_api_associations, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the types for a given API.</p>
    # @param [Hash, Types::ListTypesRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :format
    #   <p>The type format: SDL or JSON.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     format: "SDL" # One of: ["SDL", "JSON"], # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     types: [
    #       {
    #         name: "ResourceName",
    #         description: "String",
    #         arn: "String",
    #         definition: "String",
    #         format: "SDL" # One of: ["SDL", "JSON"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTypesResponse]
    def list_types(params = {}, options = {})
      request = build_request(:list_types, params)
      request.send_request(options)
    end

    # <p>Lists <code>Type</code> objects by the source API association ID.</p>
    # @param [Hash, Types::ListTypesByAssociationRequest] params
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @option params [String] :association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    # @option params [String] :format
    #   <p>The format type.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     merged_api_identifier: "String", # required
    #     association_id: "String", # required
    #     format: "SDL" # One of: ["SDL", "JSON"], # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_types_by_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     types: [
    #       {
    #         name: "ResourceName",
    #         description: "String",
    #         arn: "String",
    #         definition: "String",
    #         format: "SDL" # One of: ["SDL", "JSON"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTypesByAssociationResponse]
    def list_types_by_association(params = {}, options = {})
      request = build_request(:list_types_by_association, params)
      request.send_request(options)
    end

    # <p>Creates a list of environmental variables in an API by its ID value. </p>
    #          <p>When creating an environmental variable, it must follow the constraints below:</p>
    #          <ul>
    #             <li>
    #                <p>Both JavaScript and VTL templates support environmental variables.</p>
    #             </li>
    #             <li>
    #                <p>Environmental variables are not evaluated before function invocation.</p>
    #             </li>
    #             <li>
    #                <p>Environmental variables only support string values.</p>
    #             </li>
    #             <li>
    #                <p>Any defined value in an environmental variable is considered a string literal
    #                and not expanded.</p>
    #             </li>
    #             <li>
    #                <p>Variable evaluations should ideally be performed in the function
    #                code.</p>
    #             </li>
    #          </ul>
    #          <p>When creating an environmental variable key-value pair, it must follow the additional
    #          constraints below:</p>
    #          <ul>
    #             <li>
    #                <p>Keys must begin with a letter.</p>
    #             </li>
    #             <li>
    #                <p>Keys must be at least two characters long.</p>
    #             </li>
    #             <li>
    #                <p>Keys can only contain letters, numbers, and the underscore character
    #                (_).</p>
    #             </li>
    #             <li>
    #                <p>Values can be up to 512 characters long.</p>
    #             </li>
    #             <li>
    #                <p>You can configure up to 50 key-value pairs in a GraphQL API.</p>
    #             </li>
    #          </ul>
    #          <p>You can create a list of environmental variables by adding it to the
    #             <code>environmentVariables</code> payload as a list in the format
    #             <code>{"key1":"value1","key2":"value2", …}</code>. Note that each call of the
    #             <code>PutGraphqlApiEnvironmentVariables</code> action will result in the overwriting of
    #          the existing environmental variable list of that API. This means the existing environmental
    #          variables will be lost. To avoid this, you must include all existing and new environmental
    #          variables in the list each time you call this action.</p>
    # @param [Hash, Types::PutGraphqlApiEnvironmentVariablesRequest] params
    # @option params [String] :api_id
    #   <p>The ID of the API to which the environmental variable list will be written.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>The list of environmental variables to add to the API.</p>
    #            <p>When creating an environmental variable key-value pair, it must follow the additional
    #            constraints below:</p>
    #            <ul>
    #               <li>
    #                  <p>Keys must begin with a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Keys must be at least two characters long.</p>
    #               </li>
    #               <li>
    #                  <p>Keys can only contain letters, numbers, and the underscore character
    #                  (_).</p>
    #               </li>
    #               <li>
    #                  <p>Values can be up to 512 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>You can configure up to 50 key-value pairs in a GraphQL API.</p>
    #               </li>
    #            </ul>
    #            <p>You can create a list of environmental variables by adding it to the
    #               <code>environmentVariables</code> payload as a list in the format
    #               <code>{"key1":"value1","key2":"value2", …}</code>. Note that each call of the
    #               <code>PutGraphqlApiEnvironmentVariables</code> action will result in the overwriting of
    #            the existing environmental variable list of that API. This means the existing environmental
    #            variables will be lost. To avoid this, you must include all existing and new environmental
    #            variables in the list each time you call this action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     environment_variables: { # required
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_graphql_api_environment_variables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     }
    #   }
    # @return [Types::PutGraphqlApiEnvironmentVariablesResponse]
    def put_graphql_api_environment_variables(params = {}, options = {})
      request = build_request(:put_graphql_api_environment_variables, params)
      request.send_request(options)
    end

    # <p>Creates a new introspection. Returns the <code>introspectionId</code> of the new
    #          introspection after its creation. </p>
    # @param [Hash, Types::StartDataSourceIntrospectionRequest] params
    # @option params [Types::RdsDataApiConfig] :rds_data_api_config
    #   <p>The <code>rdsDataApiConfig</code> object data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rds_data_api_config: {
    #       resource_arn: "RdsDataApiConfigResourceArn", # required
    #       secret_arn: "RdsDataApiConfigSecretArn", # required
    #       database_name: "RdsDataApiConfigDatabaseName", # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_data_source_introspection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     introspection_id: "String",
    #     introspection_status: "PROCESSING" # One of: ["PROCESSING", "FAILED", "SUCCESS"],
    #     introspection_status_detail: "String"
    #   }
    # @return [Types::StartDataSourceIntrospectionResponse]
    def start_data_source_introspection(params = {}, options = {})
      request = build_request(:start_data_source_introspection, params)
      request.send_request(options)
    end

    # <p>Adds a new schema to your GraphQL API.</p>
    #          <p>This operation is asynchronous. Use  to
    #          determine when it has completed.</p>
    # @param [Hash, Types::StartSchemaCreationRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :definition
    #   <p>The schema definition, in GraphQL schema language format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     definition: "data", # required
    #   }
    #   options = {}
    #   response = client.start_schema_creation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PROCESSING" # One of: ["PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"]
    #   }
    # @return [Types::StartSchemaCreationResponse]
    def start_schema_creation(params = {}, options = {})
      request = build_request(:start_schema_creation, params)
      request.send_request(options)
    end

    # <p>Initiates a merge operation. Returns a status that shows the result of the merge
    #          operation.</p>
    # @param [Hash, Types::StartSchemaMergeRequest] params
    # @option params [String] :association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "String", # required
    #     merged_api_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.start_schema_merge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"]
    #   }
    # @return [Types::StartSchemaMergeResponse]
    def start_schema_merge(params = {}, options = {})
      request = build_request(:start_schema_merge, params)
      request.send_request(options)
    end

    # <p>Tags a resource with user-supplied tags.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A <code>TagMap</code> object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Untags a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of <code>TagKey</code> objects.</p>
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

    # <p>Updates an <code>Api</code>.</p>
    # @param [Hash, Types::UpdateApiRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @option params [String] :name
    #   <p>The name of the Api.</p>
    # @option params [String] :owner_contact
    #   <p>The owner contact information for the <code>Api</code>.</p>
    # @option params [Types::EventConfig] :event_config
    #   <p>The new event configuration. This includes the default authorization configuration for
    #            connecting, publishing, and subscribing to an Event API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ApiName", # required
    #     owner_contact: "String",
    #     event_config: {
    #       auth_providers: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           cognito_config: {
    #             user_pool_id: "String", # required
    #             aws_region: "String", # required
    #             app_id_client_regex: "String"
    #           },
    #           open_id_connect_config: {
    #             issuer: "String", # required
    #             client_id: "String",
    #             iat_ttl: 1,
    #             auth_ttl: 1
    #           },
    #           lambda_authorizer_config: {
    #             authorizer_result_ttl_in_seconds: 1,
    #             authorizer_uri: "String", # required
    #             identity_validation_expression: "String"
    #           }
    #         }
    #       ],
    #       connection_auth_modes: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       default_publish_auth_modes: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       default_subscribe_auth_modes: [ # required
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       log_config: {
    #         log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #         cloud_watch_logs_role_arn: "String", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api: {
    #       api_id: "String",
    #       name: "ApiName",
    #       owner_contact: "OwnerContact",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       dns: {
    #         "String" => "String"
    #       },
    #       api_arn: "String",
    #       created: Time.now,
    #       xray_enabled: false,
    #       waf_web_acl_arn: "String",
    #       event_config: {
    #         auth_providers: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #             cognito_config: {
    #               user_pool_id: "String", # required
    #               aws_region: "String", # required
    #               app_id_client_regex: "String"
    #             },
    #             open_id_connect_config: {
    #               issuer: "String", # required
    #               client_id: "String",
    #               iat_ttl: 1,
    #               auth_ttl: 1
    #             },
    #             lambda_authorizer_config: {
    #               authorizer_result_ttl_in_seconds: 1,
    #               authorizer_uri: "String", # required
    #               identity_validation_expression: "String"
    #             }
    #           }
    #         ],
    #         connection_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         default_publish_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         default_subscribe_auth_modes: [ # required
    #           {
    #             auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #           }
    #         ],
    #         log_config: {
    #           log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #           cloud_watch_logs_role_arn: "String", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateApiResponse]
    def update_api(params = {}, options = {})
      request = build_request(:update_api, params)
      request.send_request(options)
    end

    # <p>Updates the cache for the GraphQL API.</p>
    # @param [Hash, Types::UpdateApiCacheRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [Integer] :ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    # @option params [String] :api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests from the
    #                  same user are cached. Individual resolvers are automatically cached. All API calls
    #                  will try to return responses from the cache.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>
    #               </li>
    #            </ul>
    # @option params [String] :type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    # @option params [String] :health_metrics_config
    #   <p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the
    #                  throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing
    #                  bottlenecks in a cache configuration.</p>
    #               </li>
    #               <li>
    #                  <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis
    #                  process. This is useful for diagnosing bottlenecks in a cache
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #            <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or
    #               <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     ttl: 1, # required
    #     api_caching_behavior: "FULL_REQUEST_CACHING" # One of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING", "OPERATION_LEVEL_CACHING"], # required
    #     type: "T2_SMALL" # One of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"], # required
    #     health_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_api_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_cache: {
    #       ttl: 1,
    #       api_caching_behavior: "FULL_REQUEST_CACHING" # One of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING", "OPERATION_LEVEL_CACHING"],
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       type: "T2_SMALL" # One of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"],
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"],
    #       health_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::UpdateApiCacheResponse]
    def update_api_cache(params = {}, options = {})
      request = build_request(:update_api_cache, params)
      request.send_request(options)
    end

    # <p>Updates an API key. You can update the key as long as it's not deleted.</p>
    # @param [Hash, Types::UpdateApiKeyRequest] params
    # @option params [String] :api_id
    #   <p>The ID for the GraphQL API.</p>
    # @option params [String] :id
    #   <p>The API key ID.</p>
    # @option params [String] :description
    #   <p>A description of the purpose of the API key.</p>
    # @option params [Integer] :expires
    #   <p>From the update time, the time after which the API key expires. The date is represented
    #            as seconds since the epoch. For more information, see .</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     id: "String", # required
    #     description: "String",
    #     expires: 1
    #   }
    #   options = {}
    #   response = client.update_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key: {
    #       id: "String",
    #       description: "String",
    #       expires: 1,
    #       deletes: 1
    #     }
    #   }
    # @return [Types::UpdateApiKeyResponse]
    def update_api_key(params = {}, options = {})
      request = build_request(:update_api_key, params)
      request.send_request(options)
    end

    # <p>Updates a <code>ChannelNamespace</code> associated with an <code>Api</code>.</p>
    # @param [Hash, Types::UpdateChannelNamespaceRequest] params
    # @option params [String] :api_id
    #   <p>The <code>Api</code> ID.</p>
    # @option params [String] :name
    #   <p>The name of the <code>ChannelNamespace</code>.</p>
    # @option params [Array<Types::AuthMode>] :subscribe_auth_modes
    #   <p>The authorization mode to use for subscribing to messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    # @option params [Array<Types::AuthMode>] :publish_auth_modes
    #   <p>The authorization mode to use for publishing messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    # @option params [String] :code_handlers
    #   <p>The event handler functions that run custom business logic to process published events
    #            and subscribe requests.</p>
    # @option params [Types::HandlerConfigs] :handler_configs
    #   <p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "Namespace", # required
    #     subscribe_auth_modes: [
    #       {
    #         auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #       }
    #     ],
    #     publish_auth_modes: [
    #       {
    #         auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #       }
    #     ],
    #     code_handlers: "Code",
    #     handler_configs: {
    #       on_publish: {
    #         behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #         integration: { # required
    #           data_source_name: "String", # required
    #           lambda_config: {
    #             invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #           }
    #         }
    #       },
    #       on_subscribe: {
    #         behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #         integration: { # required
    #           data_source_name: "String", # required
    #           lambda_config: {
    #             invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_channel_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_namespace: {
    #       api_id: "String",
    #       name: "Namespace",
    #       subscribe_auth_modes: [
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       publish_auth_modes: [
    #         {
    #           auth_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #         }
    #       ],
    #       code_handlers: "Code",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       channel_namespace_arn: "String",
    #       created: Time.now,
    #       last_modified: Time.now,
    #       handler_configs: {
    #         on_publish: {
    #           behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #           integration: { # required
    #             data_source_name: "String", # required
    #             lambda_config: {
    #               invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #             }
    #           }
    #         },
    #         on_subscribe: {
    #           behavior: "CODE" # One of: ["CODE", "DIRECT"], # required
    #           integration: { # required
    #             data_source_name: "String", # required
    #             lambda_config: {
    #               invoke_type: "REQUEST_RESPONSE" # One of: ["REQUEST_RESPONSE", "EVENT"]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateChannelNamespaceResponse]
    def update_channel_namespace(params = {}, options = {})
      request = build_request(:update_channel_namespace, params)
      request.send_request(options)
    end

    # <p>Updates a <code>DataSource</code> object.</p>
    # @param [Hash, Types::UpdateDataSourceRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :name
    #   <p>The new name for the data source.</p>
    # @option params [String] :description
    #   <p>The new description for the data source.</p>
    # @option params [String] :type
    #   <p>The new data source type.</p>
    # @option params [String] :service_role_arn
    #   <p>The new service role Amazon Resource Name (ARN) for the data source.</p>
    # @option params [Types::DynamodbDataSourceConfig] :dynamodb_config
    #   <p>The new Amazon DynamoDB configuration.</p>
    # @option params [Types::LambdaDataSourceConfig] :lambda_config
    #   <p>The new Lambda configuration.</p>
    # @option params [Types::ElasticsearchDataSourceConfig] :elasticsearch_config
    #   <p>The new OpenSearch configuration.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. Instead, use <a>UpdateDataSourceRequest$openSearchServiceConfig</a> to update an OpenSearch data source.</p>
    # @option params [Types::OpenSearchServiceDataSourceConfig] :open_search_service_config
    #   <p>The new OpenSearch configuration.</p>
    # @option params [Types::HttpDataSourceConfig] :http_config
    #   <p>The new HTTP endpoint configuration.</p>
    # @option params [Types::RelationalDatabaseDataSourceConfig] :relational_database_config
    #   <p>The new relational database configuration.</p>
    # @option params [Types::EventBridgeDataSourceConfig] :event_bridge_config
    #   <p>The new Amazon EventBridge settings.</p>
    # @option params [String] :metrics_config
    #   <p>Enables or disables enhanced data source metrics for specified data sources. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>dataSourceLevelMetricsBehavior</code> value is set to
    #               <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>
    #            is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>
    #            will be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     type: "AWS_LAMBDA" # One of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE", "AMAZON_EVENTBRIDGE", "AMAZON_BEDROCK_RUNTIME"], # required
    #     service_role_arn: "String",
    #     dynamodb_config: {
    #       table_name: "String", # required
    #       aws_region: "String", # required
    #       use_caller_credentials: false,
    #       delta_sync_config: {
    #         base_table_ttl: 1,
    #         delta_sync_table_name: "String",
    #         delta_sync_table_ttl: 1
    #       },
    #       versioned: false
    #     },
    #     lambda_config: {
    #       lambda_function_arn: "String", # required
    #     },
    #     elasticsearch_config: {
    #       endpoint: "String", # required
    #       aws_region: "String", # required
    #     },
    #     open_search_service_config: {
    #       endpoint: "String", # required
    #       aws_region: "String", # required
    #     },
    #     http_config: {
    #       endpoint: "String",
    #       authorization_config: {
    #         authorization_type: "AWS_IAM" # One of: ["AWS_IAM"], # required
    #         aws_iam_config: {
    #           signing_region: "String",
    #           signing_service_name: "String"
    #         }
    #       }
    #     },
    #     relational_database_config: {
    #       relational_database_source_type: "RDS_HTTP_ENDPOINT" # One of: ["RDS_HTTP_ENDPOINT"],
    #       rds_http_endpoint_config: {
    #         aws_region: "String",
    #         db_cluster_identifier: "String",
    #         database_name: "String",
    #         schema: "String",
    #         aws_secret_store_arn: "String"
    #       }
    #     },
    #     event_bridge_config: {
    #       event_bus_arn: "String", # required
    #     },
    #     metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source: {
    #       data_source_arn: "String",
    #       name: "ResourceName",
    #       description: "String",
    #       type: "AWS_LAMBDA" # One of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE", "AMAZON_EVENTBRIDGE", "AMAZON_BEDROCK_RUNTIME"],
    #       service_role_arn: "String",
    #       dynamodb_config: {
    #         table_name: "String", # required
    #         aws_region: "String", # required
    #         use_caller_credentials: false,
    #         delta_sync_config: {
    #           base_table_ttl: 1,
    #           delta_sync_table_name: "String",
    #           delta_sync_table_ttl: 1
    #         },
    #         versioned: false
    #       },
    #       lambda_config: {
    #         lambda_function_arn: "String", # required
    #       },
    #       elasticsearch_config: {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       },
    #       open_search_service_config: {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       },
    #       http_config: {
    #         endpoint: "String",
    #         authorization_config: {
    #           authorization_type: "AWS_IAM" # One of: ["AWS_IAM"], # required
    #           aws_iam_config: {
    #             signing_region: "String",
    #             signing_service_name: "String"
    #           }
    #         }
    #       },
    #       relational_database_config: {
    #         relational_database_source_type: "RDS_HTTP_ENDPOINT" # One of: ["RDS_HTTP_ENDPOINT"],
    #         rds_http_endpoint_config: {
    #           aws_region: "String",
    #           db_cluster_identifier: "String",
    #           database_name: "String",
    #           schema: "String",
    #           aws_secret_store_arn: "String"
    #         }
    #       },
    #       event_bridge_config: {
    #         event_bus_arn: "String", # required
    #       },
    #       metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::UpdateDataSourceResponse]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>Updates a custom <code>DomainName</code> object.</p>
    # @param [Hash, Types::UpdateDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :description
    #   <p>A description of the <code>DomainName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name_config: {
    #       domain_name: "DomainName",
    #       description: "Description",
    #       certificate_arn: "CertificateArn",
    #       appsync_domain_name: "String",
    #       hosted_zone_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       domain_name_arn: "String"
    #     }
    #   }
    # @return [Types::UpdateDomainNameResponse]
    def update_domain_name(params = {}, options = {})
      request = build_request(:update_domain_name, params)
      request.send_request(options)
    end

    # <p>Updates a <code>Function</code> object.</p>
    # @param [Hash, Types::UpdateFunctionRequest] params
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    # @option params [String] :name
    #   <p>The <code>Function</code> name.</p>
    # @option params [String] :description
    #   <p>The <code>Function</code> description.</p>
    # @option params [String] :function_id
    #   <p>The function ID.</p>
    # @option params [String] :data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    # @option params [String] :request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    # @option params [String] :response_mapping_template
    #   <p>The <code>Function</code> request mapping template.</p>
    # @option params [String] :function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29. Note that when using VTL and mapping templates, the
    #               <code>functionVersion</code> is required.</p>
    # @option params [Types::SyncConfig] :sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    # @option params [Types::AppSyncRuntime] :runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    # @option params [String] :code
    #   <p>The <code>function</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     function_id: "ResourceName", # required
    #     data_source_name: "ResourceName", # required
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     function_version: "String",
    #     sync_config: {
    #       conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #       conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: "String"
    #       }
    #     },
    #     max_batch_size: 1,
    #     runtime: {
    #       name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #       runtime_version: "String", # required
    #     },
    #     code: "Code"
    #   }
    #   options = {}
    #   response = client.update_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_configuration: {
    #       function_id: "String",
    #       function_arn: "String",
    #       name: "ResourceName",
    #       description: "String",
    #       data_source_name: "ResourceName",
    #       request_mapping_template: "MappingTemplate",
    #       response_mapping_template: "MappingTemplate",
    #       function_version: "String",
    #       sync_config: {
    #         conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #         conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #         lambda_conflict_handler_config: {
    #           lambda_conflict_handler_arn: "String"
    #         }
    #       },
    #       max_batch_size: 1,
    #       runtime: {
    #         name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #         runtime_version: "String", # required
    #       },
    #       code: "Code"
    #     }
    #   }
    # @return [Types::UpdateFunctionResponse]
    def update_function(params = {}, options = {})
      request = build_request(:update_function, params)
      request.send_request(options)
    end

    # <p>Updates a <code>GraphqlApi</code> object.</p>
    # @param [Hash, Types::UpdateGraphqlApiRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :name
    #   <p>The new name for the <code>GraphqlApi</code> object.</p>
    # @option params [Types::LogConfig] :log_config
    #   <p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>
    # @option params [String] :authentication_type
    #   <p>The new authentication type for the <code>GraphqlApi</code> object.</p>
    # @option params [Types::UserPoolConfig] :user_pool_config
    #   <p>The new Amazon Cognito user pool configuration for the <code>~GraphqlApi</code>
    #            object.</p>
    # @option params [Types::OpenIDConnectConfig] :open_id_connect_config
    #   <p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>
    # @option params [Array<Types::AdditionalAuthenticationProvider>] :additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    # @option params [Boolean] :xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    # @option params [Types::LambdaAuthorizerConfig] :lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    # @option params [String] :merged_api_execution_role_arn
    #   <p>The Identity and Access Management service role ARN for a merged API. The AppSync
    #            service assumes this role on behalf of the Merged API to validate access to source APIs at
    #            runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with
    #            the source API changes automatically.</p>
    # @option params [String] :owner_contact
    #   <p>The owner contact information for an API resource.</p>
    #            <p>This field accepts any string input with a length of 0 - 256 characters.</p>
    # @option params [String] :introspection_config
    #   <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable
    #               (<code>DISABLED</code>) introspection. If no value is provided, the introspection
    #            configuration will be set to <code>ENABLED</code> by default. This field will produce an
    #            error if the operation attempts to use the introspection feature while this field is
    #            disabled.</p>
    #            <p>For more information about introspection, see <a href="https://graphql.org/learn/introspection/">GraphQL introspection</a>.</p>
    # @option params [Integer] :query_depth_limit
    #   <p>The maximum depth a query can have in a single request. Depth refers to the amount of
    #            nested levels allowed in the body of query. The default value is <code>0</code> (or
    #            unspecified), which indicates there's no depth limit. If you set a limit, it can be between
    #               <code>1</code> and <code>75</code> nested levels. This field will produce a limit error
    #            if the operation falls out of bounds.</p>
    #            <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field
    #            produces an error, the error will be thrown upwards to the first nullable field
    #            available.</p>
    # @option params [Integer] :resolver_count_limit
    #   <p>The maximum number of resolvers that can be invoked in a single request. The default
    #            value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.
    #            When specified, the limit value can be between <code>1</code> and <code>10000</code>. This
    #            field will produce a limit error if the operation falls out of bounds.</p>
    # @option params [Types::EnhancedMetricsConfig] :enhanced_metrics_config
    #   <p>The <code>enhancedMetricsConfig</code> object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     name: "String", # required
    #     log_config: {
    #       field_log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #       cloud_watch_logs_role_arn: "String", # required
    #       exclude_verbose_content: false
    #     },
    #     authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"], # required
    #     user_pool_config: {
    #       user_pool_id: "String", # required
    #       aws_region: "String", # required
    #       default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #       app_id_client_regex: "String"
    #     },
    #     open_id_connect_config: {
    #       issuer: "String", # required
    #       client_id: "String",
    #       iat_ttl: 1,
    #       auth_ttl: 1
    #     },
    #     additional_authentication_providers: [
    #       {
    #         authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1
    #         },
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           app_id_client_regex: "String"
    #         },
    #         lambda_authorizer_config: {
    #           authorizer_result_ttl_in_seconds: 1,
    #           authorizer_uri: "String", # required
    #           identity_validation_expression: "String"
    #         }
    #       }
    #     ],
    #     xray_enabled: false,
    #     lambda_authorizer_config: {
    #       authorizer_result_ttl_in_seconds: 1,
    #       authorizer_uri: "String", # required
    #       identity_validation_expression: "String"
    #     },
    #     merged_api_execution_role_arn: "String",
    #     owner_contact: "String",
    #     introspection_config: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     query_depth_limit: 1,
    #     resolver_count_limit: 1,
    #     enhanced_metrics_config: {
    #       resolver_level_metrics_behavior: "FULL_REQUEST_RESOLVER_METRICS" # One of: ["FULL_REQUEST_RESOLVER_METRICS", "PER_RESOLVER_METRICS"], # required
    #       data_source_level_metrics_behavior: "FULL_REQUEST_DATA_SOURCE_METRICS" # One of: ["FULL_REQUEST_DATA_SOURCE_METRICS", "PER_DATA_SOURCE_METRICS"], # required
    #       operation_level_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_graphql_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graphql_api: {
    #       name: "ResourceName",
    #       api_id: "String",
    #       authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #       log_config: {
    #         field_log_level: "NONE" # One of: ["NONE", "ERROR", "ALL", "INFO", "DEBUG"], # required
    #         cloud_watch_logs_role_arn: "String", # required
    #         exclude_verbose_content: false
    #       },
    #       user_pool_config: {
    #         user_pool_id: "String", # required
    #         aws_region: "String", # required
    #         default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         app_id_client_regex: "String"
    #       },
    #       open_id_connect_config: {
    #         issuer: "String", # required
    #         client_id: "String",
    #         iat_ttl: 1,
    #         auth_ttl: 1
    #       },
    #       arn: "String",
    #       uris: {
    #         "String" => "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       additional_authentication_providers: [
    #         {
    #           authentication_type: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"],
    #           open_id_connect_config: {
    #             issuer: "String", # required
    #             client_id: "String",
    #             iat_ttl: 1,
    #             auth_ttl: 1
    #           },
    #           user_pool_config: {
    #             user_pool_id: "String", # required
    #             aws_region: "String", # required
    #             app_id_client_regex: "String"
    #           },
    #           lambda_authorizer_config: {
    #             authorizer_result_ttl_in_seconds: 1,
    #             authorizer_uri: "String", # required
    #             identity_validation_expression: "String"
    #           }
    #         }
    #       ],
    #       xray_enabled: false,
    #       waf_web_acl_arn: "String",
    #       lambda_authorizer_config: {
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_uri: "String", # required
    #         identity_validation_expression: "String"
    #       },
    #       dns: {
    #         "String" => "String"
    #       },
    #       visibility: "GLOBAL" # One of: ["GLOBAL", "PRIVATE"],
    #       api_type: "GRAPHQL" # One of: ["GRAPHQL", "MERGED"],
    #       merged_api_execution_role_arn: "String",
    #       owner: "String",
    #       owner_contact: "String",
    #       introspection_config: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       query_depth_limit: 1,
    #       resolver_count_limit: 1,
    #       enhanced_metrics_config: {
    #         resolver_level_metrics_behavior: "FULL_REQUEST_RESOLVER_METRICS" # One of: ["FULL_REQUEST_RESOLVER_METRICS", "PER_RESOLVER_METRICS"], # required
    #         data_source_level_metrics_behavior: "FULL_REQUEST_DATA_SOURCE_METRICS" # One of: ["FULL_REQUEST_DATA_SOURCE_METRICS", "PER_DATA_SOURCE_METRICS"], # required
    #         operation_level_metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateGraphqlApiResponse]
    def update_graphql_api(params = {}, options = {})
      request = build_request(:update_graphql_api, params)
      request.send_request(options)
    end

    # <p>Updates a <code>Resolver</code> object.</p>
    # @param [Hash, Types::UpdateResolverRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The new type name.</p>
    # @option params [String] :field_name
    #   <p>The new field name.</p>
    # @option params [String] :data_source_name
    #   <p>The new data source name.</p>
    # @option params [String] :request_mapping_template
    #   <p>The new request mapping template.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    # @option params [String] :response_mapping_template
    #   <p>The new response mapping template.</p>
    # @option params [String] :kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    # @option params [Types::PipelineConfig] :pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    # @option params [Types::SyncConfig] :sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    # @option params [Types::CachingConfig] :caching_config
    #   <p>The caching configuration for the resolver.</p>
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    # @option params [Types::AppSyncRuntime] :runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    # @option params [String] :code
    #   <p>The <code>resolver</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    # @option params [String] :metrics_config
    #   <p>Enables or disables enhanced resolver metrics for specified resolvers. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>resolverLevelMetricsBehavior</code> value is set to
    #               <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is
    #            set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will
    #            be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #     data_source_name: "ResourceName",
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #     pipeline_config: {
    #       functions: ["String"]
    #     },
    #     sync_config: {
    #       conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #       conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: "String"
    #       }
    #     },
    #     caching_config: {
    #       ttl: 1, # required
    #       caching_keys: ["String"]
    #     },
    #     max_batch_size: 1,
    #     runtime: {
    #       name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #       runtime_version: "String", # required
    #     },
    #     code: "Code",
    #     metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver: {
    #       type_name: "ResourceName",
    #       field_name: "ResourceName",
    #       data_source_name: "ResourceName",
    #       resolver_arn: "String",
    #       request_mapping_template: "MappingTemplate",
    #       response_mapping_template: "MappingTemplate",
    #       kind: "UNIT" # One of: ["UNIT", "PIPELINE"],
    #       pipeline_config: {
    #         functions: ["String"]
    #       },
    #       sync_config: {
    #         conflict_handler: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"],
    #         conflict_detection: "VERSION" # One of: ["VERSION", "NONE"],
    #         lambda_conflict_handler_config: {
    #           lambda_conflict_handler_arn: "String"
    #         }
    #       },
    #       caching_config: {
    #         ttl: 1, # required
    #         caching_keys: ["String"]
    #       },
    #       max_batch_size: 1,
    #       runtime: {
    #         name: "APPSYNC_JS" # One of: ["APPSYNC_JS"], # required
    #         runtime_version: "String", # required
    #       },
    #       code: "Code",
    #       metrics_config: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::UpdateResolverResponse]
    def update_resolver(params = {}, options = {})
      request = build_request(:update_resolver, params)
      request.send_request(options)
    end

    # <p>Updates some of the configuration choices of a particular source API association.</p>
    # @param [Hash, Types::UpdateSourceApiAssociationRequest] params
    # @option params [String] :association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    # @option params [String] :merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    # @option params [String] :description
    #   <p>The description field.</p>
    # @option params [Types::SourceApiAssociationConfig] :source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "String", # required
    #     merged_api_identifier: "String", # required
    #     description: "String",
    #     source_api_association_config: {
    #       merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_source_api_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_api_association: {
    #       association_id: "String",
    #       association_arn: "String",
    #       source_api_id: "String",
    #       source_api_arn: "String",
    #       merged_api_arn: "String",
    #       merged_api_id: "String",
    #       description: "String",
    #       source_api_association_config: {
    #         merge_type: "MANUAL_MERGE" # One of: ["MANUAL_MERGE", "AUTO_MERGE"]
    #       },
    #       source_api_association_status: "MERGE_SCHEDULED" # One of: ["MERGE_SCHEDULED", "MERGE_FAILED", "MERGE_SUCCESS", "MERGE_IN_PROGRESS", "AUTO_MERGE_SCHEDULE_FAILED", "DELETION_SCHEDULED", "DELETION_IN_PROGRESS", "DELETION_FAILED"],
    #       source_api_association_status_detail: "String",
    #       last_successful_merge_date: Time.now
    #     }
    #   }
    # @return [Types::UpdateSourceApiAssociationResponse]
    def update_source_api_association(params = {}, options = {})
      request = build_request(:update_source_api_association, params)
      request.send_request(options)
    end

    # <p>Updates a <code>Type</code> object.</p>
    # @param [Hash, Types::UpdateTypeRequest] params
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    # @option params [String] :type_name
    #   <p>The new type name.</p>
    # @option params [String] :definition
    #   <p>The new definition.</p>
    # @option params [String] :format
    #   <p>The new type format: SDL or JSON.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     definition: "String",
    #     format: "SDL" # One of: ["SDL", "JSON"], # required
    #   }
    #   options = {}
    #   response = client.update_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: {
    #       name: "ResourceName",
    #       description: "String",
    #       arn: "String",
    #       definition: "String",
    #       format: "SDL" # One of: ["SDL", "JSON"]
    #     }
    #   }
    # @return [Types::UpdateTypeResponse]
    def update_type(params = {}, options = {})
      request = build_request(:update_type, params)
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
      context[:gem_name] = 'aws-sdk-appsync'
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
