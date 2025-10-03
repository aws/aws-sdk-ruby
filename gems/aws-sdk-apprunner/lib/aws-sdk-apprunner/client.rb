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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::AppRunner
  # An API client for Aws::AppRunner.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AppRunner

    add_plugin(::Aws::AppRunner::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppRunner::EndpointProvider)
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associate your own domain name with the App Runner subdomain URL of your App Runner service.</p>
    #          <p>After you call <code>AssociateCustomDomain</code> and receive a successful response, use the information in the <a>CustomDomain</a> record
    #       that's returned to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain and one or
    #       more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name that you associated. App Runner tracks
    #       domain validity in a certificate stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide">AWS Certificate Manager (ACM)</a>.</p>
    # @param [Hash, Types::AssociateCustomDomainRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to associate a custom domain name with.</p>
    # @option params [String] :domain_name
    #   <p>A custom domain endpoint to associate. Specify a root domain (for example, <code>example.com</code>), a subdomain (for example,
    #           <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>
    # @option params [Boolean] :enable_www_subdomain
    #   <p>Set to <code>true</code> to associate the subdomain <code>www.<i>DomainName</i>
    #               </code> with the App Runner service in addition to the base
    #         domain.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #     domain_name: "DomainName", # required
    #     enable_www_subdomain: false
    #   }
    #   options = {}
    #   response = client.associate_custom_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dns_target: "String", # required
    #     service_arn: "AppRunnerResourceArn", # required
    #     custom_domain: { # required
    #       domain_name: "DomainName", # required
    #       enable_www_subdomain: false, # required
    #       certificate_validation_records: [
    #         {
    #           name: "String",
    #           type: "String",
    #           value: "String",
    #           status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #         }
    #       ],
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"], # required
    #     },
    #     vpc_dns_targets: [ # required
    #       {
    #         vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #         vpc_id: "String",
    #         domain_name: "DomainName"
    #       }
    #     ]
    #   }
    # @return [Types::AssociateCustomDomainResponse]
    def associate_custom_domain(params = {}, options = {})
      request = build_request(:associate_custom_domain, params)
      request.send_request(options)
    end

    # <p>Create an App Runner automatic scaling configuration resource. App Runner requires this resource when you create or update App Runner services and you require
    #       non-default auto scaling settings. You can share an auto scaling configuration across multiple services.</p>
    #          <p>Create multiple revisions of a configuration by calling this action multiple times using the same <code>AutoScalingConfigurationName</code>. The call
    #       returns incremental <code>AutoScalingConfigurationRevision</code> values. When you create a service and configure an auto scaling configuration resource,
    #       the service uses the latest active revision of the auto scaling configuration by default. You can optionally configure the service to use a specific
    #       revision.</p>
    #          <p>Configure a higher <code>MinSize</code> to increase the spread of your App Runner service over more Availability Zones in the Amazon Web Services Region. The
    #       tradeoff is a higher minimal cost.</p>
    #          <p>Configure a lower <code>MaxSize</code> to control your cost. The tradeoff is lower responsiveness during peak demand.</p>
    # @param [Hash, Types::CreateAutoScalingConfigurationRequest] params
    # @option params [String] :auto_scaling_configuration_name
    #   <p>A name for the auto scaling configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number
    #           <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
    #            <note>
    #               <p>Prior to the release of <a href="https://docs.aws.amazon.com/apprunner/latest/relnotes/release-2023-09-22-auto-scale-config.html">Auto scale
    #           configuration enhancements</a>, the name <code>DefaultConfiguration</code> was reserved. </p>
    #               <p>This restriction is no longer in place. You can now manage <code>DefaultConfiguration</code> the same way you manage your custom auto scaling
    #           configurations. This means you can do the following with the <code>DefaultConfiguration</code> that App Runner provides:</p>
    #               <ul>
    #                  <li>
    #                     <p>Create new revisions of the <code>DefaultConfiguration</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>Delete the revisions of the <code>DefaultConfiguration</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>Delete the auto scaling configuration for which the App Runner <code>DefaultConfiguration</code> was created.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you delete the auto scaling configuration you can create another custom auto scaling configuration with the same
    #                 <code>DefaultConfiguration</code> name. The original <code>DefaultConfiguration</code> resource provided by App Runner remains in your account unless
    #               you make changes to it.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Integer] :max_concurrency
    #   <p>The maximum number of concurrent requests that you want an instance to process. If the number of concurrent requests exceeds this limit, App Runner scales
    #         up your service.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    # @option params [Integer] :min_size
    #   <p>The minimum number of instances that App Runner provisions for your service. The service always has at least <code>MinSize</code> provisioned instances.
    #         Some of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to
    #         be quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>
    #            <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    # @option params [Integer] :max_size
    #   <p>The maximum number of instances that your service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>
    #            <p>Default: <code>25</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of metadata items that you can associate with your auto scaling configuration resource. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_configuration_name: "AutoScalingConfigurationName", # required
    #     max_concurrency: 1,
    #     min_size: 1,
    #     max_size: 1,
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_auto_scaling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_configuration: { # required
    #       auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #       auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #       auto_scaling_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       max_concurrency: 1,
    #       min_size: 1,
    #       max_size: 1,
    #       created_at: Time.now,
    #       deleted_at: Time.now,
    #       has_associated_service: false,
    #       is_default: false
    #     }
    #   }
    # @return [Types::CreateAutoScalingConfigurationResponse]
    def create_auto_scaling_configuration(params = {}, options = {})
      request = build_request(:create_auto_scaling_configuration, params)
      request.send_request(options)
    end

    # <p>Create an App Runner connection resource. App Runner requires a connection resource when you create App Runner services that access private repositories from
    #       certain third-party providers. You can share a connection across multiple services.</p>
    #          <p>A connection resource is needed to access GitHub and Bitbucket repositories. Both require
    #       a user interface approval process through the App Runner console before you can use the
    #       connection.</p>
    # @param [Hash, Types::CreateConnectionRequest] params
    # @option params [String] :connection_name
    #   <p>A name for the new connection. It must be unique across all App Runner connections for the Amazon Web Services account in the Amazon Web Services Region.</p>
    # @option params [String] :provider_type
    #   <p>The source repository provider.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of metadata items that you can associate with your connection resource. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_name: "ConnectionName", # required
    #     provider_type: "GITHUB" # One of: ["GITHUB", "BITBUCKET"], # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: { # required
    #       connection_name: "ConnectionName",
    #       connection_arn: "AppRunnerResourceArn",
    #       provider_type: "GITHUB" # One of: ["GITHUB", "BITBUCKET"],
    #       status: "PENDING_HANDSHAKE" # One of: ["PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"],
    #       created_at: Time.now
    #     }
    #   }
    # @return [Types::CreateConnectionResponse]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Create an App Runner observability configuration resource. App Runner requires this resource when you create or update App Runner services and you want to enable
    #       non-default observability features. You can share an observability configuration across multiple services.</p>
    #          <p>Create multiple revisions of a configuration by calling this action multiple times using the same <code>ObservabilityConfigurationName</code>. The
    #       call returns incremental <code>ObservabilityConfigurationRevision</code> values. When you create a service and configure an observability configuration
    #       resource, the service uses the latest active revision of the observability configuration by default. You can optionally configure the service to use a
    #       specific revision.</p>
    #          <p>The observability configuration resource is designed to configure multiple features (currently one feature, tracing). This action takes optional
    #       parameters that describe the configuration of these features (currently one parameter, <code>TraceConfiguration</code>). If you don't specify a feature
    #       parameter, App Runner doesn't enable the feature.</p>
    # @param [Hash, Types::CreateObservabilityConfigurationRequest] params
    # @option params [String] :observability_configuration_name
    #   <p>A name for the observability configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number
    #           <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
    #            <note>
    #               <p>The name <code>DefaultConfiguration</code> is reserved. You can't use it to create a new observability configuration, and you can't create a
    #           revision of it.</p>
    #               <p>When you want to use your own observability configuration for your App Runner service, <i>create a configuration with a different name</i>,
    #           and then provide it when you create or update your service.</p>
    #            </note>
    # @option params [Types::TraceConfiguration] :trace_configuration
    #   <p>The configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of metadata items that you can associate with your observability configuration resource. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     observability_configuration_name: "ObservabilityConfigurationName", # required
    #     trace_configuration: {
    #       vendor: "AWSXRAY" # One of: ["AWSXRAY"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_observability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     observability_configuration: { # required
    #       observability_configuration_arn: "AppRunnerResourceArn",
    #       observability_configuration_name: "ObservabilityConfigurationName",
    #       trace_configuration: {
    #         vendor: "AWSXRAY" # One of: ["AWSXRAY"], # required
    #       },
    #       observability_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::CreateObservabilityConfigurationResponse]
    def create_observability_configuration(params = {}, options = {})
      request = build_request(:create_observability_configuration, params)
      request.send_request(options)
    end

    # <p>Create an App Runner service. After the service is created, the action also automatically starts a deployment.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html">ListOperations</a> call to track the operation's progress.</p>
    # @param [Hash, Types::CreateServiceRequest] params
    # @option params [String] :service_name
    #   <p>A name for the App Runner service. It must be unique across all the running App Runner services in your Amazon Web Services account in the Amazon Web Services Region.</p>
    # @option params [Types::SourceConfiguration] :source_configuration
    #   <p>The source to deploy to the App Runner service. It can be a code or an image repository.</p>
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   <p>The runtime configuration of instances (scaling units) of your service.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the App Runner service resource. A tag is a key-value pair.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default,
    #         App Runner uses an Amazon Web Services managed key.</p>
    # @option params [Types::HealthCheckConfiguration] :health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner
    #         associates the latest revision of a default auto scaling configuration.</p>
    #            <p>Specify an ARN with a name and a revision number to associate that revision. For example:
    #             <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3</code>
    #            </p>
    #            <p>Specify just the name to associate the latest revision. For example:
    #           <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability</code>
    #            </p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>
    # @option params [Types::ServiceObservabilityConfiguration] :observability_configuration
    #   <p>The observability configuration of your service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ServiceName", # required
    #     source_configuration: { # required
    #       code_repository: {
    #         repository_url: "String", # required
    #         source_code_version: { # required
    #           type: "BRANCH" # One of: ["BRANCH"], # required
    #           value: "String", # required
    #         },
    #         code_configuration: {
    #           configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #           code_configuration_values: {
    #             runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #             build_command: "BuildCommand",
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           }
    #         },
    #         source_directory: "SourceDirectory"
    #       },
    #       image_repository: {
    #         image_identifier: "ImageIdentifier", # required
    #         image_configuration: {
    #           runtime_environment_variables: {
    #             "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #           },
    #           start_command: "StartCommand",
    #           port: "String",
    #           runtime_environment_secrets: {
    #             "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #           }
    #         },
    #         image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #       },
    #       auto_deployments_enabled: false,
    #       authentication_configuration: {
    #         connection_arn: "AppRunnerResourceArn",
    #         access_role_arn: "RoleArn"
    #       }
    #     },
    #     instance_configuration: {
    #       cpu: "Cpu",
    #       memory: "Memory",
    #       instance_role_arn: "RoleArn"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     encryption_configuration: {
    #       kms_key: "KmsKeyArn", # required
    #     },
    #     health_check_configuration: {
    #       protocol: "TCP" # One of: ["TCP", "HTTP"],
    #       path: "HealthCheckPath",
    #       interval: 1,
    #       timeout: 1,
    #       healthy_threshold: 1,
    #       unhealthy_threshold: 1
    #     },
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #     network_configuration: {
    #       egress_configuration: {
    #         egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #         vpc_connector_arn: "AppRunnerResourceArn"
    #       },
    #       ingress_configuration: {
    #         is_publicly_accessible: false
    #       },
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #     },
    #     observability_configuration: {
    #       observability_enabled: false, # required
    #       observability_configuration_arn: "AppRunnerResourceArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_name: "ServiceName", # required
    #       service_id: "ServiceId", # required
    #       service_arn: "AppRunnerResourceArn", # required
    #       service_url: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       deleted_at: Time.now,
    #       status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"], # required
    #       source_configuration: { # required
    #         code_repository: {
    #           repository_url: "String", # required
    #           source_code_version: { # required
    #             type: "BRANCH" # One of: ["BRANCH"], # required
    #             value: "String", # required
    #           },
    #           code_configuration: {
    #             configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #             code_configuration_values: {
    #               runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #               build_command: "BuildCommand",
    #               start_command: "StartCommand",
    #               port: "String",
    #               runtime_environment_variables: {
    #                 "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #               },
    #               runtime_environment_secrets: {
    #                 "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #               }
    #             }
    #           },
    #           source_directory: "SourceDirectory"
    #         },
    #         image_repository: {
    #           image_identifier: "ImageIdentifier", # required
    #           image_configuration: {
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           },
    #           image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #         },
    #         auto_deployments_enabled: false,
    #         authentication_configuration: {
    #           connection_arn: "AppRunnerResourceArn",
    #           access_role_arn: "RoleArn"
    #         }
    #       },
    #       instance_configuration: { # required
    #         cpu: "Cpu",
    #         memory: "Memory",
    #         instance_role_arn: "RoleArn"
    #       },
    #       encryption_configuration: {
    #         kms_key: "KmsKeyArn", # required
    #       },
    #       health_check_configuration: {
    #         protocol: "TCP" # One of: ["TCP", "HTTP"],
    #         path: "HealthCheckPath",
    #         interval: 1,
    #         timeout: 1,
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1
    #       },
    #       auto_scaling_configuration_summary: { # required
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       },
    #       network_configuration: { # required
    #         egress_configuration: {
    #           egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #           vpc_connector_arn: "AppRunnerResourceArn"
    #         },
    #         ingress_configuration: {
    #           is_publicly_accessible: false
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       },
    #       observability_configuration: {
    #         observability_enabled: false, # required
    #         observability_configuration_arn: "AppRunnerResourceArn"
    #       }
    #     },
    #     operation_id: "UUID", # required
    #   }
    # @return [Types::CreateServiceResponse]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Create an App Runner VPC connector resource. App Runner requires this resource when you want to associate your App Runner service to a custom Amazon Virtual Private Cloud
    #         (Amazon VPC).</p>
    # @param [Hash, Types::CreateVpcConnectorRequest] params
    # @option params [String] :vpc_connector_name
    #   <p>A name for the VPC connector.</p>
    # @option params [Array<String>] :subnets
    #   <p>A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single
    #           Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.</p>
    #            <note>
    #               <p>
    #           App Runner only supports subnets of IP address type <i>IPv4</i> and <i>dual stack</i> (IPv4 and IPv6).</p>
    #            </note>
    # @option params [Array<String>] :security_groups
    #   <p>A list of IDs of security groups that App Runner should use for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the
    #         default security group of the Amazon VPC. The default security group allows all outbound traffic.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of metadata items that you can associate with your VPC connector resource. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_connector_name: "VpcConnectorName", # required
    #     subnets: ["String"], # required
    #     security_groups: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_vpc_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connector: { # required
    #       vpc_connector_name: "VpcConnectorName",
    #       vpc_connector_arn: "AppRunnerResourceArn",
    #       vpc_connector_revision: 1,
    #       subnets: ["String"],
    #       security_groups: ["String"],
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::CreateVpcConnectorResponse]
    def create_vpc_connector(params = {}, options = {})
      request = build_request(:create_vpc_connector, params)
      request.send_request(options)
    end

    # <p>Create an App Runner VPC Ingress Connection resource. App Runner requires this resource when you want to associate your App Runner service with an Amazon VPC endpoint.</p>
    # @param [Hash, Types::CreateVpcIngressConnectionRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.</p>
    # @option params [String] :vpc_ingress_connection_name
    #   <p>A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your Amazon Web Services account in the Amazon Web Services Region.
    #       </p>
    # @option params [Types::IngressVpcConfiguration] :ingress_vpc_configuration
    #   <p>Specifications for the customer’s Amazon VPC and the related Amazon Web Services PrivateLink VPC endpoint that are used to create the VPC Ingress Connection
    #         resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the VPC Ingress Connection resource. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #     vpc_ingress_connection_name: "VpcIngressConnectionName", # required
    #     ingress_vpc_configuration: { # required
    #       vpc_id: "String",
    #       vpc_endpoint_id: "String"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_vpc_ingress_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_ingress_connection: { # required
    #       vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #       vpc_ingress_connection_name: "VpcIngressConnectionName",
    #       service_arn: "AppRunnerResourceArn",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"],
    #       account_id: "CustomerAccountId",
    #       domain_name: "DomainName",
    #       ingress_vpc_configuration: {
    #         vpc_id: "String",
    #         vpc_endpoint_id: "String"
    #       },
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::CreateVpcIngressConnectionResponse]
    def create_vpc_ingress_connection(params = {}, options = {})
      request = build_request(:create_vpc_ingress_connection, params)
      request.send_request(options)
    end

    # <p>Delete an App Runner automatic scaling configuration resource. You can delete a top level auto scaling configuration, a specific revision of one, or all
    #       revisions associated with the top level configuration. You can't delete the default auto scaling configuration or a configuration that's used by one or
    #       more App Runner services.</p>
    # @param [Hash, Types::DeleteAutoScalingConfigurationRequest] params
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to delete.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is deleted.</p>
    # @option params [Boolean] :delete_all_revisions
    #   <p>Set to <code>true</code> to delete all of the revisions associated with the <code>AutoScalingConfigurationArn</code> parameter value.</p>
    #            <p>When <code>DeleteAllRevisions</code> is set to <code>true</code>, the only valid value for the Amazon Resource Name (ARN) is a partial ARN ending
    #         with: <code>.../name</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn", # required
    #     delete_all_revisions: false
    #   }
    #   options = {}
    #   response = client.delete_auto_scaling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_configuration: { # required
    #       auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #       auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #       auto_scaling_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       max_concurrency: 1,
    #       min_size: 1,
    #       max_size: 1,
    #       created_at: Time.now,
    #       deleted_at: Time.now,
    #       has_associated_service: false,
    #       is_default: false
    #     }
    #   }
    # @return [Types::DeleteAutoScalingConfigurationResponse]
    def delete_auto_scaling_configuration(params = {}, options = {})
      request = build_request(:delete_auto_scaling_configuration, params)
      request.send_request(options)
    end

    # <p>Delete an App Runner connection. You must first ensure that there are no running App Runner services that use this connection. If there are any, the
    #         <code>DeleteConnection</code> action fails.</p>
    # @param [Hash, Types::DeleteConnectionRequest] params
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner connection that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       connection_name: "ConnectionName",
    #       connection_arn: "AppRunnerResourceArn",
    #       provider_type: "GITHUB" # One of: ["GITHUB", "BITBUCKET"],
    #       status: "PENDING_HANDSHAKE" # One of: ["PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"],
    #       created_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteConnectionResponse]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Delete an App Runner observability configuration resource. You can delete a specific revision or the latest active revision. You can't delete a
    #       configuration that's used by one or more App Runner services.</p>
    # @param [Hash, Types::DeleteObservabilityConfigurationRequest] params
    # @option params [String] :observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want to delete.</p>
    #            <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     observability_configuration_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_observability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     observability_configuration: { # required
    #       observability_configuration_arn: "AppRunnerResourceArn",
    #       observability_configuration_name: "ObservabilityConfigurationName",
    #       trace_configuration: {
    #         vendor: "AWSXRAY" # One of: ["AWSXRAY"], # required
    #       },
    #       observability_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteObservabilityConfigurationResponse]
    def delete_observability_configuration(params = {}, options = {})
      request = build_request(:delete_observability_configuration, params)
      request.send_request(options)
    end

    # <p>Delete an App Runner service.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    #          <note>
    #             <p>Make sure that you don't have any active VPCIngressConnections associated with the service you want to delete. 
    #       </p>
    #          </note>
    # @param [Hash, Types::DeleteServiceRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_name: "ServiceName", # required
    #       service_id: "ServiceId", # required
    #       service_arn: "AppRunnerResourceArn", # required
    #       service_url: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       deleted_at: Time.now,
    #       status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"], # required
    #       source_configuration: { # required
    #         code_repository: {
    #           repository_url: "String", # required
    #           source_code_version: { # required
    #             type: "BRANCH" # One of: ["BRANCH"], # required
    #             value: "String", # required
    #           },
    #           code_configuration: {
    #             configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #             code_configuration_values: {
    #               runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #               build_command: "BuildCommand",
    #               start_command: "StartCommand",
    #               port: "String",
    #               runtime_environment_variables: {
    #                 "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #               },
    #               runtime_environment_secrets: {
    #                 "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #               }
    #             }
    #           },
    #           source_directory: "SourceDirectory"
    #         },
    #         image_repository: {
    #           image_identifier: "ImageIdentifier", # required
    #           image_configuration: {
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           },
    #           image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #         },
    #         auto_deployments_enabled: false,
    #         authentication_configuration: {
    #           connection_arn: "AppRunnerResourceArn",
    #           access_role_arn: "RoleArn"
    #         }
    #       },
    #       instance_configuration: { # required
    #         cpu: "Cpu",
    #         memory: "Memory",
    #         instance_role_arn: "RoleArn"
    #       },
    #       encryption_configuration: {
    #         kms_key: "KmsKeyArn", # required
    #       },
    #       health_check_configuration: {
    #         protocol: "TCP" # One of: ["TCP", "HTTP"],
    #         path: "HealthCheckPath",
    #         interval: 1,
    #         timeout: 1,
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1
    #       },
    #       auto_scaling_configuration_summary: { # required
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       },
    #       network_configuration: { # required
    #         egress_configuration: {
    #           egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #           vpc_connector_arn: "AppRunnerResourceArn"
    #         },
    #         ingress_configuration: {
    #           is_publicly_accessible: false
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       },
    #       observability_configuration: {
    #         observability_enabled: false, # required
    #         observability_configuration_arn: "AppRunnerResourceArn"
    #       }
    #     },
    #     operation_id: "UUID", # required
    #   }
    # @return [Types::DeleteServiceResponse]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Delete an App Runner VPC connector resource. You can't delete a
    #       connector that's used by one or more App Runner services.</p>
    # @param [Hash, Types::DeleteVpcConnectorRequest] params
    # @option params [String] :vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to delete.</p>
    #            <p>The ARN must be a full VPC connector ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_connector_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connector: { # required
    #       vpc_connector_name: "VpcConnectorName",
    #       vpc_connector_arn: "AppRunnerResourceArn",
    #       vpc_connector_revision: 1,
    #       subnets: ["String"],
    #       security_groups: ["String"],
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteVpcConnectorResponse]
    def delete_vpc_connector(params = {}, options = {})
      request = build_request(:delete_vpc_connector, params)
      request.send_request(options)
    end

    # <p>Delete an App Runner VPC Ingress Connection resource that's associated with an App Runner service. The VPC Ingress Connection must be in one of the following states to be deleted:
    #     </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AVAILABLE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FAILED_CREATION</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FAILED_UPDATE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FAILED_DELETION</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteVpcIngressConnectionRequest] params
    # @option params [String] :vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_ingress_connection_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_ingress_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_ingress_connection: { # required
    #       vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #       vpc_ingress_connection_name: "VpcIngressConnectionName",
    #       service_arn: "AppRunnerResourceArn",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"],
    #       account_id: "CustomerAccountId",
    #       domain_name: "DomainName",
    #       ingress_vpc_configuration: {
    #         vpc_id: "String",
    #         vpc_endpoint_id: "String"
    #       },
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteVpcIngressConnectionResponse]
    def delete_vpc_ingress_connection(params = {}, options = {})
      request = build_request(:delete_vpc_ingress_connection, params)
      request.send_request(options)
    end

    # <p>Return a full description of an App Runner automatic scaling configuration resource.</p>
    # @param [Hash, Types::DescribeAutoScalingConfigurationRequest] params
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want a description for.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is
    #         described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_auto_scaling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_configuration: { # required
    #       auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #       auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #       auto_scaling_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       max_concurrency: 1,
    #       min_size: 1,
    #       max_size: 1,
    #       created_at: Time.now,
    #       deleted_at: Time.now,
    #       has_associated_service: false,
    #       is_default: false
    #     }
    #   }
    # @return [Types::DescribeAutoScalingConfigurationResponse]
    def describe_auto_scaling_configuration(params = {}, options = {})
      request = build_request(:describe_auto_scaling_configuration, params)
      request.send_request(options)
    end

    # <p>Return a description of custom domain names that are associated with an App Runner service.</p>
    # @param [Hash, Types::DescribeCustomDomainsRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want associated custom domain names to be described for.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that each response (result page) can include. It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_custom_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dns_target: "String", # required
    #     service_arn: "AppRunnerResourceArn", # required
    #     custom_domains: [ # required
    #       {
    #         domain_name: "DomainName", # required
    #         enable_www_subdomain: false, # required
    #         certificate_validation_records: [
    #           {
    #             name: "String",
    #             type: "String",
    #             value: "String",
    #             status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #           }
    #         ],
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"], # required
    #       }
    #     ],
    #     vpc_dns_targets: [ # required
    #       {
    #         vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #         vpc_id: "String",
    #         domain_name: "DomainName"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeCustomDomainsResponse]
    def describe_custom_domains(params = {}, options = {})
      request = build_request(:describe_custom_domains, params)
      request.send_request(options)
    end

    # <p>Return a full description of an App Runner observability configuration resource.</p>
    # @param [Hash, Types::DescribeObservabilityConfigurationRequest] params
    # @option params [String] :observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want a description for.</p>
    #            <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is
    #         described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     observability_configuration_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_observability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     observability_configuration: { # required
    #       observability_configuration_arn: "AppRunnerResourceArn",
    #       observability_configuration_name: "ObservabilityConfigurationName",
    #       trace_configuration: {
    #         vendor: "AWSXRAY" # One of: ["AWSXRAY"], # required
    #       },
    #       observability_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeObservabilityConfigurationResponse]
    def describe_observability_configuration(params = {}, options = {})
      request = build_request(:describe_observability_configuration, params)
      request.send_request(options)
    end

    # <p>Return a full description of an App Runner service.</p>
    # @param [Hash, Types::DescribeServiceRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want a description for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_name: "ServiceName", # required
    #       service_id: "ServiceId", # required
    #       service_arn: "AppRunnerResourceArn", # required
    #       service_url: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       deleted_at: Time.now,
    #       status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"], # required
    #       source_configuration: { # required
    #         code_repository: {
    #           repository_url: "String", # required
    #           source_code_version: { # required
    #             type: "BRANCH" # One of: ["BRANCH"], # required
    #             value: "String", # required
    #           },
    #           code_configuration: {
    #             configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #             code_configuration_values: {
    #               runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #               build_command: "BuildCommand",
    #               start_command: "StartCommand",
    #               port: "String",
    #               runtime_environment_variables: {
    #                 "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #               },
    #               runtime_environment_secrets: {
    #                 "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #               }
    #             }
    #           },
    #           source_directory: "SourceDirectory"
    #         },
    #         image_repository: {
    #           image_identifier: "ImageIdentifier", # required
    #           image_configuration: {
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           },
    #           image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #         },
    #         auto_deployments_enabled: false,
    #         authentication_configuration: {
    #           connection_arn: "AppRunnerResourceArn",
    #           access_role_arn: "RoleArn"
    #         }
    #       },
    #       instance_configuration: { # required
    #         cpu: "Cpu",
    #         memory: "Memory",
    #         instance_role_arn: "RoleArn"
    #       },
    #       encryption_configuration: {
    #         kms_key: "KmsKeyArn", # required
    #       },
    #       health_check_configuration: {
    #         protocol: "TCP" # One of: ["TCP", "HTTP"],
    #         path: "HealthCheckPath",
    #         interval: 1,
    #         timeout: 1,
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1
    #       },
    #       auto_scaling_configuration_summary: { # required
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       },
    #       network_configuration: { # required
    #         egress_configuration: {
    #           egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #           vpc_connector_arn: "AppRunnerResourceArn"
    #         },
    #         ingress_configuration: {
    #           is_publicly_accessible: false
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       },
    #       observability_configuration: {
    #         observability_enabled: false, # required
    #         observability_configuration_arn: "AppRunnerResourceArn"
    #       }
    #     }
    #   }
    # @return [Types::DescribeServiceResponse]
    def describe_service(params = {}, options = {})
      request = build_request(:describe_service, params)
      request.send_request(options)
    end

    # <p>Return a description of an App Runner VPC connector resource.</p>
    # @param [Hash, Types::DescribeVpcConnectorRequest] params
    # @option params [String] :vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want a description for.</p>
    #            <p>The ARN must be a full VPC connector ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_connector_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_vpc_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connector: { # required
    #       vpc_connector_name: "VpcConnectorName",
    #       vpc_connector_arn: "AppRunnerResourceArn",
    #       vpc_connector_revision: 1,
    #       subnets: ["String"],
    #       security_groups: ["String"],
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeVpcConnectorResponse]
    def describe_vpc_connector(params = {}, options = {})
      request = build_request(:describe_vpc_connector, params)
      request.send_request(options)
    end

    # <p>Return a full description of an App Runner VPC Ingress Connection resource.</p>
    # @param [Hash, Types::DescribeVpcIngressConnectionRequest] params
    # @option params [String] :vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection that you want a description for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_ingress_connection_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_vpc_ingress_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_ingress_connection: { # required
    #       vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #       vpc_ingress_connection_name: "VpcIngressConnectionName",
    #       service_arn: "AppRunnerResourceArn",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"],
    #       account_id: "CustomerAccountId",
    #       domain_name: "DomainName",
    #       ingress_vpc_configuration: {
    #         vpc_id: "String",
    #         vpc_endpoint_id: "String"
    #       },
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeVpcIngressConnectionResponse]
    def describe_vpc_ingress_connection(params = {}, options = {})
      request = build_request(:describe_vpc_ingress_connection, params)
      request.send_request(options)
    end

    # <p>Disassociate a custom domain name from an App Runner service.</p>
    #          <p>Certificates tracking domain validity are associated with a custom domain and are stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide">AWS
    #         Certificate Manager (ACM)</a>. These certificates aren't deleted as part of this action. App Runner delays certificate deletion for
    #       30 days after a domain is disassociated from your service.</p>
    # @param [Hash, Types::DisassociateCustomDomainRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to disassociate a custom domain name from.</p>
    # @option params [String] :domain_name
    #   <p>The domain name that you want to disassociate from the App Runner service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.disassociate_custom_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dns_target: "String", # required
    #     service_arn: "AppRunnerResourceArn", # required
    #     custom_domain: { # required
    #       domain_name: "DomainName", # required
    #       enable_www_subdomain: false, # required
    #       certificate_validation_records: [
    #         {
    #           name: "String",
    #           type: "String",
    #           value: "String",
    #           status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #         }
    #       ],
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"], # required
    #     },
    #     vpc_dns_targets: [ # required
    #       {
    #         vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #         vpc_id: "String",
    #         domain_name: "DomainName"
    #       }
    #     ]
    #   }
    # @return [Types::DisassociateCustomDomainResponse]
    def disassociate_custom_domain(params = {}, options = {})
      request = build_request(:disassociate_custom_domain, params)
      request.send_request(options)
    end

    # <p>Returns a list of active App Runner automatic scaling configurations in your Amazon Web Services account. You can query the revisions for a specific
    #       configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested
    #       name.</p>
    #          <p>To retrieve a full description of a particular configuration revision, call  and provide one of
    #       the ARNs returned by <code>ListAutoScalingConfigurations</code>.</p>
    # @param [Hash, Types::ListAutoScalingConfigurationsRequest] params
    # @option params [String] :auto_scaling_configuration_name
    #   <p>The name of the App Runner auto scaling configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified, App Runner
    #         returns revisions of all active configurations.</p>
    # @option params [Boolean] :latest_only
    #   <p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
    #            <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #     latest_only: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_auto_scaling_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_configuration_summary_list: [ # required
    #       {
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutoScalingConfigurationsResponse]
    def list_auto_scaling_configurations(params = {}, options = {})
      request = build_request(:list_auto_scaling_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of App Runner connections that are associated with your Amazon Web Services account.</p>
    # @param [Hash, Types::ListConnectionsRequest] params
    # @option params [String] :connection_name
    #   <p>If specified, only this connection is returned. If not specified, the result isn't filtered by name.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). Used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_name: "ConnectionName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_summary_list: [ # required
    #       {
    #         connection_name: "ConnectionName",
    #         connection_arn: "AppRunnerResourceArn",
    #         provider_type: "GITHUB" # One of: ["GITHUB", "BITBUCKET"],
    #         status: "PENDING_HANDSHAKE" # One of: ["PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"],
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectionsResponse]
    def list_connections(params = {}, options = {})
      request = build_request(:list_connections, params)
      request.send_request(options)
    end

    # <p>Returns a list of active App Runner observability configurations in your Amazon Web Services account. You can query the revisions for a specific
    #       configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested
    #       name.</p>
    #          <p>To retrieve a full description of a particular configuration revision, call  and provide one
    #       of the ARNs returned by <code>ListObservabilityConfigurations</code>.</p>
    # @param [Hash, Types::ListObservabilityConfigurationsRequest] params
    # @option params [String] :observability_configuration_name
    #   <p>The name of the App Runner observability configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified,
    #         App Runner returns revisions of all active configurations.</p>
    # @option params [Boolean] :latest_only
    #   <p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
    #            <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     observability_configuration_name: "ObservabilityConfigurationName",
    #     latest_only: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_observability_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     observability_configuration_summary_list: [ # required
    #       {
    #         observability_configuration_arn: "AppRunnerResourceArn",
    #         observability_configuration_name: "ObservabilityConfigurationName",
    #         observability_configuration_revision: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListObservabilityConfigurationsResponse]
    def list_observability_configurations(params = {}, options = {})
      request = build_request(:list_observability_configurations, params)
      request.send_request(options)
    end

    # <p>Return a list of operations that occurred on an App Runner service.</p>
    #          <p>The resulting list of <a>OperationSummary</a> objects is sorted in reverse chronological order. The first object on the list represents the
    #       last started operation.</p>
    # @param [Hash, Types::ListOperationsRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want a list of operations for.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_summary_list: [
    #       {
    #         id: "UUID",
    #         type: "START_DEPLOYMENT" # One of: ["START_DEPLOYMENT", "CREATE_SERVICE", "PAUSE_SERVICE", "RESUME_SERVICE", "DELETE_SERVICE", "UPDATE_SERVICE"],
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "FAILED", "SUCCEEDED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_SUCCEEDED"],
    #         target_arn: "AppRunnerResourceArn",
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListOperationsResponse]
    def list_operations(params = {}, options = {})
      request = build_request(:list_operations, params)
      request.send_request(options)
    end

    # <p>Returns a list of running App Runner services in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListServicesRequest] params
    # @option params [String] :next_token
    #   <p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_summary_list: [ # required
    #       {
    #         service_name: "ServiceName",
    #         service_id: "ServiceId",
    #         service_arn: "AppRunnerResourceArn",
    #         service_url: "String",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListServicesResponse]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Returns a list of the associated App Runner services using an auto scaling configuration.</p>
    # @param [Hash, Types::ListServicesForAutoScalingConfigurationRequest] params
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to list the services for.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #         <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is used.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_services_for_auto_scaling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arn_list: ["AppRunnerResourceArn"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicesForAutoScalingConfigurationResponse]
    def list_services_for_auto_scaling_configuration(params = {}, options = {})
      request = build_request(:list_services_for_auto_scaling_configuration, params)
      request.send_request(options)
    end

    # <p>List tags that are associated with for an App Runner resource. The response contains a list of tag key-value pairs.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that a tag list is requested for.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of App Runner VPC connectors in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListVpcConnectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_vpc_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_connectors: [ # required
    #       {
    #         vpc_connector_name: "VpcConnectorName",
    #         vpc_connector_arn: "AppRunnerResourceArn",
    #         vpc_connector_revision: 1,
    #         subnets: ["String"],
    #         security_groups: ["String"],
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         deleted_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListVpcConnectorsResponse]
    def list_vpc_connectors(params = {}, options = {})
      request = build_request(:list_vpc_connectors, params)
      request.send_request(options)
    end

    # <p>Return a list of App Runner VPC Ingress Connections in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListVpcIngressConnectionsRequest] params
    # @option params [Types::ListVpcIngressConnectionsFilter] :filter
    #   <p>The VPC Ingress Connections to be listed based on either the Service Arn or Vpc Endpoint Id, or both.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       service_arn: "AppRunnerResourceArn",
    #       vpc_endpoint_id: "String"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_vpc_ingress_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_ingress_connection_summary_list: [ # required
    #       {
    #         vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #         service_arn: "AppRunnerResourceArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListVpcIngressConnectionsResponse]
    def list_vpc_ingress_connections(params = {}, options = {})
      request = build_request(:list_vpc_ingress_connections, params)
      request.send_request(options)
    end

    # <p>Pause an active App Runner service. App Runner reduces compute capacity for the service to zero and loses state (for example, ephemeral storage is
    #       removed).</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    # @param [Hash, Types::PauseServiceRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to pause.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.pause_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_name: "ServiceName", # required
    #       service_id: "ServiceId", # required
    #       service_arn: "AppRunnerResourceArn", # required
    #       service_url: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       deleted_at: Time.now,
    #       status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"], # required
    #       source_configuration: { # required
    #         code_repository: {
    #           repository_url: "String", # required
    #           source_code_version: { # required
    #             type: "BRANCH" # One of: ["BRANCH"], # required
    #             value: "String", # required
    #           },
    #           code_configuration: {
    #             configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #             code_configuration_values: {
    #               runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #               build_command: "BuildCommand",
    #               start_command: "StartCommand",
    #               port: "String",
    #               runtime_environment_variables: {
    #                 "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #               },
    #               runtime_environment_secrets: {
    #                 "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #               }
    #             }
    #           },
    #           source_directory: "SourceDirectory"
    #         },
    #         image_repository: {
    #           image_identifier: "ImageIdentifier", # required
    #           image_configuration: {
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           },
    #           image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #         },
    #         auto_deployments_enabled: false,
    #         authentication_configuration: {
    #           connection_arn: "AppRunnerResourceArn",
    #           access_role_arn: "RoleArn"
    #         }
    #       },
    #       instance_configuration: { # required
    #         cpu: "Cpu",
    #         memory: "Memory",
    #         instance_role_arn: "RoleArn"
    #       },
    #       encryption_configuration: {
    #         kms_key: "KmsKeyArn", # required
    #       },
    #       health_check_configuration: {
    #         protocol: "TCP" # One of: ["TCP", "HTTP"],
    #         path: "HealthCheckPath",
    #         interval: 1,
    #         timeout: 1,
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1
    #       },
    #       auto_scaling_configuration_summary: { # required
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       },
    #       network_configuration: { # required
    #         egress_configuration: {
    #           egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #           vpc_connector_arn: "AppRunnerResourceArn"
    #         },
    #         ingress_configuration: {
    #           is_publicly_accessible: false
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       },
    #       observability_configuration: {
    #         observability_enabled: false, # required
    #         observability_configuration_arn: "AppRunnerResourceArn"
    #       }
    #     },
    #     operation_id: "UUID"
    #   }
    # @return [Types::PauseServiceResponse]
    def pause_service(params = {}, options = {})
      request = build_request(:pause_service, params)
      request.send_request(options)
    end

    # <p>Resume an active App Runner service. App Runner provisions compute capacity for the service.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    # @param [Hash, Types::ResumeServiceRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to resume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.resume_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_name: "ServiceName", # required
    #       service_id: "ServiceId", # required
    #       service_arn: "AppRunnerResourceArn", # required
    #       service_url: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       deleted_at: Time.now,
    #       status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"], # required
    #       source_configuration: { # required
    #         code_repository: {
    #           repository_url: "String", # required
    #           source_code_version: { # required
    #             type: "BRANCH" # One of: ["BRANCH"], # required
    #             value: "String", # required
    #           },
    #           code_configuration: {
    #             configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #             code_configuration_values: {
    #               runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #               build_command: "BuildCommand",
    #               start_command: "StartCommand",
    #               port: "String",
    #               runtime_environment_variables: {
    #                 "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #               },
    #               runtime_environment_secrets: {
    #                 "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #               }
    #             }
    #           },
    #           source_directory: "SourceDirectory"
    #         },
    #         image_repository: {
    #           image_identifier: "ImageIdentifier", # required
    #           image_configuration: {
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           },
    #           image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #         },
    #         auto_deployments_enabled: false,
    #         authentication_configuration: {
    #           connection_arn: "AppRunnerResourceArn",
    #           access_role_arn: "RoleArn"
    #         }
    #       },
    #       instance_configuration: { # required
    #         cpu: "Cpu",
    #         memory: "Memory",
    #         instance_role_arn: "RoleArn"
    #       },
    #       encryption_configuration: {
    #         kms_key: "KmsKeyArn", # required
    #       },
    #       health_check_configuration: {
    #         protocol: "TCP" # One of: ["TCP", "HTTP"],
    #         path: "HealthCheckPath",
    #         interval: 1,
    #         timeout: 1,
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1
    #       },
    #       auto_scaling_configuration_summary: { # required
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       },
    #       network_configuration: { # required
    #         egress_configuration: {
    #           egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #           vpc_connector_arn: "AppRunnerResourceArn"
    #         },
    #         ingress_configuration: {
    #           is_publicly_accessible: false
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       },
    #       observability_configuration: {
    #         observability_enabled: false, # required
    #         observability_configuration_arn: "AppRunnerResourceArn"
    #       }
    #     },
    #     operation_id: "UUID"
    #   }
    # @return [Types::ResumeServiceResponse]
    def resume_service(params = {}, options = {})
      request = build_request(:resume_service, params)
      request.send_request(options)
    end

    # <p>Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an App Runner
    #       service.</p>
    #          <p>For a source code repository, App Runner retrieves the commit and builds a Docker image. For a source image repository, App Runner retrieves the latest Docker
    #       image. In both cases, App Runner then deploys the new image to your service and starts a new container instance.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    # @param [Hash, Types::StartDeploymentRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to manually deploy to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.start_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "UUID", # required
    #   }
    # @return [Types::StartDeploymentResponse]
    def start_deployment(params = {}, options = {})
      request = build_request(:start_deployment, params)
      request.send_request(options)
    end

    # <p>Add tags to, or update the tag values of, an App Runner resource. A tag is a key-value pair.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to update tags for.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag key-value pairs to add or update. If a key is new to the resource, the tag is added with the provided value. If a key is already
    #         associated with the resource, the value of the tag is updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AppRunnerResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>Remove tags from an App Runner resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AppRunnerResourceArn", # required
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

    # <p>Update an auto scaling configuration to be the default. The existing default auto scaling configuration will be set to non-default
    #       automatically.</p>
    # @param [Hash, Types::UpdateDefaultAutoScalingConfigurationRequest] params
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to set as the default.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is set as the
    #         default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn", # required
    #   }
    #   options = {}
    #   response = client.update_default_auto_scaling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_configuration: { # required
    #       auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #       auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #       auto_scaling_configuration_revision: 1,
    #       latest: false,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       max_concurrency: 1,
    #       min_size: 1,
    #       max_size: 1,
    #       created_at: Time.now,
    #       deleted_at: Time.now,
    #       has_associated_service: false,
    #       is_default: false
    #     }
    #   }
    # @return [Types::UpdateDefaultAutoScalingConfigurationResponse]
    def update_default_auto_scaling_configuration(params = {}, options = {})
      request = build_request(:update_default_auto_scaling_configuration, params)
      request.send_request(options)
    end

    # <p>Update an App Runner service. You can update the source configuration and instance configuration of the service. You can also update the ARN of the auto
    #       scaling configuration resource that's associated with the service. However, you can't change the name or the encryption configuration of the service.
    #       These can be set only when you create the service.</p>
    #          <p>To update the tags applied to your service, use the separate actions <a>TagResource</a> and <a>UntagResource</a>.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    # @param [Hash, Types::UpdateServiceRequest] params
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to update.</p>
    # @option params [Types::SourceConfiguration] :source_configuration
    #   <p>The source configuration to apply to the App Runner service.</p>
    #            <p>You can change the configuration of the code or image repository that the service uses. However, you can't switch from code to image or the other way
    #         around. This means that you must provide the same structure member of <code>SourceConfiguration</code> that you originally included when you created the
    #         service. Specifically, you can include either <code>CodeRepository</code> or <code>ImageRepository</code>. To update the source configuration, set the
    #         values to members of the structure that you include.</p>
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   <p>The runtime configuration to apply to instances (scaling units) of your service.</p>
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with the App Runner service.</p>
    # @option params [Types::HealthCheckConfiguration] :health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>
    # @option params [Types::ServiceObservabilityConfiguration] :observability_configuration
    #   <p>The observability configuration of your service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "AppRunnerResourceArn", # required
    #     source_configuration: {
    #       code_repository: {
    #         repository_url: "String", # required
    #         source_code_version: { # required
    #           type: "BRANCH" # One of: ["BRANCH"], # required
    #           value: "String", # required
    #         },
    #         code_configuration: {
    #           configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #           code_configuration_values: {
    #             runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #             build_command: "BuildCommand",
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           }
    #         },
    #         source_directory: "SourceDirectory"
    #       },
    #       image_repository: {
    #         image_identifier: "ImageIdentifier", # required
    #         image_configuration: {
    #           runtime_environment_variables: {
    #             "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #           },
    #           start_command: "StartCommand",
    #           port: "String",
    #           runtime_environment_secrets: {
    #             "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #           }
    #         },
    #         image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #       },
    #       auto_deployments_enabled: false,
    #       authentication_configuration: {
    #         connection_arn: "AppRunnerResourceArn",
    #         access_role_arn: "RoleArn"
    #       }
    #     },
    #     instance_configuration: {
    #       cpu: "Cpu",
    #       memory: "Memory",
    #       instance_role_arn: "RoleArn"
    #     },
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #     health_check_configuration: {
    #       protocol: "TCP" # One of: ["TCP", "HTTP"],
    #       path: "HealthCheckPath",
    #       interval: 1,
    #       timeout: 1,
    #       healthy_threshold: 1,
    #       unhealthy_threshold: 1
    #     },
    #     network_configuration: {
    #       egress_configuration: {
    #         egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #         vpc_connector_arn: "AppRunnerResourceArn"
    #       },
    #       ingress_configuration: {
    #         is_publicly_accessible: false
    #       },
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #     },
    #     observability_configuration: {
    #       observability_enabled: false, # required
    #       observability_configuration_arn: "AppRunnerResourceArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_name: "ServiceName", # required
    #       service_id: "ServiceId", # required
    #       service_arn: "AppRunnerResourceArn", # required
    #       service_url: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       deleted_at: Time.now,
    #       status: "CREATE_FAILED" # One of: ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"], # required
    #       source_configuration: { # required
    #         code_repository: {
    #           repository_url: "String", # required
    #           source_code_version: { # required
    #             type: "BRANCH" # One of: ["BRANCH"], # required
    #             value: "String", # required
    #           },
    #           code_configuration: {
    #             configuration_source: "REPOSITORY" # One of: ["REPOSITORY", "API"], # required
    #             code_configuration_values: {
    #               runtime: "PYTHON_3" # One of: ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31", "PYTHON_311", "NODEJS_18", "NODEJS_22"], # required
    #               build_command: "BuildCommand",
    #               start_command: "StartCommand",
    #               port: "String",
    #               runtime_environment_variables: {
    #                 "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #               },
    #               runtime_environment_secrets: {
    #                 "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #               }
    #             }
    #           },
    #           source_directory: "SourceDirectory"
    #         },
    #         image_repository: {
    #           image_identifier: "ImageIdentifier", # required
    #           image_configuration: {
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue"
    #             },
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue"
    #             }
    #           },
    #           image_repository_type: "ECR" # One of: ["ECR", "ECR_PUBLIC"], # required
    #         },
    #         auto_deployments_enabled: false,
    #         authentication_configuration: {
    #           connection_arn: "AppRunnerResourceArn",
    #           access_role_arn: "RoleArn"
    #         }
    #       },
    #       instance_configuration: { # required
    #         cpu: "Cpu",
    #         memory: "Memory",
    #         instance_role_arn: "RoleArn"
    #       },
    #       encryption_configuration: {
    #         kms_key: "KmsKeyArn", # required
    #       },
    #       health_check_configuration: {
    #         protocol: "TCP" # One of: ["TCP", "HTTP"],
    #         path: "HealthCheckPath",
    #         interval: 1,
    #         timeout: 1,
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1
    #       },
    #       auto_scaling_configuration_summary: { # required
    #         auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #         auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #         auto_scaling_configuration_revision: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         created_at: Time.now,
    #         has_associated_service: false,
    #         is_default: false
    #       },
    #       network_configuration: { # required
    #         egress_configuration: {
    #           egress_type: "DEFAULT" # One of: ["DEFAULT", "VPC"],
    #           vpc_connector_arn: "AppRunnerResourceArn"
    #         },
    #         ingress_configuration: {
    #           is_publicly_accessible: false
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       },
    #       observability_configuration: {
    #         observability_enabled: false, # required
    #         observability_configuration_arn: "AppRunnerResourceArn"
    #       }
    #     },
    #     operation_id: "UUID", # required
    #   }
    # @return [Types::UpdateServiceResponse]
    def update_service(params = {}, options = {})
      request = build_request(:update_service, params)
      request.send_request(options)
    end

    # <p>Update an existing App Runner VPC Ingress Connection resource. The VPC Ingress Connection must be in one of the following states to be updated:</p>
    #          <ul>
    #             <li>
    #                <p>
    #           AVAILABLE
    #         </p>
    #             </li>
    #             <li>
    #                <p>
    #           FAILED_CREATION
    #         </p>
    #             </li>
    #             <li>
    #                <p>
    #           FAILED_UPDATE
    #         </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateVpcIngressConnectionRequest] params
    # @option params [String] :vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (Arn) for the App Runner VPC Ingress Connection resource that you want to update.</p>
    # @option params [Types::IngressVpcConfiguration] :ingress_vpc_configuration
    #   <p>Specifications for the customer’s Amazon VPC and the related Amazon Web Services PrivateLink VPC endpoint that are used to update the VPC Ingress Connection
    #         resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_ingress_connection_arn: "AppRunnerResourceArn", # required
    #     ingress_vpc_configuration: { # required
    #       vpc_id: "String",
    #       vpc_endpoint_id: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_vpc_ingress_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_ingress_connection: { # required
    #       vpc_ingress_connection_arn: "AppRunnerResourceArn",
    #       vpc_ingress_connection_name: "VpcIngressConnectionName",
    #       service_arn: "AppRunnerResourceArn",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"],
    #       account_id: "CustomerAccountId",
    #       domain_name: "DomainName",
    #       ingress_vpc_configuration: {
    #         vpc_id: "String",
    #         vpc_endpoint_id: "String"
    #       },
    #       created_at: Time.now,
    #       deleted_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateVpcIngressConnectionResponse]
    def update_vpc_ingress_connection(params = {}, options = {})
      request = build_request(:update_vpc_ingress_connection, params)
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
      context[:gem_name] = 'aws-sdk-apprunner'
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
