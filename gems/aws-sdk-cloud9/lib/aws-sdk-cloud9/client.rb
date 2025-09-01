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

module Aws::Cloud9
  # An API client for Aws::Cloud9.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSCloud9WorkspaceManagementService

    add_plugin(::Aws::Cloud9::Plugins::Endpoint)
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
    # @option options [Aws::Cloud9::EndpointProvider] :endpoint_provider
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

    # <p>Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and
    #       then connects from the instance to the environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::CreateEnvironmentEC2Request] params
    # @option params [String] :name
    #   <p>The name of the environment to create.</p>
    #            <p>This name is visible to other IAM users in the same Amazon Web Services account.</p>
    # @option params [String] :description
    #   <p>The description of the environment to create.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive string that helps Cloud9 to ensure this operation completes no
    #         more than one time.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Client Tokens</a> in the
    #           <i>Amazon EC2 API Reference</i>.</p>
    # @option params [String] :instance_type
    #   <p>The type of instance to connect to the environment (for example,
    #         <code>t2.micro</code>).</p>
    # @option params [String] :subnet_id
    #   <p>The ID of the subnet in Amazon VPC that Cloud9 will use to communicate with the Amazon EC2
    #         instance.</p>
    # @option params [String] :image_id
    #   <p>The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance.
    #         To choose an AMI for the instance, you must specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM)
    #         path.</p>
    #            <p></p>
    #            <p>We recommend using Amazon Linux 2023 as the AMI to create your environment as it is fully
    #         supported.</p>
    #            <p>From December 16, 2024, Ubuntu 18.04 will be removed from the list of available
    #           <code>imageIds</code> for Cloud9. This change is necessary as Ubuntu 18.04 has ended standard
    #         support on May 31, 2023. This change will only affect direct API consumers, and not Cloud9
    #         console users.</p>
    #            <p>Since Ubuntu 18.04 has ended standard support as of May 31, 2023, we recommend you choose
    #         Ubuntu 22.04.</p>
    #            <p>
    #               <b>AMI aliases </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Linux 2: <code>amazonlinux-2-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Linux 2023 (recommended): <code>amazonlinux-2023-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 18.04: <code>ubuntu-18.04-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 22.04: <code>ubuntu-22.04-x86_64</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SSM paths</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Linux 2:
    #             <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Linux 2023 (recommended):
    #               <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 18.04:
    #             <code>resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 22.04:
    #             <code>resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :automatic_stop_time_minutes
    #   <p>The number of minutes until the running instance is shut down after the environment has
    #         last been used.</p>
    # @option params [String] :owner_arn
    #   <p>The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any
    #         IAM principal. If this value is not specified, the ARN defaults to this environment's
    #         creator.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key-value pairs that will be associated with the new Cloud9 development
    #         environment.</p>
    # @option params [String] :connection_type
    #   <p>The connection type used for connecting to an Amazon EC2 environment. Valid values are
    #           <code>CONNECT_SSH</code> (default) and <code>CONNECT_SSM</code> (connected through
    #         Amazon EC2 Systems Manager).</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html">Accessing no-ingress EC2 instances with
    #           Amazon EC2 Systems Manager</a> in the <i>Cloud9 User Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    # @example CreateEnvironmentEC2
    #   
    #   params = {
    #     name: "my-demo-environment",
    #     description: "This is my demonstration environment.",
    #     instance_type: "t2.micro",
    #     image_id: "amazonlinux-2023-x86_64",
    #     subnet_id: "subnet-6300cd1b",
    #     automatic_stop_time_minutes: 60,
    #     owner_arn: "arn:aws:iam::123456789012:user/MyDemoUser"
    #   }
    #   options = {}
    #   response = client.create_environment_ec2(params, options)
    #   response.to_h #=>
    #   {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #     description: "EnvironmentDescription",
    #     client_request_token: "ClientRequestToken",
    #     instance_type: "InstanceType", # required
    #     subnet_id: "SubnetId",
    #     image_id: "ImageId", # required
    #     automatic_stop_time_minutes: 1,
    #     owner_arn: "UserArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     connection_type: "CONNECT_SSH" # One of: ["CONNECT_SSH", "CONNECT_SSM"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_environment_ec2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "EnvironmentId"
    #   }
    # @return [Types::CreateEnvironmentEC2Result]
    def create_environment_ec2(params = {}, options = {})
      request = build_request(:create_environment_ec2, params)
      request.send_request(options)
    end

    # <p>Adds an environment member to an Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::CreateEnvironmentMembershipRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment that contains the environment member you want to add.</p>
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member you want to add.</p>
    # @option params [String] :permissions
    #   <p>The type of environment member permissions you want to associate with this environment
    #         member. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    # @example CreateEnvironmentMembership
    #   
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser",
    #     permissions: read-write
    #   }
    #   options = {}
    #   response = client.create_environment_membership(params, options)
    #   response.to_h #=>
    #   {
    #     membership: {
    #       environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #       permissions: read-write,
    #       user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser",
    #       user_id: "AIDAJ3BA6O2FMJWCWXHEX"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #     permissions: "read-write" # One of: ["read-write", "read-only"], # required
    #   }
    #   options = {}
    #   response = client.create_environment_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership: { # required
    #       permissions: "owner" # One of: ["owner", "read-write", "read-only"], # required
    #       user_id: "String", # required
    #       user_arn: "UserArn", # required
    #       environment_id: "EnvironmentId", # required
    #       last_access: Time.now
    #     }
    #   }
    # @return [Types::CreateEnvironmentMembershipResult]
    def create_environment_membership(params = {}, options = {})
      request = build_request(:create_environment_membership, params)
      request.send_request(options)
    end

    # <p>Deletes an Cloud9 development environment. If an Amazon EC2 instance is connected to the
    #       environment, also terminates the instance.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::DeleteEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to delete.</p>
    # @example DeleteEnvironment
    #   
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX"
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEnvironmentResult]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deletes an environment member from a development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::DeleteEnvironmentMembershipRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to delete the environment member from.</p>
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member to delete from the
    #         environment.</p>
    # @example DeleteEnvironmentMembership
    #   
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser"
    #   }
    #   options = {}
    #   response = client.delete_environment_membership(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEnvironmentMembershipResult]
    def delete_environment_membership(params = {}, options = {})
      request = build_request(:delete_environment_membership, params)
      request.send_request(options)
    end

    # <p>Gets information about environment members for an Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::DescribeEnvironmentMembershipsRequest] params
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of an individual environment member to get information
    #         about. If no value is specified, information about all environment members are
    #         returned.</p>
    # @option params [String] :environment_id
    #   <p>The ID of the environment to get environment member information about.</p>
    # @option params [Array<String>] :permissions
    #   <p>The type of environment member permissions to get information about. Available values
    #         include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>owner</code>: Owns the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #            <p>If no value is specified, information about all environment members are returned.</p>
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 25 items in the list, only the first 25
    #         items are returned, along with a unique string called a <i>next token</i>. To
    #         get the next batch of items in the list, call this operation again, adding the next token to
    #         the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment members to get information about.</p>
    # @example DescribeEnvironmentMemberships2
    #   # The following example gets information about the owner of the specified development environment.
    #   params = {
    #     permissions: [
    #       owner
    #     ],
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX"
    #   }
    #   options = {}
    #   response = client.describe_environment_memberships(params, options)
    #   response.to_h #=>
    #   {
    #     memberships: [
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #         permissions: owner,
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser",
    #         user_id: "AIDAJNUEDQAQWFELJDLEX"
    #       }
    #     ]
    #   }
    # @example DescribeEnvironmentMemberships3
    #   # The following example gets development environment membership information for the specified user.
    #   params = {
    #     user_arn: "arn:aws:iam::123456789012:user/MyDemoUser"
    #   }
    #   options = {}
    #   response = client.describe_environment_memberships(params, options)
    #   response.to_h #=>
    #   {
    #     memberships: [
    #       {
    #         environment_id: "10a75714bd494714929e7f5ec4125aEX",
    #         last_access: Time.parse("2018-01-19T11:06:13Z"),
    #         permissions: owner,
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser",
    #         user_id: "AIDAJNUEDQAQWFELJDLEX"
    #       },
    #       {
    #         environment_id: "12bfc3cd537f41cb9776f8af5525c9EX",
    #         last_access: Time.parse("2018-01-19T11:39:19Z"),
    #         permissions: owner,
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser",
    #         user_id: "AIDAJNUEDQAQWFELJDLEX"
    #       }
    #     ]
    #   }
    # @example DescribeEnvironmentMemberships1
    #   # The following example gets information about all of the environment members for the specified development environment.
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX"
    #   }
    #   options = {}
    #   response = client.describe_environment_memberships(params, options)
    #   response.to_h #=>
    #   {
    #     memberships: [
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #         permissions: read-write,
    #         user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser",
    #         user_id: "AIDAJ3BA6O2FMJWCWXHEX"
    #       },
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #         permissions: owner,
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser",
    #         user_id: "AIDAJNUEDQAQWFELJDLEX"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_arn: "UserArn",
    #     environment_id: "EnvironmentId",
    #     permissions: ["owner" # One of: ["owner", "read-write", "read-only"]],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_environment_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memberships: [
    #       {
    #         permissions: "owner" # One of: ["owner", "read-write", "read-only"], # required
    #         user_id: "String", # required
    #         user_arn: "UserArn", # required
    #         environment_id: "EnvironmentId", # required
    #         last_access: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeEnvironmentMembershipsResult]
    def describe_environment_memberships(params = {}, options = {})
      request = build_request(:describe_environment_memberships, params)
      request.send_request(options)
    end

    # <p>Gets status information for an Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::DescribeEnvironmentStatusRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to get status information about.</p>
    # @example DescribeEnvironmentStatus
    #   
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX"
    #   }
    #   options = {}
    #   response = client.describe_environment_status(params, options)
    #   response.to_h #=>
    #   {
    #     status: ready,
    #     message: "Environment is ready to use"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.describe_environment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "error" # One of: ["error", "creating", "connecting", "ready", "stopping", "stopped", "deleting"], # required
    #     message: "String", # required
    #   }
    # @return [Types::DescribeEnvironmentStatusResult]
    def describe_environment_status(params = {}, options = {})
      request = build_request(:describe_environment_status, params)
      request.send_request(options)
    end

    # <p>Gets information about Cloud9 development environments.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::DescribeEnvironmentsRequest] params
    # @option params [Array<String>] :environment_ids
    #   <p>The IDs of individual environments to get information about.</p>
    # @example DescribeEnvironments
    #   
    #   params = {
    #     environment_ids: [
    #       "8d9967e2f0624182b74e7690ad69ebEX",
    #       "349c86d4579e4e7298d500ff57a6b2EX"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_environments(params, options)
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         arn: "arn:aws:cloud9:us-east-2:123456789012:environment:8d9967e2f0624182b74e7690ad69ebEX",
    #         description: "This is my demonstration environment.",
    #         id: "8d9967e2f0624182b74e7690ad69ebEX",
    #         name: "my-demo-environment",
    #         owner_arn: "arn:aws:iam::123456789012:user/MyDemoUser",
    #         lifecycle: {
    #           status: CREATED
    #         },
    #         type: ec2
    #       },
    #       {
    #         arn: "arn:aws:cloud9:us-east-2:123456789012:environment:349c86d4579e4e7298d500ff57a6b2EX",
    #         description: "",
    #         id: "349c86d4579e4e7298d500ff57a6b2EX",
    #         name: "another-demo-environment",
    #         owner_arn: "arn:aws:sts::123456789012:assumed-role/AnotherDemoUser/AnotherDemoUser",
    #         lifecycle: {
    #           status: CREATED
    #         },
    #         type: ssh
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_ids: ["EnvironmentId"], # required
    #   }
    #   options = {}
    #   response = client.describe_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         id: "EnvironmentId",
    #         name: "EnvironmentName",
    #         description: "EnvironmentDescription",
    #         type: "ssh" # One of: ["ssh", "ec2"], # required
    #         connection_type: "CONNECT_SSH" # One of: ["CONNECT_SSH", "CONNECT_SSM"],
    #         arn: "String", # required
    #         owner_arn: "String", # required
    #         lifecycle: {
    #           status: "CREATING" # One of: ["CREATING", "CREATED", "CREATE_FAILED", "DELETING", "DELETE_FAILED"],
    #           reason: "String",
    #           failure_resource: "String"
    #         },
    #         managed_credentials_status: "ENABLED_ON_CREATE" # One of: ["ENABLED_ON_CREATE", "ENABLED_BY_OWNER", "DISABLED_BY_DEFAULT", "DISABLED_BY_OWNER", "DISABLED_BY_COLLABORATOR", "PENDING_REMOVAL_BY_COLLABORATOR", "PENDING_START_REMOVAL_BY_COLLABORATOR", "PENDING_REMOVAL_BY_OWNER", "PENDING_START_REMOVAL_BY_OWNER", "FAILED_REMOVAL_BY_COLLABORATOR", "FAILED_REMOVAL_BY_OWNER"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEnvironmentsResult]
    def describe_environments(params = {}, options = {})
      request = build_request(:describe_environments, params)
      request.send_request(options)
    end

    # <p>Gets a list of Cloud9 development environment identifiers.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 25 items in the list, only the first 25
    #         items are returned, along with a unique string called a <i>next token</i>. To
    #         get the next batch of items in the list, call this operation again, adding the next token to
    #         the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environments to get identifiers for.</p>
    # @example ListEnvironments
    #   
    #   params = {}
    #   options = {}
    #   response = client.list_environments(params, options)
    #   response.to_h #=>
    #   {
    #     environment_ids: [
    #       "349c86d4579e4e7298d500ff57a6b2EX",
    #       "45a3da47af0840f2b0c0824f5ee232EX"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     environment_ids: ["EnvironmentId"]
    #   }
    # @return [Types::ListEnvironmentsResult]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Gets a list of the tags associated with an Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to get the tags
    #         for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EnvironmentArn", # required
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

    # <p>Adds tags to an Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    #          <important>
    #             <p>Tags that you add to an Cloud9 environment by using this method will NOT be
    #         automatically propagated to underlying resources.</p>
    #          </important>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to add tags
    #         to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to add to the given Cloud9 development environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EnvironmentArn", # required
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

    # <p>Removes tags from an Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to remove tags
    #         from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag names of the tags to remove from the given Cloud9 development
    #         environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EnvironmentArn", # required
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

    # <p>Changes the settings of an existing Cloud9 development environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::UpdateEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to change settings.</p>
    # @option params [String] :name
    #   <p>A replacement name for the environment.</p>
    # @option params [String] :description
    #   <p>Any new or replacement description for the environment.</p>
    # @option params [String] :managed_credentials_action
    #   <p>Allows the environment owner to turn on or turn off the Amazon Web Services managed temporary
    #         credentials for an Cloud9 environment by using one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only the environment owner can change the status of managed temporary credentials. An <code>AccessDeniedException</code> is thrown if an attempt to turn on or turn off managed temporary credentials is made by an account that's not the environment
    #         owner.</p>
    #            </note>
    # @example UpdateEnvironment
    #   
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #     name: "my-changed-demo-environment",
    #     description: "This is my changed demonstration environment."
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     name: "EnvironmentName",
    #     description: "EnvironmentDescription",
    #     managed_credentials_action: "ENABLE" # One of: ["ENABLE", "DISABLE"]
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEnvironmentResult]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>Changes the settings of an existing environment member for an Cloud9 development
    #       environment.</p>
    #          <important>
    #             <p>Cloud9 is no longer available to new customers. Existing customers of 
    #         Cloud9 can continue to use the service as normal. 
    #         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
    #             </p>
    #          </important>
    # @param [Hash, Types::UpdateEnvironmentMembershipRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment for the environment member whose settings you want to
    #         change.</p>
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member whose settings you want to
    #         change.</p>
    # @option params [String] :permissions
    #   <p>The replacement type of environment member permissions you want to associate with this
    #         environment member. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    # @example UpdateEnvironmentMembership
    #   
    #   params = {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX",
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser",
    #     permissions: read-only
    #   }
    #   options = {}
    #   response = client.update_environment_membership(params, options)
    #   response.to_h #=>
    #   {
    #     membership: {
    #       environment_id: "8d9967e2f0624182b74e7690ad69eb31",
    #       permissions: read-only,
    #       user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser",
    #       user_id: "AIDAJ3BA6O2FMJWCWXHEX"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #     permissions: "read-write" # One of: ["read-write", "read-only"], # required
    #   }
    #   options = {}
    #   response = client.update_environment_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership: {
    #       permissions: "owner" # One of: ["owner", "read-write", "read-only"], # required
    #       user_id: "String", # required
    #       user_arn: "UserArn", # required
    #       environment_id: "EnvironmentId", # required
    #       last_access: Time.now
    #     }
    #   }
    # @return [Types::UpdateEnvironmentMembershipResult]
    def update_environment_membership(params = {}, options = {})
      request = build_request(:update_environment_membership, params)
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
      context[:gem_name] = 'aws-sdk-cloud9'
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
