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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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

    # Associate a fleet to a stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet to associate.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack to which the fleet is associated.
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

    # Creates a directory configuration with the given parameters.
    #
    # @option params [required, String] :directory_name
    #   The fully qualified name of the directory, such as corp.example.com
    #
    # @option params [required, Array<String>] :organizational_unit_distinguished_names
    #   The list of the distinguished names of organizational units to place
    #   computer accounts in.
    #
    # @option params [required, Types::ServiceAccountCredentials] :service_account_credentials
    #   The *AccountName* and *AccountPassword* values for the service
    #   account, which are used by the streaming instance to connect to the
    #   directory.
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

    # Creates a new fleet.
    #
    # @option params [required, String] :name
    #   A unique identifier for the fleet.
    #
    # @option params [required, String] :image_name
    #   Unique name of the image used by the fleet.
    #
    # @option params [required, String] :instance_type
    #   The instance type of compute resources for the fleet. Fleet instances
    #   are launched from this instance type. Available instance types are:
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
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    # @option params [required, Types::ComputeCapacity] :compute_capacity
    #   The parameters for the capacity allocated to the fleet.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the fleet.
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   The maximum time for which a streaming session can run. The input can
    #   be any numeric value in seconds between 600 and 57600.
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended. If a user who got disconnected reconnects within this timeout
    #   interval, the user is connected back to their previous session. The
    #   input can be any numeric value in seconds between 60 and 57600.
    #
    # @option params [String] :description
    #   The description of the fleet.
    #
    # @option params [String] :display_name
    #   The display name of the fleet.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The *DirectoryName* and *OrganizationalUnitDistinguishedName* values,
    #   which are used to join domains for the AppStream 2.0 streaming
    #   instances.
    #
    # @return [Types::CreateFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResult#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "Name", # required
    #     image_name: "String", # required
    #     instance_type: "String", # required
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
    #   resp.fleet.instance_type #=> String
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
    #   resp.fleet.fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
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

    # Create a new stack.
    #
    # @option params [required, String] :name
    #   The unique identifier for this stack.
    #
    # @option params [String] :description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #
    # @option params [String] :display_name
    #   The name displayed to end users on the AppStream 2.0 portal.
    #
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   The storage connectors to be enabled for the stack.
    #
    # @return [Types::CreateStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackResult#stack #stack} => Types::Stack
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     name: "String", # required
    #     description: "Description",
    #     display_name: "DisplayName",
    #     storage_connectors: [
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS
    #         resource_identifier: "ResourceIdentifier",
    #       },
    #     ],
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
    #   resp.stack.storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS"
    #   resp.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.stack.stack_errors #=> Array
    #   resp.stack.stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stack.stack_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates a URL to start an AppStream 2.0 streaming session for a user.
    # By default, the URL is valid only for 1 minute from the time that it
    # is generated.
    #
    # @option params [required, String] :stack_name
    #   The stack for which the URL is generated.
    #
    # @option params [required, String] :fleet_name
    #   The fleet for which the URL is generated.
    #
    # @option params [required, String] :user_id
    #   A unique user ID for whom the URL is generated.
    #
    # @option params [String] :application_id
    #   The ID of the application that must be launched after the session
    #   starts.
    #
    # @option params [Integer] :validity
    #   The duration up to which the URL returned by this action is valid. The
    #   input can be any numeric value in seconds between 1 and 604800
    #   seconds.
    #
    # @option params [String] :session_context
    #   The sessionContext of the streaming URL.
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

    # Deletes the directory configuration with the given parameters.
    #
    # @option params [required, String] :directory_name
    #   The name of the directory configuration to be deleted.
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

    # Deletes a fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet to be deleted.
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

    # Deletes the stack. After this operation completes, the environment can
    # no longer be activated, and any reservations made for the stack are
    # released.
    #
    # @option params [required, String] :name
    #   The name of the stack to delete.
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

    # Returns a list describing the specified directory configurations.
    #
    # @option params [Array<String>] :directory_names
    #   A specific list of directory names.
    #
    # @option params [Integer] :max_results
    #   The size of each page of results.
    #
    # @option params [String] :next_token
    #   The DescribeDirectoryConfigsResult.NextToken from a previous call to
    #   DescribeDirectoryConfigs. If this is the first call, pass null.
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

    # If fleet names are provided, this operation describes the specified
    # fleets; otherwise, all the fleets in the account are described.
    #
    # @option params [Array<String>] :names
    #   The fleet names to describe. Use null to describe all the fleets for
    #   the AWS account.
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
    #   resp.fleets[0].instance_type #=> String
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
    #   resp.fleets[0].fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
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

    # Describes the images. If a list of names is not provided, all images
    # in your account are returned. This operation does not return a
    # paginated result.
    #
    # @option params [Array<String>] :names
    #   A specific list of images to describe.
    #
    # @return [Types::DescribeImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagesResult#images #images} => Array&lt;Types::Image&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images({
    #     names: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].name #=> String
    #   resp.images[0].arn #=> String
    #   resp.images[0].base_image_arn #=> String
    #   resp.images[0].display_name #=> String
    #   resp.images[0].state #=> String, one of "PENDING", "AVAILABLE", "FAILED", "DELETING"
    #   resp.images[0].visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.images[0].image_builder_supported #=> Boolean
    #   resp.images[0].platform #=> String, one of "WINDOWS"
    #   resp.images[0].description #=> String
    #   resp.images[0].state_change_reason.code #=> String, one of "INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Describes the streaming sessions for a stack and a fleet. If a user ID
    # is provided, this operation returns streaming sessions for only that
    # user. To retrieve the next set of items, pass this value for the
    # `nextToken` parameter in a subsequent call to this operation. If an
    # authentication type is not provided, the operation defaults to users
    # authenticated using a streaming URL.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack for which to list sessions.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet for which to list sessions.
    #
    # @option params [String] :user_id
    #   The user for whom to list sessions. Use null to describe all the
    #   sessions for the stack and fleet.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :limit
    #   The size of each page of results. The default value is 20 and the
    #   maximum supported value is 50.
    #
    # @option params [String] :authentication_type
    #   The authentication method of the user. It can be `API` for a user
    #   authenticated using a streaming URL, or `SAML` for a SAML federated
    #   user. If an authentication type is not provided, the operation
    #   defaults to users authenticated using a streaming URL.
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

    # If stack names are not provided, this operation describes the
    # specified stacks; otherwise, all stacks in the account are described.
    # To retrieve the next set of items, pass the `nextToken` value in a
    # subsequent call to this operation.
    #
    # @option params [Array<String>] :names
    #   The stack names to describe. Use null to describe all the stacks for
    #   the AWS account.
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
    #   resp.stacks[0].storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS"
    #   resp.stacks[0].storage_connectors[0].resource_identifier #=> String
    #   resp.stacks[0].stack_errors #=> Array
    #   resp.stacks[0].stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stacks[0].stack_errors[0].error_message #=> String
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

    # Disassociates a fleet from a stack.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet to disassociate.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack with which the fleet is associated.
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

    # This operation immediately stops a streaming session.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the streaming session to be stopped.
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

    # Lists all fleets associated with the stack.
    #
    # @option params [required, String] :stack_name
    #   The name of the stack whose associated fleets are listed.
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

    # Lists all stacks to which the specified fleet is associated.
    #
    # @option params [required, String] :fleet_name
    #   The name of the fleet whose associated stacks are listed.
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

    # Starts a fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet to start.
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

    # Stops a fleet.
    #
    # @option params [required, String] :name
    #   The name of the fleet to stop.
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

    # Updates the directory configuration with the given parameters.
    #
    # @option params [required, String] :directory_name
    #   The name of the existing directory configuration to be updated.
    #
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   The list of the distinguished names of organizational units to place
    #   computer accounts in.
    #
    # @option params [Types::ServiceAccountCredentials] :service_account_credentials
    #   The *AccountName* and *AccountPassword* values for the service
    #   account, which are used by the streaming instance to connect to the
    #   directory
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

    # Updates an existing fleet. All the attributes except the fleet name
    # can be updated in the **STOPPED** state. When a fleet is in the
    # **RUNNING** state, only `DisplayName` and `ComputeCapacity` can be
    # updated. A fleet cannot be updated in a status of **STARTING** or
    # **STOPPING**.
    #
    # @option params [String] :image_name
    #   The image name from which a fleet is created.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @option params [String] :instance_type
    #   The instance type of compute resources for the fleet. Fleet instances
    #   are launched from this instance type. Available instance types are:
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
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    # @option params [Types::ComputeCapacity] :compute_capacity
    #   The parameters for the capacity allocated to the fleet.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the fleet.
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   The maximum time for which a streaming session can run. The input can
    #   be any numeric value in seconds between 600 and 57600.
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended. If a user who got disconnected reconnects within this timeout
    #   interval, the user is connected back to their previous session. The
    #   input can be any numeric value in seconds between 60 and 57600.
    #
    # @option params [Boolean] :delete_vpc_config
    #   Delete the VPC association for the specified fleet.
    #
    # @option params [String] :description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #
    # @option params [String] :display_name
    #   The name displayed to end users on the AppStream 2.0 portal.
    #
    # @option params [Boolean] :enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #
    # @option params [Types::DomainJoinInfo] :domain_join_info
    #   The *DirectoryName* and *OrganizationalUnitDistinguishedName* values,
    #   which are used to join domains for the AppStream 2.0 streaming
    #   instances.
    #
    # @option params [Array<String>] :attributes_to_delete
    #   Fleet attributes to be deleted.
    #
    # @return [Types::UpdateFleetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetResult#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet({
    #     image_name: "String",
    #     name: "String", # required
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
    #   resp.fleet.instance_type #=> String
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
    #   resp.fleet.fleet_errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
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

    # Updates the specified fields in the stack with the specified name.
    #
    # @option params [String] :display_name
    #   The name displayed to end users on the AppStream 2.0 portal.
    #
    # @option params [String] :description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #
    # @option params [required, String] :name
    #   The name of the stack to update.
    #
    # @option params [Array<Types::StorageConnector>] :storage_connectors
    #   The storage connectors to be enabled for the stack.
    #
    # @option params [Boolean] :delete_storage_connectors
    #   Remove all the storage connectors currently enabled for the stack.
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
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS
    #         resource_identifier: "ResourceIdentifier",
    #       },
    #     ],
    #     delete_storage_connectors: false,
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
    #   resp.stack.storage_connectors[0].connector_type #=> String, one of "HOMEFOLDERS"
    #   resp.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.stack.stack_errors #=> Array
    #   resp.stack.stack_errors[0].error_code #=> String, one of "STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"
    #   resp.stack.stack_errors[0].error_message #=> String
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
      context[:gem_version] = '1.0.0'
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
