# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mq)

module Aws::Mq
  # An API client for Aws::Mq.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Mq
    @identifier = :mq

    add_plugin(::Aws::Mq::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Mq::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Creates a broker. Note: This API is asynchronous.</p> <p>To create a broker, you must either use the AmazonMQFullAccess IAM policy or include the following EC2 permissions in your IAM policy.</p> <ul><li><p>ec2:CreateNetworkInterface</p> <p>This permission is required to allow Amazon MQ to create an elastic network interface (ENI) on behalf of your account.</p></li> <li><p>ec2:CreateNetworkInterfacePermission</p> <p>This permission is required to attach the ENI to the broker instance.</p></li> <li><p>ec2:DeleteNetworkInterface</p></li> <li><p>ec2:DeleteNetworkInterfacePermission</p></li> <li><p>ec2:DetachNetworkInterface</p></li> <li><p>ec2:DescribeInternetGateways</p></li> <li><p>ec2:DescribeNetworkInterfaces</p></li> <li><p>ec2:DescribeNetworkInterfacePermissions</p></li> <li><p>ec2:DescribeRouteTables</p></li> <li><p>ec2:DescribeSecurityGroups</p></li> <li><p>ec2:DescribeSubnets</p></li> <li><p>ec2:DescribeVpcs</p></li></ul> <p>For more information, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user">Create an IAM User and Get Your Amazon Web Services Credentials</a> and <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface">Never Modify or Delete the Amazon MQ Elastic Network Interface</a> in the <i>Amazon MQ Developer Guide</i>.</p>
    # @param [Hash, Types::CreateBrokerRequest] params
    # @option params [String] :authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot. Set to true by default, if no value is specified.</p> <note><p>Must be set to true for ActiveMQ brokers version 5.18 and above and for RabbitMQ brokers version 3.13 and above.</p></note>
    # @option params [String] :broker_name
    #   <p>Required. The broker's name. This value must be unique in your Amazon Web Services account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p> <important><p>Do not add personally identifiable information (PII) or other confidential or sensitive information in broker names. Broker names are accessible to other Amazon Web Services services, including CloudWatch Logs. Broker names are not intended to be used for private or sensitive data.</p></important>
    # @option params [Types::ConfigurationId] :configuration
    #   <p>A list of information about the configuration.</p>
    # @option params [String] :creator_request_id
    #   <p>The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action.</p> <note><p>We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.</p></note>
    # @option params [String] :deployment_mode
    #   <p>Required. The broker's deployment mode.</p>
    # @option params [Types::EncryptionOptions] :encryption_options
    #   <p>Encryption options for the broker.</p>
    # @option params [String] :engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    # @option params [String] :engine_version
    #   <p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    # @option params [String] :host_instance_type
    #   <p>Required. The broker's instance type.</p>
    # @option params [Types::LdapServerMetadataInput] :ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    # @option params [Types::Logs] :logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    # @option params [Types::WeeklyStartTime] :maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Enables connections from applications outside of the VPC that hosts the broker's subnets. Set to false by default, if no value is provided.</p>
    # @option params [Array<String>] :security_groups
    #   <p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>
    # @option params [String] :storage_type
    #   <p>The broker's storage type.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. If you specify more than one subnet, the subnets must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed with public accessibility. Deployment without public accessibility requires at least one subnet.</p> <important><p>If you specify subnets in a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html">shared VPC</a> for a RabbitMQ broker, the associated VPC to which the specified subnets belong must be owned by your Amazon Web Services account. Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your Amazon Web Services account.</p></important>
    # @option params [Hash<String, String>] :tags
    #   <p>Create tags when creating the broker.</p>
    # @option params [Array<Types::User>] :users
    #   <p>The list of broker users (persons or applications) who can access queues and topics. For Amazon MQ for RabbitMQ brokers, an administrative user is required if using simple authentication and authorization. For brokers using OAuth2, this user is optional. When provided, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p>
    # @option params [String] :data_replication_mode
    #   <p>Defines whether this broker is a part of a data replication pair.</p>
    # @option params [String] :data_replication_primary_broker_arn
    #   <p>The Amazon Resource Name (ARN) of the primary broker that is used to replicate data from in a data replication pair, and is applied to the replica broker. Must be set when dataReplicationMode is set to CRDR.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     auto_minor_version_upgrade: false,
    #     broker_name: "__string", # required
    #     configuration: {
    #       id: "__string", # required
    #       revision: 1
    #     },
    #     creator_request_id: "__string",
    #     deployment_mode: "SINGLE_INSTANCE" # One of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"], # required
    #     encryption_options: {
    #       kms_key_id: "__string",
    #       use_aws_owned_key: false, # required
    #     },
    #     engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"], # required
    #     engine_version: "__string",
    #     host_instance_type: "__string", # required
    #     ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_password: "__string", # required
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false
    #     },
    #     logs: {
    #       audit: false,
    #       general: false
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #       time_of_day: "__string", # required
    #       time_zone: "__string"
    #     },
    #     publicly_accessible: false, # required
    #     security_groups: ["__string"],
    #     storage_type: "EBS" # One of: ["EBS", "EFS"],
    #     subnet_ids: ["__string"],
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     users: [
    #       {
    #         console_access: false,
    #         groups: ["__string"],
    #         password: "__string", # required
    #         username: "__string", # required
    #         replication_user: false
    #       }
    #     ],
    #     data_replication_mode: "NONE" # One of: ["NONE", "CRDR"],
    #     data_replication_primary_broker_arn: "__string"
    #   }
    #   options = {}
    #   response = client.create_broker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_arn: "__string",
    #     broker_id: "__string"
    #   }
    # @return [Types::CreateBrokerResponse]
    def create_broker(params = {}, options = {})
      request = build_request(:create_broker, params)
      request.send_request(options)
    end

    # <p>Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).</p>
    # @param [Hash, Types::CreateConfigurationRequest] params
    # @option params [String] :authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    # @option params [String] :engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    # @option params [String] :engine_version
    #   <p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    # @option params [String] :name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Create tags when creating the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"], # required
    #     engine_version: "__string",
    #     name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     created: Time.now,
    #     id: "__string",
    #     latest_revision: {
    #       created: Time.now, # required
    #       description: "__string",
    #       revision: 1, # required
    #     },
    #     name: "__string"
    #   }
    # @return [Types::CreateConfigurationResponse]
    def create_configuration(params = {}, options = {})
      request = build_request(:create_configuration, params)
      request.send_request(options)
    end

    # <p>Add a tag to a resource.</p>
    # @param [Hash, Types::CreateTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pair for the resource tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_tags(params = {}, options = {})
      request = build_request(:create_tags, params)
      request.send_request(options)
    end

    # <p>Creates an ActiveMQ user.</p> <important><p>Do not add personally identifiable information (PII) or other confidential or sensitive information in broker usernames. Broker usernames are accessible to other Amazon Web Services services, including CloudWatch Logs. Broker usernames are not intended to be used for private or sensitive data.</p></important>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [Boolean] :console_access
    #   <p>Enables access to the ActiveMQ Web Console for the ActiveMQ user.</p>
    # @option params [Array<String>] :groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    # @option params [String] :password
    #   <p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    # @option params [Boolean] :replication_user
    #   <p>Defines if this user is intended for CRDR replication purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #     console_access: false,
    #     groups: ["__string"],
    #     password: "__string", # required
    #     username: "__string", # required
    #     replication_user: false
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes a broker. Note: This API is asynchronous.</p>
    # @param [Hash, Types::DeleteBrokerRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_broker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_id: "__string"
    #   }
    # @return [Types::DeleteBrokerResponse]
    def delete_broker(params = {}, options = {})
      request = build_request(:delete_broker, params)
      request.send_request(options)
    end

    # <p>Deletes the specified configuration.</p>
    # @param [Hash, Types::DeleteConfigurationRequest] params
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_id: "__string"
    #   }
    # @return [Types::DeleteConfigurationResponse]
    def delete_configuration(params = {}, options = {})
      request = build_request(:delete_configuration, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::DeleteTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>An array of tag keys to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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

    # <p>Deletes an ActiveMQ user.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #     username: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResponse]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified broker.</p>
    # @param [Hash, Types::DescribeBrokerRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_broker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions_required: [
    #       {
    #         action_required_code: "__string",
    #         action_required_info: "__string"
    #       }
    #     ],
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     auto_minor_version_upgrade: false,
    #     broker_arn: "__string",
    #     broker_id: "__string",
    #     broker_instances: [
    #       {
    #         console_url: "__string",
    #         endpoints: ["__string"],
    #         ip_address: "__string"
    #       }
    #     ],
    #     broker_name: "__string",
    #     broker_state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED", "REPLICA"],
    #     configurations: {
    #       current: {
    #         id: "__string", # required
    #         revision: 1
    #       },
    #       history: [
    #         {
    #           id: "__string", # required
    #           revision: 1
    #         }
    #       ],
    #       pending: {
    #         id: "__string", # required
    #         revision: 1
    #       }
    #     },
    #     created: Time.now,
    #     deployment_mode: "SINGLE_INSTANCE" # One of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"],
    #     encryption_options: {
    #       kms_key_id: "__string",
    #       use_aws_owned_key: false, # required
    #     },
    #     engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"],
    #     engine_version: "__string",
    #     host_instance_type: "__string",
    #     ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false
    #     },
    #     logs: {
    #       audit: false,
    #       audit_log_group: "__string",
    #       general: false, # required
    #       general_log_group: "__string", # required
    #       pending: {
    #         audit: false,
    #         general: false
    #       }
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #       time_of_day: "__string", # required
    #       time_zone: "__string"
    #     },
    #     pending_authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     pending_engine_version: "__string",
    #     pending_host_instance_type: "__string",
    #     pending_ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false
    #     },
    #     pending_security_groups: ["__string"],
    #     publicly_accessible: false,
    #     security_groups: ["__string"],
    #     storage_type: "EBS" # One of: ["EBS", "EFS"],
    #     subnet_ids: ["__string"],
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     users: [
    #       {
    #         pending_change: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"],
    #         username: "__string", # required
    #       }
    #     ],
    #     data_replication_metadata: {
    #       data_replication_counterpart: {
    #         broker_id: "__string", # required
    #         region: "__string", # required
    #       },
    #       data_replication_role: "__string", # required
    #     },
    #     data_replication_mode: "NONE" # One of: ["NONE", "CRDR"],
    #     pending_data_replication_metadata: {
    #       data_replication_counterpart: {
    #         broker_id: "__string", # required
    #         region: "__string", # required
    #       },
    #       data_replication_role: "__string", # required
    #     },
    #     pending_data_replication_mode: "NONE" # One of: ["NONE", "CRDR"]
    #   }
    # @return [Types::DescribeBrokerResponse]
    def describe_broker(params = {}, options = {})
      request = build_request(:describe_broker, params)
      request.send_request(options)
    end

    # <p>Describe available engine types and versions.</p>
    # @param [Hash, Types::DescribeBrokerEngineTypesRequest] params
    # @option params [String] :engine_type
    #   <p>Filter response by engine type.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine_type: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.describe_broker_engine_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_engine_types: [
    #       {
    #         engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"],
    #         engine_versions: [
    #           {
    #             name: "__string"
    #           }
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    # @return [Types::DescribeBrokerEngineTypesResponse]
    def describe_broker_engine_types(params = {}, options = {})
      request = build_request(:describe_broker_engine_types, params)
      request.send_request(options)
    end

    # <p>Describe available broker instance options.</p>
    # @param [Hash, Types::DescribeBrokerInstanceOptionsRequest] params
    # @option params [String] :engine_type
    #   <p>Filter response by engine type.</p>
    # @option params [String] :host_instance_type
    #   <p>Filter response by host instance type.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    # @option params [String] :storage_type
    #   <p>Filter response by storage type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine_type: "__string",
    #     host_instance_type: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     storage_type: "__string"
    #   }
    #   options = {}
    #   response = client.describe_broker_instance_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_instance_options: [
    #       {
    #         availability_zones: [
    #           {
    #             name: "__string"
    #           }
    #         ],
    #         engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"],
    #         host_instance_type: "__string",
    #         storage_type: "EBS" # One of: ["EBS", "EFS"],
    #         supported_deployment_modes: ["SINGLE_INSTANCE" # One of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]],
    #         supported_engine_versions: ["__string"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    # @return [Types::DescribeBrokerInstanceOptionsResponse]
    def describe_broker_instance_options(params = {}, options = {})
      request = build_request(:describe_broker_instance_options, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified configuration.</p>
    # @param [Hash, Types::DescribeConfigurationRequest] params
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     created: Time.now,
    #     description: "__string",
    #     engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"],
    #     engine_version: "__string",
    #     id: "__string",
    #     latest_revision: {
    #       created: Time.now, # required
    #       description: "__string",
    #       revision: 1, # required
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeConfigurationResponse]
    def describe_configuration(params = {}, options = {})
      request = build_request(:describe_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the specified configuration revision for the specified configuration.</p>
    # @param [Hash, Types::DescribeConfigurationRevisionRequest] params
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    # @option params [String] :configuration_revision
    #   <p>The revision of the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "__string", # required
    #     configuration_revision: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_configuration_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_id: "__string",
    #     created: Time.now,
    #     data: "__string",
    #     description: "__string"
    #   }
    # @return [Types::DescribeConfigurationRevisionResponse]
    def describe_configuration_revision(params = {}, options = {})
      request = build_request(:describe_configuration_revision, params)
      request.send_request(options)
    end

    # <p>Returns information about an ActiveMQ user.</p>
    # @param [Hash, Types::DescribeUserRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #     username: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_id: "__string",
    #     console_access: false,
    #     groups: ["__string"],
    #     pending: {
    #       console_access: false,
    #       groups: ["__string"],
    #       pending_change: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"], # required
    #     },
    #     username: "__string",
    #     replication_user: false
    #   }
    # @return [Types::DescribeUserResponse]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p>Returns a list of all brokers.</p>
    # @param [Hash, Types::ListBrokersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_brokers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_summaries: [
    #       {
    #         broker_arn: "__string",
    #         broker_id: "__string",
    #         broker_name: "__string",
    #         broker_state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED", "REPLICA"],
    #         created: Time.now,
    #         deployment_mode: "SINGLE_INSTANCE" # One of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"], # required
    #         engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"], # required
    #         host_instance_type: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListBrokersResponse]
    def list_brokers(params = {}, options = {})
      request = build_request(:list_brokers, params)
      request.send_request(options)
    end

    # <p>Returns a list of all revisions for the specified configuration.</p>
    # @param [Hash, Types::ListConfigurationRevisionsRequest] params
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_configuration_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     revisions: [
    #       {
    #         created: Time.now, # required
    #         description: "__string",
    #         revision: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListConfigurationRevisionsResponse]
    def list_configuration_revisions(params = {}, options = {})
      request = build_request(:list_configuration_revisions, params)
      request.send_request(options)
    end

    # <p>Returns a list of all configurations.</p>
    # @param [Hash, Types::ListConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [
    #       {
    #         arn: "__string", # required
    #         authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"], # required
    #         created: Time.now, # required
    #         description: "__string", # required
    #         engine_type: "ACTIVEMQ" # One of: ["ACTIVEMQ", "RABBITMQ"], # required
    #         engine_version: "__string", # required
    #         id: "__string", # required
    #         latest_revision: { # required
    #           created: Time.now, # required
    #           description: "__string",
    #           revision: 1, # required
    #         },
    #         name: "__string", # required
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    # @return [Types::ListConfigurationsResponse]
    def list_configurations(params = {}, options = {})
      request = build_request(:list_configurations, params)
      request.send_request(options)
    end

    # <p>Lists tags for a resource.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Returns a list of all ActiveMQ users.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     users: [
    #       {
    #         pending_change: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"],
    #         username: "__string", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Promotes a data replication replica broker to the primary broker role.</p>
    # @param [Hash, Types::PromoteRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [String] :mode
    #   <p>The Promote mode requested. Note: Valid values for the parameter are SWITCHOVER, FAILOVER.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #     mode: "SWITCHOVER" # One of: ["SWITCHOVER", "FAILOVER"], # required
    #   }
    #   options = {}
    #   response = client.promote(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     broker_id: "__string"
    #   }
    # @return [Types::PromoteResponse]
    def promote(params = {}, options = {})
      request = build_request(:promote, params)
      request.send_request(options)
    end

    # <p>Reboots a broker. Note: This API is asynchronous.</p>
    # @param [Hash, Types::RebootBrokerRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.reboot_broker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RebootBrokerResponse]
    def reboot_broker(params = {}, options = {})
      request = build_request(:reboot_broker, params)
      request.send_request(options)
    end

    # <p>Adds a pending configuration change to a broker.</p>
    # @param [Hash, Types::UpdateBrokerRequest] params
    # @option params [String] :authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p> <note><p>Must be set to true for ActiveMQ brokers version 5.18 and above and for RabbitMQ brokers version 3.13 and above.</p></note>
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [Types::ConfigurationId] :configuration
    #   <p>A list of information about the configuration.</p>
    # @option params [String] :engine_version
    #   <p>The broker engine version. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p> <note><p>When upgrading to ActiveMQ version 5.18 and above or RabbitMQ version 3.13 and above, you must have autoMinorVersionUpgrade set to true for the broker.</p></note>
    # @option params [String] :host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types">Broker instance types</a>.</p>
    # @option params [Types::LdapServerMetadataInput] :ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    # @option params [Types::Logs] :logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    # @option params [Types::WeeklyStartTime] :maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    # @option params [Array<String>] :security_groups
    #   <p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>
    # @option params [String] :data_replication_mode
    #   <p>Defines whether this broker is a part of a data replication pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     auto_minor_version_upgrade: false,
    #     broker_id: "__string", # required
    #     configuration: {
    #       id: "__string", # required
    #       revision: 1
    #     },
    #     engine_version: "__string",
    #     host_instance_type: "__string",
    #     ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_password: "__string", # required
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false
    #     },
    #     logs: {
    #       audit: false,
    #       general: false
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #       time_of_day: "__string", # required
    #       time_zone: "__string"
    #     },
    #     security_groups: ["__string"],
    #     data_replication_mode: "NONE" # One of: ["NONE", "CRDR"]
    #   }
    #   options = {}
    #   response = client.update_broker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_strategy: "SIMPLE" # One of: ["SIMPLE", "LDAP", "CONFIG_MANAGED"],
    #     auto_minor_version_upgrade: false,
    #     broker_id: "__string",
    #     configuration: {
    #       id: "__string", # required
    #       revision: 1
    #     },
    #     engine_version: "__string",
    #     host_instance_type: "__string",
    #     ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false
    #     },
    #     logs: {
    #       audit: false,
    #       general: false
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #       time_of_day: "__string", # required
    #       time_zone: "__string"
    #     },
    #     security_groups: ["__string"],
    #     data_replication_metadata: {
    #       data_replication_counterpart: {
    #         broker_id: "__string", # required
    #         region: "__string", # required
    #       },
    #       data_replication_role: "__string", # required
    #     },
    #     data_replication_mode: "NONE" # One of: ["NONE", "CRDR"],
    #     pending_data_replication_metadata: {
    #       data_replication_counterpart: {
    #         broker_id: "__string", # required
    #         region: "__string", # required
    #       },
    #       data_replication_role: "__string", # required
    #     },
    #     pending_data_replication_mode: "NONE" # One of: ["NONE", "CRDR"]
    #   }
    # @return [Types::UpdateBrokerResponse]
    def update_broker(params = {}, options = {})
      request = build_request(:update_broker, params)
      request.send_request(options)
    end

    # <p>Updates the specified configuration.</p>
    # @param [Hash, Types::UpdateConfigurationRequest] params
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    # @option params [String] :data
    #   <p>Amazon MQ for Active MQ: The base64-encoded XML configuration. Amazon MQ for RabbitMQ: the base64-encoded Cuttlefish configuration.</p>
    # @option params [String] :description
    #   <p>The description of the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "__string", # required
    #     data: "__string", # required
    #     description: "__string"
    #   }
    #   options = {}
    #   response = client.update_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created: Time.now,
    #     id: "__string",
    #     latest_revision: {
    #       created: Time.now, # required
    #       description: "__string",
    #       revision: 1, # required
    #     },
    #     name: "__string",
    #     warnings: [
    #       {
    #         attribute_name: "__string",
    #         element_name: "__string",
    #         reason: "DISALLOWED_ELEMENT_REMOVED" # One of: ["DISALLOWED_ELEMENT_REMOVED", "DISALLOWED_ATTRIBUTE_REMOVED", "INVALID_ATTRIBUTE_VALUE_REMOVED"], # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateConfigurationResponse]
    def update_configuration(params = {}, options = {})
      request = build_request(:update_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the information for an ActiveMQ user.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    # @option params [Boolean] :console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    # @option params [Array<String>] :groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    # @option params [String] :password
    #   <p>The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    # @option params [Boolean] :replication_user
    #   <p>Defines whether the user is intended for data replication.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     broker_id: "__string", # required
    #     console_access: false,
    #     groups: ["__string"],
    #     password: "__string",
    #     username: "__string", # required
    #     replication_user: false
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-mq'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
