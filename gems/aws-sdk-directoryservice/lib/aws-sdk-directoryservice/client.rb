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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::DirectoryService
  # An API client for Aws::DirectoryService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DirectoryService20150416

    add_plugin(::Aws::DirectoryService::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DirectoryService::EndpointProvider)
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

    # <p>Accepts a directory sharing request that was sent from the directory owner account.</p>
    # @param [Hash, Types::AcceptSharedDirectoryRequest] params
    # @option params [String] :shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     shared_directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.accept_shared_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shared_directory: {
    #       owner_account_id: "CustomerId",
    #       owner_directory_id: "DirectoryId",
    #       share_method: "ORGANIZATIONS" # One of: ["ORGANIZATIONS", "HANDSHAKE"],
    #       shared_account_id: "CustomerId",
    #       shared_directory_id: "DirectoryId",
    #       share_status: "Shared" # One of: ["Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"],
    #       share_notes: "Notes",
    #       created_date_time: Time.now,
    #       last_updated_date_time: Time.now
    #     }
    #   }
    # @return [Types::AcceptSharedDirectoryResult]
    def accept_shared_directory(params = {}, options = {})
      request = build_request(:accept_shared_directory, params)
      request.send_request(options)
    end

    # <p>If the DNS server for your self-managed domain uses a publicly addressable IP address,
    #          you must add a CIDR address block to correctly route traffic to and from your Microsoft AD
    #          on Amazon Web Services. <i>AddIpRoutes</i> adds this address block. You can
    #          also use <i>AddIpRoutes</i> to facilitate routing traffic that uses public IP
    #          ranges from your Microsoft AD on Amazon Web Services to a peer VPC. </p>
    #          <p>Before you call <i>AddIpRoutes</i>, ensure that all of the required
    #          permissions have been explicitly granted through a policy. For details about what
    #          permissions are required to run the <i>AddIpRoutes</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    # @param [Hash, Types::AddIpRoutesRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier (ID) of the directory to which to add the address block.</p>
    # @option params [Array<Types::IpRoute>] :ip_routes
    #   <p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP
    #            address block of the DNS server used for your self-managed domain.</p>
    # @option params [Boolean] :update_security_group_for_directory_controllers
    #   <p>If set to true, updates the inbound and outbound rules of the security group that has
    #            the description: "Amazon Web Services created security group for <i>directory ID</i>
    #            directory controllers." Following are the new rules: </p>
    #            <p>Inbound:</p>
    #            <ul>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source: Managed Microsoft AD VPC
    #                  IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source: Managed Microsoft AD VPC
    #                  IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: LDAP, Protocol: TCP, Range: 389, Source: Managed Microsoft AD VPC IPv4 CIDR</p>
    #               </li>
    #               <li>
    #                  <p>Type: All ICMP, Protocol: All, Range: N/A, Source: Managed Microsoft AD VPC IPv4
    #                  CIDR</p>
    #               </li>
    #            </ul>
    #            <p></p>
    #            <p>Outbound:</p>
    #            <ul>
    #               <li>
    #                  <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p>
    #               </li>
    #            </ul>
    #            <p>These security rules impact an internal network interface that is not exposed
    #            publicly.</p>
    # @example To add a CIDR address block that routes traffic for Microsoft AD
    #   # The following example adds a CIDR address block to correctly route traffic to and from your Microsoft AD on AWS.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     ip_routes: [
    #       {
    #         description: "my IpRoute",
    #         cidr_ip: "12.12.12.12/32"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_ip_routes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     ip_routes: [ # required
    #       {
    #         cidr_ip: "CidrIp",
    #         cidr_ipv6: "CidrIpv6",
    #         description: "Description"
    #       }
    #     ],
    #     update_security_group_for_directory_controllers: false
    #   }
    #   options = {}
    #   response = client.add_ip_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddIpRoutesResult]
    def add_ip_routes(params = {}, options = {})
      request = build_request(:add_ip_routes, params)
      request.send_request(options)
    end

    # <p>Adds two domain controllers in the specified Region for the specified directory.</p>
    # @param [Hash, Types::AddRegionRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory to which you want to add Region replication.</p>
    # @option params [String] :region_name
    #   <p>The name of the Region where you want to add domain controllers for replication. For
    #         example, <code>us-east-1</code>.</p>
    # @option params [Types::DirectoryVpcSettings] :vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a>, <a>CreateMicrosoftAD</a>, or <a>CreateHybridAD</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     region_name: "RegionName", # required
    #     vpc_settings: { # required
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.add_region(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddRegionResult]
    def add_region(params = {}, options = {})
      request = build_request(:add_region, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites one or more tags for the specified directory. Each directory can
    #       have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be
    #       unique to each resource.</p>
    # @param [Hash, Types::AddTagsToResourceRequest] params
    # @option params [String] :resource_id
    #   <p>Identifier (ID) for the directory to which to add the tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the directory.</p>
    # @example To add tags to a directory
    #   # The following example adds or overwrites one or more tags for the specified directory.
    #   params = {
    #     resource_id: "d-92654abfed",
    #     tags: [
    #       {
    #         key: "environment",
    #         value: "production"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsToResourceResult]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema
    #       extension has started replicating to all domain controllers, the task can no longer be
    #       canceled. A schema extension can be canceled during any of the following states;
    #         <code>Initializing</code>, <code>CreatingSnapshot</code>, and
    #       <code>UpdatingSchema</code>.</p>
    # @param [Hash, Types::CancelSchemaExtensionRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory whose schema extension will be canceled.</p>
    # @option params [String] :schema_extension_id
    #   <p>The identifier of the schema extension that will be canceled.</p>
    # @example To cancel a Microsoft AD schema extension that is in progress
    #   # The following example cancels an in-progress schema extension to a Microsoft AD directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     schema_extension_id: "e-926731d2a0"
    #   }
    #   options = {}
    #   response = client.cancel_schema_extension(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     schema_extension_id: "SchemaExtensionId", # required
    #   }
    #   options = {}
    #   response = client.cancel_schema_extension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelSchemaExtensionResult]
    def cancel_schema_extension(params = {}, options = {})
      request = build_request(:cancel_schema_extension, params)
      request.send_request(options)
    end

    # <p>Creates an AD Connector to connect to a self-managed directory.</p>
    #          <p>Before you call <code>ConnectDirectory</code>, ensure that all of the required permissions
    #       have been explicitly granted through a policy. For details about what permissions are required
    #       to run the <code>ConnectDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    # @param [Hash, Types::ConnectDirectoryRequest] params
    # @option params [String] :name
    #   <p>The fully qualified name of your self-managed directory, such as
    #           <code>corp.example.com</code>.</p>
    # @option params [String] :short_name
    #   <p>The NetBIOS name of your self-managed directory, such as <code>CORP</code>.</p>
    # @option params [String] :password
    #   <p>The password for your self-managed user account.</p>
    # @option params [String] :description
    #   <p>A description for the directory.</p>
    # @option params [String] :size
    #   <p>The size of the directory.</p>
    # @option params [Types::DirectoryConnectSettings] :connect_settings
    #   <p>A <a>DirectoryConnectSettings</a> object that contains additional information
    #         for the operation.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to AD Connector.</p>
    # @option params [String] :network_type
    #   <p>The network type for your directory. The default value is <code>IPv4</code> or
    #           <code>IPv6</code> based on the provided subnet capabilities.</p>
    # @example To connect to an on-premises directory
    #   # The following example creates an AD Connector to connect to an on-premises directory.
    #   params = {
    #     name: "corp.example.com",
    #     short_name: "corp",
    #     password: "Str0ngP@ssw0rd",
    #     description: "Connector to corp",
    #     size: Small,
    #     connect_settings: {
    #       customer_user_name: "Administrator",
    #       vpc_id: "vpc-45025421",
    #       subnet_ids: [
    #         "subnet-ba0146de",
    #         "subnet-bef46bc8"
    #       ],
    #       customer_dns_ips: [
    #         "172.30.21.228"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.connect_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-92654abfed"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DirectoryName", # required
    #     short_name: "DirectoryShortName",
    #     password: "ConnectPassword", # required
    #     description: "Description",
    #     size: "Small" # One of: ["Small", "Large"], # required
    #     connect_settings: { # required
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       customer_dns_ips: ["IpAddr"],
    #       customer_dns_ips_v6: ["Ipv6Addr"],
    #       customer_user_name: "UserName", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     network_type: "Dual-stack" # One of: ["Dual-stack", "IPv4", "IPv6"]
    #   }
    #   options = {}
    #   response = client.connect_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId"
    #   }
    # @return [Types::ConnectDirectoryResult]
    def connect_directory(params = {}, options = {})
      request = build_request(:connect_directory, params)
      request.send_request(options)
    end

    # <p>Creates an alias for a directory and assigns the alias to the directory. The alias is used
    #          to construct the access URL for the directory, such as
    #             <code>http://<alias>.awsapps.com</code>.</p>
    #          <important>
    #             <p>After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.</p>
    #          </important>
    # @param [Hash, Types::CreateAliasRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to create the alias.</p>
    # @option params [String] :alias
    #   <p>The requested alias.</p>
    #            <p>The alias must be unique amongst all aliases in Amazon Web Services. This operation throws an
    #               <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>
    # @example To create an alias for a directory
    #   # The following example creates an alias for a directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     alias: "salesorg"
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-92654abfed",
    #     alias: "salesorg"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     alias: "AliasName", # required
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     alias: "AliasName"
    #   }
    # @return [Types::CreateAliasResult]
    def create_alias(params = {}, options = {})
      request = build_request(:create_alias, params)
      request.send_request(options)
    end

    # <p>Creates an Active Directory computer object in the specified directory.</p>
    # @param [Hash, Types::CreateComputerRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory in which to create the computer account.</p>
    # @option params [String] :computer_name
    #   <p>The name of the computer account.</p>
    # @option params [String] :password
    #   <p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>
    # @option params [String] :organizational_unit_distinguished_name
    #   <p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>
    # @option params [Array<Types::Attribute>] :computer_attributes
    #   <p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the
    #               computer account.</p>
    # @example To create a computer account
    #   # The following example creates a computer account in the specified directory, and joins the computer to the directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     computer_name: "labcomputer",
    #     password: "Str0ngP@ssw0rd",
    #     organizational_unit_distinguished_name: "OU=Computers,OU=example,DC=corp,DC=example,DC=com",
    #     computer_attributes: [
    #       {
    #         name: "ip",
    #         value: "192.168.101.100"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_computer(params, options)
    #   response.to_h #=>
    #   {
    #     computer: {
    #       computer_attributes: [
    #         {
    #           name: "DistinguishedName",
    #           value: "CN=labcomputer,OU=Computers,OU=nickcorp,DC=seattle,DC=nickcorp,DC=com"
    #         },
    #         {
    #           name: "WindowsSamName",
    #           value: "labcomputer$"
    #         }
    #       ],
    #       computer_id: "S-1-5-21-1932691875-1648176379-1176097576-1124",
    #       computer_name: "labcomputer"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     computer_name: "ComputerName", # required
    #     password: "ComputerPassword", # required
    #     organizational_unit_distinguished_name: "OrganizationalUnitDN",
    #     computer_attributes: [
    #       {
    #         name: "AttributeName",
    #         value: "AttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_computer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computer: {
    #       computer_id: "SID",
    #       computer_name: "ComputerName",
    #       computer_attributes: [
    #         {
    #           name: "AttributeName",
    #           value: "AttributeValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateComputerResult]
    def create_computer(params = {}, options = {})
      request = build_request(:create_computer, params)
      request.send_request(options)
    end

    # <p>Creates a conditional forwarder associated with your Amazon Web Services directory. Conditional
    #       forwarders are required in order to set up a trust relationship with another domain. The
    #       conditional forwarder points to the trusted domain.</p>
    # @param [Hash, Types::CreateConditionalForwarderRequest] params
    # @option params [String] :directory_id
    #   <p>The directory ID of the Amazon Web Services directory for which you are creating the conditional
    #         forwarder.</p>
    # @option params [String] :remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
    #         a trust relationship.</p>
    # @option params [Array<String>] :dns_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    # @option params [Array<String>] :dns_ipv6_addrs
    #   <p>The IPv6 addresses of the remote DNS server associated with RemoteDomainName.</p>
    # @example To create a conditional forwarder
    #   # The following example creates a conditional forwarder associated with your AWS directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     remote_domain_name: "sales.example.com",
    #     dns_ip_addrs: [
    #       "172.30.21.228"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_conditional_forwarder(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #     dns_ip_addrs: ["IpAddr"],
    #     dns_ipv6_addrs: ["Ipv6Addr"]
    #   }
    #   options = {}
    #   response = client.create_conditional_forwarder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateConditionalForwarderResult]
    def create_conditional_forwarder(params = {}, options = {})
      request = build_request(:create_conditional_forwarder, params)
      request.send_request(options)
    end

    # <p>Creates a Simple AD directory. For more information, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html">Simple Active Directory</a> in the <i>Directory Service Admin Guide</i>.</p>
    #          <p>Before you call <code>CreateDirectory</code>, ensure that all of the required permissions
    #       have been explicitly granted through a policy. For details about what permissions are required
    #       to run the <code>CreateDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    # @param [Hash, Types::CreateDirectoryRequest] params
    # @option params [String] :name
    #   <p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>
    # @option params [String] :short_name
    #   <p>The NetBIOS name of the directory, such as <code>CORP</code>.</p>
    # @option params [String] :password
    #   <p>The password for the directory administrator. The directory creation process creates a
    #         directory administrator account with the user name <code>Administrator</code> and this
    #         password.</p>
    #            <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
    #            <p>The regex pattern for this string is made up of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>Length (?=^.{8,64}$) – Must be between 8 and 64 characters</p>
    #               </li>
    #            </ul>
    #            <p>AND any 3 of the following password complexity rules required by Active Directory:</p>
    #            <ul>
    #               <li>
    #                  <p>Numbers and upper case and lowercase (?=.*\d)(?=.*[A-Z])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Numbers and special characters and lower case
    #             (?=.*\d)(?=.*[^A-Za-z0-9\s])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Special characters and upper case and lower case
    #             (?=.*[^A-Za-z0-9\s])(?=.*[A-Z])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Numbers and upper case and special characters
    #             (?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\s])</p>
    #               </li>
    #            </ul>
    #            <p>For additional information about how Active Directory passwords are enforced, see <a href="https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements">Password must meet complexity requirements</a> on the Microsoft website.</p>
    # @option params [String] :description
    #   <p>A description for the directory.</p>
    # @option params [String] :size
    #   <p>The size of the directory.</p>
    # @option params [Types::DirectoryVpcSettings] :vpc_settings
    #   <p>A <a>DirectoryVpcSettings</a> object that contains additional information for
    #         the operation.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Simple AD directory.</p>
    # @option params [String] :network_type
    #   <p>The network type for your directory. Simple AD supports IPv4 and Dual-stack only.</p>
    # @example To create a Simple AD directory
    #   # The following example creates a Simple AD directory.
    #   params = {
    #     name: "seattle.example.com",
    #     short_name: "seattle",
    #     password: "Str0ngP@ssw0rd",
    #     description: "Regional directory for example.com",
    #     size: Small,
    #     vpc_settings: {
    #       subnet_ids: [
    #         "subnet-ba0146de",
    #         "subnet-bef46bc8"
    #       ],
    #       vpc_id: "vpc-45025421"
    #     }
    #   }
    #   options = {}
    #   response = client.create_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-92654abfed"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DirectoryName", # required
    #     short_name: "DirectoryShortName",
    #     password: "Password", # required
    #     description: "Description",
    #     size: "Small" # One of: ["Small", "Large"], # required
    #     vpc_settings: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     network_type: "Dual-stack" # One of: ["Dual-stack", "IPv4", "IPv6"]
    #   }
    #   options = {}
    #   response = client.create_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId"
    #   }
    # @return [Types::CreateDirectoryResult]
    def create_directory(params = {}, options = {})
      request = build_request(:create_directory, params)
      request.send_request(options)
    end

    # <p>Creates a hybrid directory that connects your self-managed Active Directory (AD)
    #             infrastructure and Amazon Web Services.</p>
    #          <p>You must have a successful directory assessment using <a>StartADAssessment</a> to validate your environment compatibility before you
    #             use this operation.</p>
    #          <p>Updates are applied asynchronously. Use <a>DescribeDirectories</a> to
    #             monitor the progress of directory creation.</p>
    # @param [Hash, Types::CreateHybridADRequest] params
    # @option params [String] :secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that contains the
    #               credentials for the service account used to join hybrid domain controllers to your
    #               self-managed AD domain. This secret is used once and not stored.</p>
    #            <p>The secret must contain key-value pairs with keys matching
    #                   <code>customerAdAdminDomainUsername</code> and
    #                   <code>customerAdAdminDomainPassword</code>. For example:
    #                   <code>{"customerAdAdminDomainUsername":"carlos_salazar","customerAdAdminDomainPassword":"ExamplePassword123!"}</code>.</p>
    # @option params [String] :assessment_id
    #   <p>The unique identifier of the successful directory assessment that validates your
    #               self-managed AD environment. You must have a successful directory assessment before you
    #               create a hybrid directory.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the directory. Each tag consists of a key and value pair.
    #               You can specify multiple tags as a list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_arn: "SecretArn", # required
    #     assessment_id: "AssessmentId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_hybrid_ad(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId"
    #   }
    # @return [Types::CreateHybridADResult]
    def create_hybrid_ad(params = {}, options = {})
      request = build_request(:create_hybrid_ad, params)
      request.send_request(options)
    end

    # <p>Creates a subscription to forward real-time Directory Service domain controller security
    #       logs to the specified Amazon CloudWatch log group in your Amazon Web Services account.</p>
    # @param [Hash, Types::CreateLogSubscriptionRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier of the directory to which you want to subscribe and receive real-time logs to
    #         your specified CloudWatch log group.</p>
    # @option params [String] :log_group_name
    #   <p>The name of the CloudWatch log group where the real-time domain controller logs are
    #         forwarded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     log_group_name: "LogGroupName", # required
    #   }
    #   options = {}
    #   response = client.create_log_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateLogSubscriptionResult]
    def create_log_subscription(params = {}, options = {})
      request = build_request(:create_log_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a Microsoft AD directory in the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html">Managed Microsoft AD</a> in the <i>Directory Service Admin Guide</i>.</p>
    #          <p>Before you call <i>CreateMicrosoftAD</i>, ensure that all of the required
    #       permissions have been explicitly granted through a policy. For details about what permissions
    #       are required to run the <i>CreateMicrosoftAD</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    # @param [Hash, Types::CreateMicrosoftADRequest] params
    # @option params [String] :name
    #   <p>The fully qualified domain name for the Managed Microsoft AD directory, such as
    #           <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need
    #         to be publicly resolvable.</p>
    # @option params [String] :short_name
    #   <p>The NetBIOS name for your domain, such as <code>CORP</code>. If you don't specify a
    #         NetBIOS name, it will default to the first part of your directory DNS. For example,
    #           <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>
    # @option params [String] :password
    #   <p>The password for the default administrative user named <code>Admin</code>.</p>
    #            <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
    # @option params [String] :description
    #   <p>A description for the directory. This label will appear on the Amazon Web Services console
    #           <code>Directory Details</code> page after the directory is created.</p>
    # @option params [Types::DirectoryVpcSettings] :vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
    # @option params [String] :edition
    #   <p>Managed Microsoft AD is available in two editions: <code>Standard</code> and
    #           <code>Enterprise</code>. <code>Enterprise</code> is the default.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Managed Microsoft AD directory.</p>
    # @option params [String] :network_type
    #   <p>
    #         The network type for your domain. The default value is <code>IPv4</code> or <code>IPv6</code>
    #         based on the provided subnet capabilities.</p>
    # @example To create a Microsoft AD directory
    #   # The following example creates a Microsoft AD directory in the AWS cloud.
    #   params = {
    #     name: "ad.example.com",
    #     short_name: "ad",
    #     password: "Str0ngP@ssw0rd",
    #     description: "Corporate AD directory",
    #     vpc_settings: {
    #       subnet_ids: [
    #         "subnet-ba0146de",
    #         "subnet-bef46bc8"
    #       ],
    #       vpc_id: "vpc-45025421"
    #     }
    #   }
    #   options = {}
    #   response = client.create_microsoft_ad(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-92654abfed"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DirectoryName", # required
    #     short_name: "DirectoryShortName",
    #     password: "Password", # required
    #     description: "Description",
    #     vpc_settings: { # required
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     edition: "Enterprise" # One of: ["Enterprise", "Standard", "Hybrid"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     network_type: "Dual-stack" # One of: ["Dual-stack", "IPv4", "IPv6"]
    #   }
    #   options = {}
    #   response = client.create_microsoft_ad(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId"
    #   }
    # @return [Types::CreateMicrosoftADResult]
    def create_microsoft_ad(params = {}, options = {})
      request = build_request(:create_microsoft_ad, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of a Simple AD or Microsoft AD directory in the Amazon Web Services cloud.</p>
    #          <note>
    #             <p>You cannot take snapshots of AD Connector directories.</p>
    #          </note>
    # @param [Hash, Types::CreateSnapshotRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory of which to take a snapshot.</p>
    # @option params [String] :name
    #   <p>The descriptive name to apply to the snapshot.</p>
    # @example To create a snapshot of a directory
    #   # The following example creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     name: "ad.example.com"
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot_id: "s-9267f8d3f0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     name: "SnapshotName"
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_id: "SnapshotId"
    #   }
    # @return [Types::CreateSnapshotResult]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>Directory Service for Microsoft Active Directory allows you to configure trust relationships. For
    #       example, you can establish a trust between your Managed Microsoft AD directory, and your existing
    #       self-managed Microsoft Active Directory. This would allow you to provide users and groups
    #       access to resources in either domain, with a single set of credentials.</p>
    #          <p>This action initiates the creation of the Amazon Web Services side of a trust relationship between an
    #       Managed Microsoft AD directory and an external domain. You can create either a forest trust or an
    #       external trust.</p>
    # @param [Hash, Types::CreateTrustRequest] params
    # @option params [String] :directory_id
    #   <p>The Directory ID of the Managed Microsoft AD directory for which to establish the trust
    #         relationship.</p>
    # @option params [String] :remote_domain_name
    #   <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the
    #         trust relationship.</p>
    # @option params [String] :trust_password
    #   <p>The trust password. The trust password must be the same password that was used when creating the trust
    #         relationship on the external domain.</p>
    # @option params [String] :trust_direction
    #   <p>The direction of the trust relationship.</p>
    # @option params [String] :trust_type
    #   <p>The trust relationship type. <code>Forest</code> is the default.</p>
    # @option params [Array<String>] :conditional_forwarder_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    # @option params [Array<String>] :conditional_forwarder_ipv6_addrs
    #   <p>The IPv6 addresses of the remote DNS server associated with RemoteDomainName.</p>
    # @option params [String] :selective_auth
    #   <p>Optional parameter to enable selective authentication for the trust.</p>
    # @example To create a trust
    #   # The following example creates a trust between Microsoft AD in the AWS cloud and an external domain.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     remote_domain_name: "europe.example.com",
    #     trust_password: "Str0ngP@ssw0rd",
    #     trust_direction: One-Way: Outgoing,
    #     trust_type: Forest,
    #     conditional_forwarder_ip_addrs: [
    #       "172.30.21.228"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_trust(params, options)
    #   response.to_h #=>
    #   {
    #     trust_id: "t-9267353743"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #     trust_password: "TrustPassword", # required
    #     trust_direction: "One-Way: Outgoing" # One of: ["One-Way: Outgoing", "One-Way: Incoming", "Two-Way"], # required
    #     trust_type: "Forest" # One of: ["Forest", "External"],
    #     conditional_forwarder_ip_addrs: ["IpAddr"],
    #     conditional_forwarder_ipv6_addrs: ["Ipv6Addr"],
    #     selective_auth: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    #   options = {}
    #   response = client.create_trust(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_id: "TrustId"
    #   }
    # @return [Types::CreateTrustResult]
    def create_trust(params = {}, options = {})
      request = build_request(:create_trust, params)
      request.send_request(options)
    end

    # <p>Deletes a directory assessment and all associated data. This operation permanently
    #             removes the assessment results, validation reports, and configuration
    #             information.</p>
    #          <p>You cannot delete system-initiated assessments. You can delete customer-created
    #             assessments even if they are in progress.</p>
    # @param [Hash, Types::DeleteADAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p>The unique identifier of the directory assessment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "AssessmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_ad_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_id: "AssessmentId"
    #   }
    # @return [Types::DeleteADAssessmentResult]
    def delete_ad_assessment(params = {}, options = {})
      request = build_request(:delete_ad_assessment, params)
      request.send_request(options)
    end

    # <p>Deletes a conditional forwarder that has been set up for your Amazon Web Services
    #       directory.</p>
    # @param [Hash, Types::DeleteConditionalForwarderRequest] params
    # @option params [String] :directory_id
    #   <p>The directory ID for which you are deleting the conditional forwarder.</p>
    # @option params [String] :remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting
    #         the conditional forwarder.</p>
    # @example To delete a conditional forwarder
    #   # The following example deletes a conditional forwarder. 
    #   params = {
    #     directory_id: "d-92654abfed",
    #     remote_domain_name: "sales.example.com"
    #   }
    #   options = {}
    #   response = client.delete_conditional_forwarder(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_conditional_forwarder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConditionalForwarderResult]
    def delete_conditional_forwarder(params = {}, options = {})
      request = build_request(:delete_conditional_forwarder, params)
      request.send_request(options)
    end

    # <p>Deletes an Directory Service directory.</p>
    #          <p>Before you call <code>DeleteDirectory</code>, ensure that all of the required permissions
    #       have been explicitly granted through a policy. For details about what permissions are required
    #       to run the <code>DeleteDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    # @param [Hash, Types::DeleteDirectoryRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory to delete.</p>
    # @example To delete a directory
    #   # The following example deletes a directory from your AWS account.
    #   params = {
    #     directory_id: "d-92654abfed"
    #   }
    #   options = {}
    #   response = client.delete_directory(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-92654abfed"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.delete_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId"
    #   }
    # @return [Types::DeleteDirectoryResult]
    def delete_directory(params = {}, options = {})
      request = build_request(:delete_directory, params)
      request.send_request(options)
    end

    # <p>Deletes the specified log subscription.</p>
    # @param [Hash, Types::DeleteLogSubscriptionRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier of the directory whose log subscription you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.delete_log_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLogSubscriptionResult]
    def delete_log_subscription(params = {}, options = {})
      request = build_request(:delete_log_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes a directory snapshot.</p>
    # @param [Hash, Types::DeleteSnapshotRequest] params
    # @option params [String] :snapshot_id
    #   <p>The identifier of the directory snapshot to be deleted.</p>
    # @example To delete a snapshot
    #   # The following example deletes a directory snapshot.
    #   params = {
    #     snapshot_id: "s-9267f8d3f0"
    #   }
    #   options = {}
    #   response = client.delete_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot_id: "s-9267f8d3f0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_id: "SnapshotId", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_id: "SnapshotId"
    #   }
    # @return [Types::DeleteSnapshotResult]
    def delete_snapshot(params = {}, options = {})
      request = build_request(:delete_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes an existing trust relationship between your Managed Microsoft AD directory and an external
    #       domain.</p>
    # @param [Hash, Types::DeleteTrustRequest] params
    # @option params [String] :trust_id
    #   <p>The Trust ID of the trust relationship to be deleted.</p>
    # @option params [Boolean] :delete_associated_conditional_forwarder
    #   <p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>
    # @example To delete a trust
    #   # The following example deletes an existing trust between your Microsoft AD in the AWS cloud and an external domain.
    #   params = {
    #     trust_id: "t-9267353743",
    #     delete_associated_conditional_forwarder: true
    #   }
    #   options = {}
    #   response = client.delete_trust(params, options)
    #   response.to_h #=>
    #   {
    #     trust_id: "t-9267353743"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_id: "TrustId", # required
    #     delete_associated_conditional_forwarder: false
    #   }
    #   options = {}
    #   response = client.delete_trust(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_id: "TrustId"
    #   }
    # @return [Types::DeleteTrustResult]
    def delete_trust(params = {}, options = {})
      request = build_request(:delete_trust, params)
      request.send_request(options)
    end

    # <p>Deletes from the system the certificate that was registered for secure LDAP or client
    #       certificate authentication.</p>
    # @param [Hash, Types::DeregisterCertificateRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :certificate_id
    #   <p>The identifier of the certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.deregister_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterCertificateResult]
    def deregister_certificate(params = {}, options = {})
      request = build_request(:deregister_certificate, params)
      request.send_request(options)
    end

    # <p>Removes the specified directory as a publisher to the specified Amazon SNS topic.</p>
    # @param [Hash, Types::DeregisterEventTopicRequest] params
    # @option params [String] :directory_id
    #   <p>The Directory ID to remove as a publisher. This directory will no longer send messages
    #         to the specified Amazon SNS topic.</p>
    # @option params [String] :topic_name
    #   <p>The name of the Amazon SNS topic from which to remove the directory as a
    #         publisher.</p>
    # @example To remove an event topic
    #   # The following example removes the specified directory as a publisher to the specified SNS topic.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     topic_name: "snstopicexample"
    #   }
    #   options = {}
    #   response = client.deregister_event_topic(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     topic_name: "TopicName", # required
    #   }
    #   options = {}
    #   response = client.deregister_event_topic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterEventTopicResult]
    def deregister_event_topic(params = {}, options = {})
      request = build_request(:deregister_event_topic, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a directory assessment, including its current
    #             status, validation results, and configuration details. Use this operation to monitor
    #             assessment progress and review results.</p>
    # @param [Hash, Types::DescribeADAssessmentRequest] params
    # @option params [String] :assessment_id
    #   <p>The identifier of the directory assessment to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "AssessmentId", # required
    #   }
    #   options = {}
    #   response = client.describe_ad_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: {
    #       assessment_id: "AssessmentId",
    #       directory_id: "DirectoryId",
    #       dns_name: "DirectoryName",
    #       start_time: Time.now,
    #       last_update_date_time: Time.now,
    #       status: "AssessmentStatus",
    #       status_code: "AssessmentStatusCode",
    #       status_reason: "AssessmentStatusReason",
    #       customer_dns_ips: ["IpAddr"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       self_managed_instance_ids: ["AssessmentInstanceId"],
    #       report_type: "AssessmentReportType",
    #       version: "AssessmentVersion"
    #     },
    #     assessment_reports: [
    #       {
    #         domain_controller_ip: "IpAddr",
    #         validations: [
    #           {
    #             category: "AssessmentValidationCategory",
    #             name: "AssessmentValidationName",
    #             status: "AssessmentValidationStatus",
    #             status_code: "AssessmentValidationStatusCode",
    #             status_reason: "AssessmentValidationStatusReason",
    #             start_time: Time.now,
    #             last_update_date_time: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeADAssessmentResult]
    def describe_ad_assessment(params = {}, options = {})
      request = build_request(:describe_ad_assessment, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about the certificate authority (CA) enrollment policy for
    #       the specified directory. This policy determines how client certificates are automatically enrolled and
    #       managed through Amazon Web Services Private Certificate Authority. </p>
    # @param [Hash, Types::DescribeCAEnrollmentPolicyRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to retrieve the CA enrollment policy
    #         information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.describe_ca_enrollment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     pca_connector_arn: "PcaConnectorArn",
    #     ca_enrollment_policy_status: "InProgress" # One of: ["InProgress", "Success", "Failed", "Disabling", "Disabled", "Impaired"],
    #     last_updated_date_time: Time.now,
    #     ca_enrollment_policy_status_reason: "CaEnrollmentPolicyStatusReason"
    #   }
    # @return [Types::DescribeCAEnrollmentPolicyResult]
    def describe_ca_enrollment_policy(params = {}, options = {})
      request = build_request(:describe_ca_enrollment_policy, params)
      request.send_request(options)
    end

    # <p>Displays information about the certificate registered for secure LDAP or client
    #       certificate authentication.</p>
    # @param [Hash, Types::DescribeCertificateRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :certificate_id
    #   <p>The identifier of the certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: {
    #       certificate_id: "CertificateId",
    #       state: "Registering" # One of: ["Registering", "Registered", "RegisterFailed", "Deregistering", "Deregistered", "DeregisterFailed"],
    #       state_reason: "CertificateStateReason",
    #       common_name: "CertificateCN",
    #       registered_date_time: Time.now,
    #       expiry_date_time: Time.now,
    #       type: "ClientCertAuth" # One of: ["ClientCertAuth", "ClientLDAPS"],
    #       client_cert_auth_settings: {
    #         ocsp_url: "OCSPUrl"
    #       }
    #     }
    #   }
    # @return [Types::DescribeCertificateResult]
    def describe_certificate(params = {}, options = {})
      request = build_request(:describe_certificate, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the type of client authentication for the specified directory,
    #       if the type is specified. If no type is specified, information about all client authentication
    #       types that are supported for the specified directory is retrieved. Currently, only
    #         <code>SmartCard</code> is supported. </p>
    # @param [Hash, Types::DescribeClientAuthenticationSettingsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to retrieve information.</p>
    # @option params [String] :type
    #   <p>The type of client authentication for which to retrieve information. If no type is
    #         specified, a list of all client authentication types that are supported for the specified
    #         directory is retrieved.</p>
    # @option params [String] :next_token
    #   <p>The <i>DescribeClientAuthenticationSettingsResult.NextToken</i> value from a
    #         previous call to <a>DescribeClientAuthenticationSettings</a>. Pass null if this is
    #         the first call.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return. If this value is zero, the maximum number of items
    #         is specified by the limitations of the operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     type: "SmartCard" # One of: ["SmartCard", "SmartCardOrPassword"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_client_authentication_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_authentication_settings_info: [
    #       {
    #         type: "SmartCard" # One of: ["SmartCard", "SmartCardOrPassword"],
    #         status: "Enabled" # One of: ["Enabled", "Disabled"],
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeClientAuthenticationSettingsResult]
    def describe_client_authentication_settings(params = {}, options = {})
      request = build_request(:describe_client_authentication_settings, params)
      request.send_request(options)
    end

    # <p>Obtains information about the conditional forwarders for this account.</p>
    #          <p>If no input parameters are provided for RemoteDomainNames, this request describes all
    #       conditional forwarders for the specified directory ID.</p>
    # @param [Hash, Types::DescribeConditionalForwardersRequest] params
    # @option params [String] :directory_id
    #   <p>The directory ID for which to get the list of associated conditional
    #         forwarders.</p>
    # @option params [Array<String>] :remote_domain_names
    #   <p>The fully qualified domain names (FQDN) of the remote domains for which to get the list
    #         of associated conditional forwarders. If this member is null, all conditional forwarders are
    #         returned.</p>
    # @example To describe conditional forwarders
    #   # The following example obtains information about the conditional forwarders for a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     remote_domain_names: [
    #       "sales.example.com"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_conditional_forwarders(params, options)
    #   response.to_h #=>
    #   {
    #     conditional_forwarders: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     remote_domain_names: ["RemoteDomainName"]
    #   }
    #   options = {}
    #   response = client.describe_conditional_forwarders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conditional_forwarders: [
    #       {
    #         remote_domain_name: "RemoteDomainName",
    #         dns_ip_addrs: ["IpAddr"],
    #         dns_ipv6_addrs: ["Ipv6Addr"],
    #         replication_scope: "Domain" # One of: ["Domain"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConditionalForwardersResult]
    def describe_conditional_forwarders(params = {}, options = {})
      request = build_request(:describe_conditional_forwarders, params)
      request.send_request(options)
    end

    # <p>Obtains information about the directories that belong to this account.</p>
    #          <p>You can retrieve information about specific directories by passing the directory
    #       identifiers in the <code>DirectoryIds</code> parameter. Otherwise, all directories that belong
    #       to the current account are returned.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the
    #         <code>DescribeDirectoriesResult.NextToken</code> member contains a token that you pass in
    #       the next call to <a>DescribeDirectories</a> to retrieve the next set of
    #       items.</p>
    #          <p>You can also specify a maximum number of return results with the <code>Limit</code>
    #       parameter.</p>
    # @param [Hash, Types::DescribeDirectoriesRequest] params
    # @option params [Array<String>] :directory_ids
    #   <p>A list of identifiers of the directories for which to obtain the information. If this
    #         member is null, all directories that belong to the current account are returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
    # @option params [String] :next_token
    #   <p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return. If this value is zero, the maximum number of items
    #         is specified by the limitations of the operation.</p>
    # @example To describe one or more directories
    #   # The following example obtains information about a specified directory.
    #   params = {
    #     directory_ids: [
    #       "d-92654abfed"
    #     ],
    #     limit: 0
    #   }
    #   options = {}
    #   response = client.describe_directories(params, options)
    #   response.to_h #=>
    #   {
    #     directory_descriptions: [
    #       {
    #         access_url: "myaccess.awsapps.com",
    #         alias: "myaccess",
    #         directory_id: "d-92654abfed",
    #         dns_ip_addrs: [
    #           "172.30.21.228",
    #           "172.30.9.82"
    #         ],
    #         launch_time: Time.parse(1469737584.772),
    #         name: "corp.example.com",
    #         short_name: "example",
    #         sso_enabled: true,
    #         stage: Active,
    #         stage_last_updated_date_time: Time.parse(1469739131.71),
    #         type: MicrosoftAD,
    #         vpc_settings: {
    #           availability_zones: [
    #             "us-west-2a",
    #             "us-west-2b"
    #           ],
    #           subnet_ids: [
    #             "subnet-ba0146de",
    #             "subnet-bef46bc8"
    #           ],
    #           vpc_id: "vpc-45025421"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_ids: ["DirectoryId"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_directories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_descriptions: [
    #       {
    #         directory_id: "DirectoryId",
    #         name: "DirectoryName",
    #         short_name: "DirectoryShortName",
    #         size: "Small" # One of: ["Small", "Large"],
    #         edition: "Enterprise" # One of: ["Enterprise", "Standard", "Hybrid"],
    #         alias: "AliasName",
    #         access_url: "AccessUrl",
    #         description: "Description",
    #         dns_ip_addrs: ["IpAddr"],
    #         dns_ipv6_addrs: ["Ipv6Addr"],
    #         stage: "Requested" # One of: ["Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed", "Updating"],
    #         share_status: "Shared" # One of: ["Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"],
    #         share_method: "ORGANIZATIONS" # One of: ["ORGANIZATIONS", "HANDSHAKE"],
    #         share_notes: "Notes",
    #         launch_time: Time.now,
    #         stage_last_updated_date_time: Time.now,
    #         type: "SimpleAD" # One of: ["SimpleAD", "ADConnector", "MicrosoftAD", "SharedMicrosoftAD"],
    #         vpc_settings: {
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           security_group_id: "SecurityGroupId",
    #           availability_zones: ["AvailabilityZone"]
    #         },
    #         connect_settings: {
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           customer_user_name: "UserName",
    #           security_group_id: "SecurityGroupId",
    #           availability_zones: ["AvailabilityZone"],
    #           connect_ips: ["IpAddr"],
    #           connect_ips_v6: ["Ipv6Addr"]
    #         },
    #         radius_settings: {
    #           radius_servers: ["Server"],
    #           radius_servers_ipv6: ["Server"],
    #           radius_port: 1,
    #           radius_timeout: 1,
    #           radius_retries: 1,
    #           shared_secret: "RadiusSharedSecret",
    #           authentication_protocol: "PAP" # One of: ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"],
    #           display_label: "RadiusDisplayLabel",
    #           use_same_username: false
    #         },
    #         radius_status: "Creating" # One of: ["Creating", "Completed", "Failed"],
    #         stage_reason: "StageReason",
    #         sso_enabled: false,
    #         desired_number_of_domain_controllers: 1,
    #         owner_directory_description: {
    #           directory_id: "DirectoryId",
    #           account_id: "CustomerId",
    #           dns_ip_addrs: ["IpAddr"],
    #           dns_ipv6_addrs: ["Ipv6Addr"],
    #           vpc_settings: {
    #             vpc_id: "VpcId",
    #             subnet_ids: ["SubnetId"],
    #             security_group_id: "SecurityGroupId",
    #             availability_zones: ["AvailabilityZone"]
    #           },
    #           radius_settings: {
    #             radius_servers: ["Server"],
    #             radius_servers_ipv6: ["Server"],
    #             radius_port: 1,
    #             radius_timeout: 1,
    #             radius_retries: 1,
    #             shared_secret: "RadiusSharedSecret",
    #             authentication_protocol: "PAP" # One of: ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"],
    #             display_label: "RadiusDisplayLabel",
    #             use_same_username: false
    #           },
    #           radius_status: "Creating" # One of: ["Creating", "Completed", "Failed"],
    #           network_type: "Dual-stack" # One of: ["Dual-stack", "IPv4", "IPv6"]
    #         },
    #         regions_info: {
    #           primary_region: "RegionName",
    #           additional_regions: ["RegionName"]
    #         },
    #         os_version: "SERVER_2012" # One of: ["SERVER_2012", "SERVER_2019"],
    #         hybrid_settings: {
    #           self_managed_dns_ip_addrs: ["IpAddr"],
    #           self_managed_instance_ids: ["AssessmentInstanceId"]
    #         },
    #         network_type: "Dual-stack" # One of: ["Dual-stack", "IPv4", "IPv6"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDirectoriesResult]
    def describe_directories(params = {}, options = {})
      request = build_request(:describe_directories, params)
      request.send_request(options)
    end

    # <p>Obtains status of directory data access enablement through the Directory Service Data API for the
    #       specified directory.</p>
    # @param [Hash, Types::DescribeDirectoryDataAccessRequest] params
    # @option params [String] :directory_id
    #   <p>The directory identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.describe_directory_data_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_access_status: "Disabled" # One of: ["Disabled", "Disabling", "Enabled", "Enabling", "Failed"]
    #   }
    # @return [Types::DescribeDirectoryDataAccessResult]
    def describe_directory_data_access(params = {}, options = {})
      request = build_request(:describe_directory_data_access, params)
      request.send_request(options)
    end

    # <p>Provides information about any domain controllers in your directory.</p>
    # @param [Hash, Types::DescribeDomainControllersRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier of the directory for which to retrieve the domain controller
    #         information.</p>
    # @option params [Array<String>] :domain_controller_ids
    #   <p>A list of identifiers for the domain controllers whose information will be
    #         provided.</p>
    # @option params [String] :next_token
    #   <p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call
    #         to <a>DescribeDomainControllers</a>. Pass null if this is the first call.
    #       </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     domain_controller_ids: ["DomainControllerId"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_domain_controllers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_controllers: [
    #       {
    #         directory_id: "DirectoryId",
    #         domain_controller_id: "DomainControllerId",
    #         dns_ip_addr: "IpAddr",
    #         dns_ipv6_addr: "Ipv6Addr",
    #         vpc_id: "VpcId",
    #         subnet_id: "SubnetId",
    #         availability_zone: "AvailabilityZone",
    #         status: "Creating" # One of: ["Creating", "Active", "Impaired", "Restoring", "Deleting", "Deleted", "Failed", "Updating"],
    #         status_reason: "DomainControllerStatusReason",
    #         launch_time: Time.now,
    #         status_last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDomainControllersResult]
    def describe_domain_controllers(params = {}, options = {})
      request = build_request(:describe_domain_controllers, params)
      request.send_request(options)
    end

    # <p>Obtains information about which Amazon SNS topics receive status messages from the specified
    #       directory.</p>
    #          <p>If no input parameters are provided, such as DirectoryId or TopicName, this request
    #       describes all of the associations in the account.</p>
    # @param [Hash, Types::DescribeEventTopicsRequest] params
    # @option params [String] :directory_id
    #   <p>The Directory ID for which to get the list of associated Amazon SNS topics. If this member
    #         is null, associations for all Directory IDs are returned.</p>
    # @option params [Array<String>] :topic_names
    #   <p>A list of Amazon SNS topic names for which to obtain the information. If this member is
    #         null, all associations for the specified Directory ID are returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being
    #         thrown.</p>
    # @example To describe event topics
    #   # The following example obtains information about which SNS topics receive status messages from the specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     topic_names: [
    #       "snstopicexample"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_event_topics(params, options)
    #   response.to_h #=>
    #   {
    #     event_topics: [
    #       {
    #         directory_id: "d-92654abfed",
    #         status: Registered,
    #         topic_arn: "arn:aws:sns:us-east-2:123456789012:snstopicexample",
    #         topic_name: "snstopicexample"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     topic_names: ["TopicName"]
    #   }
    #   options = {}
    #   response = client.describe_event_topics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_topics: [
    #       {
    #         directory_id: "DirectoryId",
    #         topic_name: "TopicName",
    #         topic_arn: "TopicArn",
    #         created_date_time: Time.now,
    #         status: "Registered" # One of: ["Registered", "Topic not found", "Failed", "Deleted"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventTopicsResult]
    def describe_event_topics(params = {}, options = {})
      request = build_request(:describe_event_topics, params)
      request.send_request(options)
    end

    # <p>Retrieves information about update activities for a hybrid directory. This operation
    #             provides details about configuration changes, administrator account updates, and
    #             self-managed instance settings (IDs and DNS IPs).</p>
    # @param [Hash, Types::DescribeHybridADUpdateRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the hybrid directory for which to retrieve update
    #               information.</p>
    # @option params [String] :update_type
    #   <p>The type of update activities to retrieve. Valid values include
    #                   <code>SelfManagedInstances</code> and
    #               <code>HybridAdministratorAccount</code>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to <a>DescribeHybridADUpdate</a>. Pass null if this is the first request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     update_type: "SelfManagedInstances" # One of: ["SelfManagedInstances", "HybridAdministratorAccount"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_hybrid_ad_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_activities: {
    #       self_managed_instances: [
    #         {
    #           status: "Updated" # One of: ["Updated", "Updating", "UpdateFailed"],
    #           status_reason: "UpdateStatusReason",
    #           initiated_by: "InitiatedBy",
    #           new_value: {
    #             instance_ids: ["AssessmentInstanceId"],
    #             dns_ips: ["IpAddr"]
    #           },
    #           previous_value: {
    #             instance_ids: ["AssessmentInstanceId"],
    #             dns_ips: ["IpAddr"]
    #           },
    #           start_time: Time.now,
    #           last_updated_date_time: Time.now,
    #           assessment_id: "AssessmentId"
    #         }
    #       ],
    #       hybrid_administrator_account: [
    #         {
    #           status: "Updated" # One of: ["Updated", "Updating", "UpdateFailed"],
    #           status_reason: "UpdateStatusReason",
    #           initiated_by: "InitiatedBy",
    #           new_value: {
    #             instance_ids: ["AssessmentInstanceId"],
    #             dns_ips: ["IpAddr"]
    #           },
    #           previous_value: {
    #             instance_ids: ["AssessmentInstanceId"],
    #             dns_ips: ["IpAddr"]
    #           },
    #           start_time: Time.now,
    #           last_updated_date_time: Time.now,
    #           assessment_id: "AssessmentId"
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeHybridADUpdateResult]
    def describe_hybrid_ad_update(params = {}, options = {})
      request = build_request(:describe_hybrid_ad_update, params)
      request.send_request(options)
    end

    # <p>Describes the status of LDAP security for the specified directory.</p>
    # @param [Hash, Types::DescribeLDAPSSettingsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    # @option params [String] :next_token
    #   <p>The type of next token used for pagination.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of items that should be displayed on one page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     type: "Client" # One of: ["Client"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_ldaps_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ldaps_settings_info: [
    #       {
    #         ldaps_status: "Enabling" # One of: ["Enabling", "Enabled", "EnableFailed", "Disabled"],
    #         ldaps_status_reason: "LDAPSStatusReason",
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeLDAPSSettingsResult]
    def describe_ldaps_settings(params = {}, options = {})
      request = build_request(:describe_ldaps_settings, params)
      request.send_request(options)
    end

    # <p>Provides information about the Regions that are configured for multi-Region
    #       replication.</p>
    # @param [Hash, Types::DescribeRegionsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :region_name
    #   <p>The name of the Region. For example, <code>us-east-1</code>.</p>
    # @option params [String] :next_token
    #   <p>The <code>DescribeRegionsResult.NextToken</code> value from a previous call to <a>DescribeRegions</a>. Pass null if this is the first call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     region_name: "RegionName",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_regions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regions_description: [
    #       {
    #         directory_id: "DirectoryId",
    #         region_name: "RegionName",
    #         region_type: "Primary" # One of: ["Primary", "Additional"],
    #         status: "Requested" # One of: ["Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed", "Updating"],
    #         vpc_settings: {
    #           vpc_id: "VpcId", # required
    #           subnet_ids: ["SubnetId"], # required
    #         },
    #         desired_number_of_domain_controllers: 1,
    #         launch_time: Time.now,
    #         status_last_updated_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegionsResult]
    def describe_regions(params = {}, options = {})
      request = build_request(:describe_regions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the configurable settings for the specified directory.</p>
    # @param [Hash, Types::DescribeSettingsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to retrieve information.</p>
    # @option params [String] :status
    #   <p>The status of the directory settings for which to retrieve information.</p>
    # @option params [String] :next_token
    #   <p>The <code>DescribeSettingsResult.NextToken</code> value from a previous call to <a>DescribeSettings</a>. Pass null if this is the first call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     status: "Requested" # One of: ["Requested", "Updating", "Updated", "Failed", "Default"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     setting_entries: [
    #       {
    #         type: "DirectoryConfigurationSettingType",
    #         name: "DirectoryConfigurationSettingName",
    #         allowed_values: "DirectoryConfigurationSettingAllowedValues",
    #         applied_value: "DirectoryConfigurationSettingValue",
    #         requested_value: "DirectoryConfigurationSettingValue",
    #         request_status: "Requested" # One of: ["Requested", "Updating", "Updated", "Failed", "Default"],
    #         request_detailed_status: {
    #           "RegionName" => "Requested" # One of: ["Requested", "Updating", "Updated", "Failed", "Default"]
    #         },
    #         request_status_message: "DirectoryConfigurationSettingRequestStatusMessage",
    #         last_updated_date_time: Time.now,
    #         last_requested_date_time: Time.now,
    #         data_type: "DirectoryConfigurationSettingDataType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSettingsResult]
    def describe_settings(params = {}, options = {})
      request = build_request(:describe_settings, params)
      request.send_request(options)
    end

    # <p>Returns the shared directories in your account. </p>
    # @param [Hash, Types::DescribeSharedDirectoriesRequest] params
    # @option params [String] :owner_directory_id
    #   <p>Returns the identifier of the directory in the directory owner account. </p>
    # @option params [Array<String>] :shared_directory_ids
    #   <p>A list of identifiers of all shared directories in your account. </p>
    # @option params [String] :next_token
    #   <p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to
    #           <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>
    # @option params [Integer] :limit
    #   <p>The number of shared directories to return in the response object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     owner_directory_id: "DirectoryId", # required
    #     shared_directory_ids: ["DirectoryId"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_shared_directories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shared_directories: [
    #       {
    #         owner_account_id: "CustomerId",
    #         owner_directory_id: "DirectoryId",
    #         share_method: "ORGANIZATIONS" # One of: ["ORGANIZATIONS", "HANDSHAKE"],
    #         shared_account_id: "CustomerId",
    #         shared_directory_id: "DirectoryId",
    #         share_status: "Shared" # One of: ["Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"],
    #         share_notes: "Notes",
    #         created_date_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSharedDirectoriesResult]
    def describe_shared_directories(params = {}, options = {})
      request = build_request(:describe_shared_directories, params)
      request.send_request(options)
    end

    # <p>Obtains information about the directory snapshots that belong to this account.</p>
    #          <p>This operation supports pagination with the use of the <i>NextToken</i> request and
    #          response parameters. If more results are available, the <i>DescribeSnapshots.NextToken</i>
    #          member contains a token that you pass in the next call to <a>DescribeSnapshots</a> to
    #          retrieve the next set of items.</p>
    #          <p>You can also specify a maximum number of return results with the <i>Limit</i>
    #          parameter.</p>
    # @param [Hash, Types::DescribeSnapshotsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to retrieve snapshot information.</p>
    # @option params [Array<String>] :snapshot_ids
    #   <p>A list of identifiers of the snapshots to obtain the information for. If this member is
    #            null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i>
    #            members.</p>
    # @option params [String] :next_token
    #   <p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to
    #               <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects to return.</p>
    # @example To describe snapshots
    #   # The following example obtains information about a specified directory snapshot.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     snapshot_ids: [
    #       "s-9267f6da4e"
    #     ],
    #     limit: 0
    #   }
    #   options = {}
    #   response = client.describe_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         directory_id: "d-92673c8a8f",
    #         snapshot_id: "s-9267f6da4e",
    #         start_time: Time.parse(1481289211.615),
    #         status: Completed,
    #         type: Auto
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     snapshot_ids: ["SnapshotId"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         directory_id: "DirectoryId",
    #         snapshot_id: "SnapshotId",
    #         type: "Auto" # One of: ["Auto", "Manual"],
    #         name: "SnapshotName",
    #         status: "Creating" # One of: ["Creating", "Completed", "Failed"],
    #         start_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSnapshotsResult]
    def describe_snapshots(params = {}, options = {})
      request = build_request(:describe_snapshots, params)
      request.send_request(options)
    end

    # <p>Obtains information about the trust relationships for this account.</p>
    #          <p>If no input parameters are provided, such as DirectoryId or TrustIds, this request
    #       describes all the trust relationships belonging to the account.</p>
    # @param [Hash, Types::DescribeTrustsRequest] params
    # @option params [String] :directory_id
    #   <p>The Directory ID of the Amazon Web Services directory that is a part of the requested trust
    #         relationship.</p>
    # @option params [Array<String>] :trust_ids
    #   <p>A list of identifiers of the trust relationships for which to obtain the information. If
    #         this member is null, all trust relationships that belong to the current account are
    #         returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
    # @option params [String] :next_token
    #   <p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to
    #           <a>DescribeTrusts</a>. Pass null if this is the first call.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of objects to return.</p>
    # @example To describe a trust 
    #   # The following example obtains information about the trust relationship for a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     trust_ids: [
    #       "t-9267353df0"
    #     ],
    #     limit: 0
    #   }
    #   options = {}
    #   response = client.describe_trusts(params, options)
    #   response.to_h #=>
    #   {
    #     trusts: [
    #       {
    #         created_date_time: Time.parse(1481749250.657),
    #         directory_id: "d-92654abfed",
    #         last_updated_date_time: Time.parse(1481749260.156),
    #         remote_domain_name: "sales.example.com",
    #         state_last_updated_date_time: Time.parse(1481749260.156),
    #         trust_direction: One-Way: Outgoing,
    #         trust_id: "t-9267353df0",
    #         trust_state: Failed,
    #         trust_state_reason: "The specified domain either does not exist or could not be contacted. Name: sales.example.com",
    #         trust_type: Forest
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     trust_ids: ["TrustId"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_trusts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trusts: [
    #       {
    #         directory_id: "DirectoryId",
    #         trust_id: "TrustId",
    #         remote_domain_name: "RemoteDomainName",
    #         trust_type: "Forest" # One of: ["Forest", "External"],
    #         trust_direction: "One-Way: Outgoing" # One of: ["One-Way: Outgoing", "One-Way: Incoming", "Two-Way"],
    #         trust_state: "Creating" # One of: ["Creating", "Created", "Verifying", "VerifyFailed", "Verified", "Updating", "UpdateFailed", "Updated", "Deleting", "Deleted", "Failed"],
    #         created_date_time: Time.now,
    #         last_updated_date_time: Time.now,
    #         state_last_updated_date_time: Time.now,
    #         trust_state_reason: "TrustStateReason",
    #         selective_auth: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeTrustsResult]
    def describe_trusts(params = {}, options = {})
      request = build_request(:describe_trusts, params)
      request.send_request(options)
    end

    # <p> Describes the updates of a directory for a particular update type. </p>
    # @param [Hash, Types::DescribeUpdateDirectoryRequest] params
    # @option params [String] :directory_id
    #   <p> The unique identifier of the directory. </p>
    # @option params [String] :update_type
    #   <p> The type of updates you want to describe for the directory. </p>
    # @option params [String] :region_name
    #   <p> The name of the Region. </p>
    # @option params [String] :next_token
    #   <p> The <code>DescribeUpdateDirectoryResult</code>. NextToken value from a previous call to
    #           <a>DescribeUpdateDirectory</a>. Pass null if this is the first call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     update_type: "OS" # One of: ["OS", "NETWORK", "SIZE"], # required
    #     region_name: "RegionName",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_update_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_activities: [
    #       {
    #         region: "RegionName",
    #         status: "Updated" # One of: ["Updated", "Updating", "UpdateFailed"],
    #         status_reason: "UpdateStatusReason",
    #         initiated_by: "InitiatedBy",
    #         new_value: {
    #           os_update_settings: {
    #             os_version: "SERVER_2012" # One of: ["SERVER_2012", "SERVER_2019"]
    #           }
    #         },
    #         previous_value: {
    #           os_update_settings: {
    #             os_version: "SERVER_2012" # One of: ["SERVER_2012", "SERVER_2019"]
    #           }
    #         },
    #         start_time: Time.now,
    #         last_updated_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeUpdateDirectoryResult]
    def describe_update_directory(params = {}, options = {})
      request = build_request(:describe_update_directory, params)
      request.send_request(options)
    end

    # <p>Disables the certificate authority (CA) enrollment policy for the specified directory. This stops
    #       automatic certificate enrollment and management for domain-joined clients, but does not affect
    #       existing certificates.</p>
    #          <important>
    #             <p>Disabling the CA enrollment policy prevents new certificates from being automatically
    #         enrolled, but existing certificates remain valid and functional until they expire.</p>
    #          </important>
    # @param [Hash, Types::DisableCAEnrollmentPolicyRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to disable the CA enrollment policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.disable_ca_enrollment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableCAEnrollmentPolicyResult]
    def disable_ca_enrollment_policy(params = {}, options = {})
      request = build_request(:disable_ca_enrollment_policy, params)
      request.send_request(options)
    end

    # <p>Disables alternative client authentication methods for the specified directory. </p>
    # @param [Hash, Types::DisableClientAuthenticationRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory </p>
    # @option params [String] :type
    #   <p>The type of client authentication to disable. Currently the only parameter
    #           <code>"SmartCard"</code> is supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     type: "SmartCard" # One of: ["SmartCard", "SmartCardOrPassword"], # required
    #   }
    #   options = {}
    #   response = client.disable_client_authentication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableClientAuthenticationResult]
    def disable_client_authentication(params = {}, options = {})
      request = build_request(:disable_client_authentication, params)
      request.send_request(options)
    end

    # <p>Deactivates access to directory data via the Directory Service Data API for the specified directory. For
    #       more information, see <a href="https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html">Directory Service Data API Reference</a>.</p>
    # @param [Hash, Types::DisableDirectoryDataAccessRequest] params
    # @option params [String] :directory_id
    #   <p>The directory identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.disable_directory_data_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableDirectoryDataAccessResult]
    def disable_directory_data_access(params = {}, options = {})
      request = build_request(:disable_directory_data_access, params)
      request.send_request(options)
    end

    # <p>Deactivates LDAP secure calls for the specified directory.</p>
    # @param [Hash, Types::DisableLDAPSRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     type: "Client" # One of: ["Client"], # required
    #   }
    #   options = {}
    #   response = client.disable_ldaps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableLDAPSResult]
    def disable_ldaps(params = {}, options = {})
      request = build_request(:disable_ldaps, params)
      request.send_request(options)
    end

    # <p>Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User
    #          Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>
    # @param [Hash, Types::DisableRadiusRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to disable MFA.</p>
    # @example To disable radius
    #   # The following example disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector directory.
    #   params = {
    #     directory_id: "d-92654abfed"
    #   }
    #   options = {}
    #   response = client.disable_radius(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.disable_radius(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableRadiusResult]
    def disable_radius(params = {}, options = {})
      request = build_request(:disable_radius, params)
      request.send_request(options)
    end

    # <p>Disables single-sign on for a directory.</p>
    # @param [Hash, Types::DisableSsoRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to disable single-sign on.</p>
    # @option params [String] :user_name
    #   <p>The username of an alternate account to use to disable single-sign on. This is only used
    #         for AD Connector directories. This account must have privileges to remove a service
    #         principal name.</p>
    #            <p>If the AD Connector service account does not have privileges to remove a service
    #         principal name, you can specify an alternate account with the <i>UserName</i>
    #         and <i>Password</i> parameters. These credentials are only used to disable
    #         single sign-on and are not stored by the service. The AD Connector service account is not
    #         changed.</p>
    # @option params [String] :password
    #   <p>The password of an alternate account to use to disable single-sign on. This is only used
    #         for AD Connector directories. For more information, see the <i>UserName</i>
    #         parameter.</p>
    # @example To disable SSO
    #   # The following example disables single sign-on for a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     user_name: "Admin",
    #     password: "Str0ngP@ssw0rd"
    #   }
    #   options = {}
    #   response = client.disable_sso(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     user_name: "UserName",
    #     password: "ConnectPassword"
    #   }
    #   options = {}
    #   response = client.disable_sso(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableSsoResult]
    def disable_sso(params = {}, options = {})
      request = build_request(:disable_sso, params)
      request.send_request(options)
    end

    # <p>Enables certificate authority (CA) enrollment policy for the specified directory. This allows
    #       domain-joined clients to automatically request and receive certificates from the specified
    #       Amazon Web Services Private Certificate Authority.</p>
    #          <note>
    #             <p>Before enabling CA enrollment, ensure that the PCA connector is properly configured and
    #         accessible from the directory. The connector must be in an active state and have the
    #         necessary permissions.</p>
    #          </note>
    # @param [Hash, Types::EnableCAEnrollmentPolicyRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to enable the CA enrollment policy.</p>
    # @option params [String] :pca_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the Private Certificate Authority (PCA) connector to use
    #         for automatic certificate enrollment. This connector must be properly configured and
    #         accessible from the directory.</p>
    #            <p>The ARN format is:
    #         <code>arn:aws:pca-connector-ad:<i>region</i>:<i>account-id</i>:connector/<i>connector-id</i>
    #               </code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     pca_connector_arn: "PcaConnectorArn", # required
    #   }
    #   options = {}
    #   response = client.enable_ca_enrollment_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableCAEnrollmentPolicyResult]
    def enable_ca_enrollment_policy(params = {}, options = {})
      request = build_request(:enable_ca_enrollment_policy, params)
      request.send_request(options)
    end

    # <p>Enables alternative client authentication methods for the specified directory.</p>
    # @param [Hash, Types::EnableClientAuthenticationRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the specified directory. </p>
    # @option params [String] :type
    #   <p>The type of client authentication to enable. Currently only the value
    #           <code>SmartCard</code> is supported. Smart card authentication in AD Connector requires
    #         that you enable Kerberos Constrained Delegation for the Service User to the LDAP service in
    #         your self-managed AD. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     type: "SmartCard" # One of: ["SmartCard", "SmartCardOrPassword"], # required
    #   }
    #   options = {}
    #   response = client.enable_client_authentication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableClientAuthenticationResult]
    def enable_client_authentication(params = {}, options = {})
      request = build_request(:enable_client_authentication, params)
      request.send_request(options)
    end

    # <p>Enables access to directory data via the Directory Service Data API for the specified directory. For
    #       more information, see <a href="https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html">Directory Service Data API Reference</a>.</p>
    # @param [Hash, Types::EnableDirectoryDataAccessRequest] params
    # @option params [String] :directory_id
    #   <p>The directory identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.enable_directory_data_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableDirectoryDataAccessResult]
    def enable_directory_data_access(params = {}, options = {})
      request = build_request(:enable_directory_data_access, params)
      request.send_request(options)
    end

    # <p>Activates the switch for the specific directory to always use LDAP secure calls.</p>
    # @param [Hash, Types::EnableLDAPSRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     type: "Client" # One of: ["Client"], # required
    #   }
    #   options = {}
    #   response = client.enable_ldaps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableLDAPSResult]
    def enable_ldaps(params = {}, options = {})
      request = build_request(:enable_ldaps, params)
      request.send_request(options)
    end

    # <p>Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User
    #          Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>
    # @param [Hash, Types::EnableRadiusRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to enable MFA.</p>
    # @option params [Types::RadiusSettings] :radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #            server.</p>
    # @example To enable radius
    #   # The following example enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     radius_settings: {
    #       display_label: "MyRadius",
    #       use_same_username: true,
    #       radius_timeout: 1,
    #       authentication_protocol: PAP,
    #       radius_port: 1200,
    #       radius_retries: 2,
    #       shared_secret: "123456789",
    #       radius_servers: [
    #         "172.168.111.12"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.enable_radius(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     radius_settings: { # required
    #       radius_servers: ["Server"],
    #       radius_servers_ipv6: ["Server"],
    #       radius_port: 1,
    #       radius_timeout: 1,
    #       radius_retries: 1,
    #       shared_secret: "RadiusSharedSecret",
    #       authentication_protocol: "PAP" # One of: ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"],
    #       display_label: "RadiusDisplayLabel",
    #       use_same_username: false
    #     }
    #   }
    #   options = {}
    #   response = client.enable_radius(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableRadiusResult]
    def enable_radius(params = {}, options = {})
      request = build_request(:enable_radius, params)
      request.send_request(options)
    end

    # <p>Enables single sign-on for a directory. Single sign-on allows users in your directory to
    #       access certain Amazon Web Services services from a computer joined to the directory without having to enter
    #       their credentials separately.</p>
    # @param [Hash, Types::EnableSsoRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to enable single-sign on.</p>
    # @option params [String] :user_name
    #   <p>The username of an alternate account to use to enable single-sign on. This is only used
    #         for AD Connector directories. This account must have privileges to add a service principal
    #         name.</p>
    #            <p>If the AD Connector service account does not have privileges to add a service principal
    #         name, you can specify an alternate account with the <i>UserName</i> and
    #           <i>Password</i> parameters. These credentials are only used to enable single
    #         sign-on and are not stored by the service. The AD Connector service account is not
    #         changed.</p>
    # @option params [String] :password
    #   <p>The password of an alternate account to use to enable single-sign on. This is only used
    #         for AD Connector directories. For more information, see the <i>UserName</i>
    #         parameter.</p>
    # @example To enable SSO
    #   # To enable single sign-on for a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     user_name: "Admin",
    #     password: "Str0ngP@ssw0rd"
    #   }
    #   options = {}
    #   response = client.enable_sso(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     user_name: "UserName",
    #     password: "ConnectPassword"
    #   }
    #   options = {}
    #   response = client.enable_sso(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableSsoResult]
    def enable_sso(params = {}, options = {})
      request = build_request(:enable_sso, params)
      request.send_request(options)
    end

    # <p>Obtains directory limit information for the current Region.</p>
    # @param [Hash, Types::GetDirectoryLimitsRequest] params
    # @example To get directory limits
    #   # The following example obtains directory limit information for the current region.
    #   params = {}
    #   options = {}
    #   response = client.get_directory_limits(params, options)
    #   response.to_h #=>
    #   {
    #     directory_limits: {
    #       cloud_only_directories_current_count: 2,
    #       cloud_only_directories_limit: 10,
    #       cloud_only_directories_limit_reached: false,
    #       cloud_only_microsoft_ad_current_count: 2,
    #       cloud_only_microsoft_ad_limit: 10,
    #       cloud_only_microsoft_ad_limit_reached: false,
    #       connected_directories_current_count: 1,
    #       connected_directories_limit: 10,
    #       connected_directories_limit_reached: false
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_directory_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_limits: {
    #       cloud_only_directories_limit: 1,
    #       cloud_only_directories_current_count: 1,
    #       cloud_only_directories_limit_reached: false,
    #       cloud_only_microsoft_ad_limit: 1,
    #       cloud_only_microsoft_ad_current_count: 1,
    #       cloud_only_microsoft_ad_limit_reached: false,
    #       connected_directories_limit: 1,
    #       connected_directories_current_count: 1,
    #       connected_directories_limit_reached: false
    #     }
    #   }
    # @return [Types::GetDirectoryLimitsResult]
    def get_directory_limits(params = {}, options = {})
      request = build_request(:get_directory_limits, params)
      request.send_request(options)
    end

    # <p>Obtains the manual snapshot limits for a directory.</p>
    # @param [Hash, Types::GetSnapshotLimitsRequest] params
    # @option params [String] :directory_id
    #   <p>Contains the identifier of the directory to obtain the limits for.</p>
    # @example To get snapshot limits
    #   # The following example obtains the manual snapshot limits for a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed"
    #   }
    #   options = {}
    #   response = client.get_snapshot_limits(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot_limits: {
    #       manual_snapshots_current_count: 1,
    #       manual_snapshots_limit: 5,
    #       manual_snapshots_limit_reached: false
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.get_snapshot_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_limits: {
    #       manual_snapshots_limit: 1,
    #       manual_snapshots_current_count: 1,
    #       manual_snapshots_limit_reached: false
    #     }
    #   }
    # @return [Types::GetSnapshotLimitsResult]
    def get_snapshot_limits(params = {}, options = {})
      request = build_request(:get_snapshot_limits, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of directory assessments for the specified directory or all
    #             assessments in your account. Use this operation to monitor assessment status and manage
    #             multiple assessments.</p>
    # @param [Hash, Types::ListADAssessmentsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to list assessments. If not specified, all
    #               assessments in your account are returned.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to <a>ListADAssessments</a>.
    #               Pass null if this is the first request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of assessment summaries to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_ad_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessments: [
    #       {
    #         assessment_id: "AssessmentId",
    #         directory_id: "DirectoryId",
    #         dns_name: "DirectoryName",
    #         start_time: Time.now,
    #         last_update_date_time: Time.now,
    #         status: "AssessmentStatus",
    #         customer_dns_ips: ["IpAddr"],
    #         report_type: "AssessmentReportType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListADAssessmentsResult]
    def list_ad_assessments(params = {}, options = {})
      request = build_request(:list_ad_assessments, params)
      request.send_request(options)
    end

    # <p>For the specified directory, lists all the certificates registered for a secure LDAP or
    #       client certificate authentication.</p>
    # @param [Hash, Types::ListCertificatesRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :next_token
    #   <p>A token for requesting another page of certificates if the <code>NextToken</code> response
    #         element indicates that more certificates are available. Use the value of the returned
    #           <code>NextToken</code> element in your request until the token comes back as
    #           <code>null</code>. Pass <code>null</code> if this is the first call.</p>
    # @option params [Integer] :limit
    #   <p>The number of items that should show up on one page</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     certificates_info: [
    #       {
    #         certificate_id: "CertificateId",
    #         common_name: "CertificateCN",
    #         state: "Registering" # One of: ["Registering", "Registered", "RegisterFailed", "Deregistering", "Deregistered", "DeregisterFailed"],
    #         expiry_date_time: Time.now,
    #         type: "ClientCertAuth" # One of: ["ClientCertAuth", "ClientLDAPS"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCertificatesResult]
    def list_certificates(params = {}, options = {})
      request = build_request(:list_certificates, params)
      request.send_request(options)
    end

    # <p>Lists the address blocks that you have added to a directory.</p>
    # @param [Hash, Types::ListIpRoutesRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier (ID) of the directory for which you want to retrieve the IP addresses.</p>
    # @option params [String] :next_token
    #   <p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of items to return. If this value is zero, the maximum number of items is
    #            specified by the limitations of the operation.</p>
    # @example To list IP routes
    #   # The following example lists the address blocks that have been added to a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     limit: 0
    #   }
    #   options = {}
    #   response = client.list_ip_routes(params, options)
    #   response.to_h #=>
    #   {
    #     ip_routes_info: [
    #       {
    #         added_date_time: Time.parse(1481577631.63),
    #         cidr_ip: "12.12.12.12/32",
    #         description: "example",
    #         directory_id: "d-92654abfed",
    #         ip_route_status_msg: Added
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_ip_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_routes_info: [
    #       {
    #         directory_id: "DirectoryId",
    #         cidr_ip: "CidrIp",
    #         cidr_ipv6: "CidrIpv6",
    #         ip_route_status_msg: "Adding" # One of: ["Adding", "Added", "Removing", "Removed", "AddFailed", "RemoveFailed"],
    #         added_date_time: Time.now,
    #         ip_route_status_reason: "IpRouteStatusReason",
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIpRoutesResult]
    def list_ip_routes(params = {}, options = {})
      request = build_request(:list_ip_routes, params)
      request.send_request(options)
    end

    # <p>Lists the active log subscriptions for the Amazon Web Services account.</p>
    # @param [Hash, Types::ListLogSubscriptionsRequest] params
    # @option params [String] :directory_id
    #   <p>If a <i>DirectoryID</i> is provided, lists only the log subscription
    #         associated with that directory. If no <i>DirectoryId</i> is provided, lists all
    #         log subscriptions associated with your Amazon Web Services account. If there are no log subscriptions for
    #         the Amazon Web Services account or the directory, an empty list will be returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_log_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_subscriptions: [
    #       {
    #         directory_id: "DirectoryId",
    #         log_group_name: "LogGroupName",
    #         subscription_created_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLogSubscriptionsResult]
    def list_log_subscriptions(params = {}, options = {})
      request = build_request(:list_log_subscriptions, params)
      request.send_request(options)
    end

    # <p>Lists all schema extensions applied to a Microsoft AD Directory.</p>
    # @param [Hash, Types::ListSchemaExtensionsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory from which to retrieve the schema extension
    #         information.</p>
    # @option params [String] :next_token
    #   <p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to
    #           <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @example To list schema extensions
    #   # The following example lists all schema extensions applied to a specified Microsoft AD Directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     limit: 0
    #   }
    #   options = {}
    #   response = client.list_schema_extensions(params, options)
    #   response.to_h #=>
    #   {
    #     schema_extensions_info: [
    #       {
    #         description: "example text",
    #         directory_id: "d-92654abfed",
    #         end_date_time: Time.parse(1481586088.301),
    #         schema_extension_id: "e-926731d2a0",
    #         schema_extension_status: Cancelled,
    #         schema_extension_status_reason: "Cancellation is complete. No schema updates were applied to your directory.",
    #         start_date_time: Time.parse(1481584463.548)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_schema_extensions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_extensions_info: [
    #       {
    #         directory_id: "DirectoryId",
    #         schema_extension_id: "SchemaExtensionId",
    #         description: "Description",
    #         schema_extension_status: "Initializing" # One of: ["Initializing", "CreatingSnapshot", "UpdatingSchema", "Replicating", "CancelInProgress", "RollbackInProgress", "Cancelled", "Failed", "Completed"],
    #         schema_extension_status_reason: "SchemaExtensionStatusReason",
    #         start_date_time: Time.now,
    #         end_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSchemaExtensionsResult]
    def list_schema_extensions(params = {}, options = {})
      request = build_request(:list_schema_extensions, params)
      request.send_request(options)
    end

    # <p>Lists all tags on a directory.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_id
    #   <p>Identifier (ID) of the directory for which you want to retrieve tags.</p>
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    # @option params [Integer] :limit
    #   <p>Reserved for future use.</p>
    # @example To list tags for a directory
    #   # The following example lists all tags associated with a specified directory.
    #   params = {
    #     resource_id: "d-92654abfed",
    #     limit: 0
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "environment",
    #         value: "production"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     limit: 1
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
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Registers a certificate for a secure LDAP or client certificate authentication.</p>
    # @param [Hash, Types::RegisterCertificateRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [String] :certificate_data
    #   <p>The certificate PEM string that needs to be registered.</p>
    # @option params [String] :type
    #   <p>The function that the registered certificate performs. Valid values include
    #           <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is
    #           <code>ClientLDAPS</code>.</p>
    # @option params [Types::ClientCertAuthSettings] :client_cert_auth_settings
    #   <p>A <code>ClientCertAuthSettings</code> object that contains client certificate
    #         authentication settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     certificate_data: "CertificateData", # required
    #     type: "ClientCertAuth" # One of: ["ClientCertAuth", "ClientLDAPS"],
    #     client_cert_auth_settings: {
    #       ocsp_url: "OCSPUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.register_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_id: "CertificateId"
    #   }
    # @return [Types::RegisterCertificateResult]
    def register_certificate(params = {}, options = {})
      request = build_request(:register_certificate, params)
      request.send_request(options)
    end

    # <p>Associates a directory with an Amazon SNS topic. This establishes the directory as a
    #       publisher to the specified Amazon SNS topic. You can then receive email or text (SMS) messages when
    #       the status of your directory changes. You get notified if your directory goes from an Active
    #       status to an Impaired or Inoperable status. You also receive a notification when the directory
    #       returns to an Active status.</p>
    # @param [Hash, Types::RegisterEventTopicRequest] params
    # @option params [String] :directory_id
    #   <p>The Directory ID that will publish status messages to the Amazon SNS topic.</p>
    # @option params [String] :topic_name
    #   <p>The Amazon SNS topic name to which the directory will publish status messages. This Amazon SNS
    #         topic must be in the same region as the specified Directory ID.</p>
    # @example To register an event topic
    #   # The following example associates a directory with an SNS topic.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     topic_name: "snstopicexample"
    #   }
    #   options = {}
    #   response = client.register_event_topic(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     topic_name: "TopicName", # required
    #   }
    #   options = {}
    #   response = client.register_event_topic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterEventTopicResult]
    def register_event_topic(params = {}, options = {})
      request = build_request(:register_event_topic, params)
      request.send_request(options)
    end

    # <p>Rejects a directory sharing request that was sent from the directory owner account.</p>
    # @param [Hash, Types::RejectSharedDirectoryRequest] params
    # @option params [String] :shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     shared_directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.reject_shared_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shared_directory_id: "DirectoryId"
    #   }
    # @return [Types::RejectSharedDirectoryResult]
    def reject_shared_directory(params = {}, options = {})
      request = build_request(:reject_shared_directory, params)
      request.send_request(options)
    end

    # <p>Removes IP address blocks from a directory.</p>
    # @param [Hash, Types::RemoveIpRoutesRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier (ID) of the directory from which you want to remove the IP addresses.</p>
    # @option params [Array<String>] :cidr_ips
    #   <p>IP address blocks that you want to remove.</p>
    # @option params [Array<String>] :cidr_ipv6s
    #   <p>IPv6 address blocks that you want to remove.</p>
    # @example To remove IP routes
    #   # The following example removes IP address blocks from a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     cidr_ips: [
    #       "12.12.12.12/32"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_ip_routes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     cidr_ips: ["CidrIp"],
    #     cidr_ipv6s: ["CidrIpv6"]
    #   }
    #   options = {}
    #   response = client.remove_ip_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveIpRoutesResult]
    def remove_ip_routes(params = {}, options = {})
      request = build_request(:remove_ip_routes, params)
      request.send_request(options)
    end

    # <p>Stops all replication and removes the domain controllers from the specified Region. You
    #       cannot remove the primary Region with this operation. Instead, use the
    #         <code>DeleteDirectory</code> API.</p>
    # @param [Hash, Types::RemoveRegionRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which you want to remove Region replication.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.remove_region(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveRegionResult]
    def remove_region(params = {}, options = {})
      request = build_request(:remove_region, params)
      request.send_request(options)
    end

    # <p>Removes tags from a directory.</p>
    # @param [Hash, Types::RemoveTagsFromResourceRequest] params
    # @option params [String] :resource_id
    #   <p>Identifier (ID) of the directory from which to remove the tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    # @example To remove tags from a directory
    #   # The following example removes a tag from a specified directory.
    #   params = {
    #     resource_id: "d-92654abfed",
    #     tag_keys: [
    #       "environment"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsFromResourceResult]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
      request.send_request(options)
    end

    # <p>Resets the password for any user in your Managed Microsoft AD or Simple AD directory. Disabled
    #       users will become enabled and can be authenticated following the API call.</p>
    #          <p>You can reset the password for any user in your directory with the following
    #       exceptions:</p>
    #          <ul>
    #             <li>
    #                <p>For Simple AD, you cannot reset the password for any user that is a member of either
    #           the <b>Domain Admins</b> or <b>Enterprise
    #             Admins</b> group except for the administrator user.</p>
    #             </li>
    #             <li>
    #                <p>For Managed Microsoft AD, you can only reset the password for a user that is in an OU based
    #           off of the NetBIOS name that you typed when you created your directory. For example, you
    #           cannot reset the password for a user in the <b>Amazon Web Services
    #             Reserved</b> OU. For more information about the OU structure for an Managed Microsoft AD
    #           directory, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html">What Gets Created</a> in the <i>Directory Service Administration
    #           Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ResetUserPasswordRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier of the Managed Microsoft AD or Simple AD directory in which the user resides.</p>
    # @option params [String] :user_name
    #   <p>The user name of the user whose password will be reset.</p>
    # @option params [String] :new_password
    #   <p>The new password that will be reset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     user_name: "CustomerUserName", # required
    #     new_password: "UserPassword", # required
    #   }
    #   options = {}
    #   response = client.reset_user_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResetUserPasswordResult]
    def reset_user_password(params = {}, options = {})
      request = build_request(:reset_user_password, params)
      request.send_request(options)
    end

    # <p>Restores a directory using an existing directory snapshot.</p>
    #          <p>When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.</p>
    #          <p>This action returns as soon as the restore operation is initiated. You can monitor the
    #          progress of the restore operation by calling the <a>DescribeDirectories</a> operation with
    #          the directory identifier. When the <b>DirectoryDescription.Stage</b> value changes to
    #             <code>Active</code>, the restore operation is complete.</p>
    # @param [Hash, Types::RestoreFromSnapshotRequest] params
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot to restore from.</p>
    # @example To restore a snapshot
    #   # The following example restores a directory using an existing directory snapshot.
    #   params = {
    #     snapshot_id: "s-9267f6da4e"
    #   }
    #   options = {}
    #   response = client.restore_from_snapshot(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_id: "SnapshotId", # required
    #   }
    #   options = {}
    #   response = client.restore_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RestoreFromSnapshotResult]
    def restore_from_snapshot(params = {}, options = {})
      request = build_request(:restore_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Shares a specified directory (<code>DirectoryId</code>) in your Amazon Web Services account (directory
    #       owner) with another Amazon Web Services account (directory consumer). With this operation you can use your
    #       directory from any Amazon Web Services account and from any Amazon VPC within an Amazon Web Services Region.</p>
    #          <p>When you share your Managed Microsoft AD directory, Directory Service creates a shared directory in the
    #       directory consumer account. This shared directory contains the metadata to provide access to
    #       the directory within the directory owner account. The shared directory is visible in all VPCs
    #       in the directory consumer account.</p>
    #          <p>The <code>ShareMethod</code> parameter determines whether the specified directory can be
    #       shared between Amazon Web Services accounts inside the same Amazon Web Services organization (<code>ORGANIZATIONS</code>).
    #       It also determines whether you can share the directory with any other Amazon Web Services account either
    #       inside or outside of the organization (<code>HANDSHAKE</code>).</p>
    #          <p>The <code>ShareNotes</code> parameter is only used when <code>HANDSHAKE</code> is called,
    #       which sends a directory sharing request to the directory consumer. </p>
    # @param [Hash, Types::ShareDirectoryRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier of the Managed Microsoft AD directory that you want to share with other
    #         Amazon Web Services accounts.</p>
    # @option params [String] :share_notes
    #   <p>A directory share request that is sent by the directory owner to the directory consumer.
    #         The request includes a typed message to help the directory consumer administrator determine
    #         whether to approve or reject the share invitation.</p>
    # @option params [Types::ShareTarget] :share_target
    #   <p>Identifier for the directory consumer account with whom the directory is to be
    #         shared.</p>
    # @option params [String] :share_method
    #   <p>The method used when sharing a directory to determine whether the directory should be
    #         shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account
    #         by sending a directory sharing request (<code>HANDSHAKE</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     share_notes: "Notes",
    #     share_target: { # required
    #       id: "TargetId", # required
    #       type: "ACCOUNT" # One of: ["ACCOUNT"], # required
    #     },
    #     share_method: "ORGANIZATIONS" # One of: ["ORGANIZATIONS", "HANDSHAKE"], # required
    #   }
    #   options = {}
    #   response = client.share_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shared_directory_id: "DirectoryId"
    #   }
    # @return [Types::ShareDirectoryResult]
    def share_directory(params = {}, options = {})
      request = build_request(:share_directory, params)
      request.send_request(options)
    end

    # <p>Initiates a directory assessment to validate your self-managed AD environment for
    #             hybrid domain join. The assessment checks compatibility and connectivity of the
    #             self-managed AD environment.</p>
    #          <p>A directory assessment is automatically created when you create a hybrid directory.
    #             There are two types of assessments: <code>CUSTOMER</code> and <code>SYSTEM</code>. Your
    #             Amazon Web Services account has a limit of 100 <code>CUSTOMER</code> directory assessments.</p>
    #          <p>The assessment process typically takes 30 minutes or more to complete. The assessment
    #             process is asynchronous and you can monitor it with
    #             <code>DescribeADAssessment</code>.</p>
    #          <p>The <code>InstanceIds</code> must have a one-to-one correspondence with
    #                 <code>CustomerDnsIps</code>, meaning that if the IP address for instance i-10243410
    #             is 10.24.34.100 and the IP address for instance i-10243420 is 10.24.34.200, then the
    #             input arrays must maintain the same order relationship, either [10.24.34.100,
    #             10.24.34.200] paired with [i-10243410, i-10243420] or [10.24.34.200, 10.24.34.100]
    #             paired with [i-10243420, i-10243410].</p>
    #          <p>Note: You must provide exactly one <code>DirectoryId</code> or
    #                 <code>AssessmentConfiguration</code>.</p>
    # @param [Hash, Types::StartADAssessmentRequest] params
    # @option params [Types::AssessmentConfiguration] :assessment_configuration
    #   <p>Configuration parameters for the directory assessment, including DNS server
    #               information, domain name, Amazon VPC subnet, and Amazon Web Services System Manager managed node
    #               details.</p>
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to perform the assessment. This should be an
    #               existing directory. If the assessment is not for an existing directory, this parameter
    #               should be omitted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_configuration: {
    #       customer_dns_ips: ["IpAddr"], # required
    #       dns_name: "DirectoryName", # required
    #       vpc_settings: { # required
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       instance_ids: ["AssessmentInstanceId"], # required
    #       security_group_ids: ["SecurityGroupId"]
    #     },
    #     directory_id: "DirectoryId"
    #   }
    #   options = {}
    #   response = client.start_ad_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_id: "AssessmentId"
    #   }
    # @return [Types::StartADAssessmentResult]
    def start_ad_assessment(params = {}, options = {})
      request = build_request(:start_ad_assessment, params)
      request.send_request(options)
    end

    # <p>Applies a schema extension to a Microsoft AD directory.</p>
    # @param [Hash, Types::StartSchemaExtensionRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which the schema extension will be applied
    #         to.</p>
    # @option params [Boolean] :create_snapshot_before_schema_extension
    #   <p>If true, creates a snapshot of the directory before applying the schema
    #         extension.</p>
    # @option params [String] :ldif_content
    #   <p>The LDIF file represented as a string. To construct the LdifContent string, precede
    #         each line as it would be formatted in an ldif file with \n. See the example request below for
    #         more details. The file size can be no larger than 1MB.</p>
    # @option params [String] :description
    #   <p>A description of the schema extension.</p>
    # @example To start a schema extension
    #   # The following example applies a schema extension to a specified Microsoft AD directory.
    #   params = {
    #     create_snapshot_before_schema_extension: true,
    #     directory_id: "d-92654abfed",
    #     ldif_content: "dn: CN=User,CN=Schema,CN=Configuration,DC=sales,DC=example,DC=com\nchangetype: modify\nadd: mayContain\nmayContain: drink\n-\n\nDN:\nchangetype: modify\nreplace: schemaupdatenow\nschemaupdatenow: 1\n-",
    #     description: "Adds maycontain attribute to user class. Precede each line as it would be formatted in an ldif file."
    #   }
    #   options = {}
    #   response = client.start_schema_extension(params, options)
    #   response.to_h #=>
    #   {
    #     schema_extension_id: "e-926731dc50"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     create_snapshot_before_schema_extension: false, # required
    #     ldif_content: "LdifContent", # required
    #     description: "Description", # required
    #   }
    #   options = {}
    #   response = client.start_schema_extension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_extension_id: "SchemaExtensionId"
    #   }
    # @return [Types::StartSchemaExtensionResult]
    def start_schema_extension(params = {}, options = {})
      request = build_request(:start_schema_extension, params)
      request.send_request(options)
    end

    # <p>Stops the directory sharing between the directory owner and consumer accounts. </p>
    # @param [Hash, Types::UnshareDirectoryRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the Managed Microsoft AD directory that you want to stop sharing.</p>
    # @option params [Types::UnshareTarget] :unshare_target
    #   <p>Identifier for the directory consumer account with whom the directory has to be
    #         unshared.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     unshare_target: { # required
    #       id: "TargetId", # required
    #       type: "ACCOUNT" # One of: ["ACCOUNT"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.unshare_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shared_directory_id: "DirectoryId"
    #   }
    # @return [Types::UnshareDirectoryResult]
    def unshare_directory(params = {}, options = {})
      request = build_request(:unshare_directory, params)
      request.send_request(options)
    end

    # <p>Updates a conditional forwarder that has been set up for your Amazon Web Services
    #       directory.</p>
    # @param [Hash, Types::UpdateConditionalForwarderRequest] params
    # @option params [String] :directory_id
    #   <p>The directory ID of the Amazon Web Services directory for which to update the conditional
    #         forwarder.</p>
    # @option params [String] :remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
    #         a trust relationship.</p>
    # @option params [Array<String>] :dns_ip_addrs
    #   <p>The updated IP addresses of the remote DNS server associated with the conditional
    #         forwarder.</p>
    # @option params [Array<String>] :dns_ipv6_addrs
    #   <p>The updated IPv6 addresses of the remote DNS server associated with the conditional
    #         forwarder.</p>
    # @example To update a conditional forwarder
    #   # The following example updates a conditional forwarder for a specified directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     remote_domain_name: "sales.example.com",
    #     dns_ip_addrs: [
    #       "172.168.101.11"
    #     ]
    #   }
    #   options = {}
    #   response = client.update_conditional_forwarder(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #     dns_ip_addrs: ["IpAddr"],
    #     dns_ipv6_addrs: ["Ipv6Addr"]
    #   }
    #   options = {}
    #   response = client.update_conditional_forwarder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConditionalForwarderResult]
    def update_conditional_forwarder(params = {}, options = {})
      request = build_request(:update_conditional_forwarder, params)
      request.send_request(options)
    end

    # <p>Updates directory configuration for the specified update type.</p>
    # @param [Hash, Types::UpdateDirectorySetupRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory to update.</p>
    # @option params [String] :update_type
    #   <p>The type of update to perform on the directory.</p>
    # @option params [Types::OSUpdateSettings] :os_update_settings
    #   <p>Operating system configuration to apply during the directory update operation.</p>
    # @option params [Types::DirectorySizeUpdateSettings] :directory_size_update_settings
    #   <p>Directory size configuration to apply during the update operation.</p>
    # @option params [Types::NetworkUpdateSettings] :network_update_settings
    #   <p>Network configuration to apply during the directory update operation.</p>
    # @option params [Boolean] :create_snapshot_before_update
    #   <p>Specifies whether to create a directory snapshot before performing the update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     update_type: "OS" # One of: ["OS", "NETWORK", "SIZE"], # required
    #     os_update_settings: {
    #       os_version: "SERVER_2012" # One of: ["SERVER_2012", "SERVER_2019"]
    #     },
    #     directory_size_update_settings: {
    #       directory_size: "Small" # One of: ["Small", "Large"]
    #     },
    #     network_update_settings: {
    #       network_type: "Dual-stack" # One of: ["Dual-stack", "IPv4", "IPv6"],
    #       customer_dns_ips_v6: ["Ipv6Addr"]
    #     },
    #     create_snapshot_before_update: false
    #   }
    #   options = {}
    #   response = client.update_directory_setup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDirectorySetupResult]
    def update_directory_setup(params = {}, options = {})
      request = build_request(:update_directory_setup, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing hybrid directory. You can recover hybrid
    #             directory administrator account or modify self-managed instance settings.</p>
    #          <p>Updates are applied asynchronously. Use <a>DescribeHybridADUpdate</a> to
    #             monitor the progress of configuration changes.</p>
    #          <p>The <code>InstanceIds</code> must have a one-to-one correspondence with
    #                 <code>CustomerDnsIps</code>, meaning that if the IP address for instance i-10243410
    #             is 10.24.34.100 and the IP address for instance i-10243420 is 10.24.34.200, then the
    #             input arrays must maintain the same order relationship, either [10.24.34.100,
    #             10.24.34.200] paired with [i-10243410, i-10243420] or [10.24.34.200, 10.24.34.100]
    #             paired with [i-10243420, i-10243410].</p>
    #          <note>
    #             <p>You must provide at least one update to <a>UpdateHybridADRequest$HybridAdministratorAccountUpdate</a> or <a>UpdateHybridADRequest$SelfManagedInstancesSettings</a>.</p>
    #          </note>
    # @param [Hash, Types::UpdateHybridADRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the hybrid directory to update.</p>
    # @option params [Types::HybridAdministratorAccountUpdate] :hybrid_administrator_account_update
    #   <p>We create a hybrid directory administrator account when we create a hybrid directory.
    #               Use <code>HybridAdministratorAccountUpdate</code> to recover the hybrid directory
    #               administrator account if you have deleted it.</p>
    #            <p>To recover your hybrid directory administrator account, we need temporary access to a
    #               user in your self-managed AD with administrator permissions in the form of a secret from
    #               Amazon Web Services Secrets Manager. We use these credentials once during recovery and don't store them.</p>
    #            <p>If your hybrid directory administrator account exists, then you don’t need to use
    #                   <code>HybridAdministratorAccountUpdate</code>, even if you have updated your
    #               self-managed AD administrator user.</p>
    # @option params [Types::HybridCustomerInstancesSettings] :self_managed_instances_settings
    #   <p>Updates to the self-managed AD configuration, including DNS server IP addresses and
    #               Amazon Web Services System Manager managed node identifiers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     hybrid_administrator_account_update: {
    #       secret_arn: "SecretArn", # required
    #     },
    #     self_managed_instances_settings: {
    #       customer_dns_ips: ["IpAddr"], # required
    #       instance_ids: ["AssessmentInstanceId"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_hybrid_ad(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     assessment_id: "AssessmentId"
    #   }
    # @return [Types::UpdateHybridADResult]
    def update_hybrid_ad(params = {}, options = {})
      request = build_request(:update_hybrid_ad, params)
      request.send_request(options)
    end

    # <p>Adds or removes domain controllers to or from the directory. Based on the difference
    #       between current value and new value (provided through this API call), domain controllers will
    #       be added or removed. It may take up to 45 minutes for any new domain controllers to become
    #       fully active once the requested number of domain controllers is updated. During this time, you
    #       cannot make another update request.</p>
    # @param [Hash, Types::UpdateNumberOfDomainControllersRequest] params
    # @option params [String] :directory_id
    #   <p>Identifier of the directory to which the domain controllers will be added or
    #         removed.</p>
    # @option params [Integer] :desired_number
    #   <p>The number of domain controllers desired in the directory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     desired_number: 1, # required
    #   }
    #   options = {}
    #   response = client.update_number_of_domain_controllers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNumberOfDomainControllersResult]
    def update_number_of_domain_controllers(params = {}, options = {})
      request = build_request(:update_number_of_domain_controllers, params)
      request.send_request(options)
    end

    # <p>Updates the Remote Authentication Dial In User Service (RADIUS) server information for
    #          an AD Connector or Microsoft AD directory.</p>
    # @param [Hash, Types::UpdateRadiusRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to update the RADIUS server
    #            information.</p>
    # @option params [Types::RadiusSettings] :radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #            server.</p>
    # @example To update Radius
    #   # The following example updates the Remote Authentication Dial In User Service (RADIUS) server settings for an AD Connector directory.
    #   params = {
    #     directory_id: "d-92654abfed",
    #     radius_settings: {
    #       display_label: "MyRadius",
    #       use_same_username: true,
    #       radius_timeout: 1,
    #       authentication_protocol: PAP,
    #       radius_port: 1027,
    #       radius_retries: 1,
    #       shared_secret: "12345678",
    #       radius_servers: [
    #         "172.168.101.113"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_radius(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     radius_settings: { # required
    #       radius_servers: ["Server"],
    #       radius_servers_ipv6: ["Server"],
    #       radius_port: 1,
    #       radius_timeout: 1,
    #       radius_retries: 1,
    #       shared_secret: "RadiusSharedSecret",
    #       authentication_protocol: "PAP" # One of: ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"],
    #       display_label: "RadiusDisplayLabel",
    #       use_same_username: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_radius(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRadiusResult]
    def update_radius(params = {}, options = {})
      request = build_request(:update_radius, params)
      request.send_request(options)
    end

    # <p>Updates the configurable settings for the specified directory.</p>
    # @param [Hash, Types::UpdateSettingsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to update settings.</p>
    # @option params [Array<Types::Setting>] :settings
    #   <p>The list of <a>Setting</a> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     settings: [ # required
    #       {
    #         name: "DirectoryConfigurationSettingName", # required
    #         value: "DirectoryConfigurationSettingValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId"
    #   }
    # @return [Types::UpdateSettingsResult]
    def update_settings(params = {}, options = {})
      request = build_request(:update_settings, params)
      request.send_request(options)
    end

    # <p>Updates the trust that has been set up between your Managed Microsoft AD directory and an
    #       self-managed Active Directory.</p>
    # @param [Hash, Types::UpdateTrustRequest] params
    # @option params [String] :trust_id
    #   <p>Identifier of the trust relationship.</p>
    # @option params [String] :selective_auth
    #   <p>Updates selective authentication for the trust.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_id: "TrustId", # required
    #     selective_auth: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    #   options = {}
    #   response = client.update_trust(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "RequestId",
    #     trust_id: "TrustId"
    #   }
    # @return [Types::UpdateTrustResult]
    def update_trust(params = {}, options = {})
      request = build_request(:update_trust, params)
      request.send_request(options)
    end

    # <p>Directory Service for Microsoft Active Directory allows you to configure and verify trust
    #       relationships.</p>
    #          <p>This action verifies a trust relationship between your Managed Microsoft AD directory and an
    #       external domain.</p>
    # @param [Hash, Types::VerifyTrustRequest] params
    # @option params [String] :trust_id
    #   <p>The unique Trust ID of the trust relationship to verify.</p>
    # @example To verify a trust
    #   # The following example verifies a trust relationship between your Microsoft AD in the AWS cloud and an external domain.
    #   params = {
    #     trust_id: "t-9267353df0"
    #   }
    #   options = {}
    #   response = client.verify_trust(params, options)
    #   response.to_h #=>
    #   {
    #     trust_id: "t-9267353df0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_id: "TrustId", # required
    #   }
    #   options = {}
    #   response = client.verify_trust(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_id: "TrustId"
    #   }
    # @return [Types::VerifyTrustResult]
    def verify_trust(params = {}, options = {})
      request = build_request(:verify_trust, params)
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
      context[:gem_name] = 'aws-sdk-directoryservice'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        hybrid_ad_updated: Waiters::HybridADUpdated
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
