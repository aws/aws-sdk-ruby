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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Shield
  # An API client for Aws::Shield.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSShield20160616

    add_plugin(::Aws::Shield::Plugins::Endpoint)
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
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Shield::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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

    # <p>Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket containing log data such as Application Load Balancer access logs, CloudFront logs, or logs from third party sources. You can associate up to 10 Amazon S3 buckets with your subscription.</p>
    #          <p>To use the services of the SRT and make an <code>AssociateDRTLogBucket</code> request, you must be subscribed to the <a href="http://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="http://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p>
    # @param [Hash, Types::AssociateDRTLogBucketRequest] params
    # @option params [String] :log_bucket
    #   <p>The Amazon S3 bucket that contains the logs that you want to share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_bucket: "LogBucket", # required
    #   }
    #   options = {}
    #   response = client.associate_drt_log_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateDRTLogBucketResponse]
    def associate_drt_log_bucket(params = {}, options = {})
      request = build_request(:associate_drt_log_bucket, params)
      request.send_request(options)
    end

    # <p>Authorizes the Shield Response Team (SRT) using the specified role, to access your Amazon Web Services account to assist with DDoS attack mitigation during potential attacks. This enables the SRT to inspect your WAF configuration and create or update WAF rules and web ACLs.</p>
    #          <p>You can associate only one <code>RoleArn</code> with your subscription. If you submit an <code>AssociateDRTRole</code> request for an account that already has an associated role, the new <code>RoleArn</code> will replace the existing <code>RoleArn</code>. </p>
    #          <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <code>AWSShieldDRTAccessPolicy</code> managed policy to the role that you'll specify in the request. You can access this policy in the IAM console at <a href="https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a>. For more information see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Adding and removing IAM identity permissions</a>. The role must also trust the service principal
    # <code>drt.shield.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">IAM JSON policy elements: Principal</a>.</p>
    #          <p>The SRT will have access only to your WAF and Shield resources. By submitting this request, you authorize the SRT to inspect your WAF and Shield configuration and create and update WAF rules and web ACLs on your behalf. The SRT takes these actions only if explicitly authorized by you.</p>
    #          <p>You must have the <code>iam:PassRole</code> permission to make an <code>AssociateDRTRole</code> request. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">Granting a user permissions to pass a role to an Amazon Web Services service</a>. </p>
    #          <p>To use the services of the SRT and make an <code>AssociateDRTRole</code> request, you must be subscribed to the <a href="http://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="http://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p>
    # @param [Hash, Types::AssociateDRTRoleRequest] params
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role the SRT will use to access your Amazon Web Services account.</p>
    #            <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href="https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a> managed policy to this role.  For more information see <a href=" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Attaching and Detaching IAM Policies</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "RoleArn", # required
    #   }
    #   options = {}
    #   response = client.associate_drt_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateDRTRoleResponse]
    def associate_drt_role(params = {}, options = {})
      request = build_request(:associate_drt_role, params)
      request.send_request(options)
    end

    # <p>Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your Amazon Web Services resource to improve responsiveness and accuracy in attack detection and response.  </p>
    #          <p>You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option">Shield Advanced Health-Based Detection</a> in the <i>WAF Developer Guide</i>. </p>
    # @param [Hash, Types::AssociateHealthCheckRequest] params
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to add the health check association to. </p>
    # @option params [String] :health_check_arn
    #   <p>The Amazon Resource Name (ARN) of the health check to associate with the protection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_id: "ProtectionId", # required
    #     health_check_arn: "HealthCheckArn", # required
    #   }
    #   options = {}
    #   response = client.associate_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateHealthCheckResponse]
    def associate_health_check(params = {}, options = {})
      request = build_request(:associate_health_check, params)
      request.send_request(options)
    end

    # <p>Initializes proactive engagement and sets the list of contacts for the Shield Response Team (SRT) to use. You must provide at least one phone number in the emergency contact list. </p>
    #          <p>After you have initialized proactive engagement using this call, to disable or enable proactive engagement, use the calls <code>DisableProactiveEngagement</code> and <code>EnableProactiveEngagement</code>.  </p>
    #          <note>
    #             <p>This call defines the list of email addresses and phone numbers that the SRT can use to contact you for escalations to the SRT and to initiate proactive customer support.</p>
    #             <p>The contacts that you provide in the request replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it to this call.  </p>
    #          </note>
    # @param [Hash, Types::AssociateProactiveEngagementDetailsRequest] params
    # @option params [Array<Types::EmergencyContact>] :emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support. </p>
    #            <p>To enable proactive engagement, the contact list must include at least one phone number.</p>
    #            <note>
    #               <p>The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it here.  </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     emergency_contact_list: [ # required
    #       {
    #         email_address: "EmailAddress", # required
    #         phone_number: "PhoneNumber",
    #         contact_notes: "ContactNotes"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_proactive_engagement_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateProactiveEngagementDetailsResponse]
    def associate_proactive_engagement_details(params = {}, options = {})
      request = build_request(:associate_proactive_engagement_details, params)
      request.send_request(options)
    end

    # <p>Enables Shield Advanced for a specific Amazon Web Services resource. The resource can be an Amazon CloudFront distribution, Amazon Route 53 hosted zone, Global Accelerator standard accelerator, Elastic IP Address, Application Load Balancer, or a Classic Load Balancer. You can protect Amazon EC2 instances and Network Load Balancers by association with protected Amazon EC2 Elastic IP addresses.</p>
    #          <p>You can add protection to only a single resource with each <code>CreateProtection</code> request. You can add protection to multiple resources
    #           at once through the Shield Advanced console at <a href="https://console.aws.amazon.com/wafv2/shieldv2#/">https://console.aws.amazon.com/wafv2/shieldv2#/</a>.
    #               For more information see
    #           <a href="https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html">Getting Started with Shield Advanced</a>
    #               and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html">Adding Shield Advanced protection to Amazon Web Services resources</a>.</p>
    # @param [Hash, Types::CreateProtectionRequest] params
    # @option params [String] :name
    #   <p>Friendly name for the <code>Protection</code> you are creating.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
    #            <p>The ARN should be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Global Accelerator standard accelerator: <code>arn:aws:globalaccelerator::<i>account-id</i>:accelerator/<i>accelerator-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tag key-value pairs for the <a>Protection</a> object that is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProtectionName", # required
    #     resource_arn: "ResourceArn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protection_id: "ProtectionId"
    #   }
    # @return [Types::CreateProtectionResponse]
    def create_protection(params = {}, options = {})
      request = build_request(:create_protection, params)
      request.send_request(options)
    end

    # <p>Creates a grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>
    # @param [Hash, Types::CreateProtectionGroupRequest] params
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    # @option params [String] :aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    # @option params [String] :pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type. </p>
    # @option params [String] :resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. Newly protected resources of this type are automatically added to the group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    # @option params [Array<String>] :members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tag key-value pairs for the protection group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_group_id: "ProtectionGroupId", # required
    #     aggregation: "SUM" # One of: ["SUM", "MEAN", "MAX"], # required
    #     pattern: "ALL" # One of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"], # required
    #     resource_type: "CLOUDFRONT_DISTRIBUTION" # One of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"],
    #     members: ["ResourceArn"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_protection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateProtectionGroupResponse]
    def create_protection_group(params = {}, options = {})
      request = build_request(:create_protection_group, params)
      request.send_request(options)
    end

    # <p>Activates Shield Advanced for an account.</p>
    #          <note>
    #             <p>For accounts that are members of an Organizations organization, Shield Advanced subscriptions are billed against the organization's payer account,
    #               regardless of whether the payer account itself is subscribed. </p>
    #          </note>
    #          <p>When you initially create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period.  You can change this by submitting an <code>UpdateSubscription</code> request. </p>
    # @param [Hash, Types::CreateSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.create_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSubscriptionResponse]
    def create_subscription(params = {}, options = {})
      request = build_request(:create_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes an Shield Advanced <a>Protection</a>.</p>
    # @param [Hash, Types::DeleteProtectionRequest] params
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to be
    #            deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_id: "ProtectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProtectionResponse]
    def delete_protection(params = {}, options = {})
      request = build_request(:delete_protection, params)
      request.send_request(options)
    end

    # <p>Removes the specified protection group.</p>
    # @param [Hash, Types::DeleteProtectionGroupRequest] params
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_group_id: "ProtectionGroupId", # required
    #   }
    #   options = {}
    #   response = client.delete_protection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProtectionGroupResponse]
    def delete_protection_group(params = {}, options = {})
      request = build_request(:delete_protection_group, params)
      request.send_request(options)
    end

    # <p>Removes Shield Advanced from an account. Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>
    # @param [Hash, Types::DeleteSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    # @return [Types::DeleteSubscriptionResponse]
    def delete_subscription(params = {}, options = {})
      request = build_request(:delete_subscription, params)
      request.send_request(options)
    end

    # <p>Describes the details of a DDoS attack. </p>
    # @param [Hash, Types::DescribeAttackRequest] params
    # @option params [String] :attack_id
    #   <p>The unique identifier (ID) for the attack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attack_id: "AttackId", # required
    #   }
    #   options = {}
    #   response = client.describe_attack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attack: {
    #       attack_id: "AttackId",
    #       resource_arn: "ResourceArn",
    #       sub_resources: [
    #         {
    #           type: "IP" # One of: ["IP", "URL"],
    #           id: "String",
    #           attack_vectors: [
    #             {
    #               vector_type: "String", # required
    #               vector_counters: [
    #                 {
    #                   name: "String",
    #                   max: 1.0,
    #                   average: 1.0,
    #                   sum: 1.0,
    #                   n: 1,
    #                   unit: "String"
    #                 }
    #               ]
    #             }
    #           ],
    #           counters: [
    #             {
    #               name: "String",
    #               max: 1.0,
    #               average: 1.0,
    #               sum: 1.0,
    #               n: 1,
    #               unit: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       attack_counters: [
    #         {
    #           name: "String",
    #           max: 1.0,
    #           average: 1.0,
    #           sum: 1.0,
    #           n: 1,
    #           unit: "String"
    #         }
    #       ],
    #       attack_properties: [
    #         {
    #           attack_layer: "NETWORK" # One of: ["NETWORK", "APPLICATION"],
    #           attack_property_identifier: "DESTINATION_URL" # One of: ["DESTINATION_URL", "REFERRER", "SOURCE_ASN", "SOURCE_COUNTRY", "SOURCE_IP_ADDRESS", "SOURCE_USER_AGENT", "WORDPRESS_PINGBACK_REFLECTOR", "WORDPRESS_PINGBACK_SOURCE"],
    #           top_contributors: [
    #             {
    #               name: "String",
    #               value: 1
    #             }
    #           ],
    #           unit: "BITS" # One of: ["BITS", "BYTES", "PACKETS", "REQUESTS"],
    #           total: 1
    #         }
    #       ],
    #       mitigations: [
    #         {
    #           mitigation_name: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeAttackResponse]
    def describe_attack(params = {}, options = {})
      request = build_request(:describe_attack, params)
      request.send_request(options)
    end

    # <p>Provides information about the number and type of attacks Shield has detected in the last year for all resources that belong to your account, regardless of whether you've defined Shield protections for them. This operation is available to Shield customers as well as to Shield Advanced customers.</p>
    #          <p>The operation returns data for the time range of midnight UTC, one year ago, to midnight UTC, today. For example, if the current time is <code>2020-10-26 15:39:32 PDT</code>, equal to <code>2020-10-26 22:39:32 UTC</code>, then the time range for the attack data returned is from <code>2019-10-26 00:00:00 UTC</code> to <code>2020-10-26 00:00:00 UTC</code>. </p>
    #          <p>The time range indicates the period covered by the attack statistics data items.</p>
    # @param [Hash, Types::DescribeAttackStatisticsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_attack_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_range: { # required
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now
    #     },
    #     data_items: [ # required
    #       {
    #         attack_volume: {
    #           bits_per_second: {
    #             max: 1.0, # required
    #           },
    #           packets_per_second: {
    #             max: 1.0, # required
    #           },
    #           requests_per_second: {
    #             max: 1.0, # required
    #           }
    #         },
    #         attack_count: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAttackStatisticsResponse]
    def describe_attack_statistics(params = {}, options = {})
      request = build_request(:describe_attack_statistics, params)
      request.send_request(options)
    end

    # <p>Returns the current role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your Amazon Web Services account while assisting with attack mitigation.</p>
    # @param [Hash, Types::DescribeDRTAccessRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_drt_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_arn: "RoleArn",
    #     log_bucket_list: ["LogBucket"]
    #   }
    # @return [Types::DescribeDRTAccessResponse]
    def describe_drt_access(params = {}, options = {})
      request = build_request(:describe_drt_access, params)
      request.send_request(options)
    end

    # <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    # @param [Hash, Types::DescribeEmergencyContactSettingsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_emergency_contact_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     emergency_contact_list: [
    #       {
    #         email_address: "EmailAddress", # required
    #         phone_number: "PhoneNumber",
    #         contact_notes: "ContactNotes"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEmergencyContactSettingsResponse]
    def describe_emergency_contact_settings(params = {}, options = {})
      request = build_request(:describe_emergency_contact_settings, params)
      request.send_request(options)
    end

    # <p>Lists the details of a <a>Protection</a> object.</p>
    # @param [Hash, Types::DescribeProtectionRequest] params
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to describe. 
    #              You must provide either the <code>ResourceArn</code> of the protected resource or the <code>ProtectionID</code> of the protection, but not both.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the protected Amazon Web Services resource. 
    #              You must provide either the <code>ResourceArn</code> of the protected resource or the <code>ProtectionID</code> of the protection, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_id: "ProtectionId",
    #     resource_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.describe_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protection: {
    #       id: "ProtectionId",
    #       name: "ProtectionName",
    #       resource_arn: "ResourceArn",
    #       health_check_ids: ["HealthCheckId"],
    #       protection_arn: "ResourceArn",
    #       application_layer_automatic_response_configuration: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         action: { # required
    #           block: {
    #           },
    #           count: {
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeProtectionResponse]
    def describe_protection(params = {}, options = {})
      request = build_request(:describe_protection, params)
      request.send_request(options)
    end

    # <p>Returns the specification for the specified protection group.</p>
    # @param [Hash, Types::DescribeProtectionGroupRequest] params
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_group_id: "ProtectionGroupId", # required
    #   }
    #   options = {}
    #   response = client.describe_protection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protection_group: { # required
    #       protection_group_id: "ProtectionGroupId", # required
    #       aggregation: "SUM" # One of: ["SUM", "MEAN", "MAX"], # required
    #       pattern: "ALL" # One of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"], # required
    #       resource_type: "CLOUDFRONT_DISTRIBUTION" # One of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"],
    #       members: ["ResourceArn"], # required
    #       protection_group_arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::DescribeProtectionGroupResponse]
    def describe_protection_group(params = {}, options = {})
      request = build_request(:describe_protection_group, params)
      request.send_request(options)
    end

    # <p>Provides details about the Shield Advanced subscription for an account.</p>
    # @param [Hash, Types::DescribeSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       time_commitment_in_seconds: 1,
    #       auto_renew: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       limits: [
    #         {
    #           type: "String",
    #           max: 1
    #         }
    #       ],
    #       proactive_engagement_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "PENDING"],
    #       subscription_limits: { # required
    #         protection_limits: { # required
    #           protected_resource_type_limits: [ # required
    #             {
    #               type: "String",
    #               max: 1
    #             }
    #           ]
    #         },
    #         protection_group_limits: { # required
    #           max_protection_groups: 1, # required
    #           pattern_type_limits: { # required
    #             arbitrary_pattern_limits: { # required
    #               max_members: 1, # required
    #             }
    #           }
    #         }
    #       },
    #       subscription_arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::DescribeSubscriptionResponse]
    def describe_subscription(params = {}, options = {})
      request = build_request(:describe_subscription, params)
      request.send_request(options)
    end

    # <p>Disable the Shield Advanced automatic application layer DDoS mitigation feature for the protected resource. This
    #        stops Shield Advanced from creating, verifying, and applying WAF rules for attacks that it detects for the resource. </p>
    # @param [Hash, Types::DisableApplicationLayerAutomaticResponseRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the protected resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.disable_application_layer_automatic_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableApplicationLayerAutomaticResponseResponse]
    def disable_application_layer_automatic_response(params = {}, options = {})
      request = build_request(:disable_application_layer_automatic_response, params)
      request.send_request(options)
    end

    # <p>Removes authorization from the Shield Response Team (SRT) to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>
    # @param [Hash, Types::DisableProactiveEngagementRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_proactive_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableProactiveEngagementResponse]
    def disable_proactive_engagement(params = {}, options = {})
      request = build_request(:disable_proactive_engagement, params)
      request.send_request(options)
    end

    # <p>Removes the Shield Response Team's (SRT) access to the specified Amazon S3 bucket containing the logs that you shared previously.</p>
    # @param [Hash, Types::DisassociateDRTLogBucketRequest] params
    # @option params [String] :log_bucket
    #   <p>The Amazon S3 bucket that contains the logs that you want to share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_bucket: "LogBucket", # required
    #   }
    #   options = {}
    #   response = client.disassociate_drt_log_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateDRTLogBucketResponse]
    def disassociate_drt_log_bucket(params = {}, options = {})
      request = build_request(:disassociate_drt_log_bucket, params)
      request.send_request(options)
    end

    # <p>Removes the Shield Response Team's (SRT) access to your Amazon Web Services account.</p>
    # @param [Hash, Types::DisassociateDRTRoleRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_drt_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateDRTRoleResponse]
    def disassociate_drt_role(params = {}, options = {})
      request = build_request(:disassociate_drt_role, params)
      request.send_request(options)
    end

    # <p>Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your Amazon Web Services resource to improve responsiveness and accuracy in attack detection and response. </p>
    #          <p>You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option">Shield Advanced Health-Based Detection</a> in the <i>WAF Developer Guide</i>. </p>
    # @param [Hash, Types::DisassociateHealthCheckRequest] params
    # @option params [String] :protection_id
    #   <p>The unique identifier (ID) for the <a>Protection</a> object to remove the health check association from. </p>
    # @option params [String] :health_check_arn
    #   <p>The Amazon Resource Name (ARN) of the health check that is associated with the protection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_id: "ProtectionId", # required
    #     health_check_arn: "HealthCheckArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateHealthCheckResponse]
    def disassociate_health_check(params = {}, options = {})
      request = build_request(:disassociate_health_check, params)
      request.send_request(options)
    end

    # <p>Enable the Shield Advanced automatic application layer DDoS mitigation for the protected resource. </p>
    #          <note>
    #             <p>This feature is available for Amazon CloudFront distributions and Application Load Balancers only.</p>
    #          </note>
    #          <p>This causes Shield Advanced to create, verify, and apply WAF rules for DDoS attacks that it detects for the
    #        resource. Shield Advanced applies the rules in a Shield rule group inside the web ACL that you've associated
    #            with the resource. For information about how automatic mitigation works and the requirements for using it, see
    #    <a href="https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html">Shield Advanced automatic application layer DDoS mitigation</a>.</p>
    #          <note>
    #             <p>Don't use this action to make changes to automatic mitigation settings when it's already enabled for a resource. Instead, use <a>UpdateApplicationLayerAutomaticResponse</a>.</p>
    #          </note>
    #          <p>To use this feature, you must associate a web ACL with the protected resource. The web ACL must be created using the latest version of WAF (v2). You can associate the web ACL through the Shield Advanced console
    #            at <a href="https://console.aws.amazon.com/wafv2/shieldv2#/">https://console.aws.amazon.com/wafv2/shieldv2#/</a>. For more information,
    #                see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html">Getting Started with Shield Advanced</a>. You can also associate the web ACL to the resource through the WAF console or the WAF API, but you must manage Shield Advanced automatic mitigation through Shield Advanced. For information about WAF, see
    #        <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">WAF Developer Guide</a>.</p>
    # @param [Hash, Types::EnableApplicationLayerAutomaticResponseRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the protected resource.</p>
    # @option params [Types::ResponseAction] :action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     action: { # required
    #       block: {
    #       },
    #       count: {
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.enable_application_layer_automatic_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableApplicationLayerAutomaticResponseResponse]
    def enable_application_layer_automatic_response(params = {}, options = {})
      request = build_request(:enable_application_layer_automatic_response, params)
      request.send_request(options)
    end

    # <p>Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>
    # @param [Hash, Types::EnableProactiveEngagementRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_proactive_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableProactiveEngagementResponse]
    def enable_proactive_engagement(params = {}, options = {})
      request = build_request(:enable_proactive_engagement, params)
      request.send_request(options)
    end

    # <p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>
    # @param [Hash, Types::GetSubscriptionStateRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_subscription_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_state: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #   }
    # @return [Types::GetSubscriptionStateResponse]
    def get_subscription_state(params = {}, options = {})
      request = build_request(:get_subscription_state, params)
      request.send_request(options)
    end

    # <p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time
    #          period.</p>
    # @param [Hash, Types::ListAttacksRequest] params
    # @option params [Array<String>] :resource_arns
    #   <p>The ARNs (Amazon Resource Names) of the resources that were attacked. If you leave this
    #            blank, all applicable resources for this account will be included.</p>
    # @option params [Types::TimeRange] :start_time
    #   <p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
    #              but you can provide the time in any valid <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">timestamp format</a> setting.  </p>
    # @option params [Types::TimeRange] :end_time
    #   <p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
    #              but you can provide the time in any valid <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">timestamp format</a> setting.  </p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #            <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #            <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"],
    #     start_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now
    #     },
    #     end_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now
    #     },
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_attacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attack_summaries: [
    #       {
    #         attack_id: "String",
    #         resource_arn: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         attack_vectors: [
    #           {
    #             vector_type: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAttacksResponse]
    def list_attacks(params = {}, options = {})
      request = build_request(:list_attacks, params)
      request.send_request(options)
    end

    # <p>Retrieves <a>ProtectionGroup</a> objects for the account. You can retrieve all protection groups or you can provide 
    #        filtering criteria and retrieve just the subset of protection groups that match the criteria. </p>
    # @param [Hash, Types::ListProtectionGroupsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #            <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #            <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    # @option params [Types::InclusionProtectionGroupFilters] :inclusion_filters
    #   <p>Narrows the set of protection groups that the call retrieves. You can retrieve a single protection group by its name and you can retrieve all protection groups that are configured with specific pattern or aggregation settings. You can provide up to one criteria per filter type. Shield Advanced returns the protection groups that exactly match all of the search criteria that you provide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     inclusion_filters: {
    #       protection_group_ids: ["ProtectionGroupId"],
    #       patterns: ["ALL" # One of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"]],
    #       resource_types: ["CLOUDFRONT_DISTRIBUTION" # One of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]],
    #       aggregations: ["SUM" # One of: ["SUM", "MEAN", "MAX"]]
    #     }
    #   }
    #   options = {}
    #   response = client.list_protection_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protection_groups: [ # required
    #       {
    #         protection_group_id: "ProtectionGroupId", # required
    #         aggregation: "SUM" # One of: ["SUM", "MEAN", "MAX"], # required
    #         pattern: "ALL" # One of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"], # required
    #         resource_type: "CLOUDFRONT_DISTRIBUTION" # One of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"],
    #         members: ["ResourceArn"], # required
    #         protection_group_arn: "ResourceArn"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListProtectionGroupsResponse]
    def list_protection_groups(params = {}, options = {})
      request = build_request(:list_protection_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves <a>Protection</a> objects for the account. You can retrieve all protections or you can provide 
    #        filtering criteria and retrieve just the subset of protections that match the criteria. </p>
    # @param [Hash, Types::ListProtectionsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #            <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #            <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    # @option params [Types::InclusionProtectionFilters] :inclusion_filters
    #   <p>Narrows the set of protections that the call retrieves. You can retrieve a single protection by providing its name or the ARN (Amazon Resource Name) of its protected resource. You can also retrieve all protections for a specific resource type. You can provide up to one criteria per filter type. Shield Advanced returns protections that exactly match all of the filter criteria that you provide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     inclusion_filters: {
    #       resource_arns: ["ResourceArn"],
    #       protection_names: ["ProtectionName"],
    #       resource_types: ["CLOUDFRONT_DISTRIBUTION" # One of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"]]
    #     }
    #   }
    #   options = {}
    #   response = client.list_protections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protections: [
    #       {
    #         id: "ProtectionId",
    #         name: "ProtectionName",
    #         resource_arn: "ResourceArn",
    #         health_check_ids: ["HealthCheckId"],
    #         protection_arn: "ResourceArn",
    #         application_layer_automatic_response_configuration: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           action: { # required
    #             block: {
    #             },
    #             count: {
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListProtectionsResponse]
    def list_protections(params = {}, options = {})
      request = build_request(:list_protections, params)
      request.send_request(options)
    end

    # <p>Retrieves the resources that are included in the protection group. </p>
    # @param [Hash, Types::ListResourcesInProtectionGroupRequest] params
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,
    #              Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and
    #              providing the token that was returned by the prior call in your request. </p>
    #            <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
    #              setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>
    #            <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>
    #            <p>On your first call to a list operation, leave this setting empty.</p>
    # @option params [Integer] :max_results
    #   <p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
    #            than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value
    #            in the response.</p>
    #            <p>The default setting is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_group_id: "ProtectionGroupId", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resources_in_protection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arns: ["ResourceArn"], # required
    #     next_token: "Token"
    #   }
    # @return [Types::ListResourcesInProtectionGroupResponse]
    def list_resources_in_protection_group(params = {}, options = {})
      request = build_request(:list_resources_in_protection_group, params)
      request.send_request(options)
    end

    # <p>Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in Shield.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Adds or updates tags for a resource in Shield.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that you want to modify or add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes tags from a resource in Shield.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
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

    # <p>Updates an existing Shield Advanced automatic application layer DDoS mitigation configuration for the specified resource.</p>
    # @param [Hash, Types::UpdateApplicationLayerAutomaticResponseRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    # @option params [Types::ResponseAction] :action
    #   <p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the
    #      protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,
    #      when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     action: { # required
    #       block: {
    #       },
    #       count: {
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_application_layer_automatic_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationLayerAutomaticResponseResponse]
    def update_application_layer_automatic_response(params = {}, options = {})
      request = build_request(:update_application_layer_automatic_response, params)
      request.send_request(options)
    end

    # <p>Updates the details of the list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    # @param [Hash, Types::UpdateEmergencyContactSettingsRequest] params
    # @option params [Array<Types::EmergencyContact>] :emergency_contact_list
    #   <p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
    #            <p>If you have proactive engagement enabled, the contact list must include at least one phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     emergency_contact_list: [
    #       {
    #         email_address: "EmailAddress", # required
    #         phone_number: "PhoneNumber",
    #         contact_notes: "ContactNotes"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_emergency_contact_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEmergencyContactSettingsResponse]
    def update_emergency_contact_settings(params = {}, options = {})
      request = build_request(:update_emergency_contact_settings, params)
      request.send_request(options)
    end

    # <p>Updates an existing protection group. A protection group is a grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>
    # @param [Hash, Types::UpdateProtectionGroupRequest] params
    # @option params [String] :protection_group_id
    #   <p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>
    # @option params [String] :aggregation
    #   <p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
    #            <ul>
    #               <li>
    #                  <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
    #               </li>
    #               <li>
    #                  <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
    #               </li>
    #               <li>
    #                  <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>
    #               </li>
    #            </ul>
    # @option params [String] :pattern
    #   <p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>
    # @option params [String] :resource_type
    #   <p>The resource type to include in the protection group. All protected resources of this type are included in the protection group.
    #              You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    # @option params [Array<String>] :members
    #   <p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protection_group_id: "ProtectionGroupId", # required
    #     aggregation: "SUM" # One of: ["SUM", "MEAN", "MAX"], # required
    #     pattern: "ALL" # One of: ["ALL", "ARBITRARY", "BY_RESOURCE_TYPE"], # required
    #     resource_type: "CLOUDFRONT_DISTRIBUTION" # One of: ["CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"],
    #     members: ["ResourceArn"]
    #   }
    #   options = {}
    #   response = client.update_protection_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateProtectionGroupResponse]
    def update_protection_group(params = {}, options = {})
      request = build_request(:update_protection_group, params)
      request.send_request(options)
    end

    # <p>Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.</p>
    #          <note>
    #             <p>For accounts that are members of an Organizations organization, Shield Advanced subscriptions are billed against the organization's payer account,
    #               regardless of whether the payer account itself is subscribed. </p>
    #          </note>
    # @param [Hash, Types::UpdateSubscriptionRequest] params
    # @option params [String] :auto_renew
    #   <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_renew: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSubscriptionResponse]
    def update_subscription(params = {}, options = {})
      request = build_request(:update_subscription, params)
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
      context[:gem_name] = 'aws-sdk-shield'
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
