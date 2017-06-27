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

Aws::Plugins::GlobalConfiguration.add_identifier(:codebuild)

module Aws::CodeBuild
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :codebuild

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

    # Gets information about builds.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the builds.
    #
    # @return [Types::BatchGetBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetBuildsOutput#builds #builds} => Array&lt;Types::Build&gt;
    #   * {Types::BatchGetBuildsOutput#builds_not_found #builds_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_builds({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.builds #=> Array
    #   resp.builds[0].id #=> String
    #   resp.builds[0].arn #=> String
    #   resp.builds[0].start_time #=> Time
    #   resp.builds[0].end_time #=> Time
    #   resp.builds[0].current_phase #=> String
    #   resp.builds[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].source_version #=> String
    #   resp.builds[0].project_name #=> String
    #   resp.builds[0].phases #=> Array
    #   resp.builds[0].phases[0].phase_type #=> String, one of "SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.builds[0].phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].phases[0].start_time #=> Time
    #   resp.builds[0].phases[0].end_time #=> Time
    #   resp.builds[0].phases[0].duration_in_seconds #=> Integer
    #   resp.builds[0].phases[0].contexts #=> Array
    #   resp.builds[0].phases[0].contexts[0].status_code #=> String
    #   resp.builds[0].phases[0].contexts[0].message #=> String
    #   resp.builds[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3"
    #   resp.builds[0].source.location #=> String
    #   resp.builds[0].source.buildspec #=> String
    #   resp.builds[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.builds[0].source.auth.resource #=> String
    #   resp.builds[0].artifacts.location #=> String
    #   resp.builds[0].artifacts.sha256sum #=> String
    #   resp.builds[0].artifacts.md5sum #=> String
    #   resp.builds[0].environment.type #=> String, one of "LINUX_CONTAINER"
    #   resp.builds[0].environment.image #=> String
    #   resp.builds[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.builds[0].environment.environment_variables #=> Array
    #   resp.builds[0].environment.environment_variables[0].name #=> String
    #   resp.builds[0].environment.environment_variables[0].value #=> String
    #   resp.builds[0].environment.privileged_mode #=> Boolean
    #   resp.builds[0].logs.group_name #=> String
    #   resp.builds[0].logs.stream_name #=> String
    #   resp.builds[0].logs.deep_link #=> String
    #   resp.builds[0].timeout_in_minutes #=> Integer
    #   resp.builds[0].build_complete #=> Boolean
    #   resp.builds[0].initiator #=> String
    #   resp.builds_not_found #=> Array
    #   resp.builds_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuilds AWS API Documentation
    #
    # @overload batch_get_builds(params = {})
    # @param [Hash] params ({})
    def batch_get_builds(params = {}, options = {})
      req = build_request(:batch_get_builds, params)
      req.send_request(options)
    end

    # Gets information about build projects.
    #
    # @option params [required, Array<String>] :names
    #   The names of the build projects.
    #
    # @return [Types::BatchGetProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetProjectsOutput#projects #projects} => Array&lt;Types::Project&gt;
    #   * {Types::BatchGetProjectsOutput#projects_not_found #projects_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_projects({
    #     names: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].name #=> String
    #   resp.projects[0].arn #=> String
    #   resp.projects[0].description #=> String
    #   resp.projects[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3"
    #   resp.projects[0].source.location #=> String
    #   resp.projects[0].source.buildspec #=> String
    #   resp.projects[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.projects[0].source.auth.resource #=> String
    #   resp.projects[0].artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.projects[0].artifacts.location #=> String
    #   resp.projects[0].artifacts.path #=> String
    #   resp.projects[0].artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.projects[0].artifacts.name #=> String
    #   resp.projects[0].artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.projects[0].environment.type #=> String, one of "LINUX_CONTAINER"
    #   resp.projects[0].environment.image #=> String
    #   resp.projects[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.projects[0].environment.environment_variables #=> Array
    #   resp.projects[0].environment.environment_variables[0].name #=> String
    #   resp.projects[0].environment.environment_variables[0].value #=> String
    #   resp.projects[0].environment.privileged_mode #=> Boolean
    #   resp.projects[0].service_role #=> String
    #   resp.projects[0].timeout_in_minutes #=> Integer
    #   resp.projects[0].encryption_key #=> String
    #   resp.projects[0].tags #=> Array
    #   resp.projects[0].tags[0].key #=> String
    #   resp.projects[0].tags[0].value #=> String
    #   resp.projects[0].created #=> Time
    #   resp.projects[0].last_modified #=> Time
    #   resp.projects_not_found #=> Array
    #   resp.projects_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjects AWS API Documentation
    #
    # @overload batch_get_projects(params = {})
    # @param [Hash] params ({})
    def batch_get_projects(params = {}, options = {})
      req = build_request(:batch_get_projects, params)
      req.send_request(options)
    end

    # Creates a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    # @option params [String] :description
    #   A description that makes the build project easy to identify.
    #
    # @option params [required, Types::ProjectSource] :source
    #   Information about the build input source code for the build project.
    #
    # @option params [required, Types::ProjectArtifacts] :artifacts
    #   Information about the build output artifacts for the build project.
    #
    # @option params [required, Types::ProjectEnvironment] :environment
    #   Information about the build environment for the build project.
    #
    # @option params [String] :service_role
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   enables AWS CodeBuild to interact with dependent AWS services on
    #   behalf of the AWS account.
    #
    # @option params [Integer] :timeout_in_minutes
    #   How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait until timing out any build that has not been marked as completed.
    #   The default is 60 minutes.
    #
    # @option params [String] :encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK) to
    #   be used for encrypting the build output artifacts.
    #
    #   You can specify either the CMK's Amazon Resource Name (ARN) or, if
    #   available, the CMK's alias (using the format `alias/alias-name `).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #
    # @return [Types::CreateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectOutput#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     name: "ProjectName", # required
    #     description: "ProjectDescription",
    #     source: { # required
    #       type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3
    #       location: "String",
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       },
    #     },
    #     artifacts: { # required
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #     },
    #     environment: { # required
    #       type: "LINUX_CONTAINER", # required, accepts LINUX_CONTAINER
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #         },
    #       ],
    #       privileged_mode: false,
    #     },
    #     service_role: "NonEmptyString",
    #     timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.project.name #=> String
    #   resp.project.arn #=> String
    #   resp.project.description #=> String
    #   resp.project.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3"
    #   resp.project.source.location #=> String
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.artifacts.location #=> String
    #   resp.project.artifacts.path #=> String
    #   resp.project.artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.artifacts.name #=> String
    #   resp.project.artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.environment.type #=> String, one of "LINUX_CONTAINER"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
    #   resp.project.encryption_key #=> String
    #   resp.project.tags #=> Array
    #   resp.project.tags[0].key #=> String
    #   resp.project.tags[0].value #=> String
    #   resp.project.created #=> Time
    #   resp.project.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Deletes a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     name: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Gets a list of build IDs, with each build ID representing a single
    # build.
    #
    # @option params [String] :sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`\: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`\: List the build IDs in descending order by build ID.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuilds AWS API Documentation
    #
    # @overload list_builds(params = {})
    # @param [Hash] params ({})
    def list_builds(params = {}, options = {})
      req = build_request(:list_builds, params)
      req.send_request(options)
    end

    # Gets a list of build IDs for the specified build project, with each
    # build ID representing a single build.
    #
    # @option params [required, String] :project_name
    #   The name of the build project.
    #
    # @option params [String] :sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`\: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`\: List the build IDs in descending order by build ID.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsForProjectOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds_for_project({
    #     project_name: "NonEmptyString", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProject AWS API Documentation
    #
    # @overload list_builds_for_project(params = {})
    # @param [Hash] params ({})
    def list_builds_for_project(params = {}, options = {})
      req = build_request(:list_builds_for_project, params)
      req.send_request(options)
    end

    # Gets information about Docker images that are managed by AWS
    # CodeBuild.
    #
    # @return [Types::ListCuratedEnvironmentImagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCuratedEnvironmentImagesOutput#platforms #platforms} => Array&lt;Types::EnvironmentPlatform&gt;
    #
    # @example Response structure
    #
    #   resp.platforms #=> Array
    #   resp.platforms[0].platform #=> String, one of "DEBIAN", "AMAZON_LINUX", "UBUNTU"
    #   resp.platforms[0].languages #=> Array
    #   resp.platforms[0].languages[0].language #=> String, one of "JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "BASE"
    #   resp.platforms[0].languages[0].images #=> Array
    #   resp.platforms[0].languages[0].images[0].name #=> String
    #   resp.platforms[0].languages[0].images[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImages AWS API Documentation
    #
    # @overload list_curated_environment_images(params = {})
    # @param [Hash] params ({})
    def list_curated_environment_images(params = {}, options = {})
      req = build_request(:list_curated_environment_images, params)
      req.send_request(options)
    end

    # Gets a list of build project names, with each build project name
    # representing a single build project.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build project names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`\: List the build project names based on when each
    #     build project was created.
    #
    #   * `LAST_MODIFIED_TIME`\: List the build project names based on when
    #     information about each build project was last changed.
    #
    #   * `NAME`\: List the build project names based on each build project's
    #     name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #
    # @option params [String] :sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`\: List the build project names in ascending order.
    #
    #   * `DESCENDING`\: List the build project names in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list build project
    #   names.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsOutput#next_token #next_token} => String
    #   * {Types::ListProjectsOutput#projects #projects} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.projects #=> Array
    #   resp.projects[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Starts running a build.
    #
    # @option params [required, String] :project_name
    #   The name of the build project to start running a build.
    #
    # @option params [String] :source_version
    #   A version of the build input to be built, for this build only. If not
    #   specified, the latest version will be used. If specified, must be one
    #   of:
    #
    #   * For AWS CodeCommit or GitHub: the commit ID to use.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of the
    #     object representing the build input ZIP file to use.
    #
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   Build output artifact settings that override, for this build only, the
    #   latest ones already defined in the build project.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   A set of environment variables that overrides, for this build only,
    #   the latest ones already defined in the build project.
    #
    # @option params [String] :buildspec_override
    #   A build spec declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
    #
    # @option params [Integer] :timeout_in_minutes_override
    #   The number of build timeout minutes, from 5 to 480 (8 hours), that
    #   overrides, for this build only, the latest setting already defined in
    #   the build project.
    #
    # @return [Types::StartBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build({
    #     project_name: "NonEmptyString", # required
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #     },
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #       },
    #     ],
    #     buildspec_override: "String",
    #     timeout_in_minutes_override: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3"
    #   resp.build.source.location #=> String
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.environment.type #=> String, one of "LINUX_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuild AWS API Documentation
    #
    # @overload start_build(params = {})
    # @param [Hash] params ({})
    def start_build(params = {}, options = {})
      req = build_request(:start_build, params)
      req.send_request(options)
    end

    # Attempts to stop running a build.
    #
    # @option params [required, String] :id
    #   The ID of the build.
    #
    # @return [Types::StopBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3"
    #   resp.build.source.location #=> String
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.environment.type #=> String, one of "LINUX_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuild AWS API Documentation
    #
    # @overload stop_build(params = {})
    # @param [Hash] params ({})
    def stop_build(params = {}, options = {})
      req = build_request(:stop_build, params)
      req.send_request(options)
    end

    # Changes the settings of a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    #   <note markdown="1"> You cannot change a build project's name.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A new or replacement description of the build project.
    #
    # @option params [Types::ProjectSource] :source
    #   Information to be changed about the build input source code for the
    #   build project.
    #
    # @option params [Types::ProjectArtifacts] :artifacts
    #   Information to be changed about the build output artifacts for the
    #   build project.
    #
    # @option params [Types::ProjectEnvironment] :environment
    #   Information to be changed about the build environment for the build
    #   project.
    #
    # @option params [String] :service_role
    #   The replacement ARN of the AWS Identity and Access Management (IAM)
    #   role that enables AWS CodeBuild to interact with dependent AWS
    #   services on behalf of the AWS account.
    #
    # @option params [Integer] :timeout_in_minutes
    #   The replacement value in minutes, from 5 to 480 (8 hours), for AWS
    #   CodeBuild to wait before timing out any related build that did not get
    #   marked as completed.
    #
    # @option params [String] :encryption_key
    #   The replacement AWS Key Management Service (AWS KMS) customer master
    #   key (CMK) to be used for encrypting the build output artifacts.
    #
    #   You can specify either the CMK's Amazon Resource Name (ARN) or, if
    #   available, the CMK's alias (using the format `alias/alias-name `).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The replacement set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #
    # @return [Types::UpdateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectOutput#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     name: "NonEmptyString", # required
    #     description: "ProjectDescription",
    #     source: {
    #       type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3
    #       location: "String",
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       },
    #     },
    #     artifacts: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #     },
    #     environment: {
    #       type: "LINUX_CONTAINER", # required, accepts LINUX_CONTAINER
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #         },
    #       ],
    #       privileged_mode: false,
    #     },
    #     service_role: "NonEmptyString",
    #     timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.project.name #=> String
    #   resp.project.arn #=> String
    #   resp.project.description #=> String
    #   resp.project.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3"
    #   resp.project.source.location #=> String
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.artifacts.location #=> String
    #   resp.project.artifacts.path #=> String
    #   resp.project.artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.artifacts.name #=> String
    #   resp.project.artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.environment.type #=> String, one of "LINUX_CONTAINER"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
    #   resp.project.encryption_key #=> String
    #   resp.project.tags #=> Array
    #   resp.project.tags[0].key #=> String
    #   resp.project.tags[0].value #=> String
    #   resp.project.created #=> Time
    #   resp.project.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
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
      context[:gem_name] = 'aws-sdk-codebuild'
      context[:gem_version] = '1.0.0.rc8'
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
