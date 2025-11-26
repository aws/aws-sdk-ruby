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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mailmanager)

module Aws::MailManager
  # An API client for Aws::MailManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MailManagerSvc
    @identifier = :mailmanager

    add_plugin(::Aws::MailManager::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MailManager::EndpointProvider)
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

    # <p>Creates an Add On instance for the subscription indicated in the request. The resulting Amazon Resource Name (ARN) can be used in a conditional statement for a rule set or traffic policy. </p>
    # @param [Hash, Types::CreateAddonInstanceRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :addon_subscription_id
    #   <p>The unique ID of a previously created subscription that an Add On instance is created for. You can only have one instance per subscription.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     addon_subscription_id: "AddonSubscriptionId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_addon_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_instance_id: "AddonInstanceId", # required
    #   }
    # @return [Types::CreateAddonInstanceResponse]
    def create_addon_instance(params = {}, options = {})
      request = build_request(:create_addon_instance, params)
      request.send_request(options)
    end

    # <p>Creates a subscription for an Add On representing the acceptance of its terms of use and additional pricing. The subscription can then be used to create an instance for use in rule sets or traffic policies.</p>
    # @param [Hash, Types::CreateAddonSubscriptionRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :addon_name
    #   <p>The name of the Add On to subscribe to. You can only have one subscription for each Add On name.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     addon_name: "AddonName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_addon_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_subscription_id: "AddonSubscriptionId", # required
    #   }
    # @return [Types::CreateAddonSubscriptionResponse]
    def create_addon_subscription(params = {}, options = {})
      request = build_request(:create_addon_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a new address list.</p>
    # @param [Hash, Types::CreateAddressListRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :address_list_name
    #   <p>A user-friendly name for the address list.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     address_list_name: "AddressListName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address_list_id: "AddressListId", # required
    #   }
    # @return [Types::CreateAddressListResponse]
    def create_address_list(params = {}, options = {})
      request = build_request(:create_address_list, params)
      request.send_request(options)
    end

    # <p>Creates an import job for an address list.</p>
    # @param [Hash, Types::CreateAddressListImportJobRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :address_list_id
    #   <p>The unique identifier of the address list for importing addresses to.</p>
    # @option params [String] :name
    #   <p>A user-friendly name for the import job.</p>
    # @option params [Types::ImportDataFormat] :import_data_format
    #   <p>The format of the input for an import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     address_list_id: "AddressListId", # required
    #     name: "JobName", # required
    #     import_data_format: { # required
    #       import_data_type: "CSV" # One of: ["CSV", "JSON"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_address_list_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     pre_signed_url: "PreSignedUrl", # required
    #   }
    # @return [Types::CreateAddressListImportJobResponse]
    def create_address_list_import_job(params = {}, options = {})
      request = build_request(:create_address_list_import_job, params)
      request.send_request(options)
    end

    # <p>Creates a new email archive resource for storing and retaining emails.</p>
    # @param [Hash, Types::CreateArchiveRequest] params
    # @option params [String] :client_token
    #   <p>A unique token Amazon SES uses to recognize retries of this request.</p>
    # @option params [String] :archive_name
    #   <p>A unique name for the new archive.</p>
    # @option params [Types::ArchiveRetention] :retention
    #   <p>The period for retaining emails in the archive before automatic deletion.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key for encrypting emails in the archive.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     archive_name: "ArchiveNameString", # required
    #     retention: {
    #       # One of:
    #       retention_period: "THREE_MONTHS" # One of: ["THREE_MONTHS", "SIX_MONTHS", "NINE_MONTHS", "ONE_YEAR", "EIGHTEEN_MONTHS", "TWO_YEARS", "THIRTY_MONTHS", "THREE_YEARS", "FOUR_YEARS", "FIVE_YEARS", "SIX_YEARS", "SEVEN_YEARS", "EIGHT_YEARS", "NINE_YEARS", "TEN_YEARS", "PERMANENT"]
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_id: "ArchiveIdString", # required
    #   }
    # @return [Types::CreateArchiveResponse]
    def create_archive(params = {}, options = {})
      request = build_request(:create_archive, params)
      request.send_request(options)
    end

    # <p>Provision a new ingress endpoint resource.</p>
    # @param [Hash, Types::CreateIngressPointRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :ingress_point_name
    #   <p>A user friendly name for an ingress endpoint resource.</p>
    # @option params [String] :type
    #   <p>The type of the ingress endpoint to create.</p>
    # @option params [String] :rule_set_id
    #   <p>The identifier of an existing rule set that you attach to an ingress endpoint resource.</p>
    # @option params [String] :traffic_policy_id
    #   <p>The identifier of an existing traffic policy that you attach to an ingress endpoint resource.</p>
    # @option params [Types::IngressPointConfiguration] :ingress_point_configuration
    #   <p>If you choose an Authenticated ingress endpoint, you must configure either an SMTP password or a secret ARN.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>Specifies the network configuration for the ingress point. This allows you to create an IPv4-only, Dual-Stack, or PrivateLink type of ingress point. If not specified, the default network type is IPv4-only. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Create Open IngressPoint
    #   # Example operation for create_ingress_point
    #   params = {
    #     ingress_point_name: "ingressPointName",
    #     type: OPEN,
    #     rule_set_id: "rs-12345",
    #     traffic_policy_id: "tp-12345",
    #     tags: [
    #       {
    #         key: "key",
    #         value: "value"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ingress_point(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "inp-12345"
    #   }
    # @example Create Auth IngressPoint with Password
    #   # Example operation for create_ingress_point
    #   params = {
    #     ingress_point_name: "ingressPointName",
    #     type: AUTH,
    #     rule_set_id: "rs-12345",
    #     traffic_policy_id: "tp-12345",
    #     ingress_point_configuration: {
    #     "SmtpPassword" => smtpPassword
    #   },
    #     tags: [
    #       {
    #         key: "key",
    #         value: "value"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ingress_point(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "inp-12345"
    #   }
    # @example Create Auth IngressPoint with SecretsManager Secret
    #   # Example operation for create_ingress_point
    #   params = {
    #     ingress_point_name: "ingressPointName",
    #     type: AUTH,
    #     rule_set_id: "rs-12345",
    #     traffic_policy_id: "tp-12345",
    #     ingress_point_configuration: {
    #     "SecretArn" => arn:aws:secretsmanager:us-west-2:123456789012:secret:abcde
    #   },
    #     tags: [
    #       {
    #         key: "key",
    #         value: "value"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ingress_point(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "inp-12345"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     ingress_point_name: "IngressPointName", # required
    #     type: "OPEN" # One of: ["OPEN", "AUTH"], # required
    #     rule_set_id: "RuleSetId", # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     ingress_point_configuration: {
    #       # One of:
    #       smtp_password: "SmtpPassword",
    #       secret_arn: "SecretArn"
    #     },
    #     network_configuration: {
    #       # One of:
    #       public_network_configuration: {
    #         ip_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"], # required
    #       },
    #       private_network_configuration: {
    #         vpc_endpoint_id: "VpcEndpointId", # required
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
    #   response = client.create_ingress_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "IngressPointId", # required
    #   }
    # @return [Types::CreateIngressPointResponse]
    def create_ingress_point(params = {}, options = {})
      request = build_request(:create_ingress_point, params)
      request.send_request(options)
    end

    # <p>Creates a relay resource which can be used in rules to relay incoming emails to defined relay destinations. </p>
    # @param [Hash, Types::CreateRelayRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :relay_name
    #   <p>The unique name of the relay resource.</p>
    # @option params [String] :server_name
    #   <p>The destination relay server address.</p>
    # @option params [Integer] :server_port
    #   <p>The destination relay server port.</p>
    # @option params [Types::RelayAuthentication] :authentication
    #   <p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     relay_name: "RelayName", # required
    #     server_name: "RelayServerName", # required
    #     server_port: 1, # required
    #     authentication: { # required
    #       # One of:
    #       secret_arn: "SecretArn",
    #       no_authentication: {
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
    #   response = client.create_relay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relay_id: "RelayId", # required
    #   }
    # @return [Types::CreateRelayResponse]
    def create_relay(params = {}, options = {})
      request = build_request(:create_relay, params)
      request.send_request(options)
    end

    # <p>Provision a new rule set.</p>
    # @param [Hash, Types::CreateRuleSetRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :rule_set_name
    #   <p>A user-friendly name for the rule set.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>Conditional rules that are evaluated for determining actions on email.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     rule_set_name: "RuleSetName", # required
    #     rules: [ # required
    #       {
    #         name: "RuleName",
    #         conditions: [{
    #           # One of:
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "READ_RECEIPT_REQUESTED" # One of: ["READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           },
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MAIL_FROM" # One of: ["MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"],
    #               mime_header_attribute: "MimeHeaderAttribute",
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["RuleStringValue"], # required
    #           },
    #           number_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MESSAGE_SIZE" # One of: ["MESSAGE_SIZE"]
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"], # required
    #             value: 1.0, # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SOURCE_IP" # One of: ["SOURCE_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["RuleIpStringValue"], # required
    #           },
    #           verdict_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SPF" # One of: ["SPF", "DKIM"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["PASS" # One of: ["PASS", "FAIL", "GRAY", "PROCESSING_FAILED"]], # required
    #           },
    #           dmarc_expression: {
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["NONE" # One of: ["NONE", "QUARANTINE", "REJECT"]], # required
    #           }
    #         }],
    #         unless: [{
    #           # One of:
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "READ_RECEIPT_REQUESTED" # One of: ["READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           },
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MAIL_FROM" # One of: ["MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"],
    #               mime_header_attribute: "MimeHeaderAttribute",
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["RuleStringValue"], # required
    #           },
    #           number_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MESSAGE_SIZE" # One of: ["MESSAGE_SIZE"]
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"], # required
    #             value: 1.0, # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SOURCE_IP" # One of: ["SOURCE_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["RuleIpStringValue"], # required
    #           },
    #           verdict_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SPF" # One of: ["SPF", "DKIM"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["PASS" # One of: ["PASS", "FAIL", "GRAY", "PROCESSING_FAILED"]], # required
    #           },
    #           dmarc_expression: {
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["NONE" # One of: ["NONE", "QUARANTINE", "REJECT"]], # required
    #           }
    #         }],
    #         actions: [{ # required
    #           # One of:
    #           drop: {
    #           },
    #           relay: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             relay: "IdOrArn", # required
    #             mail_from: "REPLACE" # One of: ["REPLACE", "PRESERVE"]
    #           },
    #           archive: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             target_archive: "NameOrArn", # required
    #           },
    #           write_to_s3: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             role_arn: "IamRoleArn", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_prefix: "S3Prefix",
    #             s3_sse_kms_key_id: "KmsKeyId"
    #           },
    #           send: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             role_arn: "IamRoleArn", # required
    #           },
    #           add_header: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           replace_recipient: {
    #             replace_with: ["EmailAddress"]
    #           },
    #           deliver_to_mailbox: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             mailbox_arn: "NameOrArn", # required
    #             role_arn: "IamRoleArn", # required
    #           },
    #           deliver_to_q_business: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             application_id: "QBusinessApplicationId", # required
    #             index_id: "QBusinessIndexId", # required
    #             role_arn: "IamRoleArn", # required
    #           },
    #           publish_to_sns: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             topic_arn: "SnsTopicArn", # required
    #             role_arn: "IamRoleArn", # required
    #             encoding: "UTF-8" # One of: ["UTF-8", "BASE64"],
    #             payload_type: "HEADERS" # One of: ["HEADERS", "CONTENT"]
    #           }
    #         }]
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
    #   response = client.create_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_set_id: "RuleSetId", # required
    #   }
    # @return [Types::CreateRuleSetResponse]
    def create_rule_set(params = {}, options = {})
      request = build_request(:create_rule_set, params)
      request.send_request(options)
    end

    # <p>Provision a new traffic policy resource.</p>
    # @param [Hash, Types::CreateTrafficPolicyRequest] params
    # @option params [String] :client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    # @option params [String] :traffic_policy_name
    #   <p>A user-friendly name for the traffic policy resource.</p>
    # @option params [Array<Types::PolicyStatement>] :policy_statements
    #   <p>Conditional statements for filtering email traffic.</p>
    # @option params [String] :default_action
    #   <p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>
    # @option params [Integer] :max_message_size_bytes
    #   <p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Create TrafficPolicy
    #   # Example operation for create_traffic_policy
    #   params = {
    #     traffic_policy_name: "trafficPolicyName",
    #     policy_statements: [
    #       {
    #         conditions: [
    #           {
    #     "IpExpression" => {
    #       "Evaluate" => {
    #         "Attribute" => SENDER_IP
    #       },
    #       "Operator" => CIDR_MATCHES,
    #       "Values" => [0.0.0.0/12]
    #     }
    #   }
    #         ],
    #         action: ALLOW
    #       }
    #     ],
    #     default_action: DENY
    #   }
    #   options = {}
    #   response = client.create_traffic_policy(params, options)
    #   response.to_h #=>
    #   {
    #     traffic_policy_id: "tp-13245"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     traffic_policy_name: "TrafficPolicyName", # required
    #     policy_statements: [ # required
    #       {
    #         conditions: [{ # required
    #           # One of:
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "RECIPIENT" # One of: ["RECIPIENT"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["String"], # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SENDER_IP" # One of: ["SENDER_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["Ipv4Cidr"], # required
    #           },
    #           ipv6_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SENDER_IPV6" # One of: ["SENDER_IPV6"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["Ipv6Cidr"], # required
    #           },
    #           tls_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "TLS_PROTOCOL" # One of: ["TLS_PROTOCOL"]
    #             },
    #             operator: "MINIMUM_TLS_VERSION" # One of: ["MINIMUM_TLS_VERSION", "IS"], # required
    #             value: "TLS1_2" # One of: ["TLS1_2", "TLS1_3"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           }
    #         }],
    #         action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #       }
    #     ],
    #     default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     max_message_size_bytes: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_id: "TrafficPolicyId", # required
    #   }
    # @return [Types::CreateTrafficPolicyResponse]
    def create_traffic_policy(params = {}, options = {})
      request = build_request(:create_traffic_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an Add On instance.</p>
    # @param [Hash, Types::DeleteAddonInstanceRequest] params
    # @option params [String] :addon_instance_id
    #   <p>The Add On instance ID to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     addon_instance_id: "AddonInstanceId", # required
    #   }
    #   options = {}
    #   response = client.delete_addon_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAddonInstanceResponse]
    def delete_addon_instance(params = {}, options = {})
      request = build_request(:delete_addon_instance, params)
      request.send_request(options)
    end

    # <p>Deletes an Add On subscription.</p>
    # @param [Hash, Types::DeleteAddonSubscriptionRequest] params
    # @option params [String] :addon_subscription_id
    #   <p>The Add On subscription ID to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     addon_subscription_id: "AddonSubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.delete_addon_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAddonSubscriptionResponse]
    def delete_addon_subscription(params = {}, options = {})
      request = build_request(:delete_addon_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes an address list.</p>
    # @param [Hash, Types::DeleteAddressListRequest] params
    # @option params [String] :address_list_id
    #   <p>The identifier of an existing address list resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #   }
    #   options = {}
    #   response = client.delete_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAddressListResponse]
    def delete_address_list(params = {}, options = {})
      request = build_request(:delete_address_list, params)
      request.send_request(options)
    end

    # <p>Initiates deletion of an email archive. This changes the archive state to pending deletion. In this state, no new emails can be added, and existing archived emails become inaccessible (search, export, download). The archive and all of its contents will be permanently deleted 30 days after entering the pending deletion state, regardless of the configured retention period. </p>
    # @param [Hash, Types::DeleteArchiveRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteArchiveResponse]
    def delete_archive(params = {}, options = {})
      request = build_request(:delete_archive, params)
      request.send_request(options)
    end

    # <p>Delete an ingress endpoint resource.</p>
    # @param [Hash, Types::DeleteIngressPointRequest] params
    # @option params [String] :ingress_point_id
    #   <p>The identifier of the ingress endpoint resource that you want to delete.</p>
    # @example Delete IngressPoint
    #   # Example operation for delete_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345"
    #   }
    #   options = {}
    #   response = client.delete_ingress_point(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     ingress_point_id: "IngressPointId", # required
    #   }
    #   options = {}
    #   response = client.delete_ingress_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIngressPointResponse]
    def delete_ingress_point(params = {}, options = {})
      request = build_request(:delete_ingress_point, params)
      request.send_request(options)
    end

    # <p>Deletes an existing relay resource.</p>
    # @param [Hash, Types::DeleteRelayRequest] params
    # @option params [String] :relay_id
    #   <p>The unique relay identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relay_id: "RelayId", # required
    #   }
    #   options = {}
    #   response = client.delete_relay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRelayResponse]
    def delete_relay(params = {}, options = {})
      request = build_request(:delete_relay, params)
      request.send_request(options)
    end

    # <p>Delete a rule set.</p>
    # @param [Hash, Types::DeleteRuleSetRequest] params
    # @option params [String] :rule_set_id
    #   <p>The identifier of an existing rule set resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_id: "RuleSetId", # required
    #   }
    #   options = {}
    #   response = client.delete_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleSetResponse]
    def delete_rule_set(params = {}, options = {})
      request = build_request(:delete_rule_set, params)
      request.send_request(options)
    end

    # <p>Delete a traffic policy resource.</p>
    # @param [Hash, Types::DeleteTrafficPolicyRequest] params
    # @option params [String] :traffic_policy_id
    #   <p>The identifier of the traffic policy that you want to delete.</p>
    # @example Delete TrafficPolicy
    #   # Example operation for delete_traffic_policy
    #   params = {
    #     traffic_policy_id: "tp-12345"
    #   }
    #   options = {}
    #   response = client.delete_traffic_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_policy_id: "TrafficPolicyId", # required
    #   }
    #   options = {}
    #   response = client.delete_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrafficPolicyResponse]
    def delete_traffic_policy(params = {}, options = {})
      request = build_request(:delete_traffic_policy, params)
      request.send_request(options)
    end

    # <p>Removes a member from an address list.</p>
    # @param [Hash, Types::DeregisterMemberFromAddressListRequest] params
    # @option params [String] :address_list_id
    #   <p>The unique identifier of the address list to remove the address from.</p>
    # @option params [String] :address
    #   <p>The address to be removed from the address list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #     address: "Address", # required
    #   }
    #   options = {}
    #   response = client.deregister_member_from_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterMemberFromAddressListResponse]
    def deregister_member_from_address_list(params = {}, options = {})
      request = build_request(:deregister_member_from_address_list, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about an Add On instance.</p>
    # @param [Hash, Types::GetAddonInstanceRequest] params
    # @option params [String] :addon_instance_id
    #   <p>The Add On instance ID to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     addon_instance_id: "AddonInstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_addon_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_subscription_id: "AddonSubscriptionId",
    #     addon_name: "AddonName",
    #     addon_instance_arn: "AddonInstanceArn",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::GetAddonInstanceResponse]
    def get_addon_instance(params = {}, options = {})
      request = build_request(:get_addon_instance, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about an Add On subscription.</p>
    # @param [Hash, Types::GetAddonSubscriptionRequest] params
    # @option params [String] :addon_subscription_id
    #   <p>The Add On subscription ID to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     addon_subscription_id: "AddonSubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.get_addon_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_name: "AddonName",
    #     addon_subscription_arn: "AddonSubscriptionArn",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::GetAddonSubscriptionResponse]
    def get_addon_subscription(params = {}, options = {})
      request = build_request(:get_addon_subscription, params)
      request.send_request(options)
    end

    # <p>Fetch attributes of an address list.</p>
    # @param [Hash, Types::GetAddressListRequest] params
    # @option params [String] :address_list_id
    #   <p>The identifier of an existing address list resource to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #   }
    #   options = {}
    #   response = client.get_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address_list_id: "AddressListId", # required
    #     address_list_arn: "AddressListArn", # required
    #     address_list_name: "AddressListName", # required
    #     created_timestamp: Time.now, # required
    #     last_updated_timestamp: Time.now, # required
    #   }
    # @return [Types::GetAddressListResponse]
    def get_address_list(params = {}, options = {})
      request = build_request(:get_address_list, params)
      request.send_request(options)
    end

    # <p>Fetch attributes of an import job.</p>
    # @param [Hash, Types::GetAddressListImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the import job that needs to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_address_list_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     name: "JobName", # required
    #     status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "STOPPED"], # required
    #     pre_signed_url: "PreSignedUrl", # required
    #     imported_items_count: 1,
    #     failed_items_count: 1,
    #     import_data_format: { # required
    #       import_data_type: "CSV" # One of: ["CSV", "JSON"], # required
    #     },
    #     address_list_id: "AddressListId", # required
    #     created_timestamp: Time.now, # required
    #     start_timestamp: Time.now,
    #     completed_timestamp: Time.now,
    #     error: "ErrorMessage"
    #   }
    # @return [Types::GetAddressListImportJobResponse]
    def get_address_list_import_job(params = {}, options = {})
      request = build_request(:get_address_list_import_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the full details and current state of a specified email archive.</p>
    # @param [Hash, Types::GetArchiveRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveIdString", # required
    #   }
    #   options = {}
    #   response = client.get_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_id: "ArchiveIdString", # required
    #     archive_name: "ArchiveNameString", # required
    #     archive_arn: "ArchiveArn", # required
    #     archive_state: "ACTIVE" # One of: ["ACTIVE", "PENDING_DELETION"], # required
    #     retention: { # required
    #       # One of:
    #       retention_period: "THREE_MONTHS" # One of: ["THREE_MONTHS", "SIX_MONTHS", "NINE_MONTHS", "ONE_YEAR", "EIGHTEEN_MONTHS", "TWO_YEARS", "THIRTY_MONTHS", "THREE_YEARS", "FOUR_YEARS", "FIVE_YEARS", "SIX_YEARS", "SEVEN_YEARS", "EIGHT_YEARS", "NINE_YEARS", "TEN_YEARS", "PERMANENT"]
    #     },
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now,
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetArchiveResponse]
    def get_archive(params = {}, options = {})
      request = build_request(:get_archive, params)
      request.send_request(options)
    end

    # <p>Retrieves the details and current status of a specific email archive export job.</p>
    # @param [Hash, Types::GetArchiveExportRequest] params
    # @option params [String] :export_id
    #   <p>The identifier of the export job to get details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_id: "ExportId", # required
    #   }
    #   options = {}
    #   response = client.get_archive_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_id: "ArchiveId",
    #     filters: {
    #       include: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }],
    #       unless: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }]
    #     },
    #     from_timestamp: Time.now,
    #     to_timestamp: Time.now,
    #     max_results: 1,
    #     export_destination_configuration: {
    #       # One of:
    #       s3: {
    #         s3_location: "S3Location"
    #       }
    #     },
    #     status: {
    #       submission_timestamp: Time.now,
    #       completion_timestamp: Time.now,
    #       state: "QUEUED" # One of: ["QUEUED", "PREPROCESSING", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"],
    #       error_message: "ErrorMessage"
    #     }
    #   }
    # @return [Types::GetArchiveExportResponse]
    def get_archive_export(params = {}, options = {})
      request = build_request(:get_archive_export, params)
      request.send_request(options)
    end

    # <p>Returns a pre-signed URL that provides temporary download access to the specific email message stored in the archive. </p>
    # @param [Hash, Types::GetArchiveMessageRequest] params
    # @option params [String] :archived_message_id
    #   <p>The unique identifier of the archived email message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archived_message_id: "ArchivedMessageId", # required
    #   }
    #   options = {}
    #   response = client.get_archive_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_download_link: "S3PresignedURL",
    #     metadata: {
    #       timestamp: Time.now,
    #       ingress_point_id: "IngressPointId",
    #       traffic_policy_id: "TrafficPolicyId",
    #       rule_set_id: "RuleSetId",
    #       sender_hostname: "String",
    #       sender_ip_address: "SenderIpAddress",
    #       tls_cipher_suite: "String",
    #       tls_protocol: "String",
    #       sending_method: "String",
    #       source_identity: "String",
    #       sending_pool: "String",
    #       configuration_set: "String",
    #       source_arn: "String"
    #     },
    #     envelope: {
    #       helo: "String",
    #       from: "String",
    #       to: ["String"]
    #     }
    #   }
    # @return [Types::GetArchiveMessageResponse]
    def get_archive_message(params = {}, options = {})
      request = build_request(:get_archive_message, params)
      request.send_request(options)
    end

    # <p>Returns the textual content of a specific email message stored in the archive. Attachments are not included. </p>
    # @param [Hash, Types::GetArchiveMessageContentRequest] params
    # @option params [String] :archived_message_id
    #   <p>The unique identifier of the archived email message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archived_message_id: "ArchivedMessageId", # required
    #   }
    #   options = {}
    #   response = client.get_archive_message_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: {
    #       text: "String",
    #       html: "String",
    #       message_malformed: false
    #     }
    #   }
    # @return [Types::GetArchiveMessageContentResponse]
    def get_archive_message_content(params = {}, options = {})
      request = build_request(:get_archive_message_content, params)
      request.send_request(options)
    end

    # <p>Retrieves the details and current status of a specific email archive search job.</p>
    # @param [Hash, Types::GetArchiveSearchRequest] params
    # @option params [String] :search_id
    #   <p>The identifier of the search job to get details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_id: "SearchId", # required
    #   }
    #   options = {}
    #   response = client.get_archive_search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_id: "ArchiveId",
    #     filters: {
    #       include: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }],
    #       unless: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }]
    #     },
    #     from_timestamp: Time.now,
    #     to_timestamp: Time.now,
    #     max_results: 1,
    #     status: {
    #       submission_timestamp: Time.now,
    #       completion_timestamp: Time.now,
    #       state: "QUEUED" # One of: ["QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"],
    #       error_message: "ErrorMessage"
    #     }
    #   }
    # @return [Types::GetArchiveSearchResponse]
    def get_archive_search(params = {}, options = {})
      request = build_request(:get_archive_search, params)
      request.send_request(options)
    end

    # <p>Returns the results of a completed email archive search job.</p>
    # @param [Hash, Types::GetArchiveSearchResultsRequest] params
    # @option params [String] :search_id
    #   <p>The identifier of the completed search job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_id: "SearchId", # required
    #   }
    #   options = {}
    #   response = client.get_archive_search_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rows: [
    #       {
    #         archived_message_id: "ArchivedMessageId",
    #         received_timestamp: Time.now,
    #         date: "String",
    #         to: "String",
    #         from: "String",
    #         cc: "String",
    #         subject: "String",
    #         message_id: "String",
    #         has_attachments: false,
    #         received_headers: ["String"],
    #         in_reply_to: "String",
    #         x_mailer: "String",
    #         x_original_mailer: "String",
    #         x_priority: "String",
    #         ingress_point_id: "IngressPointId",
    #         sender_hostname: "String",
    #         sender_ip_address: "SenderIpAddress",
    #         envelope: {
    #           helo: "String",
    #           from: "String",
    #           to: ["String"]
    #         },
    #         source_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetArchiveSearchResultsResponse]
    def get_archive_search_results(params = {}, options = {})
      request = build_request(:get_archive_search_results, params)
      request.send_request(options)
    end

    # <p>Fetch ingress endpoint resource attributes.</p>
    # @param [Hash, Types::GetIngressPointRequest] params
    # @option params [String] :ingress_point_id
    #   <p>The identifier of an ingress endpoint.</p>
    # @example Get Open IngressPoint
    #   # Example operation for get_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345"
    #   }
    #   options = {}
    #   response = client.get_ingress_point(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "inp-12345",
    #     ingress_point_name: "ingressPointName",
    #     ingress_point_arn: "arn:aws:ses:us-east-1:123456789012:mailmanager-ingress-point/inp-12345",
    #     status: ACTIVE,
    #     type: OPEN,
    #     a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com"
    #   }
    # @example Get Auth IngressPoint
    #   # Example operation for get_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345"
    #   }
    #   options = {}
    #   response = client.get_ingress_point(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "inp-12345",
    #     ingress_point_name: "ingressPointName",
    #     ingress_point_arn: "arn:aws:ses:us-east-1:123456789012:mailmanager-ingress-point/inp-12345",
    #     status: ACTIVE,
    #     ingress_point_auth_configuration: {
    #       secret_arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:abcde"
    #     },
    #     type: AUTH,
    #     a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ingress_point_id: "IngressPointId", # required
    #   }
    #   options = {}
    #   response = client.get_ingress_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingress_point_id: "IngressPointId", # required
    #     ingress_point_name: "IngressPointName", # required
    #     ingress_point_arn: "IngressPointArn",
    #     status: "PROVISIONING" # One of: ["PROVISIONING", "DEPROVISIONING", "UPDATING", "ACTIVE", "CLOSED", "FAILED"],
    #     type: "OPEN" # One of: ["OPEN", "AUTH"],
    #     a_record: "IngressPointARecord",
    #     rule_set_id: "RuleSetId",
    #     traffic_policy_id: "TrafficPolicyId",
    #     ingress_point_auth_configuration: {
    #       ingress_point_password_configuration: {
    #         smtp_password_version: "String",
    #         previous_smtp_password_version: "String",
    #         previous_smtp_password_expiry_timestamp: Time.now
    #       },
    #       secret_arn: "SecretArn"
    #     },
    #     network_configuration: {
    #       # One of:
    #       public_network_configuration: {
    #         ip_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"], # required
    #       },
    #       private_network_configuration: {
    #         vpc_endpoint_id: "VpcEndpointId", # required
    #       }
    #     },
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::GetIngressPointResponse]
    def get_ingress_point(params = {}, options = {})
      request = build_request(:get_ingress_point, params)
      request.send_request(options)
    end

    # <p>Fetch attributes of a member in an address list.</p>
    # @param [Hash, Types::GetMemberOfAddressListRequest] params
    # @option params [String] :address_list_id
    #   <p>The unique identifier of the address list to retrieve the address from.</p>
    # @option params [String] :address
    #   <p>The address to be retrieved from the address list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #     address: "Address", # required
    #   }
    #   options = {}
    #   response = client.get_member_of_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address: "Address", # required
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::GetMemberOfAddressListResponse]
    def get_member_of_address_list(params = {}, options = {})
      request = build_request(:get_member_of_address_list, params)
      request.send_request(options)
    end

    # <p>Fetch the relay resource and it's attributes.</p>
    # @param [Hash, Types::GetRelayRequest] params
    # @option params [String] :relay_id
    #   <p>A unique relay identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relay_id: "RelayId", # required
    #   }
    #   options = {}
    #   response = client.get_relay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relay_id: "RelayId", # required
    #     relay_arn: "RelayArn",
    #     relay_name: "RelayName",
    #     server_name: "RelayServerName",
    #     server_port: 1,
    #     authentication: {
    #       # One of:
    #       secret_arn: "SecretArn",
    #       no_authentication: {
    #       }
    #     },
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now
    #   }
    # @return [Types::GetRelayResponse]
    def get_relay(params = {}, options = {})
      request = build_request(:get_relay, params)
      request.send_request(options)
    end

    # <p>Fetch attributes of a rule set.</p>
    # @param [Hash, Types::GetRuleSetRequest] params
    # @option params [String] :rule_set_id
    #   <p>The identifier of an existing rule set to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_id: "RuleSetId", # required
    #   }
    #   options = {}
    #   response = client.get_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_set_id: "RuleSetId", # required
    #     rule_set_arn: "RuleSetArn", # required
    #     rule_set_name: "RuleSetName", # required
    #     created_date: Time.now, # required
    #     last_modification_date: Time.now, # required
    #     rules: [ # required
    #       {
    #         name: "RuleName",
    #         conditions: [{
    #           # One of:
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "READ_RECEIPT_REQUESTED" # One of: ["READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           },
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MAIL_FROM" # One of: ["MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"],
    #               mime_header_attribute: "MimeHeaderAttribute",
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["RuleStringValue"], # required
    #           },
    #           number_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MESSAGE_SIZE" # One of: ["MESSAGE_SIZE"]
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"], # required
    #             value: 1.0, # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SOURCE_IP" # One of: ["SOURCE_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["RuleIpStringValue"], # required
    #           },
    #           verdict_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SPF" # One of: ["SPF", "DKIM"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["PASS" # One of: ["PASS", "FAIL", "GRAY", "PROCESSING_FAILED"]], # required
    #           },
    #           dmarc_expression: {
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["NONE" # One of: ["NONE", "QUARANTINE", "REJECT"]], # required
    #           }
    #         }],
    #         unless: [{
    #           # One of:
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "READ_RECEIPT_REQUESTED" # One of: ["READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           },
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MAIL_FROM" # One of: ["MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"],
    #               mime_header_attribute: "MimeHeaderAttribute",
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["RuleStringValue"], # required
    #           },
    #           number_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MESSAGE_SIZE" # One of: ["MESSAGE_SIZE"]
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"], # required
    #             value: 1.0, # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SOURCE_IP" # One of: ["SOURCE_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["RuleIpStringValue"], # required
    #           },
    #           verdict_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SPF" # One of: ["SPF", "DKIM"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["PASS" # One of: ["PASS", "FAIL", "GRAY", "PROCESSING_FAILED"]], # required
    #           },
    #           dmarc_expression: {
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["NONE" # One of: ["NONE", "QUARANTINE", "REJECT"]], # required
    #           }
    #         }],
    #         actions: [{ # required
    #           # One of:
    #           drop: {
    #           },
    #           relay: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             relay: "IdOrArn", # required
    #             mail_from: "REPLACE" # One of: ["REPLACE", "PRESERVE"]
    #           },
    #           archive: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             target_archive: "NameOrArn", # required
    #           },
    #           write_to_s3: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             role_arn: "IamRoleArn", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_prefix: "S3Prefix",
    #             s3_sse_kms_key_id: "KmsKeyId"
    #           },
    #           send: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             role_arn: "IamRoleArn", # required
    #           },
    #           add_header: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           replace_recipient: {
    #             replace_with: ["EmailAddress"]
    #           },
    #           deliver_to_mailbox: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             mailbox_arn: "NameOrArn", # required
    #             role_arn: "IamRoleArn", # required
    #           },
    #           deliver_to_q_business: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             application_id: "QBusinessApplicationId", # required
    #             index_id: "QBusinessIndexId", # required
    #             role_arn: "IamRoleArn", # required
    #           },
    #           publish_to_sns: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             topic_arn: "SnsTopicArn", # required
    #             role_arn: "IamRoleArn", # required
    #             encoding: "UTF-8" # One of: ["UTF-8", "BASE64"],
    #             payload_type: "HEADERS" # One of: ["HEADERS", "CONTENT"]
    #           }
    #         }]
    #       }
    #     ]
    #   }
    # @return [Types::GetRuleSetResponse]
    def get_rule_set(params = {}, options = {})
      request = build_request(:get_rule_set, params)
      request.send_request(options)
    end

    # <p>Fetch attributes of a traffic policy resource.</p>
    # @param [Hash, Types::GetTrafficPolicyRequest] params
    # @option params [String] :traffic_policy_id
    #   <p>The identifier of the traffic policy resource.</p>
    # @example Get TrafficPolicy
    #   # Example operation for get_traffic_policy
    #   params = {
    #     traffic_policy_id: "tp-12345"
    #   }
    #   options = {}
    #   response = client.get_traffic_policy(params, options)
    #   response.to_h #=>
    #   {
    #     traffic_policy_name: "trafficPolicyName",
    #     traffic_policy_id: "tp-12345",
    #     traffic_policy_arn: "arn:aws:ses:us-east-1:123456789012:mailmanager-traffic-policy/tp-12345",
    #     policy_statements: [
    #       {
    #         conditions: [
    #           {
    #     "StringExpression" => {
    #       "Evaluate" => {
    #         "Attribute" => RECIPIENT
    #       },
    #       "Operator" => EQUALS,
    #       "Values" => [
    #         example@amazon.com,
    #         example@gmail.com
    #       ]
    #     }
    #   }
    #         ],
    #         action: ALLOW
    #       }
    #     ],
    #     default_action: DENY,
    #     max_message_size_bytes: 1000
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_policy_id: "TrafficPolicyId", # required
    #   }
    #   options = {}
    #   response = client.get_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_name: "TrafficPolicyName", # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_arn: "TrafficPolicyArn",
    #     policy_statements: [
    #       {
    #         conditions: [{ # required
    #           # One of:
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "RECIPIENT" # One of: ["RECIPIENT"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["String"], # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SENDER_IP" # One of: ["SENDER_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["Ipv4Cidr"], # required
    #           },
    #           ipv6_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SENDER_IPV6" # One of: ["SENDER_IPV6"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["Ipv6Cidr"], # required
    #           },
    #           tls_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "TLS_PROTOCOL" # One of: ["TLS_PROTOCOL"]
    #             },
    #             operator: "MINIMUM_TLS_VERSION" # One of: ["MINIMUM_TLS_VERSION", "IS"], # required
    #             value: "TLS1_2" # One of: ["TLS1_2", "TLS1_3"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           }
    #         }],
    #         action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #       }
    #     ],
    #     max_message_size_bytes: 1,
    #     default_action: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::GetTrafficPolicyResponse]
    def get_traffic_policy(params = {}, options = {})
      request = build_request(:get_traffic_policy, params)
      request.send_request(options)
    end

    # <p>Lists all Add On instances in your account.</p>
    # @param [Hash, Types::ListAddonInstancesRequest] params
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_addon_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_instances: [
    #       {
    #         addon_instance_id: "AddonInstanceId",
    #         addon_subscription_id: "AddonSubscriptionId",
    #         addon_name: "AddonName",
    #         addon_instance_arn: "AddonInstanceArn",
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAddonInstancesResponse]
    def list_addon_instances(params = {}, options = {})
      request = build_request(:list_addon_instances, params)
      request.send_request(options)
    end

    # <p>Lists all Add On subscriptions in your account.</p>
    # @param [Hash, Types::ListAddonSubscriptionsRequest] params
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_addon_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_subscriptions: [
    #       {
    #         addon_subscription_id: "AddonSubscriptionId",
    #         addon_name: "AddonName",
    #         addon_subscription_arn: "AddonSubscriptionArn",
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAddonSubscriptionsResponse]
    def list_addon_subscriptions(params = {}, options = {})
      request = build_request(:list_addon_subscriptions, params)
      request.send_request(options)
    end

    # <p>Lists jobs for an address list.</p>
    # @param [Hash, Types::ListAddressListImportJobsRequest] params
    # @option params [String] :address_list_id
    #   <p>The unique identifier of the address list for listing import jobs.</p>
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of import jobs that are returned per call. You can use NextToken to retrieve the next page of jobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_address_list_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_jobs: [ # required
    #       {
    #         job_id: "JobId", # required
    #         name: "JobName", # required
    #         status: "CREATED" # One of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED", "STOPPED"], # required
    #         pre_signed_url: "PreSignedUrl", # required
    #         imported_items_count: 1,
    #         failed_items_count: 1,
    #         import_data_format: { # required
    #           import_data_type: "CSV" # One of: ["CSV", "JSON"], # required
    #         },
    #         address_list_id: "AddressListId", # required
    #         created_timestamp: Time.now, # required
    #         start_timestamp: Time.now,
    #         completed_timestamp: Time.now,
    #         error: "ErrorMessage"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAddressListImportJobsResponse]
    def list_address_list_import_jobs(params = {}, options = {})
      request = build_request(:list_address_list_import_jobs, params)
      request.send_request(options)
    end

    # <p>Lists address lists for this account.</p>
    # @param [Hash, Types::ListAddressListsRequest] params
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of address list resources that are returned per call. You can use NextToken to retrieve the next page of address lists.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_address_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address_lists: [ # required
    #       {
    #         address_list_id: "AddressListId", # required
    #         address_list_arn: "AddressListArn", # required
    #         address_list_name: "AddressListName", # required
    #         created_timestamp: Time.now, # required
    #         last_updated_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAddressListsResponse]
    def list_address_lists(params = {}, options = {})
      request = build_request(:list_address_lists, params)
      request.send_request(options)
    end

    # <p>Returns a list of email archive export jobs.</p>
    # @param [Hash, Types::ListArchiveExportsRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive.</p>
    # @option params [String] :next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of archive export jobs that are returned per call. You can use NextToken to obtain further pages of archives. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveId", # required
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_archive_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exports: [
    #       {
    #         export_id: "ExportId",
    #         status: {
    #           submission_timestamp: Time.now,
    #           completion_timestamp: Time.now,
    #           state: "QUEUED" # One of: ["QUEUED", "PREPROCESSING", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"],
    #           error_message: "ErrorMessage"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListArchiveExportsResponse]
    def list_archive_exports(params = {}, options = {})
      request = build_request(:list_archive_exports, params)
      request.send_request(options)
    end

    # <p>Returns a list of email archive search jobs.</p>
    # @param [Hash, Types::ListArchiveSearchesRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive.</p>
    # @option params [String] :next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of archive search jobs that are returned per call. You can use NextToken to obtain further pages of archives. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveId", # required
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_archive_searches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     searches: [
    #       {
    #         search_id: "SearchId",
    #         status: {
    #           submission_timestamp: Time.now,
    #           completion_timestamp: Time.now,
    #           state: "QUEUED" # One of: ["QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"],
    #           error_message: "ErrorMessage"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListArchiveSearchesResponse]
    def list_archive_searches(params = {}, options = {})
      request = build_request(:list_archive_searches, params)
      request.send_request(options)
    end

    # <p>Returns a list of all email archives in your account.</p>
    # @param [Hash, Types::ListArchivesRequest] params
    # @option params [String] :next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of archives that are returned per call. You can use NextToken to obtain further pages of archives. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_archives(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archives: [ # required
    #       {
    #         archive_id: "ArchiveIdString", # required
    #         archive_name: "ArchiveNameString",
    #         archive_state: "ACTIVE" # One of: ["ACTIVE", "PENDING_DELETION"],
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListArchivesResponse]
    def list_archives(params = {}, options = {})
      request = build_request(:list_archives, params)
      request.send_request(options)
    end

    # <p>List all ingress endpoint resources.</p>
    # @param [Hash, Types::ListIngressPointsRequest] params
    # @option params [Integer] :page_size
    #   <p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints.</p>
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @example List IngressPoints
    #   # Example operation for list_ingress_points
    #   params = {}
    #   options = {}
    #   response = client.list_ingress_points(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_points: [
    #       {
    #         ingress_point_id: "inp-12345",
    #         ingress_point_name: "ingressPointName",
    #         status: ACTIVE,
    #         type: OPEN,
    #         a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com"
    #       }
    #     ]
    #   }
    # @example List IngressPoints with PageSize
    #   # Example operation for list_ingress_points
    #   params = {
    #     page_size: 10
    #   }
    #   options = {}
    #   response = client.list_ingress_points(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_points: [
    #       {
    #         ingress_point_id: "inp-12345",
    #         ingress_point_name: "ingressPointName",
    #         status: ACTIVE,
    #         type: OPEN,
    #         a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com"
    #       }
    #     ]
    #   }
    # @example List IngressPoints with NextToken
    #   # Example operation for list_ingress_points
    #   params = {
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_ingress_points(params, options)
    #   response.to_h #=>
    #   {
    #     ingress_points: [
    #       {
    #         ingress_point_id: "inp-12345",
    #         ingress_point_name: "ingressPointName",
    #         status: ACTIVE,
    #         type: OPEN,
    #         a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_ingress_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingress_points: [
    #       {
    #         ingress_point_name: "IngressPointName", # required
    #         ingress_point_id: "IngressPointId", # required
    #         status: "PROVISIONING" # One of: ["PROVISIONING", "DEPROVISIONING", "UPDATING", "ACTIVE", "CLOSED", "FAILED"], # required
    #         type: "OPEN" # One of: ["OPEN", "AUTH"], # required
    #         a_record: "IngressPointARecord"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListIngressPointsResponse]
    def list_ingress_points(params = {}, options = {})
      request = build_request(:list_ingress_points, params)
      request.send_request(options)
    end

    # <p>Lists members of an address list.</p>
    # @param [Hash, Types::ListMembersOfAddressListRequest] params
    # @option params [String] :address_list_id
    #   <p>The unique identifier of the address list to list the addresses from.</p>
    # @option params [Types::AddressFilter] :filter
    #   <p>Filter to be used to limit the results.</p>
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of address list members that are returned per call. You can use NextToken to retrieve the next page of members.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #     filter: {
    #       address_prefix: "AddressPrefix"
    #     },
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_members_of_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addresses: [ # required
    #       {
    #         address: "Address", # required
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMembersOfAddressListResponse]
    def list_members_of_address_list(params = {}, options = {})
      request = build_request(:list_members_of_address_list, params)
      request.send_request(options)
    end

    # <p>Lists all the existing relay resources.</p>
    # @param [Hash, Types::ListRelaysRequest] params
    # @option params [Integer] :page_size
    #   <p>The number of relays to be returned in one request.</p>
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_relays(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relays: [ # required
    #       {
    #         relay_id: "RelayId",
    #         relay_name: "RelayName",
    #         last_modified_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRelaysResponse]
    def list_relays(params = {}, options = {})
      request = build_request(:list_relays, params)
      request.send_request(options)
    end

    # <p>List rule sets for this account.</p>
    # @param [Hash, Types::ListRuleSetsRequest] params
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of rule set resources that are returned per call. You can use NextToken to obtain further rule sets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_rule_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_sets: [ # required
    #       {
    #         rule_set_id: "RuleSetId",
    #         rule_set_name: "RuleSetName",
    #         last_modification_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRuleSetsResponse]
    def list_rule_sets(params = {}, options = {})
      request = build_request(:list_rule_sets, params)
      request.send_request(options)
    end

    # <p> Retrieves the list of tags (keys and values) assigned to the resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to retrieve tags from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
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

    # <p>List traffic policy resources.</p>
    # @param [Hash, Types::ListTrafficPoliciesRequest] params
    # @option params [Integer] :page_size
    #   <p>The maximum number of traffic policy resources that are returned per call. You can use NextToken to obtain further traffic policies.</p>
    # @option params [String] :next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    # @example List TrafficPolicies
    #   # Example operation for list_traffic_policies
    #   params = {}
    #   options = {}
    #   response = client.list_traffic_policies(params, options)
    #   response.to_h #=>
    #   {
    #     traffic_policies: [
    #       {
    #         traffic_policy_id: "tp-12345",
    #         traffic_policy_name: "trafficPolicyName",
    #         default_action: DENY
    #       }
    #     ]
    #   }
    # @example List TrafficPolicies with PageSize
    #   # Example operation for list_traffic_policies
    #   params = {
    #     page_size: 10
    #   }
    #   options = {}
    #   response = client.list_traffic_policies(params, options)
    #   response.to_h #=>
    #   {
    #     traffic_policies: [
    #       {
    #         traffic_policy_id: "tp-12345",
    #         traffic_policy_name: "trafficPolicyName",
    #         default_action: DENY
    #       }
    #     ]
    #   }
    # @example List TrafficPolicies with NextToken
    #   # Example operation for list_traffic_policies
    #   params = {
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_traffic_policies(params, options)
    #   response.to_h #=>
    #   {
    #     traffic_policies: [
    #       {
    #         traffic_policy_id: "tp-12345",
    #         traffic_policy_name: "trafficPolicyName",
    #         default_action: DENY
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_traffic_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policies: [
    #       {
    #         traffic_policy_name: "TrafficPolicyName", # required
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         default_action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTrafficPoliciesResponse]
    def list_traffic_policies(params = {}, options = {})
      request = build_request(:list_traffic_policies, params)
      request.send_request(options)
    end

    # <p>Adds a member to an address list.</p>
    # @param [Hash, Types::RegisterMemberToAddressListRequest] params
    # @option params [String] :address_list_id
    #   <p>The unique identifier of the address list where the address should be added.</p>
    # @option params [String] :address
    #   <p>The address to be added to the address list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address_list_id: "AddressListId", # required
    #     address: "Address", # required
    #   }
    #   options = {}
    #   response = client.register_member_to_address_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterMemberToAddressListResponse]
    def register_member_to_address_list(params = {}, options = {})
      request = build_request(:register_member_to_address_list, params)
      request.send_request(options)
    end

    # <p>Starts an import job for an address list.</p>
    # @param [Hash, Types::StartAddressListImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the import job that needs to be started.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.start_address_list_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartAddressListImportJobResponse]
    def start_address_list_import_job(params = {}, options = {})
      request = build_request(:start_address_list_import_job, params)
      request.send_request(options)
    end

    # <p>Initiates an export of emails from the specified archive.</p>
    # @param [Hash, Types::StartArchiveExportRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive to export emails from.</p>
    # @option params [Types::ArchiveFilters] :filters
    #   <p>Criteria to filter which emails are included in the export.</p>
    # @option params [Time] :from_timestamp
    #   <p>The start of the timestamp range to include emails from.</p>
    # @option params [Time] :to_timestamp
    #   <p>The end of the timestamp range to include emails from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of email items to include in the export.</p>
    # @option params [Types::ExportDestinationConfiguration] :export_destination_configuration
    #   <p>Details on where to deliver the exported email data.</p>
    # @option params [Boolean] :include_metadata
    #   <p>Whether to include message metadata as JSON files in the export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveId", # required
    #     filters: {
    #       include: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }],
    #       unless: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }]
    #     },
    #     from_timestamp: Time.now, # required
    #     to_timestamp: Time.now, # required
    #     max_results: 1,
    #     export_destination_configuration: { # required
    #       # One of:
    #       s3: {
    #         s3_location: "S3Location"
    #       }
    #     },
    #     include_metadata: false
    #   }
    #   options = {}
    #   response = client.start_archive_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_id: "ExportId"
    #   }
    # @return [Types::StartArchiveExportResponse]
    def start_archive_export(params = {}, options = {})
      request = build_request(:start_archive_export, params)
      request.send_request(options)
    end

    # <p>Initiates a search across emails in the specified archive.</p>
    # @param [Hash, Types::StartArchiveSearchRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive to search emails in.</p>
    # @option params [Types::ArchiveFilters] :filters
    #   <p>Criteria to filter which emails are included in the search results.</p>
    # @option params [Time] :from_timestamp
    #   <p>The start timestamp of the range to search emails from.</p>
    # @option params [Time] :to_timestamp
    #   <p>The end timestamp of the range to search emails from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of search results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveId", # required
    #     filters: {
    #       include: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }],
    #       unless: [{
    #         # One of:
    #         string_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "TO" # One of: ["TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"]
    #           },
    #           operator: "CONTAINS" # One of: ["CONTAINS"], # required
    #           values: ["StringValue"], # required
    #         },
    #         boolean_expression: {
    #           evaluate: { # required
    #             # One of:
    #             attribute: "HAS_ATTACHMENTS" # One of: ["HAS_ATTACHMENTS"]
    #           },
    #           operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #         }
    #       }]
    #     },
    #     from_timestamp: Time.now, # required
    #     to_timestamp: Time.now, # required
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.start_archive_search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     search_id: "SearchId"
    #   }
    # @return [Types::StartArchiveSearchResponse]
    def start_archive_search(params = {}, options = {})
      request = build_request(:start_archive_search, params)
      request.send_request(options)
    end

    # <p>Stops an ongoing import job for an address list.</p>
    # @param [Hash, Types::StopAddressListImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the import job that needs to be stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_address_list_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopAddressListImportJobResponse]
    def stop_address_list_import_job(params = {}, options = {})
      request = build_request(:stop_address_list_import_job, params)
      request.send_request(options)
    end

    # <p>Stops an in-progress export of emails from an archive.</p>
    # @param [Hash, Types::StopArchiveExportRequest] params
    # @option params [String] :export_id
    #   <p>The identifier of the export job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_id: "ExportId", # required
    #   }
    #   options = {}
    #   response = client.stop_archive_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopArchiveExportResponse]
    def stop_archive_export(params = {}, options = {})
      request = build_request(:stop_archive_export, params)
      request.send_request(options)
    end

    # <p>Stops an in-progress archive search job.</p>
    # @param [Hash, Types::StopArchiveSearchRequest] params
    # @option params [String] :search_id
    #   <p>The identifier of the search job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_id: "SearchId", # required
    #   }
    #   options = {}
    #   response = client.stop_archive_search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopArchiveSearchResponse]
    def stop_archive_search(params = {}, options = {})
      request = build_request(:stop_archive_search, params)
      request.send_request(options)
    end

    # <p> Adds one or more tags (keys and values) to a specified resource. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to tag. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # <p> Remove one or more tags (keys and values) from a specified resource. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to untag. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> The keys of the key-value pairs for the tag or tags you want to remove from the specified resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # <p>Updates the attributes of an existing email archive.</p>
    # @param [Hash, Types::UpdateArchiveRequest] params
    # @option params [String] :archive_id
    #   <p>The identifier of the archive to update.</p>
    # @option params [String] :archive_name
    #   <p>A new, unique name for the archive.</p>
    # @option params [Types::ArchiveRetention] :retention
    #   <p>A new retention period for emails in the archive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_id: "ArchiveIdString", # required
    #     archive_name: "ArchiveNameString",
    #     retention: {
    #       # One of:
    #       retention_period: "THREE_MONTHS" # One of: ["THREE_MONTHS", "SIX_MONTHS", "NINE_MONTHS", "ONE_YEAR", "EIGHTEEN_MONTHS", "TWO_YEARS", "THIRTY_MONTHS", "THREE_YEARS", "FOUR_YEARS", "FIVE_YEARS", "SIX_YEARS", "SEVEN_YEARS", "EIGHT_YEARS", "NINE_YEARS", "TEN_YEARS", "PERMANENT"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateArchiveResponse]
    def update_archive(params = {}, options = {})
      request = build_request(:update_archive, params)
      request.send_request(options)
    end

    # <p>Update attributes of a provisioned ingress endpoint resource.</p>
    # @param [Hash, Types::UpdateIngressPointRequest] params
    # @option params [String] :ingress_point_id
    #   <p>The identifier for the ingress endpoint you want to update.</p>
    # @option params [String] :ingress_point_name
    #   <p>A user friendly name for the ingress endpoint resource.</p>
    # @option params [String] :status_to_update
    #   <p>The update status of an ingress endpoint.</p>
    # @option params [String] :rule_set_id
    #   <p>The identifier of an existing rule set that you attach to an ingress endpoint resource.</p>
    # @option params [String] :traffic_policy_id
    #   <p>The identifier of an existing traffic policy that you attach to an ingress endpoint resource.</p>
    # @option params [Types::IngressPointConfiguration] :ingress_point_configuration
    #   <p>If you choose an Authenticated ingress endpoint, you must configure either an SMTP password or a secret ARN.</p>
    # @example Update Open/Auth IngressPoint with new Name
    #   # Example operation for update_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345",
    #     ingress_point_name: "ingressPointNewName"
    #   }
    #   options = {}
    #   response = client.update_ingress_point(params, options)
    #   response.to_h #=>
    #   {}
    # @example Update Open/Auth IngressPoint with new RuleSetId / TrafficPolicyId
    #   # Example operation for update_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345",
    #     rule_set_id: "rs-12345",
    #     traffic_policy_id: "tp-12345"
    #   }
    #   options = {}
    #   response = client.update_ingress_point(params, options)
    #   response.to_h #=>
    #   {}
    # @example Update Auth IngressPoint with new SmtpPassword
    #   # Example operation for update_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345",
    #     ingress_point_configuration: {
    #     "SmtpPassword" => newSmtpPassword
    #   }
    #   }
    #   options = {}
    #   response = client.update_ingress_point(params, options)
    #   response.to_h #=>
    #   {}
    # @example Update Auth IngressPoint with new SecretArn
    #   # Example operation for update_ingress_point
    #   params = {
    #     ingress_point_id: "inp-12345",
    #     ingress_point_configuration: {
    #     "SecretArn" => arn:aws:secretsmanager:us-west-2:123456789012:secret:abcde
    #   }
    #   }
    #   options = {}
    #   response = client.update_ingress_point(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     ingress_point_id: "IngressPointId", # required
    #     ingress_point_name: "IngressPointName",
    #     status_to_update: "ACTIVE" # One of: ["ACTIVE", "CLOSED"],
    #     rule_set_id: "RuleSetId",
    #     traffic_policy_id: "TrafficPolicyId",
    #     ingress_point_configuration: {
    #       # One of:
    #       smtp_password: "SmtpPassword",
    #       secret_arn: "SecretArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_ingress_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIngressPointResponse]
    def update_ingress_point(params = {}, options = {})
      request = build_request(:update_ingress_point, params)
      request.send_request(options)
    end

    # <p>Updates the attributes of an existing relay resource.</p>
    # @param [Hash, Types::UpdateRelayRequest] params
    # @option params [String] :relay_id
    #   <p>The unique relay identifier.</p>
    # @option params [String] :relay_name
    #   <p>The name of the relay resource.</p>
    # @option params [String] :server_name
    #   <p>The destination relay server address.</p>
    # @option params [Integer] :server_port
    #   <p>The destination relay server port.</p>
    # @option params [Types::RelayAuthentication] :authentication
    #   <p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relay_id: "RelayId", # required
    #     relay_name: "RelayName",
    #     server_name: "RelayServerName",
    #     server_port: 1,
    #     authentication: {
    #       # One of:
    #       secret_arn: "SecretArn",
    #       no_authentication: {
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_relay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRelayResponse]
    def update_relay(params = {}, options = {})
      request = build_request(:update_relay, params)
      request.send_request(options)
    end

    # <p>Update attributes of an already provisioned rule set.</p>
    # @param [Hash, Types::UpdateRuleSetRequest] params
    # @option params [String] :rule_set_id
    #   <p>The identifier of a rule set you want to update.</p>
    # @option params [String] :rule_set_name
    #   <p>A user-friendly name for the rule set resource.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>A new set of rules to replace the current rules of the rule set—these rules will override all the rules of the rule set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_id: "RuleSetId", # required
    #     rule_set_name: "RuleSetName",
    #     rules: [
    #       {
    #         name: "RuleName",
    #         conditions: [{
    #           # One of:
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "READ_RECEIPT_REQUESTED" # One of: ["READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           },
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MAIL_FROM" # One of: ["MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"],
    #               mime_header_attribute: "MimeHeaderAttribute",
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["RuleStringValue"], # required
    #           },
    #           number_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MESSAGE_SIZE" # One of: ["MESSAGE_SIZE"]
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"], # required
    #             value: 1.0, # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SOURCE_IP" # One of: ["SOURCE_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["RuleIpStringValue"], # required
    #           },
    #           verdict_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SPF" # One of: ["SPF", "DKIM"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["PASS" # One of: ["PASS", "FAIL", "GRAY", "PROCESSING_FAILED"]], # required
    #           },
    #           dmarc_expression: {
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["NONE" # One of: ["NONE", "QUARANTINE", "REJECT"]], # required
    #           }
    #         }],
    #         unless: [{
    #           # One of:
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "READ_RECEIPT_REQUESTED" # One of: ["READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           },
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MAIL_FROM" # One of: ["MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"],
    #               mime_header_attribute: "MimeHeaderAttribute",
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["RuleStringValue"], # required
    #           },
    #           number_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "MESSAGE_SIZE" # One of: ["MESSAGE_SIZE"]
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"], # required
    #             value: 1.0, # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SOURCE_IP" # One of: ["SOURCE_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["RuleIpStringValue"], # required
    #           },
    #           verdict_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SPF" # One of: ["SPF", "DKIM"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["PASS" # One of: ["PASS", "FAIL", "GRAY", "PROCESSING_FAILED"]], # required
    #           },
    #           dmarc_expression: {
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS"], # required
    #             values: ["NONE" # One of: ["NONE", "QUARANTINE", "REJECT"]], # required
    #           }
    #         }],
    #         actions: [{ # required
    #           # One of:
    #           drop: {
    #           },
    #           relay: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             relay: "IdOrArn", # required
    #             mail_from: "REPLACE" # One of: ["REPLACE", "PRESERVE"]
    #           },
    #           archive: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             target_archive: "NameOrArn", # required
    #           },
    #           write_to_s3: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             role_arn: "IamRoleArn", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_prefix: "S3Prefix",
    #             s3_sse_kms_key_id: "KmsKeyId"
    #           },
    #           send: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             role_arn: "IamRoleArn", # required
    #           },
    #           add_header: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           replace_recipient: {
    #             replace_with: ["EmailAddress"]
    #           },
    #           deliver_to_mailbox: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             mailbox_arn: "NameOrArn", # required
    #             role_arn: "IamRoleArn", # required
    #           },
    #           deliver_to_q_business: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             application_id: "QBusinessApplicationId", # required
    #             index_id: "QBusinessIndexId", # required
    #             role_arn: "IamRoleArn", # required
    #           },
    #           publish_to_sns: {
    #             action_failure_policy: "CONTINUE" # One of: ["CONTINUE", "DROP"],
    #             topic_arn: "SnsTopicArn", # required
    #             role_arn: "IamRoleArn", # required
    #             encoding: "UTF-8" # One of: ["UTF-8", "BASE64"],
    #             payload_type: "HEADERS" # One of: ["HEADERS", "CONTENT"]
    #           }
    #         }]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRuleSetResponse]
    def update_rule_set(params = {}, options = {})
      request = build_request(:update_rule_set, params)
      request.send_request(options)
    end

    # <p>Update attributes of an already provisioned traffic policy resource.</p>
    # @param [Hash, Types::UpdateTrafficPolicyRequest] params
    # @option params [String] :traffic_policy_id
    #   <p>The identifier of the traffic policy that you want to update.</p>
    # @option params [String] :traffic_policy_name
    #   <p>A user-friendly name for the traffic policy resource.</p>
    # @option params [Array<Types::PolicyStatement>] :policy_statements
    #   <p>The list of conditions to be updated for filtering email traffic.</p>
    # @option params [String] :default_action
    #   <p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>
    # @option params [Integer] :max_message_size_bytes
    #   <p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>
    # @example Update TrafficPolicy with new Name
    #   # Example operation for update_traffic_policy
    #   params = {
    #     traffic_policy_id: "tp-12345",
    #     traffic_policy_name: "trafficPolicyNewName"
    #   }
    #   options = {}
    #   response = client.update_traffic_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Update TrafficPolicy with new PolicyStatements
    #   # Example operation for update_traffic_policy
    #   params = {
    #     traffic_policy_id: "tp-12345",
    #     policy_statements: [
    #       {
    #         conditions: [
    #           {
    #     "StringExpression" => {
    #       "Evaluate" => {
    #         "Attribute" => RECIPIENT
    #       },
    #       "Operator" => EQUALS,
    #       "Values" => [
    #         example@amazon.com,
    #         example@gmail.com
    #       ]
    #     }
    #   }
    #         ],
    #         action: ALLOW
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_traffic_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Update TrafficPolicy with new DefaultAction
    #   # Example operation for update_traffic_policy
    #   params = {
    #     traffic_policy_id: "tp-12345",
    #     default_action: ALLOW
    #   }
    #   options = {}
    #   response = client.update_traffic_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_name: "TrafficPolicyName",
    #     policy_statements: [
    #       {
    #         conditions: [{ # required
    #           # One of:
    #           string_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "RECIPIENT" # One of: ["RECIPIENT"],
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               }
    #             },
    #             operator: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"], # required
    #             values: ["String"], # required
    #           },
    #           ip_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SENDER_IP" # One of: ["SENDER_IP"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["Ipv4Cidr"], # required
    #           },
    #           ipv6_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "SENDER_IPV6" # One of: ["SENDER_IPV6"]
    #             },
    #             operator: "CIDR_MATCHES" # One of: ["CIDR_MATCHES", "NOT_CIDR_MATCHES"], # required
    #             values: ["Ipv6Cidr"], # required
    #           },
    #           tls_expression: {
    #             evaluate: { # required
    #               # One of:
    #               attribute: "TLS_PROTOCOL" # One of: ["TLS_PROTOCOL"]
    #             },
    #             operator: "MINIMUM_TLS_VERSION" # One of: ["MINIMUM_TLS_VERSION", "IS"], # required
    #             value: "TLS1_2" # One of: ["TLS1_2", "TLS1_3"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               # One of:
    #               analysis: {
    #                 analyzer: "AnalyzerArn", # required
    #                 result_field: "ResultField", # required
    #               },
    #               is_in_address_list: {
    #                 attribute: "RECIPIENT" # One of: ["RECIPIENT"], # required
    #                 address_lists: ["AddressListArn"], # required
    #               }
    #             },
    #             operator: "IS_TRUE" # One of: ["IS_TRUE", "IS_FALSE"], # required
    #           }
    #         }],
    #         action: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #       }
    #     ],
    #     default_action: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     max_message_size_bytes: 1
    #   }
    #   options = {}
    #   response = client.update_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTrafficPolicyResponse]
    def update_traffic_policy(params = {}, options = {})
      request = build_request(:update_traffic_policy, params)
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
      context[:gem_name] = 'aws-sdk-mailmanager'
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
