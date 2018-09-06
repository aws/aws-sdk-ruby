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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloud9)

module Aws::Cloud9
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cloud9

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

    # Creates an AWS Cloud9 development environment, launches an Amazon
    # Elastic Compute Cloud (Amazon EC2) instance, and then connects from
    # the instance to the environment.
    #
    # @option params [required, String] :name
    #   The name of the environment to create.
    #
    #   This name is visible to other AWS IAM users in the same AWS account.
    #
    # @option params [String] :description
    #   The description of the environment to create.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive string that helps AWS Cloud9 to ensure this
    #   operation completes no more than one time.
    #
    #   For more information, see [Client Tokens][1] in the *Amazon EC2 API
    #   Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :instance_type
    #   The type of instance to connect to the environment (for example,
    #   `t2.micro`).
    #
    # @option params [String] :subnet_id
    #   The ID of the subnet in Amazon VPC that AWS Cloud9 will use to
    #   communicate with the Amazon EC2 instance.
    #
    # @option params [Integer] :automatic_stop_time_minutes
    #   The number of minutes until the running instance is shut down after
    #   the environment has last been used.
    #
    # @option params [String] :owner_arn
    #   The Amazon Resource Name (ARN) of the environment owner. This ARN can
    #   be the ARN of any AWS IAM principal. If this value is not specified,
    #   the ARN defaults to this environment's creator.
    #
    # @return [Types::CreateEnvironmentEC2Result] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentEC2Result#environment_id #environment_id} => String
    #
    #
    # @example Example: CreateEnvironmentEC2
    #
    #   resp = client.create_environment_ec2({
    #     name: "my-demo-environment", 
    #     automatic_stop_time_minutes: 60, 
    #     description: "This is my demonstration environment.", 
    #     instance_type: "t2.micro", 
    #     owner_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #     subnet_id: "subnet-1fab8aEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_ec2({
    #     name: "EnvironmentName", # required
    #     description: "EnvironmentDescription",
    #     client_request_token: "ClientRequestToken",
    #     instance_type: "InstanceType", # required
    #     subnet_id: "SubnetId",
    #     automatic_stop_time_minutes: 1,
    #     owner_arn: "UserArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentEC2 AWS API Documentation
    #
    # @overload create_environment_ec2(params = {})
    # @param [Hash] params ({})
    def create_environment_ec2(params = {}, options = {})
      req = build_request(:create_environment_ec2, params)
      req.send_request(options)
    end

    # Adds an environment member to an AWS Cloud9 development environment.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment that contains the environment member you
    #   want to add.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the environment member you want to
    #   add.
    #
    # @option params [required, String] :permissions
    #   The type of environment member permissions you want to associate with
    #   this environment member. Available values include:
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #
    # @return [Types::CreateEnvironmentMembershipResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentMembershipResult#membership #membership} => Types::EnvironmentMember
    #
    #
    # @example Example: CreateEnvironmentMembership
    #
    #   resp = client.create_environment_membership({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     permissions: "read-write", 
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     membership: {
    #       environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #       permissions: "read-write", 
    #       user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #       user_id: "AIDAJ3BA6O2FMJWCWXHEX", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_membership({
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #     permissions: "read-write", # required, accepts read-write, read-only
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.permissions #=> String, one of "owner", "read-write", "read-only"
    #   resp.membership.user_id #=> String
    #   resp.membership.user_arn #=> String
    #   resp.membership.environment_id #=> String
    #   resp.membership.last_access #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentMembership AWS API Documentation
    #
    # @overload create_environment_membership(params = {})
    # @param [Hash] params ({})
    def create_environment_membership(params = {}, options = {})
      req = build_request(:create_environment_membership, params)
      req.send_request(options)
    end

    # Deletes an AWS Cloud9 development environment. If an Amazon EC2
    # instance is connected to the environment, also terminates the
    # instance.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteEnvironment
    #
    #   resp = client.delete_environment({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes an environment member from an AWS Cloud9 development
    # environment.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to delete the environment member from.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the environment member to delete
    #   from the environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteEnvironmentMembership
    #
    #   resp = client.delete_environment_membership({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_membership({
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentMembership AWS API Documentation
    #
    # @overload delete_environment_membership(params = {})
    # @param [Hash] params ({})
    def delete_environment_membership(params = {}, options = {})
      req = build_request(:delete_environment_membership, params)
      req.send_request(options)
    end

    # Gets information about environment members for an AWS Cloud9
    # development environment.
    #
    # @option params [String] :user_arn
    #   The Amazon Resource Name (ARN) of an individual environment member to
    #   get information about. If no value is specified, information about all
    #   environment members are returned.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to get environment member information about.
    #
    # @option params [Array<String>] :permissions
    #   The type of environment member permissions to get information about.
    #   Available values include:
    #
    #   * `owner`\: Owns the environment.
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #
    #   If no value is specified, information about all environment members
    #   are returned.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 25 items in the list,
    #   only the first 25 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment members to get information about.
    #
    # @return [Types::DescribeEnvironmentMembershipsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentMembershipsResult#memberships #memberships} => Array&lt;Types::EnvironmentMember&gt;
    #   * {Types::DescribeEnvironmentMembershipsResult#next_token #next_token} => String
    #
    #
    # @example Example: DescribeEnvironmentMemberships1
    #
    #   # The following example gets information about all of the environment members for the specified AWS Cloud9 development
    #   # environment.
    #
    #   resp = client.describe_environment_memberships({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     memberships: [
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         permissions: "read-write", 
    #         user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #         user_id: "AIDAJ3BA6O2FMJWCWXHEX", 
    #       }, 
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeEnvironmentMemberships2
    #
    #   # The following example gets information about the owner of the specified AWS Cloud9 development environment.
    #
    #   resp = client.describe_environment_memberships({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     permissions: [
    #       "owner", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     memberships: [
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeEnvironmentMemberships3
    #
    #   # The following example gets AWS Cloud9 development environment membership information for the specified user.
    #
    #   resp = client.describe_environment_memberships({
    #     user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     memberships: [
    #       {
    #         environment_id: "10a75714bd494714929e7f5ec4125aEX", 
    #         last_access: Time.parse("2018-01-19T11:06:13Z"), 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #       {
    #         environment_id: "12bfc3cd537f41cb9776f8af5525c9EX", 
    #         last_access: Time.parse("2018-01-19T11:39:19Z"), 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_memberships({
    #     user_arn: "UserArn",
    #     environment_id: "EnvironmentId",
    #     permissions: ["owner"], # accepts owner, read-write, read-only
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.memberships #=> Array
    #   resp.memberships[0].permissions #=> String, one of "owner", "read-write", "read-only"
    #   resp.memberships[0].user_id #=> String
    #   resp.memberships[0].user_arn #=> String
    #   resp.memberships[0].environment_id #=> String
    #   resp.memberships[0].last_access #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentMemberships AWS API Documentation
    #
    # @overload describe_environment_memberships(params = {})
    # @param [Hash] params ({})
    def describe_environment_memberships(params = {}, options = {})
      req = build_request(:describe_environment_memberships, params)
      req.send_request(options)
    end

    # Gets status information for an AWS Cloud9 development environment.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to get status information about.
    #
    # @return [Types::DescribeEnvironmentStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentStatusResult#status #status} => String
    #   * {Types::DescribeEnvironmentStatusResult#message #message} => String
    #
    #
    # @example Example: DescribeEnvironmentStatus
    #
    #   resp = client.describe_environment_status({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "Environment is ready to use", 
    #     status: "ready", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_status({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "error", "creating", "connecting", "ready", "stopping", "stopped", "deleting"
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentStatus AWS API Documentation
    #
    # @overload describe_environment_status(params = {})
    # @param [Hash] params ({})
    def describe_environment_status(params = {}, options = {})
      req = build_request(:describe_environment_status, params)
      req.send_request(options)
    end

    # Gets information about AWS Cloud9 development environments.
    #
    # @option params [required, Array<String>] :environment_ids
    #   The IDs of individual environments to get information about.
    #
    # @return [Types::DescribeEnvironmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentsResult#environments #environments} => Array&lt;Types::Environment&gt;
    #
    #
    # @example Example: DescribeEnvironments
    #
    #   resp = client.describe_environments({
    #     environment_ids: [
    #       "8d9967e2f0624182b74e7690ad69ebEX", 
    #       "349c86d4579e4e7298d500ff57a6b2EX", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environments: [
    #       {
    #         name: "my-demo-environment", 
    #         type: "ec2", 
    #         arn: "arn:aws:cloud9:us-east-2:123456789012:environment:8d9967e2f0624182b74e7690ad69ebEX", 
    #         description: "This is my demonstration environment.", 
    #         id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         owner_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #       }, 
    #       {
    #         name: "another-demo-environment", 
    #         type: "ssh", 
    #         arn: "arn:aws:cloud9:us-east-2:123456789012:environment:349c86d4579e4e7298d500ff57a6b2EX", 
    #         id: "349c86d4579e4e7298d500ff57a6b2EX", 
    #         owner_arn: "arn:aws:sts::123456789012:assumed-role/AnotherDemoUser/AnotherDemoUser", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environments({
    #     environment_ids: ["EnvironmentId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].id #=> String
    #   resp.environments[0].name #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].type #=> String, one of "ssh", "ec2"
    #   resp.environments[0].arn #=> String
    #   resp.environments[0].owner_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironments AWS API Documentation
    #
    # @overload describe_environments(params = {})
    # @param [Hash] params ({})
    def describe_environments(params = {}, options = {})
      req = build_request(:describe_environments, params)
      req.send_request(options)
    end

    # Gets a list of AWS Cloud9 development environment identifiers.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 25 items in the list,
    #   only the first 25 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environments to get identifiers for.
    #
    # @return [Types::ListEnvironmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResult#next_token #next_token} => String
    #   * {Types::ListEnvironmentsResult#environment_ids #environment_ids} => Array&lt;String&gt;
    #
    #
    # @example Example: ListEnvironments
    #
    #   resp = client.list_environments({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment_ids: [
    #       "349c86d4579e4e7298d500ff57a6b2EX", 
    #       "45a3da47af0840f2b0c0824f5ee232EX", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_ids #=> Array
    #   resp.environment_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Changes the settings of an existing AWS Cloud9 development
    # environment.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to change settings.
    #
    # @option params [String] :name
    #   A replacement name for the environment.
    #
    # @option params [String] :description
    #   Any new or replacement description for the environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateEnvironment
    #
    #   resp = client.update_environment({
    #     name: "my-changed-demo-environment", 
    #     description: "This is my changed demonstration environment.", 
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     environment_id: "EnvironmentId", # required
    #     name: "EnvironmentName",
    #     description: "EnvironmentDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Changes the settings of an existing environment member for an AWS
    # Cloud9 development environment.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment for the environment member whose settings
    #   you want to change.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the environment member whose
    #   settings you want to change.
    #
    # @option params [required, String] :permissions
    #   The replacement type of environment member permissions you want to
    #   associate with this environment member. Available values include:
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #
    # @return [Types::UpdateEnvironmentMembershipResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentMembershipResult#membership #membership} => Types::EnvironmentMember
    #
    #
    # @example Example: UpdateEnvironmentMembership
    #
    #   resp = client.update_environment_membership({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     permissions: "read-only", 
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     membership: {
    #       environment_id: "8d9967e2f0624182b74e7690ad69eb31", 
    #       permissions: "read-only", 
    #       user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #       user_id: "AIDAJ3BA6O2FMJWCWXHEX", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_membership({
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #     permissions: "read-write", # required, accepts read-write, read-only
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.permissions #=> String, one of "owner", "read-write", "read-only"
    #   resp.membership.user_id #=> String
    #   resp.membership.user_arn #=> String
    #   resp.membership.environment_id #=> String
    #   resp.membership.last_access #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentMembership AWS API Documentation
    #
    # @overload update_environment_membership(params = {})
    # @param [Hash] params ({})
    def update_environment_membership(params = {}, options = {})
      req = build_request(:update_environment_membership, params)
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
      context[:gem_name] = 'aws-sdk-cloud9'
      context[:gem_version] = '1.4.0'
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
