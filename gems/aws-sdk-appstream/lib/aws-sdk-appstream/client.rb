# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:appstream)

module Aws::AppStream
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :appstream

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates the specified fleet with the specified stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_fleet({
    #     fleet_name: "String", # required
    #     stack_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleet AWS API Documentation
    #
    # @overload associate_fleet(params = {})
    # @param [Hash] params ({})
    def associate_fleet(params = {}, options = {})
      req = build_request(:associate_fleet, params)
      req.send_request(options)
    end

    # Copies the image within the same region or to a new region within the
    # same AWS account. Note that any tags you added to the image will not
    # be copied.
    #
    # @option params [required, String] :source_image_name
    #   The name of the image to copy.
    #
    # @option params [required, String] :destination_image_name
    #   The name that the image will have when it is copied to the
    #   destination.
    #
    # @option params [required, String] :destination_region
    #   The destination region to which the image will be copied. This
    #   parameter is required, even if you are copying an image within the
    #   same region.
    #
    # @option params [String] :destination_image_description
    #   The description that the image will have when it is copied to the
    #   destination.
    #
    # @return [Types::CopyImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyImageResponse#destination_image_name #destination_image_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_image({
    #     source_image_name: "Name", # required
    #     destination_image_name: "Name", # required
    #     destination_region: "RegionName", # required
    #     destination_image_description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_image_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CopyImage AWS API Documentation
    #
    # @overload copy_image(params = {})
    # @param [Hash] params ({})
    def copy_image(params = {}, options = {})
      req = build_request(:copy_image, params)
      req.send_request(options)
    end

    # Creates a Directory Config object in AppStream 2.0. This object
    # includes the information required to join streaming instances to an
    # Active Directory domain.
    #
    # @option params [required, String] :directory_name
    #   The fully qualified name of the directory (for example,
    #   corp.example.com).
    #
    # @option params [required, Array<String>] :organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #
    # @option params [required, Types::ServiceAccountCredentials] :service_account_credentials
    #   The credentials for the service account used by the streaming instance
    #   to connect to the directory.
    #
    # @return [Types::CreateDirectoryConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectoryConfigResult#directory_config #directory_config} => Types::DirectoryConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory_config({
    #     directory_name: "DirectoryName", # required
    #     organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"], # required
    #     service_account_credentials: { # required
    #       account_name: "AccountName", # required
    #       account_password: "AccountPassword", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_config.directory_name #=> String
    #   resp.directory_config.organizational_unit_distinguished_names #=> Array
    #   resp.directory_config.organizational_unit_distinguished_names[0] #=> String
    #   resp.directory_config.service_account_credentials.account_name #=> String
    #   resp.directory_config.service_account_credentials.account_password #=> String
    #   resp.directory_config.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfig AWS API Documentation
    #
    # @overload create_directory_config(params = {})
    # @param [Hash] params ({})
    def create_directory_config(params = {}, options = {})
      req = build_request(:create_directory_config, params)
      req.send_request(options)
    end

    # Creates a fleet. A fleet consists of streaming instances that run a
    # specified image.
    #
    # @option params [required, String] :name
    #   A unique name for the fleet.
    #
    # @option params [String] :image_name
    #   The name of the image used to create the fleet.
    #
    # @option params [String] :image_arn
    #   The ARN of the public, private, or shared image to use.
    #
    # @option params [required, String] :instance_type
    #   The instance type to use when launching fleet instances. The following
    #   instance types are available:
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    # @option params [String] :fleet_type
    #   The fleet type.
    #
    #   ALWAYS\_ON
    #
    #   : Provides users with instant-on access to their apps. You are charged
    #     for all running instances in your fleet, even if no users are
    #     streaming apps.
    #
    #   ON\_DEMAND
    #
    #   : Provide users with access to applications after they connect, which
    #     takes one to two minutes. You are charged for instance streaming
    #     when users are connected and a small hourly fee for instances that
    #     are not streaming apps.
    #
    # @option params [required, Types::ComputeCapacity] :compute_capacity
    #   The desired capacity for the fleet.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the fleet.
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   The maximum time that a streaming session can run, in seconds. Specify
    #   a value between 600 and 57600.
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended, in seconds. If a user who was disconnected reconnects within
    #   this time interval, the user is connected to their previous session.
    #   Specify a value between 60 and 57600.
    #
    # @option params [String] :description
    #   The description for display.
    #
    # @option params [String] :display_name
    #   The fleet name for display.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #
    # @return [Types::CreateFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResult#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "Name", # required
    #     image_name: "String",
    #     image_arn: "Arn",
    #     instance_type: "String", # required
    #     fleet_type: "ALWAYS_ON", # accepts ALWAYS_ON, ON_DEMAND
    #     compute_capacity: { # required
    #       desired_instances: 1, # required
    #     },
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     description: "Description",
    #     display_name: "DisplayName",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet.arn #=> String
    #   resp.fleet.name #=> String
    #   resp.fleet.display_name #=> String
    #   resp.fleet.description #=> String
    #   resp.fleet.image_name #=> String
    #   resp.fleet.image_arn #=> String
    #   resp.fleet.instance_type #=> String
    #   resp.fleet.fleet_type #=> String, one of "ALWAYS_ON", "ON_DEMAND"
    #   resp.fleet.compute_capacity_status.desired #=> Integer
    #   resp.fleet.compute_capacity_status.running #=> Integer
    #   resp.fleet.compute_capacity_status.in_use #=> Integer
    #   resp.fleet.compute_capacity_status.available #=> Integer
    #   resp.fleet.max_user_duration_in_seconds #=> Integer
    #   resp.fleet.disconnect_timeout_in_seconds #=> Integer
    #   resp.fleet.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.fleet.vpc_config.subnet_ids #=> Array
    #   resp.fleet.vpc_config.subnet_ids[0] #=> String
    #   resp.fleet.vpc_config.security_group_ids #=> Array
    #   resp.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.fleet.created_time #=> Time
    #   resp.fleet.fleet_errors #=> Array
    #   resp.fleet.fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.fleet.fleet_errors[0].error_message #=> String
    #   resp.fleet.enable_default_internet_access #=> Boolean
    #   resp.fleet.domain_join_info.directory_name #=> String
    #   resp.fleet.domain_join_info.organizational_unit_distinguished_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates an image builder. An image builder is a virtual machine that
    # is used to create an image.
    #
    # The initial state of the builder is `PENDING`. When it is ready, the
    # state is `RUNNING`.
    #
    # @option params [required, String] :name
    #   A unique name for the image builder.
    #
    # @option params [String] :image_name
    #   The name of the image used to create the builder.
    #
    # @option params [String] :image_arn
    #   The ARN of the public, private, or shared image to use.
    #
    # @option params [required, String] :instance_type
    #   The instance type to use when launching the image builder.
    #
    # @option params [String] :description
    #   The description for display.
    #
    # @option params [String] :display_name
    #   The image builder name for display.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the image builder. You can specify only one
    #   subnet.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the image builder.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #
    # @option params [String] :appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image builder.
    #   To use the latest version of the AppStream 2.0 agent, specify
    #   \[LATEST\].
    #
    # @return [Types::CreateImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_builder({
    #     name: "Name", # required
    #     image_name: "String",
    #     image_arn: "Arn",
    #     instance_type: "String", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #     },
    #     appstream_agent_version: "AppstreamAgentVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS"
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilder AWS API Documentation
    #
    # @overload create_image_builder(params = {})
    # @param [Hash] params ({})
    def create_image_builder(params = {}, options = {})
      req = build_request(:create_image_builder, params)
      req.send_request(options)
    end

    # Creates a URL to start an image builder streaming session.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @option params [Integer] :validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 3600 seconds.
    #
    # @return [Types::CreateImageBuilderStreamingURLResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageBuilderStreamingURLResult#streaming_url #streaming_url} => String
    #   * {Types::CreateImageBuilderStreamingURLResult#expires #expires} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_builder_streaming_url({
    #     name: "String", # required
    #     validity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_url #=> String
    #   resp.expires #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderStreamingURL AWS API Documentation
    #
    # @overload create_image_builder_streaming_url(params = {})
    # @param [Hash] params ({})
    def create_image_builder_streaming_url(params = {}, options = {})
      req = build_request(:create_image_builder_streaming_url, params)
      req.send_request(options)
    end

    # Creates a stack to start streaming applications to users. A stack
    # consists of an associated fleet, user access policies, and storage
    # configurations.
    #
    # @option params [required, String] :name
    #   The name of the stack.
    #
    # @option params [String] :description
    #   The description for display.
    #
    # @option params [String] :display_name
    #   The stack name for display.
    #
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   The storage connectors to enable.
    #
    # @option params [String] :redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #
    # @option params [String] :feedback_url
    #   The URL that users are redirected to after they click the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #
    # @option params [Array<Types::UserSetting>] :user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default, these actions are enabled.
    #
    # @option params [Types::ApplicationSettings] :application_settings
    #   The persistent application settings for users of a stack. When these
    #   settings are enabled, changes that users make to applications and
    #   Windows settings are automatically saved after each session and
    #   applied to the next session.
    #
    # @return [Types::CreateStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackResult#stack #stack} => Types::Stack
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     name: "Name", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #       },
    #     ],
    #     redirect_url: "RedirectURL",
    #     feedback_url: "FeedbackURL",
    #     user_settings: [
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE
    #         permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #       },
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: "SettingsGroup",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stack.arn #=> String
    #   resp.stack.name #=> String
    #   resp.stack.description #=> String
    #   resp.stack.display_name #=> String
    #   resp.stack.created_time #=> Time
    #   resp.stack.storage_connectors #=> Array
    #   resp.stack.storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"
    #   resp.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.stack.storage_connectors[0].domains #=> Array
    #   resp.stack.storage_connectors[0].domains[0] #=> String
    #   resp.stack.redirect_url #=> String
    #   resp.stack.feedback_url #=> String
    #   resp.stack.stack_errors #=> Array
    #   resp.stack.stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stack.stack_errors[0].error_message #=> String
    #   resp.stack.user_settings #=> Array
    #   resp.stack.user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE"
    #   resp.stack.user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.stack.application_settings.enabled #=> Boolean
    #   resp.stack.application_settings.settings_group #=> String
    #   resp.stack.application_settings.s3_bucket_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates a temporary URL to start an AppStream 2.0 streaming session
    # for the specified user. A streaming URL enables application streaming
    # to be tested without user setup.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :user_id
    #   The ID of the user.
    #
    # @option params [String] :application_id
    #   The name of the application to launch after the session starts. This
    #   is the name that you specified as **Name** in the Image Assistant.
    #
    # @option params [Integer] :validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 60 seconds.
    #
    # @option params [String] :session_context
    #   The session context. For more information, see [Session Context][1] in
    #   the *Amazon AppStream 2.0 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters
    #
    # @return [Types::CreateStreamingURLResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamingURLResult#streaming_url #streaming_url} => String
    #   * {Types::CreateStreamingURLResult#expires #expires} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_url({
    #     stack_name: "String", # required
    #     fleet_name: "String", # required
    #     user_id: "StreamingUrlUserId", # required
    #     application_id: "String",
    #     validity: 1,
    #     session_context: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_url #=> String
    #   resp.expires #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStreamingURL AWS API Documentation
    #
    # @overload create_streaming_url(params = {})
    # @param [Hash] params ({})
    def create_streaming_url(params = {}, options = {})
      req = build_request(:create_streaming_url, params)
      req.send_request(options)
    end

    # Deletes the specified Directory Config object from AppStream 2.0. This
    # object includes the information required to join streaming instances
    # to an Active Directory domain.
    #
    # @option params [required, String] :directory_name
    #   The name of the directory configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory_config({
    #     directory_name: "DirectoryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteDirectoryConfig AWS API Documentation
    #
    # @overload delete_directory_config(params = {})
    # @param [Hash] params ({})
    def delete_directory_config(params = {}, options = {})
      req = build_request(:delete_directory_config, params)
      req.send_request(options)
    end

    # Deletes the specified fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Deletes the specified image. You cannot delete an image when it is in
    # use. After you delete an image, you cannot provision new capacity
    # using the image.
    #
    # @option params [required, String] :name
    #   The name of the image.
    #
    # @return [Types::DeleteImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageResult#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image.name #=> String
    #   resp.image.arn #=> String
    #   resp.image.base_image_arn #=> String
    #   resp.image.display_name #=> String
    #   resp.image.state #=> String, one of "PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING"
    #   resp.image.visibility #=> String, one of "PUBLIC", "PRIVATE", "SHARED"
    #   resp.image.image_builder_supported #=> Boolean
    #   resp.image.platform #=> String, one of "WINDOWS"
    #   resp.image.description #=> String
    #   resp.image.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"
    #   resp.image.state_change_reason.message #=> String
    #   resp.image.applications #=> Array
    #   resp.image.applications[0].name #=> String
    #   resp.image.applications[0].display_name #=> String
    #   resp.image.applications[0].icon_url #=> String
    #   resp.image.applications[0].launch_path #=> String
    #   resp.image.applications[0].launch_parameters #=> String
    #   resp.image.applications[0].enabled #=> Boolean
    #   resp.image.applications[0].metadata #=> Hash
    #   resp.image.applications[0].metadata["String"] #=> String
    #   resp.image.created_time #=> Time
    #   resp.image.public_base_image_released_date #=> Time
    #   resp.image.appstream_agent_version #=> String
    #   resp.image.image_permissions.allow_fleet #=> Boolean
    #   resp.image.image_permissions.allow_image_builder #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImage AWS API Documentation
    #
    # @overload delete_image(params = {})
    # @param [Hash] params ({})
    def delete_image(params = {}, options = {})
      req = build_request(:delete_image, params)
      req.send_request(options)
    end

    # Deletes the specified image builder and releases the capacity.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @return [Types::DeleteImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_builder({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS"
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageBuilder AWS API Documentation
    #
    # @overload delete_image_builder(params = {})
    # @param [Hash] params ({})
    def delete_image_builder(params = {}, options = {})
      req = build_request(:delete_image_builder, params)
      req.send_request(options)
    end

    # Deletes permissions for the specified private image. After you delete
    # permissions for an image, AWS accounts to which you previously granted
    # these permissions can no longer use the image.
    #
    # @option params [required, String] :name
    #   The name of the private image.
    #
    # @option params [required, String] :shared_account_id
    #   The 12-digit ID of the AWS account for which to delete image
    #   permissions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_permissions({
    #     name: "Name", # required
    #     shared_account_id: "AwsAccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImagePermissions AWS API Documentation
    #
    # @overload delete_image_permissions(params = {})
    # @param [Hash] params ({})
    def delete_image_permissions(params = {}, options = {})
      req = build_request(:delete_image_permissions, params)
      req.send_request(options)
    end

    # Deletes the specified stack. After the stack is deleted, the
    # application streaming environment provided by the stack is no longer
    # available to users. Also, any reservations made for application
    # streaming sessions for the stack are released.
    #
    # @option params [required, String] :name
    #   The name of the stack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteStack AWS API Documentation
    #
    # @overload delete_stack(params = {})
    # @param [Hash] params ({})
    def delete_stack(params = {}, options = {})
      req = build_request(:delete_stack, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified Directory Config
    # objects for AppStream 2.0, if the names for these objects are
    # provided. Otherwise, all Directory Config objects in the account are
    # described. These objects include the information required to join
    # streaming instances to an Active Directory domain.
    #
    # Although the response syntax in this topic includes the account
    # password, this password is not returned in the actual response.
    #
    # @option params [Array<String>] :directory_names
    #   The directory names.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeDirectoryConfigsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectoryConfigsResult#directory_configs #directory_configs} => Array&lt;Types::DirectoryConfig&gt;
    #   * {Types::DescribeDirectoryConfigsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_directory_configs({
    #     directory_names: ["DirectoryName"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_configs #=> Array
    #   resp.directory_configs[0].directory_name #=> String
    #   resp.directory_configs[0].organizational_unit_distinguished_names #=> Array
    #   resp.directory_configs[0].organizational_unit_distinguished_names[0] #=> String
    #   resp.directory_configs[0].service_account_credentials.account_name #=> String
    #   resp.directory_configs[0].service_account_credentials.account_password #=> String
    #   resp.directory_configs[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeDirectoryConfigs AWS API Documentation
    #
    # @overload describe_directory_configs(params = {})
    # @param [Hash] params ({})
    def describe_directory_configs(params = {}, options = {})
      req = build_request(:describe_directory_configs, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified fleets, if the
    # fleet names are provided. Otherwise, all fleets in the account are
    # described.
    #
    # @option params [Array<String>] :names
    #   The names of the fleets to describe.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeFleetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetsResult#fleets #fleets} => Array&lt;Types::Fleet&gt;
    #   * {Types::DescribeFleetsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleets({
    #     names: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleets #=> Array
    #   resp.fleets[0].arn #=> String
    #   resp.fleets[0].name #=> String
    #   resp.fleets[0].display_name #=> String
    #   resp.fleets[0].description #=> String
    #   resp.fleets[0].image_name #=> String
    #   resp.fleets[0].image_arn #=> String
    #   resp.fleets[0].instance_type #=> String
    #   resp.fleets[0].fleet_type #=> String, one of "ALWAYS_ON", "ON_DEMAND"
    #   resp.fleets[0].compute_capacity_status.desired #=> Integer
    #   resp.fleets[0].compute_capacity_status.running #=> Integer
    #   resp.fleets[0].compute_capacity_status.in_use #=> Integer
    #   resp.fleets[0].compute_capacity_status.available #=> Integer
    #   resp.fleets[0].max_user_duration_in_seconds #=> Integer
    #   resp.fleets[0].disconnect_timeout_in_seconds #=> Integer
    #   resp.fleets[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.fleets[0].vpc_config.subnet_ids #=> Array
    #   resp.fleets[0].vpc_config.subnet_ids[0] #=> String
    #   resp.fleets[0].vpc_config.security_group_ids #=> Array
    #   resp.fleets[0].vpc_config.security_group_ids[0] #=> String
    #   resp.fleets[0].created_time #=> Time
    #   resp.fleets[0].fleet_errors #=> Array
    #   resp.fleets[0].fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.fleets[0].fleet_errors[0].error_message #=> String
    #   resp.fleets[0].enable_default_internet_access #=> Boolean
    #   resp.fleets[0].domain_join_info.directory_name #=> String
    #   resp.fleets[0].domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeFleets AWS API Documentation
    #
    # @overload describe_fleets(params = {})
    # @param [Hash] params ({})
    def describe_fleets(params = {}, options = {})
      req = build_request(:describe_fleets, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified image builders,
    # if the image builder names are provided. Otherwise, all image builders
    # in the account are described.
    #
    # @option params [Array<String>] :names
    #   The names of the image builders to describe.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeImageBuildersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageBuildersResult#image_builders #image_builders} => Array&lt;Types::ImageBuilder&gt;
    #   * {Types::DescribeImageBuildersResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_builders({
    #     names: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builders #=> Array
    #   resp.image_builders[0].name #=> String
    #   resp.image_builders[0].arn #=> String
    #   resp.image_builders[0].image_arn #=> String
    #   resp.image_builders[0].description #=> String
    #   resp.image_builders[0].display_name #=> String
    #   resp.image_builders[0].vpc_config.subnet_ids #=> Array
    #   resp.image_builders[0].vpc_config.subnet_ids[0] #=> String
    #   resp.image_builders[0].vpc_config.security_group_ids #=> Array
    #   resp.image_builders[0].vpc_config.security_group_ids[0] #=> String
    #   resp.image_builders[0].instance_type #=> String
    #   resp.image_builders[0].platform #=> String, one of "WINDOWS"
    #   resp.image_builders[0].state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED"
    #   resp.image_builders[0].state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builders[0].state_change_reason.message #=> String
    #   resp.image_builders[0].created_time #=> Time
    #   resp.image_builders[0].enable_default_internet_access #=> Boolean
    #   resp.image_builders[0].domain_join_info.directory_name #=> String
    #   resp.image_builders[0].domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builders[0].image_builder_errors #=> Array
    #   resp.image_builders[0].image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builders[0].image_builder_errors[0].error_message #=> String
    #   resp.image_builders[0].image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builders[0].appstream_agent_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImageBuilders AWS API Documentation
    #
    # @overload describe_image_builders(params = {})
    # @param [Hash] params ({})
    def describe_image_builders(params = {}, options = {})
      req = build_request(:describe_image_builders, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the permissions for shared AWS account
    # IDs on a private image that you own.
    #
    # @option params [required, String] :name
    #   The name of the private image for which to describe permissions. The
    #   image must be one that you own.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each results page.
    #
    # @option params [Array<String>] :shared_aws_account_ids
    #   The 12-digit ID of one or more AWS accounts with which the image is
    #   shared.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results. If
    #   this value is empty, only the first page is retrieved.
    #
    # @return [Types::DescribeImagePermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagePermissionsResult#name #name} => String
    #   * {Types::DescribeImagePermissionsResult#shared_image_permissions_list #shared_image_permissions_list} => Array&lt;Types::SharedImagePermissions&gt;
    #   * {Types::DescribeImagePermissionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_permissions({
    #     name: "Name", # required
    #     max_results: 1,
    #     shared_aws_account_ids: ["AwsAccountId"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.shared_image_permissions_list #=> Array
    #   resp.shared_image_permissions_list[0].shared_account_id #=> String
    #   resp.shared_image_permissions_list[0].image_permissions.allow_fleet #=> Boolean
    #   resp.shared_image_permissions_list[0].image_permissions.allow_image_builder #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissions AWS API Documentation
    #
    # @overload describe_image_permissions(params = {})
    # @param [Hash] params ({})
    def describe_image_permissions(params = {}, options = {})
      req = build_request(:describe_image_permissions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified images, if the
    # image names or image ARNs are provided. Otherwise, all images in the
    # account are described.
    #
    # @option params [Array<String>] :names
    #   The names of the public or private images to describe.
    #
    # @option params [Array<String>] :arns
    #   The ARNs of the public, private, and shared images to describe.
    #
    # @option params [String] :type
    #   The type of image (public, private, or shared) to describe.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results. If
    #   this value is empty, only the first page is retrieved.
    #
    # @option params [Integer] :max_results
    #   The maximum size of each page of results.
    #
    # @return [Types::DescribeImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagesResult#images #images} => Array&lt;Types::Image&gt;
    #   * {Types::DescribeImagesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images({
    #     names: ["String"],
    #     arns: ["Arn"],
    #     type: "PUBLIC", # accepts PUBLIC, PRIVATE, SHARED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].name #=> String
    #   resp.images[0].arn #=> String
    #   resp.images[0].base_image_arn #=> String
    #   resp.images[0].display_name #=> String
    #   resp.images[0].state #=> String, one of "PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING"
    #   resp.images[0].visibility #=> String, one of "PUBLIC", "PRIVATE", "SHARED"
    #   resp.images[0].image_builder_supported #=> Boolean
    #   resp.images[0].platform #=> String, one of "WINDOWS"
    #   resp.images[0].description #=> String
    #   resp.images[0].state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"
    #   resp.images[0].state_change_reason.message #=> String
    #   resp.images[0].applications #=> Array
    #   resp.images[0].applications[0].name #=> String
    #   resp.images[0].applications[0].display_name #=> String
    #   resp.images[0].applications[0].icon_url #=> String
    #   resp.images[0].applications[0].launch_path #=> String
    #   resp.images[0].applications[0].launch_parameters #=> String
    #   resp.images[0].applications[0].enabled #=> Boolean
    #   resp.images[0].applications[0].metadata #=> Hash
    #   resp.images[0].applications[0].metadata["String"] #=> String
    #   resp.images[0].created_time #=> Time
    #   resp.images[0].public_base_image_released_date #=> Time
    #   resp.images[0].appstream_agent_version #=> String
    #   resp.images[0].image_permissions.allow_fleet #=> Boolean
    #   resp.images[0].image_permissions.allow_image_builder #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the streaming sessions for a specified
    # stack and fleet. If a user ID is provided for the stack and fleet,
    # only streaming sessions for that user are described. If an
    # authentication type is not provided, the default is to authenticate
    # users using a streaming URL.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack. This value is case-sensitive.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet. This value is case-sensitive.
    #
    # @option params [String] :user_id
    #   The user ID.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :limit
    #   The size of each page of results. The default value is 20 and the
    #   maximum value is 50.
    #
    # @option params [String] :authentication_type
    #   The authentication method. Specify `API` for a user authenticated
    #   using a streaming URL or `SAML` for a SAML federated user. The default
    #   is to authenticate users using a streaming URL.
    #
    # @return [Types::DescribeSessionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSessionsResult#sessions #sessions} => Array&lt;Types::Session&gt;
    #   * {Types::DescribeSessionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sessions({
    #     stack_name: "String", # required
    #     fleet_name: "String", # required
    #     user_id: "UserId",
    #     next_token: "String",
    #     limit: 1,
    #     authentication_type: "API", # accepts API, SAML, USERPOOL
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].id #=> String
    #   resp.sessions[0].user_id #=> String
    #   resp.sessions[0].stack_name #=> String
    #   resp.sessions[0].fleet_name #=> String
    #   resp.sessions[0].state #=> String, one of "ACTIVE", "PENDING", "EXPIRED"
    #   resp.sessions[0].authentication_type #=> String, one of "API", "SAML", "USERPOOL"
    #   resp.sessions[0].network_access_configuration.eni_private_ip_address #=> String
    #   resp.sessions[0].network_access_configuration.eni_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeSessions AWS API Documentation
    #
    # @overload describe_sessions(params = {})
    # @param [Hash] params ({})
    def describe_sessions(params = {}, options = {})
      req = build_request(:describe_sessions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified stacks, if the
    # stack names are provided. Otherwise, all stacks in the account are
    # described.
    #
    # @option params [Array<String>] :names
    #   The names of the stacks to describe.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeStacksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStacksResult#stacks #stacks} => Array&lt;Types::Stack&gt;
    #   * {Types::DescribeStacksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks({
    #     names: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.stacks #=> Array
    #   resp.stacks[0].arn #=> String
    #   resp.stacks[0].name #=> String
    #   resp.stacks[0].description #=> String
    #   resp.stacks[0].display_name #=> String
    #   resp.stacks[0].created_time #=> Time
    #   resp.stacks[0].storage_connectors #=> Array
    #   resp.stacks[0].storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"
    #   resp.stacks[0].storage_connectors[0].resource_identifier #=> String
    #   resp.stacks[0].storage_connectors[0].domains #=> Array
    #   resp.stacks[0].storage_connectors[0].domains[0] #=> String
    #   resp.stacks[0].redirect_url #=> String
    #   resp.stacks[0].feedback_url #=> String
    #   resp.stacks[0].stack_errors #=> Array
    #   resp.stacks[0].stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stacks[0].stack_errors[0].error_message #=> String
    #   resp.stacks[0].user_settings #=> Array
    #   resp.stacks[0].user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE"
    #   resp.stacks[0].user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.stacks[0].application_settings.enabled #=> Boolean
    #   resp.stacks[0].application_settings.settings_group #=> String
    #   resp.stacks[0].application_settings.s3_bucket_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeStacks AWS API Documentation
    #
    # @overload describe_stacks(params = {})
    # @param [Hash] params ({})
    def describe_stacks(params = {}, options = {})
      req = build_request(:describe_stacks, params)
      req.send_request(options)
    end

    # Disassociates the specified fleet from the specified stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_fleet({
    #     fleet_name: "String", # required
    #     stack_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateFleet AWS API Documentation
    #
    # @overload disassociate_fleet(params = {})
    # @param [Hash] params ({})
    def disassociate_fleet(params = {}, options = {})
      req = build_request(:disassociate_fleet, params)
      req.send_request(options)
    end

    # Immediately stops the specified streaming session.
    #
    # @option params [required, String] :session_id
    #   The ID of the streaming session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.expire_session({
    #     session_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSession AWS API Documentation
    #
    # @overload expire_session(params = {})
    # @param [Hash] params ({})
    def expire_session(params = {}, options = {})
      req = build_request(:expire_session, params)
      req.send_request(options)
    end

    # Retrieves the name of the fleet that is associated with the specified
    # stack.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListAssociatedFleetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedFleetsResult#names #names} => Array&lt;String&gt;
    #   * {Types::ListAssociatedFleetsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_fleets({
    #     stack_name: "String", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.names #=> Array
    #   resp.names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedFleets AWS API Documentation
    #
    # @overload list_associated_fleets(params = {})
    # @param [Hash] params ({})
    def list_associated_fleets(params = {}, options = {})
      req = build_request(:list_associated_fleets, params)
      req.send_request(options)
    end

    # Retrieves the name of the stack with which the specified fleet is
    # associated.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListAssociatedStacksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedStacksResult#names #names} => Array&lt;String&gt;
    #   * {Types::ListAssociatedStacksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_stacks({
    #     fleet_name: "String", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.names #=> Array
    #   resp.names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedStacks AWS API Documentation
    #
    # @overload list_associated_stacks(params = {})
    # @param [Hash] params ({})
    def list_associated_stacks(params = {}, options = {})
      req = build_request(:list_associated_stacks, params)
      req.send_request(options)
    end

    # Retrieves a list of all tags for the specified AppStream 2.0 resource.
    # You can tag AppStream 2.0 image builders, images, fleets, and stacks.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon AppStream 2.0 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the specified fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartFleet AWS API Documentation
    #
    # @overload start_fleet(params = {})
    # @param [Hash] params ({})
    def start_fleet(params = {}, options = {})
      req = build_request(:start_fleet, params)
      req.send_request(options)
    end

    # Starts the specified image builder.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @option params [String] :appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image builder.
    #   To use the latest version of the AppStream 2.0 agent, specify
    #   \[LATEST\].
    #
    # @return [Types::StartImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_builder({
    #     name: "String", # required
    #     appstream_agent_version: "AppstreamAgentVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS"
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartImageBuilder AWS API Documentation
    #
    # @overload start_image_builder(params = {})
    # @param [Hash] params ({})
    def start_image_builder(params = {}, options = {})
      req = build_request(:start_image_builder, params)
      req.send_request(options)
    end

    # Stops the specified fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopFleet AWS API Documentation
    #
    # @overload stop_fleet(params = {})
    # @param [Hash] params ({})
    def stop_fleet(params = {}, options = {})
      req = build_request(:stop_fleet, params)
      req.send_request(options)
    end

    # Stops the specified image builder.
    #
    # @option params [required, String] :name
    #   The name of the image builder.
    #
    # @return [Types::StopImageBuilderResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopImageBuilderResult#image_builder #image_builder} => Types::ImageBuilder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_image_builder({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_builder.name #=> String
    #   resp.image_builder.arn #=> String
    #   resp.image_builder.image_arn #=> String
    #   resp.image_builder.description #=> String
    #   resp.image_builder.display_name #=> String
    #   resp.image_builder.vpc_config.subnet_ids #=> Array
    #   resp.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.image_builder.vpc_config.security_group_ids #=> Array
    #   resp.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.image_builder.instance_type #=> String
    #   resp.image_builder.platform #=> String, one of "WINDOWS"
    #   resp.image_builder.state #=> String, one of "PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED"
    #   resp.image_builder.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_UNAVAILABLE"
    #   resp.image_builder.state_change_reason.message #=> String
    #   resp.image_builder.created_time #=> Time
    #   resp.image_builder.enable_default_internet_access #=> Boolean
    #   resp.image_builder.domain_join_info.directory_name #=> String
    #   resp.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.image_builder.image_builder_errors #=> Array
    #   resp.image_builder.image_builder_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.image_builder.appstream_agent_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopImageBuilder AWS API Documentation
    #
    # @overload stop_image_builder(params = {})
    # @param [Hash] params ({})
    def stop_image_builder(params = {}, options = {})
      req = build_request(:stop_image_builder, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified AppStream 2.0
    # resource. You can tag AppStream 2.0 image builders, images, fleets,
    # and stacks.
    #
    # Each tag consists of a key and an optional value. If a resource
    # already has a tag with the same key, this operation updates its value.
    #
    # To list the current tags for your resources, use ListTagsForResource.
    # To disassociate tags from your resources, use UntagResource.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon AppStream 2.0 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to associate. A tag is a key-value pair (the value is
    #   optional). For example, `Environment=Test`, or, if you do not specify
    #   a value, `Environment=`.
    #
    #   If you do not specify a value, we set the value to an empty string.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Disassociates one or more specified tags from the specified AppStream
    # 2.0 resource.
    #
    # To list the current tags for your resources, use ListTagsForResource.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon AppStream 2.0 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys for the tags to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified Directory Config object in AppStream 2.0. This
    # object includes the information required to join streaming instances
    # to an Active Directory domain.
    #
    # @option params [required, String] :directory_name
    #   The name of the Directory Config object.
    #
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #
    # @option params [Types::ServiceAccountCredentials] :service_account_credentials
    #   The credentials for the service account used by the streaming instance
    #   to connect to the directory.
    #
    # @return [Types::UpdateDirectoryConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDirectoryConfigResult#directory_config #directory_config} => Types::DirectoryConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_directory_config({
    #     directory_name: "DirectoryName", # required
    #     organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #     service_account_credentials: {
    #       account_name: "AccountName", # required
    #       account_password: "AccountPassword", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_config.directory_name #=> String
    #   resp.directory_config.organizational_unit_distinguished_names #=> Array
    #   resp.directory_config.organizational_unit_distinguished_names[0] #=> String
    #   resp.directory_config.service_account_credentials.account_name #=> String
    #   resp.directory_config.service_account_credentials.account_password #=> String
    #   resp.directory_config.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateDirectoryConfig AWS API Documentation
    #
    # @overload update_directory_config(params = {})
    # @param [Hash] params ({})
    def update_directory_config(params = {}, options = {})
      req = build_request(:update_directory_config, params)
      req.send_request(options)
    end

    # Updates the specified fleet.
    #
    # If the fleet is in the `STOPPED` state, you can update any attribute
    # except the fleet name. If the fleet is in the `RUNNING` state, you can
    # update the `DisplayName` and `ComputeCapacity` attributes. If the
    # fleet is in the `STARTING` or `STOPPING` state, you can't update it.
    #
    # @option params [String] :image_name
    #   The name of the image used to create the fleet.
    #
    # @option params [String] :image_arn
    #   The ARN of the public, private, or shared image to use.
    #
    # @option params [String] :name
    #   A unique name for the fleet.
    #
    # @option params [String] :instance_type
    #   The instance type to use when launching fleet instances. The following
    #   instance types are available:
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    # @option params [Types::ComputeCapacity] :compute_capacity
    #   The desired capacity for the fleet.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the fleet.
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   The maximum time that a streaming session can run, in seconds. Specify
    #   a value between 600 and 57600.
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended, in seconds. If a user who was disconnected reconnects within
    #   this time interval, the user is connected to their previous session.
    #   Specify a value between 60 and 57600.
    #
    # @option params [Boolean] :delete_vpc_config
    #   Deletes the VPC association for the specified fleet.
    #
    # @option params [String] :description
    #   The description for display.
    #
    # @option params [String] :display_name
    #   The fleet name for display.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #
    # @option params [Array<String>] :attributes_to_delete
    #   The fleet attributes to delete.
    #
    # @return [Types::UpdateFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetResult#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet({
    #     image_name: "String",
    #     image_arn: "Arn",
    #     name: "String",
    #     instance_type: "String",
    #     compute_capacity: {
    #       desired_instances: 1, # required
    #     },
    #     vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     delete_vpc_config: false,
    #     description: "Description",
    #     display_name: "DisplayName",
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: "DirectoryName",
    #       organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #     },
    #     attributes_to_delete: ["VPC_CONFIGURATION"], # accepts VPC_CONFIGURATION, VPC_CONFIGURATION_SECURITY_GROUP_IDS, DOMAIN_JOIN_INFO
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet.arn #=> String
    #   resp.fleet.name #=> String
    #   resp.fleet.display_name #=> String
    #   resp.fleet.description #=> String
    #   resp.fleet.image_name #=> String
    #   resp.fleet.image_arn #=> String
    #   resp.fleet.instance_type #=> String
    #   resp.fleet.fleet_type #=> String, one of "ALWAYS_ON", "ON_DEMAND"
    #   resp.fleet.compute_capacity_status.desired #=> Integer
    #   resp.fleet.compute_capacity_status.running #=> Integer
    #   resp.fleet.compute_capacity_status.in_use #=> Integer
    #   resp.fleet.compute_capacity_status.available #=> Integer
    #   resp.fleet.max_user_duration_in_seconds #=> Integer
    #   resp.fleet.disconnect_timeout_in_seconds #=> Integer
    #   resp.fleet.state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED"
    #   resp.fleet.vpc_config.subnet_ids #=> Array
    #   resp.fleet.vpc_config.subnet_ids[0] #=> String
    #   resp.fleet.vpc_config.security_group_ids #=> Array
    #   resp.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.fleet.created_time #=> Time
    #   resp.fleet.fleet_errors #=> Array
    #   resp.fleet.fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    #   resp.fleet.fleet_errors[0].error_message #=> String
    #   resp.fleet.enable_default_internet_access #=> Boolean
    #   resp.fleet.domain_join_info.directory_name #=> String
    #   resp.fleet.domain_join_info.organizational_unit_distinguished_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleet AWS API Documentation
    #
    # @overload update_fleet(params = {})
    # @param [Hash] params ({})
    def update_fleet(params = {}, options = {})
      req = build_request(:update_fleet, params)
      req.send_request(options)
    end

    # Adds or updates permissions for the specified private image.
    #
    # @option params [required, String] :name
    #   The name of the private image.
    #
    # @option params [required, String] :shared_account_id
    #   The 12-digit ID of the AWS account for which you want add or update
    #   image permissions.
    #
    # @option params [required, Types::ImagePermissions] :image_permissions
    #   The permissions for the image.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_permissions({
    #     name: "Name", # required
    #     shared_account_id: "AwsAccountId", # required
    #     image_permissions: { # required
    #       allow_fleet: false,
    #       allow_image_builder: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateImagePermissions AWS API Documentation
    #
    # @overload update_image_permissions(params = {})
    # @param [Hash] params ({})
    def update_image_permissions(params = {}, options = {})
      req = build_request(:update_image_permissions, params)
      req.send_request(options)
    end

    # Updates the specified fields for the specified stack.
    #
    # @option params [String] :display_name
    #   The stack name for display.
    #
    # @option params [String] :description
    #   The description for display.
    #
    # @option params [required, String] :name
    #   The name of the stack.
    #
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   The storage connectors to enable.
    #
    # @option params [Boolean] :delete_storage_connectors
    #   Deletes the storage connectors currently enabled for the stack.
    #
    # @option params [String] :redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #
    # @option params [String] :feedback_url
    #   The URL that users are redirected to after they click the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #
    # @option params [Array<String>] :attributes_to_delete
    #   The stack attributes to delete.
    #
    # @option params [Array<Types::UserSetting>] :user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default, these actions are enabled.
    #
    # @option params [Types::ApplicationSettings] :application_settings
    #   The persistent application settings for users of a stack. When these
    #   settings are enabled, changes that users make to applications and
    #   Windows settings are automatically saved after each session and
    #   applied to the next session.
    #
    # @return [Types::UpdateStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackResult#stack #stack} => Types::Stack
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack({
    #     display_name: "DisplayName",
    #     description: "Description",
    #     name: "String", # required
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #       },
    #     ],
    #     delete_storage_connectors: false,
    #     redirect_url: "RedirectURL",
    #     feedback_url: "FeedbackURL",
    #     attributes_to_delete: ["STORAGE_CONNECTORS"], # accepts STORAGE_CONNECTORS, STORAGE_CONNECTOR_HOMEFOLDERS, STORAGE_CONNECTOR_GOOGLE_DRIVE, STORAGE_CONNECTOR_ONE_DRIVE, REDIRECT_URL, FEEDBACK_URL, THEME_NAME, USER_SETTINGS
    #     user_settings: [
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE
    #         permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #       },
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: "SettingsGroup",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stack.arn #=> String
    #   resp.stack.name #=> String
    #   resp.stack.description #=> String
    #   resp.stack.display_name #=> String
    #   resp.stack.created_time #=> Time
    #   resp.stack.storage_connectors #=> Array
    #   resp.stack.storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"
    #   resp.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.stack.storage_connectors[0].domains #=> Array
    #   resp.stack.storage_connectors[0].domains[0] #=> String
    #   resp.stack.redirect_url #=> String
    #   resp.stack.feedback_url #=> String
    #   resp.stack.stack_errors #=> Array
    #   resp.stack.stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stack.stack_errors[0].error_message #=> String
    #   resp.stack.user_settings #=> Array
    #   resp.stack.user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE"
    #   resp.stack.user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.stack.application_settings.enabled #=> Boolean
    #   resp.stack.application_settings.settings_group #=> String
    #   resp.stack.application_settings.s3_bucket_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStack AWS API Documentation
    #
    # @overload update_stack(params = {})
    # @param [Hash] params ({})
    def update_stack(params = {}, options = {})
      req = build_request(:update_stack, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-appstream'
      context[:gem_version] = '1.15.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name   | params             | :delay   | :max_attempts |
    # | ------------- | ------------------ | -------- | ------------- |
    # | fleet_started | {#describe_fleets} | 30       | 40            |
    # | fleet_stopped | {#describe_fleets} | 30       | 40            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        fleet_started: Waiters::FleetStarted,
        fleet_stopped: Waiters::FleetStopped
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
