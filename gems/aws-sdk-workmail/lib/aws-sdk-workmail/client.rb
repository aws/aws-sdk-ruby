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

Aws::Plugins::GlobalConfiguration.add_identifier(:workmail)

module Aws::WorkMail
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :workmail

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

    # Adds a member to the resource's set of delegates.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the resource exists.
    #
    # @option params [required, String] :resource_id
    #   The resource for which members are associated.
    #
    # @option params [required, String] :entity_id
    #   The member (user or group) to associate to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_delegate_to_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateDelegateToResource AWS API Documentation
    #
    # @overload associate_delegate_to_resource(params = {})
    # @param [Hash] params ({})
    def associate_delegate_to_resource(params = {}, options = {})
      req = build_request(:associate_delegate_to_resource, params)
      req.send_request(options)
    end

    # Adds a member to the group's set.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The group for which the member is associated.
    #
    # @option params [required, String] :member_id
    #   The member to associate to the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #     member_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateMemberToGroup AWS API Documentation
    #
    # @overload associate_member_to_group(params = {})
    # @param [Hash] params ({})
    def associate_member_to_group(params = {}, options = {})
      req = build_request(:associate_member_to_group, params)
      req.send_request(options)
    end

    # Adds an alias to the set of a given member of Amazon WorkMail.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the member exists.
    #
    # @option params [required, String] :entity_id
    #   The alias is added to this Amazon WorkMail entity.
    #
    # @option params [required, String] :alias
    #   The alias to add to the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     alias: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a group that can be used in Amazon WorkMail by calling the
    # RegisterToWorkMail operation.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the group is to be created.
    #
    # @option params [required, String] :name
    #   The name of the group.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     organization_id: "OrganizationId", # required
    #     name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a new Amazon WorkMail resource. The available types are
    # equipment and room.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is created.
    #
    # @option params [required, String] :name
    #   The name of the created resource.
    #
    # @option params [required, String] :type
    #   The type of the created resource.
    #
    # @return [Types::CreateResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceResponse#resource_id #resource_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource({
    #     organization_id: "OrganizationId", # required
    #     name: "ResourceName", # required
    #     type: "ROOM", # required, accepts ROOM, EQUIPMENT
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResource AWS API Documentation
    #
    # @overload create_resource(params = {})
    # @param [Hash] params ({})
    def create_resource(params = {}, options = {})
      req = build_request(:create_resource, params)
      req.send_request(options)
    end

    # Creates a user who can be used in Amazon WorkMail by calling the
    # RegisterToWorkMail operation.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization for which the user is created.
    #
    # @option params [required, String] :name
    #   The name for the user to be created.
    #
    # @option params [required, String] :display_name
    #   The display name for the user to be created.
    #
    # @option params [required, String] :password
    #   The password for the user to be created.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     organization_id: "OrganizationId", # required
    #     name: "UserName", # required
    #     display_name: "String", # required
    #     password: "Password", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Remove the alias from a set of aliases for a given user.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the user exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the Amazon WorkMail entity to have the aliases
    #   removed.
    #
    # @option params [required, String] :alias
    #   The aliases to be removed from the user's set of aliases. Duplicate
    #   entries in the list are collapsed into single entries (the list is
    #   transformed into a set).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     alias: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes a group from Amazon WorkMail.
    #
    # @option params [required, String] :organization_id
    #   The organization that contains the group.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes permissions granted to a user or group.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization under which the entity (user or
    #   group) exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the entity (user or group) for which to delete
    #   mailbox permissions.
    #
    # @option params [required, String] :grantee_id
    #   The identifier of the entity (user or group) for which to delete
    #   granted permissions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mailbox_permissions({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     grantee_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissions AWS API Documentation
    #
    # @overload delete_mailbox_permissions(params = {})
    # @param [Hash] params ({})
    def delete_mailbox_permissions(params = {}, options = {})
      req = build_request(:delete_mailbox_permissions, params)
      req.send_request(options)
    end

    # Deletes the specified resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is deleted.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteResource AWS API Documentation
    #
    # @overload delete_resource(params = {})
    # @param [Hash] params ({})
    def delete_resource(params = {}, options = {})
      req = build_request(:delete_resource, params)
      req.send_request(options)
    end

    # Deletes a user from Amazon WorkMail and all subsequent systems. The
    # action can't be undone. The mailbox is kept as-is for a minimum of 30
    # days, without any means to restore it.
    #
    # @option params [required, String] :organization_id
    #   The organization that contains the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Mark a user, group, or resource as no longer used in Amazon WorkMail.
    # This action disassociates the mailbox and schedules it for clean-up.
    # Amazon WorkMail keeps mailboxes for 30 days before they are
    # permanently removed. The functionality in the console is *Disable*.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the Amazon WorkMail
    #   entity exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the entity to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_from_work_mail({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeregisterFromWorkMail AWS API Documentation
    #
    # @overload deregister_from_work_mail(params = {})
    # @param [Hash] params ({})
    def deregister_from_work_mail(params = {}, options = {})
      req = build_request(:deregister_from_work_mail, params)
      req.send_request(options)
    end

    # Returns the data available for the group.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The identifier for the group to be described.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group_id #group_id} => String
    #   * {Types::DescribeGroupResponse#name #name} => String
    #   * {Types::DescribeGroupResponse#email #email} => String
    #   * {Types::DescribeGroupResponse#state #state} => String
    #   * {Types::DescribeGroupResponse#enabled_date #enabled_date} => Time
    #   * {Types::DescribeGroupResponse#disabled_date #disabled_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.enabled_date #=> Time
    #   resp.disabled_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Provides more information regarding a given organization based on its
    # identifier.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization to be described.
    #
    # @return [Types::DescribeOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationResponse#organization_id #organization_id} => String
    #   * {Types::DescribeOrganizationResponse#alias #alias} => String
    #   * {Types::DescribeOrganizationResponse#state #state} => String
    #   * {Types::DescribeOrganizationResponse#directory_id #directory_id} => String
    #   * {Types::DescribeOrganizationResponse#directory_type #directory_type} => String
    #   * {Types::DescribeOrganizationResponse#default_mail_domain #default_mail_domain} => String
    #   * {Types::DescribeOrganizationResponse#completed_date #completed_date} => Time
    #   * {Types::DescribeOrganizationResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization({
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_id #=> String
    #   resp.alias #=> String
    #   resp.state #=> String
    #   resp.directory_id #=> String
    #   resp.directory_type #=> String
    #   resp.default_mail_domain #=> String
    #   resp.completed_date #=> Time
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeOrganization AWS API Documentation
    #
    # @overload describe_organization(params = {})
    # @param [Hash] params ({})
    def describe_organization(params = {}, options = {})
      req = build_request(:describe_organization, params)
      req.send_request(options)
    end

    # Returns the data available for the resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is described.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource to be described.
    #
    # @return [Types::DescribeResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceResponse#resource_id #resource_id} => String
    #   * {Types::DescribeResourceResponse#email #email} => String
    #   * {Types::DescribeResourceResponse#name #name} => String
    #   * {Types::DescribeResourceResponse#type #type} => String
    #   * {Types::DescribeResourceResponse#booking_options #booking_options} => Types::BookingOptions
    #   * {Types::DescribeResourceResponse#state #state} => String
    #   * {Types::DescribeResourceResponse#enabled_date #enabled_date} => Time
    #   * {Types::DescribeResourceResponse#disabled_date #disabled_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.email #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "ROOM", "EQUIPMENT"
    #   resp.booking_options.auto_accept_requests #=> Boolean
    #   resp.booking_options.auto_decline_recurring_requests #=> Boolean
    #   resp.booking_options.auto_decline_conflicting_requests #=> Boolean
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.enabled_date #=> Time
    #   resp.disabled_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeResource AWS API Documentation
    #
    # @overload describe_resource(params = {})
    # @param [Hash] params ({})
    def describe_resource(params = {}, options = {})
      req = build_request(:describe_resource, params)
      req.send_request(options)
    end

    # Provides information regarding the user.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the user exists.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user to be described.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user_id #user_id} => String
    #   * {Types::DescribeUserResponse#name #name} => String
    #   * {Types::DescribeUserResponse#email #email} => String
    #   * {Types::DescribeUserResponse#display_name #display_name} => String
    #   * {Types::DescribeUserResponse#state #state} => String
    #   * {Types::DescribeUserResponse#user_role #user_role} => String
    #   * {Types::DescribeUserResponse#enabled_date #enabled_date} => Time
    #   * {Types::DescribeUserResponse#disabled_date #disabled_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.display_name #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.user_role #=> String, one of "USER", "RESOURCE", "SYSTEM_USER"
    #   resp.enabled_date #=> Time
    #   resp.disabled_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Removes a member from the resource's set of delegates.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the resource exists.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource from which delegates' set members are
    #   removed.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the member (user, group) to be removed from the
    #   resource's delegates.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_delegate_from_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateDelegateFromResource AWS API Documentation
    #
    # @overload disassociate_delegate_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_delegate_from_resource(params = {}, options = {})
      req = build_request(:disassociate_delegate_from_resource, params)
      req.send_request(options)
    end

    # Removes a member from a group.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The identifier for the group from which members are removed.
    #
    # @option params [required, String] :member_id
    #   The identifier for the member to be removed to the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #     member_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateMemberFromGroup AWS API Documentation
    #
    # @overload disassociate_member_from_group(params = {})
    # @param [Hash] params ({})
    def disassociate_member_from_group(params = {}, options = {})
      req = build_request(:disassociate_member_from_group, params)
      req.send_request(options)
    end

    # Creates a paginated call to list the aliases associated with a given
    # entity.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the entity exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the entity for which to list the aliases.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesResponse#aliases #aliases} => Array&lt;String&gt;
    #   * {Types::ListAliasesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Returns an overview of the members of a group.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The identifier for the group to which the members are associated.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListGroupMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListGroupMembersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_members({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].id #=> String
    #   resp.members[0].name #=> String
    #   resp.members[0].type #=> String, one of "GROUP", "USER"
    #   resp.members[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.members[0].enabled_date #=> Time
    #   resp.members[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupMembers AWS API Documentation
    #
    # @overload list_group_members(params = {})
    # @param [Hash] params ({})
    def list_group_members(params = {}, options = {})
      req = build_request(:list_group_members, params)
      req.send_request(options)
    end

    # Returns summaries of the organization's groups.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the groups exist.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].id #=> String
    #   resp.groups[0].email #=> String
    #   resp.groups[0].name #=> String
    #   resp.groups[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.groups[0].enabled_date #=> Time
    #   resp.groups[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the mailbox permissions associated with a mailbox.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization under which the entity (user or
    #   group) exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the entity (user or group) for which to list mailbox
    #   permissions.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListMailboxPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMailboxPermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #   * {Types::ListMailboxPermissionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mailbox_permissions({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].grantee_id #=> String
    #   resp.permissions[0].grantee_type #=> String, one of "GROUP", "USER"
    #   resp.permissions[0].permission_values #=> Array
    #   resp.permissions[0].permission_values[0] #=> String, one of "FULL_ACCESS", "SEND_AS", "SEND_ON_BEHALF"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxPermissions AWS API Documentation
    #
    # @overload list_mailbox_permissions(params = {})
    # @param [Hash] params ({})
    def list_mailbox_permissions(params = {}, options = {})
      req = build_request(:list_mailbox_permissions, params)
      req.send_request(options)
    end

    # Returns summaries of the customer's non-deleted organizations.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListOrganizationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationsResponse#organization_summaries #organization_summaries} => Array&lt;Types::OrganizationSummary&gt;
    #   * {Types::ListOrganizationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organizations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_summaries #=> Array
    #   resp.organization_summaries[0].organization_id #=> String
    #   resp.organization_summaries[0].alias #=> String
    #   resp.organization_summaries[0].error_message #=> String
    #   resp.organization_summaries[0].state #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListOrganizations AWS API Documentation
    #
    # @overload list_organizations(params = {})
    # @param [Hash] params ({})
    def list_organizations(params = {}, options = {})
      req = build_request(:list_organizations, params)
      req.send_request(options)
    end

    # Lists the delegates associated with a resource. Users and groups can
    # be resource delegates and answer requests on behalf of the resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization that contains the resource for
    #   which delegates are listed.
    #
    # @option params [required, String] :resource_id
    #   The identifier for the resource whose delegates are listed.
    #
    # @option params [String] :next_token
    #   The token used to paginate through the delegates associated with a
    #   resource.
    #
    # @option params [Integer] :max_results
    #   The number of maximum results in a page.
    #
    # @return [Types::ListResourceDelegatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceDelegatesResponse#delegates #delegates} => Array&lt;Types::Delegate&gt;
    #   * {Types::ListResourceDelegatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_delegates({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delegates #=> Array
    #   resp.delegates[0].id #=> String
    #   resp.delegates[0].type #=> String, one of "GROUP", "USER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourceDelegates AWS API Documentation
    #
    # @overload list_resource_delegates(params = {})
    # @param [Hash] params ({})
    def list_resource_delegates(params = {}, options = {})
      req = build_request(:list_resource_delegates, params)
      req.send_request(options)
    end

    # Returns summaries of the organization's resources.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the resources exist.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::ListResourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].id #=> String
    #   resp.resources[0].email #=> String
    #   resp.resources[0].name #=> String
    #   resp.resources[0].type #=> String, one of "ROOM", "EQUIPMENT"
    #   resp.resources[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.resources[0].enabled_date #=> Time
    #   resp.resources[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Returns summaries of the organization's users.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the users exist.
    #
    # @option params [String] :next_token
    #   TBD
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].id #=> String
    #   resp.users[0].email #=> String
    #   resp.users[0].name #=> String
    #   resp.users[0].display_name #=> String
    #   resp.users[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.users[0].user_role #=> String, one of "USER", "RESOURCE", "SYSTEM_USER"
    #   resp.users[0].enabled_date #=> Time
    #   resp.users[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Sets permissions for a user or group. This replaces any pre-existing
    # permissions set for the entity.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization under which the entity (user or
    #   group) exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the entity (user or group) for which to update
    #   mailbox permissions.
    #
    # @option params [required, String] :grantee_id
    #   The identifier of the entity (user or group) to which to grant the
    #   permissions.
    #
    # @option params [required, Array<String>] :permission_values
    #   The permissions granted to the grantee. SEND\_AS allows the grantee to
    #   send email as the owner of the mailbox (the grantee is not mentioned
    #   on these emails). SEND\_ON\_BEHALF allows the grantee to send email on
    #   behalf of the owner of the mailbox (the grantee is not mentioned as
    #   the physical sender of these emails). FULL\_ACCESS allows the grantee
    #   full access to the mailbox, irrespective of other folder-level
    #   permissions set on the mailbox.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_mailbox_permissions({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     grantee_id: "WorkMailIdentifier", # required
    #     permission_values: ["FULL_ACCESS"], # required, accepts FULL_ACCESS, SEND_AS, SEND_ON_BEHALF
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutMailboxPermissions AWS API Documentation
    #
    # @overload put_mailbox_permissions(params = {})
    # @param [Hash] params ({})
    def put_mailbox_permissions(params = {}, options = {})
      req = build_request(:put_mailbox_permissions, params)
      req.send_request(options)
    end

    # Registers an existing and disabled user, group, or resource/entity for
    # Amazon WorkMail use by associating a mailbox and calendaring
    # capabilities. It performs no change if the entity is enabled and fails
    # if the entity is deleted. This operation results in the accumulation
    # of costs. For more information, see [Pricing][1]. The equivalent
    # console functionality for this operation is *Enable*. Users can either
    # be created by calling the CreateUser API or they can be synchronized
    # from your directory. For more information, see DeregisterFromWorkMail.
    #
    #
    #
    # [1]: http://aws.amazon.com/workmail/pricing
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the Amazon WorkMail
    #   entity exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the entity to be updated.
    #
    # @option params [required, String] :email
    #   The email for the entity to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_to_work_mail({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     email: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMail AWS API Documentation
    #
    # @overload register_to_work_mail(params = {})
    # @param [Hash] params ({})
    def register_to_work_mail(params = {}, options = {})
      req = build_request(:register_to_work_mail, params)
      req.send_request(options)
    end

    # Allows the administrator to reset the password for a user.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization that contains the user for which
    #   the password is reset.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user for whom the password is reset.
    #
    # @option params [required, String] :password
    #   The new password for the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_password({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #     password: "Password", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResetPassword AWS API Documentation
    #
    # @overload reset_password(params = {})
    # @param [Hash] params ({})
    def reset_password(params = {}, options = {})
      req = build_request(:reset_password, params)
      req.send_request(options)
    end

    # Updates the primary email for an entity. The current email is moved
    # into the list of aliases (or swapped between an existing alias and the
    # current primary email) and the email provided in the input is promoted
    # as the primary.
    #
    # @option params [required, String] :organization_id
    #   The organization that contains the entity to update.
    #
    # @option params [required, String] :entity_id
    #   The entity to update (user, group, or resource).
    #
    # @option params [required, String] :email
    #   The value of the email to be updated as primary.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_primary_email_address({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     email: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdatePrimaryEmailAddress AWS API Documentation
    #
    # @overload update_primary_email_address(params = {})
    # @param [Hash] params ({})
    def update_primary_email_address(params = {}, options = {})
      req = build_request(:update_primary_email_address, params)
      req.send_request(options)
    end

    # Updates data for the resource. It must be preceded by a describe call
    # in order to have the latest information. The dataset in the request
    # should be the one expected when performing another describe call.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is updated.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource to be updated.
    #
    # @option params [String] :name
    #   The name of the resource to be updated.
    #
    # @option params [Types::BookingOptions] :booking_options
    #   The resource's booking options to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #     name: "ResourceName",
    #     booking_options: {
    #       auto_accept_requests: false,
    #       auto_decline_recurring_requests: false,
    #       auto_decline_conflicting_requests: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateResource AWS API Documentation
    #
    # @overload update_resource(params = {})
    # @param [Hash] params ({})
    def update_resource(params = {}, options = {})
      req = build_request(:update_resource, params)
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
      context[:gem_name] = 'aws-sdk-workmail'
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
