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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ElasticLoadBalancingV2
  # An API client for Aws::ElasticLoadBalancingV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ElasticLoadBalancingV10

    add_plugin(::Aws::ElasticLoadBalancingV2::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ElasticLoadBalancingV2::EndpointProvider)
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

    # <p>Adds the specified SSL server certificate to the certificate list for the specified HTTPS
    #       or TLS listener.</p>
    #          <p>If the certificate in already in the certificate list, the call is successful but the
    #       certificate is not added again.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/https-listener-certificates.html">SSL
    #         certificates</a> in the <i>Application Load Balancers Guide</i> or <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/tls-listener-certificates.html">Server 
    #         certificates</a> in the <i>Network Load Balancers Guide</i>.</p>
    # @param [Hash, Types::AddListenerCertificatesInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>The certificate to add. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #     certificates: [ # required
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_listener_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false
    #       }
    #     ]
    #   }
    # @return [Types::AddListenerCertificatesOutput]
    def add_listener_certificates(params = {}, options = {})
      request = build_request(:add_listener_certificates, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your
    #       Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups,
    #       trust stores, listeners, and rules.</p>
    #          <p>Each tag consists of a key and an optional value. If a resource already has a tag with the
    #       same key, <code>AddTags</code> updates its value.</p>
    # @param [Hash, Types::AddTagsInput] params
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags.</p>
    # @example To add tags to a load balancer
    #   # This example adds the specified tags to the specified load balancer.
    #   params = {
    #     resource_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #     ],
    #     tags: [
    #       {
    #         key: "project",
    #         value: "lima"
    #       },
    #       {
    #         key: "department",
    #         value: "digital-media"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsOutput]
    def add_tags(params = {}, options = {})
      request = build_request(:add_tags, params)
      request.send_request(options)
    end

    # <p>Adds the specified revocation file to the specified trust store.</p>
    # @param [Hash, Types::AddTrustStoreRevocationsInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [Array<Types::RevocationContent>] :revocation_contents
    #   <p>The revocation file to add.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     revocation_contents: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion",
    #         revocation_type: "CRL" # One of: ["CRL"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_trust_store_revocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store_revocations: [
    #       {
    #         trust_store_arn: "TrustStoreArn",
    #         revocation_id: 1,
    #         revocation_type: "CRL" # One of: ["CRL"],
    #         number_of_revoked_entries: 1
    #       }
    #     ]
    #   }
    # @return [Types::AddTrustStoreRevocationsOutput]
    def add_trust_store_revocations(params = {}, options = {})
      request = build_request(:add_trust_store_revocations, params)
      request.send_request(options)
    end

    # <p>Creates a listener for the specified Application Load Balancer, Network Load Balancer, or
    #       Gateway Load Balancer.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html">Listeners for
    #             your Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html">Listeners for
    #             your Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-listeners.html">Listeners for your
    #             Gateway Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation is idempotent, which means that it completes at most one time. If you
    #       attempt to create multiple listeners with the same settings, each call succeeds.</p>
    # @param [Hash, Types::CreateListenerInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [String] :protocol
    #   <p>The protocol for connections from clients to the load balancer. For Application Load
    #         Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the
    #         supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP
    #         protocol if dual-stack mode is enabled. You can't specify a protocol for a Gateway Load
    #         Balancer.</p>
    # @option params [Integer] :port
    #   <p>The port on which the load balancer is listening. You can't specify a port for a Gateway
    #         Load Balancer.</p>
    # @option params [String] :ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html">Security policies</a> in the <i>Application Load Balancers Guide</i> and
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    # @option params [Array<Types::Action>] :default_actions
    #   <p>The actions for the default rule.</p>
    # @option params [Array<String>] :alpn_policy
    #   <p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
    #         can specify one policy name. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTP1Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Preferred</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html#alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the listener.</p>
    # @option params [Types::MutualAuthenticationAttributes] :mutual_authentication
    #   <p>The mutual authentication configuration information.</p>
    # @example To create an HTTP listener
    #   # This example creates an HTTP listener for the specified load balancer that forwards requests to the specified target group.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     protocol: HTTP,
    #     port: 80,
    #     default_actions: [
    #       {
    #         type: forward,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_listener(params, options)
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         protocol: HTTP,
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ],
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         port: 80,
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    #       }
    #     ]
    #   }
    # @example To create an HTTPS listener
    #   # This example creates an HTTPS listener for the specified load balancer that forwards requests to the specified target group. Note that you must specify an SSL certificate for an HTTPS listener. You can create and manage certificates using AWS Certificate Manager (ACM). Alternatively, you can create a certificate using SSL/TLS tools, get the certificate signed by a certificate authority (CA), and upload the certificate to AWS Identity and Access Management (IAM).
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     protocol: HTTPS,
    #     port: 443,
    #     ssl_policy: "ELBSecurityPolicy-2015-05",
    #     certificates: [
    #       {
    #         certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-server-cert"
    #       }
    #     ],
    #     default_actions: [
    #       {
    #         type: forward,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_listener(params, options)
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         protocol: HTTPS,
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ],
    #         ssl_policy: "ELBSecurityPolicy-2015-05",
    #         certificates: [
    #           {
    #             certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-server-cert"
    #           }
    #         ],
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         port: 443,
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #     port: 1,
    #     ssl_policy: "SslPolicyName",
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false
    #       }
    #     ],
    #     default_actions: [ # required
    #       {
    #         type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType"
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ],
    #     alpn_policy: ["AlpnPolicyValue"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     mutual_authentication: {
    #       mode: "Mode",
    #       trust_store_arn: "TrustStoreArn",
    #       ignore_client_certificate_expiry: false,
    #       trust_store_association_status: "active" # One of: ["active", "removed"],
    #       advertise_trust_store_ca_names: "on" # One of: ["on", "off"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         listener_arn: "ListenerArn",
    #         load_balancer_arn: "LoadBalancerArn",
    #         port: 1,
    #         protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         certificates: [
    #           {
    #             certificate_arn: "CertificateArn",
    #             is_default: false
    #           }
    #         ],
    #         ssl_policy: "SslPolicyName",
    #         default_actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         alpn_policy: ["AlpnPolicyValue"],
    #         mutual_authentication: {
    #           mode: "Mode",
    #           trust_store_arn: "TrustStoreArn",
    #           ignore_client_certificate_expiry: false,
    #           trust_store_association_status: "active" # One of: ["active", "removed"],
    #           advertise_trust_store_ca_names: "on" # One of: ["on", "off"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CreateListenerOutput]
    def create_listener(params = {}, options = {})
      request = build_request(:create_listener, params)
      request.send_request(options)
    end

    # <p>Creates an Application Load Balancer, Network Load Balancer, or Gateway Load
    #       Balancer.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html">Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html">Network Load
    #             Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html">Gateway Load
    #             Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation is idempotent, which means that it completes at most one time. If you
    #       attempt to create multiple load balancers with the same settings, each call succeeds.</p>
    # @param [Hash, Types::CreateLoadBalancerInput] params
    # @option params [String] :name
    #   <p>The name of the load balancer.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must
    #         not begin with "internal-".</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings, but not both. To specify an Elastic IP
    #         address, specify subnet mappings instead of subnets.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] You can specify subnets from one or more 
    #         Availability Zones.</p>
    # @option params [Array<Types::SubnetMapping>] :subnet_mappings
    #   <p>The IDs of the subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings, but not both.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones. You can't specify Elastic IP addresses for your subnets.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can specify one Elastic IP address per subnet if you need static IP addresses for your
    #         internet-facing load balancer. For internal load balancers, you can specify one private IP
    #         address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
    #         can specify one IPv6 address per subnet.</p>
    #            <p>[Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can't specify Elastic IP addresses for your subnets.</p>
    # @option params [Array<String>] :security_groups
    #   <p>[Application Load Balancers and Network Load Balancers] The IDs of the security groups for
    #         the load balancer.</p>
    # @option params [String] :scheme
    #   <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
    #         Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
    #         Therefore, Internet-facing load balancers can route requests from clients over the
    #         internet.</p>
    #            <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
    #         internal load balancer is publicly resolvable to the private IP addresses of the nodes.
    #         Therefore, internal load balancers can route requests only from clients with access to the VPC
    #         for the load balancer.</p>
    #            <p>The default is an Internet-facing load balancer.</p>
    #            <p>You can't specify a scheme for a Gateway Load Balancer.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the load balancer.</p>
    # @option params [String] :type
    #   <p>The type of load balancer. The default is <code>application</code>.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type. Internal load balancers must use <code>ipv4</code>.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    # @option params [String] :customer_owned_ipv4_pool
    #   <p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool (CoIP
    #         pool).</p>
    # @option params [String] :enable_prefix_for_ipv6_source_nat
    #   <p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix 
    #         from each subnet for source NAT. The IP address type must be <code>dualstack</code>. 
    #         The default value is <code>off</code>.</p>
    # @option params [Types::IpamPools] :ipam_pools
    #   <p>[Application Load Balancers] The IPAM pools to use with the load balancer.</p>
    # @example To create an Internet-facing load balancer
    #   # This example creates an Internet-facing load balancer and enables the Availability Zones for the specified subnets.
    #   params = {
    #     name: "my-load-balancer",
    #     subnets: [
    #       "subnet-b7d581c0",
    #       "subnet-8360a9e7"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         vpc_id: "vpc-3ac0fb5f",
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         state: {
    #           code: provisioning
    #         },
    #         dns_name: "my-load-balancer-424835706.us-west-2.elb.amazonaws.com",
    #         security_groups: [
    #           "sg-5943793c"
    #         ],
    #         load_balancer_name: "my-load-balancer",
    #         created_time: Time.parse("2016-03-25T21:26:12.920Z"),
    #         scheme: internet-facing,
    #         type: application,
    #         canonical_hosted_zone_id: "Z2P70J7EXAMPLE",
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7",
    #             zone_name: "us-west-2a"
    #           },
    #           {
    #             subnet_id: "subnet-b7d581c0",
    #             zone_name: "us-west-2b"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example To create an internal load balancer
    #   # This example creates an internal load balancer and enables the Availability Zones for the specified subnets.
    #   params = {
    #     name: "my-internal-load-balancer",
    #     subnets: [
    #       "subnet-b7d581c0",
    #       "subnet-8360a9e7"
    #     ],
    #     security_groups: [
    #     ],
    #     scheme: internal
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         vpc_id: "vpc-3ac0fb5f",
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-internal-load-balancer/5b49b8d4303115c2",
    #         state: {
    #           code: provisioning
    #         },
    #         dns_name: "internal-my-internal-load-balancer-1529930873.us-west-2.elb.amazonaws.com",
    #         security_groups: [
    #           "sg-5943793c"
    #         ],
    #         load_balancer_name: "my-internal-load-balancer",
    #         created_time: Time.parse("2016-03-25T21:29:48.850Z"),
    #         scheme: internal,
    #         type: application,
    #         canonical_hosted_zone_id: "Z2P70J7EXAMPLE",
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7",
    #             zone_name: "us-west-2a"
    #           },
    #           {
    #             subnet_id: "subnet-b7d581c0",
    #             zone_name: "us-west-2b"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LoadBalancerName", # required
    #     subnets: ["SubnetId"],
    #     subnet_mappings: [
    #       {
    #         subnet_id: "SubnetId",
    #         allocation_id: "AllocationId",
    #         private_i_pv4_address: "PrivateIPv4Address",
    #         i_pv6_address: "IPv6Address",
    #         source_nat_ipv6_prefix: "SourceNatIpv6Prefix"
    #       }
    #     ],
    #     security_groups: ["SecurityGroupId"],
    #     scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     type: "application" # One of: ["application", "network", "gateway"],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"],
    #     customer_owned_ipv4_pool: "CustomerOwnedIpv4Pool",
    #     enable_prefix_for_ipv6_source_nat: "on" # One of: ["on", "off"],
    #     ipam_pools: {
    #       ipv4_ipam_pool_id: "IpamPoolId"
    #     }
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         load_balancer_arn: "LoadBalancerArn",
    #         dns_name: "DNSName",
    #         canonical_hosted_zone_id: "CanonicalHostedZoneId",
    #         created_time: Time.now,
    #         load_balancer_name: "LoadBalancerName",
    #         scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #         vpc_id: "VpcId",
    #         state: {
    #           code: "active" # One of: ["active", "provisioning", "active_impaired", "failed"],
    #           reason: "StateReason"
    #         },
    #         type: "application" # One of: ["application", "network", "gateway"],
    #         availability_zones: [
    #           {
    #             zone_name: "ZoneName",
    #             subnet_id: "SubnetId",
    #             outpost_id: "OutpostId",
    #             load_balancer_addresses: [
    #               {
    #                 ip_address: "IpAddress",
    #                 allocation_id: "AllocationId",
    #                 private_i_pv4_address: "PrivateIPv4Address",
    #                 i_pv6_address: "IPv6Address"
    #               }
    #             ],
    #             source_nat_ipv6_prefixes: ["SourceNatIpv6Prefix"]
    #           }
    #         ],
    #         security_groups: ["SecurityGroupId"],
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"],
    #         customer_owned_ipv4_pool: "CustomerOwnedIpv4Pool",
    #         enforce_security_group_inbound_rules_on_private_link_traffic: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic",
    #         enable_prefix_for_ipv6_source_nat: "on" # One of: ["on", "off"],
    #         ipam_pools: {
    #           ipv4_ipam_pool_id: "IpamPoolId"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CreateLoadBalancerOutput]
    def create_load_balancer(params = {}, options = {})
      request = build_request(:create_load_balancer, params)
      request.send_request(options)
    end

    # <p>Creates a rule for the specified listener. The listener must be associated with an
    #       Application Load Balancer.</p>
    #          <p>Each rule consists of a priority, one or more actions, and one or more conditions. Rules
    #       are evaluated in priority order, from the lowest value to the highest value. When the
    #       conditions for a rule are met, its actions are performed. If the conditions for no rules are
    #       met, the actions for the default rule are performed. For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules">Listener rules</a> in the <i>Application Load Balancers Guide</i>.</p>
    # @param [Hash, Types::CreateRuleInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Array<Types::RuleCondition>] :conditions
    #   <p>The conditions.</p>
    # @option params [Integer] :priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    # @option params [Array<Types::Action>] :actions
    #   <p>The actions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the rule.</p>
    # @example To create a rule
    #   # This example creates a rule that forwards requests to the specified target group if the URL contains the specified pattern (for example, /img/*).
    #   params = {
    #     listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
    #     conditions: [
    #       {
    #         field: "path-pattern",
    #         values: [
    #           "/img/*"
    #         ]
    #       }
    #     ],
    #     priority: 10,
    #     actions: [
    #       {
    #         type: forward,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         priority: "10",
    #         conditions: [
    #           {
    #             field: "path-pattern",
    #             values: [
    #               "/img/*"
    #             ]
    #           }
    #         ],
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee",
    #         is_default: false,
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #     conditions: [ # required
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #         host_header_config: {
    #           values: ["StringValue"]
    #         },
    #         path_pattern_config: {
    #           values: ["StringValue"]
    #         },
    #         http_header_config: {
    #           http_header_name: "HttpHeaderConditionName",
    #           values: ["StringValue"]
    #         },
    #         query_string_config: {
    #           values: [
    #             {
    #               key: "StringValue",
    #               value: "StringValue"
    #             }
    #           ]
    #         },
    #         http_request_method_config: {
    #           values: ["StringValue"]
    #         },
    #         source_ip_config: {
    #           values: ["StringValue"]
    #         }
    #       }
    #     ],
    #     priority: 1, # required
    #     actions: [ # required
    #       {
    #         type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType"
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "RuleArn",
    #         priority: "String",
    #         conditions: [
    #           {
    #             field: "ConditionFieldName",
    #             values: ["StringValue"],
    #             host_header_config: {
    #               values: ["StringValue"]
    #             },
    #             path_pattern_config: {
    #               values: ["StringValue"]
    #             },
    #             http_header_config: {
    #               http_header_name: "HttpHeaderConditionName",
    #               values: ["StringValue"]
    #             },
    #             query_string_config: {
    #               values: [
    #                 {
    #                   key: "StringValue",
    #                   value: "StringValue"
    #                 }
    #               ]
    #             },
    #             http_request_method_config: {
    #               values: ["StringValue"]
    #             },
    #             source_ip_config: {
    #               values: ["StringValue"]
    #             }
    #           }
    #         ],
    #         actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         is_default: false
    #       }
    #     ]
    #   }
    # @return [Types::CreateRuleOutput]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Creates a target group.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html">Target
    #             groups for your Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html">Target groups
    #             for your Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html">Target groups for your
    #             Gateway Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation is idempotent, which means that it completes at most one time. If you
    #       attempt to create multiple target groups with the same settings, each call succeeds.</p>
    # @param [Hash, Types::CreateTargetGroupInput] params
    # @option params [String] :name
    #   <p>The name of the target group.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, and must not begin or end with a
    #         hyphen.</p>
    # @option params [String] :protocol
    #   <p>The protocol to use for routing traffic to the targets. For Application Load Balancers,
    #         the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported
    #         protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is
    #         GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a
    #         Lambda function, this parameter does not apply.</p>
    # @option params [String] :protocol_version
    #   <p>[HTTP/HTTPS protocol] The protocol version. Specify <code>GRPC</code> to send requests to
    #         targets using gRPC. Specify <code>HTTP2</code> to send requests to targets using HTTP/2. The
    #         default is <code>HTTP1</code>, which sends requests to targets using HTTP/1.1.</p>
    # @option params [Integer] :port
    #   <p>The port on which the targets receive traffic. This port is used unless you specify a port
    #         override when registering the target. If the target is a Lambda function, this parameter does
    #         not apply. If the protocol is GENEVE, the supported port is 6081.</p>
    # @option params [String] :vpc_id
    #   <p>The identifier of the virtual private cloud (VPC). If the target is a Lambda function,
    #         this parameter does not apply. Otherwise, this parameter is required.</p>
    # @option params [String] :health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are
    #         not supported for health checks.</p>
    # @option params [String] :health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets. If the protocol
    #         is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is <code>traffic-port</code>, which is
    #         the port on which each target receives traffic from the load balancer. If the protocol is
    #         GENEVE, the default is port 80.</p>
    # @option params [Boolean] :health_check_enabled
    #   <p>Indicates whether health checks are enabled. If the target type is <code>lambda</code>,
    #         health checks are disabled by default but can be enabled. If the target type is
    #           <code>instance</code>, <code>ip</code>, or <code>alb</code>, health checks are always
    #         enabled and can't be disabled.</p>
    # @option params [String] :health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300.
    #         If the target group protocol is TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS, the default is 30 seconds. 
    #         If the target group protocol is GENEVE, the default is 10 seconds. 
    #         If the target type is <code>lambda</code>, the default is 35 seconds.</p>
    # @option params [Integer] :health_check_timeout_seconds
    #   <p>The amount of time, in seconds, during which no response from a target means a failed 
    #         health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the 
    #         default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default 
    #         is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If 
    #         the target type is <code>lambda</code>, the default is 30 seconds.</p>
    # @option params [Integer] :healthy_threshold_count
    #   <p>The number of consecutive health check successes required before considering a target healthy. The range is 
    #         2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 5. For target groups 
    #         with a protocol of GENEVE, the default is 5. If the target type 
    #         is <code>lambda</code>, the default is 5.</p>
    # @option params [Integer] :unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering a target unhealthy. The range is 
    #         2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 2. For target groups 
    #         with a protocol of GENEVE, the default is 2. If the target type 
    #         is <code>lambda</code>, the default is 5.</p>
    # @option params [Types::Matcher] :matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful 
    #         response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range 
    #         is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499. For target 
    #         groups with a protocol of GENEVE, the range is 200-399.</p>
    # @option params [String] :target_type
    #   <p>The type of target that you must specify when registering targets with this target group.
    #         You can't specify targets for a target group using more than one target type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>instance</code> - Register targets by instance ID. This is the default
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ip</code> - Register targets by IP address. You can specify IP addresses from
    #             the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range
    #             (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10).
    #             You can't specify publicly routable IP addresses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda</code> - Register a single Lambda function as a target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>alb</code> - Register a single Application Load Balancer as a target.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the target group.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type. The default value is <code>ipv4</code>.</p>
    # @example To create a target group
    #   # This example creates a target group that you can use to route traffic to targets using HTTP on port 80. This target group uses the default health check configuration.
    #   params = {
    #     name: "my-targets",
    #     protocol: HTTP,
    #     port: 80,
    #     vpc_id: "vpc-3ac0fb5f"
    #   }
    #   options = {}
    #   response = client.create_target_group(params, options)
    #   response.to_h #=>
    #   {
    #     target_groups: [
    #       {
    #         health_check_path: "/",
    #         health_check_interval_seconds: 30,
    #         vpc_id: "vpc-3ac0fb5f",
    #         protocol: HTTP,
    #         health_check_timeout_seconds: 5,
    #         health_check_protocol: HTTP,
    #         unhealthy_threshold_count: 2,
    #         healthy_threshold_count: 5,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #         matcher: {
    #           http_code: "200"
    #         },
    #         health_check_port: "traffic-port",
    #         port: 80,
    #         target_group_name: "my-targets"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TargetGroupName", # required
    #     protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #     protocol_version: "ProtocolVersion",
    #     port: 1,
    #     vpc_id: "VpcId",
    #     health_check_protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #     health_check_port: "HealthCheckPort",
    #     health_check_enabled: false,
    #     health_check_path: "Path",
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: "HttpCode",
    #       grpc_code: "GrpcCode"
    #     },
    #     target_type: "instance" # One of: ["instance", "ip", "lambda", "alb"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "ipv6"]
    #   }
    #   options = {}
    #   response = client.create_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_groups: [
    #       {
    #         target_group_arn: "TargetGroupArn",
    #         target_group_name: "TargetGroupName",
    #         protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         port: 1,
    #         vpc_id: "VpcId",
    #         health_check_protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         health_check_port: "HealthCheckPort",
    #         health_check_enabled: false,
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         health_check_path: "Path",
    #         matcher: {
    #           http_code: "HttpCode",
    #           grpc_code: "GrpcCode"
    #         },
    #         load_balancer_arns: ["LoadBalancerArn"],
    #         target_type: "instance" # One of: ["instance", "ip", "lambda", "alb"],
    #         protocol_version: "ProtocolVersion",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "ipv6"]
    #       }
    #     ]
    #   }
    # @return [Types::CreateTargetGroupOutput]
    def create_target_group(params = {}, options = {})
      request = build_request(:create_target_group, params)
      request.send_request(options)
    end

    # <p>Creates a trust store.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/mutual-authentication.html">Mutual TLS for Application Load Balancers</a>.</p>
    # @param [Hash, Types::CreateTrustStoreInput] params
    # @option params [String] :name
    #   <p>The name of the trust store.</p>
    #            <p>This name must be unique per region and can't be changed after creation.</p>
    # @option params [String] :ca_certificates_bundle_s3_bucket
    #   <p>The Amazon S3 bucket for the ca certificates bundle.</p>
    # @option params [String] :ca_certificates_bundle_s3_key
    #   <p>The Amazon S3 path for the ca certificates bundle.</p>
    # @option params [String] :ca_certificates_bundle_s3_object_version
    #   <p>The Amazon S3 object version for the ca certificates bundle. If undefined the current version is used.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the trust store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TrustStoreName", # required
    #     ca_certificates_bundle_s3_bucket: "S3Bucket", # required
    #     ca_certificates_bundle_s3_key: "S3Key", # required
    #     ca_certificates_bundle_s3_object_version: "S3ObjectVersion",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_stores: [
    #       {
    #         name: "TrustStoreName",
    #         trust_store_arn: "TrustStoreArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING"],
    #         number_of_ca_certificates: 1,
    #         total_revoked_entries: 1
    #       }
    #     ]
    #   }
    # @return [Types::CreateTrustStoreOutput]
    def create_trust_store(params = {}, options = {})
      request = build_request(:create_trust_store, params)
      request.send_request(options)
    end

    # <p>Deletes the specified listener.</p>
    #          <p>Alternatively, your listener is deleted when you delete the load balancer to which it is
    #         attached.</p>
    # @param [Hash, Types::DeleteListenerInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @example To delete a listener
    #   # This example deletes the specified listener.
    #   params = {
    #     listener_arn: "arn:aws:elasticloadbalancing:ua-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    #   }
    #   options = {}
    #   response = client.delete_listener(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #   }
    #   options = {}
    #   response = client.delete_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteListenerOutput]
    def delete_listener(params = {}, options = {})
      request = build_request(:delete_listener, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Application Load Balancer, Network Load Balancer, or Gateway Load
    #       Balancer. Deleting a load balancer also deletes its listeners.</p>
    #          <p>You can't delete a load balancer if deletion protection is enabled. If the load balancer
    #       does not exist or has already been deleted, the call succeeds.</p>
    #          <p>Deleting a load balancer does not affect its registered targets. For example, your EC2
    #       instances continue to run and are still registered to their target groups. If you no longer
    #       need these EC2 instances, you can stop or terminate them.</p>
    # @param [Hash, Types::DeleteLoadBalancerInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @example To delete a load balancer
    #   # This example deletes the specified load balancer.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #   }
    #   options = {}
    #   response = client.delete_load_balancer(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   }
    #   options = {}
    #   response = client.delete_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLoadBalancerOutput]
    def delete_load_balancer(params = {}, options = {})
      request = build_request(:delete_load_balancer, params)
      request.send_request(options)
    end

    # <p>Deletes the specified rule.</p>
    #          <p>You can't delete the default rule.</p>
    # @param [Hash, Types::DeleteRuleInput] params
    # @option params [String] :rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    # @example To delete a rule
    #   # This example deletes the specified rule.
    #   params = {
    #     rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3"
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_arn: "RuleArn", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleOutput]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a shared trust store association.</p>
    # @param [Hash, Types::DeleteSharedTrustStoreAssociationInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Delete a shared trust store association
    #   # This example deletes the association between the specified trust store and the specified load balancer.
    #   params = {
    #     trust_store_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:truststore/my-trust-store/73e2d6bc24d8a063",
    #     resource_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/my-load-balancer/80233fa81d678c2c"
    #   }
    #   options = {}
    #   response = client.delete_shared_trust_store_association(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_shared_trust_store_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSharedTrustStoreAssociationOutput]
    def delete_shared_trust_store_association(params = {}, options = {})
      request = build_request(:delete_shared_trust_store_association, params)
      request.send_request(options)
    end

    # <p>Deletes the specified target group.</p>
    #          <p>You can delete a target group if it is not referenced by any actions. Deleting a target
    #       group also deletes any associated health checks. Deleting a target group does not affect its
    #       registered targets. For example, any EC2 instances continue to run until you stop or terminate
    #       them.</p>
    # @param [Hash, Types::DeleteTargetGroupInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @example To delete a target group
    #   # This example deletes the specified target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #   }
    #   options = {}
    #   response = client.delete_target_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #   }
    #   options = {}
    #   response = client.delete_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTargetGroupOutput]
    def delete_target_group(params = {}, options = {})
      request = build_request(:delete_target_group, params)
      request.send_request(options)
    end

    # <p>Deletes a trust store.</p>
    # @param [Hash, Types::DeleteTrustStoreInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #   }
    #   options = {}
    #   response = client.delete_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrustStoreOutput]
    def delete_trust_store(params = {}, options = {})
      request = build_request(:delete_trust_store, params)
      request.send_request(options)
    end

    # <p>Deregisters the specified targets from the specified target group. After the targets are
    #       deregistered, they no longer receive traffic from the load balancer.</p>
    #          <p>The load balancer stops sending requests to targets that are deregistering, but uses 
    #       connection draining to ensure that in-flight traffic completes on the existing connections. 
    #       This deregistration delay is configured by default but can be updated for each target group.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/edit-target-group-attributes.html#deregistration-delay">
    #           Deregistration delay</a> in the <i>Application Load Balancers User Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/edit-target-group-attributes.html#deregistration-delay">
    #           Deregistration delay</a> in the <i>Network Load Balancers User Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/edit-target-group-attributes.html#deregistration-delay">
    #           Deregistration delay</a> in the <i>Gateway Load Balancers User Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Note: If the specified target does not exist, the action returns successfully.</p>
    # @param [Hash, Types::DeregisterTargetsInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @option params [Array<Types::TargetDescription>] :targets
    #   <p>The targets. If you specified a port override when you registered a target, you must
    #         specify both the target ID and the port when you deregister it.</p>
    # @example To deregister a target from a target group
    #   # This example deregisters the specified instance from the specified target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #     targets: [
    #       {
    #         id: "i-0f76fade"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.deregister_targets(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.deregister_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterTargetsOutput]
    def deregister_targets(params = {}, options = {})
      request = build_request(:deregister_targets, params)
      request.send_request(options)
    end

    # <p>Describes the current Elastic Load Balancing resource limits for your Amazon Web Services
    #       account.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Quotas for your
    #             Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Quotas for your
    #             Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html">Quotas for your Gateway
    #             Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeAccountLimitsInput] params
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_account_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limits: [
    #       {
    #         name: "Name",
    #         max: "Max"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeAccountLimitsOutput]
    def describe_account_limits(params = {}, options = {})
      request = build_request(:describe_account_limits, params)
      request.send_request(options)
    end

    # <p>Describes the capacity reservation status for the specified load balancer.</p>
    # @param [Hash, Types::DescribeCapacityReservationInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   }
    #   options = {}
    #   response = client.describe_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified_time: Time.now,
    #     decrease_requests_remaining: 1,
    #     minimum_load_balancer_capacity: {
    #       capacity_units: 1
    #     },
    #     capacity_reservation_state: [
    #       {
    #         state: {
    #           code: "provisioned" # One of: ["provisioned", "pending", "rebalancing", "failed"],
    #           reason: "StateReason"
    #         },
    #         availability_zone: "ZoneName",
    #         effective_capacity_units: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCapacityReservationOutput]
    def describe_capacity_reservation(params = {}, options = {})
      request = build_request(:describe_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>Describes the attributes for the specified listener.</p>
    # @param [Hash, Types::DescribeListenerAttributesInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @example Describe listener attributes
    #   # This example describes the attributes of the specified listener.
    #   params = {
    #     listener_arn: "aws:elasticloadbalancing:us-east-1:123456789012:listener/net/my-listener/73e2d6bc24d8a067/d5dc06411fa5bcea"
    #   }
    #   options = {}
    #   response = client.describe_listener_attributes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #   }
    #   options = {}
    #   response = client.describe_listener_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: "ListenerAttributeKey",
    #         value: "ListenerAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeListenerAttributesOutput]
    def describe_listener_attributes(params = {}, options = {})
      request = build_request(:describe_listener_attributes, params)
      request.send_request(options)
    end

    # <p>Describes the default certificate and the certificate list for the specified HTTPS or TLS
    #       listener.</p>
    #          <p>If the default certificate is also in the certificate list, it appears twice in the
    #       results (once with <code>IsDefault</code> set to true and once with <code>IsDefault</code> set
    #       to false).</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/https-listener-certificates.html">SSL certificates</a> in the <i>Application Load Balancers Guide</i> or
    #         <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/tls-listener-certificates.html">Server certificates</a> in the <i>Network Load Balancers
    #       Guide</i>.</p>
    # @param [Hash, Types::DescribeListenerCertificatesInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Names (ARN) of the listener.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_listener_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeListenerCertificatesOutput]
    def describe_listener_certificates(params = {}, options = {})
      request = build_request(:describe_listener_certificates, params)
      request.send_request(options)
    end

    # <p>Describes the specified listeners or the listeners for the specified Application Load
    #       Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load
    #       balancer or one or more listeners.</p>
    # @param [Hash, Types::DescribeListenersInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Array<String>] :listener_arns
    #   <p>The Amazon Resource Names (ARN) of the listeners.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example To describe a listener
    #   # This example describes the specified listener.
    #   params = {
    #     listener_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_listeners(params, options)
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         protocol: HTTP,
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ],
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         port: 80,
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn",
    #     listener_arns: ["ListenerArn"],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_listeners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         listener_arn: "ListenerArn",
    #         load_balancer_arn: "LoadBalancerArn",
    #         port: 1,
    #         protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         certificates: [
    #           {
    #             certificate_arn: "CertificateArn",
    #             is_default: false
    #           }
    #         ],
    #         ssl_policy: "SslPolicyName",
    #         default_actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         alpn_policy: ["AlpnPolicyValue"],
    #         mutual_authentication: {
    #           mode: "Mode",
    #           trust_store_arn: "TrustStoreArn",
    #           ignore_client_certificate_expiry: false,
    #           trust_store_association_status: "active" # One of: ["active", "removed"],
    #           advertise_trust_store_ca_names: "on" # One of: ["on", "off"]
    #         }
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeListenersOutput]
    def describe_listeners(params = {}, options = {})
      request = build_request(:describe_listeners, params)
      request.send_request(options)
    end

    # <p>Describes the attributes for the specified Application Load Balancer, Network Load
    #       Balancer, or Gateway Load Balancer.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes">Load balancer attributes</a> in the <i>Application Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes">Load balancer attributes</a> in the <i>Network Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes">Load balancer attributes</a> in the <i>Gateway Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeLoadBalancerAttributesInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @example To describe load balancer attributes
    #   # This example describes the attributes of the specified load balancer.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: "false",
    #         key: "access_logs.s3.enabled"
    #       },
    #       {
    #         value: "60",
    #         key: "idle_timeout.timeout_seconds"
    #       },
    #       {
    #         value: "",
    #         key: "access_logs.s3.prefix"
    #       },
    #       {
    #         value: "false",
    #         key: "deletion_protection.enabled"
    #       },
    #       {
    #         value: "",
    #         key: "access_logs.s3.bucket"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: "LoadBalancerAttributeKey",
    #         value: "LoadBalancerAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLoadBalancerAttributesOutput]
    def describe_load_balancer_attributes(params = {}, options = {})
      request = build_request(:describe_load_balancer_attributes, params)
      request.send_request(options)
    end

    # <p>Describes the specified load balancers or all of your load balancers.</p>
    # @param [Hash, Types::DescribeLoadBalancersInput] params
    # @option params [Array<String>] :load_balancer_arns
    #   <p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load
    #         balancers in a single call.</p>
    # @option params [Array<String>] :names
    #   <p>The names of the load balancers.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example To describe a load balancer
    #   # This example describes the specified load balancer.
    #   params = {
    #     load_balancer_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_load_balancers(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         vpc_id: "vpc-3ac0fb5f",
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         state: {
    #           code: active
    #         },
    #         dns_name: "my-load-balancer-424835706.us-west-2.elb.amazonaws.com",
    #         security_groups: [
    #           "sg-5943793c"
    #         ],
    #         load_balancer_name: "my-load-balancer",
    #         created_time: Time.parse("2016-03-25T21:26:12.920Z"),
    #         scheme: internet-facing,
    #         type: application,
    #         canonical_hosted_zone_id: "Z2P70J7EXAMPLE",
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7",
    #             zone_name: "us-west-2a"
    #           },
    #           {
    #             subnet_id: "subnet-b7d581c0",
    #             zone_name: "us-west-2b"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arns: ["LoadBalancerArn"],
    #     names: ["LoadBalancerName"],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         load_balancer_arn: "LoadBalancerArn",
    #         dns_name: "DNSName",
    #         canonical_hosted_zone_id: "CanonicalHostedZoneId",
    #         created_time: Time.now,
    #         load_balancer_name: "LoadBalancerName",
    #         scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #         vpc_id: "VpcId",
    #         state: {
    #           code: "active" # One of: ["active", "provisioning", "active_impaired", "failed"],
    #           reason: "StateReason"
    #         },
    #         type: "application" # One of: ["application", "network", "gateway"],
    #         availability_zones: [
    #           {
    #             zone_name: "ZoneName",
    #             subnet_id: "SubnetId",
    #             outpost_id: "OutpostId",
    #             load_balancer_addresses: [
    #               {
    #                 ip_address: "IpAddress",
    #                 allocation_id: "AllocationId",
    #                 private_i_pv4_address: "PrivateIPv4Address",
    #                 i_pv6_address: "IPv6Address"
    #               }
    #             ],
    #             source_nat_ipv6_prefixes: ["SourceNatIpv6Prefix"]
    #           }
    #         ],
    #         security_groups: ["SecurityGroupId"],
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"],
    #         customer_owned_ipv4_pool: "CustomerOwnedIpv4Pool",
    #         enforce_security_group_inbound_rules_on_private_link_traffic: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic",
    #         enable_prefix_for_ipv6_source_nat: "on" # One of: ["on", "off"],
    #         ipam_pools: {
    #           ipv4_ipam_pool_id: "IpamPoolId"
    #         }
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeLoadBalancersOutput]
    def describe_load_balancers(params = {}, options = {})
      request = build_request(:describe_load_balancers, params)
      request.send_request(options)
    end

    # <p>Describes the specified rules or the rules for the specified listener. You must specify
    #       either a listener or one or more rules.</p>
    # @param [Hash, Types::DescribeRulesInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Array<String>] :rule_arns
    #   <p>The Amazon Resource Names (ARN) of the rules.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example To describe a rule
    #   # This example describes the specified rule.
    #   params = {
    #     rule_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_rules(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         priority: "10",
    #         conditions: [
    #           {
    #             field: "path-pattern",
    #             values: [
    #               "/img/*"
    #             ]
    #           }
    #         ],
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee",
    #         is_default: false,
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn",
    #     rule_arns: ["RuleArn"],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "RuleArn",
    #         priority: "String",
    #         conditions: [
    #           {
    #             field: "ConditionFieldName",
    #             values: ["StringValue"],
    #             host_header_config: {
    #               values: ["StringValue"]
    #             },
    #             path_pattern_config: {
    #               values: ["StringValue"]
    #             },
    #             http_header_config: {
    #               http_header_name: "HttpHeaderConditionName",
    #               values: ["StringValue"]
    #             },
    #             query_string_config: {
    #               values: [
    #                 {
    #                   key: "StringValue",
    #                   value: "StringValue"
    #                 }
    #               ]
    #             },
    #             http_request_method_config: {
    #               values: ["StringValue"]
    #             },
    #             source_ip_config: {
    #               values: ["StringValue"]
    #             }
    #           }
    #         ],
    #         actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         is_default: false
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeRulesOutput]
    def describe_rules(params = {}, options = {})
      request = build_request(:describe_rules, params)
      request.send_request(options)
    end

    # <p>Describes the specified policies or all policies used for SSL negotiation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html">Security policies</a> in the <i>Application Load Balancers Guide</i> and
    #         <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    # @param [Hash, Types::DescribeSSLPoliciesInput] params
    # @option params [Array<String>] :names
    #   <p>The names of the policies.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @option params [String] :load_balancer_type
    #   <p> The type of load balancer. The default lists the SSL policies for all load
    #         balancers.</p>
    # @example To describe a policy used for SSL negotiation
    #   # This example describes the specified policy used for SSL negotiation.
    #   params = {
    #     names: [
    #       "ELBSecurityPolicy-2015-05"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_ssl_policies(params, options)
    #   response.to_h #=>
    #   {
    #     ssl_policies: [
    #       {
    #         ssl_protocols: [
    #           "TLSv1",
    #           "TLSv1.1",
    #           "TLSv1.2"
    #         ],
    #         ciphers: [
    #           {
    #             priority: 1,
    #             name: "ECDHE-ECDSA-AES128-GCM-SHA256"
    #           },
    #           {
    #             priority: 2,
    #             name: "ECDHE-RSA-AES128-GCM-SHA256"
    #           },
    #           {
    #             priority: 3,
    #             name: "ECDHE-ECDSA-AES128-SHA256"
    #           },
    #           {
    #             priority: 4,
    #             name: "ECDHE-RSA-AES128-SHA256"
    #           },
    #           {
    #             priority: 5,
    #             name: "ECDHE-ECDSA-AES128-SHA"
    #           },
    #           {
    #             priority: 6,
    #             name: "ECDHE-RSA-AES128-SHA"
    #           },
    #           {
    #             priority: 7,
    #             name: "DHE-RSA-AES128-SHA"
    #           },
    #           {
    #             priority: 8,
    #             name: "ECDHE-ECDSA-AES256-GCM-SHA384"
    #           },
    #           {
    #             priority: 9,
    #             name: "ECDHE-RSA-AES256-GCM-SHA384"
    #           },
    #           {
    #             priority: 10,
    #             name: "ECDHE-ECDSA-AES256-SHA384"
    #           },
    #           {
    #             priority: 11,
    #             name: "ECDHE-RSA-AES256-SHA384"
    #           },
    #           {
    #             priority: 12,
    #             name: "ECDHE-RSA-AES256-SHA"
    #           },
    #           {
    #             priority: 13,
    #             name: "ECDHE-ECDSA-AES256-SHA"
    #           },
    #           {
    #             priority: 14,
    #             name: "AES128-GCM-SHA256"
    #           },
    #           {
    #             priority: 15,
    #             name: "AES128-SHA256"
    #           },
    #           {
    #             priority: 16,
    #             name: "AES128-SHA"
    #           },
    #           {
    #             priority: 17,
    #             name: "AES256-GCM-SHA384"
    #           },
    #           {
    #             priority: 18,
    #             name: "AES256-SHA256"
    #           },
    #           {
    #             priority: 19,
    #             name: "AES256-SHA"
    #           }
    #         ],
    #         name: "ELBSecurityPolicy-2015-05"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["SslPolicyName"],
    #     marker: "Marker",
    #     page_size: 1,
    #     load_balancer_type: "application" # One of: ["application", "network", "gateway"]
    #   }
    #   options = {}
    #   response = client.describe_ssl_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ssl_policies: [
    #       {
    #         ssl_protocols: ["SslProtocol"],
    #         ciphers: [
    #           {
    #             name: "CipherName",
    #             priority: 1
    #           }
    #         ],
    #         name: "SslPolicyName",
    #         supported_load_balancer_types: ["StringValue"]
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeSSLPoliciesOutput]
    def describe_ssl_policies(params = {}, options = {})
      request = build_request(:describe_ssl_policies, params)
      request.send_request(options)
    end

    # <p>Describes the tags for the specified Elastic Load Balancing resources. You can describe
    #       the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load
    #       Balancers, target groups, listeners, or rules.</p>
    # @param [Hash, Types::DescribeTagsInput] params
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a
    #         single call.</p>
    # @example To describe the tags assigned to a load balancer
    #   # This example describes the tags assigned to the specified load balancer.
    #   params = {
    #     resource_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tag_descriptions: [
    #       {
    #         resource_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         tags: [
    #           {
    #             key: "project",
    #             value: "lima"
    #           },
    #           {
    #             key: "department",
    #             value: "digital-media"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"], # required
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_descriptions: [
    #       {
    #         resource_arn: "ResourceArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTagsOutput]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Describes the attributes for the specified target group.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes">Target group attributes</a> in the <i>Application Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes">Target group attributes</a> in the <i>Network Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes">Target group attributes</a> in the <i>Gateway Load Balancers
    #             Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeTargetGroupAttributesInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @example To describe target group attributes
    #   # This example describes the attributes of the specified target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #   }
    #   options = {}
    #   response = client.describe_target_group_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: "false",
    #         key: "stickiness.enabled"
    #       },
    #       {
    #         value: "300",
    #         key: "deregistration_delay.timeout_seconds"
    #       },
    #       {
    #         value: "lb_cookie",
    #         key: "stickiness.type"
    #       },
    #       {
    #         value: "86400",
    #         key: "stickiness.lb_cookie.duration_seconds"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #   }
    #   options = {}
    #   response = client.describe_target_group_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: "TargetGroupAttributeKey",
    #         value: "TargetGroupAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTargetGroupAttributesOutput]
    def describe_target_group_attributes(params = {}, options = {})
      request = build_request(:describe_target_group_attributes, params)
      request.send_request(options)
    end

    # <p>Describes the specified target groups or all of your target groups. By default, all target
    #       groups are described. Alternatively, you can specify one of the following to filter the
    #       results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of
    #       one or more target groups.</p>
    # @param [Hash, Types::DescribeTargetGroupsInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Array<String>] :target_group_arns
    #   <p>The Amazon Resource Names (ARN) of the target groups.</p>
    # @option params [Array<String>] :names
    #   <p>The names of the target groups.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example To describe a target group
    #   # This example describes the specified target group.
    #   params = {
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_target_groups(params, options)
    #   response.to_h #=>
    #   {
    #     target_groups: [
    #       {
    #         health_check_path: "/",
    #         health_check_interval_seconds: 30,
    #         vpc_id: "vpc-3ac0fb5f",
    #         protocol: HTTP,
    #         health_check_timeout_seconds: 5,
    #         health_check_protocol: HTTP,
    #         load_balancer_arns: [
    #           "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #         ],
    #         unhealthy_threshold_count: 2,
    #         healthy_threshold_count: 5,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #         matcher: {
    #           http_code: "200"
    #         },
    #         health_check_port: "traffic-port",
    #         port: 80,
    #         target_group_name: "my-targets"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn",
    #     target_group_arns: ["TargetGroupArn"],
    #     names: ["TargetGroupName"],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_target_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_groups: [
    #       {
    #         target_group_arn: "TargetGroupArn",
    #         target_group_name: "TargetGroupName",
    #         protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         port: 1,
    #         vpc_id: "VpcId",
    #         health_check_protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         health_check_port: "HealthCheckPort",
    #         health_check_enabled: false,
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         health_check_path: "Path",
    #         matcher: {
    #           http_code: "HttpCode",
    #           grpc_code: "GrpcCode"
    #         },
    #         load_balancer_arns: ["LoadBalancerArn"],
    #         target_type: "instance" # One of: ["instance", "ip", "lambda", "alb"],
    #         protocol_version: "ProtocolVersion",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "ipv6"]
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeTargetGroupsOutput]
    def describe_target_groups(params = {}, options = {})
      request = build_request(:describe_target_groups, params)
      request.send_request(options)
    end

    # <p>Describes the health of the specified targets or all of your targets.</p>
    # @param [Hash, Types::DescribeTargetHealthInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @option params [Array<Types::TargetDescription>] :targets
    #   <p>The targets.</p>
    # @option params [Array<String>] :include
    #   <p>Used to include anomaly detection information.</p>
    # @example To describe the health of the targets for a target group
    #   # This example describes the health of the targets for the specified target group. One target is healthy but the other is not specified in an action, so it can't receive traffic from the load balancer.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #   }
    #   options = {}
    #   response = client.describe_target_health(params, options)
    #   response.to_h #=>
    #   {
    #     target_health_descriptions: [
    #       {
    #         target: {
    #           id: "i-0f76fade",
    #           port: 80
    #         },
    #         target_health: {
    #           state: unused,
    #           reason: Target.NotInUse,
    #           description: "Given target group is not configured to receive traffic from ELB"
    #         }
    #       },
    #       {
    #         health_check_port: "80",
    #         target: {
    #           id: "i-0f76fade",
    #           port: 80
    #         },
    #         target_health: {
    #           state: healthy
    #         }
    #       }
    #     ]
    #   }
    # @example To describe the health of a target
    #   # This example describes the health of the specified target. This target is healthy.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #     targets: [
    #       {
    #         id: "i-0f76fade",
    #         port: 80
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_target_health(params, options)
    #   response.to_h #=>
    #   {
    #     target_health_descriptions: [
    #       {
    #         health_check_port: "80",
    #         target: {
    #           id: "i-0f76fade",
    #           port: 80
    #         },
    #         target_health: {
    #           state: healthy
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName"
    #       }
    #     ],
    #     include: ["AnomalyDetection" # One of: ["AnomalyDetection", "All"]]
    #   }
    #   options = {}
    #   response = client.describe_target_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_health_descriptions: [
    #       {
    #         target: {
    #           id: "TargetId", # required
    #           port: 1,
    #           availability_zone: "ZoneName"
    #         },
    #         health_check_port: "HealthCheckPort",
    #         target_health: {
    #           state: "initial" # One of: ["initial", "healthy", "unhealthy", "unhealthy.draining", "unused", "draining", "unavailable"],
    #           reason: "Elb.RegistrationInProgress" # One of: ["Elb.RegistrationInProgress", "Elb.InitialHealthChecking", "Target.ResponseCodeMismatch", "Target.Timeout", "Target.FailedHealthChecks", "Target.NotRegistered", "Target.NotInUse", "Target.DeregistrationInProgress", "Target.InvalidState", "Target.IpUnusable", "Target.HealthCheckDisabled", "Elb.InternalError"],
    #           description: "Description"
    #         },
    #         anomaly_detection: {
    #           result: "anomalous" # One of: ["anomalous", "normal"],
    #           mitigation_in_effect: "yes" # One of: ["yes", "no"]
    #         },
    #         administrative_override: {
    #           state: "unknown" # One of: ["unknown", "no_override", "zonal_shift_active", "zonal_shift_delegated_to_dns"],
    #           reason: "AdministrativeOverride.Unknown" # One of: ["AdministrativeOverride.Unknown", "AdministrativeOverride.NoOverride", "AdministrativeOverride.ZonalShiftActive", "AdministrativeOverride.ZonalShiftDelegatedToDns"],
    #           description: "Description"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTargetHealthOutput]
    def describe_target_health(params = {}, options = {})
      request = build_request(:describe_target_health, params)
      request.send_request(options)
    end

    # <p>Describes all resources associated with the specified trust store.</p>
    # @param [Hash, Types::DescribeTrustStoreAssociationsInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_trust_store_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store_associations: [
    #       {
    #         resource_arn: "TrustStoreAssociationResourceArn"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeTrustStoreAssociationsOutput]
    def describe_trust_store_associations(params = {}, options = {})
      request = build_request(:describe_trust_store_associations, params)
      request.send_request(options)
    end

    # <p>Describes the revocation files in use by the specified trust store or revocation
    #       files.</p>
    # @param [Hash, Types::DescribeTrustStoreRevocationsInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [Array<Integer>] :revocation_ids
    #   <p>The revocation IDs of the revocation files you want to describe.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     revocation_ids: [1],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_trust_store_revocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store_revocations: [
    #       {
    #         trust_store_arn: "TrustStoreArn",
    #         revocation_id: 1,
    #         revocation_type: "CRL" # One of: ["CRL"],
    #         number_of_revoked_entries: 1
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeTrustStoreRevocationsOutput]
    def describe_trust_store_revocations(params = {}, options = {})
      request = build_request(:describe_trust_store_revocations, params)
      request.send_request(options)
    end

    # <p>Describes all trust stores for the specified account.</p>
    # @param [Hash, Types::DescribeTrustStoresInput] params
    # @option params [Array<String>] :trust_store_arns
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [Array<String>] :names
    #   <p>The names of the trust stores.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arns: ["TrustStoreArn"],
    #     names: ["TrustStoreName"],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_trust_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_stores: [
    #       {
    #         name: "TrustStoreName",
    #         trust_store_arn: "TrustStoreArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING"],
    #         number_of_ca_certificates: 1,
    #         total_revoked_entries: 1
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeTrustStoresOutput]
    def describe_trust_stores(params = {}, options = {})
      request = build_request(:describe_trust_stores, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource policy for a specified resource.</p>
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Retrieve a resource policy
    #   # This example retrieves the resource policy for the specified trust store.
    #   params = {
    #     resource_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:truststore/my-trust-store/73e2d6bc24d8a067"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "Policy"
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the ca certificate bundle.</p>
    #          <p>This action returns a pre-signed S3 URI which is 
    #       active for ten minutes.</p>
    # @param [Hash, Types::GetTrustStoreCaCertificatesBundleInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #   }
    #   options = {}
    #   response = client.get_trust_store_ca_certificates_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "Location"
    #   }
    # @return [Types::GetTrustStoreCaCertificatesBundleOutput]
    def get_trust_store_ca_certificates_bundle(params = {}, options = {})
      request = build_request(:get_trust_store_ca_certificates_bundle, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified revocation file.</p>
    #          <p>This action returns a pre-signed S3 URI which is 
    #       active for ten minutes.</p>
    # @param [Hash, Types::GetTrustStoreRevocationContentInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [Integer] :revocation_id
    #   <p>The revocation ID of the revocation file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     revocation_id: 1, # required
    #   }
    #   options = {}
    #   response = client.get_trust_store_revocation_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "Location"
    #   }
    # @return [Types::GetTrustStoreRevocationContentOutput]
    def get_trust_store_revocation_content(params = {}, options = {})
      request = build_request(:get_trust_store_revocation_content, params)
      request.send_request(options)
    end

    # <p>Modifies the capacity reservation of the specified load balancer.</p>
    #          <p>When modifying capacity reservation, you must include at least one <code>MinimumLoadBalancerCapacity</code> 
    #       or <code>ResetCapacityReservation</code>.</p>
    # @param [Hash, Types::ModifyCapacityReservationInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Types::MinimumLoadBalancerCapacity] :minimum_load_balancer_capacity
    #   <p>The minimum load balancer capacity reserved.</p>
    # @option params [Boolean] :reset_capacity_reservation
    #   <p>Resets the capacity reservation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     minimum_load_balancer_capacity: {
    #       capacity_units: 1
    #     },
    #     reset_capacity_reservation: false
    #   }
    #   options = {}
    #   response = client.modify_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified_time: Time.now,
    #     decrease_requests_remaining: 1,
    #     minimum_load_balancer_capacity: {
    #       capacity_units: 1
    #     },
    #     capacity_reservation_state: [
    #       {
    #         state: {
    #           code: "provisioned" # One of: ["provisioned", "pending", "rebalancing", "failed"],
    #           reason: "StateReason"
    #         },
    #         availability_zone: "ZoneName",
    #         effective_capacity_units: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::ModifyCapacityReservationOutput]
    def modify_capacity_reservation(params = {}, options = {})
      request = build_request(:modify_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>[Application Load Balancers] Modify the IP pool associated to a load balancer.</p>
    # @param [Hash, Types::ModifyIpPoolsInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Types::IpamPools] :ipam_pools
    #   <p>The IPAM pools to be modified.</p>
    # @option params [Array<String>] :remove_ipam_pools
    #   <p>Remove the IP pools in use by the load balancer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     ipam_pools: {
    #       ipv4_ipam_pool_id: "IpamPoolId"
    #     },
    #     remove_ipam_pools: ["ipv4" # One of: ["ipv4"]]
    #   }
    #   options = {}
    #   response = client.modify_ip_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ipam_pools: {
    #       ipv4_ipam_pool_id: "IpamPoolId"
    #     }
    #   }
    # @return [Types::ModifyIpPoolsOutput]
    def modify_ip_pools(params = {}, options = {})
      request = build_request(:modify_ip_pools, params)
      request.send_request(options)
    end

    # <p>Replaces the specified properties of the specified listener. Any properties that you do
    #       not specify remain unchanged.</p>
    #          <p>Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy
    #       and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP
    #       to TLS, you must add the security policy and default certificate properties.</p>
    #          <p>To add an item to a list, remove an item from a list, or update an item in a list, you
    #       must provide the entire list. For example, to add an action, specify a list with the current
    #       actions plus the new action.</p>
    # @param [Hash, Types::ModifyListenerInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Integer] :port
    #   <p>The port for connections from clients to the load balancer. You can't specify a port for
    #         a Gateway Load Balancer.</p>
    # @option params [String] :protocol
    #   <p>The protocol for connections from clients to the load balancer. Application Load Balancers
    #         support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and
    #         TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is
    #         enabled. You can't specify a protocol for a Gateway Load Balancer.</p>
    # @option params [String] :ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html">Security policies</a> in the <i>Application Load Balancers Guide</i> or
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    # @option params [Array<Types::Action>] :default_actions
    #   <p>The actions for the default rule.</p>
    # @option params [Array<String>] :alpn_policy
    #   <p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
    #         can specify one policy name. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTP1Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Preferred</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html#alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    # @option params [Types::MutualAuthenticationAttributes] :mutual_authentication
    #   <p>The mutual authentication configuration information.</p>
    # @example To change the default action for a listener
    #   # This example changes the default action for the specified listener.
    #   params = {
    #     listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
    #     default_actions: [
    #       {
    #         type: forward,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_listener(params, options)
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         protocol: HTTP,
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f",
    #             type: forward
    #           }
    #         ],
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         port: 80,
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    #       }
    #     ]
    #   }
    # @example To change the server certificate
    #   # This example changes the server certificate for the specified HTTPS listener.
    #   params = {
    #     listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65",
    #     certificates: [
    #       {
    #         certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-new-server-cert"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_listener(params, options)
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         protocol: HTTPS,
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ],
    #         ssl_policy: "ELBSecurityPolicy-2015-05",
    #         certificates: [
    #           {
    #             certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-new-server-cert"
    #           }
    #         ],
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #         port: 443,
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #     port: 1,
    #     protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #     ssl_policy: "SslPolicyName",
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false
    #       }
    #     ],
    #     default_actions: [
    #       {
    #         type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType"
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ],
    #     alpn_policy: ["AlpnPolicyValue"],
    #     mutual_authentication: {
    #       mode: "Mode",
    #       trust_store_arn: "TrustStoreArn",
    #       ignore_client_certificate_expiry: false,
    #       trust_store_association_status: "active" # One of: ["active", "removed"],
    #       advertise_trust_store_ca_names: "on" # One of: ["on", "off"]
    #     }
    #   }
    #   options = {}
    #   response = client.modify_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         listener_arn: "ListenerArn",
    #         load_balancer_arn: "LoadBalancerArn",
    #         port: 1,
    #         protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         certificates: [
    #           {
    #             certificate_arn: "CertificateArn",
    #             is_default: false
    #           }
    #         ],
    #         ssl_policy: "SslPolicyName",
    #         default_actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         alpn_policy: ["AlpnPolicyValue"],
    #         mutual_authentication: {
    #           mode: "Mode",
    #           trust_store_arn: "TrustStoreArn",
    #           ignore_client_certificate_expiry: false,
    #           trust_store_association_status: "active" # One of: ["active", "removed"],
    #           advertise_trust_store_ca_names: "on" # One of: ["on", "off"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ModifyListenerOutput]
    def modify_listener(params = {}, options = {})
      request = build_request(:modify_listener, params)
      request.send_request(options)
    end

    # <p>Modifies the specified attributes of the specified listener.</p>
    # @param [Hash, Types::ModifyListenerAttributesInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Array<Types::ListenerAttribute>] :attributes
    #   <p>The listener attributes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #     attributes: [ # required
    #       {
    #         key: "ListenerAttributeKey",
    #         value: "ListenerAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_listener_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: "ListenerAttributeKey",
    #         value: "ListenerAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::ModifyListenerAttributesOutput]
    def modify_listener_attributes(params = {}, options = {})
      request = build_request(:modify_listener_attributes, params)
      request.send_request(options)
    end

    # <p>Modifies the specified attributes of the specified Application Load Balancer, Network Load
    #       Balancer, or Gateway Load Balancer.</p>
    #          <p>If any of the specified attributes can't be modified as requested, the call fails. Any
    #       existing attributes that you do not modify retain their current values.</p>
    # @param [Hash, Types::ModifyLoadBalancerAttributesInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Array<Types::LoadBalancerAttribute>] :attributes
    #   <p>The load balancer attributes.</p>
    # @example To enable deletion protection
    #   # This example enables deletion protection for the specified load balancer.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     attributes: [
    #       {
    #         key: "deletion_protection.enabled",
    #         value: "true"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: "true",
    #         key: "deletion_protection.enabled"
    #       },
    #       {
    #         value: "false",
    #         key: "access_logs.s3.enabled"
    #       },
    #       {
    #         value: "60",
    #         key: "idle_timeout.timeout_seconds"
    #       },
    #       {
    #         value: "",
    #         key: "access_logs.s3.prefix"
    #       },
    #       {
    #         value: "",
    #         key: "access_logs.s3.bucket"
    #       }
    #     ]
    #   }
    # @example To change the idle timeout
    #   # This example changes the idle timeout value for the specified load balancer.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     attributes: [
    #       {
    #         key: "idle_timeout.timeout_seconds",
    #         value: "30"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: "30",
    #         key: "idle_timeout.timeout_seconds"
    #       },
    #       {
    #         value: "false",
    #         key: "access_logs.s3.enabled"
    #       },
    #       {
    #         value: "",
    #         key: "access_logs.s3.prefix"
    #       },
    #       {
    #         value: "true",
    #         key: "deletion_protection.enabled"
    #       },
    #       {
    #         value: "",
    #         key: "access_logs.s3.bucket"
    #       }
    #     ]
    #   }
    # @example To enable access logs
    #   # This example enables access logs for the specified load balancer. Note that the S3 bucket must exist in the same region as the load balancer and must have a policy attached that grants access to the Elastic Load Balancing service.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     attributes: [
    #       {
    #         key: "access_logs.s3.enabled",
    #         value: "true"
    #       },
    #       {
    #         key: "access_logs.s3.bucket",
    #         value: "my-loadbalancer-logs"
    #       },
    #       {
    #         key: "access_logs.s3.prefix",
    #         value: "myapp"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: "true",
    #         key: "access_logs.s3.enabled"
    #       },
    #       {
    #         value: "my-load-balancer-logs",
    #         key: "access_logs.s3.bucket"
    #       },
    #       {
    #         value: "myapp",
    #         key: "access_logs.s3.prefix"
    #       },
    #       {
    #         value: "60",
    #         key: "idle_timeout.timeout_seconds"
    #       },
    #       {
    #         value: "false",
    #         key: "deletion_protection.enabled"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     attributes: [ # required
    #       {
    #         key: "LoadBalancerAttributeKey",
    #         value: "LoadBalancerAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: "LoadBalancerAttributeKey",
    #         value: "LoadBalancerAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::ModifyLoadBalancerAttributesOutput]
    def modify_load_balancer_attributes(params = {}, options = {})
      request = build_request(:modify_load_balancer_attributes, params)
      request.send_request(options)
    end

    # <p>Replaces the specified properties of the specified rule. Any properties that you do not
    #       specify are unchanged.</p>
    #          <p>To add an item to a list, remove an item from a list, or update an item in a list, you
    #       must provide the entire list. For example, to add an action, specify a list with the current
    #       actions plus the new action.</p>
    # @param [Hash, Types::ModifyRuleInput] params
    # @option params [String] :rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    # @option params [Array<Types::RuleCondition>] :conditions
    #   <p>The conditions.</p>
    # @option params [Array<Types::Action>] :actions
    #   <p>The actions.</p>
    # @example To modify a rule
    #   # This example modifies the condition for the specified rule.
    #   params = {
    #     rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee",
    #     conditions: [
    #       {
    #         field: "path-pattern",
    #         values: [
    #           "/images/*"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         priority: "10",
    #         conditions: [
    #           {
    #             field: "path-pattern",
    #             values: [
    #               "/images/*"
    #             ]
    #           }
    #         ],
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee",
    #         is_default: false,
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_arn: "RuleArn", # required
    #     conditions: [
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #         host_header_config: {
    #           values: ["StringValue"]
    #         },
    #         path_pattern_config: {
    #           values: ["StringValue"]
    #         },
    #         http_header_config: {
    #           http_header_name: "HttpHeaderConditionName",
    #           values: ["StringValue"]
    #         },
    #         query_string_config: {
    #           values: [
    #             {
    #               key: "StringValue",
    #               value: "StringValue"
    #             }
    #           ]
    #         },
    #         http_request_method_config: {
    #           values: ["StringValue"]
    #         },
    #         source_ip_config: {
    #           values: ["StringValue"]
    #         }
    #       }
    #     ],
    #     actions: [
    #       {
    #         type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #           use_existing_client_secret: false
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #           },
    #           on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType"
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1
    #             }
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "RuleArn",
    #         priority: "String",
    #         conditions: [
    #           {
    #             field: "ConditionFieldName",
    #             values: ["StringValue"],
    #             host_header_config: {
    #               values: ["StringValue"]
    #             },
    #             path_pattern_config: {
    #               values: ["StringValue"]
    #             },
    #             http_header_config: {
    #               http_header_name: "HttpHeaderConditionName",
    #               values: ["StringValue"]
    #             },
    #             query_string_config: {
    #               values: [
    #                 {
    #                   key: "StringValue",
    #                   value: "StringValue"
    #                 }
    #               ]
    #             },
    #             http_request_method_config: {
    #               values: ["StringValue"]
    #             },
    #             source_ip_config: {
    #               values: ["StringValue"]
    #             }
    #           }
    #         ],
    #         actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         is_default: false
    #       }
    #     ]
    #   }
    # @return [Types::ModifyRuleOutput]
    def modify_rule(params = {}, options = {})
      request = build_request(:modify_rule, params)
      request.send_request(options)
    end

    # <p>Modifies the health checks used when evaluating the health state of the targets in the
    #       specified target group.</p>
    # @param [Hash, Types::ModifyTargetGroupInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @option params [String] :health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. It is supported for health checks only if the
    #         protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP
    #         protocols are not supported for health checks.</p>
    # @option params [String] :health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets.</p>
    # @option params [String] :health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    # @option params [Boolean] :health_check_enabled
    #   <p>Indicates whether health checks are enabled.</p>
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.</p>
    # @option params [Integer] :health_check_timeout_seconds
    #   <p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means
    #         a failed health check.</p>
    # @option params [Integer] :healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy.</p>
    # @option params [Integer] :unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering the target
    #         unhealthy.</p>
    # @option params [Types::Matcher] :matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful 
    #         response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range 
    #         is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499. For target 
    #         groups with a protocol of GENEVE, the range is 200-399.</p>
    # @example To modify the health check configuration for a target group
    #   # This example changes the configuration of the health checks used to evaluate the health of the targets for the specified target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f",
    #     health_check_protocol: HTTPS,
    #     health_check_port: "443"
    #   }
    #   options = {}
    #   response = client.modify_target_group(params, options)
    #   response.to_h #=>
    #   {
    #     target_groups: [
    #       {
    #         health_check_interval_seconds: 30,
    #         vpc_id: "vpc-3ac0fb5f",
    #         protocol: HTTPS,
    #         health_check_timeout_seconds: 5,
    #         health_check_protocol: HTTPS,
    #         load_balancer_arns: [
    #           "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #         ],
    #         unhealthy_threshold_count: 2,
    #         healthy_threshold_count: 5,
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f",
    #         matcher: {
    #           http_code: "200"
    #         },
    #         health_check_port: "443",
    #         port: 443,
    #         target_group_name: "my-https-targets"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #     health_check_protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #     health_check_port: "HealthCheckPort",
    #     health_check_path: "Path",
    #     health_check_enabled: false,
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: "HttpCode",
    #       grpc_code: "GrpcCode"
    #     }
    #   }
    #   options = {}
    #   response = client.modify_target_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_groups: [
    #       {
    #         target_group_arn: "TargetGroupArn",
    #         target_group_name: "TargetGroupName",
    #         protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         port: 1,
    #         vpc_id: "VpcId",
    #         health_check_protocol: "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP", "GENEVE"],
    #         health_check_port: "HealthCheckPort",
    #         health_check_enabled: false,
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         health_check_path: "Path",
    #         matcher: {
    #           http_code: "HttpCode",
    #           grpc_code: "GrpcCode"
    #         },
    #         load_balancer_arns: ["LoadBalancerArn"],
    #         target_type: "instance" # One of: ["instance", "ip", "lambda", "alb"],
    #         protocol_version: "ProtocolVersion",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "ipv6"]
    #       }
    #     ]
    #   }
    # @return [Types::ModifyTargetGroupOutput]
    def modify_target_group(params = {}, options = {})
      request = build_request(:modify_target_group, params)
      request.send_request(options)
    end

    # <p>Modifies the specified attributes of the specified target group.</p>
    # @param [Hash, Types::ModifyTargetGroupAttributesInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @option params [Array<Types::TargetGroupAttribute>] :attributes
    #   <p>The target group attributes.</p>
    # @example To modify the deregistration delay timeout
    #   # This example sets the deregistration delay timeout to the specified value for the specified target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #     attributes: [
    #       {
    #         key: "deregistration_delay.timeout_seconds",
    #         value: "600"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_target_group_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         value: "false",
    #         key: "stickiness.enabled"
    #       },
    #       {
    #         value: "600",
    #         key: "deregistration_delay.timeout_seconds"
    #       },
    #       {
    #         value: "lb_cookie",
    #         key: "stickiness.type"
    #       },
    #       {
    #         value: "86400",
    #         key: "stickiness.lb_cookie.duration_seconds"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #     attributes: [ # required
    #       {
    #         key: "TargetGroupAttributeKey",
    #         value: "TargetGroupAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_target_group_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         key: "TargetGroupAttributeKey",
    #         value: "TargetGroupAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::ModifyTargetGroupAttributesOutput]
    def modify_target_group_attributes(params = {}, options = {})
      request = build_request(:modify_target_group_attributes, params)
      request.send_request(options)
    end

    # <p>Update the ca certificate bundle for the specified trust store.</p>
    # @param [Hash, Types::ModifyTrustStoreInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [String] :ca_certificates_bundle_s3_bucket
    #   <p>The Amazon S3 bucket for the ca certificates bundle.</p>
    # @option params [String] :ca_certificates_bundle_s3_key
    #   <p>The Amazon S3 path for the ca certificates bundle.</p>
    # @option params [String] :ca_certificates_bundle_s3_object_version
    #   <p>The Amazon S3 object version for the ca certificates bundle. If undefined the current version is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     ca_certificates_bundle_s3_bucket: "S3Bucket", # required
    #     ca_certificates_bundle_s3_key: "S3Key", # required
    #     ca_certificates_bundle_s3_object_version: "S3ObjectVersion"
    #   }
    #   options = {}
    #   response = client.modify_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_stores: [
    #       {
    #         name: "TrustStoreName",
    #         trust_store_arn: "TrustStoreArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING"],
    #         number_of_ca_certificates: 1,
    #         total_revoked_entries: 1
    #       }
    #     ]
    #   }
    # @return [Types::ModifyTrustStoreOutput]
    def modify_trust_store(params = {}, options = {})
      request = build_request(:modify_trust_store, params)
      request.send_request(options)
    end

    # <p>Registers the specified targets with the specified target group.</p>
    #          <p>If the target is an EC2 instance, it must be in the <code>running</code> state when you
    #       register it.</p>
    #          <p>By default, the load balancer routes requests to registered targets using the protocol and
    #       port for the target group. Alternatively, you can override the port for a target when you
    #       register it. You can register each EC2 instance or IP address with the same target group
    #       multiple times using different ports.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-register-targets.html">Register 
    #           targets for your Application Load Balancer</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/target-group-register-targets.html">Register targets
    #           for your Network Load Balancer</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-group-register-targets.html">Register targets for your
    #           Gateway Load Balancer</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RegisterTargetsInput] params
    # @option params [String] :target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    # @option params [Array<Types::TargetDescription>] :targets
    #   <p>The targets.</p>
    # @example To register targets with a target group
    #   # This example registers the specified instances with the specified target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #     targets: [
    #       {
    #         id: "i-80c8dd94"
    #       },
    #       {
    #         id: "i-ceddcd4d"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_targets(params, options)
    #   response.to_h #=>
    #   {}
    # @example To register targets with a target group using port overrides
    #   # This example registers the specified instance with the specified target group using multiple ports. This enables you to register ECS containers on the same instance as targets in the target group.
    #   params = {
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/3bb63f11dfb0faf9",
    #     targets: [
    #       {
    #         id: "i-80c8dd94",
    #         port: 80
    #       },
    #       {
    #         id: "i-80c8dd94",
    #         port: 766
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_targets(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterTargetsOutput]
    def register_targets(params = {}, options = {})
      request = build_request(:register_targets, params)
      request.send_request(options)
    end

    # <p>Removes the specified certificate from the certificate list for the specified HTTPS or TLS
    #       listener.</p>
    # @param [Hash, Types::RemoveListenerCertificatesInput] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>The certificate to remove. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "ListenerArn", # required
    #     certificates: [ # required
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_listener_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveListenerCertificatesOutput]
    def remove_listener_certificates(params = {}, options = {})
      request = build_request(:remove_listener_certificates, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified Elastic Load Balancing resources. You can
    #       remove the tags for one or more Application Load Balancers, Network Load Balancers, Gateway
    #       Load Balancers, target groups, listeners, or rules.</p>
    # @param [Hash, Types::RemoveTagsInput] params
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys for the tags to remove.</p>
    # @example To remove tags from a load balancer
    #   # This example removes the specified tags from the specified load balancer.
    #   params = {
    #     resource_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    #     ],
    #     tag_keys: [
    #       "project",
    #       "department"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"], # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsOutput]
    def remove_tags(params = {}, options = {})
      request = build_request(:remove_tags, params)
      request.send_request(options)
    end

    # <p>Removes the specified revocation file from the specified trust store.</p>
    # @param [Hash, Types::RemoveTrustStoreRevocationsInput] params
    # @option params [String] :trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    # @option params [Array<Integer>] :revocation_ids
    #   <p>The revocation IDs of the revocation files you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "TrustStoreArn", # required
    #     revocation_ids: [1], # required
    #   }
    #   options = {}
    #   response = client.remove_trust_store_revocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTrustStoreRevocationsOutput]
    def remove_trust_store_revocations(params = {}, options = {})
      request = build_request(:remove_trust_store_revocations, params)
      request.send_request(options)
    end

    # <p>Sets the type of IP addresses used by the subnets of the specified load balancer.</p>
    # @param [Hash, Types::SetIpAddressTypeInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type. Internal load balancers must use <code>ipv4</code>.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>Application Load Balancer authentication supports IPv4 addresses only when 
    #         connecting to an Identity Provider (IdP) or Amazon Cognito endpoint. Without a public 
    #         IPv4 address the load balancer can't complete the authentication process, resulting 
    #         in HTTP 500 errors.</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"], # required
    #   }
    #   options = {}
    #   response = client.set_ip_address_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #   }
    # @return [Types::SetIpAddressTypeOutput]
    def set_ip_address_type(params = {}, options = {})
      request = build_request(:set_ip_address_type, params)
      request.send_request(options)
    end

    # <p>Sets the priorities of the specified rules.</p>
    #          <p>You can reorder the rules as long as there are no priority conflicts in the new order. Any
    #       existing rules that you do not specify retain their current priority.</p>
    # @param [Hash, Types::SetRulePrioritiesInput] params
    # @option params [Array<Types::RulePriorityPair>] :rule_priorities
    #   <p>The rule priorities.</p>
    # @example To set the rule priority
    #   # This example sets the priority of the specified rule.
    #   params = {
    #     rule_priorities: [
    #       {
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3",
    #         priority: 5
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.set_rule_priorities(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         priority: "5",
    #         conditions: [
    #           {
    #             field: "path-pattern",
    #             values: [
    #               "/img/*"
    #             ]
    #           }
    #         ],
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3",
    #         is_default: false,
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #             type: forward
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_priorities: [ # required
    #       {
    #         rule_arn: "RuleArn",
    #         priority: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.set_rule_priorities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "RuleArn",
    #         priority: "String",
    #         conditions: [
    #           {
    #             field: "ConditionFieldName",
    #             values: ["StringValue"],
    #             host_header_config: {
    #               values: ["StringValue"]
    #             },
    #             path_pattern_config: {
    #               values: ["StringValue"]
    #             },
    #             http_header_config: {
    #               http_header_name: "HttpHeaderConditionName",
    #               values: ["StringValue"]
    #             },
    #             query_string_config: {
    #               values: [
    #                 {
    #                   key: "StringValue",
    #                   value: "StringValue"
    #                 }
    #               ]
    #             },
    #             http_request_method_config: {
    #               values: ["StringValue"]
    #             },
    #             source_ip_config: {
    #               values: ["StringValue"]
    #             }
    #           }
    #         ],
    #         actions: [
    #           {
    #             type: "forward" # One of: ["forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"], # required
    #             target_group_arn: "TargetGroupArn",
    #             authenticate_oidc_config: {
    #               issuer: "AuthenticateOidcActionIssuer", # required
    #               authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #               token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #               user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #               client_id: "AuthenticateOidcActionClientId", # required
    #               client_secret: "AuthenticateOidcActionClientSecret",
    #               session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #               scope: "AuthenticateOidcActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"],
    #               use_existing_client_secret: false
    #             },
    #             authenticate_cognito_config: {
    #               user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #               user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #               user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #               session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #               scope: "AuthenticateCognitoActionScope",
    #               session_timeout: 1,
    #               authentication_request_extra_params: {
    #                 "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue"
    #               },
    #               on_unauthenticated_request: "deny" # One of: ["deny", "allow", "authenticate"]
    #             },
    #             order: 1,
    #             redirect_config: {
    #               protocol: "RedirectActionProtocol",
    #               port: "RedirectActionPort",
    #               host: "RedirectActionHost",
    #               path: "RedirectActionPath",
    #               query: "RedirectActionQuery",
    #               status_code: "HTTP_301" # One of: ["HTTP_301", "HTTP_302"], # required
    #             },
    #             fixed_response_config: {
    #               message_body: "FixedResponseActionMessage",
    #               status_code: "FixedResponseActionStatusCode", # required
    #               content_type: "FixedResponseActionContentType"
    #             },
    #             forward_config: {
    #               target_groups: [
    #                 {
    #                   target_group_arn: "TargetGroupArn",
    #                   weight: 1
    #                 }
    #               ],
    #               target_group_stickiness_config: {
    #                 enabled: false,
    #                 duration_seconds: 1
    #               }
    #             }
    #           }
    #         ],
    #         is_default: false
    #       }
    #     ]
    #   }
    # @return [Types::SetRulePrioritiesOutput]
    def set_rule_priorities(params = {}, options = {})
      request = build_request(:set_rule_priorities, params)
      request.send_request(options)
    end

    # <p>Associates the specified security groups with the specified Application Load Balancer or
    #       Network Load Balancer. The specified security groups override the previously associated
    #       security groups.</p>
    #          <p>You can't perform this operation on a Network Load Balancer unless you specified a
    #       security group for the load balancer when you created it.</p>
    #          <p>You can't associate a security group with a Gateway Load Balancer.</p>
    # @param [Hash, Types::SetSecurityGroupsInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Array<String>] :security_groups
    #   <p>The IDs of the security groups.</p>
    # @option params [String] :enforce_security_group_inbound_rules_on_private_link_traffic
    #   <p>Indicates whether to evaluate inbound security group rules for traffic sent to a 
    #         Network Load Balancer through Amazon Web Services PrivateLink. The default is <code>on</code>.</p>
    # @example To associate a security group with a load balancer
    #   # This example associates the specified security group with the specified load balancer.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     security_groups: [
    #       "sg-5943793c"
    #     ]
    #   }
    #   options = {}
    #   response = client.set_security_groups(params, options)
    #   response.to_h #=>
    #   {
    #     security_group_ids: [
    #       "sg-5943793c"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     security_groups: ["SecurityGroupId"], # required
    #     enforce_security_group_inbound_rules_on_private_link_traffic: "on" # One of: ["on", "off"]
    #   }
    #   options = {}
    #   response = client.set_security_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_group_ids: ["SecurityGroupId"],
    #     enforce_security_group_inbound_rules_on_private_link_traffic: "on" # One of: ["on", "off"]
    #   }
    # @return [Types::SetSecurityGroupsOutput]
    def set_security_groups(params = {}, options = {})
      request = build_request(:set_security_groups, params)
      request.send_request(options)
    end

    # <p>Enables the Availability Zones for the specified public subnets for the specified
    #       Application Load Balancer, Network Load Balancer or Gateway Load Balancer. The specified subnets replace the
    #       previously enabled subnets.</p>
    #          <p>When you specify subnets for a Network Load Balancer, or Gateway Load Balancer you must include all subnets that
    #       were enabled previously, with their existing configurations, plus any additional
    #       subnets.</p>
    # @param [Hash, Types::SetSubnetsInput] params
    # @option params [String] :load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] You can specify subnets from one or more 
    #         Availability Zones.</p>
    # @option params [Array<Types::SubnetMapping>] :subnet_mappings
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones. You can't specify Elastic IP addresses for your subnets.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can specify one Elastic IP address per subnet if you need static IP addresses for your
    #         internet-facing load balancer. For internal load balancers, you can specify one private IP
    #         address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
    #         can specify one IPv6 address per subnet.</p>
    #            <p>[Gateway Load Balancers] You can specify subnets from one or more Availability
    #         Zones.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    # @option params [String] :enable_prefix_for_ipv6_source_nat
    #   <p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix 
    #         from each subnet for source NAT. The IP address type must be <code>dualstack</code>.
    #         The default value is <code>off</code>.</p>
    # @example To enable Availability Zones for a load balancer
    #   # This example enables the Availability Zones for the specified subnets for the specified load balancer.
    #   params = {
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    #     subnets: [
    #       "subnet-8360a9e7",
    #       "subnet-b7d581c0"
    #     ]
    #   }
    #   options = {}
    #   response = client.set_subnets(params, options)
    #   response.to_h #=>
    #   {
    #     availability_zones: [
    #       {
    #         subnet_id: "subnet-8360a9e7",
    #         zone_name: "us-west-2a"
    #       },
    #       {
    #         subnet_id: "subnet-b7d581c0",
    #         zone_name: "us-west-2b"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     subnets: ["SubnetId"],
    #     subnet_mappings: [
    #       {
    #         subnet_id: "SubnetId",
    #         allocation_id: "AllocationId",
    #         private_i_pv4_address: "PrivateIPv4Address",
    #         i_pv6_address: "IPv6Address",
    #         source_nat_ipv6_prefix: "SourceNatIpv6Prefix"
    #       }
    #     ],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"],
    #     enable_prefix_for_ipv6_source_nat: "on" # One of: ["on", "off"]
    #   }
    #   options = {}
    #   response = client.set_subnets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_zones: [
    #       {
    #         zone_name: "ZoneName",
    #         subnet_id: "SubnetId",
    #         outpost_id: "OutpostId",
    #         load_balancer_addresses: [
    #           {
    #             ip_address: "IpAddress",
    #             allocation_id: "AllocationId",
    #             private_i_pv4_address: "PrivateIPv4Address",
    #             i_pv6_address: "IPv6Address"
    #           }
    #         ],
    #         source_nat_ipv6_prefixes: ["SourceNatIpv6Prefix"]
    #       }
    #     ],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"],
    #     enable_prefix_for_ipv6_source_nat: "on" # One of: ["on", "off"]
    #   }
    # @return [Types::SetSubnetsOutput]
    def set_subnets(params = {}, options = {})
      request = build_request(:set_subnets, params)
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
      context[:gem_name] = 'aws-sdk-elasticloadbalancingv2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        load_balancer_available: Waiters::LoadBalancerAvailable,
        load_balancer_exists: Waiters::LoadBalancerExists,
        load_balancers_deleted: Waiters::LoadBalancersDeleted,
        target_deregistered: Waiters::TargetDeregistered,
        target_in_service: Waiters::TargetInService
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
