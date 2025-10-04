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
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ElasticLoadBalancing
  # An API client for Aws::ElasticLoadBalancing.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ElasticLoadBalancingV7

    add_plugin(::Aws::ElasticLoadBalancing::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ElasticLoadBalancing::EndpointProvider)
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

    # <p>Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags.</p>
    #         
    #         <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated 
    #             with the load balancer, <code>AddTags</code> updates its value.</p> 
    #         
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::AddTagsInput] params
    # @option params [Array<String>] :load_balancer_names
    #   <p>The name of the load balancer. You can specify one load balancer only.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags.</p>
    # @example To add tags to a load balancer
    #   # This example adds two tags to the specified load balancer.
    #   params = {
    #     load_balancer_names: [
    #       "my-load-balancer"
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
    #     load_balancer_names: ["AccessPointName"], # required
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

    # <p>Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups.</p> 
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups">Security Groups for Load Balancers in a VPC</a> 
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::ApplySecurityGroupsToLoadBalancerInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :security_groups
    #   <p>The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.</p>
    # @example To associate a security group with a load balancer in a VPC
    #   # This example associates a security group with the specified load balancer in a VPC.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     security_groups: [
    #       "sg-fc448899"
    #     ]
    #   }
    #   options = {}
    #   response = client.apply_security_groups_to_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     security_groups: [
    #       "sg-fc448899"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     security_groups: ["SecurityGroupId"], # required
    #   }
    #   options = {}
    #   response = client.apply_security_groups_to_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_groups: ["SecurityGroupId"]
    #   }
    # @return [Types::ApplySecurityGroupsToLoadBalancerOutput]
    def apply_security_groups_to_load_balancer(params = {}, options = {})
      request = build_request(:apply_security_groups_to_load_balancer, params)
      request.send_request(options)
    end

    # <p>Adds one or more subnets to the set of configured subnets for the specified load balancer.</p>  
    #         <p>The load balancer evenly distributes requests across all registered subnets. 
    #             For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html">Add or Remove Subnets for Your Load Balancer in a VPC</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::AttachLoadBalancerToSubnetsInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets to add. You can add only one subnet per Availability Zone.</p>
    # @example To attach subnets to a load balancer
    #   # This example adds the specified subnet to the set of configured subnets for the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     subnets: [
    #       "subnet-0ecac448"
    #     ]
    #   }
    #   options = {}
    #   response = client.attach_load_balancer_to_subnets(params, options)
    #   response.to_h #=>
    #   {
    #     subnets: [
    #       "subnet-15aaab61",
    #       "subnet-0ecac448"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     subnets: ["SubnetId"], # required
    #   }
    #   options = {}
    #   response = client.attach_load_balancer_to_subnets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnets: ["SubnetId"]
    #   }
    # @return [Types::AttachLoadBalancerToSubnetsOutput]
    def attach_load_balancer_to_subnets(params = {}, options = {})
      request = build_request(:attach_load_balancer_to_subnets, params)
      request.send_request(options)
    end

    # <p>Specifies the health check settings to use when evaluating the health state of your EC2 instances.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html">Configure Health Checks for Your Load Balancer</a> 
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::ConfigureHealthCheckInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Types::HealthCheck] :health_check
    #   <p>The configuration information.</p>
    # @example To specify the health check settings for your backend EC2 instances
    #   # This example specifies the health check settings used to evaluate the health of your backend EC2 instances.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     health_check: {
    #       target: "HTTP:80/png",
    #       interval: 30,
    #       timeout: 3,
    #       unhealthy_threshold: 2,
    #       healthy_threshold: 2
    #     }
    #   }
    #   options = {}
    #   response = client.configure_health_check(params, options)
    #   response.to_h #=>
    #   {
    #     health_check: {
    #       healthy_threshold: 2,
    #       interval: 30,
    #       target: "HTTP:80/png",
    #       timeout: 3,
    #       unhealthy_threshold: 2
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     health_check: { # required
    #       target: "HealthCheckTarget", # required
    #       interval: 1, # required
    #       timeout: 1, # required
    #       unhealthy_threshold: 1, # required
    #       healthy_threshold: 1, # required
    #     }
    #   }
    #   options = {}
    #   response = client.configure_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check: {
    #       target: "HealthCheckTarget", # required
    #       interval: 1, # required
    #       timeout: 1, # required
    #       unhealthy_threshold: 1, # required
    #       healthy_threshold: 1, # required
    #     }
    #   }
    # @return [Types::ConfigureHealthCheckOutput]
    def configure_health_check(params = {}, options = {})
      request = build_request(:configure_health_check, params)
      request.send_request(options)
    end

    # <p>Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners.</p>
    #         <p>This policy is similar to the policy created by <a>CreateLBCookieStickinessPolicy</a>, 
    #             except that the lifetime of the special Elastic Load Balancing cookie, <code>AWSELB</code>, 
    #             follows the lifetime of the application-generated cookie specified in the policy configuration. 
    #             The load balancer only inserts a new stickiness cookie when the application response
    #             includes a new application cookie.</p>
    #         <p>If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::CreateAppCookieStickinessPolicyInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
    # @option params [String] :cookie_name
    #   <p>The name of the application cookie used for stickiness.</p>
    # @example To generate a stickiness policy for your load balancer
    #   # This example generates a stickiness policy that follows the sticky session lifetimes of the application-generated cookie.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_name: "my-app-cookie-policy",
    #     cookie_name: "my-app-cookie"
    #   }
    #   options = {}
    #   response = client.create_app_cookie_stickiness_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #     cookie_name: "CookieName", # required
    #   }
    #   options = {}
    #   response = client.create_app_cookie_stickiness_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateAppCookieStickinessPolicyOutput]
    def create_app_cookie_stickiness_policy(params = {}, options = {})
      request = build_request(:create_app_cookie_stickiness_policy, params)
      request.send_request(options)
    end

    # <p>Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.</p>
    #         <p>When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. 
    #             If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.</p>
    #         <p>A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.</p>
    #         
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::CreateLBCookieStickinessPolicyInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
    # @option params [Integer] :cookie_expiration_period
    #   <p>The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.</p>
    # @example To generate a duration-based stickiness policy for your load balancer
    #   # This example generates a stickiness policy with sticky session lifetimes controlled by the specified expiration period.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_name: "my-duration-cookie-policy",
    #     cookie_expiration_period: 60
    #   }
    #   options = {}
    #   response = client.create_lb_cookie_stickiness_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #     cookie_expiration_period: 1
    #   }
    #   options = {}
    #   response = client.create_lb_cookie_stickiness_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLBCookieStickinessPolicyOutput]
    def create_lb_cookie_stickiness_policy(params = {}, options = {})
      request = build_request(:create_lb_cookie_stickiness_policy, params)
      request.send_request(options)
    end

    # <p>Creates a Classic Load Balancer.</p>
    # 
    #         <p>You can add listeners, security groups, subnets, and tags when you create your load balancer, 
    #             or you can add them later using <a>CreateLoadBalancerListeners</a>, 
    #             <a>ApplySecurityGroupsToLoadBalancer</a>, <a>AttachLoadBalancerToSubnets</a>, 
    #             and <a>AddTags</a>.</p>
    #         <p>To describe your current load balancers, see <a>DescribeLoadBalancers</a>.
    #             When you are finished with a load balancer, you can delete it using 
    #             <a>DeleteLoadBalancer</a>.</p>
    #         
    #         <p>You can create up to 20 load balancers per region per account. 
    #             You can request an increase for the number of load balancers for your account. 
    #             For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::CreateAccessPointInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    #           <p>This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.</p>
    # @option params [Array<Types::Listener>] :listeners
    #   <p>The listeners.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    # @option params [Array<String>] :availability_zones
    #   <p>One or more Availability Zones from the same region as the load balancer.</p>
    #           <p>You must specify at least one Availability Zone.</p>
    #           <p>You can add more Availability Zones after you create the load balancer using 
    #               <a>EnableAvailabilityZonesForLoadBalancer</a>.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets in your VPC to attach to the load balancer.
    #               Specify one subnet per Availability Zone specified in <code>AvailabilityZones</code>.</p>
    # @option params [Array<String>] :security_groups
    #   <p>The IDs of the security groups to assign to the load balancer.</p>
    # @option params [String] :scheme
    #   <p>The type of a load balancer. Valid only for load balancers in a VPC.</p>          
    #           <p>By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses.
    #               For more information about Internet-facing and Internal load balancers, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme">Load Balancer Scheme</a>
    #               in the <i>Elastic Load Balancing User Guide</i>.</p>
    #           <p>Specify <code>internal</code> to create a load balancer with a DNS name that resolves to private IP addresses.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to assign to the load balancer.</p>
    #           <p>For more information about tagging your load balancer, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    # @example To create an HTTP load balancer in a VPC
    #   # This example creates a load balancer with an HTTP listener in a VPC.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTP",
    #         load_balancer_port: 80,
    #         instance_protocol: "HTTP",
    #         instance_port: 80
    #       }
    #     ],
    #     subnets: [
    #       "subnet-15aaab61"
    #     ],
    #     security_groups: [
    #       "sg-a61988c3"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     dns_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com"
    #   }
    # @example To create an HTTP load balancer in EC2-Classic
    #   # This example creates a load balancer with an HTTP listener in EC2-Classic.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTP",
    #         load_balancer_port: 80,
    #         instance_protocol: "HTTP",
    #         instance_port: 80
    #       }
    #     ],
    #     availability_zones: [
    #       "us-west-2a"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     dns_name: "my-load-balancer-123456789.us-west-2.elb.amazonaws.com"
    #   }
    # @example To create an HTTPS load balancer in a VPC
    #   # This example creates a load balancer with an HTTPS listener in a VPC.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTP",
    #         load_balancer_port: 80,
    #         instance_protocol: "HTTP",
    #         instance_port: 80
    #       },
    #       {
    #         protocol: "HTTPS",
    #         load_balancer_port: 443,
    #         instance_protocol: "HTTP",
    #         instance_port: 80,
    #         ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert"
    #       }
    #     ],
    #     subnets: [
    #       "subnet-15aaab61"
    #     ],
    #     security_groups: [
    #       "sg-a61988c3"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     dns_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com"
    #   }
    # @example To create an HTTPS load balancer in EC2-Classic
    #   # This example creates a load balancer with an HTTPS listener in EC2-Classic.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTP",
    #         load_balancer_port: 80,
    #         instance_protocol: "HTTP",
    #         instance_port: 80
    #       },
    #       {
    #         protocol: "HTTPS",
    #         load_balancer_port: 443,
    #         instance_protocol: "HTTP",
    #         instance_port: 80,
    #         ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert"
    #       }
    #     ],
    #     availability_zones: [
    #       "us-west-2a"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     dns_name: "my-load-balancer-123456789.us-west-2.elb.amazonaws.com"
    #   }
    # @example To create an internal load balancer
    #   # This example creates an internal load balancer with an HTTP listener in a VPC.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTP",
    #         load_balancer_port: 80,
    #         instance_protocol: "HTTP",
    #         instance_port: 80
    #       }
    #     ],
    #     subnets: [
    #       "subnet-15aaab61"
    #     ],
    #     security_groups: [
    #       "sg-a61988c3"
    #     ],
    #     scheme: "internal"
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     dns_name: "internal-my-load-balancer-123456789.us-west-2.elb.amazonaws.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     listeners: [ # required
    #       {
    #         protocol: "Protocol", # required
    #         load_balancer_port: 1, # required
    #         instance_protocol: "Protocol",
    #         instance_port: 1, # required
    #         ssl_certificate_id: "SSLCertificateId"
    #       }
    #     ],
    #     availability_zones: ["AvailabilityZone"],
    #     subnets: ["SubnetId"],
    #     security_groups: ["SecurityGroupId"],
    #     scheme: "LoadBalancerScheme",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dns_name: "DNSName"
    #   }
    # @return [Types::CreateAccessPointOutput]
    def create_load_balancer(params = {}, options = {})
      request = build_request(:create_load_balancer, params)
      request.send_request(options)
    end

    # <p>Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> 
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::CreateLoadBalancerListenerInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<Types::Listener>] :listeners
    #   <p>The listeners.</p>
    # @example To create an HTTP listener for a load balancer
    #   # This example creates a listener for your load balancer at port 80 using the HTTP protocol.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTP",
    #         load_balancer_port: 80,
    #         instance_protocol: "HTTP",
    #         instance_port: 80
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_listeners(params, options)
    #   response.to_h #=>
    #   {}
    # @example To create an HTTPS listener for a load balancer
    #   # This example creates a listener for your load balancer at port 443 using the HTTPS protocol.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     listeners: [
    #       {
    #         protocol: "HTTPS",
    #         load_balancer_port: 443,
    #         instance_protocol: "HTTP",
    #         instance_port: 80,
    #         ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_listeners(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     listeners: [ # required
    #       {
    #         protocol: "Protocol", # required
    #         load_balancer_port: 1, # required
    #         instance_protocol: "Protocol",
    #         instance_port: 1, # required
    #         ssl_certificate_id: "SSLCertificateId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_listeners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLoadBalancerListenerOutput]
    def create_load_balancer_listeners(params = {}, options = {})
      request = build_request(:create_load_balancer_listeners, params)
      request.send_request(options)
    end

    # <p>Creates a policy with the specified attributes for the specified load balancer.</p>
    #          <p>Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.</p>
    # @param [Hash, Types::CreateLoadBalancerPolicyInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [String] :policy_name
    #   <p>The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.</p>
    # @option params [String] :policy_type_name
    #   <p>The name of the base policy type.
    #      	   To get the list of policy types, use <a>DescribeLoadBalancerPolicyTypes</a>.</p>
    # @option params [Array<Types::PolicyAttribute>] :policy_attributes
    #   <p>The policy attributes.</p>
    # @example To create a policy that enables Proxy Protocol on a load balancer
    #   # This example creates a policy that enables Proxy Protocol on the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_name: "my-ProxyProtocol-policy",
    #     policy_type_name: "ProxyProtocolPolicyType",
    #     policy_attributes: [
    #       {
    #         attribute_name: "ProxyProtocol",
    #         attribute_value: "true"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example To create a public key policy
    #   # This example creates a public key policy.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_name: "my-PublicKey-policy",
    #     policy_type_name: "PublicKeyPolicyType",
    #     policy_attributes: [
    #       {
    #         attribute_name: "PublicKey",
    #         attribute_value: "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwAYUjnfyEyXr1pxjhFWBpMlggUcqoi3kl+dS74kj//c6x7ROtusUaeQCTgIUkayttRDWchuqo1pHC1u+n5xxXnBBe2ejbb2WRsKIQ5rXEeixsjFpFsojpSQKkzhVGI6mJVZBJDVKSHmswnwLBdofLhzvllpovBPTHe+o4haAWvDBALJU0pkSI1FecPHcs2hwxf14zHoXy1e2k36A64nXW43wtfx5qcVSIxtCEOjnYRg7RPvybaGfQ+v6Iaxb/+7J5kEvZhTFQId+bSiJImF1FSUT1W1xwzBZPUbcUkkXDj45vC2s3Z8E+Lk7a3uZhvsQHLZnrfuWjBWGWvZ/MhZYgEXAMPLE"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example To create a backend server authentication policy
    #   # This example creates a backend server authentication policy that enables authentication on your backend instance using a public key policy.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_name: "my-authentication-policy",
    #     policy_type_name: "BackendServerAuthenticationPolicyType",
    #     policy_attributes: [
    #       {
    #         attribute_name: "PublicKeyPolicyName",
    #         attribute_value: "my-PublicKey-policy"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #     policy_type_name: "PolicyTypeName", # required
    #     policy_attributes: [
    #       {
    #         attribute_name: "AttributeName",
    #         attribute_value: "AttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLoadBalancerPolicyOutput]
    def create_load_balancer_policy(params = {}, options = {})
      request = build_request(:create_load_balancer_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified load balancer.</p>
    #         <p>If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances.</p>
    #         <p>If the load balancer does not exist or has already been deleted, the call to
    #             <code>DeleteLoadBalancer</code> still succeeds.</p>
    # @param [Hash, Types::DeleteAccessPointInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @example To delete a load balancer
    #   # This example deletes the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer"
    #   }
    #   options = {}
    #   response = client.delete_load_balancer(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.delete_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessPointOutput]
    def delete_load_balancer(params = {}, options = {})
      request = build_request(:delete_load_balancer, params)
      request.send_request(options)
    end

    # <p>Deletes the specified listeners from the specified load balancer.</p>
    # @param [Hash, Types::DeleteLoadBalancerListenerInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<Integer>] :load_balancer_ports
    #   <p>The client port numbers of the listeners.</p>
    # @example To delete a listener from your load balancer
    #   # This example deletes the listener for the specified port from the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_ports: [
    #       80
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_load_balancer_listeners(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_ports: [1], # required
    #   }
    #   options = {}
    #   response = client.delete_load_balancer_listeners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLoadBalancerListenerOutput]
    def delete_load_balancer_listeners(params = {}, options = {})
      request = build_request(:delete_load_balancer_listeners, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.</p>
    # @param [Hash, Types::DeleteLoadBalancerPolicyInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @example To delete a policy from your load balancer
    #   # This example deletes the specified policy from the specified load balancer. The policy must not be enabled on any listener.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_name: "my-duration-cookie-policy"
    #   }
    #   options = {}
    #   response = client.delete_load_balancer_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.delete_load_balancer_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLoadBalancerPolicyOutput]
    def delete_load_balancer_policy(params = {}, options = {})
      request = build_request(:delete_load_balancer_policy, params)
      request.send_request(options)
    end

    # <p>Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer.</p>
    #         
    #         <p>You can use <a>DescribeLoadBalancers</a> to verify that the instance is deregistered from the load balancer.</p>  
    # 
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a> 
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::DeregisterEndPointsInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<Types::Instance>] :instances
    #   <p>The IDs of the instances.</p>
    # @example To deregister instances from a load balancer
    #   # This example deregisters the specified instance from the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     instances: [
    #       {
    #         instance_id: "i-d6f6fae3"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.deregister_instances_from_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "i-207d9717"
    #       },
    #       {
    #         instance_id: "i-afefb49b"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     instances: [ # required
    #       {
    #         instance_id: "InstanceId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.deregister_instances_from_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "InstanceId"
    #       }
    #     ]
    #   }
    # @return [Types::DeregisterEndPointsOutput]
    def deregister_instances_from_load_balancer(params = {}, options = {})
      request = build_request(:deregister_instances_from_load_balancer, params)
      request.send_request(options)
    end

    # <p>Describes the current Elastic Load Balancing resource limits for your AWS account.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a> 
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::DescribeAccountLimitsInput] params
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
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

    # <p>Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.</p>
    # @param [Hash, Types::DescribeEndPointStateInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<Types::Instance>] :instances
    #   <p>The IDs of the instances.</p>
    # @example To describe the health of the instances for a load balancer
    #   # This example describes the health of the instances for the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer"
    #   }
    #   options = {}
    #   response = client.describe_instance_health(params, options)
    #   response.to_h #=>
    #   {
    #     instance_states: [
    #       {
    #         instance_id: "i-207d9717",
    #         reason_code: "N/A",
    #         state: "InService",
    #         description: "N/A"
    #       },
    #       {
    #         instance_id: "i-afefb49b",
    #         reason_code: "N/A",
    #         state: "InService",
    #         description: "N/A"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     instances: [
    #       {
    #         instance_id: "InstanceId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_instance_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_states: [
    #       {
    #         instance_id: "InstanceId",
    #         state: "State",
    #         reason_code: "ReasonCode",
    #         description: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEndPointStateOutput]
    def describe_instance_health(params = {}, options = {})
      request = build_request(:describe_instance_health, params)
      request.send_request(options)
    end

    # <p>Describes the attributes for the specified load balancer.</p>
    # @param [Hash, Types::DescribeLoadBalancerAttributesInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @example To describe the attributes of a load balancer
    #   # This example describes the attributes of the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer"
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancer_attributes: {
    #       connection_draining: {
    #         enabled: false,
    #         timeout: 300
    #       },
    #       cross_zone_load_balancing: {
    #         enabled: false
    #       },
    #       connection_settings: {
    #         idle_timeout: 60
    #       },
    #       access_log: {
    #         enabled: false
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: false, # required
    #       },
    #       access_log: {
    #         enabled: false, # required
    #         s3_bucket_name: "S3BucketName",
    #         emit_interval: 1,
    #         s3_bucket_prefix: "AccessLogPrefix"
    #       },
    #       connection_draining: {
    #         enabled: false, # required
    #         timeout: 1
    #       },
    #       connection_settings: {
    #         idle_timeout: 1, # required
    #       },
    #       additional_attributes: [
    #         {
    #           key: "AdditionalAttributeKey",
    #           value: "AdditionalAttributeValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeLoadBalancerAttributesOutput]
    def describe_load_balancer_attributes(params = {}, options = {})
      request = build_request(:describe_load_balancer_attributes, params)
      request.send_request(options)
    end

    # <p>Describes the specified policies.</p>
    #          <p>If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer.
    #     If you specify a policy name associated with your load balancer, the action returns the description of that policy. 
    #     If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies.
    #     The names of the sample policies have the <code>ELBSample-</code> prefix.</p>
    # @param [Hash, Types::DescribeLoadBalancerPoliciesInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :policy_names
    #   <p>The names of the policies.</p>
    # @example To describe a policy associated with a load balancer
    #   # This example describes the specified policy associated with the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     policy_names: [
    #       "my-authentication-policy"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policy_descriptions: [
    #       {
    #         policy_attribute_descriptions: [
    #           {
    #             attribute_name: "PublicKeyPolicyName",
    #             attribute_value: "my-PublicKey-policy"
    #           }
    #         ],
    #         policy_name: "my-authentication-policy",
    #         policy_type_name: "BackendServerAuthenticationPolicyType"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName",
    #     policy_names: ["PolicyName"]
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_descriptions: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_type_name: "PolicyTypeName",
    #         policy_attribute_descriptions: [
    #           {
    #             attribute_name: "AttributeName",
    #             attribute_value: "AttributeValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLoadBalancerPoliciesOutput]
    def describe_load_balancer_policies(params = {}, options = {})
      request = build_request(:describe_load_balancer_policies, params)
      request.send_request(options)
    end

    # <p>Describes the specified load balancer policy types or all load balancer policy types.</p>
    #          <p>The description of each type indicates how it can be used. For example, 
    #            some policies can be used only with layer 7 listeners,
    #            some policies can be used only with layer 4 listeners,
    #            and some policies can be used only with your EC2 instances.</p>
    #          <p>You can use <a>CreateLoadBalancerPolicy</a> to create a policy configuration for any of these policy types. 
    #            Then, depending on the policy type, use either <a>SetLoadBalancerPoliciesOfListener</a> or 
    #            <a>SetLoadBalancerPoliciesForBackendServer</a> to set the policy.</p>
    # @param [Hash, Types::DescribeLoadBalancerPolicyTypesInput] params
    # @option params [Array<String>] :policy_type_names
    #   <p>The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.</p>
    # @example To describe a load balancer policy type defined by Elastic Load Balancing
    #   # This example describes the specified load balancer policy type.
    #   params = {
    #     policy_type_names: [
    #       "ProxyProtocolPolicyType"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_policy_types(params, options)
    #   response.to_h #=>
    #   {
    #     policy_type_descriptions: [
    #       {
    #         policy_attribute_type_descriptions: [
    #           {
    #             cardinality: "ONE",
    #             attribute_name: "ProxyProtocol",
    #             attribute_type: "Boolean"
    #           }
    #         ],
    #         policy_type_name: "ProxyProtocolPolicyType",
    #         description: "Policy that controls whether to include the IP address and port of the originating request for TCP messages. This policy operates on TCP listeners only."
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_type_names: ["PolicyTypeName"]
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_policy_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_type_descriptions: [
    #       {
    #         policy_type_name: "PolicyTypeName",
    #         description: "Description",
    #         policy_attribute_type_descriptions: [
    #           {
    #             attribute_name: "AttributeName",
    #             attribute_type: "AttributeType",
    #             description: "Description",
    #             default_value: "DefaultValue",
    #             cardinality: "Cardinality"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLoadBalancerPolicyTypesOutput]
    def describe_load_balancer_policy_types(params = {}, options = {})
      request = build_request(:describe_load_balancer_policy_types, params)
      request.send_request(options)
    end

    # <p>Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.</p>
    # @param [Hash, Types::DescribeAccessPointsInput] params
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return with this call (a number from 1 to 400). The default is 400.</p>
    # @example To describe one of your load balancers
    #   # This example describes the specified load balancer.
    #   params = {
    #     load_balancer_names: [
    #       "my-load-balancer"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_load_balancers(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancer_descriptions: [
    #       {
    #         subnets: [
    #           "subnet-15aaab61"
    #         ],
    #         canonical_hosted_zone_name_id: "Z3DZXE0EXAMPLE",
    #         canonical_hosted_zone_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com",
    #         listener_descriptions: [
    #           {
    #             listener: {
    #               instance_port: 80,
    #               load_balancer_port: 80,
    #               protocol: "HTTP",
    #               instance_protocol: "HTTP"
    #             },
    #             policy_names: [
    #             ]
    #           },
    #           {
    #             listener: {
    #               instance_port: 443,
    #               ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert",
    #               load_balancer_port: 443,
    #               protocol: "HTTPS",
    #               instance_protocol: "HTTPS"
    #             },
    #             policy_names: [
    #               "ELBSecurityPolicy-2015-03"
    #             ]
    #           }
    #         ],
    #         health_check: {
    #           healthy_threshold: 2,
    #           interval: 30,
    #           target: "HTTP:80/png",
    #           timeout: 3,
    #           unhealthy_threshold: 2
    #         },
    #         vpc_id: "vpc-a01106c2",
    #         backend_server_descriptions: [
    #           {
    #             instance_port: 80,
    #             policy_names: [
    #               "my-ProxyProtocol-policy"
    #             ]
    #           }
    #         ],
    #         instances: [
    #           {
    #             instance_id: "i-207d9717"
    #           },
    #           {
    #             instance_id: "i-afefb49b"
    #           }
    #         ],
    #         dns_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com",
    #         security_groups: [
    #           "sg-a61988c3"
    #         ],
    #         policies: {
    #           lb_cookie_stickiness_policies: [
    #             {
    #               policy_name: "my-duration-cookie-policy",
    #               cookie_expiration_period: 60
    #             }
    #           ],
    #           app_cookie_stickiness_policies: [
    #           ],
    #           other_policies: [
    #             "my-PublicKey-policy",
    #             "my-authentication-policy",
    #             "my-SSLNegotiation-policy",
    #             "my-ProxyProtocol-policy",
    #             "ELBSecurityPolicy-2015-03"
    #           ]
    #         },
    #         load_balancer_name: "my-load-balancer",
    #         created_time: Time.parse("2015-03-19T03:24:02.650Z"),
    #         availability_zones: [
    #           "us-west-2a"
    #         ],
    #         scheme: "internet-facing",
    #         source_security_group: {
    #           owner_alias: "123456789012",
    #           group_name: "my-elb-sg"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_names: ["AccessPointName"],
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancer_descriptions: [
    #       {
    #         load_balancer_name: "AccessPointName",
    #         dns_name: "DNSName",
    #         canonical_hosted_zone_name: "DNSName",
    #         canonical_hosted_zone_name_id: "DNSName",
    #         listener_descriptions: [
    #           {
    #             listener: {
    #               protocol: "Protocol", # required
    #               load_balancer_port: 1, # required
    #               instance_protocol: "Protocol",
    #               instance_port: 1, # required
    #               ssl_certificate_id: "SSLCertificateId"
    #             },
    #             policy_names: ["PolicyName"]
    #           }
    #         ],
    #         policies: {
    #           app_cookie_stickiness_policies: [
    #             {
    #               policy_name: "PolicyName",
    #               cookie_name: "CookieName"
    #             }
    #           ],
    #           lb_cookie_stickiness_policies: [
    #             {
    #               policy_name: "PolicyName",
    #               cookie_expiration_period: 1
    #             }
    #           ],
    #           other_policies: ["PolicyName"]
    #         },
    #         backend_server_descriptions: [
    #           {
    #             instance_port: 1,
    #             policy_names: ["PolicyName"]
    #           }
    #         ],
    #         availability_zones: ["AvailabilityZone"],
    #         subnets: ["SubnetId"],
    #         vpc_id: "VPCId",
    #         instances: [
    #           {
    #             instance_id: "InstanceId"
    #           }
    #         ],
    #         health_check: {
    #           target: "HealthCheckTarget", # required
    #           interval: 1, # required
    #           timeout: 1, # required
    #           unhealthy_threshold: 1, # required
    #           healthy_threshold: 1, # required
    #         },
    #         source_security_group: {
    #           owner_alias: "SecurityGroupOwnerAlias",
    #           group_name: "SecurityGroupName"
    #         },
    #         security_groups: ["SecurityGroupId"],
    #         created_time: Time.now,
    #         scheme: "LoadBalancerScheme"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeAccessPointsOutput]
    def describe_load_balancers(params = {}, options = {})
      request = build_request(:describe_load_balancers, params)
      request.send_request(options)
    end

    # <p>Describes the tags associated with the specified load balancers.</p>
    # @param [Hash, Types::DescribeTagsInput] params
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers.</p>
    # @example To describe the tags for a load balancer
    #   # This example describes the tags for the specified load balancer.
    #   params = {
    #     load_balancer_names: [
    #       "my-load-balancer"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tag_descriptions: [
    #       {
    #         tags: [
    #           {
    #             key: "project",
    #             value: "lima"
    #           },
    #           {
    #             key: "department",
    #             value: "digital-media"
    #           }
    #         ],
    #         load_balancer_name: "my-load-balancer"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_names: ["AccessPointName"], # required
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_descriptions: [
    #       {
    #         load_balancer_name: "AccessPointName",
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

    # <p>Removes the specified subnets from the set of configured subnets for the load balancer.</p> 
    #         <p>After a subnet is removed, all EC2 instances registered with the load balancer  
    #             in the removed subnet go into the <code>OutOfService</code> state. Then, 
    #             the load balancer balances the traffic among the remaining routable subnets.</p>
    # @param [Hash, Types::DetachLoadBalancerFromSubnetsInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets.</p>
    # @example To detach a load balancer from a subnet
    #   # This example detaches the specified load balancer from the specified subnet.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     subnets: [
    #       "subnet-0ecac448"
    #     ]
    #   }
    #   options = {}
    #   response = client.detach_load_balancer_from_subnets(params, options)
    #   response.to_h #=>
    #   {
    #     subnets: [
    #       "subnet-15aaab61"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     subnets: ["SubnetId"], # required
    #   }
    #   options = {}
    #   response = client.detach_load_balancer_from_subnets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnets: ["SubnetId"]
    #   }
    # @return [Types::DetachLoadBalancerFromSubnetsOutput]
    def detach_load_balancer_from_subnets(params = {}, options = {})
      request = build_request(:detach_load_balancer_from_subnets, params)
      request.send_request(options)
    end

    # <p>Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer
    #             in EC2-Classic or a default VPC.</p>
    #         <p>For load balancers in a non-default VPC, use <a>DetachLoadBalancerFromSubnets</a>.</p>
    #         <p>There must be at least one Availability Zone registered with a load balancer at all times. 
    #          After an Availability Zone is removed, all instances registered with the load balancer that are in the removed
    #          Availability Zone go into the <code>OutOfService</code> state. Then, the load balancer attempts to equally balance
    #          the traffic among its remaining Availability Zones.</p> 
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::RemoveAvailabilityZonesInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones.</p>
    # @example To disable an Availability Zone for a load balancer
    #   # This example removes the specified Availability Zone from the set of Availability Zones for the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     availability_zones: [
    #       "us-west-2a"
    #     ]
    #   }
    #   options = {}
    #   response = client.disable_availability_zones_for_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     availability_zones: [
    #       "us-west-2b"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     availability_zones: ["AvailabilityZone"], # required
    #   }
    #   options = {}
    #   response = client.disable_availability_zones_for_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_zones: ["AvailabilityZone"]
    #   }
    # @return [Types::RemoveAvailabilityZonesOutput]
    def disable_availability_zones_for_load_balancer(params = {}, options = {})
      request = build_request(:disable_availability_zones_for_load_balancer, params)
      request.send_request(options)
    end

    # <p>Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer
    #             in EC2-Classic or a default VPC.</p>
    #         <p>For load balancers in a non-default VPC, use <a>AttachLoadBalancerToSubnets</a>.</p>
    #         <p>The load balancer evenly distributes requests across all its registered Availability Zones 
    #             that contain instances. For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::AddAvailabilityZonesInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones. These must be in the same region as the load balancer.</p>
    # @example To enable an Availability Zone for a load balancer
    #   # This example adds the specified Availability Zone to the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     availability_zones: [
    #       "us-west-2b"
    #     ]
    #   }
    #   options = {}
    #   response = client.enable_availability_zones_for_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     availability_zones: [
    #       "us-west-2a",
    #       "us-west-2b"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     availability_zones: ["AvailabilityZone"], # required
    #   }
    #   options = {}
    #   response = client.enable_availability_zones_for_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_zones: ["AvailabilityZone"]
    #   }
    # @return [Types::AddAvailabilityZonesOutput]
    def enable_availability_zones_for_load_balancer(params = {}, options = {})
      request = build_request(:enable_availability_zones_for_load_balancer, params)
      request.send_request(options)
    end

    # <p>Modifies the attributes of the specified load balancer.</p> 
    #         <p>You can modify the load balancer attributes, such as <code>AccessLogs</code>, <code>ConnectionDraining</code>, and 
    #             <code>CrossZoneLoadBalancing</code> by either enabling or disabling them. Or, you can modify the load balancer attribute 
    #             <code>ConnectionSettings</code> by specifying an idle connection timeout value for your load balancer.</p> 
    #         <p>For more information, see the following in the <i>Classic Load Balancers Guide</i>:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html">Cross-Zone Load Balancing</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html">Connection Draining</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html">Access Logs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html">Idle Connection Timeout</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ModifyLoadBalancerAttributesInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Types::LoadBalancerAttributes] :load_balancer_attributes
    #   <p>The attributes for the load balancer.</p>
    # @example To enable cross-zone load balancing
    #   # This example enables cross-zone load balancing for the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: true
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: true
    #       }
    #     }
    #   }
    # @example To enable connection draining
    #   # This example enables connection draining for the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_attributes: {
    #       connection_draining: {
    #         enabled: true,
    #         timeout: 300
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_attributes: {
    #       connection_draining: {
    #         enabled: true,
    #         timeout: 300
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_attributes: { # required
    #       cross_zone_load_balancing: {
    #         enabled: false, # required
    #       },
    #       access_log: {
    #         enabled: false, # required
    #         s3_bucket_name: "S3BucketName",
    #         emit_interval: 1,
    #         s3_bucket_prefix: "AccessLogPrefix"
    #       },
    #       connection_draining: {
    #         enabled: false, # required
    #         timeout: 1
    #       },
    #       connection_settings: {
    #         idle_timeout: 1, # required
    #       },
    #       additional_attributes: [
    #         {
    #           key: "AdditionalAttributeKey",
    #           value: "AdditionalAttributeValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.modify_load_balancer_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancer_name: "AccessPointName",
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: false, # required
    #       },
    #       access_log: {
    #         enabled: false, # required
    #         s3_bucket_name: "S3BucketName",
    #         emit_interval: 1,
    #         s3_bucket_prefix: "AccessLogPrefix"
    #       },
    #       connection_draining: {
    #         enabled: false, # required
    #         timeout: 1
    #       },
    #       connection_settings: {
    #         idle_timeout: 1, # required
    #       },
    #       additional_attributes: [
    #         {
    #           key: "AdditionalAttributeKey",
    #           value: "AdditionalAttributeValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ModifyLoadBalancerAttributesOutput]
    def modify_load_balancer_attributes(params = {}, options = {})
      request = build_request(:modify_load_balancer_attributes, params)
      request.send_request(options)
    end

    # <p>Adds the specified instances to the specified load balancer.</p>
    # 
    #         <p>The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.</p>
    # 
    #         <p>Note that <code>RegisterInstanceWithLoadBalancer</code> completes when the request has been registered.
    #          Instance registration takes a little time to complete. To check the state of the registered instances, use 
    #          <a>DescribeLoadBalancers</a> or <a>DescribeInstanceHealth</a>.</p>  
    #         
    #         <p>After the instance is registered, it starts receiving traffic
    #          and requests from the load balancer. Any instance that is not
    #          in one of the Availability Zones registered for the load balancer
    #          is moved to the <code>OutOfService</code> state. If an Availability Zone
    #          is added to the load balancer later, any instances registered with the
    #          load balancer move to the <code>InService</code> state.</p>
    # 
    #         <p>To deregister instances from a load balancer, use <a>DeregisterInstancesFromLoadBalancer</a>.</p>
    #         
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::RegisterEndPointsInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<Types::Instance>] :instances
    #   <p>The IDs of the instances.</p>
    # @example To register instances with a load balancer
    #   # This example registers the specified instance with the specified load balancer.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     instances: [
    #       {
    #         instance_id: "i-d6f6fae3"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_instances_with_load_balancer(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "i-d6f6fae3"
    #       },
    #       {
    #         instance_id: "i-207d9717"
    #       },
    #       {
    #         instance_id: "i-afefb49b"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     instances: [ # required
    #       {
    #         instance_id: "InstanceId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_instances_with_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "InstanceId"
    #       }
    #     ]
    #   }
    # @return [Types::RegisterEndPointsOutput]
    def register_instances_with_load_balancer(params = {}, options = {})
      request = build_request(:register_instances_with_load_balancer, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified load balancer.</p>
    # @param [Hash, Types::RemoveTagsInput] params
    # @option params [Array<String>] :load_balancer_names
    #   <p>The name of the load balancer. You can specify a maximum of one load balancer name.</p>
    # @option params [Array<Types::TagKeyOnly>] :tags
    #   <p>The list of tag keys to remove.</p>
    # @example To remove tags from a load balancer
    #   # This example removes the specified tag from the specified load balancer.
    #   params = {
    #     load_balancer_names: [
    #       "my-load-balancer"
    #     ],
    #     tags: [
    #       {
    #         key: "project"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_names: ["AccessPointName"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey"
    #       }
    #     ]
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

    # <p>Sets the certificate that terminates the specified listener's SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port.</p>
    #         
    #         <p>For more information about updating your SSL certificate, see 
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html">Replace the SSL Certificate for Your Load Balancer</a>
    #                 in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::SetLoadBalancerListenerSSLCertificateInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Integer] :load_balancer_port
    #   <p>The port that uses the specified SSL certificate.</p>
    # @option params [String] :ssl_certificate_id
    #   <p>The Amazon Resource Name (ARN) of the SSL certificate.</p>
    # @example To update the SSL certificate for an HTTPS listener
    #   # This example replaces the existing SSL certificate for the specified HTTPS listener.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_port: 443,
    #     ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/new-server-cert"
    #   }
    #   options = {}
    #   response = client.set_load_balancer_listener_ssl_certificate(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_port: 1, # required
    #     ssl_certificate_id: "SSLCertificateId", # required
    #   }
    #   options = {}
    #   response = client.set_load_balancer_listener_ssl_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetLoadBalancerListenerSSLCertificateOutput]
    def set_load_balancer_listener_ssl_certificate(params = {}, options = {})
      request = build_request(:set_load_balancer_listener_ssl_certificate, params)
      request.send_request(options)
    end

    # <p>Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies. 
    #             At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies.</p>
    #         <p>Each time you use <code>SetLoadBalancerPoliciesForBackendServer</code> to enable the policies, 
    #             use the <code>PolicyNames</code> parameter to list the policies that you want to enable.</p>
    #         <p>You can use <a>DescribeLoadBalancers</a> or <a>DescribeLoadBalancerPolicies</a> to verify that the policy 
    #             is associated with the EC2 instance.</p>     
    # 
    #         <p>For more information about enabling back-end instance authentication, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt">Configure Back-end Instance Authentication</a>
    #             in the <i>Classic Load Balancers Guide</i>. For more information about Proxy Protocol, see 
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html">Configure Proxy Protocol Support</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::SetLoadBalancerPoliciesForBackendServerInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Integer] :instance_port
    #   <p>The port number associated with the EC2 instance.</p>
    # @option params [Array<String>] :policy_names
    #   <p>The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.</p>
    # @example To replace the policies associated with a port for a backend instance
    #   # This example replaces the policies that are currently associated with the specified port.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     instance_port: 80,
    #     policy_names: [
    #       "my-ProxyProtocol-policy"
    #     ]
    #   }
    #   options = {}
    #   response = client.set_load_balancer_policies_for_backend_server(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     instance_port: 1, # required
    #     policy_names: ["PolicyName"], # required
    #   }
    #   options = {}
    #   response = client.set_load_balancer_policies_for_backend_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetLoadBalancerPoliciesForBackendServerOutput]
    def set_load_balancer_policies_for_backend_server(params = {}, options = {})
      request = build_request(:set_load_balancer_policies_for_backend_server, params)
      request.send_request(options)
    end

    # <p>Replaces the current set of policies for the specified load balancer port with the specified set of policies.</p>
    #         <p>To enable back-end server authentication, use <a>SetLoadBalancerPoliciesForBackendServer</a>.</p>
    #         <p>For more information about setting policies, see
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html">Update the SSL Negotiation Configuration</a>,
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a>, and
    #             <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @param [Hash, Types::SetLoadBalancerPoliciesOfListenerInput] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Integer] :load_balancer_port
    #   <p>The external port of the load balancer.</p>
    # @option params [Array<String>] :policy_names
    #   <p>The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.</p>
    # @example To replace the policies associated with a listener
    #   # This example replaces the policies that are currently associated with the specified listener.
    #   params = {
    #     load_balancer_name: "my-load-balancer",
    #     load_balancer_port: 80,
    #     policy_names: [
    #       "my-SSLNegotiation-policy"
    #     ]
    #   }
    #   options = {}
    #   response = client.set_load_balancer_policies_of_listener(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_port: 1, # required
    #     policy_names: ["PolicyName"], # required
    #   }
    #   options = {}
    #   response = client.set_load_balancer_policies_of_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetLoadBalancerPoliciesOfListenerOutput]
    def set_load_balancer_policies_of_listener(params = {}, options = {})
      request = build_request(:set_load_balancer_policies_of_listener, params)
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
      context[:gem_name] = 'aws-sdk-elasticloadbalancing'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        any_instance_in_service: Waiters::AnyInstanceInService,
        instance_deregistered: Waiters::InstanceDeregistered,
        instance_in_service: Waiters::InstanceInService
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
