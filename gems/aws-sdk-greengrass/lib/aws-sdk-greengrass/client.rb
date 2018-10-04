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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:greengrass)

module Aws::Greengrass
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :greengrass

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Associates a role with a group. Your AWS Greengrass core will use the
    # role to access AWS cloud services. The role's permissions should
    # allow Greengrass core Lambda functions to perform actions against the
    # cloud.
    #
    # @option params [required, String] :group_id
    #
    # @option params [String] :role_arn
    #   The ARN of the role you wish to associate with this group.
    #
    # @return [Types::AssociateRoleToGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateRoleToGroupResponse#associated_at #associated_at} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_role_to_group({
    #     group_id: "__string", # required
    #     role_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateRoleToGroup AWS API Documentation
    #
    # @overload associate_role_to_group(params = {})
    # @param [Hash] params ({})
    def associate_role_to_group(params = {}, options = {})
      req = build_request(:associate_role_to_group, params)
      req.send_request(options)
    end

    # Associates a role with your account. AWS Greengrass will use the role
    # to access your Lambda functions and AWS IoT resources. This is
    # necessary for deployments to succeed. The role must have at least
    # minimum permissions in the policy
    # ''AWSGreengrassResourceAccessRolePolicy''.
    #
    # @option params [String] :role_arn
    #   The ARN of the service role you wish to associate with your account.
    #
    # @return [Types::AssociateServiceRoleToAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateServiceRoleToAccountResponse#associated_at #associated_at} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service_role_to_account({
    #     role_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateServiceRoleToAccount AWS API Documentation
    #
    # @overload associate_service_role_to_account(params = {})
    # @param [Hash] params ({})
    def associate_service_role_to_account(params = {}, options = {})
      req = build_request(:associate_service_role_to_account, params)
      req.send_request(options)
    end

    # Creates a core definition. You may provide the initial version of the
    # core definition now or use ''CreateCoreDefinitionVersion'' at a
    # later time. AWS Greengrass groups must each contain exactly one AWS
    # Greengrass core.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::CoreDefinitionVersion] :initial_version
    #   Information about a core definition version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateCoreDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCoreDefinitionResponse#arn #arn} => String
    #   * {Types::CreateCoreDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateCoreDefinitionResponse#id #id} => String
    #   * {Types::CreateCoreDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateCoreDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::CreateCoreDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateCoreDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_core_definition({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       cores: [
    #         {
    #           certificate_arn: "__string",
    #           id: "__string",
    #           sync_shadow: false,
    #           thing_arn: "__string",
    #         },
    #       ],
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinition AWS API Documentation
    #
    # @overload create_core_definition(params = {})
    # @param [Hash] params ({})
    def create_core_definition(params = {}, options = {})
      req = build_request(:create_core_definition, params)
      req.send_request(options)
    end

    # Creates a version of a core definition that has already been defined.
    # AWS Greengrass groups must each contain exactly one AWS Greengrass
    # core.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :core_definition_id
    #
    # @option params [Array<Types::Core>] :cores
    #
    # @return [Types::CreateCoreDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCoreDefinitionVersionResponse#arn #arn} => String
    #   * {Types::CreateCoreDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateCoreDefinitionVersionResponse#id #id} => String
    #   * {Types::CreateCoreDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_core_definition_version({
    #     amzn_client_token: "__string",
    #     core_definition_id: "__string", # required
    #     cores: [
    #       {
    #         certificate_arn: "__string",
    #         id: "__string",
    #         sync_shadow: false,
    #         thing_arn: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionVersion AWS API Documentation
    #
    # @overload create_core_definition_version(params = {})
    # @param [Hash] params ({})
    def create_core_definition_version(params = {}, options = {})
      req = build_request(:create_core_definition_version, params)
      req.send_request(options)
    end

    # Creates a deployment.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment if you wish to redeploy a previous
    #   deployment.
    #
    # @option params [String] :deployment_type
    #   The type of deployment. When used in ''CreateDeployment'', only
    #   ''NewDeployment'' and ''Redeployment'' are valid.
    #
    # @option params [required, String] :group_id
    #
    # @option params [String] :group_version_id
    #   The ID of the group version to be deployed.
    #
    # @return [Types::CreateDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentResponse#deployment_arn #deployment_arn} => String
    #   * {Types::CreateDeploymentResponse#deployment_id #deployment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     amzn_client_token: "__string",
    #     deployment_id: "__string",
    #     deployment_type: "NewDeployment", # accepts NewDeployment, Redeployment, ResetDeployment, ForceResetDeployment
    #     group_id: "__string", # required
    #     group_version_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_arn #=> String
    #   resp.deployment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates a device definition. You may provide the initial version of
    # the device definition now or use ''CreateDeviceDefinitionVersion''
    # at a later time.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::DeviceDefinitionVersion] :initial_version
    #   Information about a device definition version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateDeviceDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeviceDefinitionResponse#arn #arn} => String
    #   * {Types::CreateDeviceDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateDeviceDefinitionResponse#id #id} => String
    #   * {Types::CreateDeviceDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateDeviceDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::CreateDeviceDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateDeviceDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_definition({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       devices: [
    #         {
    #           certificate_arn: "__string",
    #           id: "__string",
    #           sync_shadow: false,
    #           thing_arn: "__string",
    #         },
    #       ],
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinition AWS API Documentation
    #
    # @overload create_device_definition(params = {})
    # @param [Hash] params ({})
    def create_device_definition(params = {}, options = {})
      req = build_request(:create_device_definition, params)
      req.send_request(options)
    end

    # Creates a version of a device definition that has already been
    # defined.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :device_definition_id
    #
    # @option params [Array<Types::Device>] :devices
    #
    # @return [Types::CreateDeviceDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeviceDefinitionVersionResponse#arn #arn} => String
    #   * {Types::CreateDeviceDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateDeviceDefinitionVersionResponse#id #id} => String
    #   * {Types::CreateDeviceDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_definition_version({
    #     amzn_client_token: "__string",
    #     device_definition_id: "__string", # required
    #     devices: [
    #       {
    #         certificate_arn: "__string",
    #         id: "__string",
    #         sync_shadow: false,
    #         thing_arn: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionVersion AWS API Documentation
    #
    # @overload create_device_definition_version(params = {})
    # @param [Hash] params ({})
    def create_device_definition_version(params = {}, options = {})
      req = build_request(:create_device_definition_version, params)
      req.send_request(options)
    end

    # Creates a Lambda function definition which contains a list of Lambda
    # functions and their configurations to be used in a group. You can
    # create an initial version of the definition by providing a list of
    # Lambda functions and their configurations now, or use
    # ''CreateFunctionDefinitionVersion'' later.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::FunctionDefinitionVersion] :initial_version
    #   Information about a function definition version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateFunctionDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFunctionDefinitionResponse#arn #arn} => String
    #   * {Types::CreateFunctionDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateFunctionDefinitionResponse#id #id} => String
    #   * {Types::CreateFunctionDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateFunctionDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::CreateFunctionDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateFunctionDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function_definition({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       functions: [
    #         {
    #           function_arn: "__string",
    #           function_configuration: {
    #             encoding_type: "binary", # accepts binary, json
    #             environment: {
    #               access_sysfs: false,
    #               resource_access_policies: [
    #                 {
    #                   permission: "ro", # accepts ro, rw
    #                   resource_id: "__string",
    #                 },
    #               ],
    #               variables: {
    #                 "__string" => "__string",
    #               },
    #             },
    #             exec_args: "__string",
    #             executable: "__string",
    #             memory_size: 1,
    #             pinned: false,
    #             timeout: 1,
    #           },
    #           id: "__string",
    #         },
    #       ],
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinition AWS API Documentation
    #
    # @overload create_function_definition(params = {})
    # @param [Hash] params ({})
    def create_function_definition(params = {}, options = {})
      req = build_request(:create_function_definition, params)
      req.send_request(options)
    end

    # Creates a version of a Lambda function definition that has already
    # been defined.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :function_definition_id
    #
    # @option params [Array<Types::Function>] :functions
    #
    # @return [Types::CreateFunctionDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFunctionDefinitionVersionResponse#arn #arn} => String
    #   * {Types::CreateFunctionDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateFunctionDefinitionVersionResponse#id #id} => String
    #   * {Types::CreateFunctionDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function_definition_version({
    #     amzn_client_token: "__string",
    #     function_definition_id: "__string", # required
    #     functions: [
    #       {
    #         function_arn: "__string",
    #         function_configuration: {
    #           encoding_type: "binary", # accepts binary, json
    #           environment: {
    #             access_sysfs: false,
    #             resource_access_policies: [
    #               {
    #                 permission: "ro", # accepts ro, rw
    #                 resource_id: "__string",
    #               },
    #             ],
    #             variables: {
    #               "__string" => "__string",
    #             },
    #           },
    #           exec_args: "__string",
    #           executable: "__string",
    #           memory_size: 1,
    #           pinned: false,
    #           timeout: 1,
    #         },
    #         id: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionVersion AWS API Documentation
    #
    # @overload create_function_definition_version(params = {})
    # @param [Hash] params ({})
    def create_function_definition_version(params = {}, options = {})
      req = build_request(:create_function_definition_version, params)
      req.send_request(options)
    end

    # Creates a group. You may provide the initial version of the group or
    # use ''CreateGroupVersion'' at a later time.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::GroupVersion] :initial_version
    #   Information about a group version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#arn #arn} => String
    #   * {Types::CreateGroupResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateGroupResponse#id #id} => String
    #   * {Types::CreateGroupResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateGroupResponse#latest_version #latest_version} => String
    #   * {Types::CreateGroupResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateGroupResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       core_definition_version_arn: "__string",
    #       device_definition_version_arn: "__string",
    #       function_definition_version_arn: "__string",
    #       logger_definition_version_arn: "__string",
    #       resource_definition_version_arn: "__string",
    #       subscription_definition_version_arn: "__string",
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a CA for the group. If a CA already exists, it will rotate the
    # existing CA.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::CreateGroupCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupCertificateAuthorityResponse#group_certificate_authority_arn #group_certificate_authority_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_certificate_authority({
    #     amzn_client_token: "__string",
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupCertificateAuthority AWS API Documentation
    #
    # @overload create_group_certificate_authority(params = {})
    # @param [Hash] params ({})
    def create_group_certificate_authority(params = {}, options = {})
      req = build_request(:create_group_certificate_authority, params)
      req.send_request(options)
    end

    # Creates a version of a group which has already been defined.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [String] :core_definition_version_arn
    #
    # @option params [String] :device_definition_version_arn
    #
    # @option params [String] :function_definition_version_arn
    #
    # @option params [required, String] :group_id
    #
    # @option params [String] :logger_definition_version_arn
    #
    # @option params [String] :resource_definition_version_arn
    #
    # @option params [String] :subscription_definition_version_arn
    #
    # @return [Types::CreateGroupVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupVersionResponse#arn #arn} => String
    #   * {Types::CreateGroupVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateGroupVersionResponse#id #id} => String
    #   * {Types::CreateGroupVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_version({
    #     amzn_client_token: "__string",
    #     core_definition_version_arn: "__string",
    #     device_definition_version_arn: "__string",
    #     function_definition_version_arn: "__string",
    #     group_id: "__string", # required
    #     logger_definition_version_arn: "__string",
    #     resource_definition_version_arn: "__string",
    #     subscription_definition_version_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupVersion AWS API Documentation
    #
    # @overload create_group_version(params = {})
    # @param [Hash] params ({})
    def create_group_version(params = {}, options = {})
      req = build_request(:create_group_version, params)
      req.send_request(options)
    end

    # Creates a logger definition. You may provide the initial version of
    # the logger definition now or use ''CreateLoggerDefinitionVersion''
    # at a later time.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::LoggerDefinitionVersion] :initial_version
    #   Information about a logger definition version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateLoggerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoggerDefinitionResponse#arn #arn} => String
    #   * {Types::CreateLoggerDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateLoggerDefinitionResponse#id #id} => String
    #   * {Types::CreateLoggerDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateLoggerDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::CreateLoggerDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateLoggerDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logger_definition({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       loggers: [
    #         {
    #           component: "GreengrassSystem", # accepts GreengrassSystem, Lambda
    #           id: "__string",
    #           level: "DEBUG", # accepts DEBUG, INFO, WARN, ERROR, FATAL
    #           space: 1,
    #           type: "FileSystem", # accepts FileSystem, AWSCloudWatch
    #         },
    #       ],
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinition AWS API Documentation
    #
    # @overload create_logger_definition(params = {})
    # @param [Hash] params ({})
    def create_logger_definition(params = {}, options = {})
      req = build_request(:create_logger_definition, params)
      req.send_request(options)
    end

    # Creates a version of a logger definition that has already been
    # defined.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :logger_definition_id
    #
    # @option params [Array<Types::Logger>] :loggers
    #
    # @return [Types::CreateLoggerDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoggerDefinitionVersionResponse#arn #arn} => String
    #   * {Types::CreateLoggerDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateLoggerDefinitionVersionResponse#id #id} => String
    #   * {Types::CreateLoggerDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logger_definition_version({
    #     amzn_client_token: "__string",
    #     logger_definition_id: "__string", # required
    #     loggers: [
    #       {
    #         component: "GreengrassSystem", # accepts GreengrassSystem, Lambda
    #         id: "__string",
    #         level: "DEBUG", # accepts DEBUG, INFO, WARN, ERROR, FATAL
    #         space: 1,
    #         type: "FileSystem", # accepts FileSystem, AWSCloudWatch
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionVersion AWS API Documentation
    #
    # @overload create_logger_definition_version(params = {})
    # @param [Hash] params ({})
    def create_logger_definition_version(params = {}, options = {})
      req = build_request(:create_logger_definition_version, params)
      req.send_request(options)
    end

    # Creates a resource definition which contains a list of resources to be
    # used in a group. You can create an initial version of the definition
    # by providing a list of resources now, or use
    # ''CreateResourceDefinitionVersion'' later.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::ResourceDefinitionVersion] :initial_version
    #   Information about a resource definition version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateResourceDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceDefinitionResponse#arn #arn} => String
    #   * {Types::CreateResourceDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateResourceDefinitionResponse#id #id} => String
    #   * {Types::CreateResourceDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateResourceDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::CreateResourceDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateResourceDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_definition({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       resources: [
    #         {
    #           id: "__string",
    #           name: "__string",
    #           resource_data_container: {
    #             local_device_resource_data: {
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: "__string",
    #               },
    #               source_path: "__string",
    #             },
    #             local_volume_resource_data: {
    #               destination_path: "__string",
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: "__string",
    #               },
    #               source_path: "__string",
    #             },
    #             s3_machine_learning_model_resource_data: {
    #               destination_path: "__string",
    #               s3_uri: "__string",
    #             },
    #             sage_maker_machine_learning_model_resource_data: {
    #               destination_path: "__string",
    #               sage_maker_job_arn: "__string",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinition AWS API Documentation
    #
    # @overload create_resource_definition(params = {})
    # @param [Hash] params ({})
    def create_resource_definition(params = {}, options = {})
      req = build_request(:create_resource_definition, params)
      req.send_request(options)
    end

    # Creates a version of a resource definition that has already been
    # defined.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :resource_definition_id
    #
    # @option params [Array<Types::Resource>] :resources
    #
    # @return [Types::CreateResourceDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceDefinitionVersionResponse#arn #arn} => String
    #   * {Types::CreateResourceDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateResourceDefinitionVersionResponse#id #id} => String
    #   * {Types::CreateResourceDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_definition_version({
    #     amzn_client_token: "__string",
    #     resource_definition_id: "__string", # required
    #     resources: [
    #       {
    #         id: "__string",
    #         name: "__string",
    #         resource_data_container: {
    #           local_device_resource_data: {
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: "__string",
    #             },
    #             source_path: "__string",
    #           },
    #           local_volume_resource_data: {
    #             destination_path: "__string",
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: "__string",
    #             },
    #             source_path: "__string",
    #           },
    #           s3_machine_learning_model_resource_data: {
    #             destination_path: "__string",
    #             s3_uri: "__string",
    #           },
    #           sage_maker_machine_learning_model_resource_data: {
    #             destination_path: "__string",
    #             sage_maker_job_arn: "__string",
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinitionVersion AWS API Documentation
    #
    # @overload create_resource_definition_version(params = {})
    # @param [Hash] params ({})
    def create_resource_definition_version(params = {}, options = {})
      req = build_request(:create_resource_definition_version, params)
      req.send_request(options)
    end

    # Creates a software update for a core or group of cores (specified as
    # an IoT thing group.) Use this to update the OTA Agent as well as the
    # Greengrass core software. It makes use of the IoT Jobs feature which
    # provides additional commands to manage a Greengrass core software
    # update job.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [String] :s3_url_signer_role
    #   The IAM Role that Greengrass will use to create pre-signed URLs
    #   pointing towards the update artifact.
    #
    # @option params [String] :software_to_update
    #   The piece of software on the Greengrass core that will be updated.
    #
    # @option params [String] :update_agent_log_level
    #   The minimum level of log statements that should be logged by the OTA
    #   Agent during an update.
    #
    # @option params [Array<String>] :update_targets
    #   The ARNs of the targets (IoT things or IoT thing groups) that this
    #   update will be applied to.
    #
    # @option params [String] :update_targets_architecture
    #   The architecture of the cores which are the targets of an update.
    #
    # @option params [String] :update_targets_operating_system
    #   The operating system of the cores which are the targets of an update.
    #
    # @return [Types::CreateSoftwareUpdateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSoftwareUpdateJobResponse#iot_job_arn #iot_job_arn} => String
    #   * {Types::CreateSoftwareUpdateJobResponse#iot_job_id #iot_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_software_update_job({
    #     amzn_client_token: "__string",
    #     s3_url_signer_role: "S3UrlSignerRole",
    #     software_to_update: "core", # accepts core, ota_agent
    #     update_agent_log_level: "NONE", # accepts NONE, TRACE, DEBUG, VERBOSE, INFO, WARN, ERROR, FATAL
    #     update_targets: ["__string"],
    #     update_targets_architecture: "armv7l", # accepts armv7l, x86_64, aarch64
    #     update_targets_operating_system: "ubuntu", # accepts ubuntu, raspbian, amazon_linux
    #   })
    #
    # @example Response structure
    #
    #   resp.iot_job_arn #=> String
    #   resp.iot_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSoftwareUpdateJob AWS API Documentation
    #
    # @overload create_software_update_job(params = {})
    # @param [Hash] params ({})
    def create_software_update_job(params = {}, options = {})
      req = build_request(:create_software_update_job, params)
      req.send_request(options)
    end

    # Creates a subscription definition. You may provide the initial version
    # of the subscription definition now or use
    # ''CreateSubscriptionDefinitionVersion'' at a later time.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Types::SubscriptionDefinitionVersion] :initial_version
    #   Information about a subscription definition version.
    #
    # @option params [String] :name
    #
    # @return [Types::CreateSubscriptionDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionDefinitionResponse#arn #arn} => String
    #   * {Types::CreateSubscriptionDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateSubscriptionDefinitionResponse#id #id} => String
    #   * {Types::CreateSubscriptionDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::CreateSubscriptionDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::CreateSubscriptionDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::CreateSubscriptionDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_definition({
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       subscriptions: [
    #         {
    #           id: "__string",
    #           source: "__string",
    #           subject: "__string",
    #           target: "__string",
    #         },
    #       ],
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinition AWS API Documentation
    #
    # @overload create_subscription_definition(params = {})
    # @param [Hash] params ({})
    def create_subscription_definition(params = {}, options = {})
      req = build_request(:create_subscription_definition, params)
      req.send_request(options)
    end

    # Creates a version of a subscription definition which has already been
    # defined.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [required, String] :subscription_definition_id
    #
    # @option params [Array<Types::Subscription>] :subscriptions
    #
    # @return [Types::CreateSubscriptionDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionDefinitionVersionResponse#arn #arn} => String
    #   * {Types::CreateSubscriptionDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::CreateSubscriptionDefinitionVersionResponse#id #id} => String
    #   * {Types::CreateSubscriptionDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_definition_version({
    #     amzn_client_token: "__string",
    #     subscription_definition_id: "__string", # required
    #     subscriptions: [
    #       {
    #         id: "__string",
    #         source: "__string",
    #         subject: "__string",
    #         target: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionVersion AWS API Documentation
    #
    # @overload create_subscription_definition_version(params = {})
    # @param [Hash] params ({})
    def create_subscription_definition_version(params = {}, options = {})
      req = build_request(:create_subscription_definition_version, params)
      req.send_request(options)
    end

    # Deletes a core definition.
    #
    # @option params [required, String] :core_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_definition({
    #     core_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteCoreDefinition AWS API Documentation
    #
    # @overload delete_core_definition(params = {})
    # @param [Hash] params ({})
    def delete_core_definition(params = {}, options = {})
      req = build_request(:delete_core_definition, params)
      req.send_request(options)
    end

    # Deletes a device definition.
    #
    # @option params [required, String] :device_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_definition({
    #     device_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteDeviceDefinition AWS API Documentation
    #
    # @overload delete_device_definition(params = {})
    # @param [Hash] params ({})
    def delete_device_definition(params = {}, options = {})
      req = build_request(:delete_device_definition, params)
      req.send_request(options)
    end

    # Deletes a Lambda function definition.
    #
    # @option params [required, String] :function_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_definition({
    #     function_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteFunctionDefinition AWS API Documentation
    #
    # @overload delete_function_definition(params = {})
    # @param [Hash] params ({})
    def delete_function_definition(params = {}, options = {})
      req = build_request(:delete_function_definition, params)
      req.send_request(options)
    end

    # Deletes a group.
    #
    # @option params [required, String] :group_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes a logger definition.
    #
    # @option params [required, String] :logger_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logger_definition({
    #     logger_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteLoggerDefinition AWS API Documentation
    #
    # @overload delete_logger_definition(params = {})
    # @param [Hash] params ({})
    def delete_logger_definition(params = {}, options = {})
      req = build_request(:delete_logger_definition, params)
      req.send_request(options)
    end

    # Deletes a resource definition.
    #
    # @option params [required, String] :resource_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_definition({
    #     resource_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteResourceDefinition AWS API Documentation
    #
    # @overload delete_resource_definition(params = {})
    # @param [Hash] params ({})
    def delete_resource_definition(params = {}, options = {})
      req = build_request(:delete_resource_definition, params)
      req.send_request(options)
    end

    # Deletes a subscription definition.
    #
    # @option params [required, String] :subscription_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_definition({
    #     subscription_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteSubscriptionDefinition AWS API Documentation
    #
    # @overload delete_subscription_definition(params = {})
    # @param [Hash] params ({})
    def delete_subscription_definition(params = {}, options = {})
      req = build_request(:delete_subscription_definition, params)
      req.send_request(options)
    end

    # Disassociates the role from a group.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::DisassociateRoleFromGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateRoleFromGroupResponse#disassociated_at #disassociated_at} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_role_from_group({
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.disassociated_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateRoleFromGroup AWS API Documentation
    #
    # @overload disassociate_role_from_group(params = {})
    # @param [Hash] params ({})
    def disassociate_role_from_group(params = {}, options = {})
      req = build_request(:disassociate_role_from_group, params)
      req.send_request(options)
    end

    # Disassociates the service role from your account. Without a service
    # role, deployments will not work.
    #
    # @return [Types::DisassociateServiceRoleFromAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateServiceRoleFromAccountResponse#disassociated_at #disassociated_at} => String
    #
    # @example Response structure
    #
    #   resp.disassociated_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateServiceRoleFromAccount AWS API Documentation
    #
    # @overload disassociate_service_role_from_account(params = {})
    # @param [Hash] params ({})
    def disassociate_service_role_from_account(params = {}, options = {})
      req = build_request(:disassociate_service_role_from_account, params)
      req.send_request(options)
    end

    # Retrieves the role associated with a particular group.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::GetAssociatedRoleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssociatedRoleResponse#associated_at #associated_at} => String
    #   * {Types::GetAssociatedRoleResponse#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_associated_role({
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_at #=> String
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetAssociatedRole AWS API Documentation
    #
    # @overload get_associated_role(params = {})
    # @param [Hash] params ({})
    def get_associated_role(params = {}, options = {})
      req = build_request(:get_associated_role, params)
      req.send_request(options)
    end

    # Retrieves the connectivity information for a core.
    #
    # @option params [required, String] :thing_name
    #
    # @return [Types::GetConnectivityInfoResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectivityInfoResponse#connectivity_info #connectivity_info} => Array&lt;Types::ConnectivityInfo&gt;
    #   * {Types::GetConnectivityInfoResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connectivity_info({
    #     thing_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connectivity_info #=> Array
    #   resp.connectivity_info[0].host_address #=> String
    #   resp.connectivity_info[0].id #=> String
    #   resp.connectivity_info[0].metadata #=> String
    #   resp.connectivity_info[0].port_number #=> Integer
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectivityInfo AWS API Documentation
    #
    # @overload get_connectivity_info(params = {})
    # @param [Hash] params ({})
    def get_connectivity_info(params = {}, options = {})
      req = build_request(:get_connectivity_info, params)
      req.send_request(options)
    end

    # Retrieves information about a core definition version.
    #
    # @option params [required, String] :core_definition_id
    #
    # @return [Types::GetCoreDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreDefinitionResponse#arn #arn} => String
    #   * {Types::GetCoreDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetCoreDefinitionResponse#id #id} => String
    #   * {Types::GetCoreDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetCoreDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetCoreDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetCoreDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_definition({
    #     core_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinition AWS API Documentation
    #
    # @overload get_core_definition(params = {})
    # @param [Hash] params ({})
    def get_core_definition(params = {}, options = {})
      req = build_request(:get_core_definition, params)
      req.send_request(options)
    end

    # Retrieves information about a core definition version.
    #
    # @option params [required, String] :core_definition_id
    #
    # @option params [required, String] :core_definition_version_id
    #
    # @return [Types::GetCoreDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreDefinitionVersionResponse#arn #arn} => String
    #   * {Types::GetCoreDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetCoreDefinitionVersionResponse#definition #definition} => Types::CoreDefinitionVersion
    #   * {Types::GetCoreDefinitionVersionResponse#id #id} => String
    #   * {Types::GetCoreDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_definition_version({
    #     core_definition_id: "__string", # required
    #     core_definition_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.cores #=> Array
    #   resp.definition.cores[0].certificate_arn #=> String
    #   resp.definition.cores[0].id #=> String
    #   resp.definition.cores[0].sync_shadow #=> Boolean
    #   resp.definition.cores[0].thing_arn #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionVersion AWS API Documentation
    #
    # @overload get_core_definition_version(params = {})
    # @param [Hash] params ({})
    def get_core_definition_version(params = {}, options = {})
      req = build_request(:get_core_definition_version, params)
      req.send_request(options)
    end

    # Returns the status of a deployment.
    #
    # @option params [required, String] :deployment_id
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::GetDeploymentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentStatusResponse#deployment_status #deployment_status} => String
    #   * {Types::GetDeploymentStatusResponse#deployment_type #deployment_type} => String
    #   * {Types::GetDeploymentStatusResponse#error_details #error_details} => Array&lt;Types::ErrorDetail&gt;
    #   * {Types::GetDeploymentStatusResponse#error_message #error_message} => String
    #   * {Types::GetDeploymentStatusResponse#updated_at #updated_at} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_status({
    #     deployment_id: "__string", # required
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_status #=> String
    #   resp.deployment_type #=> String, one of "NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"
    #   resp.error_details #=> Array
    #   resp.error_details[0].detailed_error_code #=> String
    #   resp.error_details[0].detailed_error_message #=> String
    #   resp.error_message #=> String
    #   resp.updated_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeploymentStatus AWS API Documentation
    #
    # @overload get_deployment_status(params = {})
    # @param [Hash] params ({})
    def get_deployment_status(params = {}, options = {})
      req = build_request(:get_deployment_status, params)
      req.send_request(options)
    end

    # Retrieves information about a device definition.
    #
    # @option params [required, String] :device_definition_id
    #
    # @return [Types::GetDeviceDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceDefinitionResponse#arn #arn} => String
    #   * {Types::GetDeviceDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetDeviceDefinitionResponse#id #id} => String
    #   * {Types::GetDeviceDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetDeviceDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetDeviceDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetDeviceDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_definition({
    #     device_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinition AWS API Documentation
    #
    # @overload get_device_definition(params = {})
    # @param [Hash] params ({})
    def get_device_definition(params = {}, options = {})
      req = build_request(:get_device_definition, params)
      req.send_request(options)
    end

    # Retrieves information about a device definition version.
    #
    # @option params [required, String] :device_definition_id
    #
    # @option params [required, String] :device_definition_version_id
    #
    # @return [Types::GetDeviceDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceDefinitionVersionResponse#arn #arn} => String
    #   * {Types::GetDeviceDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetDeviceDefinitionVersionResponse#definition #definition} => Types::DeviceDefinitionVersion
    #   * {Types::GetDeviceDefinitionVersionResponse#id #id} => String
    #   * {Types::GetDeviceDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_definition_version({
    #     device_definition_id: "__string", # required
    #     device_definition_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.devices #=> Array
    #   resp.definition.devices[0].certificate_arn #=> String
    #   resp.definition.devices[0].id #=> String
    #   resp.definition.devices[0].sync_shadow #=> Boolean
    #   resp.definition.devices[0].thing_arn #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionVersion AWS API Documentation
    #
    # @overload get_device_definition_version(params = {})
    # @param [Hash] params ({})
    def get_device_definition_version(params = {}, options = {})
      req = build_request(:get_device_definition_version, params)
      req.send_request(options)
    end

    # Retrieves information about a Lambda function definition, including
    # its creation time and latest version.
    #
    # @option params [required, String] :function_definition_id
    #
    # @return [Types::GetFunctionDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionDefinitionResponse#arn #arn} => String
    #   * {Types::GetFunctionDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetFunctionDefinitionResponse#id #id} => String
    #   * {Types::GetFunctionDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetFunctionDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetFunctionDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetFunctionDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_definition({
    #     function_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinition AWS API Documentation
    #
    # @overload get_function_definition(params = {})
    # @param [Hash] params ({})
    def get_function_definition(params = {}, options = {})
      req = build_request(:get_function_definition, params)
      req.send_request(options)
    end

    # Retrieves information about a Lambda function definition version,
    # including which Lambda functions are included in the version and their
    # configurations.
    #
    # @option params [required, String] :function_definition_id
    #
    # @option params [required, String] :function_definition_version_id
    #
    # @return [Types::GetFunctionDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionDefinitionVersionResponse#arn #arn} => String
    #   * {Types::GetFunctionDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetFunctionDefinitionVersionResponse#definition #definition} => Types::FunctionDefinitionVersion
    #   * {Types::GetFunctionDefinitionVersionResponse#id #id} => String
    #   * {Types::GetFunctionDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_definition_version({
    #     function_definition_id: "__string", # required
    #     function_definition_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.functions #=> Array
    #   resp.definition.functions[0].function_arn #=> String
    #   resp.definition.functions[0].function_configuration.encoding_type #=> String, one of "binary", "json"
    #   resp.definition.functions[0].function_configuration.environment.access_sysfs #=> Boolean
    #   resp.definition.functions[0].function_configuration.environment.resource_access_policies #=> Array
    #   resp.definition.functions[0].function_configuration.environment.resource_access_policies[0].permission #=> String, one of "ro", "rw"
    #   resp.definition.functions[0].function_configuration.environment.resource_access_policies[0].resource_id #=> String
    #   resp.definition.functions[0].function_configuration.environment.variables #=> Hash
    #   resp.definition.functions[0].function_configuration.environment.variables["__string"] #=> String
    #   resp.definition.functions[0].function_configuration.exec_args #=> String
    #   resp.definition.functions[0].function_configuration.executable #=> String
    #   resp.definition.functions[0].function_configuration.memory_size #=> Integer
    #   resp.definition.functions[0].function_configuration.pinned #=> Boolean
    #   resp.definition.functions[0].function_configuration.timeout #=> Integer
    #   resp.definition.functions[0].id #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionVersion AWS API Documentation
    #
    # @overload get_function_definition_version(params = {})
    # @param [Hash] params ({})
    def get_function_definition_version(params = {}, options = {})
      req = build_request(:get_function_definition_version, params)
      req.send_request(options)
    end

    # Retrieves information about a group.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::GetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResponse#arn #arn} => String
    #   * {Types::GetGroupResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetGroupResponse#id #id} => String
    #   * {Types::GetGroupResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetGroupResponse#latest_version #latest_version} => String
    #   * {Types::GetGroupResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetGroupResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Retreives the CA associated with a group. Returns the public key of
    # the CA.
    #
    # @option params [required, String] :certificate_authority_id
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::GetGroupCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupCertificateAuthorityResponse#group_certificate_authority_arn #group_certificate_authority_arn} => String
    #   * {Types::GetGroupCertificateAuthorityResponse#group_certificate_authority_id #group_certificate_authority_id} => String
    #   * {Types::GetGroupCertificateAuthorityResponse#pem_encoded_certificate #pem_encoded_certificate} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_certificate_authority({
    #     certificate_authority_id: "__string", # required
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_certificate_authority_arn #=> String
    #   resp.group_certificate_authority_id #=> String
    #   resp.pem_encoded_certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateAuthority AWS API Documentation
    #
    # @overload get_group_certificate_authority(params = {})
    # @param [Hash] params ({})
    def get_group_certificate_authority(params = {}, options = {})
      req = build_request(:get_group_certificate_authority, params)
      req.send_request(options)
    end

    # Retrieves the current configuration for the CA used by the group.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::GetGroupCertificateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupCertificateConfigurationResponse#certificate_authority_expiry_in_milliseconds #certificate_authority_expiry_in_milliseconds} => String
    #   * {Types::GetGroupCertificateConfigurationResponse#certificate_expiry_in_milliseconds #certificate_expiry_in_milliseconds} => String
    #   * {Types::GetGroupCertificateConfigurationResponse#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_certificate_configuration({
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authority_expiry_in_milliseconds #=> String
    #   resp.certificate_expiry_in_milliseconds #=> String
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateConfiguration AWS API Documentation
    #
    # @overload get_group_certificate_configuration(params = {})
    # @param [Hash] params ({})
    def get_group_certificate_configuration(params = {}, options = {})
      req = build_request(:get_group_certificate_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about a group version.
    #
    # @option params [required, String] :group_id
    #
    # @option params [required, String] :group_version_id
    #
    # @return [Types::GetGroupVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupVersionResponse#arn #arn} => String
    #   * {Types::GetGroupVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetGroupVersionResponse#definition #definition} => Types::GroupVersion
    #   * {Types::GetGroupVersionResponse#id #id} => String
    #   * {Types::GetGroupVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_version({
    #     group_id: "__string", # required
    #     group_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.core_definition_version_arn #=> String
    #   resp.definition.device_definition_version_arn #=> String
    #   resp.definition.function_definition_version_arn #=> String
    #   resp.definition.logger_definition_version_arn #=> String
    #   resp.definition.resource_definition_version_arn #=> String
    #   resp.definition.subscription_definition_version_arn #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupVersion AWS API Documentation
    #
    # @overload get_group_version(params = {})
    # @param [Hash] params ({})
    def get_group_version(params = {}, options = {})
      req = build_request(:get_group_version, params)
      req.send_request(options)
    end

    # Retrieves information about a logger definition.
    #
    # @option params [required, String] :logger_definition_id
    #
    # @return [Types::GetLoggerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggerDefinitionResponse#arn #arn} => String
    #   * {Types::GetLoggerDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetLoggerDefinitionResponse#id #id} => String
    #   * {Types::GetLoggerDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetLoggerDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetLoggerDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetLoggerDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logger_definition({
    #     logger_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinition AWS API Documentation
    #
    # @overload get_logger_definition(params = {})
    # @param [Hash] params ({})
    def get_logger_definition(params = {}, options = {})
      req = build_request(:get_logger_definition, params)
      req.send_request(options)
    end

    # Retrieves information about a logger definition version.
    #
    # @option params [required, String] :logger_definition_id
    #
    # @option params [required, String] :logger_definition_version_id
    #
    # @return [Types::GetLoggerDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggerDefinitionVersionResponse#arn #arn} => String
    #   * {Types::GetLoggerDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetLoggerDefinitionVersionResponse#definition #definition} => Types::LoggerDefinitionVersion
    #   * {Types::GetLoggerDefinitionVersionResponse#id #id} => String
    #   * {Types::GetLoggerDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logger_definition_version({
    #     logger_definition_id: "__string", # required
    #     logger_definition_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.loggers #=> Array
    #   resp.definition.loggers[0].component #=> String, one of "GreengrassSystem", "Lambda"
    #   resp.definition.loggers[0].id #=> String
    #   resp.definition.loggers[0].level #=> String, one of "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
    #   resp.definition.loggers[0].space #=> Integer
    #   resp.definition.loggers[0].type #=> String, one of "FileSystem", "AWSCloudWatch"
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionVersion AWS API Documentation
    #
    # @overload get_logger_definition_version(params = {})
    # @param [Hash] params ({})
    def get_logger_definition_version(params = {}, options = {})
      req = build_request(:get_logger_definition_version, params)
      req.send_request(options)
    end

    # Retrieves information about a resource definition, including its
    # creation time and latest version.
    #
    # @option params [required, String] :resource_definition_id
    #
    # @return [Types::GetResourceDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceDefinitionResponse#arn #arn} => String
    #   * {Types::GetResourceDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetResourceDefinitionResponse#id #id} => String
    #   * {Types::GetResourceDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetResourceDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetResourceDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetResourceDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_definition({
    #     resource_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinition AWS API Documentation
    #
    # @overload get_resource_definition(params = {})
    # @param [Hash] params ({})
    def get_resource_definition(params = {}, options = {})
      req = build_request(:get_resource_definition, params)
      req.send_request(options)
    end

    # Retrieves information about a resource definition version, including
    # which resources are included in the version.
    #
    # @option params [required, String] :resource_definition_id
    #
    # @option params [required, String] :resource_definition_version_id
    #
    # @return [Types::GetResourceDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceDefinitionVersionResponse#arn #arn} => String
    #   * {Types::GetResourceDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetResourceDefinitionVersionResponse#definition #definition} => Types::ResourceDefinitionVersion
    #   * {Types::GetResourceDefinitionVersionResponse#id #id} => String
    #   * {Types::GetResourceDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_definition_version({
    #     resource_definition_id: "__string", # required
    #     resource_definition_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.resources #=> Array
    #   resp.definition.resources[0].id #=> String
    #   resp.definition.resources[0].name #=> String
    #   resp.definition.resources[0].resource_data_container.local_device_resource_data.group_owner_setting.auto_add_group_owner #=> Boolean
    #   resp.definition.resources[0].resource_data_container.local_device_resource_data.group_owner_setting.group_owner #=> String
    #   resp.definition.resources[0].resource_data_container.local_device_resource_data.source_path #=> String
    #   resp.definition.resources[0].resource_data_container.local_volume_resource_data.destination_path #=> String
    #   resp.definition.resources[0].resource_data_container.local_volume_resource_data.group_owner_setting.auto_add_group_owner #=> Boolean
    #   resp.definition.resources[0].resource_data_container.local_volume_resource_data.group_owner_setting.group_owner #=> String
    #   resp.definition.resources[0].resource_data_container.local_volume_resource_data.source_path #=> String
    #   resp.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.destination_path #=> String
    #   resp.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.s3_uri #=> String
    #   resp.definition.resources[0].resource_data_container.sage_maker_machine_learning_model_resource_data.destination_path #=> String
    #   resp.definition.resources[0].resource_data_container.sage_maker_machine_learning_model_resource_data.sage_maker_job_arn #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinitionVersion AWS API Documentation
    #
    # @overload get_resource_definition_version(params = {})
    # @param [Hash] params ({})
    def get_resource_definition_version(params = {}, options = {})
      req = build_request(:get_resource_definition_version, params)
      req.send_request(options)
    end

    # Retrieves the service role that is attached to your account.
    #
    # @return [Types::GetServiceRoleForAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceRoleForAccountResponse#associated_at #associated_at} => String
    #   * {Types::GetServiceRoleForAccountResponse#role_arn #role_arn} => String
    #
    # @example Response structure
    #
    #   resp.associated_at #=> String
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetServiceRoleForAccount AWS API Documentation
    #
    # @overload get_service_role_for_account(params = {})
    # @param [Hash] params ({})
    def get_service_role_for_account(params = {}, options = {})
      req = build_request(:get_service_role_for_account, params)
      req.send_request(options)
    end

    # Retrieves information about a subscription definition.
    #
    # @option params [required, String] :subscription_definition_id
    #
    # @return [Types::GetSubscriptionDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionDefinitionResponse#arn #arn} => String
    #   * {Types::GetSubscriptionDefinitionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetSubscriptionDefinitionResponse#id #id} => String
    #   * {Types::GetSubscriptionDefinitionResponse#last_updated_timestamp #last_updated_timestamp} => String
    #   * {Types::GetSubscriptionDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetSubscriptionDefinitionResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetSubscriptionDefinitionResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_definition({
    #     subscription_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.id #=> String
    #   resp.last_updated_timestamp #=> String
    #   resp.latest_version #=> String
    #   resp.latest_version_arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinition AWS API Documentation
    #
    # @overload get_subscription_definition(params = {})
    # @param [Hash] params ({})
    def get_subscription_definition(params = {}, options = {})
      req = build_request(:get_subscription_definition, params)
      req.send_request(options)
    end

    # Retrieves information about a subscription definition version.
    #
    # @option params [required, String] :subscription_definition_id
    #
    # @option params [required, String] :subscription_definition_version_id
    #
    # @return [Types::GetSubscriptionDefinitionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionDefinitionVersionResponse#arn #arn} => String
    #   * {Types::GetSubscriptionDefinitionVersionResponse#creation_timestamp #creation_timestamp} => String
    #   * {Types::GetSubscriptionDefinitionVersionResponse#definition #definition} => Types::SubscriptionDefinitionVersion
    #   * {Types::GetSubscriptionDefinitionVersionResponse#id #id} => String
    #   * {Types::GetSubscriptionDefinitionVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_definition_version({
    #     subscription_definition_id: "__string", # required
    #     subscription_definition_version_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_timestamp #=> String
    #   resp.definition.subscriptions #=> Array
    #   resp.definition.subscriptions[0].id #=> String
    #   resp.definition.subscriptions[0].source #=> String
    #   resp.definition.subscriptions[0].subject #=> String
    #   resp.definition.subscriptions[0].target #=> String
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionVersion AWS API Documentation
    #
    # @overload get_subscription_definition_version(params = {})
    # @param [Hash] params ({})
    def get_subscription_definition_version(params = {}, options = {})
      req = build_request(:get_subscription_definition_version, params)
      req.send_request(options)
    end

    # Lists the versions of a core definition.
    #
    # @option params [required, String] :core_definition_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListCoreDefinitionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoreDefinitionVersionsResponse#next_token #next_token} => String
    #   * {Types::ListCoreDefinitionVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_definition_versions({
    #     core_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitionVersions AWS API Documentation
    #
    # @overload list_core_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_core_definition_versions(params = {}, options = {})
      req = build_request(:list_core_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of core definitions.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListCoreDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoreDefinitionsResponse#definitions #definitions} => Array&lt;Types::DefinitionInformation&gt;
    #   * {Types::ListCoreDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_definitions({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.definitions #=> Array
    #   resp.definitions[0].arn #=> String
    #   resp.definitions[0].creation_timestamp #=> String
    #   resp.definitions[0].id #=> String
    #   resp.definitions[0].last_updated_timestamp #=> String
    #   resp.definitions[0].latest_version #=> String
    #   resp.definitions[0].latest_version_arn #=> String
    #   resp.definitions[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitions AWS API Documentation
    #
    # @overload list_core_definitions(params = {})
    # @param [Hash] params ({})
    def list_core_definitions(params = {}, options = {})
      req = build_request(:list_core_definitions, params)
      req.send_request(options)
    end

    # Returns a history of deployments for the group.
    #
    # @option params [required, String] :group_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentsResponse#deployments #deployments} => Array&lt;Types::Deployment&gt;
    #   * {Types::ListDeploymentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     group_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments #=> Array
    #   resp.deployments[0].created_at #=> String
    #   resp.deployments[0].deployment_arn #=> String
    #   resp.deployments[0].deployment_id #=> String
    #   resp.deployments[0].deployment_type #=> String, one of "NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"
    #   resp.deployments[0].group_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # Lists the versions of a device definition.
    #
    # @option params [required, String] :device_definition_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListDeviceDefinitionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceDefinitionVersionsResponse#next_token #next_token} => String
    #   * {Types::ListDeviceDefinitionVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_definition_versions({
    #     device_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitionVersions AWS API Documentation
    #
    # @overload list_device_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_device_definition_versions(params = {}, options = {})
      req = build_request(:list_device_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of device definitions.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListDeviceDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceDefinitionsResponse#definitions #definitions} => Array&lt;Types::DefinitionInformation&gt;
    #   * {Types::ListDeviceDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_definitions({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.definitions #=> Array
    #   resp.definitions[0].arn #=> String
    #   resp.definitions[0].creation_timestamp #=> String
    #   resp.definitions[0].id #=> String
    #   resp.definitions[0].last_updated_timestamp #=> String
    #   resp.definitions[0].latest_version #=> String
    #   resp.definitions[0].latest_version_arn #=> String
    #   resp.definitions[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitions AWS API Documentation
    #
    # @overload list_device_definitions(params = {})
    # @param [Hash] params ({})
    def list_device_definitions(params = {}, options = {})
      req = build_request(:list_device_definitions, params)
      req.send_request(options)
    end

    # Lists the versions of a Lambda function definition.
    #
    # @option params [required, String] :function_definition_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListFunctionDefinitionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionDefinitionVersionsResponse#next_token #next_token} => String
    #   * {Types::ListFunctionDefinitionVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_definition_versions({
    #     function_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitionVersions AWS API Documentation
    #
    # @overload list_function_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_function_definition_versions(params = {}, options = {})
      req = build_request(:list_function_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of Lambda function definitions.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListFunctionDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionDefinitionsResponse#definitions #definitions} => Array&lt;Types::DefinitionInformation&gt;
    #   * {Types::ListFunctionDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_definitions({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.definitions #=> Array
    #   resp.definitions[0].arn #=> String
    #   resp.definitions[0].creation_timestamp #=> String
    #   resp.definitions[0].id #=> String
    #   resp.definitions[0].last_updated_timestamp #=> String
    #   resp.definitions[0].latest_version #=> String
    #   resp.definitions[0].latest_version_arn #=> String
    #   resp.definitions[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitions AWS API Documentation
    #
    # @overload list_function_definitions(params = {})
    # @param [Hash] params ({})
    def list_function_definitions(params = {}, options = {})
      req = build_request(:list_function_definitions, params)
      req.send_request(options)
    end

    # Retrieves the current CAs for a group.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::ListGroupCertificateAuthoritiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupCertificateAuthoritiesResponse#group_certificate_authorities #group_certificate_authorities} => Array&lt;Types::GroupCertificateAuthorityProperties&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_certificate_authorities({
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_certificate_authorities #=> Array
    #   resp.group_certificate_authorities[0].group_certificate_authority_arn #=> String
    #   resp.group_certificate_authorities[0].group_certificate_authority_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupCertificateAuthorities AWS API Documentation
    #
    # @overload list_group_certificate_authorities(params = {})
    # @param [Hash] params ({})
    def list_group_certificate_authorities(params = {}, options = {})
      req = build_request(:list_group_certificate_authorities, params)
      req.send_request(options)
    end

    # Lists the versions of a group.
    #
    # @option params [required, String] :group_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListGroupVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupVersionsResponse#next_token #next_token} => String
    #   * {Types::ListGroupVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_versions({
    #     group_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupVersions AWS API Documentation
    #
    # @overload list_group_versions(params = {})
    # @param [Hash] params ({})
    def list_group_versions(params = {}, options = {})
      req = build_request(:list_group_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of groups.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::GroupInformation&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].arn #=> String
    #   resp.groups[0].creation_timestamp #=> String
    #   resp.groups[0].id #=> String
    #   resp.groups[0].last_updated_timestamp #=> String
    #   resp.groups[0].latest_version #=> String
    #   resp.groups[0].latest_version_arn #=> String
    #   resp.groups[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the versions of a logger definition.
    #
    # @option params [required, String] :logger_definition_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListLoggerDefinitionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoggerDefinitionVersionsResponse#next_token #next_token} => String
    #   * {Types::ListLoggerDefinitionVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logger_definition_versions({
    #     logger_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitionVersions AWS API Documentation
    #
    # @overload list_logger_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_logger_definition_versions(params = {}, options = {})
      req = build_request(:list_logger_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of logger definitions.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListLoggerDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoggerDefinitionsResponse#definitions #definitions} => Array&lt;Types::DefinitionInformation&gt;
    #   * {Types::ListLoggerDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logger_definitions({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.definitions #=> Array
    #   resp.definitions[0].arn #=> String
    #   resp.definitions[0].creation_timestamp #=> String
    #   resp.definitions[0].id #=> String
    #   resp.definitions[0].last_updated_timestamp #=> String
    #   resp.definitions[0].latest_version #=> String
    #   resp.definitions[0].latest_version_arn #=> String
    #   resp.definitions[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitions AWS API Documentation
    #
    # @overload list_logger_definitions(params = {})
    # @param [Hash] params ({})
    def list_logger_definitions(params = {}, options = {})
      req = build_request(:list_logger_definitions, params)
      req.send_request(options)
    end

    # Lists the versions of a resource definition.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :resource_definition_id
    #
    # @return [Types::ListResourceDefinitionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceDefinitionVersionsResponse#next_token #next_token} => String
    #   * {Types::ListResourceDefinitionVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_definition_versions({
    #     max_results: "__string",
    #     next_token: "__string",
    #     resource_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitionVersions AWS API Documentation
    #
    # @overload list_resource_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_resource_definition_versions(params = {}, options = {})
      req = build_request(:list_resource_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of resource definitions.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListResourceDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceDefinitionsResponse#definitions #definitions} => Array&lt;Types::DefinitionInformation&gt;
    #   * {Types::ListResourceDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_definitions({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.definitions #=> Array
    #   resp.definitions[0].arn #=> String
    #   resp.definitions[0].creation_timestamp #=> String
    #   resp.definitions[0].id #=> String
    #   resp.definitions[0].last_updated_timestamp #=> String
    #   resp.definitions[0].latest_version #=> String
    #   resp.definitions[0].latest_version_arn #=> String
    #   resp.definitions[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitions AWS API Documentation
    #
    # @overload list_resource_definitions(params = {})
    # @param [Hash] params ({})
    def list_resource_definitions(params = {}, options = {})
      req = build_request(:list_resource_definitions, params)
      req.send_request(options)
    end

    # Lists the versions of a subscription definition.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :subscription_definition_id
    #
    # @return [Types::ListSubscriptionDefinitionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionDefinitionVersionsResponse#next_token #next_token} => String
    #   * {Types::ListSubscriptionDefinitionVersionsResponse#versions #versions} => Array&lt;Types::VersionInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_definition_versions({
    #     max_results: "__string",
    #     next_token: "__string",
    #     subscription_definition_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].arn #=> String
    #   resp.versions[0].creation_timestamp #=> String
    #   resp.versions[0].id #=> String
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitionVersions AWS API Documentation
    #
    # @overload list_subscription_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_subscription_definition_versions(params = {}, options = {})
      req = build_request(:list_subscription_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of subscription definitions.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListSubscriptionDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionDefinitionsResponse#definitions #definitions} => Array&lt;Types::DefinitionInformation&gt;
    #   * {Types::ListSubscriptionDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_definitions({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.definitions #=> Array
    #   resp.definitions[0].arn #=> String
    #   resp.definitions[0].creation_timestamp #=> String
    #   resp.definitions[0].id #=> String
    #   resp.definitions[0].last_updated_timestamp #=> String
    #   resp.definitions[0].latest_version #=> String
    #   resp.definitions[0].latest_version_arn #=> String
    #   resp.definitions[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitions AWS API Documentation
    #
    # @overload list_subscription_definitions(params = {})
    # @param [Hash] params ({})
    def list_subscription_definitions(params = {}, options = {})
      req = build_request(:list_subscription_definitions, params)
      req.send_request(options)
    end

    # Resets a group's deployments.
    #
    # @option params [String] :amzn_client_token
    #
    # @option params [Boolean] :force
    #   If true, performs a best-effort only core reset.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::ResetDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetDeploymentsResponse#deployment_arn #deployment_arn} => String
    #   * {Types::ResetDeploymentsResponse#deployment_id #deployment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_deployments({
    #     amzn_client_token: "__string",
    #     force: false,
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_arn #=> String
    #   resp.deployment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResetDeployments AWS API Documentation
    #
    # @overload reset_deployments(params = {})
    # @param [Hash] params ({})
    def reset_deployments(params = {}, options = {})
      req = build_request(:reset_deployments, params)
      req.send_request(options)
    end

    # Updates the connectivity information for the core. Any devices that
    # belong to the group which has this core will receive this information
    # in order to find the location of the core and connect to it.
    #
    # @option params [Array<Types::ConnectivityInfo>] :connectivity_info
    #   A list of connectivity info.
    #
    # @option params [required, String] :thing_name
    #
    # @return [Types::UpdateConnectivityInfoResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectivityInfoResponse#message #message} => String
    #   * {Types::UpdateConnectivityInfoResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connectivity_info({
    #     connectivity_info: [
    #       {
    #         host_address: "__string",
    #         id: "__string",
    #         metadata: "__string",
    #         port_number: 1,
    #       },
    #     ],
    #     thing_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectivityInfo AWS API Documentation
    #
    # @overload update_connectivity_info(params = {})
    # @param [Hash] params ({})
    def update_connectivity_info(params = {}, options = {})
      req = build_request(:update_connectivity_info, params)
      req.send_request(options)
    end

    # Updates a core definition.
    #
    # @option params [required, String] :core_definition_id
    #
    # @option params [String] :name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_core_definition({
    #     core_definition_id: "__string", # required
    #     name: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateCoreDefinition AWS API Documentation
    #
    # @overload update_core_definition(params = {})
    # @param [Hash] params ({})
    def update_core_definition(params = {}, options = {})
      req = build_request(:update_core_definition, params)
      req.send_request(options)
    end

    # Updates a device definition.
    #
    # @option params [required, String] :device_definition_id
    #
    # @option params [String] :name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_definition({
    #     device_definition_id: "__string", # required
    #     name: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateDeviceDefinition AWS API Documentation
    #
    # @overload update_device_definition(params = {})
    # @param [Hash] params ({})
    def update_device_definition(params = {}, options = {})
      req = build_request(:update_device_definition, params)
      req.send_request(options)
    end

    # Updates a Lambda function definition.
    #
    # @option params [required, String] :function_definition_id
    #
    # @option params [String] :name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_definition({
    #     function_definition_id: "__string", # required
    #     name: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateFunctionDefinition AWS API Documentation
    #
    # @overload update_function_definition(params = {})
    # @param [Hash] params ({})
    def update_function_definition(params = {}, options = {})
      req = build_request(:update_function_definition, params)
      req.send_request(options)
    end

    # Updates a group.
    #
    # @option params [required, String] :group_id
    #
    # @option params [String] :name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_id: "__string", # required
    #     name: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates the Certificate expiry time for a group.
    #
    # @option params [String] :certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in
    #   milliseconds.
    #
    # @option params [required, String] :group_id
    #
    # @return [Types::UpdateGroupCertificateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupCertificateConfigurationResponse#certificate_authority_expiry_in_milliseconds #certificate_authority_expiry_in_milliseconds} => String
    #   * {Types::UpdateGroupCertificateConfigurationResponse#certificate_expiry_in_milliseconds #certificate_expiry_in_milliseconds} => String
    #   * {Types::UpdateGroupCertificateConfigurationResponse#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_certificate_configuration({
    #     certificate_expiry_in_milliseconds: "__string",
    #     group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authority_expiry_in_milliseconds #=> String
    #   resp.certificate_expiry_in_milliseconds #=> String
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroupCertificateConfiguration AWS API Documentation
    #
    # @overload update_group_certificate_configuration(params = {})
    # @param [Hash] params ({})
    def update_group_certificate_configuration(params = {}, options = {})
      req = build_request(:update_group_certificate_configuration, params)
      req.send_request(options)
    end

    # Updates a logger definition.
    #
    # @option params [required, String] :logger_definition_id
    #
    # @option params [String] :name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logger_definition({
    #     logger_definition_id: "__string", # required
    #     name: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateLoggerDefinition AWS API Documentation
    #
    # @overload update_logger_definition(params = {})
    # @param [Hash] params ({})
    def update_logger_definition(params = {}, options = {})
      req = build_request(:update_logger_definition, params)
      req.send_request(options)
    end

    # Updates a resource definition.
    #
    # @option params [String] :name
    #
    # @option params [required, String] :resource_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_definition({
    #     name: "__string",
    #     resource_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateResourceDefinition AWS API Documentation
    #
    # @overload update_resource_definition(params = {})
    # @param [Hash] params ({})
    def update_resource_definition(params = {}, options = {})
      req = build_request(:update_resource_definition, params)
      req.send_request(options)
    end

    # Updates a subscription definition.
    #
    # @option params [String] :name
    #
    # @option params [required, String] :subscription_definition_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_definition({
    #     name: "__string",
    #     subscription_definition_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateSubscriptionDefinition AWS API Documentation
    #
    # @overload update_subscription_definition(params = {})
    # @param [Hash] params ({})
    def update_subscription_definition(params = {}, options = {})
      req = build_request(:update_subscription_definition, params)
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
      context[:gem_name] = 'aws-sdk-greengrass'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
