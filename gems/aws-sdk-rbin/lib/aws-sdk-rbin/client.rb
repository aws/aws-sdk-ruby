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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:rbin)

module Aws::Rbin
  # An API client for Aws::Rbin.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonRecycleBin
    @identifier = :rbin

    add_plugin(::Aws::Rbin::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Rbin::EndpointProvider)
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

    # <p>Creates a Recycle Bin retention rule. You can create two types of retention rules:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Tag-level retention rules</b> - These retention rules use 
    #           resource tags to identify the resources to protect. For each retention rule, you specify one or 
    #           more tag key and value pairs. Resources (of the specified type) that have at least one of these 
    #           tag key and value pairs are automatically retained in the Recycle Bin upon deletion. Use this 
    #           type of retention rule to protect specific resources in your account based on their tags.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Region-level retention rules</b> - These retention rules, 
    #           by default, apply to all of the resources (of the specified type) in the Region, even if the 
    #           resources are not tagged. However, you can specify exclusion tags to exclude resources that have 
    #           specific tags. Use this type of retention rule to protect all resources of a specific type in a 
    #           Region.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/ebs/latest/userguide/recycle-bin.html">
    #       Create Recycle Bin retention rules</a> in the <i>Amazon EBS User Guide</i>.</p>
    # @param [Hash, Types::CreateRuleRequest] params
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    # @option params [String] :description
    #   <p>The retention rule description.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    # @option params [String] :resource_type
    #   <p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots 
    #         and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To 
    #         retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>[Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a 
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that 
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have 
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule 
    #         does not have any resource tags specified. It retains all deleted resources of the specified 
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    # @option params [Types::LockConfiguration] :lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    # @option params [Array<Types::ResourceTag>] :exclude_resource_tags
    #   <p>[Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded, 
    #   or ignored, by a Region-level retention rule. Resources that have any of these tags are not retained by the retention rule 
    #   upon deletion.</p>
    #            <p>You can't specify exclusion tags for tag-level retention rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     retention_period: { # required
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"], # required
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     lock_configuration: {
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     },
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleIdentifier",
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"],
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     status: "pending" # One of: ["pending", "available"],
    #     lock_configuration: {
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     },
    #     lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #     rule_arn: "RuleArn",
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::CreateRuleResponse]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a Recycle Bin retention rule. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule">
    #       Delete Recycle Bin retention rules</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    # @param [Hash, Types::DeleteRuleRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleResponse]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Gets information about a Recycle Bin retention rule.</p>
    # @param [Hash, Types::GetRuleRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleIdentifier",
    #     description: "Description",
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"],
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     status: "pending" # One of: ["pending", "available"],
    #     lock_configuration: {
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     },
    #     lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #     lock_end_time: Time.now,
    #     rule_arn: "RuleArn",
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::GetRuleResponse]
    def get_rule(params = {}, options = {})
      request = build_request(:get_rule, params)
      request.send_request(options)
    end

    # <p>Lists the Recycle Bin retention rules in the Region.</p>
    # @param [Hash, Types::ListRulesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [String] :resource_type
    #   <p>The resource type retained by the retention rule. Only retention rules that retain 
    #         the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed 
    #         AMIs are supported. To list retention rules that retain snapshots, specify 
    #         <code>EBS_SNAPSHOT</code>. To list retention rules that retain EBS-backed AMIs, specify 
    #         <code>EC2_IMAGE</code>.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    # @option params [String] :lock_state
    #   <p>The lock state of the retention rules to list. Only retention rules with the specified 
    #         lock state are returned.</p>
    # @option params [Array<Types::ResourceTag>] :exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"], # required
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         identifier: "RuleIdentifier",
    #         description: "Description",
    #         retention_period: {
    #           retention_period_value: 1, # required
    #           retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #         },
    #         lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #         rule_arn: "RuleArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRulesResponse]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>Lists the tags assigned to a retention rule.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RuleArn", # required
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

    # <p>Locks a Region-level retention rule. A locked retention rule can't be modified or 
    #       deleted.</p>
    #          <note>
    #             <p>You can't lock tag-level retention rules, or Region-level retention rules that 
    #         have exclusion tags.</p>
    #          </note>
    # @param [Hash, Types::LockRuleRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    # @option params [Types::LockConfiguration] :lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RuleIdentifier", # required
    #     lock_configuration: { # required
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.lock_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleIdentifier",
    #     description: "Description",
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"],
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     status: "pending" # One of: ["pending", "available"],
    #     lock_configuration: {
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     },
    #     lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #     rule_arn: "RuleArn",
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::LockRuleResponse]
    def lock_rule(params = {}, options = {})
      request = build_request(:lock_rule, params)
      request.send_request(options)
    end

    # <p>Assigns tags to the specified retention rule.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RuleArn", # required
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

    # <p>Unlocks a retention rule. After a retention rule is unlocked, it can be modified or deleted 
    #       only after the unlock delay period expires.</p>
    # @param [Hash, Types::UnlockRuleRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.unlock_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleIdentifier",
    #     description: "Description",
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"],
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     status: "pending" # One of: ["pending", "available"],
    #     lock_configuration: {
    #       unlock_delay: { # required
    #         unlock_delay_value: 1, # required
    #         unlock_delay_unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     },
    #     lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #     lock_end_time: Time.now,
    #     rule_arn: "RuleArn",
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::UnlockRuleResponse]
    def unlock_rule(params = {}, options = {})
      request = build_request(:unlock_rule, params)
      request.send_request(options)
    end

    # <p>Unassigns a tag from a retention rule.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RuleArn", # required
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

    # <p>Updates an existing Recycle Bin retention rule. You can update a retention rule's description, 
    #       resource tags, and retention period at any time after creation. You can't update a retention rule's 
    #       resource type after creation. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule">
    #       Update Recycle Bin retention rules</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    # @param [Hash, Types::UpdateRuleRequest] params
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    # @option params [String] :description
    #   <p>The retention rule description.</p>
    # @option params [String] :resource_type
    #   <note>
    #               <p>This parameter is currently not supported. You can't update a retention rule's resource type 
    #         after creation.</p>
    #            </note>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>[Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a 
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that 
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have 
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule 
    #         does not have any resource tags specified. It retains all deleted resources of the specified 
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    # @option params [Array<Types::ResourceTag>] :exclude_resource_tags
    #   <p>[Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded, 
    #   or ignored, by a Region-level retention rule. Resources that have any of these tags are not retained by the retention rule 
    #   upon deletion.</p>
    #            <p>You can't specify exclusion tags for tag-level retention rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RuleIdentifier", # required
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     description: "Description",
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"],
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleIdentifier",
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: "DAYS" # One of: ["DAYS"], # required
    #     },
    #     description: "Description",
    #     resource_type: "EBS_SNAPSHOT" # One of: ["EBS_SNAPSHOT", "EC2_IMAGE"],
    #     resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ],
    #     status: "pending" # One of: ["pending", "available"],
    #     lock_state: "locked" # One of: ["locked", "pending_unlock", "unlocked"],
    #     lock_end_time: Time.now,
    #     rule_arn: "RuleArn",
    #     exclude_resource_tags: [
    #       {
    #         resource_tag_key: "ResourceTagKey", # required
    #         resource_tag_value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateRuleResponse]
    def update_rule(params = {}, options = {})
      request = build_request(:update_rule, params)
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
      context[:gem_name] = 'aws-sdk-rbin'
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
