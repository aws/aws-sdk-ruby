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

Aws::Plugins::GlobalConfiguration.add_identifier(:connect)

module Aws::Connect
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :connect

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

    # Creates a new user account in your Amazon Connect instance.
    #
    # @option params [required, String] :username
    #   The user name in Amazon Connect for the account to create.
    #
    # @option params [String] :password
    #   The password for the user account to create. This is required if you
    #   are using Amazon Connect for identity management. If you are using
    #   SAML for identity management and include this parameter, an
    #   `InvalidRequestException` is returned.
    #
    # @option params [Types::UserIdentityInfo] :identity_info
    #   Information about the user, including email address, first name, and
    #   last name.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   Specifies the phone settings for the user, including
    #   AfterContactWorkTimeLimit, AutoAccept, DeskPhoneNumber, and PhoneType.
    #
    # @option params [String] :directory_user_id
    #   The unique identifier for the user account in the directory service
    #   directory used for identity management. If Amazon Connect is unable to
    #   access the existing directory, you can use the `DirectoryUserId` to
    #   authenticate users. If you include the parameter, it is assumed that
    #   Amazon Connect cannot access the directory. If the parameter is not
    #   included, the UserIdentityInfo is used to authenticate users from your
    #   existing directory.
    #
    #   This parameter is required if you are using an existing directory for
    #   identity management in Amazon Connect when Amazon Connect cannot
    #   access your directory to authenticate users. If you are using SAML for
    #   identity management and include this parameter, an
    #   `InvalidRequestException` is returned.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The unique identifier of the security profile to assign to the user
    #   created.
    #
    # @option params [required, String] :routing_profile_id
    #   The unique identifier for the routing profile to assign to the user
    #   created.
    #
    # @option params [String] :hierarchy_group_id
    #   The unique identifier for the hierarchy group to assign to the user
    #   created.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #   * {Types::CreateUserResponse#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     username: "AgentUsername", # required
    #     password: "Password",
    #     identity_info: {
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #     },
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     directory_user_id: "DirectoryUserId",
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     hierarchy_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes a user account from Amazon Connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [required, String] :user_id
    #   The unique identifier of the user to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Returns a `User` object that contains information about the user
    # account specified by the `UserId`.
    #
    # @option params [required, String] :user_id
    #   Unique identifier for the user account to return.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.arn #=> String
    #   resp.user.username #=> String
    #   resp.user.identity_info.first_name #=> String
    #   resp.user.identity_info.last_name #=> String
    #   resp.user.identity_info.email #=> String
    #   resp.user.phone_config.phone_type #=> String, one of "SOFT_PHONE", "DESK_PHONE"
    #   resp.user.phone_config.auto_accept #=> Boolean
    #   resp.user.phone_config.after_contact_work_time_limit #=> Integer
    #   resp.user.phone_config.desk_phone_number #=> String
    #   resp.user.directory_user_id #=> String
    #   resp.user.security_profile_ids #=> Array
    #   resp.user.security_profile_ids[0] #=> String
    #   resp.user.routing_profile_id #=> String
    #   resp.user.hierarchy_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Returns a `HierarchyGroup` object that includes information about a
    # hierarchy group in your instance.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier for the hierarchy group to return.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Types::DescribeUserHierarchyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyGroupResponse#hierarchy_group #hierarchy_group} => Types::HierarchyGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_group({
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_group.id #=> String
    #   resp.hierarchy_group.arn #=> String
    #   resp.hierarchy_group.name #=> String
    #   resp.hierarchy_group.level_id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroup AWS API Documentation
    #
    # @overload describe_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_group(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Returns a `HiearchyGroupStructure` object, which contains data about
    # the levels in the agent hierarchy.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Types::DescribeUserHierarchyStructureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyStructureResponse#hierarchy_structure #hierarchy_structure} => Types::HierarchyStructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_structure({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_structure.level_one.id #=> String
    #   resp.hierarchy_structure.level_one.arn #=> String
    #   resp.hierarchy_structure.level_one.name #=> String
    #   resp.hierarchy_structure.level_two.id #=> String
    #   resp.hierarchy_structure.level_two.arn #=> String
    #   resp.hierarchy_structure.level_two.name #=> String
    #   resp.hierarchy_structure.level_three.id #=> String
    #   resp.hierarchy_structure.level_three.arn #=> String
    #   resp.hierarchy_structure.level_three.name #=> String
    #   resp.hierarchy_structure.level_four.id #=> String
    #   resp.hierarchy_structure.level_four.arn #=> String
    #   resp.hierarchy_structure.level_four.name #=> String
    #   resp.hierarchy_structure.level_five.id #=> String
    #   resp.hierarchy_structure.level_five.arn #=> String
    #   resp.hierarchy_structure.level_five.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructure AWS API Documentation
    #
    # @overload describe_user_hierarchy_structure(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_structure(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_structure, params)
      req.send_request(options)
    end

    # The `GetCurrentMetricData` operation retrieves current metric data
    # from your Amazon Connect instance.
    #
    # If you are using an IAM account, it must have permission to the
    # `connect:GetCurrentMetricData` action.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [required, Types::Filters] :filters
    #   A `Filters` object that contains a list of queue IDs or queue ARNs, up
    #   to 100, or list of Channels to use to filter the metrics returned in
    #   the response. Metric data is retrieved only for the resources
    #   associated with the queue IDs, ARNs, or Channels included in the
    #   filter. You can include both IDs and ARNs in the same request. To
    #   retrieve metrics for all queues, add the queue ID or ARN for each
    #   queue in your instance. Only VOICE is supported for Channels.
    #
    #   To find the ARN for a queue, open the queue you want to use in the
    #   Amazon Connect Queue editor. The ARN for the queue is displayed in the
    #   address bar as part of the URL. For example, the queue ARN is the set
    #   of characters at the end of the URL, after 'id=' such as
    #   `arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61`.
    #   The queue ID is also included in the URL, and is the string after
    #   'queue/'.
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   grouped by QUEUE, the metrics returned apply to each queue rather than
    #   aggregated for all queues. If you group by CHANNEL, you should include
    #   a Channels filter. The only supported channel is VOICE.
    #
    #   If no `Grouping` is included in the request, a summary of
    #   `CurrentMetrics` is returned.
    #
    # @option params [required, Array<Types::CurrentMetric>] :current_metrics
    #   A list of `CurrentMetric` objects for the metrics to retrieve. Each
    #   `CurrentMetric` includes a name of a metric to retrieve and the unit
    #   to use for it.
    #
    #   The following metrics are available:
    #
    #   AGENTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #   AGENTS\_ONLINE
    #
    #   : Unit: COUNT
    #
    #   AGENTS\_ON\_CALL
    #
    #   : Unit: COUNT
    #
    #   AGENTS\_STAFFED
    #
    #   : Unit: COUNT
    #
    #   AGENTS\_AFTER\_CONTACT\_WORK
    #
    #   : Unit: COUNT
    #
    #   AGENTS\_NON\_PRODUCTIVE
    #
    #   : Unit: COUNT
    #
    #   AGENTS\_ERROR
    #
    #   : Unit: COUNT
    #
    #   CONTACTS\_IN\_QUEUE
    #
    #   : Unit: COUNT
    #
    #   OLDEST\_CONTACT\_AGE
    #
    #   : Unit: SECONDS
    #
    #   CONTACTS\_SCHEDULED
    #
    #   : Unit: COUNT
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the [NextToken]() must use the same
    #   request parameters as the request that generated the token.
    #
    # @option params [Integer] :max_results
    #   `MaxResults` indicates the maximum number of results to return per
    #   page in the response, between 1 and 100.
    #
    # @return [Types::GetCurrentMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetCurrentMetricDataResponse#metric_results #metric_results} => Array&lt;Types::CurrentMetricResult&gt;
    #   * {Types::GetCurrentMetricDataResponse#data_snapshot_time #data_snapshot_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_metric_data({
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL
    #     current_metrics: [ # required
    #       {
    #         name: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE"
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #   resp.data_snapshot_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricData AWS API Documentation
    #
    # @overload get_current_metric_data(params = {})
    # @param [Hash] params ({})
    def get_current_metric_data(params = {}, options = {})
      req = build_request(:get_current_metric_data, params)
      req.send_request(options)
    end

    # Retrieves a token for federation.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Types::GetFederationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFederationTokenResponse#credentials #credentials} => Types::Credentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_federation_token({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_token #=> String
    #   resp.credentials.access_token_expiration #=> Time
    #   resp.credentials.refresh_token #=> String
    #   resp.credentials.refresh_token_expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationToken AWS API Documentation
    #
    # @overload get_federation_token(params = {})
    # @param [Hash] params ({})
    def get_federation_token(params = {}, options = {})
      req = build_request(:get_federation_token, params)
      req.send_request(options)
    end

    # The `GetMetricData` operation retrieves historical metrics data from
    # your Amazon Connect instance.
    #
    # If you are using an IAM account, it must have permission to the
    # `connect:GetMetricData` action.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using a multiple of 5 minutes, such as 10:05,
    #   10:10, 10:15.
    #
    #   `StartTime` cannot be earlier than 24 hours before the time of the
    #   request. Historical metrics are available in Amazon Connect only for
    #   24 hours.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using an interval of 5 minutes, such as 11:00,
    #   11:05, 11:10, and must be later than the `StartTime` timestamp.
    #
    #   The time range between `StartTime` and `EndTime` must be less than 24
    #   hours.
    #
    # @option params [required, Types::Filters] :filters
    #   A `Filters` object that contains a list of queue IDs or queue ARNs, up
    #   to 100, or a list of Channels to use to filter the metrics returned in
    #   the response. Metric data is retrieved only for the resources
    #   associated with the IDs, ARNs, or Channels included in the filter. You
    #   can use both IDs and ARNs together in a request. Only VOICE is
    #   supported for Channel.
    #
    #   To find the ARN for a queue, open the queue you want to use in the
    #   Amazon Connect Queue editor. The ARN for the queue is displayed in the
    #   address bar as part of the URL. For example, the queue ARN is the set
    #   of characters at the end of the URL, after 'id=' such as
    #   `arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61`.
    #   The queue ID is also included in the URL, and is the string after
    #   'queue/'.
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   results are grouped by queueId, the metrics returned are grouped by
    #   queue. The values returned apply to the metrics for each queue rather
    #   than aggregated for all queues.
    #
    #   The current version supports grouping by Queue
    #
    #   If no `Grouping` is included in the request, a summary of
    #   `HistoricalMetrics` for all queues is returned.
    #
    # @option params [required, Array<Types::HistoricalMetric>] :historical_metrics
    #   A list of `HistoricalMetric` objects that contain the metrics to
    #   retrieve with the request.
    #
    #   A `HistoricalMetric` object contains: `HistoricalMetricName`,
    #   `Statistic`, `Threshold`, and `Unit`.
    #
    #   For each historical metric you include in the request, you must
    #   include a `Unit` and a `Statistic`.
    #
    #   The following historical metrics are available:
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_CONSULTED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_AGENT\_HUNG\_UP\_FIRST
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_HANDLED\_INCOMING
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_HANDLED\_OUTBOUND
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CALLBACK\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CALLBACK\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   API\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   CONTACTS\_MISSED
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   OCCUPANCY
    #
    #   : Unit: PERCENT
    #
    #     Statistics: AVG
    #
    #   HANDLE\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: AVG
    #
    #   AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: AVG
    #
    #   QUEUED\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: MAX
    #
    #   ABANDON\_TIME
    #
    #   : Unit: COUNT
    #
    #     Statistics: SUM
    #
    #   QUEUE\_ANSWER\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: AVG
    #
    #   HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: AVG
    #
    #   INTERACTION\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: AVG
    #
    #   INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistics: AVG
    #
    #   SERVICE\_LEVEL
    #
    #   : Unit: PERCENT
    #
    #     Statistics: AVG
    #
    #     Threshold: Only "Less than" comparisons are supported, with the
    #     following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120,
    #     180, 240, 300, 600
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   Indicates the maximum number of results to return per page in the
    #   response, between 1-100.
    #
    # @return [Types::GetMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetMetricDataResponse#metric_results #metric_results} => Array&lt;Types::HistoricalMetricResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data({
    #     instance_id: "InstanceId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL
    #     historical_metrics: [ # required
    #       {
    #         name: "CONTACTS_QUEUED", # accepts CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL
    #         threshold: {
    #           comparison: "LT", # accepts LT
    #           threshold_value: 1.0,
    #         },
    #         statistic: "SUM", # accepts SUM, MAX, AVG
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE"
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"
    #   resp.metric_results[0].collections[0].metric.threshold.comparison #=> String, one of "LT"
    #   resp.metric_results[0].collections[0].metric.threshold.threshold_value #=> Float
    #   resp.metric_results[0].collections[0].metric.statistic #=> String, one of "SUM", "MAX", "AVG"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricData AWS API Documentation
    #
    # @overload get_metric_data(params = {})
    # @param [Hash] params ({})
    def get_metric_data(params = {}, options = {})
      req = build_request(:get_metric_data, params)
      req.send_request(options)
    end

    # Returns an array of `RoutingProfileSummary` objects that includes
    # information about the routing profiles in your instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of routing profiles to return in the response.
    #
    # @return [Types::ListRoutingProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfilesResponse#routing_profile_summary_list #routing_profile_summary_list} => Array&lt;Types::RoutingProfileSummary&gt;
    #   * {Types::ListRoutingProfilesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_summary_list #=> Array
    #   resp.routing_profile_summary_list[0].id #=> String
    #   resp.routing_profile_summary_list[0].arn #=> String
    #   resp.routing_profile_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfiles AWS API Documentation
    #
    # @overload list_routing_profiles(params = {})
    # @param [Hash] params ({})
    def list_routing_profiles(params = {}, options = {})
      req = build_request(:list_routing_profiles, params)
      req.send_request(options)
    end

    # Returns an array of SecurityProfileSummary objects that contain
    # information about the security profiles in your instance, including
    # the ARN, Id, and Name of the security profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of security profiles to return.
    #
    # @return [Types::ListSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilesResponse#security_profile_summary_list #security_profile_summary_list} => Array&lt;Types::SecurityProfileSummary&gt;
    #   * {Types::ListSecurityProfilesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_summary_list #=> Array
    #   resp.security_profile_summary_list[0].id #=> String
    #   resp.security_profile_summary_list[0].arn #=> String
    #   resp.security_profile_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfiles AWS API Documentation
    #
    # @overload list_security_profiles(params = {})
    # @param [Hash] params ({})
    def list_security_profiles(params = {}, options = {})
      req = build_request(:list_security_profiles, params)
      req.send_request(options)
    end

    # Returns a `UserHierarchyGroupSummaryList`, which is an array of
    # `HierarchyGroupSummary` objects that contain information about the
    # hierarchy groups in your instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of hierarchy groups to return.
    #
    # @return [Types::ListUserHierarchyGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserHierarchyGroupsResponse#user_hierarchy_group_summary_list #user_hierarchy_group_summary_list} => Array&lt;Types::HierarchyGroupSummary&gt;
    #   * {Types::ListUserHierarchyGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_hierarchy_groups({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_hierarchy_group_summary_list #=> Array
    #   resp.user_hierarchy_group_summary_list[0].id #=> String
    #   resp.user_hierarchy_group_summary_list[0].arn #=> String
    #   resp.user_hierarchy_group_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroups AWS API Documentation
    #
    # @overload list_user_hierarchy_groups(params = {})
    # @param [Hash] params ({})
    def list_user_hierarchy_groups(params = {}, options = {})
      req = build_request(:list_user_hierarchy_groups, params)
      req.send_request(options)
    end

    # Returns a `UserSummaryList`, which is an array of `UserSummary`
    # objects.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_summary_list #user_summary_list} => Array&lt;Types::UserSummary&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_summary_list #=> Array
    #   resp.user_summary_list[0].id #=> String
    #   resp.user_summary_list[0].arn #=> String
    #   resp.user_summary_list[0].username #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # The `StartOutboundVoiceContact` operation initiates a contact flow to
    # place an outbound call to a customer.
    #
    # If you are using an IAM account, it must have permission to the
    # `connect:StartOutboundVoiceContact` action.
    #
    # @option params [required, String] :destination_phone_number
    #   The phone number of the customer in E.164 format.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier for the contact flow to connect the outbound call to.
    #
    #   To find the `ContactFlowId`, open the contact flow you want to use in
    #   the Amazon Connect contact flow editor. The ID for the contact flow is
    #   displayed in the address bar as part of the URL. For example, the
    #   contact flow ID is the set of characters at the end of the URL, after
    #   'contact-flow/' such as `78ea8fd5-2659-4f2b-b528-699760ccfc1b`.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. The token is valid for 7 days after
    #   creation. If a contact is already started, the contact ID is returned.
    #   If the contact is disconnected, a new contact is started.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :source_phone_number
    #   The phone number, in E.164 format, associated with your Amazon Connect
    #   instance to use for the outbound call.
    #
    # @option params [String] :queue_id
    #   The queue to add the call to. If you specify a queue, the phone
    #   displayed for caller ID is the phone number specified in the queue. If
    #   you do not specify a queue, the queue used will be the queue defined
    #   in the contact flow.
    #
    #   To find the `QueueId`, open the queue you want to use in the Amazon
    #   Connect Queue editor. The ID for the queue is displayed in the address
    #   bar as part of the URL. For example, the queue ID is the set of
    #   characters at the end of the URL, after 'queue/' such as
    #   `queue/aeg40574-2d01-51c3-73d6-bf8624d2168c`.
    #
    # @option params [Hash<String,String>] :attributes
    #   Specify a custom key-value pair using an attribute map. The attributes
    #   are standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs.
    #   Attribute keys can include only alphanumeric, dash, and underscore
    #   characters.
    #
    #   For example, if you want play a greeting when the customer answers the
    #   call, you can pass the customer name in attributes similar to the
    #   following:
    #
    # @return [Types::StartOutboundVoiceContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOutboundVoiceContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_voice_contact({
    #     destination_phone_number: "PhoneNumber", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     source_phone_number: "PhoneNumber",
    #     queue_id: "QueueId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContact AWS API Documentation
    #
    # @overload start_outbound_voice_contact(params = {})
    # @param [Hash] params ({})
    def start_outbound_voice_contact(params = {}, options = {})
      req = build_request(:start_outbound_voice_contact, params)
      req.send_request(options)
    end

    # Ends the contact initiated by the `StartOutboundVoiceContact`
    # operation.
    #
    # If you are using an IAM account, it must have permission to the
    # `connect:StopContact` action.
    #
    # @option params [required, String] :contact_id
    #   The unique identifier of the contact to end.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContact AWS API Documentation
    #
    # @overload stop_contact(params = {})
    # @param [Hash] params ({})
    def stop_contact(params = {}, options = {})
      req = build_request(:stop_contact, params)
      req.send_request(options)
    end

    # The `UpdateContactAttributes` operation lets you programmatically
    # create new, or update existing, contact attributes associated with a
    # contact. You can use the operation to add or update attributes for
    # both ongoing and completed contacts. For example, you can update the
    # customer's name or the reason the customer called while the call is
    # active, or add notes about steps that the agent took during the call
    # that are displayed to the next agent that takes the call. You can also
    # use the `UpdateContactAttributes` operation to update attributes for a
    # contact using data from your CRM application and save the data with
    # the contact in Amazon Connect. You could also flag calls for
    # additional analysis, such as legal review or identifying abusive
    # callers.
    #
    # Contact attributes are available in Amazon Connect for 24 months, and
    # are then deleted.
    #
    # *Important:*
    #
    # You cannot use the operation to update attributes for contacts that
    # occurred prior to the release of the API, September 12, 2018. You can
    # update attributes only for contacts that started after the release of
    # the API. If you attempt to update attributes for a contact that
    # occurred prior to the release of the API, a 400 error is returned.
    # This applies also to queued callbacks that were initiated prior to the
    # release of the API but are still active in your instance.
    #
    # @option params [required, String] :initial_contact_id
    #   The unique identifier of the contact for which to update attributes.
    #   This is the identifier for the contact associated with the first
    #   interaction with the contact center.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @option params [required, Hash<String,String>] :attributes
    #   The key-value pairs for the attribute to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_attributes({
    #     initial_contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     attributes: { # required
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributes AWS API Documentation
    #
    # @overload update_contact_attributes(params = {})
    # @param [Hash] params ({})
    def update_contact_attributes(params = {}, options = {})
      req = build_request(:update_contact_attributes, params)
      req.send_request(options)
    end

    # Assigns the specified hierarchy group to the user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier for the hierarchy group to assign to the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account to assign the hierarchy group to.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy({
    #     hierarchy_group_id: "HierarchyGroupId",
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchy AWS API Documentation
    #
    # @overload update_user_hierarchy(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy(params = {}, options = {})
      req = build_request(:update_user_hierarchy, params)
      req.send_request(options)
    end

    # Updates the identity information for the specified user in a
    # `UserIdentityInfo` object, including email, first name, and last name.
    #
    # @option params [required, Types::UserIdentityInfo] :identity_info
    #   A `UserIdentityInfo` object.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user account to update identity information
    #   for.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_identity_info({
    #     identity_info: { # required
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfo AWS API Documentation
    #
    # @overload update_user_identity_info(params = {})
    # @param [Hash] params ({})
    def update_user_identity_info(params = {}, options = {})
      req = build_request(:update_user_identity_info, params)
      req.send_request(options)
    end

    # Updates the phone configuration settings in the `UserPhoneConfig`
    # object for the specified user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   A `UserPhoneConfig` object that contains settings for
    #   `AfterContactWorkTimeLimit`, `AutoAccept`, `DeskPhoneNumber`, and
    #   `PhoneType` to assign to the user.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user account to change phone settings for.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_phone_config({
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfig AWS API Documentation
    #
    # @overload update_user_phone_config(params = {})
    # @param [Hash] params ({})
    def update_user_phone_config(params = {}, options = {})
      req = build_request(:update_user_phone_config, params)
      req.send_request(options)
    end

    # Assigns the specified routing profile to a user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile to assign to the user.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user account to assign the routing profile to.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_routing_profile({
    #     routing_profile_id: "RoutingProfileId", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfile AWS API Documentation
    #
    # @overload update_user_routing_profile(params = {})
    # @param [Hash] params ({})
    def update_user_routing_profile(params = {}, options = {})
      req = build_request(:update_user_routing_profile, params)
      req.send_request(options)
    end

    # Updates the security profiles assigned to the user.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifiers for the security profiles to assign to the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account to assign the security profiles.
    #
    # @option params [required, String] :instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect. Select
    #   the alias of the instance in the Instance alias column. The instance
    #   ID is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_security_profiles({
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfiles AWS API Documentation
    #
    # @overload update_user_security_profiles(params = {})
    # @param [Hash] params ({})
    def update_user_security_profiles(params = {}, options = {})
      req = build_request(:update_user_security_profiles, params)
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
      context[:gem_name] = 'aws-sdk-connect'
      context[:gem_version] = '1.6.0'
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
