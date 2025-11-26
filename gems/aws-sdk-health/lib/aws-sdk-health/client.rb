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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:health)

module Aws::Health
  # An API client for Aws::Health.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSHealth20160804
    @identifier = :health

    add_plugin(::Aws::Health::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Health::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Returns a list of accounts in the organization from Organizations that are affected by the
    #          provided event. For more information about the different types of Health events, see
    #             <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>. </p>
    #          <p>Before you can call this operation, you must first enable Health to work with
    #          Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #          management account.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    # @param [Hash, Types::DescribeAffectedAccountsForOrganizationRequest] params
    # @option params [String] :event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_arn: "eventArn", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_affected_accounts_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     affected_accounts: ["accountId"],
    #     event_scope_code: "PUBLIC" # One of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeAffectedAccountsForOrganizationResponse]
    def describe_affected_accounts_for_organization(params = {}, options = {})
      request = build_request(:describe_affected_accounts_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns a list of entities that have been affected by the specified events, based on the
    #          specified filter criteria. Entities can refer to individual customer resources, groups of
    #          customer resources, or any other construct, depending on the Amazon Web Services service. Events that
    #          have impact beyond that of the affected entities, or where the extent of impact is unknown,
    #          include at least one entity indicating this.</p>
    #          <p>At least one event ARN is required.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #                </li>
    #                <li>
    #                   <p>This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeAffectedEntitiesRequest] params
    # @option params [Types::EntityFilter] :filter
    #   <p>Values to narrow the results returned. At least one event ARN is required.</p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: { # required
    #       event_arns: ["eventArn"], # required
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       tags: [
    #         {
    #           "tagKey" => "tagValue"
    #         }
    #       ],
    #       status_codes: ["IMPAIRED" # One of: ["IMPAIRED", "UNIMPAIRED", "UNKNOWN", "PENDING", "RESOLVED"]]
    #     },
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_affected_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         entity_arn: "entityArn",
    #         event_arn: "eventArn",
    #         entity_value: "entityValue",
    #         entity_url: "entityUrl",
    #         aws_account_id: "accountId",
    #         last_updated_time: Time.now,
    #         status_code: "IMPAIRED" # One of: ["IMPAIRED", "UNIMPAIRED", "UNKNOWN", "PENDING", "RESOLVED"],
    #         tags: {
    #           "tagKey" => "tagValue"
    #         },
    #         entity_metadata: {
    #           "entityMetadataKey" => "entityMetadataValue"
    #         }
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeAffectedEntitiesResponse]
    def describe_affected_entities(params = {}, options = {})
      request = build_request(:describe_affected_entities, params)
      request.send_request(options)
    end

    # <p>Returns a list of entities that have been affected by one or more events for one or more
    #          accounts in your organization in Organizations, based on the filter criteria. Entities can refer
    #          to individual customer resources, groups of customer resources, or any other construct,
    #          depending on the Amazon Web Services service.</p>
    #          <p>At least one event Amazon Resource Name (ARN) and account ID are required.</p>
    #          <p>Before you can call this operation, you must first enable Health to work with
    #          Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #          management account.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #                </li>
    #                <li>
    #                   <p>This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeAffectedEntitiesForOrganizationRequest] params
    # @option params [Array<Types::EventAccountFilter>] :organization_entity_filters
    #   <p>A JSON set of elements including the <code>awsAccountId</code> and the
    #               <code>eventArn</code>.</p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    # @option params [Array<Types::EntityAccountFilter>] :organization_entity_account_filters
    #   <p>A JSON set of elements including the <code>awsAccountId</code>, <code>eventArn</code> and a set of <code>statusCodes</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_entity_filters: [
    #       {
    #         event_arn: "eventArn", # required
    #         aws_account_id: "accountId"
    #       }
    #     ],
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1,
    #     organization_entity_account_filters: [
    #       {
    #         event_arn: "eventArn", # required
    #         aws_account_id: "accountId",
    #         status_codes: ["IMPAIRED" # One of: ["IMPAIRED", "UNIMPAIRED", "UNKNOWN", "PENDING", "RESOLVED"]]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_affected_entities_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         entity_arn: "entityArn",
    #         event_arn: "eventArn",
    #         entity_value: "entityValue",
    #         entity_url: "entityUrl",
    #         aws_account_id: "accountId",
    #         last_updated_time: Time.now,
    #         status_code: "IMPAIRED" # One of: ["IMPAIRED", "UNIMPAIRED", "UNKNOWN", "PENDING", "RESOLVED"],
    #         tags: {
    #           "tagKey" => "tagValue"
    #         },
    #         entity_metadata: {
    #           "entityMetadataKey" => "entityMetadataValue"
    #         }
    #       }
    #     ],
    #     failed_set: [
    #       {
    #         aws_account_id: "accountId",
    #         event_arn: "eventArn",
    #         error_name: "string",
    #         error_message: "string"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeAffectedEntitiesForOrganizationResponse]
    def describe_affected_entities_for_organization(params = {}, options = {})
      request = build_request(:describe_affected_entities_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns the number of entities that are affected by each of the specified events.</p>
    # @param [Hash, Types::DescribeEntityAggregatesRequest] params
    # @option params [Array<String>] :event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_arns: ["eventArn"]
    #   }
    #   options = {}
    #   response = client.describe_entity_aggregates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_aggregates: [
    #       {
    #         event_arn: "eventArn",
    #         count: 1,
    #         statuses: {
    #           "entityStatusCode" => 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEntityAggregatesResponse]
    def describe_entity_aggregates(params = {}, options = {})
      request = build_request(:describe_entity_aggregates, params)
      request.send_request(options)
    end

    # <p>Returns a list of entity aggregates for your Organizations that are affected by each of the specified events.</p>
    # @param [Hash, Types::DescribeEntityAggregatesForOrganizationRequest] params
    # @option params [Array<String>] :event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    # @option params [Array<String>] :aws_account_ids
    #   <p>A list of 12-digit Amazon Web Services account numbers that contains the affected entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_arns: ["eventArn"], # required
    #     aws_account_ids: ["accountId"]
    #   }
    #   options = {}
    #   response = client.describe_entity_aggregates_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_entity_aggregates: [
    #       {
    #         event_arn: "eventArn",
    #         count: 1,
    #         statuses: {
    #           "entityStatusCode" => 1
    #         },
    #         accounts: [
    #           {
    #             account_id: "eventArn",
    #             count: 1,
    #             statuses: {
    #               "entityStatusCode" => 1
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEntityAggregatesForOrganizationResponse]
    def describe_entity_aggregates_for_organization(params = {}, options = {})
      request = build_request(:describe_entity_aggregates_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns the number of events of each event type (issue, scheduled change, and account
    #          notification). If no filter is specified, the counts of all events in each category are
    #          returned.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    # @param [Hash, Types::DescribeEventAggregatesRequest] params
    # @option params [Types::EventFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    # @option params [String] :aggregate_field
    #   <p>The only currently supported value is <code>eventTypeCategory</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       event_arns: ["eventArn"],
    #       event_type_codes: ["EventType2"],
    #       services: ["service"],
    #       regions: ["region"],
    #       availability_zones: ["availabilityZone"],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       end_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"]],
    #       tags: [
    #         {
    #           "tagKey" => "tagValue"
    #         }
    #       ],
    #       event_status_codes: ["open" # One of: ["open", "closed", "upcoming"]]
    #     },
    #     aggregate_field: "eventTypeCategory" # One of: ["eventTypeCategory"], # required
    #     max_results: 1,
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.describe_event_aggregates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_aggregates: [
    #       {
    #         aggregate_value: "aggregateValue",
    #         count: 1
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeEventAggregatesResponse]
    def describe_event_aggregates(params = {}, options = {})
      request = build_request(:describe_event_aggregates, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about one or more specified events. Information includes
    #          standard event data (Amazon Web Services Region, service, and so on, as returned by <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a>), a detailed event description, and possible additional metadata
    #          that depends upon the nature of the event. Affected entities are not included. To retrieve
    #          the entities, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html">DescribeAffectedEntities</a> operation.</p>
    #          <p>If a specified event can't be retrieved, an error message is returned for that
    #          event.</p>
    #          <note>
    #             <p>This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::DescribeEventDetailsRequest] params
    # @option params [Array<String>] :event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_arns: ["eventArn"], # required
    #     locale: "locale"
    #   }
    #   options = {}
    #   response = client.describe_event_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_set: [
    #       {
    #         event: {
    #           arn: "eventArn",
    #           service: "service",
    #           event_type_code: "eventTypeCode",
    #           event_type_category: "issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"],
    #           region: "region",
    #           availability_zone: "availabilityZone",
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           last_updated_time: Time.now,
    #           status_code: "open" # One of: ["open", "closed", "upcoming"],
    #           event_scope_code: "PUBLIC" # One of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #         },
    #         event_description: {
    #           latest_description: "EventDescription2"
    #         },
    #         event_metadata: {
    #           "metadataKey" => "metadataValue"
    #         }
    #       }
    #     ],
    #     failed_set: [
    #       {
    #         event_arn: "eventArn",
    #         error_name: "string",
    #         error_message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventDetailsResponse]
    def describe_event_details(params = {}, options = {})
      request = build_request(:describe_event_details, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about one or more specified events for one or more
    #          Amazon Web Services accounts in your organization. This information includes standard event data (such as
    #          the Amazon Web Services Region and service), an event description, and (depending on the event) possible
    #          metadata. This operation doesn't return affected entities, such as the resources related to
    #          the event. To return affected entities, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html">DescribeAffectedEntitiesForOrganization</a> operation.</p>
    #          <note>
    #             <p>Before you can call this operation, you must first enable Health to work with
    #             Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #             management account.</p>
    #          </note>
    #          <p>When you call the <code>DescribeEventDetailsForOrganization</code> operation, specify
    #          the <code>organizationEventDetailFilters</code> object in the request. Depending on the
    #          Health event type, note the following differences:</p>
    #          <ul>
    #             <li>
    #                <p>To return event details for a public event, you must specify a null value for the
    #                   <code>awsAccountId</code> parameter. If you specify an account ID for a public
    #                event, Health returns an error message because public events aren't specific to
    #                an account.</p>
    #             </li>
    #             <li>
    #                <p>To return event details for an event that is specific to an account in your
    #                organization, you must specify the <code>awsAccountId</code> parameter in the
    #                request. If you don't specify an account ID, Health returns an error message
    #                because the event is specific to an account in your organization. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>.</p>
    #          <note>
    #             <p>This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::DescribeEventDetailsForOrganizationRequest] params
    # @option params [Array<Types::EventAccountFilter>] :organization_event_detail_filters
    #   <p>A set of JSON elements that includes the <code>awsAccountId</code> and the
    #               <code>eventArn</code>.</p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_event_detail_filters: [ # required
    #       {
    #         event_arn: "eventArn", # required
    #         aws_account_id: "accountId"
    #       }
    #     ],
    #     locale: "locale"
    #   }
    #   options = {}
    #   response = client.describe_event_details_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_set: [
    #       {
    #         aws_account_id: "accountId",
    #         event: {
    #           arn: "eventArn",
    #           service: "service",
    #           event_type_code: "eventTypeCode",
    #           event_type_category: "issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"],
    #           region: "region",
    #           availability_zone: "availabilityZone",
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           last_updated_time: Time.now,
    #           status_code: "open" # One of: ["open", "closed", "upcoming"],
    #           event_scope_code: "PUBLIC" # One of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #         },
    #         event_description: {
    #           latest_description: "EventDescription2"
    #         },
    #         event_metadata: {
    #           "metadataKey" => "metadataValue"
    #         }
    #       }
    #     ],
    #     failed_set: [
    #       {
    #         aws_account_id: "accountId",
    #         event_arn: "eventArn",
    #         error_name: "string",
    #         error_message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventDetailsForOrganizationResponse]
    def describe_event_details_for_organization(params = {}, options = {})
      request = build_request(:describe_event_details_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns the event types that meet the specified filter criteria. You can use this API
    #          operation to find information about the Health event, such as the category, Amazon Web Services service, and event code. The metadata for each event appears in the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html">EventType</a> object. </p>
    #          <p>If you don't specify a filter criteria, the API operation returns all event types, in no
    #          particular order. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    # @param [Hash, Types::DescribeEventTypesRequest] params
    # @option params [Types::EventTypeFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #            <note>
    #               <p>If you don't specify the <code>maxResults</code> parameter, this operation returns a
    #               maximum of 30 items by default.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       event_type_codes: ["eventTypeCode"],
    #       services: ["service"],
    #       event_type_categories: ["issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"]]
    #     },
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_event_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_types: [
    #       {
    #         service: "service",
    #         code: "eventTypeCode",
    #         category: "issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"]
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeEventTypesResponse]
    def describe_event_types(params = {}, options = {})
      request = build_request(:describe_event_types, params)
      request.send_request(options)
    end

    # <p> Returns information about events that meet the specified filter criteria. Events are
    #          returned in a summary form and do not include the detailed description, any additional
    #          metadata that depends on the event type, or any affected resources. To retrieve that
    #          information, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html">DescribeEventDetails</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html">DescribeAffectedEntities</a> operations.</p>
    #          <p>If no filter criteria are specified, all events are returned. Results are sorted by
    #             <code>lastModifiedTime</code>, starting with the most recent event.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>When you call the <code>DescribeEvents</code> operation and specify an entity
    #                   for the <code>entityValues</code> parameter, Health might return public
    #                   events that aren't specific to that resource. For example, if you call
    #                      <code>DescribeEvents</code> and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2)
    #                   instance, Health might return events that aren't specific to that resource or
    #                   service. To get events that are specific to a service, use the
    #                      <code>services</code> parameter in the <code>filter</code> object. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>.</p>
    #                </li>
    #                <li>
    #                   <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeEventsRequest] params
    # @option params [Types::EventFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       event_arns: ["eventArn"],
    #       event_type_codes: ["EventType2"],
    #       services: ["service"],
    #       regions: ["region"],
    #       availability_zones: ["availabilityZone"],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       end_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"]],
    #       tags: [
    #         {
    #           "tagKey" => "tagValue"
    #         }
    #       ],
    #       event_status_codes: ["open" # One of: ["open", "closed", "upcoming"]]
    #     },
    #     next_token: "nextToken",
    #     max_results: 1,
    #     locale: "locale"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         arn: "eventArn",
    #         service: "service",
    #         event_type_code: "eventTypeCode",
    #         event_type_category: "issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"],
    #         region: "region",
    #         availability_zone: "availabilityZone",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         last_updated_time: Time.now,
    #         status_code: "open" # One of: ["open", "closed", "upcoming"],
    #         event_scope_code: "PUBLIC" # One of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeEventsResponse]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns information about events across your organization in Organizations. You can use
    #             the<code>filters</code> parameter to specify the events that you want to return. Events
    #          are returned in a summary form and don't include the affected accounts, detailed
    #          description, any additional metadata that depends on the event type, or any affected
    #          resources. To retrieve that information, use the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html">DescribeAffectedAccountsForOrganization</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html">DescribeEventDetailsForOrganization</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html">DescribeAffectedEntitiesForOrganization</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>If you don't specify a <code>filter</code>, the
    #             <code>DescribeEventsForOrganizations</code> returns all events across your organization.
    #          Results are sorted by <code>lastModifiedTime</code>, starting with the most recent event. </p>
    #          <p>For more information about the different types of Health events, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>.</p>
    #          <p>Before you can call this operation, you must first enable Health to work with
    #          Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #          management account.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    # @param [Hash, Types::DescribeEventsForOrganizationRequest] params
    # @option params [Types::OrganizationEventFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       event_type_codes: ["EventType2"],
    #       aws_account_ids: ["accountId"],
    #       services: ["service"],
    #       regions: ["region"],
    #       start_time: {
    #         from: Time.now,
    #         to: Time.now
    #       },
    #       end_time: {
    #         from: Time.now,
    #         to: Time.now
    #       },
    #       last_updated_time: {
    #         from: Time.now,
    #         to: Time.now
    #       },
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"]],
    #       event_status_codes: ["open" # One of: ["open", "closed", "upcoming"]]
    #     },
    #     next_token: "nextToken",
    #     max_results: 1,
    #     locale: "locale"
    #   }
    #   options = {}
    #   response = client.describe_events_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         arn: "eventArn",
    #         service: "service",
    #         event_type_code: "eventTypeCode",
    #         event_type_category: "issue" # One of: ["issue", "accountNotification", "scheduledChange", "investigation"],
    #         event_scope_code: "PUBLIC" # One of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"],
    #         region: "region",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         last_updated_time: Time.now,
    #         status_code: "open" # One of: ["open", "closed", "upcoming"]
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::DescribeEventsForOrganizationResponse]
    def describe_events_for_organization(params = {}, options = {})
      request = build_request(:describe_events_for_organization, params)
      request.send_request(options)
    end

    # <p>This operation provides status information on enabling or disabling Health to work
    #          with your organization. To call this operation, you must use the organization's
    #          management account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_health_service_status_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_service_access_status_for_organization: "healthServiceAccessStatusForOrganization"
    #   }
    # @return [Types::DescribeHealthServiceStatusForOrganizationResponse]
    def describe_health_service_status_for_organization(params = {}, options = {})
      request = build_request(:describe_health_service_status_for_organization, params)
      request.send_request(options)
    end

    # <p>Disables Health from working with Organizations. To call this operation, you must sign
    #          in to the organization's management account. For more information, see <a href="https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html">Aggregating
    #             Health events</a> in the <i>Health User Guide</i>.</p>
    #          <p>This operation doesn't remove the service-linked role from the management account in your
    #          organization. You must use the IAM console, API, or Command Line Interface (CLI) to remove the
    #          service-linked role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role">Deleting a Service-Linked Role</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>You can also disable the organizational feature by using the Organizations <a href="https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html">DisableAWSServiceAccess</a> API operation. After you call this operation,
    #             Health stops aggregating events for all other Amazon Web Services accounts in your organization.
    #             If you call the Health API operations for organizational view, Health returns
    #             an error. Health continues to aggregate health events for your
    #             Amazon Web Services account.</p>
    #          </note>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_health_service_access_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_health_service_access_for_organization(params = {}, options = {})
      request = build_request(:disable_health_service_access_for_organization, params)
      request.send_request(options)
    end

    # <p>Enables Health to work with Organizations. You can use the organizational view feature
    #          to aggregate events from all Amazon Web Services accounts in your organization in a centralized location. </p>
    #          <p>This operation also creates a service-linked role for the management account in the
    #          organization. </p>
    #          <note>
    #             <p>To call this operation, you must meet the following requirements:</p>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a> to use the Health API. If you call
    #                   the Health API from an Amazon Web Services account that doesn't have a
    #                   Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a <code>SubscriptionRequiredException</code>
    #                   error.</p>
    #                </li>
    #                <li>
    #                   <p>You must have permission to call this operation from the organization's
    #                   management account. For example IAM policies, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html">Health
    #                      identity-based policy examples</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>If you don't have the required support plan, you can instead use the Health console
    #          to enable the organizational view feature. For more information, see <a href="https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html">Aggregating
    #             Health events</a> in the <i>Health User Guide</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_health_service_access_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_health_service_access_for_organization(params = {}, options = {})
      request = build_request(:enable_health_service_access_for_organization, params)
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
      context[:gem_name] = 'aws-sdk-health'
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
