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

Aws::Plugins::GlobalConfiguration.add_identifier(:codestar)

module Aws::CodeStar
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :codestar

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

    # Adds an IAM user to the team for an AWS CodeStar project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project to which you will add the IAM user.
    #
    # @option params [String] :client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested the team member association to the project. This token can
    #   be used to repeat the request.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) for the IAM user you want to add to the
    #   AWS CodeStar project.
    #
    # @option params [required, String] :project_role
    #   The AWS CodeStar project role that will apply to this user. This role
    #   determines what actions a user can take in an AWS CodeStar project.
    #
    # @option params [Boolean] :remote_access_allowed
    #   Whether the team member is allowed to use an SSH public/private key
    #   pair to remotely access project resources, for example Amazon EC2
    #   instances.
    #
    # @return [Types::AssociateTeamMemberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateTeamMemberResult#client_request_token #client_request_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_team_member({
    #     project_id: "ProjectId", # required
    #     client_request_token: "ClientRequestToken",
    #     user_arn: "UserArn", # required
    #     project_role: "Role", # required
    #     remote_access_allowed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.client_request_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/AssociateTeamMember AWS API Documentation
    #
    # @overload associate_team_member(params = {})
    # @param [Hash] params ({})
    def associate_team_member(params = {}, options = {})
      req = build_request(:associate_team_member, params)
      req.send_request(options)
    end

    # Reserved for future use. To create a project, use the AWS CodeStar
    # console.
    #
    # @option params [required, String] :name
    #   Reserved for future use.
    #
    # @option params [required, String] :id
    #   Reserved for future use.
    #
    # @option params [String] :description
    #   Reserved for future use.
    #
    # @option params [String] :client_request_token
    #   Reserved for future use.
    #
    # @return [Types::CreateProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResult#id #id} => String
    #   * {Types::CreateProjectResult#arn #arn} => String
    #   * {Types::CreateProjectResult#client_request_token #client_request_token} => String
    #   * {Types::CreateProjectResult#project_template_id #project_template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     name: "ProjectName", # required
    #     id: "ProjectId", # required
    #     description: "ProjectDescription",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_request_token #=> String
    #   resp.project_template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a profile for a user that includes user preferences, such as
    # the display name and email address assocciated with the user, in AWS
    # CodeStar. The user profile is not project-specific. Information in the
    # user profile is displayed wherever the user's information appears to
    # other users in AWS CodeStar.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the user in IAM.
    #
    # @option params [required, String] :display_name
    #   The name that will be displayed as the friendly name for the user in
    #   AWS CodeStar.
    #
    # @option params [required, String] :email_address
    #   The email address that will be displayed as part of the user's
    #   profile in AWS CodeStar.
    #
    # @option params [String] :ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. If a
    #   project owner allows the user remote access to project resources, this
    #   public key will be used along with the user's private key for SSH
    #   access.
    #
    # @return [Types::CreateUserProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserProfileResult#user_arn #user_arn} => String
    #   * {Types::CreateUserProfileResult#display_name #display_name} => String
    #   * {Types::CreateUserProfileResult#email_address #email_address} => String
    #   * {Types::CreateUserProfileResult#ssh_public_key #ssh_public_key} => String
    #   * {Types::CreateUserProfileResult#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateUserProfileResult#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_profile({
    #     user_arn: "UserArn", # required
    #     display_name: "UserProfileDisplayName", # required
    #     email_address: "Email", # required
    #     ssh_public_key: "SshPublicKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_arn #=> String
    #   resp.display_name #=> String
    #   resp.email_address #=> String
    #   resp.ssh_public_key #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateUserProfile AWS API Documentation
    #
    # @overload create_user_profile(params = {})
    # @param [Hash] params ({})
    def create_user_profile(params = {}, options = {})
      req = build_request(:create_user_profile, params)
      req.send_request(options)
    end

    # Deletes a project, including project resources. Does not delete users
    # associated with the project, but does delete the IAM roles that
    # allowed access to the project.
    #
    # @option params [required, String] :id
    #   The ID of the project to be deleted in AWS CodeStar.
    #
    # @option params [String] :client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested project deletion. This token can be used to repeat the
    #   request.
    #
    # @option params [Boolean] :delete_stack
    #   Whether to send a delete request for the primary stack in AWS
    #   CloudFormation originally used to generate the project and its
    #   resources. This option will delete all AWS resources for the project
    #   (except for any buckets in Amazon S3) as well as deleting the project
    #   itself. Recommended for most use cases.
    #
    # @return [Types::DeleteProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProjectResult#stack_id #stack_id} => String
    #   * {Types::DeleteProjectResult#project_arn #project_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     id: "ProjectId", # required
    #     client_request_token: "ClientRequestToken",
    #     delete_stack: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #   resp.project_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a user profile in AWS CodeStar, including all personal
    # preference data associated with that profile, such as display name and
    # email address. It does not delete the history of that user, for
    # example the history of commits made by that user.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the user to delete from AWS
    #   CodeStar.
    #
    # @return [Types::DeleteUserProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserProfileResult#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_profile({
    #     user_arn: "UserArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteUserProfile AWS API Documentation
    #
    # @overload delete_user_profile(params = {})
    # @param [Hash] params ({})
    def delete_user_profile(params = {}, options = {})
      req = build_request(:delete_user_profile, params)
      req.send_request(options)
    end

    # Describes a project and its resources.
    #
    # @option params [required, String] :id
    #   The ID of the project.
    #
    # @return [Types::DescribeProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectResult#name #name} => String
    #   * {Types::DescribeProjectResult#id #id} => String
    #   * {Types::DescribeProjectResult#arn #arn} => String
    #   * {Types::DescribeProjectResult#description #description} => String
    #   * {Types::DescribeProjectResult#client_request_token #client_request_token} => String
    #   * {Types::DescribeProjectResult#created_time_stamp #created_time_stamp} => Time
    #   * {Types::DescribeProjectResult#stack_id #stack_id} => String
    #   * {Types::DescribeProjectResult#project_template_id #project_template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project({
    #     id: "ProjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.client_request_token #=> String
    #   resp.created_time_stamp #=> Time
    #   resp.stack_id #=> String
    #   resp.project_template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeProject AWS API Documentation
    #
    # @overload describe_project(params = {})
    # @param [Hash] params ({})
    def describe_project(params = {}, options = {})
      req = build_request(:describe_project, params)
      req.send_request(options)
    end

    # Describes a user in AWS CodeStar and the user attributes across all
    # projects.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the user.
    #
    # @return [Types::DescribeUserProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserProfileResult#user_arn #user_arn} => String
    #   * {Types::DescribeUserProfileResult#display_name #display_name} => String
    #   * {Types::DescribeUserProfileResult#email_address #email_address} => String
    #   * {Types::DescribeUserProfileResult#ssh_public_key #ssh_public_key} => String
    #   * {Types::DescribeUserProfileResult#created_timestamp #created_timestamp} => Time
    #   * {Types::DescribeUserProfileResult#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_profile({
    #     user_arn: "UserArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_arn #=> String
    #   resp.display_name #=> String
    #   resp.email_address #=> String
    #   resp.ssh_public_key #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeUserProfile AWS API Documentation
    #
    # @overload describe_user_profile(params = {})
    # @param [Hash] params ({})
    def describe_user_profile(params = {}, options = {})
      req = build_request(:describe_user_profile, params)
      req.send_request(options)
    end

    # Removes a user from a project. Removing a user from a project also
    # removes the IAM policies from that user that allowed access to the
    # project and its resources. Disassociating a team member does not
    # remove that user's profile from AWS CodeStar. It does not remove the
    # user from IAM.
    #
    # @option params [required, String] :project_id
    #   The ID of the AWS CodeStar project from which you want to remove a
    #   team member.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the IAM user or group whom you want
    #   to remove from the project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_team_member({
    #     project_id: "ProjectId", # required
    #     user_arn: "UserArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DisassociateTeamMember AWS API Documentation
    #
    # @overload disassociate_team_member(params = {})
    # @param [Hash] params ({})
    def disassociate_team_member(params = {}, options = {})
      req = build_request(:disassociate_team_member, params)
      req.send_request(options)
    end

    # Lists all projects in AWS CodeStar associated with your AWS account.
    #
    # @option params [String] :next_token
    #   The continuation token to be used to return the next set of results,
    #   if the results cannot be returned in one response.
    #
    # @option params [Integer] :max_results
    #   The maximum amount of data that can be contained in a single set of
    #   results.
    #
    # @return [Types::ListProjectsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResult#projects #projects} => Array&lt;Types::ProjectSummary&gt;
    #   * {Types::ListProjectsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].project_id #=> String
    #   resp.projects[0].project_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Lists resources associated with a project in AWS CodeStar.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :next_token
    #   The continuation token for the next set of results, if the results
    #   cannot be returned in one response.
    #
    # @option params [Integer] :max_results
    #   The maximum amount of data that can be contained in a single set of
    #   results.
    #
    # @return [Types::ListResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResult#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::ListResourcesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     project_id: "ProjectId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Gets the tags for a project.
    #
    # @option params [required, String] :id
    #   The ID of the project to get tags for.
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @option params [Integer] :max_results
    #   Reserved for future use.
    #
    # @return [Types::ListTagsForProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForProjectResult#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ListTagsForProjectResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_project({
    #     id: "ProjectId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTagsForProject AWS API Documentation
    #
    # @overload list_tags_for_project(params = {})
    # @param [Hash] params ({})
    def list_tags_for_project(params = {}, options = {})
      req = build_request(:list_tags_for_project, params)
      req.send_request(options)
    end

    # Lists all team members associated with a project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project for which you want to list team members.
    #
    # @option params [String] :next_token
    #   The continuation token for the next set of results, if the results
    #   cannot be returned in one response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of team members you want returned in a response.
    #
    # @return [Types::ListTeamMembersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTeamMembersResult#team_members #team_members} => Array&lt;Types::TeamMember&gt;
    #   * {Types::ListTeamMembersResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_team_members({
    #     project_id: "ProjectId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.team_members #=> Array
    #   resp.team_members[0].user_arn #=> String
    #   resp.team_members[0].project_role #=> String
    #   resp.team_members[0].remote_access_allowed #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTeamMembers AWS API Documentation
    #
    # @overload list_team_members(params = {})
    # @param [Hash] params ({})
    def list_team_members(params = {}, options = {})
      req = build_request(:list_team_members, params)
      req.send_request(options)
    end

    # Lists all the user profiles configured for your AWS account in AWS
    # CodeStar.
    #
    # @option params [String] :next_token
    #   The continuation token for the next set of results, if the results
    #   cannot be returned in one response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a response.
    #
    # @return [Types::ListUserProfilesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserProfilesResult#user_profiles #user_profiles} => Array&lt;Types::UserProfileSummary&gt;
    #   * {Types::ListUserProfilesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_profiles({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_profiles #=> Array
    #   resp.user_profiles[0].user_arn #=> String
    #   resp.user_profiles[0].display_name #=> String
    #   resp.user_profiles[0].email_address #=> String
    #   resp.user_profiles[0].ssh_public_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListUserProfiles AWS API Documentation
    #
    # @overload list_user_profiles(params = {})
    # @param [Hash] params ({})
    def list_user_profiles(params = {}, options = {})
      req = build_request(:list_user_profiles, params)
      req.send_request(options)
    end

    # Adds tags to a project.
    #
    # @option params [required, String] :id
    #   The ID of the project you want to add a tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags you want to add to the project.
    #
    # @return [Types::TagProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagProjectResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_project({
    #     id: "ProjectId", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TagProject AWS API Documentation
    #
    # @overload tag_project(params = {})
    # @param [Hash] params ({})
    def tag_project(params = {}, options = {})
      req = build_request(:tag_project, params)
      req.send_request(options)
    end

    # Removes tags from a project.
    #
    # @option params [required, String] :id
    #   The ID of the project to remove tags from.
    #
    # @option params [required, Array<String>] :tags
    #   The tags to remove from the project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_project({
    #     id: "ProjectId", # required
    #     tags: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UntagProject AWS API Documentation
    #
    # @overload untag_project(params = {})
    # @param [Hash] params ({})
    def untag_project(params = {}, options = {})
      req = build_request(:untag_project, params)
      req.send_request(options)
    end

    # Updates a project in AWS CodeStar.
    #
    # @option params [required, String] :id
    #   The ID of the project you want to update.
    #
    # @option params [String] :name
    #   The name of the project you want to update.
    #
    # @option params [String] :description
    #   The description of the project, if any.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     id: "ProjectId", # required
    #     name: "ProjectName",
    #     description: "ProjectDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Updates a team member's attributes in an AWS CodeStar project. For
    # example, you can change a team member's role in the project, or
    # change whether they have remote access to project resources.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the user for whom you want to change
    #   team membership attributes.
    #
    # @option params [String] :project_role
    #   The role assigned to the user in the project. Project roles have
    #   different levels of access. For more information, see [Working with
    #   Teams][1] in the *AWS CodeStar User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html
    #
    # @option params [Boolean] :remote_access_allowed
    #   Whether a team member is allowed to remotely access project resources
    #   using the SSH public key associated with the user's profile. Even if
    #   this is set to True, the user must associate a public key with their
    #   profile before the user can access resources.
    #
    # @return [Types::UpdateTeamMemberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTeamMemberResult#user_arn #user_arn} => String
    #   * {Types::UpdateTeamMemberResult#project_role #project_role} => String
    #   * {Types::UpdateTeamMemberResult#remote_access_allowed #remote_access_allowed} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_team_member({
    #     project_id: "ProjectId", # required
    #     user_arn: "UserArn", # required
    #     project_role: "Role",
    #     remote_access_allowed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_arn #=> String
    #   resp.project_role #=> String
    #   resp.remote_access_allowed #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateTeamMember AWS API Documentation
    #
    # @overload update_team_member(params = {})
    # @param [Hash] params ({})
    def update_team_member(params = {}, options = {})
      req = build_request(:update_team_member, params)
      req.send_request(options)
    end

    # Updates a user's profile in AWS CodeStar. The user profile is not
    # project-specific. Information in the user profile is displayed
    # wherever the user's information appears to other users in AWS
    # CodeStar.
    #
    # @option params [required, String] :user_arn
    #   The name that will be displayed as the friendly name for the user in
    #   AWS CodeStar.
    #
    # @option params [String] :display_name
    #   The name that is displayed as the friendly name for the user in AWS
    #   CodeStar.
    #
    # @option params [String] :email_address
    #   The email address that is displayed as part of the user's profile in
    #   AWS CodeStar.
    #
    # @option params [String] :ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. If a
    #   project owner allows the user remote access to project resources, this
    #   public key will be used along with the user's private key for SSH
    #   access.
    #
    # @return [Types::UpdateUserProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserProfileResult#user_arn #user_arn} => String
    #   * {Types::UpdateUserProfileResult#display_name #display_name} => String
    #   * {Types::UpdateUserProfileResult#email_address #email_address} => String
    #   * {Types::UpdateUserProfileResult#ssh_public_key #ssh_public_key} => String
    #   * {Types::UpdateUserProfileResult#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateUserProfileResult#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_profile({
    #     user_arn: "UserArn", # required
    #     display_name: "UserProfileDisplayName",
    #     email_address: "Email",
    #     ssh_public_key: "SshPublicKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_arn #=> String
    #   resp.display_name #=> String
    #   resp.email_address #=> String
    #   resp.ssh_public_key #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateUserProfile AWS API Documentation
    #
    # @overload update_user_profile(params = {})
    # @param [Hash] params ({})
    def update_user_profile(params = {}, options = {})
      req = build_request(:update_user_profile, params)
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
      context[:gem_name] = 'aws-sdk-codestar'
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
