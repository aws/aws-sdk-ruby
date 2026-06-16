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
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:autoscaling)

module Aws::AutoScaling
  # An API client for Aws::AutoScaling.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AutoScaling20110101
    @identifier = :autoscaling

    add_plugin(::Aws::AutoScaling::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AutoScaling::EndpointProvider)
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

    # <p>Attaches one or more EC2 instances to the specified Auto Scaling group.</p>
    #          <p>When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the
    #             number of instances being attached. If the number of instances being attached plus the
    #             desired capacity of the group exceeds the maximum size of the group, the operation
    #             fails.</p>
    #          <p>If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are
    #             also registered with the load balancer. If there are target groups attached to your Auto Scaling
    #             group, the instances are also registered with the target groups.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-detach-attach-instances.html">Detach
    #                 or attach instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::AttachInstancesInput] params
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @example To attach an instance to an Auto Scaling group
    #   # This example attaches the specified instance to the specified Auto Scaling group.
    #   params = {
    #     instance_ids: [
    #       "i-93633f9b"
    #     ],
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.attach_instances(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.attach_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_instances(params = {}, options = {})
      request = build_request(:attach_instances, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This API operation is superseded by <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html">AttachTrafficSources</a>, which
    #                 can attach multiple traffic sources types. We recommend using
    #                     <code>AttachTrafficSources</code> to simplify how you manage traffic sources.
    #                 However, we continue to support <code>AttachLoadBalancerTargetGroups</code>. You can
    #                 use both the original <code>AttachLoadBalancerTargetGroups</code> API operation and
    #                     <code>AttachTrafficSources</code> on the same Auto Scaling group.</p>
    #          </note>
    #          <p>Attaches one or more target groups to the specified Auto Scaling group.</p>
    #          <p>This operation is used with the following load balancer types: </p>
    #          <ul>
    #             <li>
    #                <p>Application Load Balancer - Operates at the application layer (layer 7) and supports HTTP and
    #                     HTTPS. </p>
    #             </li>
    #             <li>
    #                <p>Network Load Balancer - Operates at the transport layer (layer 4) and supports TCP, TLS, and
    #                     UDP. </p>
    #             </li>
    #             <li>
    #                <p>Gateway Load Balancer - Operates at the network layer (layer 3).</p>
    #             </li>
    #          </ul>
    #          <p>To describe the target groups for an Auto Scaling group, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html">DescribeLoadBalancerTargetGroups</a>
    #             API. To detach the target group from
    #             the Auto Scaling group, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancerTargetGroups.html">DetachLoadBalancerTargetGroups</a> API.</p>
    #          <p>This operation is additive and does not detach existing target groups or Classic Load
    #             Balancers from the Auto Scaling group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use Elastic Load Balancing to
    #                 distribute traffic across the instances in your Auto Scaling group</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    # @param [Hash, Types::AttachLoadBalancerTargetGroupsInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :target_group_ar_ns
    #   <p>The Amazon Resource Names (ARNs) of the target groups. You can specify up to 10 target
    #               groups. To get the ARN of a target group, use the Elastic Load Balancing <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    # @example To attach a target group to an Auto Scaling group
    #   # This example attaches the specified target group to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     target_group_ar_ns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #     ]
    #   }
    #   options = {}
    #   response = client.attach_load_balancer_target_groups(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     target_group_ar_ns: ["XmlStringMaxLen511"], # required
    #   }
    #   options = {}
    #   response = client.attach_load_balancer_target_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachLoadBalancerTargetGroupsOutput]
    def attach_load_balancer_target_groups(params = {}, options = {})
      request = build_request(:attach_load_balancer_target_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This API operation is superseded by <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html">https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html</a>, which
    #                 can attach multiple traffic sources types. We recommend using
    #                 <code>AttachTrafficSources</code> to simplify how you manage traffic sources.
    #                 However, we continue to support <code>AttachLoadBalancers</code>. You can use both
    #                 the original <code>AttachLoadBalancers</code> API operation and
    #                     <code>AttachTrafficSources</code> on the same Auto Scaling group.</p>
    #          </note>
    #          <p>Attaches one or more Classic Load Balancers to the specified Auto Scaling group. Amazon EC2 Auto Scaling registers the
    #             running instances with these Classic Load Balancers.</p>
    #          <p>To describe the load balancers for an Auto Scaling group, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API.
    #             To detach a load balancer from the Auto Scaling group, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancers.html">DetachLoadBalancers</a>
    #             API.</p>
    #          <p>This operation is additive and does not detach existing Classic Load Balancers or
    #             target groups from the Auto Scaling group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use Elastic Load Balancing to
    #                 distribute traffic across the instances in your Auto Scaling group</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::AttachLoadBalancersInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    # @example To attach a load balancer to an Auto Scaling group
    #   # This example attaches the specified load balancer to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     load_balancer_names: [
    #       "my-load-balancer"
    #     ]
    #   }
    #   options = {}
    #   response = client.attach_load_balancers(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     load_balancer_names: ["XmlStringMaxLen255"], # required
    #   }
    #   options = {}
    #   response = client.attach_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachLoadBalancersOutput]
    def attach_load_balancers(params = {}, options = {})
      request = build_request(:attach_load_balancers, params)
      request.send_request(options)
    end

    # <p>Attaches one or more traffic sources to the specified Auto Scaling group.</p>
    #          <p>You can use any of the following as traffic sources for an Auto Scaling group:</p>
    #          <ul>
    #             <li>
    #                <p>Application Load Balancer</p>
    #             </li>
    #             <li>
    #                <p>Classic Load Balancer</p>
    #             </li>
    #             <li>
    #                <p>Gateway Load Balancer</p>
    #             </li>
    #             <li>
    #                <p>Network Load Balancer</p>
    #             </li>
    #             <li>
    #                <p>VPC Lattice</p>
    #             </li>
    #          </ul>
    #          <p>This operation is additive and does not detach existing traffic sources from the Auto Scaling
    #             group. </p>
    #          <p>After the operation completes, use the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html">DescribeTrafficSources</a> API to
    #             return details about the state of the attachments between traffic sources and your Auto Scaling
    #             group. To detach a traffic source from the Auto Scaling group, call the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachTrafficSources.html">DetachTrafficSources</a> API.</p>
    # @param [Hash, Types::AttachTrafficSourcesInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   <p>The unique identifiers of one or more traffic sources. You can specify up to 10
    #               traffic sources.</p>
    # @option params [Boolean] :skip_zonal_shift_validation
    #   <p>
    #               If you enable zonal shift with cross-zone disabled load balancers, capacity could become imbalanced across Availability Zones. To skip the validation, specify <code>true</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    # @example To attach a target group to an Auto Scaling group
    #   # This example attaches the specified target group to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     traffic_sources: [
    #       {
    #         identifier: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.attach_traffic_sources(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     traffic_sources: [ # required
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511"
    #       }
    #     ],
    #     skip_zonal_shift_validation: false
    #   }
    #   options = {}
    #   response = client.attach_traffic_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachTrafficSourcesOutput]
    def attach_traffic_sources(params = {}, options = {})
      request = build_request(:attach_traffic_sources, params)
      request.send_request(options)
    end

    # <p>Deletes one or more scheduled actions for the specified Auto Scaling group.</p>
    # @param [Hash, Types::BatchDeleteScheduledActionInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :scheduled_action_names
    #   <p>The names of the scheduled actions to delete. The maximum number allowed is 50.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_action_names: ["XmlStringMaxLen255"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_scheduled_actions: [
    #       {
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         error_code: "XmlStringMaxLen64",
    #         error_message: "XmlString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteScheduledActionOutput]
    def batch_delete_scheduled_action(params = {}, options = {})
      request = build_request(:batch_delete_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Creates or updates one or more scheduled scaling actions for an Auto Scaling group.</p>
    # @param [Hash, Types::BatchPutScheduledUpdateGroupActionInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<Types::ScheduledUpdateGroupActionRequest>] :scheduled_update_group_actions
    #   <p>One or more scheduled actions. The maximum number allowed is 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_update_group_actions: [ # required
    #       {
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: "XmlStringMaxLen255",
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #         time_zone: "XmlStringMaxLen255"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_scheduled_update_group_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_scheduled_update_group_actions: [
    #       {
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         error_code: "XmlStringMaxLen64",
    #         error_message: "XmlString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutScheduledUpdateGroupActionOutput]
    def batch_put_scheduled_update_group_action(params = {}, options = {})
      request = build_request(:batch_put_scheduled_update_group_action, params)
      request.send_request(options)
    end

    # <p>Cancels an instance refresh or rollback that is in progress. If an instance refresh or
    #             rollback is not in progress, an <code>ActiveInstanceRefreshNotFound</code> error
    #             occurs.</p>
    #          <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group
    #             after you make configuration changes.</p>
    #          <p>When you cancel an instance refresh, this does not roll back any changes that it made.
    #             Use the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RollbackInstanceRefresh.html">RollbackInstanceRefresh</a> API to roll back instead.</p>
    # @param [Hash, Types::CancelInstanceRefreshInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :wait_for_transitioning_instances
    #   <p>When cancelling an instance refresh, this indicates whether to wait for in-flight launches 
    #               and terminations to complete. The default is true.</p>
    #            <p>When set to false, Amazon EC2 Auto Scaling cancels the instance refresh 
    #               without waiting for any pending launches or terminations to complete.</p>
    # @example To cancel an instance refresh
    #   # This example cancels an instance refresh operation in progress.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.cancel_instance_refresh(params, options)
    #   response.to_h #=>
    #   {
    #     instance_refresh_id: "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     wait_for_transitioning_instances: false
    #   }
    #   options = {}
    #   response = client.cancel_instance_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_refresh_id: "XmlStringMaxLen255"
    #   }
    # @return [Types::CancelInstanceRefreshOutput]
    def cancel_instance_refresh(params = {}, options = {})
      request = build_request(:cancel_instance_refresh, params)
      request.send_request(options)
    end

    # <p>Completes the lifecycle action for the specified token or instance with the specified
    #             result.</p>
    #          <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling
    #             group:</p>
    #          <ol>
    #             <li>
    #                <p>(Optional) Create a launch template or launch configuration with a user data
    #                     script that runs while an instance is in a wait state due to a lifecycle
    #                     hook.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) Create a Lambda function and a rule that allows Amazon EventBridge to invoke
    #                     your Lambda function when an instance is put into a wait state due to a
    #                     lifecycle hook.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) Create a notification target and an IAM role. The target can be
    #                     either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish
    #                     lifecycle notifications to the target.</p>
    #             </li>
    #             <li>
    #                <p>Create the lifecycle hook. Specify whether the hook is used when the instances
    #                     launch or terminate.</p>
    #             </li>
    #             <li>
    #                <p>If you need more time, record the lifecycle action heartbeat to keep the
    #                     instance in a wait state.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If you finish before the timeout period ends, send a
    #                         callback by using the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html">CompleteLifecycleAction</a> API
    #                         call.</b>
    #                </p>
    #             </li>
    #          </ol>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/completing-lifecycle-hooks.html">Complete a lifecycle
    #                 action</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::CompleteLifecycleActionInput] params
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :lifecycle_action_token
    #   <p>A universally unique identifier (UUID) that identifies a specific lifecycle action
    #               associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you
    #               specified when you created the lifecycle hook.</p>
    # @option params [String] :lifecycle_action_result
    #   <p>The action for the group to take. You can specify either <code>CONTINUE</code> or
    #                   <code>ABANDON</code>.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    # @example To complete the lifecycle action
    #   # This example notifies Auto Scaling that the specified lifecycle action is complete so that it can finish launching or terminating the instance.
    #   params = {
    #     lifecycle_hook_name: "my-lifecycle-hook",
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     lifecycle_action_token: "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635",
    #     lifecycle_action_result: "CONTINUE"
    #   }
    #   options = {}
    #   response = client.complete_lifecycle_action(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_action_token: "LifecycleActionToken",
    #     lifecycle_action_result: "LifecycleActionResult", # required
    #     instance_id: "XmlStringMaxLen19"
    #   }
    #   options = {}
    #   response = client.complete_lifecycle_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CompleteLifecycleActionOutput]
    def complete_lifecycle_action(params = {}, options = {})
      request = build_request(:complete_lifecycle_action, params)
      request.send_request(options)
    end

    # <p>
    #             <b>We strongly recommend using a launch template when calling this operation to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.</b>
    #          </p>
    #          <p>Creates an Auto Scaling group with the specified name and attributes. </p>
    #          <p>If you exceed your maximum limit of Auto Scaling groups, the call fails. To query this limit,
    #             call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html">DescribeAccountLimits</a> API. For information about updating
    #             this limit, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html">Quotas for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>If you're new to Amazon EC2 Auto Scaling, see the introductory tutorials in <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/get-started-with-ec2-auto-scaling.html">Get started
    #                 with Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>Every Auto Scaling group has three size properties (<code>DesiredCapacity</code>,
    #                 <code>MaxSize</code>, and <code>MinSize</code>). Usually, you set these sizes based
    #             on a specific number of instances. However, if you configure a mixed instances policy
    #             that defines weights for the instance types, you must specify these sizes with the same
    #             units that you use for weighting instances.</p>
    # @param [Hash, Types::CreateAutoScalingGroupInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group. This name must be unique per Region per account.</p>
    #            <p>The name can contain any ASCII character 33 to 126 including most punctuation
    #               characters, digits, and upper and lowercased letters.</p>
    #            <note>
    #               <p>You cannot use a colon (:) in the name.</p>
    #            </note>
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration to use to launch instances. </p>
    #            <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   <p>Information used to specify the launch template and version to use to launch
    #               instances. </p>
    #            <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    #            <note>
    #               <p>The launch template that is specified must be configured for use with an Auto Scaling
    #                   group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Create a launch
    #                       template for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            </note>
    # @option params [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   <p>The mixed instances policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the instance used to base the launch configuration on. If specified, Amazon
    #               EC2 Auto Scaling uses the configuration values from the specified instance to create a
    #               new launch configuration. To get the instance ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> API operation. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Create an Auto Scaling group using parameters from an existing instance</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Integer] :min_size
    #   <p>The minimum size of the group.</p>
    # @option params [Integer] :max_size
    #   <p>The maximum size of the group.</p>
    #            <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #            </note>
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group at the time of its
    #               creation and the capacity it attempts to maintain. It can scale beyond this capacity if
    #               you configure auto scaling. This number must be greater than or equal to the minimum
    #               size of the group and less than or equal to the maximum size of the group. If you do not
    #               specify a desired capacity, the default is the minimum size of the group.</p>
    # @option params [Integer] :default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #            <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Default: <code>300</code> seconds</p>
    # @option params [Array<String>] :availability_zones
    #   <p>A list of Availability Zones where instances in the Auto Scaling group can be created. Used
    #               for launching into the default VPC subnet in each Availability Zone when not using the
    #                   <code>VPCZoneIdentifier</code> property, or for attaching a network interface when
    #               an existing network interface ID is specified in a launch template.</p>
    # @option params [Array<String>] :load_balancer_names
    #   <p>A list of Classic Load Balancers associated with this Auto Scaling group. For Application Load Balancers, Network Load Balancers, and Gateway Load Balancers,
    #               specify the <code>TargetGroupARNs</code> property instead.</p>
    # @option params [Array<String>] :target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the Elastic Load Balancing target groups to associate with the Auto Scaling
    #               group. Instances are registered as targets with the target groups. The target groups
    #               receive incoming traffic and route requests to one or more registered targets. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use Elastic Load Balancing to
    #                   distribute traffic across the instances in your Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :health_check_type
    #   <p>A comma-separated value string of one or more health check types.</p>
    #            <p>The valid values are <code>EC2</code>, <code>EBS</code>, <code>ELB</code>, and
    #                   <code>VPC_LATTICE</code>. <code>EC2</code> is the default health check and cannot be
    #               disabled. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html">Health checks
    #                   for instances in an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Only specify <code>EC2</code> if you must clear a value that was previously
    #               set.</p>
    # @option params [Integer] :health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               health check. This is useful if your instances do not immediately pass their health
    #               checks after they enter the <code>InService</code> state. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set the health check
    #                   grace period for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Default: <code>0</code> seconds</p>
    # @option params [String] :placement_group
    #   <p>The name of the placement group into which to launch your instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #            <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #            </note>
    # @option params [String] :vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC) where instances
    #               in the Auto Scaling group can be created. If you specify <code>VPCZoneIdentifier</code> with
    #                   <code>AvailabilityZones</code>, the subnets that you specify must reside in those
    #               Availability Zones.</p>
    # @option params [Array<String>] :termination_policies
    #   <p>A policy or a list of policies that are used to select the instance to terminate.
    #               These policies are executed in the order that you list them. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html">Configure
    #                   termination policies for Amazon EC2 Auto Scaling</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid values: <code>Default</code> | <code>AllocationStrategy</code> |
    #                   <code>ClosestToNextInstanceHour</code> | <code>NewestInstance</code> |
    #                   <code>OldestInstance</code> | <code>OldestLaunchConfiguration</code> |
    #                   <code>OldestLaunchTemplate</code> |
    #                   <code>arn:aws:lambda:region:account-id:function:my-function:my-alias</code>
    #            </p>
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Use
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Boolean] :capacity_rebalance
    #   <p>Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing is
    #               disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
    #               Instance whenever Amazon EC2 notifies that a Spot Instance is at an elevated risk of
    #               interruption. After launching a new instance, it then terminates an old instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Use Capacity
    #                   Rebalancing to handle Amazon EC2 Spot Interruptions</a> in the in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Array<Types::LifecycleHookSpecification>] :lifecycle_hook_specification_list
    #   <p>One or more lifecycle hooks to add to the Auto Scaling group before instances are
    #               launched.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2
    #               instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS
    #               volumes, specify the tags in a launch template but use caution. If the launch template
    #               specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling
    #               overrides the value of that instance tag with the value specified by the Auto Scaling group. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html">Tag Auto Scaling groups and
    #                   instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services service on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
    #               named <code>AWSServiceRoleForAutoScaling</code>, which it creates if it does not exist.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Integer] :max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replace Auto Scaling instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :context
    #   <p>Reserved.</p>
    # @option params [String] :desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html">Create a mixed instances group using attribute-based instance type
    #                   selection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>, which translates into number of
    #               instances.</p>
    #            <p>Valid values: <code>units</code> | <code>vcpu</code> | <code>memory-mib</code>
    #            </p>
    # @option params [Integer] :default_instance_warmup
    #   <p>The amount of time, in seconds, until a new instance is considered to have finished
    #               initializing and resource consumption to become stable after it enters the
    #                   <code>InService</code> state. </p>
    #            <p>During an instance refresh, Amazon EC2 Auto Scaling waits for the warm-up period after it replaces an
    #               instance before it moves on to replacing the next instance. Amazon EC2 Auto Scaling also waits for the
    #               warm-up period before aggregating the metrics for new instances with existing instances
    #               in the Amazon CloudWatch metrics that are used for scaling, resulting in more reliable usage
    #               data. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
    #                   the default instance warmup for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <important>
    #               <p>To manage various warm-up settings at the group level, we recommend that you set
    #                   the default instance warmup, <i>even if it is set to 0 seconds</i>. To
    #                   remove a value that you previously set, include the property but specify
    #                       <code>-1</code> for the value. However, we strongly recommend keeping the
    #                   default instance warmup enabled by specifying a value of <code>0</code> or other
    #                   nominal value.</p>
    #            </important>
    #            <p>Default: None </p>
    # @option params [Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   <p>The list of traffic sources to attach to this Auto Scaling group. You can use any of the
    #               following as traffic sources for an Auto Scaling group: Classic Load Balancer, Application Load Balancer, Gateway Load Balancer, Network Load Balancer, and
    #               VPC Lattice.</p>
    # @option params [Types::InstanceMaintenancePolicy] :instance_maintenance_policy
    #   <p>An instance maintenance policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html">Set instance maintenance policy</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Types::AvailabilityZoneDistribution] :availability_zone_distribution
    #   <p>The instance capacity distribution across Availability Zones.</p>
    # @option params [Types::AvailabilityZoneImpairmentPolicy] :availability_zone_impairment_policy
    #   <p>
    #               The policy for Availability Zone impairment.
    #           </p>
    # @option params [Boolean] :skip_zonal_shift_validation
    #   <p>
    #               If you enable zonal shift with cross-zone disabled load balancers, capacity could become imbalanced across Availability Zones. To skip the validation, specify <code>true</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    # @option params [Types::CapacityReservationSpecification] :capacity_reservation_specification
    #   <p>
    #           The capacity reservation specification for the Auto Scaling group. 
    #       </p>
    # @example To create an Auto Scaling group with an attached target group
    #   # This example creates an Auto Scaling group and attaches the specified target group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     launch_template: {
    #       launch_template_name: "my-template-for-auto-scaling",
    #       version: "$Default"
    #     },
    #     min_size: 1,
    #     max_size: 3,
    #     target_group_ar_ns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #     ],
    #     health_check_type: "ELB",
    #     health_check_grace_period: 300,
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE"
    #   }
    #   options = {}
    #   response = client.create_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example To create an Auto Scaling group with a mixed instances policy
    #   # This example creates an Auto Scaling group with a mixed instances policy. It specifies the c5.large, c5a.large, and c6g.large instance types and defines a different launch template for the c6g.large instance type.
    #   params = {
    #     auto_scaling_group_name: "my-asg",
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_name: "my-launch-template-for-x86",
    #           version: "$Default"
    #         },
    #         overrides: [
    #           {
    #             instance_type: "c6g.large",
    #             launch_template_specification: {
    #               launch_template_name: "my-launch-template-for-arm",
    #               version: "$Default"
    #             }
    #           },
    #           {
    #             instance_type: "c5.large"
    #           },
    #           {
    #             instance_type: "c5a.large"
    #           }
    #         ]
    #       },
    #       instances_distribution: {
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 50,
    #         spot_allocation_strategy: "price-capacity-optimized"
    #       }
    #     },
    #     min_size: 1,
    #     max_size: 5,
    #     desired_capacity: 3,
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE"
    #   }
    #   options = {}
    #   response = client.create_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example To create an Auto Scaling group using attribute-based instance type selection
    #   # This example creates an Auto Scaling group using attribute-based instance type selection. It requires the instance types to have a minimum of four vCPUs and a maximum of eight vCPUs, a minimum of 16,384 MiB of memory, and an Intel manufactured CPU.
    #   params = {
    #     auto_scaling_group_name: "my-asg",
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_name: "my-template-for-auto-scaling",
    #           version: "$Default"
    #         },
    #         overrides: [
    #           {
    #             instance_requirements: {
    #               v_cpu_count: {
    #                 min: 4,
    #                 max: 8
    #               },
    #               memory_mi_b: {
    #                 min: 16384
    #               },
    #               cpu_manufacturers: [
    #                 intel
    #               ]
    #             }
    #           }
    #         ]
    #       },
    #       instances_distribution: {
    #         on_demand_percentage_above_base_capacity: 50,
    #         spot_allocation_strategy: "price-capacity-optimized"
    #       }
    #     },
    #     min_size: 0,
    #     max_size: 100,
    #     desired_capacity: 4,
    #     desired_capacity_type: "units",
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE"
    #   }
    #   options = {}
    #   response = client.create_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example To create an Auto Scaling group
    #   # This example creates an Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     launch_template: {
    #       launch_template_name: "my-template-for-auto-scaling",
    #       version: "$Default"
    #     },
    #     min_size: 1,
    #     max_size: 3,
    #     max_instance_lifetime: 2592000,
    #     default_instance_warmup: 120,
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE"
    #   }
    #   options = {}
    #   response = client.create_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     launch_configuration_name: "XmlStringMaxLen255",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255"
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255"
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #             weighted_capacity: "XmlStringMaxLen32",
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255"
    #             },
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services", "apple"]],
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               excluded_instance_types: ["ExcludedInstance"],
    #               instance_generations: ["current" # One of: ["current", "previous"]],
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               max_spot_price_as_percentage_of_optimal_on_demand_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included" # One of: ["included", "excluded", "required"],
    #               burstable_performance: "included" # One of: ["included", "excluded", "required"],
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               local_storage: "included" # One of: ["included", "excluded", "required"],
    #               local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_manufacturers: ["nvidia" # One of: ["nvidia", "amd", "amazon-web-services", "xilinx"]],
    #               accelerator_names: ["a100" # One of: ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]],
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #               baseline_performance_factors: {
    #                 cpu: {
    #                   references: [
    #                     {
    #                       instance_family: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice"
    #       }
    #     },
    #     instance_id: "XmlStringMaxLen19",
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     load_balancer_names: ["XmlStringMaxLen255"],
    #     target_group_ar_ns: ["XmlStringMaxLen511"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen5000",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     capacity_rebalance: false,
    #     lifecycle_hook_specification_list: [
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         lifecycle_transition: "LifecycleTransition", # required
    #         notification_metadata: "AnyPrintableAsciiStringMaxLen4000",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "XmlStringMaxLen255"
    #       }
    #     ],
    #     tags: [
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false
    #       }
    #     ],
    #     service_linked_role_arn: "ResourceName",
    #     max_instance_lifetime: 1,
    #     context: "Context",
    #     desired_capacity_type: "XmlStringMaxLen255",
    #     default_instance_warmup: 1,
    #     traffic_sources: [
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511"
    #       }
    #     ],
    #     instance_maintenance_policy: {
    #       min_healthy_percentage: 1,
    #       max_healthy_percentage: 1
    #     },
    #     availability_zone_distribution: {
    #       capacity_distribution_strategy: "balanced-only" # One of: ["balanced-only", "balanced-best-effort"]
    #     },
    #     availability_zone_impairment_policy: {
    #       zonal_shift_enabled: false,
    #       impaired_zone_health_check_behavior: "ReplaceUnhealthy" # One of: ["ReplaceUnhealthy", "IgnoreUnhealthy"]
    #     },
    #     skip_zonal_shift_validation: false,
    #     capacity_reservation_specification: {
    #       capacity_reservation_preference: "capacity-reservations-only" # One of: ["capacity-reservations-only", "capacity-reservations-first", "none", "default"],
    #       capacity_reservation_target: {
    #         capacity_reservation_ids: ["AsciiStringMaxLen255"],
    #         capacity_reservation_resource_group_arns: ["ResourceName"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_auto_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_auto_scaling_group(params = {}, options = {})
      request = build_request(:create_auto_scaling_group, params)
      request.send_request(options)
    end

    # <p>Creates a launch configuration.</p>
    #          <p>If you exceed your maximum limit of launch configurations, the call fails. To query
    #             this limit, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html">DescribeAccountLimits</a> API. 
    #             For information about updating this limit, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html">Quotas for  
    #             Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html">Launch
    #                 configurations</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <note>
    #             <p>Amazon EC2 Auto Scaling configures instances launched as part of an Auto Scaling group using either a
    #                 launch template or a launch configuration. We strongly recommend that you do not use
    #                 launch configurations. They do not provide full functionality for Amazon EC2 Auto Scaling or Amazon EC2.
    #                 For information about using launch templates, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html">Launch templates</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateLaunchConfigurationInput] params
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration. This name must be unique per Region per
    #               account.</p>
    # @option params [String] :image_id
    #   <p>The ID of the Amazon Machine Image (AMI) that was assigned during registration. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Find a Linux AMI</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #            <p>If you specify <code>InstanceId</code>, an <code>ImageId</code> is not
    #               required.</p>
    # @option params [String] :key_name
    #   <p>The name of the key pair. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 key pairs and Amazon EC2
    #                   instances</a> in the <i>Amazon EC2 User Guide</i>.</p>
    # @option params [Array<String>] :security_groups
    #   <p>A list that contains the security group IDs to assign to the instances in the Auto Scaling
    #               group. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html">Control traffic to your Amazon Web Services
    #                   resources using security groups</a> in the <i>Amazon Virtual Private
    #                   Cloud User Guide</i>.</p>
    # @option params [String] :classic_link_vpc_id
    #   <p>Available for backward compatibility.</p>
    # @option params [Array<String>] :classic_link_vpc_security_groups
    #   <p>Available for backward compatibility.</p>
    # @option params [String] :user_data
    #   <p>The user data to make available to the launched EC2 instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance metadata and user data</a> (Linux) and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html">Instance metadata and
    #                   user data</a> (Windows). If you are using a command line tool, base64-encoding
    #               is performed for you, and you can load the text from a file. Otherwise, you must provide
    #               base64-encoded text. User data is limited to 16 KB.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the instance to use to create the launch configuration. The new launch
    #               configuration derives attributes from the instance, except for the block device
    #               mapping.</p>
    #            <p>To create a launch configuration with a block device mapping or override any other
    #               instance attributes, specify them as part of the same request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html">Create a launch
    #                   configuration</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :instance_type
    #   <p>Specifies the instance type of the EC2 instance. For information about available
    #               instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available
    #                   instance types</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>If you specify <code>InstanceId</code>, an <code>InstanceType</code> is not
    #               required.</p>
    # @option params [String] :kernel_id
    #   <p>The ID of the kernel associated with the AMI.</p>
    #            <note>
    #               <p>We recommend that you use PV-GRUB instead of kernels and RAM disks. For more
    #                   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">User provided
    #                       kernels</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            </note>
    # @option params [String] :ramdisk_id
    #   <p>The ID of the RAM disk to select.</p>
    #            <note>
    #               <p>We recommend that you use PV-GRUB instead of kernels and RAM disks. For more
    #                   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">User provided
    #                       kernels</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            </note>
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   <p>The block device mapping entries that define the block devices to attach to the
    #               instances at launch. By default, the block devices specified in the block device mapping
    #               for the AMI are used. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block device
    #                   mappings</a> in the <i>Amazon EC2 User Guide</i>.</p>
    # @option params [Types::InstanceMonitoring] :instance_monitoring
    #   <p>Controls whether instances in this group are launched with detailed
    #               (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
    #            <p>The default value is <code>true</code> (enabled).</p>
    #            <important>
    #               <p>When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and
    #                   your account is charged a fee. When you disable detailed monitoring, CloudWatch generates
    #                   metrics every 5 minutes. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html">Configure
    #                       monitoring for Auto Scaling instances</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            </important>
    # @option params [String] :spot_price
    #   <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
    #               request. Spot Instances are launched when the price you specify exceeds the current Spot
    #               price. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html">Request Spot
    #                   Instances for fault-tolerant and flexible applications</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid Range: Minimum value of 0.001</p>
    #            <note>
    #               <p>When you change your maximum price by creating a new launch configuration, running
    #                   instances will continue to run as long as the maximum price for those running
    #                   instances is higher than the current Spot price.</p>
    #            </note>
    # @option params [String] :iam_instance_profile
    #   <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
    #               IAM role for the instance. The instance profile contains the IAM role. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM role for applications that run
    #                   on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Boolean] :ebs_optimized
    #   <p>Specifies whether the launch configuration is optimized for EBS I/O
    #               (<code>true</code>) or not (<code>false</code>). The optimization provides dedicated
    #               throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O
    #               performance. This optimization is not available with all instance types. Additional fees
    #               are incurred when you enable EBS optimization for an instance type that is not
    #               EBS-optimized by default. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html">Amazon EBS-optimized instances</a>
    #               in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>The default value is <code>false</code>.</p>
    # @option params [Boolean] :associate_public_ip_address
    #   <p>Specifies whether to assign a public IPv4 address to the group's instances. If the
    #               instance is launched into a default subnet, the default is to assign a public IPv4
    #               address, unless you disabled the option to assign a public IPv4 address on the subnet.
    #               If the instance is launched into a nondefault subnet, the default is not to assign a
    #               public IPv4 address, unless you enabled the option to assign a public IPv4 address on
    #               the subnet.</p>
    #            <p>If you specify <code>true</code>, each instance in the Auto Scaling group receives a unique
    #               public IPv4 address. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Provide network connectivity for
    #                   your Auto Scaling instances using Amazon VPC</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>If you specify this property, you must specify at least one subnet for
    #                   <code>VPCZoneIdentifier</code> when you create your group.</p>
    # @option params [String] :placement_tenancy
    #   <p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An
    #               instance with <code>dedicated</code> tenancy runs on isolated, single-tenant hardware
    #               and can only be launched into a VPC. To launch dedicated instances into a shared tenancy
    #               VPC (a VPC with the instance placement tenancy attribute set to <code>default</code>),
    #               you must set the value of this property to <code>dedicated</code>.</p>
    #            <p>If you specify <code>PlacementTenancy</code>, you must specify at least one subnet for
    #                   <code>VPCZoneIdentifier</code> when you create your group.</p>
    #            <p>Valid values: <code>default</code> | <code>dedicated</code>
    #            </p>
    # @option params [Types::InstanceMetadataOptions] :metadata_options
    #   <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configure the instance metadata options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @example To create a launch configuration
    #   # This example creates a launch configuration.
    #   params = {
    #     launch_configuration_name: "my-launch-config",
    #     image_id: "ami-12345678",
    #     security_groups: [
    #       "sg-eb2af88e"
    #     ],
    #     instance_type: "m3.medium",
    #     iam_instance_profile: "my-iam-role"
    #   }
    #   options = {}
    #   response = client.create_launch_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_name: "XmlStringMaxLen255", # required
    #     image_id: "XmlStringMaxLen255",
    #     key_name: "XmlStringMaxLen255",
    #     security_groups: ["XmlString"],
    #     classic_link_vpc_id: "XmlStringMaxLen255",
    #     classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
    #     user_data: "XmlStringUserData",
    #     instance_id: "XmlStringMaxLen19",
    #     instance_type: "XmlStringMaxLen255",
    #     kernel_id: "XmlStringMaxLen255",
    #     ramdisk_id: "XmlStringMaxLen255",
    #     block_device_mappings: [
    #       {
    #         virtual_name: "XmlStringMaxLen255",
    #         device_name: "XmlStringMaxLen255", # required
    #         ebs: {
    #           snapshot_id: "XmlStringMaxLen255",
    #           volume_size: 1,
    #           volume_type: "BlockDeviceEbsVolumeType",
    #           delete_on_termination: false,
    #           iops: 1,
    #           encrypted: false,
    #           throughput: 1
    #         },
    #         no_device: false
    #       }
    #     ],
    #     instance_monitoring: {
    #       enabled: false
    #     },
    #     spot_price: "SpotPrice",
    #     iam_instance_profile: "XmlStringMaxLen1600",
    #     ebs_optimized: false,
    #     associate_public_ip_address: false,
    #     placement_tenancy: "XmlStringMaxLen64",
    #     metadata_options: {
    #       http_tokens: "optional" # One of: ["optional", "required"],
    #       http_put_response_hop_limit: 1,
    #       http_endpoint: "disabled" # One of: ["disabled", "enabled"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_launch_configuration(params = {}, options = {})
      request = build_request(:create_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates tags for the specified Auto Scaling group.</p>
    #          <p>When you specify a tag with a key that already exists, the operation overwrites the
    #             previous tag definition, and you do not get an error message.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html">Tag Auto Scaling groups and
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::CreateOrUpdateTagsInput] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    # @example To create or update tags for an Auto Scaling group
    #   # This example adds two tags to the specified Auto Scaling group.
    #   params = {
    #     tags: [
    #       {
    #         resource_id: "my-auto-scaling-group",
    #         resource_type: "auto-scaling-group",
    #         key: "Role",
    #         value: "WebServer",
    #         propagate_at_launch: true
    #       },
    #       {
    #         resource_id: "my-auto-scaling-group",
    #         resource_type: "auto-scaling-group",
    #         key: "Dept",
    #         value: "Research",
    #         propagate_at_launch: true
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_or_update_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_or_update_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_or_update_tags(params = {}, options = {})
      request = build_request(:create_or_update_tags, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Auto Scaling group.</p>
    #          <p>If the group has instances or scaling activities in progress, you must specify the
    #             option to force the deletion in order for it to succeed. The force delete operation will
    #             also terminate the EC2 instances. If the group has a warm pool, the force delete option
    #             also deletes the warm pool.</p>
    #          <p>To remove instances from the Auto Scaling group before deleting it, call the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachInstances.html">DetachInstances</a> API with the list of instances and the option to
    #             decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement
    #             instances.</p>
    #          <p>To terminate all instances before deleting the Auto Scaling group, call the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_UpdateAutoScalingGroup.html">UpdateAutoScalingGroup</a> API and set the minimum size and desired capacity
    #             of the Auto Scaling group to
    #             zero.</p>
    #          <p>If the group has scaling policies, deleting the group deletes the policies, the
    #             underlying alarm actions, and any alarm that no longer has an associated action.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-process-shutdown.html">Delete your Auto Scaling
    #                 infrastructure</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DeleteAutoScalingGroupInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :force_delete
    #   <p>Specifies that the group is to be deleted along with all instances associated with the
    #               group, without waiting for all instances to be terminated. This action also deletes any
    #               outstanding lifecycle actions associated with the group.</p>
    # @example To delete an Auto Scaling group
    #   # This example deletes the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.delete_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example To delete an Auto Scaling group and all its instances
    #   # This example deletes the specified Auto Scaling group and all its instances.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     force_delete: true
    #   }
    #   options = {}
    #   response = client.delete_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_auto_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_auto_scaling_group(params = {}, options = {})
      request = build_request(:delete_auto_scaling_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified launch configuration.</p>
    #          <p>The launch configuration must not be attached to an Auto Scaling group. When this call
    #             completes, the launch configuration is no longer available for use.</p>
    # @param [Hash, Types::DeleteLaunchConfigurationInput] params
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    # @example To delete a launch configuration
    #   # This example deletes the specified launch configuration.
    #   params = {
    #     launch_configuration_name: "my-launch-config"
    #   }
    #   options = {}
    #   response = client.delete_launch_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_name: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.delete_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_launch_configuration(params = {}, options = {})
      request = build_request(:delete_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified lifecycle hook.</p>
    #          <p>If there are any outstanding lifecycle actions, they are completed first
    #                 (<code>ABANDON</code> for launching instances, <code>CONTINUE</code> for terminating
    #             instances).</p>
    # @param [Hash, Types::DeleteLifecycleHookInput] params
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @example To delete a lifecycle hook
    #   # This example deletes the specified lifecycle hook.
    #   params = {
    #     lifecycle_hook_name: "my-lifecycle-hook",
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_hook(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_hook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLifecycleHookOutput]
    def delete_lifecycle_hook(params = {}, options = {})
      request = build_request(:delete_lifecycle_hook, params)
      request.send_request(options)
    end

    # <p>Deletes the specified notification.</p>
    # @param [Hash, Types::DeleteNotificationConfigurationInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    # @example To delete an Auto Scaling notification
    #   # This example deletes the specified notification from the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
    #   }
    #   options = {}
    #   response = client.delete_notification_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     topic_arn: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.delete_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_notification_configuration(params = {}, options = {})
      request = build_request(:delete_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified scaling policy.</p>
    #          <p>Deleting either a step scaling policy or a simple scaling policy deletes the
    #             underlying alarm action, but does not delete the alarm, even if it no longer has an
    #             associated action.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html">Delete a scaling
    #                 policy</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DeletePolicyInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :policy_name
    #   <p>The name or Amazon Resource Name (ARN) of the policy.</p>
    # @example To delete an Auto Scaling policy
    #   # This example deletes the specified Auto Scaling policy.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     policy_name: "my-step-scale-out-policy"
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified scheduled action.</p>
    # @param [Hash, Types::DeleteScheduledActionInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :scheduled_action_name
    #   <p>The name of the action to delete.</p>
    # @example To delete a scheduled action from an Auto Scaling group
    #   # This example deletes the specified scheduled action from the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     scheduled_action_name: "my-scheduled-action"
    #   }
    #   options = {}
    #   response = client.delete_scheduled_action(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_scheduled_action(params = {}, options = {})
      request = build_request(:delete_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Deletes the specified tags.</p>
    # @param [Hash, Types::DeleteTagsInput] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    # @example To delete a tag from an Auto Scaling group
    #   # This example deletes the specified tag from the specified Auto Scaling group.
    #   params = {
    #     tags: [
    #       {
    #         resource_id: "my-auto-scaling-group",
    #         resource_type: "auto-scaling-group",
    #         key: "Dept",
    #         value: "Research"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_tags(params = {}, options = {})
      request = build_request(:delete_tags, params)
      request.send_request(options)
    end

    # <p>Deletes the warm pool for the specified Auto Scaling group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DeleteWarmPoolInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :force_delete
    #   <p>Specifies that the warm pool is to be deleted along with all of its associated
    #               instances, without waiting for all instances to be terminated. This parameter also
    #               deletes any outstanding lifecycle actions associated with the warm pool
    #               instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_warm_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWarmPoolOutput]
    def delete_warm_pool(params = {}, options = {})
      request = build_request(:delete_warm_pool, params)
      request.send_request(options)
    end

    # <p>Describes the current Amazon EC2 Auto Scaling resource quotas for your account.</p>
    #          <p>When you establish an Amazon Web Services account, the account has initial quotas on the maximum
    #             number of Auto Scaling groups and launch configurations that you can create in a given Region.
    #             For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html">Quotas for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe your Auto Scaling account limits
    #   # This example describes the Amazon EC2 Auto Scaling service quotas for your account.
    #   params = {}
    #   options = {}
    #   response = client.describe_account_limits(params, options)
    #   response.to_h #=>
    #   {
    #     max_number_of_auto_scaling_groups: 20,
    #     max_number_of_launch_configurations: 100,
    #     number_of_auto_scaling_groups: 3,
    #     number_of_launch_configurations: 5
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     max_number_of_auto_scaling_groups: 1,
    #     max_number_of_launch_configurations: 1,
    #     number_of_auto_scaling_groups: 1,
    #     number_of_launch_configurations: 1
    #   }
    # @return [Types::DescribeAccountLimitsOutput]
    def describe_account_limits(params = {}, options = {})
      request = build_request(:describe_account_limits, params)
      request.send_request(options)
    end

    # <p>Describes the available adjustment types for step scaling and simple scaling
    #             policies.</p>
    #          <p>The following adjustment types are supported:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ChangeInCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ExactCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PercentChangeInCapacity</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe the Amazon EC2 Auto Scaling adjustment types
    #   # This example describes the available adjustment types.
    #   params = {}
    #   options = {}
    #   response = client.describe_adjustment_types(params, options)
    #   response.to_h #=>
    #   {
    #     adjustment_types: [
    #       {
    #         adjustment_type: "ChangeInCapacity"
    #       },
    #       {
    #         adjustment_type: "ExactCapcity"
    #       },
    #       {
    #         adjustment_type: "PercentChangeInCapacity"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_adjustment_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adjustment_types: [
    #       {
    #         adjustment_type: "XmlStringMaxLen255"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAdjustmentTypesOutput]
    def describe_adjustment_types(params = {}, options = {})
      request = build_request(:describe_adjustment_types, params)
      request.send_request(options)
    end

    # <p>Gets information about the Auto Scaling groups in the account and Region.</p>
    #          <p>If you specify Auto Scaling group names, the output includes information for only the
    #             specified Auto Scaling groups. If you specify filters, the output includes information for only
    #             those Auto Scaling groups that meet the filter criteria. If you do not specify group names or
    #             filters, the output includes information for all Auto Scaling groups. </p>
    #          <p>This operation also returns information about instances in Auto Scaling groups. To retrieve
    #             information about the instances in a warm pool, you must call the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeWarmPool.html">DescribeWarmPool</a> API. </p>
    # @param [Hash, Types::DescribeAutoScalingGroupsInput] params
    # @option params [Array<String>] :auto_scaling_group_names
    #   <p>The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can
    #               optionally increase this limit using the <code>MaxRecords</code> property.</p>
    #            <p>If you omit this property, all Auto Scaling groups are described.</p>
    # @option params [Boolean] :include_instances
    #   <p>
    #               Specifies whether to include information about Amazon EC2 instances in the response. When set to <code>true</code> (default), the response includes instance details.
    #           </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>One or more filters to limit the results based on specific tags.
    #               </p>
    # @example To describe an Auto Scaling group
    #   # This example describes the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_names: [
    #       "my-auto-scaling-group"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_auto_scaling_groups(params, options)
    #   response.to_h #=>
    #   {
    #     auto_scaling_groups: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-west-1:123456789012:autoScalingGroup:12345678-1234-1234-1234-123456789012:autoScalingGroupName/my-auto-scaling-group",
    #         launch_configuration_name: "my-launch-config",
    #         min_size: 1,
    #         max_size: 5,
    #         desired_capacity: 2,
    #         default_cooldown: 300,
    #         availability_zones: [
    #           "us-west-2a",
    #           "us-west-2b",
    #           "us-west-2c"
    #         ],
    #         load_balancer_names: [
    #         ],
    #         target_group_ar_ns: [
    #         ],
    #         health_check_type: "EC2",
    #         health_check_grace_period: 300,
    #         instances: [
    #           {
    #             protected_from_scale_in: false,
    #             availability_zone: "us-west-2c",
    #             launch_configuration_name: "my-launch-config",
    #             instance_id: "i-05b4f7d5be44822a6",
    #             instance_type: "t3.micro",
    #             health_status: "Healthy",
    #             lifecycle_state: InService
    #           },
    #           {
    #             protected_from_scale_in: false,
    #             availability_zone: "us-west-2b",
    #             launch_configuration_name: "my-launch-config",
    #             instance_id: "i-0c20ac468fa3049e8",
    #             instance_type: "t3.micro",
    #             health_status: "Healthy",
    #             lifecycle_state: InService
    #           }
    #         ],
    #         created_time: Time.parse("2023-03-09T22:15:11.611Z"),
    #         suspended_processes: [
    #         ],
    #         vpc_zone_identifier: "subnet-5ea0c127,subnet-6194ea3b,subnet-c934b782",
    #         enabled_metrics: [
    #         ],
    #         tags: [
    #         ],
    #         termination_policies: [
    #           "Default"
    #         ],
    #         new_instances_protected_from_scale_in: false,
    #         service_linked_role_arn: "arn:aws:iam::123456789012:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling",
    #         traffic_sources: [
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_names: ["XmlStringMaxLen255"],
    #     include_instances: false,
    #     next_token: "XmlString",
    #     max_records: 1,
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_auto_scaling_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_groups: [ # required
    #       {
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         auto_scaling_group_arn: "ResourceName",
    #         launch_configuration_name: "XmlStringMaxLen255",
    #         launch_template: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255"
    #         },
    #         mixed_instances_policy: {
    #           launch_template: {
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255"
    #             },
    #             overrides: [
    #               {
    #                 instance_type: "XmlStringMaxLen255",
    #                 weighted_capacity: "XmlStringMaxLen32",
    #                 launch_template_specification: {
    #                   launch_template_id: "XmlStringMaxLen255",
    #                   launch_template_name: "LaunchTemplateName",
    #                   version: "XmlStringMaxLen255"
    #                 },
    #                 instance_requirements: {
    #                   v_cpu_count: { # required
    #                     min: 1, # required
    #                     max: 1
    #                   },
    #                   memory_mi_b: { # required
    #                     min: 1, # required
    #                     max: 1
    #                   },
    #                   cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services", "apple"]],
    #                   memory_gi_b_per_v_cpu: {
    #                     min: 1.0,
    #                     max: 1.0
    #                   },
    #                   excluded_instance_types: ["ExcludedInstance"],
    #                   instance_generations: ["current" # One of: ["current", "previous"]],
    #                   spot_max_price_percentage_over_lowest_price: 1,
    #                   max_spot_price_as_percentage_of_optimal_on_demand_price: 1,
    #                   on_demand_max_price_percentage_over_lowest_price: 1,
    #                   bare_metal: "included" # One of: ["included", "excluded", "required"],
    #                   burstable_performance: "included" # One of: ["included", "excluded", "required"],
    #                   require_hibernate_support: false,
    #                   network_interface_count: {
    #                     min: 1,
    #                     max: 1
    #                   },
    #                   local_storage: "included" # One of: ["included", "excluded", "required"],
    #                   local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #                   total_local_storage_gb: {
    #                     min: 1.0,
    #                     max: 1.0
    #                   },
    #                   baseline_ebs_bandwidth_mbps: {
    #                     min: 1,
    #                     max: 1
    #                   },
    #                   accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #                   accelerator_count: {
    #                     min: 1,
    #                     max: 1
    #                   },
    #                   accelerator_manufacturers: ["nvidia" # One of: ["nvidia", "amd", "amazon-web-services", "xilinx"]],
    #                   accelerator_names: ["a100" # One of: ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]],
    #                   accelerator_total_memory_mi_b: {
    #                     min: 1,
    #                     max: 1
    #                   },
    #                   network_bandwidth_gbps: {
    #                     min: 1.0,
    #                     max: 1.0
    #                   },
    #                   allowed_instance_types: ["AllowedInstanceType"],
    #                   baseline_performance_factors: {
    #                     cpu: {
    #                       references: [
    #                         {
    #                           instance_family: "String"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           instances_distribution: {
    #             on_demand_allocation_strategy: "XmlString",
    #             on_demand_base_capacity: 1,
    #             on_demand_percentage_above_base_capacity: 1,
    #             spot_allocation_strategy: "XmlString",
    #             spot_instance_pools: 1,
    #             spot_max_price: "MixedInstanceSpotPrice"
    #           }
    #         },
    #         min_size: 1, # required
    #         max_size: 1, # required
    #         desired_capacity: 1, # required
    #         predicted_capacity: 1,
    #         default_cooldown: 1, # required
    #         availability_zones: ["XmlStringMaxLen255"], # required
    #         load_balancer_names: ["XmlStringMaxLen255"],
    #         target_group_ar_ns: ["XmlStringMaxLen511"],
    #         health_check_type: "XmlStringMaxLen32", # required
    #         health_check_grace_period: 1,
    #         instances: [
    #           {
    #             instance_id: "XmlStringMaxLen19", # required
    #             instance_type: "XmlStringMaxLen255",
    #             availability_zone: "XmlStringMaxLen255", # required
    #             lifecycle_state: "Pending" # One of: ["Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"], # required
    #             health_status: "XmlStringMaxLen32", # required
    #             launch_configuration_name: "XmlStringMaxLen255",
    #             launch_template: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255"
    #             },
    #             protected_from_scale_in: false, # required
    #             weighted_capacity: "XmlStringMaxLen32"
    #           }
    #         ],
    #         created_time: Time.now, # required
    #         suspended_processes: [
    #           {
    #             process_name: "XmlStringMaxLen255",
    #             suspension_reason: "XmlStringMaxLen255"
    #           }
    #         ],
    #         placement_group: "XmlStringMaxLen255",
    #         vpc_zone_identifier: "XmlStringMaxLen5000",
    #         enabled_metrics: [
    #           {
    #             metric: "XmlStringMaxLen255",
    #             granularity: "XmlStringMaxLen255"
    #           }
    #         ],
    #         status: "XmlStringMaxLen255",
    #         tags: [
    #           {
    #             resource_id: "XmlString",
    #             resource_type: "XmlString",
    #             key: "TagKey",
    #             value: "TagValue",
    #             propagate_at_launch: false
    #           }
    #         ],
    #         termination_policies: ["XmlStringMaxLen1600"],
    #         new_instances_protected_from_scale_in: false,
    #         service_linked_role_arn: "ResourceName",
    #         max_instance_lifetime: 1,
    #         capacity_rebalance: false,
    #         warm_pool_configuration: {
    #           max_group_prepared_capacity: 1,
    #           min_size: 1,
    #           pool_state: "Stopped" # One of: ["Stopped", "Running", "Hibernated"],
    #           status: "PendingDelete" # One of: ["PendingDelete"],
    #           instance_reuse_policy: {
    #             reuse_on_scale_in: false
    #           }
    #         },
    #         warm_pool_size: 1,
    #         context: "Context",
    #         desired_capacity_type: "XmlStringMaxLen255",
    #         default_instance_warmup: 1,
    #         traffic_sources: [
    #           {
    #             identifier: "XmlStringMaxLen511", # required
    #             type: "XmlStringMaxLen511"
    #           }
    #         ],
    #         instance_maintenance_policy: {
    #           min_healthy_percentage: 1,
    #           max_healthy_percentage: 1
    #         },
    #         availability_zone_distribution: {
    #           capacity_distribution_strategy: "balanced-only" # One of: ["balanced-only", "balanced-best-effort"]
    #         },
    #         availability_zone_impairment_policy: {
    #           zonal_shift_enabled: false,
    #           impaired_zone_health_check_behavior: "ReplaceUnhealthy" # One of: ["ReplaceUnhealthy", "IgnoreUnhealthy"]
    #         },
    #         capacity_reservation_specification: {
    #           capacity_reservation_preference: "capacity-reservations-only" # One of: ["capacity-reservations-only", "capacity-reservations-first", "none", "default"],
    #           capacity_reservation_target: {
    #             capacity_reservation_ids: ["AsciiStringMaxLen255"],
    #             capacity_reservation_resource_group_arns: ["ResourceName"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeAutoScalingGroupsOutput]
    def describe_auto_scaling_groups(params = {}, options = {})
      request = build_request(:describe_auto_scaling_groups, params)
      request.send_request(options)
    end

    # <p>Gets information about the Auto Scaling instances in the account and Region.</p>
    # @param [Hash, Types::DescribeAutoScalingInstancesInput] params
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. If you omit this property, all Auto Scaling instances are described.
    #               If you specify an ID that does not exist, it is ignored with no error.</p>
    #            <p>Array Members: Maximum number of 50 items.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>50</code>.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @example To describe one or more Auto Scaling instances
    #   # This example describes the specified Auto Scaling instance.
    #   params = {
    #     instance_ids: [
    #       "i-05b4f7d5be44822a6"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_auto_scaling_instances(params, options)
    #   response.to_h #=>
    #   {
    #     auto_scaling_instances: [
    #       {
    #         protected_from_scale_in: false,
    #         availability_zone: "us-west-2c",
    #         launch_configuration_name: "my-launch-config",
    #         instance_id: "i-05b4f7d5be44822a6",
    #         instance_type: "t3.micro",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         health_status: "HEALTHY",
    #         lifecycle_state: "InService"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["XmlStringMaxLen19"],
    #     max_records: 1,
    #     next_token: "XmlString"
    #   }
    #   options = {}
    #   response = client.describe_auto_scaling_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_instances: [
    #       {
    #         instance_id: "XmlStringMaxLen19", # required
    #         instance_type: "XmlStringMaxLen255",
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         availability_zone: "XmlStringMaxLen255", # required
    #         lifecycle_state: "XmlStringMaxLen32", # required
    #         health_status: "XmlStringMaxLen32", # required
    #         launch_configuration_name: "XmlStringMaxLen255",
    #         launch_template: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255"
    #         },
    #         protected_from_scale_in: false, # required
    #         weighted_capacity: "XmlStringMaxLen32"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeAutoScalingInstancesOutput]
    def describe_auto_scaling_instances(params = {}, options = {})
      request = build_request(:describe_auto_scaling_instances, params)
      request.send_request(options)
    end

    # <p>Describes the notification types that are supported by Amazon EC2 Auto Scaling.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe the Auto Scaling notification types
    #   # This example describes the available notification types.
    #   params = {}
    #   options = {}
    #   response = client.describe_auto_scaling_notification_types(params, options)
    #   response.to_h #=>
    #   {
    #     auto_scaling_notification_types: [
    #       "autoscaling:EC2_INSTANCE_LAUNCH",
    #       "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    #       "autoscaling:EC2_INSTANCE_TERMINATE",
    #       "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
    #       "autoscaling:TEST_NOTIFICATION"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_auto_scaling_notification_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_scaling_notification_types: ["XmlStringMaxLen255"]
    #   }
    # @return [Types::DescribeAutoScalingNotificationTypesOutput]
    def describe_auto_scaling_notification_types(params = {}, options = {})
      request = build_request(:describe_auto_scaling_notification_types, params)
      request.send_request(options)
    end

    # <p>Gets information about the instance refreshes for the specified Auto Scaling group from the
    #             previous six weeks.</p>
    #          <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group
    #             after you make configuration changes.</p>
    #          <p>To help you determine the status of an instance refresh, Amazon EC2 Auto Scaling returns information
    #             about the instance refreshes you previously initiated, including their status, start
    #             time, end time, the percentage of the instance refresh that is complete, and the number
    #             of instances remaining to update before the instance refresh is complete. If a rollback
    #             is initiated while an instance refresh is in progress, Amazon EC2 Auto Scaling also returns information
    #             about the rollback of the instance refresh.</p>
    # @param [Hash, Types::DescribeInstanceRefreshesInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :instance_refresh_ids
    #   <p>One or more instance refresh IDs.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     instance_refresh_ids: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_instance_refreshes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_refreshes: [
    #       {
    #         instance_refresh_id: "XmlStringMaxLen255",
    #         auto_scaling_group_name: "XmlStringMaxLen255",
    #         status: "Pending" # One of: ["Pending", "InProgress", "Successful", "Failed", "Cancelling", "Cancelled", "RollbackInProgress", "RollbackFailed", "RollbackSuccessful", "Baking"],
    #         status_reason: "XmlStringMaxLen1023",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         percentage_complete: 1,
    #         instances_to_update: 1,
    #         progress_details: {
    #           live_pool_progress: {
    #             percentage_complete: 1,
    #             instances_to_update: 1
    #           },
    #           warm_pool_progress: {
    #             percentage_complete: 1,
    #             instances_to_update: 1
    #           }
    #         },
    #         preferences: {
    #           min_healthy_percentage: 1,
    #           instance_warmup: 1,
    #           checkpoint_percentages: [1],
    #           checkpoint_delay: 1,
    #           skip_matching: false,
    #           auto_rollback: false,
    #           scale_in_protected_instances: "Refresh" # One of: ["Refresh", "Ignore", "Wait"],
    #           standby_instances: "Terminate" # One of: ["Terminate", "Ignore", "Wait"],
    #           alarm_specification: {
    #             alarms: ["XmlStringMaxLen255"]
    #           },
    #           max_healthy_percentage: 1,
    #           bake_time: 1
    #         },
    #         desired_configuration: {
    #           launch_template: {
    #             launch_template_id: "XmlStringMaxLen255",
    #             launch_template_name: "LaunchTemplateName",
    #             version: "XmlStringMaxLen255"
    #           },
    #           mixed_instances_policy: {
    #             launch_template: {
    #               launch_template_specification: {
    #                 launch_template_id: "XmlStringMaxLen255",
    #                 launch_template_name: "LaunchTemplateName",
    #                 version: "XmlStringMaxLen255"
    #               },
    #               overrides: [
    #                 {
    #                   instance_type: "XmlStringMaxLen255",
    #                   weighted_capacity: "XmlStringMaxLen32",
    #                   launch_template_specification: {
    #                     launch_template_id: "XmlStringMaxLen255",
    #                     launch_template_name: "LaunchTemplateName",
    #                     version: "XmlStringMaxLen255"
    #                   },
    #                   instance_requirements: {
    #                     v_cpu_count: { # required
    #                       min: 1, # required
    #                       max: 1
    #                     },
    #                     memory_mi_b: { # required
    #                       min: 1, # required
    #                       max: 1
    #                     },
    #                     cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services", "apple"]],
    #                     memory_gi_b_per_v_cpu: {
    #                       min: 1.0,
    #                       max: 1.0
    #                     },
    #                     excluded_instance_types: ["ExcludedInstance"],
    #                     instance_generations: ["current" # One of: ["current", "previous"]],
    #                     spot_max_price_percentage_over_lowest_price: 1,
    #                     max_spot_price_as_percentage_of_optimal_on_demand_price: 1,
    #                     on_demand_max_price_percentage_over_lowest_price: 1,
    #                     bare_metal: "included" # One of: ["included", "excluded", "required"],
    #                     burstable_performance: "included" # One of: ["included", "excluded", "required"],
    #                     require_hibernate_support: false,
    #                     network_interface_count: {
    #                       min: 1,
    #                       max: 1
    #                     },
    #                     local_storage: "included" # One of: ["included", "excluded", "required"],
    #                     local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #                     total_local_storage_gb: {
    #                       min: 1.0,
    #                       max: 1.0
    #                     },
    #                     baseline_ebs_bandwidth_mbps: {
    #                       min: 1,
    #                       max: 1
    #                     },
    #                     accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #                     accelerator_count: {
    #                       min: 1,
    #                       max: 1
    #                     },
    #                     accelerator_manufacturers: ["nvidia" # One of: ["nvidia", "amd", "amazon-web-services", "xilinx"]],
    #                     accelerator_names: ["a100" # One of: ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]],
    #                     accelerator_total_memory_mi_b: {
    #                       min: 1,
    #                       max: 1
    #                     },
    #                     network_bandwidth_gbps: {
    #                       min: 1.0,
    #                       max: 1.0
    #                     },
    #                     allowed_instance_types: ["AllowedInstanceType"],
    #                     baseline_performance_factors: {
    #                       cpu: {
    #                         references: [
    #                           {
    #                             instance_family: "String"
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             instances_distribution: {
    #               on_demand_allocation_strategy: "XmlString",
    #               on_demand_base_capacity: 1,
    #               on_demand_percentage_above_base_capacity: 1,
    #               spot_allocation_strategy: "XmlString",
    #               spot_instance_pools: 1,
    #               spot_max_price: "MixedInstanceSpotPrice"
    #             }
    #           }
    #         },
    #         rollback_details: {
    #           rollback_reason: "XmlStringMaxLen1023",
    #           rollback_start_time: Time.now,
    #           percentage_complete_on_rollback: 1,
    #           instances_to_update_on_rollback: 1,
    #           progress_details_on_rollback: {
    #             live_pool_progress: {
    #               percentage_complete: 1,
    #               instances_to_update: 1
    #             },
    #             warm_pool_progress: {
    #               percentage_complete: 1,
    #               instances_to_update: 1
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeInstanceRefreshesOutput]
    def describe_instance_refreshes(params = {}, options = {})
      request = build_request(:describe_instance_refreshes, params)
      request.send_request(options)
    end

    # <p>Gets information about the launch configurations in the account and Region.</p>
    # @param [Hash, Types::DescribeLaunchConfigurationsInput] params
    # @option params [Array<String>] :launch_configuration_names
    #   <p>The launch configuration names. If you omit this property, all launch configurations
    #               are described.</p>
    #            <p>Array Members: Maximum number of 50 items.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @example To describe Auto Scaling launch configurations
    #   # This example describes the specified launch configuration.
    #   params = {
    #     launch_configuration_names: [
    #       "my-launch-config"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_launch_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     launch_configurations: [
    #       {
    #         ebs_optimized: false,
    #         launch_configuration_arn: "arn:aws:autoscaling:us-west-2:123456789012:launchConfiguration:98d3b196-4cf9-4e88-8ca1-8547c24ced8b:launchConfigurationName/my-launch-config",
    #         instance_monitoring: {
    #           enabled: true
    #         },
    #         image_id: "ami-043a5034",
    #         created_time: Time.parse("2014-05-07T17:39:28.599Z"),
    #         block_device_mappings: [
    #         ],
    #         security_groups: [
    #           "sg-67ef0308"
    #         ],
    #         launch_configuration_name: "my-launch-config",
    #         instance_type: "t1.micro",
    #         associate_public_ip_address: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_names: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_launch_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch_configurations: [ # required
    #       {
    #         launch_configuration_name: "XmlStringMaxLen255", # required
    #         launch_configuration_arn: "ResourceName",
    #         image_id: "XmlStringMaxLen255", # required
    #         key_name: "XmlStringMaxLen255",
    #         security_groups: ["XmlString"],
    #         classic_link_vpc_id: "XmlStringMaxLen255",
    #         classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
    #         user_data: "XmlStringUserData",
    #         instance_type: "XmlStringMaxLen255", # required
    #         kernel_id: "XmlStringMaxLen255",
    #         ramdisk_id: "XmlStringMaxLen255",
    #         block_device_mappings: [
    #           {
    #             virtual_name: "XmlStringMaxLen255",
    #             device_name: "XmlStringMaxLen255", # required
    #             ebs: {
    #               snapshot_id: "XmlStringMaxLen255",
    #               volume_size: 1,
    #               volume_type: "BlockDeviceEbsVolumeType",
    #               delete_on_termination: false,
    #               iops: 1,
    #               encrypted: false,
    #               throughput: 1
    #             },
    #             no_device: false
    #           }
    #         ],
    #         instance_monitoring: {
    #           enabled: false
    #         },
    #         spot_price: "SpotPrice",
    #         iam_instance_profile: "XmlStringMaxLen1600",
    #         created_time: Time.now, # required
    #         ebs_optimized: false,
    #         associate_public_ip_address: false,
    #         placement_tenancy: "XmlStringMaxLen64",
    #         metadata_options: {
    #           http_tokens: "optional" # One of: ["optional", "required"],
    #           http_put_response_hop_limit: 1,
    #           http_endpoint: "disabled" # One of: ["disabled", "enabled"]
    #         }
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeLaunchConfigurationsOutput]
    def describe_launch_configurations(params = {}, options = {})
      request = build_request(:describe_launch_configurations, params)
      request.send_request(options)
    end

    # <p>Describes the available types of lifecycle hooks.</p>
    #          <p>The following hook types are supported:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>autoscaling:EC2_INSTANCE_LAUNCHING</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>autoscaling:EC2_INSTANCE_TERMINATING</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe the available types of lifecycle hooks
    #   # This example describes the available lifecycle hook types.
    #   params = {}
    #   options = {}
    #   response = client.describe_lifecycle_hook_types(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_hook_types: [
    #       "autoscaling:EC2_INSTANCE_LAUNCHING",
    #       "autoscaling:EC2_INSTANCE_TERMINATING"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_lifecycle_hook_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_hook_types: ["XmlStringMaxLen255"]
    #   }
    # @return [Types::DescribeLifecycleHookTypesOutput]
    def describe_lifecycle_hook_types(params = {}, options = {})
      request = build_request(:describe_lifecycle_hook_types, params)
      request.send_request(options)
    end

    # <p>Gets information about the lifecycle hooks for the specified Auto Scaling group.</p>
    # @param [Hash, Types::DescribeLifecycleHooksInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :lifecycle_hook_names
    #   <p>The names of one or more lifecycle hooks. If you omit this property, all lifecycle
    #               hooks are described.</p>
    # @example To describe your lifecycle hooks
    #   # This example describes the lifecycle hooks for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_lifecycle_hooks(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_hooks: [
    #       {
    #         global_timeout: 172800,
    #         heartbeat_timeout: 3600,
    #         role_arn: "arn:aws:iam::123456789012:role/my-auto-scaling-role",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         lifecycle_hook_name: "my-lifecycle-hook",
    #         default_result: "ABANDON",
    #         notification_target_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic",
    #         lifecycle_transition: "autoscaling:EC2_INSTANCE_LAUNCHING"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     lifecycle_hook_names: ["AsciiStringMaxLen255"]
    #   }
    #   options = {}
    #   response = client.describe_lifecycle_hooks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_hooks: [
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255",
    #         auto_scaling_group_name: "XmlStringMaxLen255",
    #         lifecycle_transition: "LifecycleTransition",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "XmlStringMaxLen255",
    #         notification_metadata: "AnyPrintableAsciiStringMaxLen4000",
    #         heartbeat_timeout: 1,
    #         global_timeout: 1,
    #         default_result: "LifecycleActionResult"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLifecycleHooksOutput]
    def describe_lifecycle_hooks(params = {}, options = {})
      request = build_request(:describe_lifecycle_hooks, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This API operation is superseded by <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html">DescribeTrafficSources</a>,
    #                 which can describe multiple traffic sources types. We recommend using
    #                     <code>DetachTrafficSources</code> to simplify how you manage traffic sources.
    #                 However, we continue to support <code>DescribeLoadBalancerTargetGroups</code>. You
    #                 can use both the original <code>DescribeLoadBalancerTargetGroups</code> API
    #                 operation and <code>DescribeTrafficSources</code> on the same Auto Scaling group.</p>
    #          </note>
    #          <p>Gets information about the Elastic Load Balancing target groups for the specified Auto Scaling group.</p>
    #          <p>To determine the attachment status of the target group, use the <code>State</code>
    #             element in the response. When you attach a target group to an Auto Scaling group, the initial
    #                 <code>State</code> value is <code>Adding</code>. The state transitions to
    #                 <code>Added</code> after all Auto Scaling instances are registered with the target group. If
    #             Elastic Load Balancing health checks are enabled for the Auto Scaling group, the state transitions to
    #                 <code>InService</code> after at least one Auto Scaling instance passes the health check.
    #             When the target group is in the <code>InService</code> state, Amazon EC2 Auto Scaling can terminate and
    #             replace any instances that are reported as unhealthy. If no registered instances pass
    #             the health checks, the target group doesn't enter the <code>InService</code> state. </p>
    #          <p>Target groups also have an <code>InService</code> state if you attach them in the
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html">CreateAutoScalingGroup</a> API call. If your target group state is
    #                 <code>InService</code>, but it is not working properly, check the scaling activities
    #             by calling <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html">DescribeScalingActivities</a> and take any corrective actions
    #             necessary.</p>
    #          <p>For help with failed health checks, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html">Troubleshooting Amazon EC2 Auto Scaling:
    #                 Health checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. For more
    #             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use Elastic Load Balancing to
    #                 distribute traffic across the instances in your Auto Scaling group</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #          <note>
    #             <p>You can use this operation to describe target groups that were attached by using
    #                 <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachLoadBalancerTargetGroups.html">AttachLoadBalancerTargetGroups</a>, but not for target groups that
    #                 were attached by using <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html">AttachTrafficSources</a>.</p>
    #          </note>
    # @param [Hash, Types::DescribeLoadBalancerTargetGroupsRequest] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    # @example To describe the target groups for an Auto Scaling group
    #   # This example describes the target groups attached to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_target_groups(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancer_target_groups: [
    #       {
    #         load_balancer_target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    #         state: "Added"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_load_balancer_target_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancer_target_groups: [
    #       {
    #         load_balancer_target_group_arn: "XmlStringMaxLen511",
    #         state: "XmlStringMaxLen255"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeLoadBalancerTargetGroupsResponse]
    def describe_load_balancer_target_groups(params = {}, options = {})
      request = build_request(:describe_load_balancer_target_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This API operation is superseded by <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html">DescribeTrafficSources</a>,
    #                 which can describe multiple traffic sources types. We recommend using
    #                     <code>DescribeTrafficSources</code> to simplify how you manage traffic sources.
    #                 However, we continue to support <code>DescribeLoadBalancers</code>. You can use both
    #                 the original <code>DescribeLoadBalancers</code> API operation and
    #                     <code>DescribeTrafficSources</code> on the same Auto Scaling group.</p>
    #          </note>
    #          <p>Gets information about the load balancers for the specified Auto Scaling group.</p>
    #          <p>This operation describes only Classic Load Balancers. If you have Application Load Balancers, Network Load Balancers, or Gateway Load Balancers, use the
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html">DescribeLoadBalancerTargetGroups</a> API instead.</p>
    #          <p>To determine the attachment status of the load balancer, use the <code>State</code>
    #             element in the response. When you attach a load balancer to an Auto Scaling group, the initial
    #                 <code>State</code> value is <code>Adding</code>. The state transitions to
    #                 <code>Added</code> after all Auto Scaling instances are registered with the load balancer.
    #             If Elastic Load Balancing health checks are enabled for the Auto Scaling group, the state transitions to
    #                 <code>InService</code> after at least one Auto Scaling instance passes the health check.
    #             When the load balancer is in the <code>InService</code> state, Amazon EC2 Auto Scaling can terminate
    #             and replace any instances that are reported as unhealthy. If no registered instances
    #             pass the health checks, the load balancer doesn't enter the <code>InService</code>
    #             state. </p>
    #          <p>Load balancers also have an <code>InService</code> state if you attach them in the
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html">CreateAutoScalingGroup</a> API call. If your load balancer state is
    #                 <code>InService</code>, but it is not working properly, check the scaling activities
    #             by calling <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html">DescribeScalingActivities</a> and take any corrective actions
    #             necessary.</p>
    #          <p>For help with failed health checks, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html">Troubleshooting Amazon EC2 Auto Scaling:
    #                 Health checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. For more
    #             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use Elastic Load Balancing to
    #                 distribute traffic across the instances in your Auto Scaling group</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    # @param [Hash, Types::DescribeLoadBalancersRequest] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    # @example To describe the load balancers for an Auto Scaling group
    #   # This example describes the load balancers attached to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_load_balancers(params, options)
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         state: "Added",
    #         load_balancer_name: "my-load-balancer"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         load_balancer_name: "XmlStringMaxLen255",
    #         state: "XmlStringMaxLen255"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeLoadBalancersResponse]
    def describe_load_balancers(params = {}, options = {})
      request = build_request(:describe_load_balancers, params)
      request.send_request(options)
    end

    # <p>Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe the Auto Scaling metric collection types
    #   # This example describes the available metric collection types.
    #   params = {}
    #   options = {}
    #   response = client.describe_metric_collection_types(params, options)
    #   response.to_h #=>
    #   {
    #     metrics: [
    #       {
    #         metric: "GroupMinSize"
    #       },
    #       {
    #         metric: "GroupMaxSize"
    #       },
    #       {
    #         metric: "GroupDesiredCapacity"
    #       },
    #       {
    #         metric: "GroupInServiceInstances"
    #       },
    #       {
    #         metric: "GroupPendingInstances"
    #       },
    #       {
    #         metric: "GroupTerminatingInstances"
    #       },
    #       {
    #         metric: "GroupStandbyInstances"
    #       },
    #       {
    #         metric: "GroupTotalInstances"
    #       }
    #     ],
    #     granularities: [
    #       {
    #         granularity: "1Minute"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_metric_collection_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics: [
    #       {
    #         metric: "XmlStringMaxLen255"
    #       }
    #     ],
    #     granularities: [
    #       {
    #         granularity: "XmlStringMaxLen255"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetricCollectionTypesOutput]
    def describe_metric_collection_types(params = {}, options = {})
      request = build_request(:describe_metric_collection_types, params)
      request.send_request(options)
    end

    # <p>Gets information about the Amazon SNS notifications that are configured for one or more
    #             Auto Scaling groups.</p>
    # @param [Hash, Types::DescribeNotificationConfigurationsInput] params
    # @option params [Array<String>] :auto_scaling_group_names
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @example To describe Auto Scaling notification configurations
    #   # This example describes the notification configurations for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_names: [
    #       "my-auto-scaling-group"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_notification_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     notification_configurations: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         notification_type: "autoscaling:TEST_NOTIFICATION",
    #         topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic-2"
    #       },
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         notification_type: "autoscaling:TEST_NOTIFICATION",
    #         topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_names: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_notification_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_configurations: [ # required
    #       {
    #         auto_scaling_group_name: "XmlStringMaxLen255",
    #         topic_arn: "XmlStringMaxLen255",
    #         notification_type: "XmlStringMaxLen255"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeNotificationConfigurationsOutput]
    def describe_notification_configurations(params = {}, options = {})
      request = build_request(:describe_notification_configurations, params)
      request.send_request(options)
    end

    # <p>Gets information about the scaling policies in the account and Region.</p>
    # @param [Hash, Types::DescribePoliciesInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :policy_names
    #   <p>The names of one or more policies. If you omit this property, all policies are
    #               described. If a group name is provided, the results are limited to that group. If you
    #               specify an unknown policy name, it is ignored with no error.</p>
    #            <p>Array Members: Maximum number of 50 items.</p>
    # @option params [Array<String>] :policy_types
    #   <p>One or more policy types. The valid values are <code>SimpleScaling</code>,
    #                   <code>StepScaling</code>, <code>TargetTrackingScaling</code>, and
    #                   <code>PredictiveScaling</code>.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to be returned with each call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @example To describe scaling policies
    #   # This example describes the policies for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_policies(params, options)
    #   response.to_h #=>
    #   {
    #     scaling_policies: [
    #       {
    #         policy_name: "ScaleIn",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn",
    #         adjustment_type: "ChangeInCapacity",
    #         alarms: [
    #         ],
    #         scaling_adjustment: -1
    #       },
    #       {
    #         policy_name: "ScalePercentChange",
    #         min_adjustment_step: 2,
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2b435159-cf77-4e89-8c0e-d63b497baad7:autoScalingGroupName/my-auto-scaling-group:policyName/ScalePercentChange",
    #         cooldown: 60,
    #         adjustment_type: "PercentChangeInCapacity",
    #         alarms: [
    #         ],
    #         scaling_adjustment: 25
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_policies: [
    #       {
    #         auto_scaling_group_name: "XmlStringMaxLen255",
    #         policy_name: "XmlStringMaxLen255",
    #         policy_arn: "ResourceName",
    #         policy_type: "XmlStringMaxLen64",
    #         adjustment_type: "XmlStringMaxLen255",
    #         min_adjustment_step: 1,
    #         min_adjustment_magnitude: 1,
    #         scaling_adjustment: 1,
    #         cooldown: 1,
    #         step_adjustments: [
    #           {
    #             metric_interval_lower_bound: 1.0,
    #             metric_interval_upper_bound: 1.0,
    #             scaling_adjustment: 1, # required
    #           }
    #         ],
    #         metric_aggregation_type: "XmlStringMaxLen32",
    #         estimated_instance_warmup: 1,
    #         alarms: [
    #           {
    #             alarm_name: "XmlStringMaxLen255",
    #             alarm_arn: "ResourceName"
    #           }
    #         ],
    #         target_tracking_configuration: {
    #           predefined_metric_specification: {
    #             predefined_metric_type: "ASGAverageCPUUtilization" # One of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           customized_metric_specification: {
    #             metric_name: "MetricName",
    #             namespace: "MetricNamespace",
    #             dimensions: [
    #               {
    #                 name: "MetricDimensionName", # required
    #                 value: "MetricDimensionValue", # required
    #               }
    #             ],
    #             statistic: "Average" # One of: ["Average", "Minimum", "Maximum", "SampleCount", "Sum"],
    #             unit: "MetricUnit",
    #             period: 1,
    #             metrics: [
    #               {
    #                 id: "XmlStringMaxLen64", # required
    #                 expression: "XmlStringMaxLen2047",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                   period: 1
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 period: 1,
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           target_value: 1.0, # required
    #           disable_scale_in: false
    #         },
    #         enabled: false,
    #         predictive_scaling_configuration: {
    #           metric_specifications: [ # required
    #             {
    #               target_value: 1.0, # required
    #               predefined_metric_pair_specification: {
    #                 predefined_metric_type: "ASGCPUUtilization" # One of: ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"], # required
    #                 resource_label: "XmlStringMaxLen1023"
    #               },
    #               predefined_scaling_metric_specification: {
    #                 predefined_metric_type: "ASGAverageCPUUtilization" # One of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"], # required
    #                 resource_label: "XmlStringMaxLen1023"
    #               },
    #               predefined_load_metric_specification: {
    #                 predefined_metric_type: "ASGTotalCPUUtilization" # One of: ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"], # required
    #                 resource_label: "XmlStringMaxLen1023"
    #               },
    #               customized_scaling_metric_specification: {
    #                 metric_data_queries: [ # required
    #                   {
    #                     id: "XmlStringMaxLen255", # required
    #                     expression: "XmlStringMaxLen1023",
    #                     metric_stat: {
    #                       metric: { # required
    #                         namespace: "MetricNamespace", # required
    #                         metric_name: "MetricName", # required
    #                         dimensions: [
    #                           {
    #                             name: "MetricDimensionName", # required
    #                             value: "MetricDimensionValue", # required
    #                           }
    #                         ]
    #                       },
    #                       stat: "XmlStringMetricStat", # required
    #                       unit: "MetricUnit"
    #                     },
    #                     label: "XmlStringMetricLabel",
    #                     return_data: false
    #                   }
    #                 ]
    #               },
    #               customized_load_metric_specification: {
    #                 metric_data_queries: [ # required
    #                   {
    #                     id: "XmlStringMaxLen255", # required
    #                     expression: "XmlStringMaxLen1023",
    #                     metric_stat: {
    #                       metric: { # required
    #                         namespace: "MetricNamespace", # required
    #                         metric_name: "MetricName", # required
    #                         dimensions: [
    #                           {
    #                             name: "MetricDimensionName", # required
    #                             value: "MetricDimensionValue", # required
    #                           }
    #                         ]
    #                       },
    #                       stat: "XmlStringMetricStat", # required
    #                       unit: "MetricUnit"
    #                     },
    #                     label: "XmlStringMetricLabel",
    #                     return_data: false
    #                   }
    #                 ]
    #               },
    #               customized_capacity_metric_specification: {
    #                 metric_data_queries: [ # required
    #                   {
    #                     id: "XmlStringMaxLen255", # required
    #                     expression: "XmlStringMaxLen1023",
    #                     metric_stat: {
    #                       metric: { # required
    #                         namespace: "MetricNamespace", # required
    #                         metric_name: "MetricName", # required
    #                         dimensions: [
    #                           {
    #                             name: "MetricDimensionName", # required
    #                             value: "MetricDimensionValue", # required
    #                           }
    #                         ]
    #                       },
    #                       stat: "XmlStringMetricStat", # required
    #                       unit: "MetricUnit"
    #                     },
    #                     label: "XmlStringMetricLabel",
    #                     return_data: false
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           mode: "ForecastAndScale" # One of: ["ForecastAndScale", "ForecastOnly"],
    #           scheduling_buffer_time: 1,
    #           max_capacity_breach_behavior: "HonorMaxCapacity" # One of: ["HonorMaxCapacity", "IncreaseMaxCapacity"],
    #           max_capacity_buffer: 1
    #         }
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribePoliciesOutput]
    def describe_policies(params = {}, options = {})
      request = build_request(:describe_policies, params)
      request.send_request(options)
    end

    # <p>Gets information about the scaling activities in the account and Region.</p>
    #          <p>When scaling events occur, you see a record of the scaling activity in the scaling
    #             activities. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html">Verify a scaling
    #                 activity for an Auto Scaling group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>If the scaling event succeeds, the value of the <code>StatusCode</code> element in the
    #             response is <code>Successful</code>. If an attempt to launch instances failed, the
    #                 <code>StatusCode</code> value is <code>Failed</code> or <code>Cancelled</code> and
    #             the <code>StatusMessage</code> element in the response indicates the cause of the
    #             failure. For help interpreting the <code>StatusMessage</code>, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html">Troubleshooting Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    # @param [Hash, Types::DescribeScalingActivitiesInput] params
    # @option params [Array<String>] :activity_ids
    #   <p>The activity IDs of the desired scaling activities. If you omit this property, all
    #               activities for the past six weeks are described. If unknown activities are requested,
    #               they are ignored with no error. If you specify an Auto Scaling group, the results are limited to
    #               that group.</p>
    #            <p>Array Members: Maximum number of 50 IDs.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :include_deleted_groups
    #   <p>Indicates whether to include scaling activity from deleted Auto Scaling groups.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @example To describe the scaling activities for an Auto Scaling group
    #   # This example describes the scaling activities for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_scaling_activities(params, options)
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         description: "Launching a new EC2 instance: i-4ba0837f",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         activity_id: "f9f2d65b-f1f2-43e7-b46d-d86756459699",
    #         details: "details",
    #         start_time: Time.parse("2013-08-19T20:53:29.930Z"),
    #         progress: 100,
    #         end_time: Time.parse("2013-08-19T20:54:02Z"),
    #         cause: "At 2013-08-19T20:53:25Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2013-08-19T20:53:29Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1.",
    #         status_code: Successful,
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:123456789012:autoScalingGroup:12345678-1234-1234-1234-123456789012:autoScalingGroupName/my-auto-scaling-group"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     activity_ids: ["XmlString"],
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     include_deleted_groups: false,
    #     max_records: 1,
    #     next_token: "XmlString"
    #   }
    #   options = {}
    #   response = client.describe_scaling_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities: [ # required
    #       {
    #         activity_id: "XmlString", # required
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         description: "XmlString",
    #         cause: "XmlStringMaxLen1023", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         status_code: "PendingSpotBidPlacement" # One of: ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"], # required
    #         status_message: "XmlStringMaxLen255",
    #         progress: 1,
    #         details: "XmlString",
    #         auto_scaling_group_state: "AutoScalingGroupState",
    #         auto_scaling_group_arn: "ResourceName"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeScalingActivitiesOutput]
    def describe_scaling_activities(params = {}, options = {})
      request = build_request(:describe_scaling_activities, params)
      request.send_request(options)
    end

    # <p>Describes the scaling process types for use with the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_ResumeProcesses.html">ResumeProcesses</a> 
    #             and <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendProcesses.html">SuspendProcesses</a> APIs.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe the Auto Scaling process types
    #   # This example describes the Auto Scaling process types.
    #   params = {}
    #   options = {}
    #   response = client.describe_scaling_process_types(params, options)
    #   response.to_h #=>
    #   {
    #     processes: [
    #       {
    #         process_name: "AZRebalance"
    #       },
    #       {
    #         process_name: "AddToLoadBalancer"
    #       },
    #       {
    #         process_name: "AlarmNotification"
    #       },
    #       {
    #         process_name: "HealthCheck"
    #       },
    #       {
    #         process_name: "Launch"
    #       },
    #       {
    #         process_name: "ReplaceUnhealthy"
    #       },
    #       {
    #         process_name: "ScheduledActions"
    #       },
    #       {
    #         process_name: "Terminate"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_scaling_process_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processes: [
    #       {
    #         process_name: "XmlStringMaxLen255", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeScalingProcessTypesOutput]
    def describe_scaling_process_types(params = {}, options = {})
      request = build_request(:describe_scaling_process_types, params)
      request.send_request(options)
    end

    # <p>Gets information about the scheduled actions that haven't run or that have not reached
    #             their end time.</p>
    #          <p>To describe the scaling activities for scheduled actions that have already run, call
    #             the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html">DescribeScalingActivities</a> API.</p>
    # @param [Hash, Types::DescribeScheduledActionsInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :scheduled_action_names
    #   <p>The names of one or more scheduled actions. If you omit this property, all scheduled
    #               actions are described. If you specify an unknown scheduled action, it is ignored with no
    #               error.</p>
    #            <p>Array Members: Maximum number of 50 actions.</p>
    # @option params [Time] :start_time
    #   <p>The earliest scheduled start time to return. If scheduled action names are provided,
    #               this property is ignored.</p>
    # @option params [Time] :end_time
    #   <p>The latest scheduled start time to return. If scheduled action names are provided,
    #               this property is ignored.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @example To describe scheduled actions
    #   # This example describes the scheduled actions for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_scheduled_actions(params, options)
    #   response.to_h #=>
    #   {
    #     scheduled_update_group_actions: [
    #       {
    #         min_size: 2,
    #         desired_capacity: 4,
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         max_size: 6,
    #         recurrence: "30 0 1 12 0",
    #         scheduled_action_arn: "arn:aws:autoscaling:us-west-2:123456789012:scheduledUpdateGroupAction:8e86b655-b2e6-4410-8f29-b4f094d6871c:autoScalingGroupName/my-auto-scaling-group:scheduledActionName/my-scheduled-action",
    #         scheduled_action_name: "my-scheduled-action",
    #         start_time: Time.parse("2016-12-01T00:30:00Z"),
    #         time: Time.parse("2016-12-01T00:30:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     scheduled_action_names: ["XmlStringMaxLen255"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_scheduled_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_update_group_actions: [
    #       {
    #         auto_scaling_group_name: "XmlStringMaxLen255",
    #         scheduled_action_name: "XmlStringMaxLen255",
    #         scheduled_action_arn: "ResourceName",
    #         time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: "XmlStringMaxLen255",
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #         time_zone: "XmlStringMaxLen255"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeScheduledActionsOutput]
    def describe_scheduled_actions(params = {}, options = {})
      request = build_request(:describe_scheduled_actions, params)
      request.send_request(options)
    end

    # <p>Describes the specified tags.</p>
    #          <p>You can use filters to limit the results. For example, you can query for the tags for
    #             a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at
    #             least one of the specified values for it to be included in the results.</p>
    #          <p>You can also specify multiple filters. The result includes information for a
    #             particular tag only if it matches all the filters. If there's no match, no special
    #             message is returned.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html">Tag Auto Scaling groups and
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DescribeTagsInput] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>One or more filters to scope the tags to return. The maximum number of filters per
    #               filter type (for example, <code>auto-scaling-group</code>) is 1000.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    # @example To describe tags
    #   # This example describes the tags for the specified Auto Scaling group.
    #   params = {
    #     filters: [
    #       {
    #         values: [
    #           "my-auto-scaling-group"
    #         ],
    #         name: "auto-scaling-group"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         resource_type: "auto-scaling-group",
    #         resource_id: "my-auto-scaling-group",
    #         propagate_at_launch: true,
    #         value: "Research",
    #         key: "Dept"
    #       },
    #       {
    #         resource_type: "auto-scaling-group",
    #         resource_id: "my-auto-scaling-group",
    #         propagate_at_launch: true,
    #         value: "WebServer",
    #         key: "Role"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"]
    #       }
    #     ],
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey",
    #         value: "TagValue",
    #         propagate_at_launch: false
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeTagsOutput]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Describes the termination policies supported by Amazon EC2 Auto Scaling.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html">Configure
    #                 termination policies for Amazon EC2 Auto Scaling</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To describe termination policy types
    #   # This example describes the available termination policy types.
    #   params = {}
    #   options = {}
    #   response = client.describe_termination_policy_types(params, options)
    #   response.to_h #=>
    #   {
    #     termination_policy_types: [
    #       "ClosestToNextInstanceHour",
    #       "Default",
    #       "NewestInstance",
    #       "OldestInstance",
    #       "OldestLaunchConfiguration"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_termination_policy_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     termination_policy_types: ["XmlStringMaxLen1600"]
    #   }
    # @return [Types::DescribeTerminationPolicyTypesOutput]
    def describe_termination_policy_types(params = {}, options = {})
      request = build_request(:describe_termination_policy_types, params)
      request.send_request(options)
    end

    # <p>Gets information about the traffic sources for the specified Auto Scaling group.</p>
    #          <p>You can optionally provide a traffic source type. If you provide a traffic source
    #             type, then the results only include that traffic source type.</p>
    #          <p>If you do not provide a traffic source type, then the results include all the traffic
    #             sources for the specified Auto Scaling group. </p>
    # @param [Hash, Types::DescribeTrafficSourcesRequest] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :traffic_source_type
    #   <p>The traffic source type that you want to describe.</p>
    #            <p>The following lists the valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>elb</code> if the traffic source is a Classic Load Balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elbv2</code> if the traffic source is a Application Load Balancer, Gateway Load Balancer, or Network Load Balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpc-lattice</code> if the traffic source is VPC Lattice.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The maximum value is
    #                   <code>50</code>.</p>
    # @example To describe the target groups for an Auto Scaling group
    #   # This example describes the target groups attached to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.describe_traffic_sources(params, options)
    #   response.to_h #=>
    #   {
    #     traffic_sources: [
    #       {
    #         identifier: "arn:aws:vpc-lattice:us-west-2:123456789012:targetgroup/tg-0e2f2665eEXAMPLE",
    #         state: "InService",
    #         type: "vpc-lattice"
    #       }
    #     ],
    #     next_token: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     traffic_source_type: "XmlStringMaxLen255",
    #     next_token: "XmlString",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_traffic_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_sources: [
    #       {
    #         traffic_source: "XmlStringMaxLen511",
    #         state: "XmlStringMaxLen255",
    #         identifier: "XmlStringMaxLen511",
    #         type: "XmlStringMaxLen511"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeTrafficSourcesResponse]
    def describe_traffic_sources(params = {}, options = {})
      request = build_request(:describe_traffic_sources, params)
      request.send_request(options)
    end

    # <p>Gets information about a warm pool and its instances.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DescribeWarmPoolInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of instances to return with this call. The maximum value is
    #                   <code>50</code>.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of instances to return. (You received this token from a
    #               previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     max_records: 1,
    #     next_token: "XmlString"
    #   }
    #   options = {}
    #   response = client.describe_warm_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     warm_pool_configuration: {
    #       max_group_prepared_capacity: 1,
    #       min_size: 1,
    #       pool_state: "Stopped" # One of: ["Stopped", "Running", "Hibernated"],
    #       status: "PendingDelete" # One of: ["PendingDelete"],
    #       instance_reuse_policy: {
    #         reuse_on_scale_in: false
    #       }
    #     },
    #     instances: [
    #       {
    #         instance_id: "XmlStringMaxLen19", # required
    #         instance_type: "XmlStringMaxLen255",
    #         availability_zone: "XmlStringMaxLen255", # required
    #         lifecycle_state: "Pending" # One of: ["Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"], # required
    #         health_status: "XmlStringMaxLen32", # required
    #         launch_configuration_name: "XmlStringMaxLen255",
    #         launch_template: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255"
    #         },
    #         protected_from_scale_in: false, # required
    #         weighted_capacity: "XmlStringMaxLen32"
    #       }
    #     ],
    #     next_token: "XmlString"
    #   }
    # @return [Types::DescribeWarmPoolOutput]
    def describe_warm_pool(params = {}, options = {})
      request = build_request(:describe_warm_pool, params)
      request.send_request(options)
    end

    # <p>Removes one or more instances from the specified Auto Scaling group.</p>
    #          <p>After the instances are detached, you can manage them independent of the Auto Scaling
    #             group.</p>
    #          <p>If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches
    #             instances to replace the ones that are detached.</p>
    #          <p>If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are
    #             deregistered from the load balancer. If there are target groups attached to the Auto Scaling
    #             group, the instances are deregistered from the target groups.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-detach-attach-instances.html">Detach
    #                 or attach instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::DetachInstancesInput] params
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :should_decrement_desired_capacity
    #   <p>Indicates whether the Auto Scaling group decrements the desired capacity value by the number
    #               of instances detached.</p>
    # @example To detach an instance from an Auto Scaling group
    #   # This example detaches the specified instance from the specified Auto Scaling group.
    #   params = {
    #     instance_ids: [
    #       "i-93633f9b"
    #     ],
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     should_decrement_desired_capacity: true
    #   }
    #   options = {}
    #   response = client.detach_instances(params, options)
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         description: "Detaching EC2 instance: i-93633f9b",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         activity_id: "5091cb52-547a-47ce-a236-c9ccbc2cb2c9",
    #         details: "details",
    #         start_time: Time.parse("2015-04-12T15:02:16.179Z"),
    #         progress: 50,
    #         cause: "At 2015-04-12T15:02:16Z instance i-93633f9b was detached in response to a user request, shrinking the capacity from 2 to 1.",
    #         status_code: InProgress
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     should_decrement_desired_capacity: false, # required
    #   }
    #   options = {}
    #   response = client.detach_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         activity_id: "XmlString", # required
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         description: "XmlString",
    #         cause: "XmlStringMaxLen1023", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         status_code: "PendingSpotBidPlacement" # One of: ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"], # required
    #         status_message: "XmlStringMaxLen255",
    #         progress: 1,
    #         details: "XmlString",
    #         auto_scaling_group_state: "AutoScalingGroupState",
    #         auto_scaling_group_arn: "ResourceName"
    #       }
    #     ]
    #   }
    # @return [Types::DetachInstancesOutput]
    def detach_instances(params = {}, options = {})
      request = build_request(:detach_instances, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This API operation is superseded by <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html">DetachTrafficSources</a>, which
    #                 can detach multiple traffic sources types. We recommend using
    #                     <code>DetachTrafficSources</code> to simplify how you manage traffic sources.
    #                 However, we continue to support <code>DetachLoadBalancerTargetGroups</code>. You can
    #                 use both the original <code>DetachLoadBalancerTargetGroups</code> API operation and
    #                     <code>DetachTrafficSources</code> on the same Auto Scaling group.</p>
    #          </note>
    #          <p>Detaches one or more target groups from the specified Auto Scaling group.</p>
    #          <p>When you detach a target group, it enters the <code>Removing</code> state while
    #             deregistering the instances in the group. When all instances are deregistered, then you
    #             can no longer describe the target group using the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html">DescribeLoadBalancerTargetGroups</a>
    #             API call. The instances remain running.</p>
    #          <note>
    #             <p>You can use this operation to detach target groups that were attached by using
    #                 <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachLoadBalancerTargetGroups.html">AttachLoadBalancerTargetGroups</a>, but not for target groups that
    #                 were attached by using <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html">AttachTrafficSources</a>.</p>
    #          </note>
    # @param [Hash, Types::DetachLoadBalancerTargetGroupsInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
    #               groups.</p>
    # @example To detach a target group from an Auto Scaling group
    #   # This example detaches the specified target group from the specified Auto Scaling group
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     target_group_ar_ns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #     ]
    #   }
    #   options = {}
    #   response = client.detach_load_balancer_target_groups(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     target_group_ar_ns: ["XmlStringMaxLen511"], # required
    #   }
    #   options = {}
    #   response = client.detach_load_balancer_target_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachLoadBalancerTargetGroupsOutput]
    def detach_load_balancer_target_groups(params = {}, options = {})
      request = build_request(:detach_load_balancer_target_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This API operation is superseded by <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachTrafficSources.html">DetachTrafficSources</a>, which
    #                 can detach multiple traffic sources types. We recommend using
    #                     <code>DetachTrafficSources</code> to simplify how you manage traffic sources.
    #                 However, we continue to support <code>DetachLoadBalancers</code>. You can use both
    #                 the original <code>DetachLoadBalancers</code> API operation and
    #                     <code>DetachTrafficSources</code> on the same Auto Scaling group.</p>
    #          </note>
    #          <p>Detaches one or more Classic Load Balancers from the specified Auto Scaling group.</p>
    #          <p>This operation detaches only Classic Load Balancers. If you have Application Load Balancers, Network Load Balancers, or
    #             Gateway Load Balancers, use the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancerTargetGroups.html">DetachLoadBalancerTargetGroups</a> API instead.</p>
    #          <p>When you detach a load balancer, it enters the <code>Removing</code> state while
    #             deregistering the instances in the group. When all instances are deregistered, then you
    #             can no longer describe the load balancer using the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a>
    #             API call. The instances remain running.</p>
    # @param [Hash, Types::DetachLoadBalancersInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    # @example To detach a load balancer from an Auto Scaling group
    #   # This example detaches the specified load balancer from the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     load_balancer_names: [
    #       "my-load-balancer"
    #     ]
    #   }
    #   options = {}
    #   response = client.detach_load_balancers(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     load_balancer_names: ["XmlStringMaxLen255"], # required
    #   }
    #   options = {}
    #   response = client.detach_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachLoadBalancersOutput]
    def detach_load_balancers(params = {}, options = {})
      request = build_request(:detach_load_balancers, params)
      request.send_request(options)
    end

    # <p>Detaches one or more traffic sources from the specified Auto Scaling group.</p>
    #          <p>When you detach a traffic source, it enters the <code>Removing</code> state while
    #             deregistering the instances in the group. When all instances are deregistered, then you
    #             can no longer describe the traffic source using the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html">DescribeTrafficSources</a>
    #             API call. The instances continue to run.</p>
    # @param [Hash, Types::DetachTrafficSourcesInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   <p>The unique identifiers of one or more traffic sources. You can specify up to 10
    #               traffic sources.</p>
    # @example To detach a target group from an Auto Scaling group
    #   # This example detaches the specified target group from the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     traffic_sources: [
    #       {
    #         identifier: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.detach_traffic_sources(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     traffic_sources: [ # required
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.detach_traffic_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachTrafficSourcesOutput]
    def detach_traffic_sources(params = {}, options = {})
      request = build_request(:detach_traffic_sources, params)
      request.send_request(options)
    end

    # <p>Disables group metrics collection for the specified Auto Scaling group.</p>
    # @param [Hash, Types::DisableMetricsCollectionInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :metrics
    #   <p>Identifies the metrics to disable.</p>
    #            <p>You can specify one or more of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GroupMinSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupMaxSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolWarmedCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you omit this property, all metrics are disabled.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html">Amazon CloudWatch metrics for
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @example To disable metrics collection for an Auto Scaling group
    #   # This example disables collecting data for the GroupDesiredCapacity metric for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     metrics: [
    #       "GroupDesiredCapacity"
    #     ]
    #   }
    #   options = {}
    #   response = client.disable_metrics_collection(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     metrics: ["XmlStringMaxLen255"]
    #   }
    #   options = {}
    #   response = client.disable_metrics_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_metrics_collection(params = {}, options = {})
      request = build_request(:disable_metrics_collection, params)
      request.send_request(options)
    end

    # <p>Enables group metrics collection for the specified Auto Scaling group.</p>
    #          <p>You can use these metrics to track changes in an Auto Scaling group and to set alarms on
    #             threshold values. You can view group metrics using the Amazon EC2 Auto Scaling console or the CloudWatch
    #             console. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html">Monitor
    #                 CloudWatch metrics for your Auto Scaling groups and instances</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::EnableMetricsCollectionInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :metrics
    #   <p>Identifies the metrics to enable.</p>
    #            <p>You can specify one or more of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GroupMinSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupMaxSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolWarmedCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>Granularity</code> and don't specify any metrics, all metrics are
    #               enabled.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html">Amazon CloudWatch metrics for
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :granularity
    #   <p>The frequency at which Amazon EC2 Auto Scaling sends aggregated data to CloudWatch. The only valid value is
    #                   <code>1Minute</code>.</p>
    # @example To enable metrics collection for an Auto Scaling group
    #   # This example enables data collection for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     granularity: "1Minute"
    #   }
    #   options = {}
    #   response = client.enable_metrics_collection(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     metrics: ["XmlStringMaxLen255"],
    #     granularity: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.enable_metrics_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_metrics_collection(params = {}, options = {})
      request = build_request(:enable_metrics_collection, params)
      request.send_request(options)
    end

    # <p>Moves the specified instances into the standby state.</p>
    #          <p>If you choose to decrement the desired capacity of the Auto Scaling group, the instances can
    #             enter standby as long as the desired capacity of the Auto Scaling group after the instances are
    #             placed into standby is equal to or greater than the minimum capacity of the
    #             group.</p>
    #          <p>If you choose not to decrement the desired capacity of the Auto Scaling group, the Auto Scaling group
    #             launches new instances to replace the instances on standby.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily removing
    #                 instances from your Auto Scaling group</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::EnterStandbyInput] params
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :should_decrement_desired_capacity
    #   <p>Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of
    #               instances moved to <code>Standby</code> mode.</p>
    # @example To move instances into standby mode
    #   # This example puts the specified instance into standby mode.
    #   params = {
    #     instance_ids: [
    #       "i-93633f9b"
    #     ],
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     should_decrement_desired_capacity: true
    #   }
    #   options = {}
    #   response = client.enter_standby(params, options)
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         description: "Moving EC2 instance to Standby: i-93633f9b",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         activity_id: "ffa056b4-6ed3-41ba-ae7c-249dfae6eba1",
    #         details: "details",
    #         start_time: Time.parse("2015-04-12T15:10:23.640Z"),
    #         progress: 50,
    #         cause: "At 2015-04-12T15:10:23Z instance i-93633f9b was moved to standby in response to a user request, shrinking the capacity from 2 to 1.",
    #         status_code: InProgress
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     should_decrement_desired_capacity: false, # required
    #   }
    #   options = {}
    #   response = client.enter_standby(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         activity_id: "XmlString", # required
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         description: "XmlString",
    #         cause: "XmlStringMaxLen1023", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         status_code: "PendingSpotBidPlacement" # One of: ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"], # required
    #         status_message: "XmlStringMaxLen255",
    #         progress: 1,
    #         details: "XmlString",
    #         auto_scaling_group_state: "AutoScalingGroupState",
    #         auto_scaling_group_arn: "ResourceName"
    #       }
    #     ]
    #   }
    # @return [Types::EnterStandbyOutput]
    def enter_standby(params = {}, options = {})
      request = build_request(:enter_standby, params)
      request.send_request(options)
    end

    # <p>Executes the specified policy. This can be useful for testing the design of your
    #             scaling policy.</p>
    # @param [Hash, Types::ExecutePolicyInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :policy_name
    #   <p>The name or ARN of the policy.</p>
    # @option params [Boolean] :honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing
    #               the policy.</p>
    #            <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Float] :metric_value
    #   <p>The metric value to compare to <code>BreachThreshold</code>. This enables you to
    #               execute a policy of type <code>StepScaling</code> and determine which step adjustment to
    #               use. For example, if the breach threshold is 50 and you want to use a step adjustment
    #               with a lower bound of 0 and an upper bound of 10, you can set the metric value to
    #               59.</p>
    #            <p>If you specify a metric value that doesn't correspond to a step adjustment for the
    #               policy, the call returns an error.</p>
    #            <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    # @option params [Float] :breach_threshold
    #   <p>The breach threshold for the alarm.</p>
    #            <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    # @example To execute a scaling policy
    #   # This example executes the specified policy.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     policy_name: "my-step-scale-out-policy",
    #     breach_threshold: 50.0,
    #     metric_value: 59.0
    #   }
    #   options = {}
    #   response = client.execute_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_name: "ResourceName", # required
    #     honor_cooldown: false,
    #     metric_value: 1.0,
    #     breach_threshold: 1.0
    #   }
    #   options = {}
    #   response = client.execute_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def execute_policy(params = {}, options = {})
      request = build_request(:execute_policy, params)
      request.send_request(options)
    end

    # <p>Moves the specified instances out of the standby state.</p>
    #          <p>After you put the instances back in service, the desired capacity is
    #             incremented.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily removing
    #                 instances from your Auto Scaling group</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::ExitStandbyInput] params
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @example To move instances out of standby mode
    #   # This example moves the specified instance out of standby mode.
    #   params = {
    #     instance_ids: [
    #       "i-93633f9b"
    #     ],
    #     auto_scaling_group_name: "my-auto-scaling-group"
    #   }
    #   options = {}
    #   response = client.exit_standby(params, options)
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         description: "Moving EC2 instance out of Standby: i-93633f9b",
    #         auto_scaling_group_name: "my-auto-scaling-group",
    #         activity_id: "142928e1-a2dc-453a-9b24-b85ad6735928",
    #         details: "details",
    #         start_time: Time.parse("2015-04-12T15:14:29.886Z"),
    #         progress: 30,
    #         cause: "At 2015-04-12T15:14:29Z instance i-93633f9b was moved out of standby in response to a user request, increasing the capacity from 1 to 2.",
    #         status_code: PreInService
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.exit_standby(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         activity_id: "XmlString", # required
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         description: "XmlString",
    #         cause: "XmlStringMaxLen1023", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         status_code: "PendingSpotBidPlacement" # One of: ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"], # required
    #         status_message: "XmlStringMaxLen255",
    #         progress: 1,
    #         details: "XmlString",
    #         auto_scaling_group_state: "AutoScalingGroupState",
    #         auto_scaling_group_arn: "ResourceName"
    #       }
    #     ]
    #   }
    # @return [Types::ExitStandbyOutput]
    def exit_standby(params = {}, options = {})
      request = build_request(:exit_standby, params)
      request.send_request(options)
    end

    # <p>Retrieves the forecast data for a predictive scaling policy.</p>
    #          <p>Load forecasts are predictions of the hourly load values using historical load data
    #             from CloudWatch and an analysis of historical trends. Capacity forecasts are represented as
    #             predicted values for the minimum capacity that is needed on an hourly basis, based on
    #             the hourly load forecast.</p>
    #          <p>A minimum of 24 hours of data is required to create the initial forecasts. However,
    #             having a full 14 days of historical data results in more accurate forecasts.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html">Predictive
    #                 scaling for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::GetPredictiveScalingForecastInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @option params [Time] :start_time
    #   <p>The inclusive start time of the time range for the forecast data to get. At most, the
    #               date and time can be one year before the current date and time.</p>
    # @option params [Time] :end_time
    #   <p>The exclusive end time of the time range for the forecast data to get. The maximum
    #               time duration between the start and end time is 30 days. </p>
    #            <p>Although this parameter can accept a date and time that is more than two days in the
    #               future, the availability of forecast data has limits. Amazon EC2 Auto Scaling only issues forecasts for
    #               periods of two days in advance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     policy_name: "XmlStringMaxLen255", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.get_predictive_scaling_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_forecast: [ # required
    #       {
    #         timestamps: [Time.now], # required
    #         values: [1.0], # required
    #         metric_specification: { # required
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: "ASGCPUUtilization" # One of: ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: "ASGAverageCPUUtilization" # One of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: "ASGTotalCPUUtilization" # One of: ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit"
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_load_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit"
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_capacity_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit"
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     capacity_forecast: { # required
    #       timestamps: [Time.now], # required
    #       values: [1.0], # required
    #     },
    #     update_time: Time.now, # required
    #   }
    # @return [Types::GetPredictiveScalingForecastOutput]
    def get_predictive_scaling_forecast(params = {}, options = {})
      request = build_request(:get_predictive_scaling_forecast, params)
      request.send_request(options)
    end

    # <p>Creates or updates a lifecycle hook for the specified Auto Scaling group.</p>
    #          <p>Lifecycle hooks let you create solutions that are aware of events in the Auto Scaling instance
    #             lifecycle, and then perform a custom action on instances when the corresponding
    #             lifecycle event occurs.</p>
    #          <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling
    #             group:</p>
    #          <ol>
    #             <li>
    #                <p>(Optional) Create a launch template or launch configuration with a user data
    #                     script that runs while an instance is in a wait state due to a lifecycle
    #                     hook.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) Create a Lambda function and a rule that allows Amazon EventBridge to invoke
    #                     your Lambda function when an instance is put into a wait state due to a
    #                     lifecycle hook.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) Create a notification target and an IAM role. The target can be
    #                     either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish
    #                     lifecycle notifications to the target.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Create the lifecycle hook. Specify whether the hook is
    #                         used when the instances launch or terminate.</b>
    #                </p>
    #             </li>
    #             <li>
    #                <p>If you need more time, record the lifecycle action heartbeat to keep the
    #                     instance in a wait state using the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RecordLifecycleActionHeartbeat.html">RecordLifecycleActionHeartbeat</a> API call.</p>
    #             </li>
    #             <li>
    #                <p>If you finish before the timeout period ends, send a callback by using the
    #                     <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html">CompleteLifecycleAction</a> API call.</p>
    #             </li>
    #          </ol>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling
    #             group, the call fails.</p>
    #          <p>You can view the lifecycle hooks for an Auto Scaling group using the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLifecycleHooks.html">DescribeLifecycleHooks</a> API call. If you are no longer using a lifecycle
    #             hook, you can delete it by calling the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteLifecycleHook.html">DeleteLifecycleHook</a> API.</p>
    # @param [Hash, Types::PutLifecycleHookInput] params
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :lifecycle_transition
    #   <p>The lifecycle transition. For Auto Scaling groups, there are two major lifecycle
    #               transitions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a lifecycle hook for scale-out events, specify
    #                           <code>autoscaling:EC2_INSTANCE_LAUNCHING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a lifecycle hook for scale-in events, specify
    #                           <code>autoscaling:EC2_INSTANCE_TERMINATING</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Required for new lifecycle hooks, but optional when updating existing hooks.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target.</p>
    #            <p>Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue. Required
    #               for new lifecycle hooks, but optional when updating existing hooks.</p>
    # @option params [String] :notification_target_arn
    #   <p>The Amazon Resource Name (ARN) of the notification target that Amazon EC2 Auto Scaling uses to notify
    #               you when an instance is in a wait state for the lifecycle hook. You can specify either
    #               an Amazon SNS topic or an Amazon SQS queue.</p>
    #            <p>If you specify an empty string, this overrides the current ARN.</p>
    #            <p>This operation uses the JSON format when sending notifications to an Amazon SQS queue, and
    #               an email key-value pair format when sending notifications to an Amazon SNS topic.</p>
    #            <p>When you specify a notification target, Amazon EC2 Auto Scaling sends it a test message. Test
    #               messages contain the following additional key-value pair: <code>"Event":
    #                   "autoscaling:TEST_NOTIFICATION"</code>.</p>
    # @option params [String] :notification_metadata
    #   <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
    #               the notification target.</p>
    # @option params [Integer] :heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The
    #               range is from <code>30</code> to <code>7200</code> seconds. The default value is
    #                   <code>3600</code> seconds (1 hour).</p>
    # @option params [String] :default_result
    #   <p>The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an
    #               unexpected failure occurs. The default value is <code>ABANDON</code>.</p>
    #            <p>Valid values: <code>CONTINUE</code> | <code>ABANDON</code>
    #            </p>
    # @example To create a launch lifecycle hook
    #   # This example creates a lifecycle hook for instance launch.
    #   params = {
    #     lifecycle_hook_name: "my-launch-lifecycle-hook",
    #     heartbeat_timeout: 300,
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     lifecycle_transition: "autoscaling:EC2_INSTANCE_LAUNCHING",
    #     default_result: "CONTINUE"
    #   }
    #   options = {}
    #   response = client.put_lifecycle_hook(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     lifecycle_transition: "LifecycleTransition",
    #     role_arn: "XmlStringMaxLen255",
    #     notification_target_arn: "NotificationTargetResourceName",
    #     notification_metadata: "AnyPrintableAsciiStringMaxLen4000",
    #     heartbeat_timeout: 1,
    #     default_result: "LifecycleActionResult"
    #   }
    #   options = {}
    #   response = client.put_lifecycle_hook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutLifecycleHookOutput]
    def put_lifecycle_hook(params = {}, options = {})
      request = build_request(:put_lifecycle_hook, params)
      request.send_request(options)
    end

    # <p>Configures an Auto Scaling group to send notifications when specified events take place.
    #             Subscribers to the specified topic can have messages delivered to an endpoint such as a
    #             web server or an email address.</p>
    #          <p>This configuration overwrites any existing configuration.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-sns-notifications.html">Amazon SNS
    #                 notification options for Amazon EC2 Auto Scaling</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>If you exceed your maximum limit of SNS topics, which is 10 per Auto Scaling group, the call
    #             fails.</p>
    # @param [Hash, Types::PutNotificationConfigurationInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    # @option params [Array<String>] :notification_types
    #   <p>The type of event that causes the notification to be sent. To query the notification
    #               types supported by Amazon EC2 Auto Scaling, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingNotificationTypes.html">DescribeAutoScalingNotificationTypes</a> API.</p>
    # @example To add an Auto Scaling notification
    #   # This example adds the specified notification to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic",
    #     notification_types: [
    #       "autoscaling:TEST_NOTIFICATION"
    #     ]
    #   }
    #   options = {}
    #   response = client.put_notification_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     topic_arn: "XmlStringMaxLen255", # required
    #     notification_types: ["XmlStringMaxLen255"], # required
    #   }
    #   options = {}
    #   response = client.put_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_notification_configuration(params = {}, options = {})
      request = build_request(:put_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates a scaling policy for an Auto Scaling group. Scaling policies are used to
    #             scale an Auto Scaling group based on configurable metrics. If no policies are defined, the
    #             dynamic scaling and predictive scaling features are not used. </p>
    #          <p>For more information about using dynamic scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html">Target tracking
    #                 scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html">Step and simple scaling
    #                 policies</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>For more information about using predictive scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html">Predictive
    #                 scaling for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>You can view the scaling policies for an Auto Scaling group using the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribePolicies.html">DescribePolicies</a> API call. If you are no longer using a scaling policy,
    #             you can delete it by calling the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeletePolicy.html">DeletePolicy</a> API.</p>
    # @param [Hash, Types::PutScalingPolicyInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_type
    #   <p>One of the following policy types: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TargetTrackingScaling</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StepScaling</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SimpleScaling</code> (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PredictiveScaling</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :adjustment_type
    #   <p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
    #               or a percentage). The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #            <p>Required if the policy type is <code>StepScaling</code> or <code>SimpleScaling</code>.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Integer] :min_adjustment_step
    #   <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
    #               instead.</p>
    # @option params [Integer] :min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #                   <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
    #               scaling policy to scale out an Auto Scaling group by 25 percent and you specify a
    #                   <code>MinAdjustmentMagnitude</code> of 2. If the group has 4 instances and the
    #               scaling policy is performed, 25 percent of 4 is 1. However, because you specified a
    #                   <code>MinAdjustmentMagnitude</code> of 2, Amazon EC2 Auto Scaling scales out the group by 2
    #               instances.</p>
    #            <p>Valid only if the policy type is <code>StepScaling</code> or
    #                   <code>SimpleScaling</code>. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User
    #               Guide</i>.</p>
    #            <note>
    #               <p>Some Auto Scaling groups use instance weights. In this case, set the
    #                       <code>MinAdjustmentMagnitude</code> to a value that is at least as large as your
    #                   largest instance weight.</p>
    #            </note>
    # @option params [Integer] :scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current capacity.
    #               For exact capacity, you must specify a non-negative value.</p>
    #            <p>Required if the policy type is <code>SimpleScaling</code>. (Not used with any other
    #               policy type.) </p>
    # @option params [Integer] :cooldown
    #   <p>A cooldown period, in seconds, that applies to a specific simple scaling policy. When
    #               a cooldown period is specified here, it overrides the default cooldown.</p>
    #            <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Default: None</p>
    # @option params [String] :metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
    #                   <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
    #               value is treated as <code>Average</code>.</p>
    #            <p>Valid only if the policy type is <code>StepScaling</code>.</p>
    # @option params [Array<Types::StepAdjustment>] :step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #               breach.</p>
    #            <p>Required if the policy type is <code>StepScaling</code>. (Not used with any other
    #               policy type.) </p>
    # @option params [Integer] :estimated_instance_warmup
    #   <p>
    #               <i>Not needed if the default instance warmup is defined for the
    #                   group.</i>
    #            </p>
    #            <p>The estimated time, in seconds, until a newly launched instance can contribute to the
    #               CloudWatch metrics. This warm-up period applies to instances launched due to a specific target
    #               tracking or step scaling policy. When a warm-up period is specified here, it overrides
    #               the default instance warmup.</p>
    #            <p>Valid only if the policy type is <code>TargetTrackingScaling</code> or
    #                   <code>StepScaling</code>.</p>
    #            <note>
    #               <p>The default is to use the value for the default instance warmup defined for the
    #                   group. If default instance warmup is null, then <code>EstimatedInstanceWarmup</code>
    #                   falls back to the value of default cooldown.</p>
    #            </note>
    # @option params [Types::TargetTrackingConfiguration] :target_tracking_configuration
    #   <p>A target tracking scaling policy. Provides support for predefined or custom
    #               metrics.</p>
    #            <p>The following predefined metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageCPUUtilization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageNetworkIn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageNetworkOut</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALBRequestCountPerTarget</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>ALBRequestCountPerTarget</code> for the metric, you must specify
    #               the <code>ResourceLabel</code> property with the
    #                   <code>PredefinedMetricSpecification</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html">TargetTrackingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #            <p>Required if the policy type is <code>TargetTrackingScaling</code>.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether the scaling policy is enabled or disabled. The default is enabled.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html">Disable a
    #                   scaling policy for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Types::PredictiveScalingConfiguration] :predictive_scaling_configuration
    #   <p>A predictive scaling policy. Provides support for predefined and custom
    #               metrics.</p>
    #            <p>Predefined metrics include CPU utilization, network in/out, and the Application Load
    #               Balancer request count.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html">PredictiveScalingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #            <p>Required if the policy type is <code>PredictiveScaling</code>.</p>
    # @example To add a scaling policy to an Auto Scaling group
    #   # This example adds the specified policy to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     policy_name: "alb1000-target-tracking-scaling-policy",
    #     policy_type: "TargetTrackingScaling",
    #     target_tracking_configuration: {
    #       target_value: 1000.0,
    #       predefined_metric_specification: {
    #         predefined_metric_type: ALBRequestCountPerTarget,
    #         resource_label: "app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_scaling_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:228f02c2-c665-4bfd-aaac-8b04080bea3c:autoScalingGroupName/my-auto-scaling-group:policyName/alb1000-target-tracking-scaling-policy",
    #     alarms: [
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:123456789012:alarm:TargetTracking-my-asg-AlarmHigh-fc0e4183-23ac-497e-9992-691c9980c38e",
    #         alarm_name: "TargetTracking-my-asg-AlarmHigh-fc0e4183-23ac-497e-9992-691c9980c38e"
    #       },
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:123456789012:alarm:TargetTracking-my-asg-AlarmLow-61a39305-ed0c-47af-bd9e-471a352ee1a2",
    #         alarm_name: "TargetTracking-my-asg-AlarmLow-61a39305-ed0c-47af-bd9e-471a352ee1a2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     policy_name: "XmlStringMaxLen255", # required
    #     policy_type: "XmlStringMaxLen64",
    #     adjustment_type: "XmlStringMaxLen255",
    #     min_adjustment_step: 1,
    #     min_adjustment_magnitude: 1,
    #     scaling_adjustment: 1,
    #     cooldown: 1,
    #     metric_aggregation_type: "XmlStringMaxLen32",
    #     step_adjustments: [
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       }
    #     ],
    #     estimated_instance_warmup: 1,
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ASGAverageCPUUtilization" # One of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"], # required
    #         resource_label: "XmlStringMaxLen1023"
    #       },
    #       customized_metric_specification: {
    #         metric_name: "MetricName",
    #         namespace: "MetricNamespace",
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           }
    #         ],
    #         statistic: "Average" # One of: ["Average", "Minimum", "Maximum", "SampleCount", "Sum"],
    #         unit: "MetricUnit",
    #         period: 1,
    #         metrics: [
    #           {
    #             id: "XmlStringMaxLen64", # required
    #             expression: "XmlStringMaxLen2047",
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "MetricNamespace", # required
    #                 metric_name: "MetricName", # required
    #                 dimensions: [
    #                   {
    #                     name: "MetricDimensionName", # required
    #                     value: "MetricDimensionValue", # required
    #                   }
    #                 ]
    #               },
    #               stat: "XmlStringMetricStat", # required
    #               unit: "MetricUnit",
    #               period: 1
    #             },
    #             label: "XmlStringMetricLabel",
    #             period: 1,
    #             return_data: false
    #           }
    #         ]
    #       },
    #       target_value: 1.0, # required
    #       disable_scale_in: false
    #     },
    #     enabled: false,
    #     predictive_scaling_configuration: {
    #       metric_specifications: [ # required
    #         {
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: "ASGCPUUtilization" # One of: ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: "ASGAverageCPUUtilization" # One of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: "ASGTotalCPUUtilization" # One of: ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"], # required
    #             resource_label: "XmlStringMaxLen1023"
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit"
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_load_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit"
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false
    #               }
    #             ]
    #           },
    #           customized_capacity_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit"
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       mode: "ForecastAndScale" # One of: ["ForecastAndScale", "ForecastOnly"],
    #       scheduling_buffer_time: 1,
    #       max_capacity_breach_behavior: "HonorMaxCapacity" # One of: ["HonorMaxCapacity", "IncreaseMaxCapacity"],
    #       max_capacity_buffer: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "ResourceName",
    #     alarms: [
    #       {
    #         alarm_name: "XmlStringMaxLen255",
    #         alarm_arn: "ResourceName"
    #       }
    #     ]
    #   }
    # @return [Types::PutScalingPolicyOutput]
    def put_scaling_policy(params = {}, options = {})
      request = build_request(:put_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a scheduled scaling action for an Auto Scaling group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scheduled-scaling.html">Scheduled scaling</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>You can view the scheduled actions for an Auto Scaling group using the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScheduledActions.html">DescribeScheduledActions</a>
    #             API call. If you are no longer using a scheduled action, you can delete it by calling the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteScheduledAction.html">DeleteScheduledAction</a> API.</p>
    #          <p>If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns an error
    #             message.</p>
    # @param [Hash, Types::PutScheduledUpdateGroupActionInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :scheduled_action_name
    #   <p>The name of this scaling action.</p>
    # @option params [Time] :time
    #   <p>This property is no longer used.</p>
    # @option params [Time] :start_time
    #   <p>The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
    #               only and in quotes (for example, <code>"2021-06-01T00:00:00Z"</code>).</p>
    #            <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
    #               the action at this time, and then performs the action based on the specified
    #               recurrence.</p>
    # @option params [Time] :end_time
    #   <p>The date and time for the recurring schedule to end, in UTC. For example,
    #                   <code>"2021-06-01T00:00:00Z"</code>.</p>
    # @option params [String] :recurrence
    #   <p>The recurring schedule for this action. This format consists of five fields separated
    #               by white spaces: [Minute] [Hour] [Day_of_Month] [Month_of_Year] [Day_of_Week]. The value
    #               must be in quotes (for example, <code>"30 0 1 1,6,12 *"</code>). For more information
    #               about this format, see <a href="http://crontab.org">Crontab</a>.</p>
    #            <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #            <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>
    # @option params [Integer] :min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    # @option params [Integer] :max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain. It can scale beyond this capacity
    #               if you add more scaling conditions. </p>
    #            <note>
    #               <p>You must specify at least one of the following properties: <code>MaxSize</code>,
    #                       <code>MinSize</code>, or <code>DesiredCapacity</code>. </p>
    #            </note>
    # @option params [String] :time_zone
    #   <p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
    #               used by default. </p>
    #            <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
    #               Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
    #               more information, see <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>
    # @example To add a scheduled action to an Auto Scaling group
    #   # This example adds the specified scheduled action to the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     scheduled_action_name: "my-scheduled-action",
    #     start_time: Time.parse("2014-05-12T08:00:00Z"),
    #     end_time: Time.parse("2014-05-12T08:00:00Z"),
    #     min_size: 2,
    #     max_size: 6,
    #     desired_capacity: 4
    #   }
    #   options = {}
    #   response = client.put_scheduled_update_group_action(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #     time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     recurrence: "XmlStringMaxLen255",
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     time_zone: "XmlStringMaxLen255"
    #   }
    #   options = {}
    #   response = client.put_scheduled_update_group_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_scheduled_update_group_action(params = {}, options = {})
      request = build_request(:put_scheduled_update_group_action, params)
      request.send_request(options)
    end

    # <p>Creates or updates a warm pool for the specified Auto Scaling group. A warm pool is a pool of
    #             pre-initialized EC2 instances that sits alongside the Auto Scaling group. Whenever your
    #             application needs to scale out, the Auto Scaling group can draw on the warm pool to meet its new
    #             desired capacity.</p>
    #          <p>This operation must be called from the Region in which the Auto Scaling group was
    #             created.</p>
    #          <p>You can view the instances in the warm pool using the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeWarmPool.html">DescribeWarmPool</a> API call.
    #             If you are no longer using a warm pool, you can delete it by calling the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteWarmPool.html">DeleteWarmPool</a> API.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::PutWarmPoolInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Integer] :max_group_prepared_capacity
    #   <p>Specifies the maximum number of instances that are allowed to be in the warm pool or
    #               in any state except <code>Terminated</code> for the Auto Scaling group. This is an optional
    #               property. Specify it only if you do not want the warm pool size to be determined by the
    #               difference between the group's maximum capacity and its desired capacity. </p>
    #            <important>
    #               <p>If a value for <code>MaxGroupPreparedCapacity</code> is not specified, Amazon EC2 Auto Scaling
    #                   launches and maintains the difference between the group's maximum capacity and its
    #                   desired capacity. If you specify a value for <code>MaxGroupPreparedCapacity</code>,
    #                   Amazon EC2 Auto Scaling uses the difference between the <code>MaxGroupPreparedCapacity</code> and
    #                   the desired capacity instead. </p>
    #               <p>The size of the warm pool is dynamic. Only when
    #                       <code>MaxGroupPreparedCapacity</code> and <code>MinSize</code> are set to the
    #                   same value does the warm pool have an absolute size.</p>
    #            </important>
    #            <p>If the desired capacity of the Auto Scaling group is higher than the
    #                   <code>MaxGroupPreparedCapacity</code>, the capacity of the warm pool is 0, unless
    #               you specify a value for <code>MinSize</code>. To remove a value that you previously set,
    #               include the property but specify -1 for the value. </p>
    # @option params [Integer] :min_size
    #   <p>Specifies the minimum number of instances to maintain in the warm pool. This helps you
    #               to ensure that there is always a certain number of warmed instances available to handle
    #               traffic spikes. Defaults to 0 if not specified.</p>
    # @option params [String] :pool_state
    #   <p>Sets the instance state to transition to after the lifecycle actions are complete.
    #               Default is <code>Stopped</code>.</p>
    # @option params [Types::InstanceReusePolicy] :instance_reuse_policy
    #   <p>Indicates whether instances in the Auto Scaling group can be returned to the warm pool on
    #               scale in. The default is to terminate instances in the Auto Scaling group when the group scales
    #               in.</p>
    # @example To create a warm pool for an Auto Scaling group
    #   # This example creates a warm pool for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     min_size: 30,
    #     pool_state: Hibernated,
    #     instance_reuse_policy: {
    #       reuse_on_scale_in: true
    #     }
    #   }
    #   options = {}
    #   response = client.put_warm_pool(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     max_group_prepared_capacity: 1,
    #     min_size: 1,
    #     pool_state: "Stopped" # One of: ["Stopped", "Running", "Hibernated"],
    #     instance_reuse_policy: {
    #       reuse_on_scale_in: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_warm_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutWarmPoolOutput]
    def put_warm_pool(params = {}, options = {})
      request = build_request(:put_warm_pool, params)
      request.send_request(options)
    end

    # <p>Records a heartbeat for the lifecycle action associated with the specified token or
    #             instance. This extends the timeout by the length of time defined using the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutLifecycleHook.html">PutLifecycleHook</a> API call.</p>
    #          <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling
    #             group:</p>
    #          <ol>
    #             <li>
    #                <p>(Optional) Create a launch template or launch configuration with a user data
    #                     script that runs while an instance is in a wait state due to a lifecycle
    #                     hook.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) Create a Lambda function and a rule that allows Amazon EventBridge to invoke
    #                     your Lambda function when an instance is put into a wait state due to a
    #                     lifecycle hook.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) Create a notification target and an IAM role. The target can be
    #                     either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish
    #                     lifecycle notifications to the target.</p>
    #             </li>
    #             <li>
    #                <p>Create the lifecycle hook. Specify whether the hook is used when the instances
    #                     launch or terminate.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If you need more time, record the lifecycle action
    #                         heartbeat to keep the instance in a wait state.</b>
    #                </p>
    #             </li>
    #             <li>
    #                <p>If you finish before the timeout period ends, send a callback by using the
    #                     <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html">CompleteLifecycleAction</a> API call.</p>
    #             </li>
    #          </ol>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::RecordLifecycleActionHeartbeatInput] params
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :lifecycle_action_token
    #   <p>A token that uniquely identifies a specific lifecycle action associated with an
    #               instance. Amazon EC2 Auto Scaling sends this token to the notification target that you specified when
    #               you created the lifecycle hook.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    # @example To record a lifecycle action heartbeat
    #   # This example records a lifecycle action heartbeat to keep the instance in a pending state.
    #   params = {
    #     lifecycle_hook_name: "my-lifecycle-hook",
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     lifecycle_action_token: "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635"
    #   }
    #   options = {}
    #   response = client.record_lifecycle_action_heartbeat(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_action_token: "LifecycleActionToken",
    #     instance_id: "XmlStringMaxLen19"
    #   }
    #   options = {}
    #   response = client.record_lifecycle_action_heartbeat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RecordLifecycleActionHeartbeatOutput]
    def record_lifecycle_action_heartbeat(params = {}, options = {})
      request = build_request(:record_lifecycle_action_heartbeat, params)
      request.send_request(options)
    end

    # <p>Resumes the specified suspended auto scaling processes, or all suspended process, for
    #             the specified Auto Scaling group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspend and resume
    #                 Amazon EC2 Auto Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::ResumeProcessesInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :scaling_processes
    #   <p>One or more of the following processes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AddToLoadBalancer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AlarmNotification</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AZRebalance</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HealthCheck</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceRefresh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceUnhealthy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you omit this property, all processes are specified.</p>
    # @example To resume Auto Scaling processes
    #   # This example resumes the specified suspended scaling process for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     scaling_processes: [
    #       "AlarmNotification"
    #     ]
    #   }
    #   options = {}
    #   response = client.resume_processes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scaling_processes: ["XmlStringMaxLen255"]
    #   }
    #   options = {}
    #   response = client.resume_processes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def resume_processes(params = {}, options = {})
      request = build_request(:resume_processes, params)
      request.send_request(options)
    end

    # <p>Cancels an instance refresh that is in progress and rolls back any changes that it
    #             made. Amazon EC2 Auto Scaling replaces any instances that were replaced during the instance refresh.
    #             This restores your Auto Scaling group to the configuration that it was using before the start of
    #             the instance refresh. </p>
    #          <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group
    #             after you make configuration changes.</p>
    #          <p>A rollback is not supported in the following situations: </p>
    #          <ul>
    #             <li>
    #                <p>There is no desired configuration specified for the instance refresh.</p>
    #             </li>
    #             <li>
    #                <p>The Auto Scaling group has a launch template that uses an Amazon Web Services Systems Manager parameter instead
    #                     of an AMI ID for the <code>ImageId</code> property.</p>
    #             </li>
    #             <li>
    #                <p>The Auto Scaling group uses the launch template's <code>$Latest</code> or
    #                         <code>$Default</code> version.</p>
    #             </li>
    #          </ul>
    #          <p>When you receive a successful response from this operation, Amazon EC2 Auto Scaling immediately
    #             begins replacing instances. You can check the status of this operation through the 
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html">DescribeInstanceRefreshes</a> API operation. </p>
    # @param [Hash, Types::RollbackInstanceRefreshInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   }
    #   options = {}
    #   response = client.rollback_instance_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_refresh_id: "XmlStringMaxLen255"
    #   }
    # @return [Types::RollbackInstanceRefreshOutput]
    def rollback_instance_refresh(params = {}, options = {})
      request = build_request(:rollback_instance_refresh, params)
      request.send_request(options)
    end

    # <p>Sets the size of the specified Auto Scaling group.</p>
    #          <p>If a scale-in activity occurs as a result of a new <code>DesiredCapacity</code> value
    #             that is lower than the current size of the group, the Auto Scaling group uses its termination
    #             policy to determine which instances to terminate. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-manually.html">Manual
    #                 scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::SetDesiredCapacityInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain.</p>
    # @option params [Boolean] :honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating
    #               a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does
    #               not honor the cooldown period during manual scaling activities.</p>
    # @example To set the desired capacity for an Auto Scaling group
    #   # This example sets the desired capacity for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     desired_capacity: 2,
    #     honor_cooldown: true
    #   }
    #   options = {}
    #   response = client.set_desired_capacity(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     desired_capacity: 1, # required
    #     honor_cooldown: false
    #   }
    #   options = {}
    #   response = client.set_desired_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_desired_capacity(params = {}, options = {})
      request = build_request(:set_desired_capacity, params)
      request.send_request(options)
    end

    # <p>Sets the health status of the specified instance.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/set-up-a-custom-health-check.html">Set up a custom
    #                 health check for your Auto Scaling group</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::SetInstanceHealthInput] params
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    # @option params [String] :health_status
    #   <p>The health status of the instance. Set to <code>Healthy</code> to have the instance
    #               remain in service. Set to <code>Unhealthy</code> to have the instance be out of service.
    #               Amazon EC2 Auto Scaling terminates and replaces the unhealthy instance.</p>
    # @option params [Boolean] :should_respect_grace_period
    #   <p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code>
    #               specified for the group, by default, this call respects the grace period. Set this to
    #                   <code>False</code>, to have the call not respect the grace period associated with
    #               the group.</p>
    #            <p>For more information about the health check grace period, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set the health check grace period for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @example To set the health status of an instance
    #   # This example sets the health status of the specified instance to Unhealthy.
    #   params = {
    #     instance_id: "i-93633f9b",
    #     health_status: "Unhealthy"
    #   }
    #   options = {}
    #   response = client.set_instance_health(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "XmlStringMaxLen19", # required
    #     health_status: "XmlStringMaxLen32", # required
    #     should_respect_grace_period: false
    #   }
    #   options = {}
    #   response = client.set_instance_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_instance_health(params = {}, options = {})
      request = build_request(:set_instance_health, params)
      request.send_request(options)
    end

    # <p>Updates the instance protection settings of the specified instances. This operation
    #             cannot be called on instances in a warm pool.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Use
    #                 instance scale-in protection</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>If you exceed your maximum limit of instance IDs, which is 50 per Auto Scaling group, the call
    #             fails.</p>
    # @param [Hash, Types::SetInstanceProtectionInput] params
    # @option params [Array<String>] :instance_ids
    #   <p>One or more instance IDs. You can specify up to 50 instances.</p>
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Boolean] :protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    # @example To enable instance protection for an instance
    #   # This example enables instance protection for the specified instance.
    #   params = {
    #     instance_ids: [
    #       "i-93633f9b"
    #     ],
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     protected_from_scale_in: true
    #   }
    #   options = {}
    #   response = client.set_instance_protection(params, options)
    #   response.to_h #=>
    #   {}
    # @example To disable instance protection for an instance
    #   # This example disables instance protection for the specified instance.
    #   params = {
    #     instance_ids: [
    #       "i-93633f9b"
    #     ],
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     protected_from_scale_in: false
    #   }
    #   options = {}
    #   response = client.set_instance_protection(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["XmlStringMaxLen19"], # required
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     protected_from_scale_in: false, # required
    #   }
    #   options = {}
    #   response = client.set_instance_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetInstanceProtectionOutput]
    def set_instance_protection(params = {}, options = {})
      request = build_request(:set_instance_protection, params)
      request.send_request(options)
    end

    # <p>Starts an instance refresh.</p>
    #          <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group.
    #             This feature is helpful, for example, when you have a new AMI or a new user data script.
    #             You just need to create a new launch template that specifies the new AMI or user data
    #             script. Then start an instance refresh to immediately begin the process of updating
    #             instances in the group. </p>
    #          <p>If successful, the request's response contains a unique ID that you can use to track
    #             the progress of the instance refresh. To query its status, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html">DescribeInstanceRefreshes</a> API.
    #             To describe the instance refreshes that
    #             have already run, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html">DescribeInstanceRefreshes</a> API. To cancel an
    #             instance refresh that is in progress, use the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CancelInstanceRefresh.html">CancelInstanceRefresh</a>
    #             API. </p>
    #          <p>An instance refresh might fail for several reasons, such as EC2 launch failures,
    #             misconfigured health checks, or not ignoring or allowing the termination of instances
    #             that are in <code>Standby</code> state or protected from scale in. You can monitor for
    #             failed EC2 launches using the scaling activities. To find the scaling activities, call
    #             the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html">DescribeScalingActivities</a> API.</p>
    #          <p>If you enable auto rollback, your Auto Scaling group will be rolled back automatically when
    #             the instance refresh fails. You can enable this feature before starting an instance
    #             refresh by specifying the <code>AutoRollback</code> property in the instance refresh
    #             preferences. Otherwise, to roll back an instance refresh before it finishes, use the
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RollbackInstanceRefresh.html">RollbackInstanceRefresh</a> API. </p>
    # @param [Hash, Types::StartInstanceRefreshInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :strategy
    #   <p>The strategy to use for the instance refresh. The only valid value is
    #                   <code>Rolling</code>.</p>
    # @option params [Types::DesiredConfiguration] :desired_configuration
    #   <p>The desired configuration. For example, the desired configuration can specify a new
    #               launch template or a new version of the current launch template.</p>
    #            <p>Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates the settings of the Auto Scaling group to
    #               reflect the new desired configuration. </p>
    #            <note>
    #               <p>When you specify a new launch template or a new version of the current launch
    #                   template for your desired configuration, consider enabling the
    #                       <code>SkipMatching</code> property in preferences. If it's enabled, Amazon EC2 Auto Scaling
    #                   skips replacing instances that already use the specified launch template and
    #                   instance types. This can help you reduce the number of replacements that are
    #                   required to apply updates. </p>
    #            </note>
    # @option params [Types::RefreshPreferences] :preferences
    #   <p>Sets your preferences for the instance refresh so that it performs as expected when
    #               you start it. Includes the instance warmup time, the minimum and maximum healthy
    #               percentages, and the behaviors that you want Amazon EC2 Auto Scaling to use if instances that are in
    #                   <code>Standby</code> state or protected from scale in are found. You can also choose
    #               to enable additional features, such as the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto rollback</p>
    #               </li>
    #               <li>
    #                  <p>Checkpoints</p>
    #               </li>
    #               <li>
    #                  <p>CloudWatch alarms</p>
    #               </li>
    #               <li>
    #                  <p>Skip matching</p>
    #               </li>
    #               <li>
    #                  <p>Bake time</p>
    #               </li>
    #            </ul>
    # @example To start an instance refresh
    #   # This example starts an instance refresh for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     desired_configuration: {
    #       launch_template: {
    #         launch_template_name: "my-template-for-auto-scaling",
    #         version: "$Latest"
    #       }
    #     },
    #     preferences: {
    #       auto_rollback: true,
    #       instance_warmup: 200,
    #       min_healthy_percentage: 90,
    #       max_healthy_percentage: 120,
    #       alarm_specification: {
    #         alarms: [
    #           "my-alarm"
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_instance_refresh(params, options)
    #   response.to_h #=>
    #   {
    #     instance_refresh_id: "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     strategy: "Rolling" # One of: ["Rolling"],
    #     desired_configuration: {
    #       launch_template: {
    #         launch_template_id: "XmlStringMaxLen255",
    #         launch_template_name: "LaunchTemplateName",
    #         version: "XmlStringMaxLen255"
    #       },
    #       mixed_instances_policy: {
    #         launch_template: {
    #           launch_template_specification: {
    #             launch_template_id: "XmlStringMaxLen255",
    #             launch_template_name: "LaunchTemplateName",
    #             version: "XmlStringMaxLen255"
    #           },
    #           overrides: [
    #             {
    #               instance_type: "XmlStringMaxLen255",
    #               weighted_capacity: "XmlStringMaxLen32",
    #               launch_template_specification: {
    #                 launch_template_id: "XmlStringMaxLen255",
    #                 launch_template_name: "LaunchTemplateName",
    #                 version: "XmlStringMaxLen255"
    #               },
    #               instance_requirements: {
    #                 v_cpu_count: { # required
    #                   min: 1, # required
    #                   max: 1
    #                 },
    #                 memory_mi_b: { # required
    #                   min: 1, # required
    #                   max: 1
    #                 },
    #                 cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services", "apple"]],
    #                 memory_gi_b_per_v_cpu: {
    #                   min: 1.0,
    #                   max: 1.0
    #                 },
    #                 excluded_instance_types: ["ExcludedInstance"],
    #                 instance_generations: ["current" # One of: ["current", "previous"]],
    #                 spot_max_price_percentage_over_lowest_price: 1,
    #                 max_spot_price_as_percentage_of_optimal_on_demand_price: 1,
    #                 on_demand_max_price_percentage_over_lowest_price: 1,
    #                 bare_metal: "included" # One of: ["included", "excluded", "required"],
    #                 burstable_performance: "included" # One of: ["included", "excluded", "required"],
    #                 require_hibernate_support: false,
    #                 network_interface_count: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 local_storage: "included" # One of: ["included", "excluded", "required"],
    #                 local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #                 total_local_storage_gb: {
    #                   min: 1.0,
    #                   max: 1.0
    #                 },
    #                 baseline_ebs_bandwidth_mbps: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #                 accelerator_count: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 accelerator_manufacturers: ["nvidia" # One of: ["nvidia", "amd", "amazon-web-services", "xilinx"]],
    #                 accelerator_names: ["a100" # One of: ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]],
    #                 accelerator_total_memory_mi_b: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 network_bandwidth_gbps: {
    #                   min: 1.0,
    #                   max: 1.0
    #                 },
    #                 allowed_instance_types: ["AllowedInstanceType"],
    #                 baseline_performance_factors: {
    #                   cpu: {
    #                     references: [
    #                       {
    #                         instance_family: "String"
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         instances_distribution: {
    #           on_demand_allocation_strategy: "XmlString",
    #           on_demand_base_capacity: 1,
    #           on_demand_percentage_above_base_capacity: 1,
    #           spot_allocation_strategy: "XmlString",
    #           spot_instance_pools: 1,
    #           spot_max_price: "MixedInstanceSpotPrice"
    #         }
    #       }
    #     },
    #     preferences: {
    #       min_healthy_percentage: 1,
    #       instance_warmup: 1,
    #       checkpoint_percentages: [1],
    #       checkpoint_delay: 1,
    #       skip_matching: false,
    #       auto_rollback: false,
    #       scale_in_protected_instances: "Refresh" # One of: ["Refresh", "Ignore", "Wait"],
    #       standby_instances: "Terminate" # One of: ["Terminate", "Ignore", "Wait"],
    #       alarm_specification: {
    #         alarms: ["XmlStringMaxLen255"]
    #       },
    #       max_healthy_percentage: 1,
    #       bake_time: 1
    #     }
    #   }
    #   options = {}
    #   response = client.start_instance_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_refresh_id: "XmlStringMaxLen255"
    #   }
    # @return [Types::StartInstanceRefreshOutput]
    def start_instance_refresh(params = {}, options = {})
      request = build_request(:start_instance_refresh, params)
      request.send_request(options)
    end

    # <p>Suspends the specified auto scaling processes, or all processes, for the specified
    #             Auto Scaling group.</p>
    #          <p>If you suspend either the <code>Launch</code> or <code>Terminate</code> process types,
    #             it can prevent other process types from functioning properly. For more information, see
    #                 <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspend and resume
    #                 Amazon EC2 Auto Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #          <p>To resume processes that have been suspended, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_ResumeProcesses.html">ResumeProcesses</a> API.</p>
    # @param [Hash, Types::SuspendProcessesInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [Array<String>] :scaling_processes
    #   <p>One or more of the following processes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AddToLoadBalancer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AlarmNotification</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AZRebalance</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HealthCheck</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceRefresh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceUnhealthy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you omit this property, all processes are specified.</p>
    # @example To suspend Auto Scaling processes
    #   # This example suspends the specified scaling process for the specified Auto Scaling group.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     scaling_processes: [
    #       "AlarmNotification"
    #     ]
    #   }
    #   options = {}
    #   response = client.suspend_processes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scaling_processes: ["XmlStringMaxLen255"]
    #   }
    #   options = {}
    #   response = client.suspend_processes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def suspend_processes(params = {}, options = {})
      request = build_request(:suspend_processes, params)
      request.send_request(options)
    end

    # <p>Terminates the specified instance and optionally adjusts the desired group size. This
    #             operation cannot be called on instances in a warm pool.</p>
    #          <p>This call simply makes a termination request. The instance is not terminated
    #             immediately. When an instance is terminated, the instance status changes to
    #                 <code>terminated</code>. You can't connect to or start an instance after you've
    #             terminated it.</p>
    #          <p>If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches
    #             instances to replace the ones that are terminated. </p>
    #          <p>By default, Amazon EC2 Auto Scaling balances instances across all Availability Zones. If you
    #             decrement the desired capacity, your Auto Scaling group can become unbalanced between
    #             Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group, and rebalancing might
    #             terminate instances in other zones. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-manually.html">Manual
    #                 scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @param [Hash, Types::TerminateInstanceInAutoScalingGroupInput] params
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    # @option params [Boolean] :should_decrement_desired_capacity
    #   <p>Indicates whether terminating the instance also decrements the size of the Auto Scaling
    #               group.</p>
    # @example To terminate an instance in an Auto Scaling group
    #   # This example terminates the specified instance from the specified Auto Scaling group without updating the size of the group. Auto Scaling launches a replacement instance after the specified instance terminates.
    #   params = {
    #     instance_id: "i-93633f9b",
    #     should_decrement_desired_capacity: false
    #   }
    #   options = {}
    #   response = client.terminate_instance_in_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "XmlStringMaxLen19", # required
    #     should_decrement_desired_capacity: false, # required
    #   }
    #   options = {}
    #   response = client.terminate_instance_in_auto_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activity: {
    #       activity_id: "XmlString", # required
    #       auto_scaling_group_name: "XmlStringMaxLen255", # required
    #       description: "XmlString",
    #       cause: "XmlStringMaxLen1023", # required
    #       start_time: Time.now, # required
    #       end_time: Time.now,
    #       status_code: "PendingSpotBidPlacement" # One of: ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"], # required
    #       status_message: "XmlStringMaxLen255",
    #       progress: 1,
    #       details: "XmlString",
    #       auto_scaling_group_state: "AutoScalingGroupState",
    #       auto_scaling_group_arn: "ResourceName"
    #     }
    #   }
    # @return [Types::TerminateInstanceInAutoScalingGroupOutput]
    def terminate_instance_in_auto_scaling_group(params = {}, options = {})
      request = build_request(:terminate_instance_in_auto_scaling_group, params)
      request.send_request(options)
    end

    # <p>
    #             <b>We strongly recommend that all Auto Scaling groups use launch templates to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.</b>
    #          </p>
    #          <p>Updates the configuration for the specified Auto Scaling group.</p>
    #          <p>To update an Auto Scaling group, specify the name of the group and the property that you want
    #             to change. Any properties that you don't specify are not changed by this update request.
    #             The new settings take effect on any scaling activities after this call returns.
    #             </p>
    #          <p>If you associate a new launch configuration or template with an Auto Scaling group, all new
    #             instances will get the updated configuration. Existing instances continue to run with
    #             the configuration that they were originally launched with. When you update a group to
    #             specify a mixed instances policy instead of a launch configuration or template, existing
    #             instances may be replaced to match the new purchasing options that you specified in the
    #             policy. For example, if the group currently has 100% On-Demand capacity and the policy
    #             specifies 50% Spot capacity, this means that half of your instances will be gradually
    #             terminated and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches
    #             new instances before terminating the old ones, so that updating your group does not
    #             compromise the performance or availability of your application.</p>
    #          <p>Note the following about changing <code>DesiredCapacity</code>, <code>MaxSize</code>,
    #             or <code>MinSize</code>:</p>
    #          <ul>
    #             <li>
    #                <p>If a scale-in activity occurs as a result of a new
    #                         <code>DesiredCapacity</code> value that is lower than the current size of
    #                     the group, the Auto Scaling group uses its termination policy to determine which
    #                     instances to terminate.</p>
    #             </li>
    #             <li>
    #                <p>If you specify a new value for <code>MinSize</code> without specifying a value
    #                     for <code>DesiredCapacity</code>, and the new <code>MinSize</code> is larger
    #                     than the current size of the group, this sets the group's
    #                         <code>DesiredCapacity</code> to the new <code>MinSize</code> value.</p>
    #             </li>
    #             <li>
    #                <p>If you specify a new value for <code>MaxSize</code> without specifying a value
    #                     for <code>DesiredCapacity</code>, and the new <code>MaxSize</code> is smaller
    #                     than the current size of the group, this sets the group's
    #                         <code>DesiredCapacity</code> to the new <code>MaxSize</code> value.</p>
    #             </li>
    #          </ul>
    #          <p>To see which properties have been set, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingGroups.html">DescribeAutoScalingGroups</a> API.
    #             To view the scaling policies for an Auto Scaling
    #             group, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribePolicies.html">DescribePolicies</a> API. If the group has scaling
    #             policies, you can update them by calling the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScalingPolicy.html">PutScalingPolicy</a> API.</p>
    # @param [Hash, Types::UpdateAutoScalingGroupInput] params
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration. If you specify
    #                   <code>LaunchConfigurationName</code> in your update request, you can't specify
    #                   <code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>.</p>
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   <p>The launch template and version to use to specify the updates. If you specify
    #                   <code>LaunchTemplate</code> in your update request, you can't specify
    #                   <code>LaunchConfigurationName</code> or <code>MixedInstancesPolicy</code>.</p>
    # @option params [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   <p>The mixed instances policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Integer] :min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    # @option params [Integer] :max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #            <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #            </note>
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain. This number must be greater than or
    #               equal to the minimum size of the group and less than or equal to the maximum size of the
    #               group.</p>
    # @option params [Integer] :default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #            <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Array<String>] :availability_zones
    #   <p>One or more Availability Zones for the group.</p>
    # @option params [String] :health_check_type
    #   <p>A comma-separated value string of one or more health check types.</p>
    #            <p>The valid values are <code>EC2</code>, <code>EBS</code>, <code>ELB</code>, and
    #                   <code>VPC_LATTICE</code>. <code>EC2</code> is the default health check and cannot be
    #               disabled. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html">Health checks
    #                   for instances in an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Only specify <code>EC2</code> if you must clear a value that was previously
    #               set.</p>
    # @option params [Integer] :health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               health check. This is useful if your instances do not immediately pass their health
    #               checks after they enter the <code>InService</code> state. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set the health check
    #                   grace period for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :placement_group
    #   <p>The name of an existing placement group into which to launch your instances. To remove the placement group setting, pass an empty string for <code>placement-group</code>. For more
    #               information about placement groups, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #            <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #            </note>
    # @option params [String] :vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC). If you specify
    #                   <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, the subnets that
    #               you specify must reside in those Availability Zones.</p>
    # @option params [Array<String>] :termination_policies
    #   <p>A policy or a list of policies that are used to select the instances to terminate. The
    #               policies are executed in the order that you list them. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html">Configure
    #                   termination policies for Amazon EC2 Auto Scaling</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid values: <code>Default</code> | <code>AllocationStrategy</code> |
    #                   <code>ClosestToNextInstanceHour</code> | <code>NewestInstance</code> |
    #                   <code>OldestInstance</code> | <code>OldestLaunchConfiguration</code> |
    #                   <code>OldestLaunchTemplate</code> |
    #                   <code>arn:aws:lambda:region:account-id:function:my-function:my-alias</code>
    #            </p>
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Use
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [String] :service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Integer] :max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). To clear a previously set value, specify a new
    #               value of 0. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling
    #                   instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Boolean] :capacity_rebalance
    #   <p>Enables or disables Capacity Rebalancing. If Capacity Rebalancing is disabled, proactive replacement of at-risk Spot Instances does not occur. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Capacity
    #               Rebalancing in Auto Scaling to replace at-risk Spot Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <note>
    #               <p>To suspend rebalancing across Availability Zones, use the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendedProcess.html">SuspendProcesses</a> API.</p>
    #            </note>
    # @option params [String] :context
    #   <p>Reserved.</p>
    # @option params [String] :desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html">Create a mixed instances group using attribute-based instance type
    #                   selection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>, which translates into number of
    #               instances.</p>
    #            <p>Valid values: <code>units</code> | <code>vcpu</code> | <code>memory-mib</code>
    #            </p>
    # @option params [Integer] :default_instance_warmup
    #   <p>The amount of time, in seconds, until a new instance is considered to have finished
    #               initializing and resource consumption to become stable after it enters the
    #                   <code>InService</code> state. </p>
    #            <p>During an instance refresh, Amazon EC2 Auto Scaling waits for the warm-up period after it replaces an
    #               instance before it moves on to replacing the next instance. Amazon EC2 Auto Scaling also waits for the
    #               warm-up period before aggregating the metrics for new instances with existing instances
    #               in the Amazon CloudWatch metrics that are used for scaling, resulting in more reliable usage
    #               data. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
    #                   the default instance warmup for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <important>
    #               <p>To manage various warm-up settings at the group level, we recommend that you set
    #                   the default instance warmup, <i>even if it is set to 0 seconds</i>. To
    #                   remove a value that you previously set, include the property but specify
    #                       <code>-1</code> for the value. However, we strongly recommend keeping the
    #                   default instance warmup enabled by specifying a value of <code>0</code> or other
    #                   nominal value.</p>
    #            </important>
    # @option params [Types::InstanceMaintenancePolicy] :instance_maintenance_policy
    #   <p>An instance maintenance policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html">Set instance maintenance policy</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @option params [Types::AvailabilityZoneDistribution] :availability_zone_distribution
    #   <p>
    #               The instance capacity distribution across Availability Zones.
    #           </p>
    # @option params [Types::AvailabilityZoneImpairmentPolicy] :availability_zone_impairment_policy
    #   <p>
    #               The policy for Availability Zone impairment.
    #           </p>
    # @option params [Boolean] :skip_zonal_shift_validation
    #   <p>
    #           If you enable zonal shift with cross-zone disabled load balancers, capacity could become imbalanced across Availability Zones. To skip the validation, specify <code>true</code>. For more information, see
    #           <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #       </p>
    # @option params [Types::CapacityReservationSpecification] :capacity_reservation_specification
    #   <p>
    #               The capacity reservation specification for the Auto Scaling group. 
    #           </p>
    # @example To update an Auto Scaling group
    #   # This example updates multiple properties at the same time.
    #   params = {
    #     auto_scaling_group_name: "my-auto-scaling-group",
    #     launch_template: {
    #       launch_template_name: "my-template-for-auto-scaling",
    #       version: "2"
    #     },
    #     min_size: 1,
    #     max_size: 5,
    #     new_instances_protected_from_scale_in: true
    #   }
    #   options = {}
    #   response = client.update_auto_scaling_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     launch_configuration_name: "XmlStringMaxLen255",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255"
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255"
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #             weighted_capacity: "XmlStringMaxLen32",
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255"
    #             },
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services", "apple"]],
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               excluded_instance_types: ["ExcludedInstance"],
    #               instance_generations: ["current" # One of: ["current", "previous"]],
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               max_spot_price_as_percentage_of_optimal_on_demand_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included" # One of: ["included", "excluded", "required"],
    #               burstable_performance: "included" # One of: ["included", "excluded", "required"],
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               local_storage: "included" # One of: ["included", "excluded", "required"],
    #               local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_manufacturers: ["nvidia" # One of: ["nvidia", "amd", "amazon-web-services", "xilinx"]],
    #               accelerator_names: ["a100" # One of: ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]],
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #               baseline_performance_factors: {
    #                 cpu: {
    #                   references: [
    #                     {
    #                       instance_family: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice"
    #       }
    #     },
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "UpdatePlacementGroupParam",
    #     vpc_zone_identifier: "XmlStringMaxLen5000",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     service_linked_role_arn: "ResourceName",
    #     max_instance_lifetime: 1,
    #     capacity_rebalance: false,
    #     context: "Context",
    #     desired_capacity_type: "XmlStringMaxLen255",
    #     default_instance_warmup: 1,
    #     instance_maintenance_policy: {
    #       min_healthy_percentage: 1,
    #       max_healthy_percentage: 1
    #     },
    #     availability_zone_distribution: {
    #       capacity_distribution_strategy: "balanced-only" # One of: ["balanced-only", "balanced-best-effort"]
    #     },
    #     availability_zone_impairment_policy: {
    #       zonal_shift_enabled: false,
    #       impaired_zone_health_check_behavior: "ReplaceUnhealthy" # One of: ["ReplaceUnhealthy", "IgnoreUnhealthy"]
    #     },
    #     skip_zonal_shift_validation: false,
    #     capacity_reservation_specification: {
    #       capacity_reservation_preference: "capacity-reservations-only" # One of: ["capacity-reservations-only", "capacity-reservations-first", "none", "default"],
    #       capacity_reservation_target: {
    #         capacity_reservation_ids: ["AsciiStringMaxLen255"],
    #         capacity_reservation_resource_group_arns: ["ResourceName"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_auto_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_auto_scaling_group(params = {}, options = {})
      request = build_request(:update_auto_scaling_group, params)
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
      context[:gem_name] = 'aws-sdk-autoscaling'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        group_exists: Waiters::GroupExists,
        group_in_service: Waiters::GroupInService,
        group_not_exists: Waiters::GroupNotExists
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
