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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:quicksight)

module Aws::QuickSight
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :quicksight

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates an Amazon QuickSight group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<relevant-aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a group object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight create-group --aws-account-id=111122223333
    # --namespace=default --group-name="Sales-Management"
    # --description="Sales Management - Forecasting" `
    #
    # @option params [required, String] :group_name
    #   A name for the group that you want to create.
    #
    # @option params [String] :description
    #   A description for the group that you want to create.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::Group
    #   * {Types::CreateGroupResponse#request_id #request_id} => String
    #   * {Types::CreateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Adds an Amazon QuickSight user to an Amazon QuickSight group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The condition resource is the user name.
    #
    # The condition key is `quicksight:UserName`.
    #
    # The response is the group member object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight create-group-membership --aws-account-id=111122223333
    # --namespace=default --group-name=Sales --member-name=Pat `
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to add to the group membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to add the user to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::CreateGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupMembershipResponse#group_member #group_member} => Types::GroupMember
    #   * {Types::CreateGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::CreateGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member.arn #=> String
    #   resp.group_member.member_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembership AWS API Documentation
    #
    # @overload create_group_membership(params = {})
    # @param [Hash] params ({})
    def create_group_membership(params = {}, options = {})
      req = build_request(:create_group_membership, params)
      req.send_request(options)
    end

    # Removes a user group from Amazon QuickSight.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-group -\-aws-account-id=111122223333
    # -\-namespace=default -\-group-name=Sales-Management `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Removes a user from a group so that the user is no longer a member of
    # the group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The condition resource is the user name.
    #
    # The condition key is `quicksight:UserName`.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-group-membership --aws-account-id=111122223333
    # --namespace=default --group-name=Sales-Management
    # --member-name=Charlie `
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete the user from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembership AWS API Documentation
    #
    # @overload delete_group_membership(params = {})
    # @param [Hash] params ({})
    def delete_group_membership(params = {}, options = {})
      req = build_request(:delete_group_membership, params)
      req.send_request(options)
    end

    # Deletes the Amazon QuickSight user that is associated with the
    # identity of the AWS Identity and Access Management (IAM) user or role
    # that's making the call. The IAM user isn't deleted as a result of
    # this call.
    #
    # The permission resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:user/default/<user-name>
    # `.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-user --aws-account-id=111122223333
    # --namespace=default --user-name=Pat `
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserResponse#request_id #request_id} => String
    #   * {Types::DeleteUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes a user after locating the user by its principal ID.
    #
    # @option params [required, String] :principal_id
    #   The principal ID of the user.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserByPrincipalIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserByPrincipalIdResponse#request_id #request_id} => String
    #   * {Types::DeleteUserByPrincipalIdResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_by_principal_id({
    #     principal_id: "String", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalId AWS API Documentation
    #
    # @overload delete_user_by_principal_id(params = {})
    # @param [Hash] params ({})
    def delete_user_by_principal_id(params = {}, options = {})
      req = build_request(:delete_user_by_principal_id, params)
      req.send_request(options)
    end

    # Returns an Amazon QuickSight group's description and Amazon Resource
    # Name (ARN).
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<relevant-aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is the group object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight describe-group -\-aws-account-id=11112222333
    # -\-namespace=default -\-group-name=Sales `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group #group} => Types::Group
    #   * {Types::DescribeGroupResponse#request_id #request_id} => String
    #   * {Types::DescribeGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Returns information about a user, given the user name.
    #
    # The permission resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:user/default/<user-name>
    # `.
    #
    # The response is a user object that contains the user's Amazon
    # Resource Name (ARN), AWS Identity and Access Management (IAM) role,
    # and email address.
    #
    # **CLI Sample:**
    #
    # `aws quicksight describe-user --aws-account-id=111122223333
    # --namespace=default --user-name=Pat `
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #   * {Types::DescribeUserResponse#request_id #request_id} => String
    #   * {Types::DescribeUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Generates a server-side embeddable URL and authorization code. Before
    # this can work properly, first you need to configure the dashboards and
    # user permissions. For more information, see [ Embedding Amazon
    # QuickSight Dashboards][1].
    #
    # Currently, you can use `GetDashboardEmbedURL` only from the server,
    # not from the user’s browser.
    #
    # **CLI Sample:**
    #
    # Assume the role with permissions enabled for actions:
    # `quickSight:RegisterUser` and `quicksight:GetDashboardEmbedURL`. You
    # can use assume-role, assume-role-with-web-identity, or
    # assume-role-with-saml.
    #
    # `aws sts assume-role --role-arn
    # "arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role"
    # --role-session-name embeddingsession`
    #
    # If the user does not exist in QuickSight, register the user:
    #
    # `aws quicksight register-user --aws-account-id 111122223333
    # --namespace default --identity-type IAM --iam-arn
    # "arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role"
    # --user-role READER --session-name "embeddingsession" --email
    # user123@example.com --region us-east-1`
    #
    # Get the URL for the embedded dashboard
    #
    # `aws quicksight get-dashboard-embed-url --aws-account-id 111122223333
    # --dashboard-id 1a1ac2b2-3fc3-4b44-5e5d-c6db6778df89 --identity-type
    # IAM`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/en_us/quicksight/latest/user/embedding.html
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are embedding.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to IAM policy
    #
    # @option params [required, String] :identity_type
    #   The authentication method the user uses to sign in (IAM only).
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   between 15 and 600 minutes.
    #
    # @option params [Boolean] :undo_redo_disabled
    #   Remove the undo/redo button on embedded dashboard. The default is
    #   FALSE, which enables the undo/redo button.
    #
    # @option params [Boolean] :reset_disabled
    #   Remove the reset button on embedded dashboard. The default is FALSE,
    #   which allows the reset button.
    #
    # @return [Types::GetDashboardEmbedUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardEmbedUrlResponse#embed_url #embed_url} => String
    #   * {Types::GetDashboardEmbedUrlResponse#status #status} => Integer
    #   * {Types::GetDashboardEmbedUrlResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard_embed_url({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "String", # required
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #     session_lifetime_in_minutes: 1,
    #     undo_redo_disabled: false,
    #     reset_disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrl AWS API Documentation
    #
    # @overload get_dashboard_embed_url(params = {})
    # @param [Hash] params ({})
    def get_dashboard_embed_url(params = {}, options = {})
      req = build_request(:get_dashboard_embed_url, params)
      req.send_request(options)
    end

    # Lists member users in a group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a list of group member objects.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-group-memberships -\-aws-account-id=111122223333
    # -\-namespace=default `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to see a membership list of.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListGroupMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembershipsResponse#group_member_list #group_member_list} => Array&lt;Types::GroupMember&gt;
    #   * {Types::ListGroupMembershipsResponse#next_token #next_token} => String
    #   * {Types::ListGroupMembershipsResponse#request_id #request_id} => String
    #   * {Types::ListGroupMembershipsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships({
    #     group_name: "GroupName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member_list #=> Array
    #   resp.group_member_list[0].arn #=> String
    #   resp.group_member_list[0].member_name #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMemberships AWS API Documentation
    #
    # @overload list_group_memberships(params = {})
    # @param [Hash] params ({})
    def list_group_memberships(params = {}, options = {})
      req = build_request(:list_group_memberships, params)
      req.send_request(options)
    end

    # Lists all user groups in Amazon QuickSight.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/*`.
    #
    # The response is a list of group objects.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-groups -\-aws-account-id=111122223333
    # -\-namespace=default `
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #   * {Types::ListGroupsResponse#request_id #request_id} => String
    #   * {Types::ListGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
    # member of.
    #
    # The permission resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:user/default/<user-name>
    # `.
    #
    # The response is a one or more group objects.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-user-groups -\-user-name=Pat
    # -\-aws-account-id=111122223333 -\-namespace=default
    # -\-region=us-east-1 `
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID that the user is in. Currently, you use the ID for
    #   the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @return [Types::ListUserGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListUserGroupsResponse#next_token #next_token} => String
    #   * {Types::ListUserGroupsResponse#request_id #request_id} => String
    #   * {Types::ListUserGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_groups({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroups AWS API Documentation
    #
    # @overload list_user_groups(params = {})
    # @param [Hash] params ({})
    def list_user_groups(params = {}, options = {})
      req = build_request(:list_user_groups, params)
      req.send_request(options)
    end

    # Returns a list of all of the Amazon QuickSight users belonging to this
    # account.
    #
    # The permission resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:user/default/* `.
    #
    # The response is a list of user objects, containing each user's Amazon
    # Resource Name (ARN), AWS Identity and Access Management (IAM) role,
    # and email address.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-users --aws-account-id=111122223333
    # --namespace=default `
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_list #user_list} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#request_id #request_id} => String
    #   * {Types::ListUsersResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_list #=> Array
    #   resp.user_list[0].arn #=> String
    #   resp.user_list[0].user_name #=> String
    #   resp.user_list[0].email #=> String
    #   resp.user_list[0].role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user_list[0].identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user_list[0].active #=> Boolean
    #   resp.user_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight user, whose identity is associated with
    # the AWS Identity and Access Management (IAM) identity or role
    # specified in the request.
    #
    # The permission resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:user/default/<user-name>
    # `.
    #
    # The condition resource is the Amazon Resource Name (ARN) for the IAM
    # user or role, and the session name.
    #
    # The condition keys are `quicksight:IamArn` and
    # `quicksight:SessionName`.
    #
    # **CLI Sample:**
    #
    # `aws quicksight register-user -\-aws-account-id=111122223333
    # -\-namespace=default -\-email=pat@example.com -\-identity-type=IAM
    # -\-user-role=AUTHOR -\-iam-arn=arn:aws:iam::111122223333:user/Pat `
    #
    # @option params [required, String] :identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`\: A user whose identity maps to an existing IAM user or role.
    #
    #   * `QUICKSIGHT`\: A user whose identity is owned and managed internally
    #     by Amazon QuickSight.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to register.
    #
    # @option params [required, String] :user_role
    #   The Amazon QuickSight role of the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, data sets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    # @option params [String] :iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #
    # @option params [String] :session_name
    #   The name of the session with the assumed IAM role. By using this
    #   parameter, you can register multiple users with the same IAM role,
    #   provided that each has a different session name. For more information
    #   on assuming IAM roles, see [ `assume-role` ][1] in the *AWS CLI
    #   Reference.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #
    # @return [Types::RegisterUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterUserResponse#user #user} => Types::User
    #   * {Types::RegisterUserResponse#user_invitation_url #user_invitation_url} => String
    #   * {Types::RegisterUserResponse#request_id #request_id} => String
    #   * {Types::RegisterUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_user({
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #     email: "String", # required
    #     user_role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #     iam_arn: "String",
    #     session_name: "RoleSessionName",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     user_name: "UserName",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user_invitation_url #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUser AWS API Documentation
    #
    # @overload register_user(params = {})
    # @param [Hash] params ({})
    def register_user(params = {}, options = {})
      req = build_request(:register_user, params)
      req.send_request(options)
    end

    # Changes a group description.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a group object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight update-group --aws-account-id=111122223333
    # --namespace=default --group-name=Sales --description="Sales BI
    # Dashboards" `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to update.
    #
    # @option params [String] :description
    #   The description for the group that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::Group
    #   * {Types::UpdateGroupResponse#request_id #request_id} => String
    #   * {Types::UpdateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates an Amazon QuickSight user.
    #
    # The permission resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:user/default/<user-name>
    # `.
    #
    # The response is a user object that contains the user's Amazon
    # QuickSight user name, email address, active or inactive status in
    # Amazon QuickSight, Amazon QuickSight role, and Amazon Resource Name
    # (ARN).
    #
    # **CLI Sample:**
    #
    # `aws quicksight update-user --user-name=Pat --role=ADMIN
    # --email=new_address@amazon.com --aws-account-id=111122223333
    # --namespace=default --region=us-east-1 `
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to update.
    #
    # @option params [required, String] :role
    #   The Amazon QuickSight role of the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, data sets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #   * {Types::UpdateUserResponse#request_id #request_id} => String
    #   * {Types::UpdateUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     email: "String", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-quicksight'
      context[:gem_version] = '1.8.0'
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
