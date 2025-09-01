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
require 'aws-sdk-core/plugins/json_rpc'

module Aws::OpsWorks
  # An API client for Aws::OpsWorks.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OpsWorks20130218

    add_plugin(::Aws::OpsWorks::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpc)

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
    # @option options [Aws::OpsWorks::EndpointProvider] :endpoint_provider
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

    # <p>Assign a registered instance to a layer.</p>
    #          <ul>
    #             <li>
    #                <p>You can assign registered on-premises instances to any layer type.</p>
    #             </li>
    #             <li>
    #                <p>You can assign registered Amazon EC2 instances only to custom layers.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use this action with instances that were created with OpsWorks Stacks.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an Identity and Access Management
    #           (IAM) user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::AssignInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @option params [Array<String>] :layer_ids
    #   <p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     layer_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.assign_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def assign_instance(params = {}, options = {})
      request = build_request(:assign_instance, params)
      request.send_request(options)
    end

    # <p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must
    #       first be registered with the stack by calling <a>RegisterVolume</a>. After you register the
    #       volume, you must call <a>UpdateVolume</a> to specify a mount point before calling
    #         <code>AssignVolume</code>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage 
    #           permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::AssignVolumeRequest] params
    # @option params [String] :volume_id
    #   <p>The volume ID.</p>
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_id: "String", # required
    #     instance_id: "String"
    #   }
    #   options = {}
    #   response = client.assign_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def assign_volume(params = {}, options = {})
      request = build_request(:assign_volume, params)
      request.send_request(options)
    end

    # <p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The
    #       address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
    #         Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a 
    #           Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::AssociateElasticIpRequest] params
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_ip: "String", # required
    #     instance_id: "String"
    #   }
    #   options = {}
    #   response = client.associate_elastic_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_elastic_ip(params = {}, options = {})
      request = build_request(:associate_elastic_ip, params)
      request.send_request(options)
    end

    # <p>Attaches an Elastic Load Balancing load balancer to a specified layer. OpsWorks Stacks does not support 
    #           Application Load Balancer. You can only use Classic Load Balancer with OpsWorks Stacks. 
    #           For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html">Elastic Load
    #         Balancing</a>.</p>
    #          <note>
    #             <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For
    #         more information, see the <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html">Elastic Load Balancing Developer Guide</a>.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::AttachElasticLoadBalancerRequest] params
    # @option params [String] :elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance's name.</p>
    # @option params [String] :layer_id
    #   <p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_load_balancer_name: "String", # required
    #     layer_id: "String", # required
    #   }
    #   options = {}
    #   response = client.attach_elastic_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_elastic_load_balancer(params = {}, options = {})
      request = build_request(:attach_elastic_load_balancer, params)
      request.send_request(options)
    end

    # <p>Creates a clone of a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a
    #         Stack</a>. By default, all parameters are set to the values used by the parent stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CloneStackRequest] params
    # @option params [String] :source_stack_id
    #   <p>The source stack ID.</p>
    # @option params [String] :name
    #   <p>The cloned stack name. Stack names can be a maximum of 64 characters.</p>
    # @option params [String] :region
    #   <p>The cloned stack Amazon Web Services Region, such as <code>ap-northeast-2</code>. For more information 
    #             about Amazon Web Services Regions, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All
    #             instances are launched into this VPC, and you cannot change the ID later.</p>
    #            <ul>
    #               <li>
    #                  <p>If your account supports EC2 Classic, the default value is no VPC.</p>
    #               </li>
    #               <li>
    #                  <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p>
    #               </li>
    #            </ul>
    #            <p>If the VPC ID corresponds to a default VPC and you have specified either the
    #           <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
    #             OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, OpsWorks Stacks sets
    #         these parameters to the first valid Availability Zone for the specified region and the
    #         corresponding default VPC subnet ID, respectively. </p>
    #            <p>If you specify a nondefault VPC ID, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>It must belong to a VPC in your account that is in the specified region.</p>
    #               </li>
    #               <li>
    #                  <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about how to use OpsWorks Stacks with a VPC, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a
    #           VPC</a>. For more information about default VPC and EC2 Classic, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported
    #           Platforms</a>. </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>
    # @option params [String] :service_role_arn
    #   <p>The stack Identity and Access Management (IAM) role, which allows OpsWorks Stacks to work with Amazon Web Services
    #         resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
    #         existing IAM role. If you create a stack by using the OpsWorkss Stacks console, it creates the role for
    #             you. You can obtain an existing stack's IAM ARN programmatically by calling
    #             <a>DescribePermissions</a>. For more information about IAM ARNs, see 
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #            <note>
    #               <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. 
    #                You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p>
    #            </note>
    # @option params [String] :default_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's 
    #             EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    # @option params [String] :default_os
    #   <p>The stack's operating system, which must be set to one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux
    #           2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #                you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #             Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the parent stack's operating system.
    #         Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #            <note>
    #               <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to 
    #             Windows or Windows to Linux.</p>
    #            </note>
    # @option params [String] :hostname_theme
    #   <p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to
    #         generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
    #         to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
    #         short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    # @option params [String] :default_availability_zone
    #   <p>The cloned stack's default Availability Zone, which must be in the specified region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    #       </p>
    # @option params [String] :default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration 
    #             JSON values. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>
    #            </p>
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the 
    #             Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    # @option params [Types::ChefConfiguration] :chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    # @option params [Boolean] :use_custom_cookbooks
    #   <p>Whether to use custom cookbooks.</p>
    # @option params [Boolean] :use_opsworks_security_groups
    #   <p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>OpsWorks Stacks provides a standard set of security groups, one for each layer, which are
    #         associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
    #         provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
    #         following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with 
    #                 each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot 
    #                 delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - OpsWorks Stacks does not associate built-in security groups with layers. 
    #                 You must create appropriate Amazon EC2 security groups and associate a security group with each 
    #                 layer that you create. However, you can still manually associate a built-in security group with a layer on creation; 
    #                 custom security groups are required only for those layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    # @option params [Types::Source] :custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    # @option params [String] :default_ssh_key_name
    #   <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, 
    #             OpsWorks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    # @option params [Boolean] :clone_permissions
    #   <p>Whether to clone the source stack's permissions.</p>
    # @option params [Array<String>] :clone_app_ids
    #   <p>A list of source stack app IDs to be included in the cloned stack.</p>
    # @option params [String] :default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the cloned
    #         stack, but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    # @option params [String] :agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks
    #         automatically installs new agent versions on the stack's instances as soon as
    #         they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update 
    #                the agent version, you must edit the stack configuration and specify a new version. 
    #                OpsWorks Stacks automatically installs that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>LATEST</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's 
    #             default setting.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_stack_id: "String", # required
    #     name: "String",
    #     region: "String",
    #     vpc_id: "String",
    #     attributes: {
    #       "StackAttributesKeys" => "String"
    #     },
    #     service_role_arn: "String", # required
    #     default_instance_profile_arn: "String",
    #     default_os: "String",
    #     hostname_theme: "String",
    #     default_availability_zone: "String",
    #     default_subnet_id: "String",
    #     custom_json: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String"
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: "String"
    #     },
    #     use_custom_cookbooks: false,
    #     use_opsworks_security_groups: false,
    #     custom_cookbooks_source: {
    #       type: "git" # One of: ["git", "svn", "archive", "s3"],
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String"
    #     },
    #     default_ssh_key_name: "String",
    #     clone_permissions: false,
    #     clone_app_ids: ["String"],
    #     default_root_device_type: "ebs" # One of: ["ebs", "instance-store"],
    #     agent_version: "String"
    #   }
    #   options = {}
    #   response = client.clone_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "String"
    #   }
    # @return [Types::CloneStackResult]
    def clone_stack(params = {}, options = {})
      request = build_request(:clone_stack, params)
      request.send_request(options)
    end

    # <p>Creates an app for a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating
    #       Apps</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CreateAppRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [String] :shortname
    #   <p>The app's short name.</p>
    # @option params [String] :name
    #   <p>The app name.</p>
    # @option params [String] :description
    #   <p>A description of the app.</p>
    # @option params [Array<Types::DataSource>] :data_sources
    #   <p>The app's data source.</p>
    # @option params [String] :type
    #   <p>The app type. Each supported type is associated with a particular layer. For example, PHP
    #             applications are associated with a PHP layer. OpsWorks Stacks deploys an application to those instances
    #         that are members of the corresponding layer. If your app isn't one of the standard types, or
    #         you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
    # @option params [Types::Source] :app_source
    #   <p>A <code>Source</code> object that specifies the app repository.</p>
    # @option params [Array<String>] :domains
    #   <p>The app virtual host settings, with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    # @option params [Boolean] :enable_ssl
    #   <p>Whether to enable SSL for the app.</p>
    # @option params [Types::SslConfiguration] :ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    # @option params [Array<Types::EnvironmentVariable>] :environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    #            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20KB)."</p>
    #            <note>
    #               <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     shortname: "String",
    #     name: "String", # required
    #     description: "String",
    #     data_sources: [
    #       {
    #         type: "String",
    #         arn: "String",
    #         database_name: "String"
    #       }
    #     ],
    #     type: "aws-flow-ruby" # One of: ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"], # required
    #     app_source: {
    #       type: "git" # One of: ["git", "svn", "archive", "s3"],
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String"
    #     },
    #     domains: ["String"],
    #     enable_ssl: false,
    #     ssl_configuration: {
    #       certificate: "String", # required
    #       private_key: "String", # required
    #       chain: "String"
    #     },
    #     attributes: {
    #       "AppAttributesKeys" => "String"
    #     },
    #     environment: [
    #       {
    #         key: "String", # required
    #         value: "String", # required
    #         secure: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "String"
    #   }
    # @return [Types::CreateAppResult]
    def create_app(params = {}, options = {})
      request = build_request(:create_app, params)
      request.send_request(options)
    end

    # <p>Runs deployment or stack commands. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying
    #         Apps</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage
    #       permissions level for the stack, or an attached policy that explicitly grants permissions. For
    #       more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CreateDeploymentRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [String] :app_id
    #   <p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>
    # @option params [Array<String>] :instance_ids
    #   <p>The instance IDs for the deployment targets.</p>
    # @option params [Array<String>] :layer_ids
    #   <p>The layer IDs for the deployment targets.</p>
    # @option params [Types::DeploymentCommand] :command
    #   <p>A <code>DeploymentCommand</code> object that specifies the deployment command and any
    #         associated arguments.</p>
    # @option params [String] :comment
    #   <p>A user-defined comment.</p>
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default 
    #             stack configuration JSON values. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #             Modify the Stack Configuration Attributes</a> and 
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">Overriding Attributes With Custom 
    #                 JSON</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     app_id: "String",
    #     instance_ids: ["String"],
    #     layer_ids: ["String"],
    #     command: { # required
    #       name: "install_dependencies" # One of: ["install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart", "undeploy"], # required
    #       args: {
    #         "String" => ["String"]
    #       }
    #     },
    #     comment: "String",
    #     custom_json: "String"
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "String"
    #   }
    # @return [Types::CreateDeploymentResult]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Creates an instance in a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an
    #         Instance to a Layer</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CreateInstanceRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [Array<String>] :layer_ids
    #   <p>An array that contains the instance's layer IDs.</p>
    # @option params [String] :instance_type
    #   <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
    #         open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
    #         The <b>Size</b> list contains the currently supported types. 
    #             For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>. The parameter values that you use to specify the various types are
    #         in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
    # @option params [String] :auto_scaling_type
    #   <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
    # @option params [String] :hostname
    #   <p>The instance host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    # @option params [String] :os
    #   <p>The instance's operating system, which must be set to one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #   			   <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Not all operating systems are supported with all versions of Chef. For more information about the supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #            <p>The default option is the current Amazon Linux version. If you set this parameter to
    #           <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to
    #         specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. 
    #             For more information about how to use custom AMIs with OpsWorks Stacks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #           Custom AMIs</a>.</p>
    # @option params [String] :ami_id
    #   <p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the
    #         supported operating systems.
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p>
    #            <note>
    #               <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p>
    #            </note>
    # @option params [String] :ssh_key_name
    #   <p>The instance's Amazon EC2 key-pair name.</p>
    # @option params [String] :availability_zone
    #   <p>The instance Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    # @option params [String] :virtualization_type
    #   <p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>
    # @option params [String] :subnet_id
    #   <p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's 
    #             default subnet ID value and direct OpsWorks Stacks to launch the instance in a different subnet.</p>
    # @option params [String] :architecture
    #   <p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not
    #         necessarily support both architectures. For a list of the architectures that are supported by
    #         the different instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and
    #           Types</a>.</p>
    # @option params [String] :root_device_type
    #   <p>The instance root device type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block
    #         devices. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block
    #           Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code> to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    # @option params [Boolean] :ebs_optimized
    #   <p>Whether to create an Amazon EBS-optimized instance.</p>
    # @option params [String] :agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INHERIT</code> - Use the stack's default agent version setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>version_number</i> - Use the specified agent version.
    #           This value overrides the stack's default setting.
    #           To update the agent version, edit the instance configuration and specify a
    #           new version.
    #                OpsWorks Stacks installs that version on the instance.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>INHERIT</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. 
    #             AgentVersion cannot be set to Chef 12.2.</p>
    # @option params [String] :tenancy
    #   <p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, 
    #             inherit tenancy settings from the VPC. The following are valid values for this parameter:  
    #             <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes 
    #             in tenancy options, we recommend that you research tenancy options before choosing them for your instances. 
    #             For more information about dedicated hosts, see 
    #             <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts Overview</a> and 
    #             <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated Hosts</a>. 
    #             For more information about dedicated instances, see 
    #             <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> and 
    #             <a href="http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/">Amazon EC2 Dedicated Instances</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     layer_ids: ["String"], # required
    #     instance_type: "String", # required
    #     auto_scaling_type: "load" # One of: ["load", "timer"],
    #     hostname: "String",
    #     os: "String",
    #     ami_id: "String",
    #     ssh_key_name: "String",
    #     availability_zone: "String",
    #     virtualization_type: "String",
    #     subnet_id: "String",
    #     architecture: "x86_64" # One of: ["x86_64", "i386"],
    #     root_device_type: "ebs" # One of: ["ebs", "instance-store"],
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         no_device: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           snapshot_id: "String",
    #           iops: 1,
    #           volume_size: 1,
    #           volume_type: "gp2" # One of: ["gp2", "io1", "standard"],
    #           delete_on_termination: false
    #         }
    #       }
    #     ],
    #     install_updates_on_boot: false,
    #     ebs_optimized: false,
    #     agent_version: "String",
    #     tenancy: "String"
    #   }
    #   options = {}
    #   response = client.create_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "String"
    #   }
    # @return [Types::CreateInstanceResult]
    def create_instance(params = {}, options = {})
      request = build_request(:create_instance, params)
      request.send_request(options)
    end

    # <p>Creates a layer. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to
    #         Create a Layer</a>.</p>
    #          <note>
    #             <p>You should use <b>CreateLayer</b> for noncustom layer types such as 
    #              PHP App Server only if the stack
    #         does not have an existing layer of that type. A stack can have at most one instance of each
    #         noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A
    #         stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as
    #         many times as you like for that layer type.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must 
    #           have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CreateLayerRequest] params
    # @option params [String] :stack_id
    #   <p>The layer stack ID.</p>
    # @option params [String] :type
    #   <p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. 
    #             Built-in layers are not available in Chef 12 stacks.</p>
    # @option params [String] :name
    #   <p>The layer name, which is used by the console. Layer names can be a maximum of 32 characters.</p>
    # @option params [String] :shortname
    #   <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by 
    #             OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your 
    #             app files are installed. It can have a maximum of 32 characters, which are limited to the alphanumeric 
    #             characters, '-', '_', and '.'.</p>
    #            <p>Built-in layer short names are defined by OpsWorks Stacks. For more information, see the 
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #            <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>
    # @option params [Types::CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   <p>Specifies CloudWatch Logs configuration options for the layer. For more information, 
    #               see <a>CloudWatchLogsLogStream</a>.</p>
    # @option params [String] :custom_instance_profile_arn
    #   <p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information
    #             about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
    # @option params [String] :custom_json
    #   <p>A JSON-formatted string containing custom stack configuration and deployment attributes
    #        to be installed on the layer's instances. For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">
    #             Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the CLI. 
    #       </p>
    # @option params [Array<String>] :custom_security_group_ids
    #   <p>An array containing the layer custom security group IDs.</p>
    # @option params [Array<String>] :packages
    #   <p>An array of <code>Package</code> objects that describes the layer packages.</p>
    # @option params [Array<Types::VolumeConfiguration>] :volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    # @option params [Boolean] :enable_auto_healing
    #   <p>Whether to disable auto healing for the layer.</p>
    # @option params [Boolean] :auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    # @option params [Boolean] :auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    # @option params [Types::Recipes] :custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>To ensure that your
    #           instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p>
    #            </note>
    # @option params [Boolean] :use_ebs_optimized_instances
    #   <p>Whether to use Amazon EBS-optimized instances.</p>
    # @option params [Types::LifecycleEventConfiguration] :lifecycle_event_configuration
    #   <p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to
    #         specify an execution timeout and enable or disable Elastic Load Balancer connection
    #         draining.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     type: "aws-flow-ruby" # One of: ["aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master", "custom"], # required
    #     name: "String", # required
    #     shortname: "String", # required
    #     attributes: {
    #       "LayerAttributesKeys" => "String"
    #     },
    #     cloud_watch_logs_configuration: {
    #       enabled: false,
    #       log_streams: [
    #         {
    #           log_group_name: "String",
    #           datetime_format: "String",
    #           time_zone: "LOCAL" # One of: ["LOCAL", "UTC"],
    #           file: "String",
    #           file_fingerprint_lines: "String",
    #           multi_line_start_pattern: "String",
    #           initial_position: "start_of_file" # One of: ["start_of_file", "end_of_file"],
    #           encoding: "ascii" # One of: ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"],
    #           buffer_duration: 1,
    #           batch_count: 1,
    #           batch_size: 1
    #         }
    #       ]
    #     },
    #     custom_instance_profile_arn: "String",
    #     custom_json: "String",
    #     custom_security_group_ids: ["String"],
    #     packages: ["String"],
    #     volume_configurations: [
    #       {
    #         mount_point: "String", # required
    #         raid_level: 1,
    #         number_of_disks: 1, # required
    #         size: 1, # required
    #         volume_type: "String",
    #         iops: 1,
    #         encrypted: false
    #       }
    #     ],
    #     enable_auto_healing: false,
    #     auto_assign_elastic_ips: false,
    #     auto_assign_public_ips: false,
    #     custom_recipes: {
    #       setup: ["String"],
    #       configure: ["String"],
    #       deploy: ["String"],
    #       undeploy: ["String"],
    #       shutdown: ["String"]
    #     },
    #     install_updates_on_boot: false,
    #     use_ebs_optimized_instances: false,
    #     lifecycle_event_configuration: {
    #       shutdown: {
    #         execution_timeout: 1,
    #         delay_until_elb_connections_drained: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_layer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layer_id: "String"
    #   }
    # @return [Types::CreateLayerResult]
    def create_layer(params = {}, options = {})
      request = build_request(:create_layer, params)
      request.send_request(options)
    end

    # <p>Creates a new stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New
    #         Stack</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CreateStackRequest] params
    # @option params [String] :name
    #   <p>The stack name. Stack names can be a maximum of 64 characters.</p>
    # @option params [String] :region
    #   <p>The stack's Amazon Web Services Region, such as <code>ap-south-1</code>. For more information about
    #             Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #            <note>
    #               <p>In the CLI, this API maps to the <code>--stack-region</code> parameter. If the
    #             <code>--stack-region</code> parameter and the CLI common parameter
    #                       <code>--region</code> are set to the same value, the stack uses a
    #                       <i>regional</i> endpoint. If the <code>--stack-region</code>
    #             parameter is not set, but the CLI <code>--region</code> parameter is, this also
    #                   results in a stack with a <i>regional</i> endpoint. However, if the
    #                       <code>--region</code> parameter is set to <code>us-east-1</code>, and the
    #                       <code>--stack-region</code> parameter is set to one of the following, then the
    #                   stack uses a legacy or <i>classic</i> region: <code>us-west-1,
    #                       us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1,
    #                       ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in
    #                       <code>us-east-1</code>. Only the preceding regions are supported as classic
    #                   regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to
    #             choose the regional endpoint that is closest to where you manage Amazon Web Services, we recommend
    #             that you use regional endpoints for new stacks. The CLI common
    #                       <code>--region</code> parameter always specifies a regional API endpoint; it
    #             cannot be used to specify a classic OpsWorks Stacks region.</p>
    #            </note>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched 
    #             into this VPC. You cannot change the ID later.</p>
    #            <ul>
    #               <li>
    #                  <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p>
    #               </li>
    #            </ul>
    #            <p>If the VPC ID corresponds to a default VPC and you have specified either the
    #           <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
    #             OpsWorks Stacks infers the value of the 
    #             other parameter. If you specify neither parameter, OpsWorks Stacks sets
    #         these parameters to the first valid Availability Zone for the specified region and the
    #         corresponding default VPC subnet ID, respectively.</p>
    #            <p>If you specify a nondefault VPC ID, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>It must belong to a VPC in your account that is in the specified region.</p>
    #               </li>
    #               <li>
    #                  <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about how to use OpsWorks Stacks with a VPC, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a
    #           VPC</a>. For more information about default VPC and EC2-Classic, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported
    #           Platforms</a>. </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    # @option params [String] :service_role_arn
    #   <p>The stack's IAM role, which allows OpsWorks Stacks to work with Amazon Web Services
    #         resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
    #         existing IAM role. For more information about IAM ARNs, see 
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    # @option params [String] :default_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    # @option params [String] :default_os
    #   <p>The stack's default operating system, which is installed on every instance unless you specify a different operating 
    #             system when you create the instance. You can specify one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #           you create instances. For more
    #           information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">
    #           Using Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the current Amazon Linux version.
    #             Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    # @option params [String] :hostname_theme
    #   <p>The stack's host name theme, with spaces replaced by underscores. The theme is used to
    #         generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
    #         to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
    #         short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    # @option params [String] :default_availability_zone
    #   <p>The stack's default Availability Zone, which must be in the specified region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    #       </p>
    # @option params [String] :default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration 
    #             attribute values or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the 
    #             Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is 
    #             currently 12.</p>
    # @option params [Types::ChefConfiguration] :chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    # @option params [Boolean] :use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    # @option params [Boolean] :use_opsworks_security_groups
    #   <p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
    #         provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
    #         following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with each 
    #                 layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot 
    #                 delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - OpsWorks Stacks does not associate built-in security groups with layers. You must create 
    #                 appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still 
    #                 manually associate a built-in security group with a layer on creation; custom security groups are required only for those 
    #                 layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    # @option params [Types::Source] :custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    # @option params [String] :default_ssh_key_name
    #   <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, 
    #             OpsWorks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    # @option params [String] :default_root_device_type
    #   <p>The default root device type. This value is the default for all instances in the stack,
    #         but you can override it when you create an instance. The default option is
    #           <code>instance-store</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    # @option params [String] :agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks
    #           automatically installs new agent versions on the stack's instances as soon as
    #           they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, 
    #                you must edit the stack configuration and specify a new version. OpsWorks Stacks installs 
    #                that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is the most recent release of the agent. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, 
    #            which overrides the stack's default setting.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     region: "String", # required
    #     vpc_id: "String",
    #     attributes: {
    #       "StackAttributesKeys" => "String"
    #     },
    #     service_role_arn: "String", # required
    #     default_instance_profile_arn: "String", # required
    #     default_os: "String",
    #     hostname_theme: "String",
    #     default_availability_zone: "String",
    #     default_subnet_id: "String",
    #     custom_json: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String"
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: "String"
    #     },
    #     use_custom_cookbooks: false,
    #     use_opsworks_security_groups: false,
    #     custom_cookbooks_source: {
    #       type: "git" # One of: ["git", "svn", "archive", "s3"],
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String"
    #     },
    #     default_ssh_key_name: "String",
    #     default_root_device_type: "ebs" # One of: ["ebs", "instance-store"],
    #     agent_version: "String"
    #   }
    #   options = {}
    #   response = client.create_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "String"
    #   }
    # @return [Types::CreateStackResult]
    def create_stack(params = {}, options = {})
      request = build_request(:create_stack, params)
      request.send_request(options)
    end

    # <p>Creates a new user profile.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::CreateUserProfileRequest] params
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN; this can also be a federated user's ARN.</p>
    # @option params [String] :ssh_username
    #   <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
    #             the specified name includes other punctuation marks, OpsWorks Stacks removes them. For example,
    #           <code>my.name</code> is changed to <code>myname</code>. If you do not specify an SSH
    #             user name, OpsWorks Stacks generates one from the IAM user name. </p>
    # @option params [String] :ssh_public_key
    #   <p>The user's public SSH key.</p>
    # @option params [Boolean] :allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Setting an IAM
    #           User's Public SSH Key</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_user_arn: "String", # required
    #     ssh_username: "String",
    #     ssh_public_key: "String",
    #     allow_self_management: false
    #   }
    #   options = {}
    #   response = client.create_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     iam_user_arn: "String"
    #   }
    # @return [Types::CreateUserProfileResult]
    def create_user_profile(params = {}, options = {})
      request = build_request(:create_user_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a specified app.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a 
    #           Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeleteAppRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_app(params = {}, options = {})
      request = build_request(:delete_app, params)
      request.send_request(options)
    end

    # <p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before 
    #           you can delete it.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting
    #         Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage 
    #           permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeleteInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @option params [Boolean] :delete_elastic_ip
    #   <p>Whether to delete the instance Elastic IP address.</p>
    # @option params [Boolean] :delete_volumes
    #   <p>Whether to delete the instance's Amazon EBS volumes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     delete_elastic_ip: false,
    #     delete_volumes: false
    #   }
    #   options = {}
    #   response = client.delete_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_instance(params = {}, options = {})
      request = build_request(:delete_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a specified layer. You must first stop and then delete all associated instances or
    #       unassign registered instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to
    #         Delete a Layer</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a 
    #           Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeleteLayerRequest] params
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_layer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_layer(params = {}, options = {})
      request = build_request(:delete_layer, params)
      request.send_request(options)
    end

    # <p>Deletes a specified stack. You must first delete all instances, layers, and apps or
    #       deregister registered instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a
    #         Stack</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeleteStackRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_stack(params = {}, options = {})
      request = build_request(:delete_stack, params)
      request.send_request(options)
    end

    # <p>Deletes a user profile.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached 
    #           policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeleteUserProfileRequest] params
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_user_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user_profile(params = {}, options = {})
      request = build_request(:delete_user_profile, params)
      request.send_request(options)
    end

    # <p>Deregisters a specified Amazon ECS cluster from a stack.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete">
    #         Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>
    # @param [Hash, Types::DeregisterEcsClusterRequest] params
    # @option params [String] :ecs_cluster_arn
    #   <p>The cluster's Amazon Resource Number (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecs_cluster_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_ecs_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_ecs_cluster(params = {}, options = {})
      request = build_request(:deregister_ecs_cluster, params)
      request.send_request(options)
    end

    # <p>Deregisters a specified Elastic IP address. The address can be registered by another
    #       stack after it is deregistered. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeregisterElasticIpRequest] params
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_ip: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_elastic_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_elastic_ip(params = {}, options = {})
      request = build_request(:deregister_elastic_ip, params)
      request.send_request(options)
    end

    # <p>Deregister an instance from OpsWorks Stacks. The instance can be a registered instance (Amazon EC2 or on-premises) or an instance created with OpsWorks. 
    #           This action removes the instance from the stack and returns it to your control.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeregisterInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_instance(params = {}, options = {})
      request = build_request(:deregister_instance, params)
      request.send_request(options)
    end

    # <p>Deregisters an Amazon RDS instance.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeregisterRdsDbInstanceRequest] params
    # @option params [String] :rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rds_db_instance_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_rds_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_rds_db_instance(params = {}, options = {})
      request = build_request(:deregister_rds_db_instance, params)
      request.send_request(options)
    end

    # <p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
    #         Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DeregisterVolumeRequest] params
    # @option params [String] :volume_id
    #   <p>The OpsWorks Stacks volume ID, which is the GUID that OpsWorks Stacks assigned to the instance 
    #             when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_id: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_volume(params = {}, options = {})
      request = build_request(:deregister_volume, params)
      request.send_request(options)
    end

    # <p>Describes the available OpsWorks Stacks agent versions. You must specify a stack ID or a
    #     configuration manager. <code>DescribeAgentVersions</code> returns a list of available
    #     agent versions for the specified stack or configuration manager.</p>
    # @param [Hash, Types::DescribeAgentVersionsRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.describe_agent_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_versions: [
    #       {
    #         version: "String",
    #         configuration_manager: {
    #           name: "String",
    #           version: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAgentVersionsResult]
    def describe_agent_versions(params = {}, options = {})
      request = build_request(:describe_agent_versions, params)
      request.send_request(options)
    end

    # <p>Requests a description of a specified set of apps.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, 
    #           or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeAppsRequest] params
    # @option params [String] :stack_id
    #   <p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description
    #         of the apps in the specified stack.</p>
    # @option params [Array<String>] :app_ids
    #   <p>An array of app IDs for the apps to be described. If you use this parameter,
    #           <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns
    #         a description of every app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     app_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps: [
    #       {
    #         app_id: "String",
    #         stack_id: "String",
    #         shortname: "String",
    #         name: "String",
    #         description: "String",
    #         data_sources: [
    #           {
    #             type: "String",
    #             arn: "String",
    #             database_name: "String"
    #           }
    #         ],
    #         type: "aws-flow-ruby" # One of: ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"],
    #         app_source: {
    #           type: "git" # One of: ["git", "svn", "archive", "s3"],
    #           url: "String",
    #           username: "String",
    #           password: "String",
    #           ssh_key: "String",
    #           revision: "String"
    #         },
    #         domains: ["String"],
    #         enable_ssl: false,
    #         ssl_configuration: {
    #           certificate: "String", # required
    #           private_key: "String", # required
    #           chain: "String"
    #         },
    #         attributes: {
    #           "AppAttributesKeys" => "String"
    #         },
    #         created_at: "String",
    #         environment: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #             secure: false
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAppsResult]
    def describe_apps(params = {}, options = {})
      request = build_request(:describe_apps, params)
      request.send_request(options)
    end

    # <p>Describes the results of specified commands.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeCommandsRequest] params
    # @option params [String] :deployment_id
    #   <p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a
    #         description of the commands associated with the specified deployment.</p>
    # @option params [String] :instance_id
    #   <p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a
    #         description of the commands associated with the specified instance.</p>
    # @option params [Array<String>] :command_ids
    #   <p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns
    #         a description of the specified commands. Otherwise, it returns a description of every
    #         command.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "String",
    #     instance_id: "String",
    #     command_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_commands(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commands: [
    #       {
    #         command_id: "String",
    #         instance_id: "String",
    #         deployment_id: "String",
    #         created_at: "DateTime",
    #         acknowledged_at: "DateTime",
    #         completed_at: "DateTime",
    #         status: "String",
    #         exit_code: 1,
    #         log_url: "String",
    #         type: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCommandsResult]
    def describe_commands(params = {}, options = {})
      request = build_request(:describe_commands, params)
      request.send_request(options)
    end

    # <p>Requests a description of a specified set of deployments.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeDeploymentsRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID. If you include this parameter, the command returns a
    #         description of the commands associated with the specified stack.</p>
    # @option params [String] :app_id
    #   <p>The app ID. If you include this parameter, the command returns a
    #         description of the commands associated with the specified app.</p>
    # @option params [Array<String>] :deployment_ids
    #   <p>An array of deployment IDs to be described. If you include this parameter,
    #           the command returns a description of the specified deployments.
    #         Otherwise, it returns a description of every deployment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     app_id: "String",
    #     deployment_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         deployment_id: "String",
    #         stack_id: "String",
    #         app_id: "String",
    #         created_at: "DateTime",
    #         completed_at: "DateTime",
    #         duration: 1,
    #         iam_user_arn: "String",
    #         comment: "String",
    #         command: {
    #           name: "install_dependencies" # One of: ["install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart", "undeploy"], # required
    #           args: {
    #             "String" => ["String"]
    #           }
    #         },
    #         status: "String",
    #         custom_json: "String",
    #         instance_ids: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDeploymentsResult]
    def describe_deployments(params = {}, options = {})
      request = build_request(:describe_deployments, params)
      request.send_request(options)
    end

    # <p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID,
    #     you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the
    #           response. However, OpsWorks Stacks currently supports only one cluster per layer, so the result
    #     set has a maximum of one element.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack or an attached policy that explicitly grants
    #       permission. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #          <p>This call accepts only one resource-identifying parameter.</p>
    # @param [Hash, Types::DescribeEcsClustersRequest] params
    # @option params [Array<String>] :ecs_cluster_arns
    #   <p>A list of ARNs, one for each cluster to be described.</p>
    # @option params [String] :stack_id
    #   <p>A stack ID.
    #         <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results,
    #         the response object's<code>NextToken</code> parameter value is set to a token.
    #         To retrieve the next set of results, call <code>DescribeEcsClusters</code>
    #         again and assign that token to the request object's <code>NextToken</code> parameter.
    #         If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #         of results to be returned with a single call. If the number of available results exceeds this maximum, the
    #         response includes a <code>NextToken</code> value that you can assign
    #         to the <code>NextToken</code> request parameter to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecs_cluster_arns: ["String"],
    #     stack_id: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_ecs_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecs_clusters: [
    #       {
    #         ecs_cluster_arn: "String",
    #         ecs_cluster_name: "String",
    #         stack_id: "String",
    #         registered_at: "DateTime"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeEcsClustersResult]
    def describe_ecs_clusters(params = {}, options = {})
      request = build_request(:describe_ecs_clusters, params)
      request.send_request(options)
    end

    # <p>Describes <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeElasticIpsRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
    #         description of the Elastic IP addresses associated with the specified instance.</p>
    # @option params [String] :stack_id
    #   <p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
    #         description of the Elastic IP addresses that are registered with the specified stack.</p>
    # @option params [Array<String>] :ips
    #   <p>An array of Elastic IP addresses to be described. If you include this parameter,
    #           <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses.
    #         Otherwise, it returns a description of every Elastic IP address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String",
    #     stack_id: "String",
    #     ips: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_elastic_ips(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     elastic_ips: [
    #       {
    #         ip: "String",
    #         name: "String",
    #         domain: "String",
    #         region: "String",
    #         instance_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeElasticIpsResult]
    def describe_elastic_ips(params = {}, options = {})
      request = build_request(:describe_elastic_ips, params)
      request.send_request(options)
    end

    # <p>Describes a stack's Elastic Load Balancing instances.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeElasticLoadBalancersRequest] params
    # @option params [String] :stack_id
    #   <p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>
    # @option params [Array<String>] :layer_ids
    #   <p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     layer_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_elastic_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     elastic_load_balancers: [
    #       {
    #         elastic_load_balancer_name: "String",
    #         region: "String",
    #         dns_name: "String",
    #         stack_id: "String",
    #         layer_id: "String",
    #         vpc_id: "String",
    #         availability_zones: ["String"],
    #         subnet_ids: ["String"],
    #         ec2_instance_ids: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeElasticLoadBalancersResult]
    def describe_elastic_load_balancers(params = {}, options = {})
      request = build_request(:describe_elastic_load_balancers, params)
      request.send_request(options)
    end

    # <p>Requests a description of a set of instances.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeInstancesRequest] params
    # @option params [String] :stack_id
    #   <p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
    #         the instances associated with the specified stack.</p>
    # @option params [String] :layer_id
    #   <p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
    #             the instances associated with the specified layer.</p>
    # @option params [Array<String>] :instance_ids
    #   <p>An array of instance IDs to be described. If you use this parameter,
    #           <code>DescribeInstances</code> returns a description of the specified instances. Otherwise,
    #         it returns a description of every instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     layer_id: "String",
    #     instance_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         agent_version: "String",
    #         ami_id: "String",
    #         architecture: "x86_64" # One of: ["x86_64", "i386"],
    #         arn: "String",
    #         auto_scaling_type: "load" # One of: ["load", "timer"],
    #         availability_zone: "String",
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             no_device: "String",
    #             virtual_name: "String",
    #             ebs: {
    #               snapshot_id: "String",
    #               iops: 1,
    #               volume_size: 1,
    #               volume_type: "gp2" # One of: ["gp2", "io1", "standard"],
    #               delete_on_termination: false
    #             }
    #           }
    #         ],
    #         created_at: "DateTime",
    #         ebs_optimized: false,
    #         ec2_instance_id: "String",
    #         ecs_cluster_arn: "String",
    #         ecs_container_instance_arn: "String",
    #         elastic_ip: "String",
    #         hostname: "String",
    #         infrastructure_class: "String",
    #         install_updates_on_boot: false,
    #         instance_id: "String",
    #         instance_profile_arn: "String",
    #         instance_type: "String",
    #         last_service_error_id: "String",
    #         layer_ids: ["String"],
    #         os: "String",
    #         platform: "String",
    #         private_dns: "String",
    #         private_ip: "String",
    #         public_dns: "String",
    #         public_ip: "String",
    #         registered_by: "String",
    #         reported_agent_version: "String",
    #         reported_os: {
    #           family: "String",
    #           name: "String",
    #           version: "String"
    #         },
    #         root_device_type: "ebs" # One of: ["ebs", "instance-store"],
    #         root_device_volume_id: "String",
    #         security_group_ids: ["String"],
    #         ssh_host_dsa_key_fingerprint: "String",
    #         ssh_host_rsa_key_fingerprint: "String",
    #         ssh_key_name: "String",
    #         stack_id: "String",
    #         status: "String",
    #         subnet_id: "String",
    #         tenancy: "String",
    #         virtualization_type: "paravirtual" # One of: ["paravirtual", "hvm"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeInstancesResult]
    def describe_instances(params = {}, options = {})
      request = build_request(:describe_instances, params)
      request.send_request(options)
    end

    # <p>Requests a description of one or more layers in a specified stack.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeLayersRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [Array<String>] :layer_ids
    #   <p>An array of layer IDs that specify the layers to be described. If you omit this parameter,
    #           <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     layer_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_layers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layers: [
    #       {
    #         arn: "String",
    #         stack_id: "String",
    #         layer_id: "String",
    #         type: "aws-flow-ruby" # One of: ["aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master", "custom"],
    #         name: "String",
    #         shortname: "String",
    #         attributes: {
    #           "LayerAttributesKeys" => "String"
    #         },
    #         cloud_watch_logs_configuration: {
    #           enabled: false,
    #           log_streams: [
    #             {
    #               log_group_name: "String",
    #               datetime_format: "String",
    #               time_zone: "LOCAL" # One of: ["LOCAL", "UTC"],
    #               file: "String",
    #               file_fingerprint_lines: "String",
    #               multi_line_start_pattern: "String",
    #               initial_position: "start_of_file" # One of: ["start_of_file", "end_of_file"],
    #               encoding: "ascii" # One of: ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"],
    #               buffer_duration: 1,
    #               batch_count: 1,
    #               batch_size: 1
    #             }
    #           ]
    #         },
    #         custom_instance_profile_arn: "String",
    #         custom_json: "String",
    #         custom_security_group_ids: ["String"],
    #         default_security_group_names: ["String"],
    #         packages: ["String"],
    #         volume_configurations: [
    #           {
    #             mount_point: "String", # required
    #             raid_level: 1,
    #             number_of_disks: 1, # required
    #             size: 1, # required
    #             volume_type: "String",
    #             iops: 1,
    #             encrypted: false
    #           }
    #         ],
    #         enable_auto_healing: false,
    #         auto_assign_elastic_ips: false,
    #         auto_assign_public_ips: false,
    #         default_recipes: {
    #           setup: ["String"],
    #           configure: ["String"],
    #           deploy: ["String"],
    #           undeploy: ["String"],
    #           shutdown: ["String"]
    #         },
    #         custom_recipes: {
    #           setup: ["String"],
    #           configure: ["String"],
    #           deploy: ["String"],
    #           undeploy: ["String"],
    #           shutdown: ["String"]
    #         },
    #         created_at: "DateTime",
    #         install_updates_on_boot: false,
    #         use_ebs_optimized_instances: false,
    #         lifecycle_event_configuration: {
    #           shutdown: {
    #             execution_timeout: 1,
    #             delay_until_elb_connections_drained: false
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLayersResult]
    def describe_layers(params = {}, options = {})
      request = build_request(:describe_layers, params)
      request.send_request(options)
    end

    # <p>Describes load-based auto scaling configurations for specified layers.</p>
    #          <note>
    #             <p>You must specify at least one of the parameters.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeLoadBasedAutoScalingRequest] params
    # @option params [Array<String>] :layer_ids
    #   <p>An array of layer IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_load_based_auto_scaling(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_based_auto_scaling_configurations: [
    #       {
    #         layer_id: "String",
    #         enable: false,
    #         up_scaling: {
    #           instance_count: 1,
    #           thresholds_wait_time: 1,
    #           ignore_metrics_time: 1,
    #           cpu_threshold: 1.0,
    #           memory_threshold: 1.0,
    #           load_threshold: 1.0,
    #           alarms: ["String"]
    #         },
    #         down_scaling: {
    #           instance_count: 1,
    #           thresholds_wait_time: 1,
    #           ignore_metrics_time: 1,
    #           cpu_threshold: 1.0,
    #           memory_threshold: 1.0,
    #           load_threshold: 1.0,
    #           alarms: ["String"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLoadBasedAutoScalingResult]
    def describe_load_based_auto_scaling(params = {}, options = {})
      request = build_request(:describe_load_based_auto_scaling, params)
      request.send_request(options)
    end

    # <p>Describes a user's SSH information.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have self-management
    #       enabled or an attached policy that explicitly grants permissions. For more information about user
    #       permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_my_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_profile: {
    #       iam_user_arn: "String",
    #       name: "String",
    #       ssh_username: "String",
    #       ssh_public_key: "String"
    #     }
    #   }
    # @return [Types::DescribeMyUserProfileResult]
    def describe_my_user_profile(params = {}, options = {})
      request = build_request(:describe_my_user_profile, params)
      request.send_request(options)
    end

    # <p>Describes the operating systems that are supported by OpsWorks Stacks.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_operating_systems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operating_systems: [
    #       {
    #         name: "String",
    #         id: "String",
    #         type: "String",
    #         configuration_managers: [
    #           {
    #             name: "String",
    #             version: "String"
    #           }
    #         ],
    #         reported_name: "String",
    #         reported_version: "String",
    #         supported: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeOperatingSystemsResponse]
    def describe_operating_systems(params = {}, options = {})
      request = build_request(:describe_operating_systems, params)
      request.send_request(options)
    end

    # <p>Describes the permissions for a specified stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribePermissionsRequest] params
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM 
    #             ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_user_arn: "String",
    #     stack_id: "String"
    #   }
    #   options = {}
    #   response = client.describe_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         stack_id: "String",
    #         iam_user_arn: "String",
    #         allow_ssh: false,
    #         allow_sudo: false,
    #         level: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribePermissionsResult]
    def describe_permissions(params = {}, options = {})
      request = build_request(:describe_permissions, params)
      request.send_request(options)
    end

    # <p>Describe an instance's RAID arrays.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeRaidArraysRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns
    #         descriptions of the RAID arrays associated with the specified instance. </p>
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [Array<String>] :raid_array_ids
    #   <p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code>
    #         returns descriptions of the specified arrays. Otherwise, it returns a description of every
    #         array.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String",
    #     stack_id: "String",
    #     raid_array_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_raid_arrays(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     raid_arrays: [
    #       {
    #         raid_array_id: "String",
    #         instance_id: "String",
    #         name: "String",
    #         raid_level: 1,
    #         number_of_disks: 1,
    #         size: 1,
    #         device: "String",
    #         mount_point: "String",
    #         availability_zone: "String",
    #         created_at: "DateTime",
    #         stack_id: "String",
    #         volume_type: "String",
    #         iops: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeRaidArraysResult]
    def describe_raid_arrays(params = {}, options = {})
      request = build_request(:describe_raid_arrays, params)
      request.send_request(options)
    end

    # <p>Describes Amazon RDS instances.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #          <p>This call accepts only one resource-identifying parameter.</p>
    # @param [Hash, Types::DescribeRdsDbInstancesRequest] params
    # @option params [String] :stack_id
    #   <p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered 
    #             Amazon RDS instances.</p>
    # @option params [Array<String>] :rds_db_instance_arns
    #   <p>An array containing the ARNs of the instances to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     rds_db_instance_arns: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_rds_db_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rds_db_instances: [
    #       {
    #         rds_db_instance_arn: "String",
    #         db_instance_identifier: "String",
    #         db_user: "String",
    #         db_password: "String",
    #         region: "String",
    #         address: "String",
    #         engine: "String",
    #         stack_id: "String",
    #         missing_on_rds: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeRdsDbInstancesResult]
    def describe_rds_db_instances(params = {}, options = {})
      request = build_request(:describe_rds_db_instances, params)
      request.send_request(options)
    end

    # <p>Describes OpsWorks Stacks service errors.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #          <p>This call accepts only one resource-identifying parameter.</p>
    # @param [Hash, Types::DescribeServiceErrorsRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
    #         descriptions of the errors associated with the specified stack.</p>
    # @option params [String] :instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
    #         descriptions of the errors associated with the specified instance.</p>
    # @option params [Array<String>] :service_error_ids
    #   <p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code>
    #         returns descriptions of the specified errors. Otherwise, it returns a description of every
    #         error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String",
    #     instance_id: "String",
    #     service_error_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_service_errors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_errors: [
    #       {
    #         service_error_id: "String",
    #         stack_id: "String",
    #         instance_id: "String",
    #         type: "String",
    #         message: "String",
    #         created_at: "DateTime"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServiceErrorsResult]
    def describe_service_errors(params = {}, options = {})
      request = build_request(:describe_service_errors, params)
      request.send_request(options)
    end

    # <p>Requests a description of a stack's provisioning parameters.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeStackProvisioningParametersRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_stack_provisioning_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_installer_url: "String",
    #     parameters: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::DescribeStackProvisioningParametersResult]
    def describe_stack_provisioning_parameters(params = {}, options = {})
      request = build_request(:describe_stack_provisioning_parameters, params)
      request.send_request(options)
    end

    # <p>Describes the number of layers and apps in a specified stack, and the number of instances in
    #       each state, such as <code>running_setup</code> or <code>online</code>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeStackSummaryRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_stack_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_summary: {
    #       stack_id: "String",
    #       name: "String",
    #       arn: "String",
    #       layers_count: 1,
    #       apps_count: 1,
    #       instances_count: {
    #         assigning: 1,
    #         booting: 1,
    #         connection_lost: 1,
    #         deregistering: 1,
    #         online: 1,
    #         pending: 1,
    #         rebooting: 1,
    #         registered: 1,
    #         registering: 1,
    #         requested: 1,
    #         running_setup: 1,
    #         setup_failed: 1,
    #         shutting_down: 1,
    #         start_failed: 1,
    #         stop_failed: 1,
    #         stopped: 1,
    #         stopping: 1,
    #         terminated: 1,
    #         terminating: 1,
    #         unassigning: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeStackSummaryResult]
    def describe_stack_summary(params = {}, options = {})
      request = build_request(:describe_stack_summary, params)
      request.send_request(options)
    end

    # <p>Requests a description of one or more stacks.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeStacksRequest] params
    # @option params [Array<String>] :stack_ids
    #   <p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, and have permissions to get information 
    #             about all stacks, <code>DescribeStacks</code> returns a description of every stack. If the IAM policy that is attached to an IAM 
    #         user limits the <code>DescribeStacks</code> action to specific stack ARNs, this parameter is required, and the user must specify a stack ARN that is allowed by the policy. 
    #             Otherwise, <code>DescribeStacks</code> returns an <code>AccessDenied</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_stacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stacks: [
    #       {
    #         stack_id: "String",
    #         name: "String",
    #         arn: "String",
    #         region: "String",
    #         vpc_id: "String",
    #         attributes: {
    #           "StackAttributesKeys" => "String"
    #         },
    #         service_role_arn: "String",
    #         default_instance_profile_arn: "String",
    #         default_os: "String",
    #         hostname_theme: "String",
    #         default_availability_zone: "String",
    #         default_subnet_id: "String",
    #         custom_json: "String",
    #         configuration_manager: {
    #           name: "String",
    #           version: "String"
    #         },
    #         chef_configuration: {
    #           manage_berkshelf: false,
    #           berkshelf_version: "String"
    #         },
    #         use_custom_cookbooks: false,
    #         use_opsworks_security_groups: false,
    #         custom_cookbooks_source: {
    #           type: "git" # One of: ["git", "svn", "archive", "s3"],
    #           url: "String",
    #           username: "String",
    #           password: "String",
    #           ssh_key: "String",
    #           revision: "String"
    #         },
    #         default_ssh_key_name: "String",
    #         created_at: "DateTime",
    #         default_root_device_type: "ebs" # One of: ["ebs", "instance-store"],
    #         agent_version: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeStacksResult]
    def describe_stacks(params = {}, options = {})
      request = build_request(:describe_stacks, params)
      request.send_request(options)
    end

    # <p>Describes time-based auto scaling configurations for specified instances.</p>
    #          <note>
    #             <p>You must specify at least one of the parameters.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeTimeBasedAutoScalingRequest] params
    # @option params [Array<String>] :instance_ids
    #   <p>An array of instance IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_time_based_auto_scaling(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_based_auto_scaling_configurations: [
    #       {
    #         instance_id: "String",
    #         auto_scaling_schedule: {
    #           monday: {
    #             "Hour" => "Switch"
    #           },
    #           tuesday: {
    #             "Hour" => "Switch"
    #           },
    #           wednesday: {
    #             "Hour" => "Switch"
    #           },
    #           thursday: {
    #             "Hour" => "Switch"
    #           },
    #           friday: {
    #             "Hour" => "Switch"
    #           },
    #           saturday: {
    #             "Hour" => "Switch"
    #           },
    #           sunday: {
    #             "Hour" => "Switch"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTimeBasedAutoScalingResult]
    def describe_time_based_auto_scaling(params = {}, options = {})
      request = build_request(:describe_time_based_auto_scaling, params)
      request.send_request(options)
    end

    # <p>Describe specified users.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeUserProfilesRequest] params
    # @option params [Array<String>] :iam_user_arns
    #   <p>An array of IAM or federated user ARNs that identify the users to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_user_arns: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_user_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_profiles: [
    #       {
    #         iam_user_arn: "String",
    #         name: "String",
    #         ssh_username: "String",
    #         ssh_public_key: "String",
    #         allow_self_management: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeUserProfilesResult]
    def describe_user_profiles(params = {}, options = {})
      request = build_request(:describe_user_profiles, params)
      request.send_request(options)
    end

    # <p>Describes an instance's Amazon EBS volumes.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DescribeVolumesRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions
    #         of the volumes associated with the specified instance.</p>
    # @option params [String] :stack_id
    #   <p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>
    # @option params [String] :raid_array_id
    #   <p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns
    #         descriptions of the volumes associated with the specified RAID array.</p>
    # @option params [Array<String>] :volume_ids
    #   <p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns
    #         descriptions of the specified volumes. Otherwise, it returns a description of every
    #         volume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String",
    #     stack_id: "String",
    #     raid_array_id: "String",
    #     volume_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_volumes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volumes: [
    #       {
    #         volume_id: "String",
    #         ec2_volume_id: "String",
    #         name: "String",
    #         raid_array_id: "String",
    #         instance_id: "String",
    #         status: "String",
    #         size: 1,
    #         device: "String",
    #         mount_point: "String",
    #         region: "String",
    #         availability_zone: "String",
    #         volume_type: "String",
    #         iops: 1,
    #         encrypted: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeVolumesResult]
    def describe_volumes(params = {}, options = {})
      request = build_request(:describe_volumes, params)
      request.send_request(options)
    end

    # <p>Detaches a specified Elastic Load Balancing instance from its layer.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage 
    #           permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DetachElasticLoadBalancerRequest] params
    # @option params [String] :elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance's name.</p>
    # @option params [String] :layer_id
    #   <p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_load_balancer_name: "String", # required
    #     layer_id: "String", # required
    #   }
    #   options = {}
    #   response = client.detach_elastic_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_elastic_load_balancer(params = {}, options = {})
      request = build_request(:detach_elastic_load_balancer, params)
      request.send_request(options)
    end

    # <p>Disassociates an Elastic IP address from its instance. The address remains registered with
    #       the stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::DisassociateElasticIpRequest] params
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_ip: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_elastic_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_elastic_ip(params = {}, options = {})
      request = build_request(:disassociate_elastic_ip, params)
      request.send_request(options)
    end

    # <p>Gets a generated host name for the specified layer, based on the current host name theme.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::GetHostnameSuggestionRequest] params
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_hostname_suggestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layer_id: "String",
    #     hostname: "String"
    #   }
    # @return [Types::GetHostnameSuggestionResult]
    def get_hostname_suggestion(params = {}, options = {})
      request = build_request(:get_hostname_suggestion, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action can be used only with Windows stacks.</p>
    #          </note>
    #          <p>Grants RDP access to a Windows instance for a specified time period.</p>
    # @param [Hash, Types::GrantAccessRequest] params
    # @option params [String] :instance_id
    #   <p>The instance's OpsWorks Stacks ID.</p>
    # @option params [Integer] :valid_for_in_minutes
    #   <p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, 
    #             the user will no longer be able to use the credentials to log in. If the user is logged in at the time, they are 
    #             logged out.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     valid_for_in_minutes: 1
    #   }
    #   options = {}
    #   response = client.grant_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     temporary_credential: {
    #       username: "String",
    #       password: "String",
    #       valid_for_in_minutes: 1,
    #       instance_id: "String"
    #     }
    #   }
    # @return [Types::GrantAccessResult]
    def grant_access(params = {}, options = {})
      request = build_request(:grant_access, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags that are applied to the specified stack or layer.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> 
    #             call.
    #         </p>
    # @option params [String] :next_token
    #   <p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> 
    #             call.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsResult]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Reboots a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
    #         Stopping, and Rebooting Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::RebootInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #   }
    #   options = {}
    #   response = client.reboot_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reboot_instance(params = {}, options = {})
      request = build_request(:reboot_instance, params)
      request.send_request(options)
    end

    # <p>Registers a specified Amazon ECS cluster with a stack. You can register only one
    #       cluster with a stack. A cluster can be registered with only one stack.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html">
    #       Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">
    #       Managing User Permissions</a>.</p>
    # @param [Hash, Types::RegisterEcsClusterRequest] params
    # @option params [String] :ecs_cluster_arn
    #   <p>The cluster's ARN.</p>
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ecs_cluster_arn: "String", # required
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.register_ecs_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ecs_cluster_arn: "String"
    #   }
    # @return [Types::RegisterEcsClusterResult]
    def register_ecs_cluster(params = {}, options = {})
      request = build_request(:register_ecs_cluster, params)
      request.send_request(options)
    end

    # <p>Registers an Elastic IP address with a specified stack. An address can be registered with
    #       only one stack at a time. If the address is already registered, you must first deregister it
    #       by calling <a>DeregisterElasticIp</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::RegisterElasticIpRequest] params
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_ip: "String", # required
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.register_elastic_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     elastic_ip: "String"
    #   }
    # @return [Types::RegisterElasticIpResult]
    def register_elastic_ip(params = {}, options = {})
      request = build_request(:register_elastic_ip, params)
      request.send_request(options)
    end

    # <p>Registers instances that were created outside of OpsWorks Stacks with a specified stack.</p>
    #          <note>
    #             <p>We do not recommend using this action to register instances. The complete registration
    #           operation includes two tasks: installing the OpsWorks Stacks agent on the instance, and registering
    #       the instance with the stack. <code>RegisterInstance</code> handles only the second step. You
    #           should instead use the CLI <code>register</code> command, which performs the entire
    #       registration operation. For more information,
    #       see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html">
    #           Registering an Instance with an OpsWorks Stacks Stack</a>.</p>
    #          </note>
    #          <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> 
    #           API. 
    #       For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance 
    #       type. For more information about requirements for instances that you want to register, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html">
    #           Preparing the Instance</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::RegisterInstanceRequest] params
    # @option params [String] :stack_id
    #   <p>The ID of the stack that the instance is to be registered with.</p>
    # @option params [String] :hostname
    #   <p>The instance's host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    # @option params [String] :public_ip
    #   <p>The instance's public IP address.</p>
    # @option params [String] :private_ip
    #   <p>The instance's private IP address.</p>
    # @option params [String] :rsa_public_key
    #   <p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>
    # @option params [String] :rsa_public_key_fingerprint
    #   <p>The instances public RSA key fingerprint.</p>
    # @option params [Types::InstanceIdentity] :instance_identity
    #   <p>An InstanceIdentity object that contains the instance's identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     hostname: "String",
    #     public_ip: "String",
    #     private_ip: "String",
    #     rsa_public_key: "String",
    #     rsa_public_key_fingerprint: "String",
    #     instance_identity: {
    #       document: "String",
    #       signature: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.register_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "String"
    #   }
    # @return [Types::RegisterInstanceResult]
    def register_instance(params = {}, options = {})
      request = build_request(:register_instance, params)
      request.send_request(options)
    end

    # <p>Registers an Amazon RDS instance with a stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::RegisterRdsDbInstanceRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [String] :rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    # @option params [String] :db_user
    #   <p>The database's master user name.</p>
    # @option params [String] :db_password
    #   <p>The database password.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     rds_db_instance_arn: "String", # required
    #     db_user: "String", # required
    #     db_password: "String", # required
    #   }
    #   options = {}
    #   response = client.register_rds_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_rds_db_instance(params = {}, options = {})
      request = build_request(:register_rds_db_instance, params)
      request.send_request(options)
    end

    # <p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one
    #       stack at a time. If the volume is already registered, you must first deregister it by calling
    #         <a>DeregisterVolume</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::RegisterVolumeRequest] params
    # @option params [String] :ec2_volume_id
    #   <p>The Amazon EBS volume ID.</p>
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ec2_volume_id: "String",
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.register_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_id: "String"
    #   }
    # @return [Types::RegisterVolumeResult]
    def register_volume(params = {}, options = {})
      request = build_request(:register_volume, params)
      request.send_request(options)
    end

    # <p>Specify the load-based auto scaling configuration for a specified layer. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing
    #         Load with Time-based and Load-based Instances</a>.</p>
    #          <note>
    #             <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. 
    #              Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough 
    #              instances to handle the maximum anticipated load.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::SetLoadBasedAutoScalingRequest] params
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    # @option params [Boolean] :enable
    #   <p>Enables load-based auto scaling for the layer.</p>
    # @option params [Types::AutoScalingThresholds] :up_scaling
    #   <p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If
    #             the load exceeds these thresholds for a specified amount of time, OpsWorks Stacks starts a specified
    #         number of instances.</p>
    # @option params [Types::AutoScalingThresholds] :down_scaling
    #   <p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If
    #             the load falls below these thresholds for a specified amount of time, OpsWorks Stacks stops a specified
    #         number of instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_id: "String", # required
    #     enable: false,
    #     up_scaling: {
    #       instance_count: 1,
    #       thresholds_wait_time: 1,
    #       ignore_metrics_time: 1,
    #       cpu_threshold: 1.0,
    #       memory_threshold: 1.0,
    #       load_threshold: 1.0,
    #       alarms: ["String"]
    #     },
    #     down_scaling: {
    #       instance_count: 1,
    #       thresholds_wait_time: 1,
    #       ignore_metrics_time: 1,
    #       cpu_threshold: 1.0,
    #       memory_threshold: 1.0,
    #       load_threshold: 1.0,
    #       alarms: ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.set_load_based_auto_scaling(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_load_based_auto_scaling(params = {}, options = {})
      request = build_request(:set_load_based_auto_scaling, params)
      request.send_request(options)
    end

    # <p>Specifies a user's permissions. For more information, see 
    #           <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and
    #         Permissions</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::SetPermissionRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
    # @option params [Boolean] :allow_ssh
    #   <p>The user is allowed to use SSH to communicate with the instance.</p>
    # @option params [Boolean] :allow_sudo
    #   <p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>
    # @option params [String] :level
    #   <p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deny</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>show</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>iam_only</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about the permissions associated with these levels, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     iam_user_arn: "String", # required
    #     allow_ssh: false,
    #     allow_sudo: false,
    #     level: "String"
    #   }
    #   options = {}
    #   response = client.set_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_permission(params = {}, options = {})
      request = build_request(:set_permission, params)
      request.send_request(options)
    end

    # <p>Specify the time-based auto scaling configuration for a specified instance. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing
    #         Load with Time-based and Load-based Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::SetTimeBasedAutoScalingRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @option params [Types::WeeklyAutoScalingSchedule] :auto_scaling_schedule
    #   <p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     auto_scaling_schedule: {
    #       monday: {
    #         "Hour" => "Switch"
    #       },
    #       tuesday: {
    #         "Hour" => "Switch"
    #       },
    #       wednesday: {
    #         "Hour" => "Switch"
    #       },
    #       thursday: {
    #         "Hour" => "Switch"
    #       },
    #       friday: {
    #         "Hour" => "Switch"
    #       },
    #       saturday: {
    #         "Hour" => "Switch"
    #       },
    #       sunday: {
    #         "Hour" => "Switch"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.set_time_based_auto_scaling(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_time_based_auto_scaling(params = {}, options = {})
      request = build_request(:set_time_based_auto_scaling, params)
      request.send_request(options)
    end

    # <p>Starts a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
    #         Stopping, and Rebooting Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::StartInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #   }
    #   options = {}
    #   response = client.start_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_instance(params = {}, options = {})
      request = build_request(:start_instance, params)
      request.send_request(options)
    end

    # <p>Starts a stack's instances.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::StartStackRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.start_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_stack(params = {}, options = {})
      request = build_request(:start_stack, params)
      request.send_request(options)
    end

    # <p>Stops a specified instance. When you stop a standard instance, the data disappears and must
    #           be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without
    #       losing data. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
    #         Stopping, and Rebooting Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::StopInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @option params [Boolean] :force
    #   <p>Specifies whether to force an instance to stop. If the instance's root device type is <code>ebs</code>, or EBS-backed, 
    #               adding the <code>Force</code> parameter to the <code>StopInstances</code> API call disassociates the OpsWorks Stacks 
    #               instance from EC2, and forces deletion of <i>only</i> the OpsWorks Stacks instance. 
    #               You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the OpsWorks Stacks 
    #               instance with a new one.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.stop_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_instance(params = {}, options = {})
      request = build_request(:stop_instance, params)
      request.send_request(options)
    end

    # <p>Stops a specified stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::StopStackRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_stack(params = {}, options = {})
      request = build_request(:stop_stack, params)
      request.send_request(options)
    end

    # <p>Apply cost-allocation tags to a specified stack or layer in OpsWorks Stacks. For more information about how 
    #           tagging works, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html">Tags</a> in the OpsWorks User Guide.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to a stack or layer.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, 
    #                 or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, 
    #                 or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 40 tags is allowed for any resource.</p>
    #               </li>
    #            </ul>
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Unassigns a registered instance from all layers that are using the instance. 
    #           The instance remains in the stack as an unassigned instance, and can be assigned to 
    #           another layer as needed. You cannot use this action with instances that were created 
    #           with OpsWorks Stacks.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must 
    #           have a Manage permissions level for the stack or an attached policy that explicitly 
    #           grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UnassignInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #   }
    #   options = {}
    #   response = client.unassign_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unassign_instance(params = {}, options = {})
      request = build_request(:unassign_instance, params)
      request.send_request(options)
    end

    # <p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
    #         Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UnassignVolumeRequest] params
    # @option params [String] :volume_id
    #   <p>The volume ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_id: "String", # required
    #   }
    #   options = {}
    #   response = client.unassign_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unassign_volume(params = {}, options = {})
      request = build_request(:unassign_volume, params)
      request.send_request(options)
    end

    # <p>Removes tags from a specified stack or layer.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of tags to be removed from a stack or layer.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a specified app.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage
    #       permissions level for the stack, or an attached policy that explicitly grants permissions. For
    #       more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateAppRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :name
    #   <p>The app name.</p>
    # @option params [String] :description
    #   <p>A description of the app.</p>
    # @option params [Array<Types::DataSource>] :data_sources
    #   <p>The app's data sources.</p>
    # @option params [String] :type
    #   <p>The app type.</p>
    # @option params [Types::Source] :app_source
    #   <p>A <code>Source</code> object that specifies the app repository.</p>
    # @option params [Array<String>] :domains
    #   <p>The app's virtual host settings, with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    # @option params [Boolean] :enable_ssl
    #   <p>Whether SSL is enabled for the app.</p>
    # @option params [Types::SslConfiguration] :ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    # @option params [Array<Types::EnvironmentVariable>] :environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instances.For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    #            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - 
    #             which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most 
    #             if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20 KB)."</p>
    #            <note>
    #               <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     name: "String",
    #     description: "String",
    #     data_sources: [
    #       {
    #         type: "String",
    #         arn: "String",
    #         database_name: "String"
    #       }
    #     ],
    #     type: "aws-flow-ruby" # One of: ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"],
    #     app_source: {
    #       type: "git" # One of: ["git", "svn", "archive", "s3"],
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String"
    #     },
    #     domains: ["String"],
    #     enable_ssl: false,
    #     ssl_configuration: {
    #       certificate: "String", # required
    #       private_key: "String", # required
    #       chain: "String"
    #     },
    #     attributes: {
    #       "AppAttributesKeys" => "String"
    #     },
    #     environment: [
    #       {
    #         key: "String", # required
    #         value: "String", # required
    #         secure: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_app(params = {}, options = {})
      request = build_request(:update_app, params)
      request.send_request(options)
    end

    # <p>Updates a registered Elastic IP address's name. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateElasticIpRequest] params
    # @option params [String] :elastic_ip
    #   <p>The IP address for which you want to update the name.</p>
    # @option params [String] :name
    #   <p>The new name, which can be a maximum of 32 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     elastic_ip: "String", # required
    #     name: "String"
    #   }
    #   options = {}
    #   response = client.update_elastic_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_elastic_ip(params = {}, options = {})
      request = build_request(:update_elastic_ip, params)
      request.send_request(options)
    end

    # <p>Updates a specified instance.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    # @option params [Array<String>] :layer_ids
    #   <p>The instance's layer IDs.</p>
    # @option params [String] :instance_type
    #   <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
    #         open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
    #         The <b>Size</b> list contains the currently supported types. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>. The parameter values that you use to specify the various types are
    #         in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
    # @option params [String] :auto_scaling_type
    #   <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
    # @option params [String] :hostname
    #   <p>The instance host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    # @option params [String] :os
    #   <p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using 
    #             a custom AMI.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux
    #           2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #            <p>The default option is the current Amazon Linux version. If you set this parameter to
    #           <code>Custom</code>, you must use the AmiId parameter to
    #             specify the custom AMI that you want to use. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #           Custom AMIs</a>.</p>
    #            <note>
    #               <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p>
    #            </note>
    # @option params [String] :ami_id
    #   <p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the 
    #             instance is already using. 
    #             You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using 
    #             custom AMIs.
    #         </p>
    # @option params [String] :ssh_key_name
    #   <p>The instance's Amazon EC2 key name.</p>
    # @option params [String] :architecture
    #   <p>The instance architecture. Instance types do not necessarily support both architectures. For
    #         a list of the architectures that are supported by the different instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>.</p>
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    # @option params [Boolean] :ebs_optimized
    #   <p>This property cannot be updated.</p>
    # @option params [String] :agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INHERIT</code> - Use the stack's default agent version setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>version_number</i> - Use the specified agent version.
    #           This value overrides the stack's default setting.
    #           To update the agent version, you must edit the instance configuration and specify a
    #           new version.
    #                OpsWorks Stacks installs that version on the instance.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>INHERIT</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p>
    #            <p>AgentVersion cannot be set to Chef 12.2.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     layer_ids: ["String"],
    #     instance_type: "String",
    #     auto_scaling_type: "load" # One of: ["load", "timer"],
    #     hostname: "String",
    #     os: "String",
    #     ami_id: "String",
    #     ssh_key_name: "String",
    #     architecture: "x86_64" # One of: ["x86_64", "i386"],
    #     install_updates_on_boot: false,
    #     ebs_optimized: false,
    #     agent_version: "String"
    #   }
    #   options = {}
    #   response = client.update_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_instance(params = {}, options = {})
      request = build_request(:update_instance, params)
      request.send_request(options)
    end

    # <p>Updates a specified layer.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateLayerRequest] params
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    # @option params [String] :name
    #   <p>The layer name, which is used by the console. Layer names can be a maximum of 32 characters.</p>
    # @option params [String] :shortname
    #   <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by 
    #             OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files 
    #             are installed. It can have a maximum of 32 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p>
    #            <p>Built-in layer short names are defined by OpsWorks Stacks. For more information, see the 
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer reference</a> in the OpsWorks User Guide.
    #         </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    # @option params [Types::CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   <p>Specifies CloudWatch Logs configuration options for the layer. For more information, 
    #             see <a>CloudWatchLogsLogStream</a>.</p>
    # @option params [String] :custom_instance_profile_arn
    #   <p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more
    #             information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    # @option params [String] :custom_json
    #   <p>A JSON-formatted string containing custom stack configuration and deployment attributes
    #         to be installed on the layer's instances. For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">
    #           Using Custom JSON</a>.
    #       </p>
    # @option params [Array<String>] :custom_security_group_ids
    #   <p>An array containing the layer's custom security group IDs.</p>
    # @option params [Array<String>] :packages
    #   <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
    # @option params [Array<Types::VolumeConfiguration>] :volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    # @option params [Boolean] :enable_auto_healing
    #   <p>Whether to disable auto healing for the layer.</p>
    # @option params [Boolean] :auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    # @option params [Boolean] :auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    # @option params [Types::Recipes] :custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    # @option params [Boolean] :use_ebs_optimized_instances
    #   <p>Whether to use Amazon EBS-optimized instances.</p>
    # @option params [Types::LifecycleEventConfiguration] :lifecycle_event_configuration
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_id: "String", # required
    #     name: "String",
    #     shortname: "String",
    #     attributes: {
    #       "LayerAttributesKeys" => "String"
    #     },
    #     cloud_watch_logs_configuration: {
    #       enabled: false,
    #       log_streams: [
    #         {
    #           log_group_name: "String",
    #           datetime_format: "String",
    #           time_zone: "LOCAL" # One of: ["LOCAL", "UTC"],
    #           file: "String",
    #           file_fingerprint_lines: "String",
    #           multi_line_start_pattern: "String",
    #           initial_position: "start_of_file" # One of: ["start_of_file", "end_of_file"],
    #           encoding: "ascii" # One of: ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"],
    #           buffer_duration: 1,
    #           batch_count: 1,
    #           batch_size: 1
    #         }
    #       ]
    #     },
    #     custom_instance_profile_arn: "String",
    #     custom_json: "String",
    #     custom_security_group_ids: ["String"],
    #     packages: ["String"],
    #     volume_configurations: [
    #       {
    #         mount_point: "String", # required
    #         raid_level: 1,
    #         number_of_disks: 1, # required
    #         size: 1, # required
    #         volume_type: "String",
    #         iops: 1,
    #         encrypted: false
    #       }
    #     ],
    #     enable_auto_healing: false,
    #     auto_assign_elastic_ips: false,
    #     auto_assign_public_ips: false,
    #     custom_recipes: {
    #       setup: ["String"],
    #       configure: ["String"],
    #       deploy: ["String"],
    #       undeploy: ["String"],
    #       shutdown: ["String"]
    #     },
    #     install_updates_on_boot: false,
    #     use_ebs_optimized_instances: false,
    #     lifecycle_event_configuration: {
    #       shutdown: {
    #         execution_timeout: 1,
    #         delay_until_elb_connections_drained: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_layer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_layer(params = {}, options = {})
      request = build_request(:update_layer, params)
      request.send_request(options)
    end

    # <p>Updates a user's SSH public key.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have self-management
    #       enabled or an attached policy that explicitly grants permissions. For more information about user
    #       permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateMyUserProfileRequest] params
    # @option params [String] :ssh_public_key
    #   <p>The user's SSH public key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ssh_public_key: "String"
    #   }
    #   options = {}
    #   response = client.update_my_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_my_user_profile(params = {}, options = {})
      request = build_request(:update_my_user_profile, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon RDS instance.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateRdsDbInstanceRequest] params
    # @option params [String] :rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    # @option params [String] :db_user
    #   <p>The master user name.</p>
    # @option params [String] :db_password
    #   <p>The database password.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rds_db_instance_arn: "String", # required
    #     db_user: "String",
    #     db_password: "String"
    #   }
    #   options = {}
    #   response = client.update_rds_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_rds_db_instance(params = {}, options = {})
      request = build_request(:update_rds_db_instance, params)
      request.send_request(options)
    end

    # <p>Updates a specified stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateStackRequest] params
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    # @option params [String] :name
    #   <p>The stack's new name. Stack names can be a maximum of 64 characters.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    # @option params [String] :service_role_arn
    #   <p>Do not use this parameter. You cannot update a stack's service role.</p>
    # @option params [String] :default_instance_profile_arn
    #   <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    # @option params [String] :default_os
    #   <p>The stack's operating system, which must be set to one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #                you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #             Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the stack's current operating system.
    #             Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    # @option params [String] :hostname_theme
    #   <p>The stack's new host name theme, with spaces replaced by underscores.
    #         The theme is used to generate host names for the stack's instances.
    #         By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to 
    #             the
    #         layer's short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    # @option params [String] :default_availability_zone
    #   <p>The stack's default Availability Zone, which must be in the
    #         stack's region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see <a>CreateStack</a>. </p>
    # @option params [String] :default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration 
    #             JSON values or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the 
    #             Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    # @option params [Types::ChefConfiguration] :chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    # @option params [Boolean] :use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    # @option params [Types::Source] :custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    # @option params [String] :default_ssh_key_name
    #   <p>A default Amazon EC2 key-pair name. The default value is
    #         <code>none</code>. If you specify a key-pair name,
    #             OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    # @option params [String] :default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the stack,
    #         but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    # @option params [Boolean] :use_opsworks_security_groups
    #   <p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to
    #         provide your own custom security groups
    #         instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has
    #         the following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with each 
    #                 layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot 
    #                 delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - OpsWorks Stacks does not associate built-in security groups with layers. You must create 
    #                 appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still 
    #                 manually associate a built-in security group with a layer on. Custom security groups are required only for those layers 
    #                 that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    # @option params [String] :agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks
    #           automatically installs new agent versions on the stack's instances as soon as
    #           they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must 
    #                edit the stack configuration and specify a new version. OpsWorks Stacks installs that version 
    #                on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>LATEST</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. 
    #             AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default 
    #             setting.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_id: "String", # required
    #     name: "String",
    #     attributes: {
    #       "StackAttributesKeys" => "String"
    #     },
    #     service_role_arn: "String",
    #     default_instance_profile_arn: "String",
    #     default_os: "String",
    #     hostname_theme: "String",
    #     default_availability_zone: "String",
    #     default_subnet_id: "String",
    #     custom_json: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String"
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: "String"
    #     },
    #     use_custom_cookbooks: false,
    #     custom_cookbooks_source: {
    #       type: "git" # One of: ["git", "svn", "archive", "s3"],
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String"
    #     },
    #     default_ssh_key_name: "String",
    #     default_root_device_type: "ebs" # One of: ["ebs", "instance-store"],
    #     use_opsworks_security_groups: false,
    #     agent_version: "String"
    #   }
    #   options = {}
    #   response = client.update_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_stack(params = {}, options = {})
      request = build_request(:update_stack, params)
      request.send_request(options)
    end

    # <p>Updates a specified user profile.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateUserProfileRequest] params
    # @option params [String] :iam_user_arn
    #   <p>The user IAM ARN. This can also be a federated user's ARN.</p>
    # @option params [String] :ssh_username
    #   <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
    #             the specified name includes other punctuation marks, OpsWorks Stacks removes them. For example,
    #           <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH
    #             user name, OpsWorks Stacks generates one from the IAM user name. </p>
    # @option params [String] :ssh_public_key
    #   <p>The user's new SSH public key.</p>
    # @option params [Boolean] :allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User
    #           Permissions</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_user_arn: "String", # required
    #     ssh_username: "String",
    #     ssh_public_key: "String",
    #     allow_self_management: false
    #   }
    #   options = {}
    #   response = client.update_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_profile(params = {}, options = {})
      request = build_request(:update_user_profile, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon EBS volume's name or mount point. For more information, see 
    #           <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    # @param [Hash, Types::UpdateVolumeRequest] params
    # @option params [String] :volume_id
    #   <p>The volume ID.</p>
    # @option params [String] :name
    #   <p>The new name. Volume names can be a maximum of 128 characters.</p>
    # @option params [String] :mount_point
    #   <p>The new mount point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_id: "String", # required
    #     name: "String",
    #     mount_point: "String"
    #   }
    #   options = {}
    #   response = client.update_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_volume(params = {}, options = {})
      request = build_request(:update_volume, params)
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
      context[:gem_name] = 'aws-sdk-opsworks'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        app_exists: Waiters::AppExists,
        deployment_successful: Waiters::DeploymentSuccessful,
        instance_online: Waiters::InstanceOnline,
        instance_registered: Waiters::InstanceRegistered,
        instance_stopped: Waiters::InstanceStopped,
        instance_terminated: Waiters::InstanceTerminated
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
