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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticbeanstalk)

module Aws::ElasticBeanstalk
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :elasticbeanstalk

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Cancels in-progress environment configuration update or application
    # version deployment.
    #
    # @option params [String] :environment_id
    #   This specifies the ID of the environment with the in-progress update
    #   that you want to cancel.
    #
    # @option params [String] :environment_name
    #   This specifies the name of the environment with the in-progress update
    #   that you want to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To abort a deployment
    #
    #   # The following code aborts a running application version deployment for an environment named my-env:
    #
    #   resp = client.abort_environment_update({
    #     environment_name: "my-env", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_environment_update({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/AbortEnvironmentUpdate AWS API Documentation
    #
    # @overload abort_environment_update(params = {})
    # @param [Hash] params ({})
    def abort_environment_update(params = {}, options = {})
      req = build_request(:abort_environment_update, params)
      req.send_request(options)
    end

    # Applies a scheduled managed action immediately. A managed action can
    # be applied only if its status is `Scheduled`. Get the status and
    # action ID of a managed action with DescribeEnvironmentManagedActions.
    #
    # @option params [String] :environment_name
    #   The name of the target environment.
    #
    # @option params [String] :environment_id
    #   The environment ID of the target environment.
    #
    # @option params [required, String] :action_id
    #   The action ID of the scheduled managed action to execute.
    #
    # @return [Types::ApplyEnvironmentManagedActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplyEnvironmentManagedActionResult#action_id #action_id} => String
    #   * {Types::ApplyEnvironmentManagedActionResult#action_description #action_description} => String
    #   * {Types::ApplyEnvironmentManagedActionResult#action_type #action_type} => String
    #   * {Types::ApplyEnvironmentManagedActionResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_environment_managed_action({
    #     environment_name: "String",
    #     environment_id: "String",
    #     action_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_id #=> String
    #   resp.action_description #=> String
    #   resp.action_type #=> String, one of "InstanceRefresh", "PlatformUpdate", "Unknown"
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplyEnvironmentManagedAction AWS API Documentation
    #
    # @overload apply_environment_managed_action(params = {})
    # @param [Hash] params ({})
    def apply_environment_managed_action(params = {}, options = {})
      req = build_request(:apply_environment_managed_action, params)
      req.send_request(options)
    end

    # Checks if the specified CNAME is available.
    #
    # @option params [required, String] :cname_prefix
    #   The prefix used when this CNAME is reserved.
    #
    # @return [Types::CheckDNSAvailabilityResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckDNSAvailabilityResultMessage#available #available} => Boolean
    #   * {Types::CheckDNSAvailabilityResultMessage#fully_qualified_cname #fully_qualified_cname} => String
    #
    #
    # @example Example: To check the availability of a CNAME
    #
    #   # The following operation checks the availability of the subdomain my-cname:
    #
    #   resp = client.check_dns_availability({
    #     cname_prefix: "my-cname", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     available: true, 
    #     fully_qualified_cname: "my-cname.us-west-2.elasticbeanstalk.com", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_dns_availability({
    #     cname_prefix: "DNSCnamePrefix", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.available #=> Boolean
    #   resp.fully_qualified_cname #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CheckDNSAvailability AWS API Documentation
    #
    # @overload check_dns_availability(params = {})
    # @param [Hash] params ({})
    def check_dns_availability(params = {}, options = {})
      req = build_request(:check_dns_availability, params)
      req.send_request(options)
    end

    # Create or update a group of environments that each run a separate
    # component of a single application. Takes a list of version labels that
    # specify application source bundles for each of the environments to
    # create or update. The name of each environment and other required
    # information must be included in the source bundles in an environment
    # manifest named `env.yaml`. See [Compose Environments][1] for details.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html
    #
    # @option params [String] :application_name
    #   The name of the application to which the specified source bundles
    #   belong.
    #
    # @option params [String] :group_name
    #   The name of the group to which the target environments belong. Specify
    #   a group name only if the environment name defined in each target
    #   environment's manifest ends with a + (plus) character. See
    #   [Environment Manifest (env.yaml)][1] for details.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #
    # @option params [Array<String>] :version_labels
    #   A list of version labels, specifying one or more application source
    #   bundles that belong to the target application. Each source bundle must
    #   include an environment manifest that specifies the name of the
    #   environment and the name of the solution stack to use, and optionally
    #   can specify environment links to create.
    #
    # @return [Types::EnvironmentDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnvironmentDescriptionsMessage#environments #environments} => Array&lt;Types::EnvironmentDescription&gt;
    #   * {Types::EnvironmentDescriptionsMessage#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.compose_environments({
    #     application_name: "ApplicationName",
    #     group_name: "GroupName",
    #     version_labels: ["VersionLabel"],
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].environment_name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].application_name #=> String
    #   resp.environments[0].version_label #=> String
    #   resp.environments[0].solution_stack_name #=> String
    #   resp.environments[0].platform_arn #=> String
    #   resp.environments[0].template_name #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].endpoint_url #=> String
    #   resp.environments[0].cname #=> String
    #   resp.environments[0].date_created #=> Time
    #   resp.environments[0].date_updated #=> Time
    #   resp.environments[0].status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
    #   resp.environments[0].abortable_operation_in_progress #=> Boolean
    #   resp.environments[0].health #=> String, one of "Green", "Yellow", "Red", "Grey"
    #   resp.environments[0].health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"
    #   resp.environments[0].resources.load_balancer.load_balancer_name #=> String
    #   resp.environments[0].resources.load_balancer.domain #=> String
    #   resp.environments[0].resources.load_balancer.listeners #=> Array
    #   resp.environments[0].resources.load_balancer.listeners[0].protocol #=> String
    #   resp.environments[0].resources.load_balancer.listeners[0].port #=> Integer
    #   resp.environments[0].tier.name #=> String
    #   resp.environments[0].tier.type #=> String
    #   resp.environments[0].tier.version #=> String
    #   resp.environments[0].environment_links #=> Array
    #   resp.environments[0].environment_links[0].link_name #=> String
    #   resp.environments[0].environment_links[0].environment_name #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ComposeEnvironments AWS API Documentation
    #
    # @overload compose_environments(params = {})
    # @param [Hash] params ({})
    def compose_environments(params = {}, options = {})
      req = build_request(:compose_environments, params)
      req.send_request(options)
    end

    # Creates an application that has one configuration template named
    # `default` and no application versions.
    #
    # @option params [required, String] :application_name
    #   The name of the application.
    #
    #   Constraint: This name must be unique within your account. If the
    #   specified name already exists, the action returns an
    #   `InvalidParameterValue` error.
    #
    # @option params [String] :description
    #   Describes the application.
    #
    # @option params [Types::ApplicationResourceLifecycleConfig] :resource_lifecycle_config
    #   Specify an application resource lifecycle configuration to prevent
    #   your application from accumulating too many versions.
    #
    # @return [Types::ApplicationDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationDescriptionMessage#application #application} => Types::ApplicationDescription
    #
    #
    # @example Example: To create a new application
    #
    #   # The following operation creates a new application named my-app:
    #
    #   resp = client.create_application({
    #     application_name: "my-app", 
    #     description: "my application", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application: {
    #       application_name: "my-app", 
    #       configuration_templates: [
    #       ], 
    #       date_created: Time.parse("2015-02-12T18:32:21.181Z"), 
    #       date_updated: Time.parse("2015-02-12T18:32:21.181Z"), 
    #       description: "my application", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     application_name: "ApplicationName", # required
    #     description: "Description",
    #     resource_lifecycle_config: {
    #       service_role: "String",
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false,
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application.application_arn #=> String
    #   resp.application.application_name #=> String
    #   resp.application.description #=> String
    #   resp.application.date_created #=> Time
    #   resp.application.date_updated #=> Time
    #   resp.application.versions #=> Array
    #   resp.application.versions[0] #=> String
    #   resp.application.configuration_templates #=> Array
    #   resp.application.configuration_templates[0] #=> String
    #   resp.application.resource_lifecycle_config.service_role #=> String
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates an application version for the specified application. You can
    # create an application version from a source bundle in Amazon S3, a
    # commit in AWS CodeCommit, or the output of an AWS CodeBuild build as
    # follows:
    #
    # Specify a commit in an AWS CodeCommit repository with
    # `SourceBuildInformation`.
    #
    # Specify a build in an AWS CodeBuild with `SourceBuildInformation` and
    # `BuildConfiguration`.
    #
    # Specify a source bundle in S3 with `SourceBundle`
    #
    # Omit both `SourceBuildInformation` and `SourceBundle` to use the
    # default sample application.
    #
    # <note markdown="1"> Once you create an application version with a specified Amazon S3
    # bucket and key location, you cannot change that Amazon S3 location. If
    # you change the Amazon S3 location, you receive an exception when you
    # attempt to launch an environment from the application version.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application. If no application is found with this
    #   name, and `AutoCreateApplication` is `false`, returns an
    #   `InvalidParameterValue` error.
    #
    # @option params [required, String] :version_label
    #   A label identifying this version.
    #
    #   Constraint: Must be unique per application. If an application version
    #   already exists with this label for the specified application, AWS
    #   Elastic Beanstalk returns an `InvalidParameterValue` error.
    #
    # @option params [String] :description
    #   Describes this version.
    #
    # @option params [Types::SourceBuildInformation] :source_build_information
    #   Specify a commit in an AWS CodeCommit Git repository to use as the
    #   source code for the application version.
    #
    # @option params [Types::S3Location] :source_bundle
    #   The Amazon S3 bucket and key that identify the location of the source
    #   bundle for this version.
    #
    #   <note markdown="1"> The Amazon S3 bucket must be in the same region as the environment.
    #
    #    </note>
    #
    #   Specify a source bundle in S3 or a commit in an AWS CodeCommit
    #   repository (with `SourceBuildInformation`), but not both. If neither
    #   `SourceBundle` nor `SourceBuildInformation` are provided, Elastic
    #   Beanstalk uses a sample application.
    #
    # @option params [Types::BuildConfiguration] :build_configuration
    #   Settings for an AWS CodeBuild build.
    #
    # @option params [Boolean] :auto_create_application
    #   Set to `true` to create an application with the specified name if it
    #   doesn't already exist.
    #
    # @option params [Boolean] :process
    #   Pre-processes and validates the environment manifest (`env.yaml`) and
    #   configuration files (`*.config` files in the `.ebextensions` folder)
    #   in the source bundle. Validating configuration files can identify
    #   issues prior to deploying the application version to an environment.
    #
    #   You must turn processing on for application versions that you create
    #   using AWS CodeBuild or AWS CodeCommit. For application versions built
    #   from a source bundle in Amazon S3, processing is optional.
    #
    #   <note markdown="1"> The `Process` option validates Elastic Beanstalk configuration files.
    #   It doesn't validate your application's configuration files, like
    #   proxy server or Docker configuration.
    #
    #    </note>
    #
    # @return [Types::ApplicationVersionDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationVersionDescriptionMessage#application_version #application_version} => Types::ApplicationVersionDescription
    #
    #
    # @example Example: To create a new application
    #
    #   # The following operation creates a new version (v1) of an application named my-app:
    #
    #   resp = client.create_application_version({
    #     application_name: "my-app", 
    #     auto_create_application: true, 
    #     description: "my-app-v1", 
    #     process: true, 
    #     source_bundle: {
    #       s3_bucket: "my-bucket", 
    #       s3_key: "sample.war", 
    #     }, 
    #     version_label: "v1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_version: {
    #       application_name: "my-app", 
    #       date_created: Time.parse("2015-02-03T23:01:25.412Z"), 
    #       date_updated: Time.parse("2015-02-03T23:01:25.412Z"), 
    #       description: "my-app-v1", 
    #       source_bundle: {
    #         s3_bucket: "my-bucket", 
    #         s3_key: "sample.war", 
    #       }, 
    #       version_label: "v1", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_version({
    #     application_name: "ApplicationName", # required
    #     version_label: "VersionLabel", # required
    #     description: "Description",
    #     source_build_information: {
    #       source_type: "Git", # required, accepts Git, Zip
    #       source_repository: "CodeCommit", # required, accepts CodeCommit, S3
    #       source_location: "SourceLocation", # required
    #     },
    #     source_bundle: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #     },
    #     build_configuration: {
    #       artifact_name: "String",
    #       code_build_service_role: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #       image: "NonEmptyString", # required
    #       timeout_in_minutes: 1,
    #     },
    #     auto_create_application: false,
    #     process: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_version.application_version_arn #=> String
    #   resp.application_version.application_name #=> String
    #   resp.application_version.description #=> String
    #   resp.application_version.version_label #=> String
    #   resp.application_version.source_build_information.source_type #=> String, one of "Git", "Zip"
    #   resp.application_version.source_build_information.source_repository #=> String, one of "CodeCommit", "S3"
    #   resp.application_version.source_build_information.source_location #=> String
    #   resp.application_version.build_arn #=> String
    #   resp.application_version.source_bundle.s3_bucket #=> String
    #   resp.application_version.source_bundle.s3_key #=> String
    #   resp.application_version.date_created #=> Time
    #   resp.application_version.date_updated #=> Time
    #   resp.application_version.status #=> String, one of "Processed", "Unprocessed", "Failed", "Processing", "Building"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateApplicationVersion AWS API Documentation
    #
    # @overload create_application_version(params = {})
    # @param [Hash] params ({})
    def create_application_version(params = {}, options = {})
      req = build_request(:create_application_version, params)
      req.send_request(options)
    end

    # Creates a configuration template. Templates are associated with a
    # specific application and are used to deploy different versions of the
    # application with the same configuration settings.
    #
    # Templates aren't associated with any environment. The
    # `EnvironmentName` response element is always `null`.
    #
    # Related Topics
    #
    # * DescribeConfigurationOptions
    #
    # * DescribeConfigurationSettings
    #
    # * ListAvailableSolutionStacks
    #
    # @option params [required, String] :application_name
    #   The name of the application to associate with this configuration
    #   template. If no application is found with this name, AWS Elastic
    #   Beanstalk returns an `InvalidParameterValue` error.
    #
    # @option params [required, String] :template_name
    #   The name of the configuration template.
    #
    #   Constraint: This name must be unique per application.
    #
    #   Default: If a configuration template already exists with this name,
    #   AWS Elastic Beanstalk returns an `InvalidParameterValue` error.
    #
    # @option params [String] :solution_stack_name
    #   The name of the solution stack used by this configuration. The
    #   solution stack specifies the operating system, architecture, and
    #   application server for a configuration template. It determines the set
    #   of configuration options as well as the possible and default values.
    #
    #   Use ListAvailableSolutionStacks to obtain a list of available solution
    #   stacks.
    #
    #   A solution stack name or a source configuration parameter must be
    #   specified, otherwise AWS Elastic Beanstalk returns an
    #   `InvalidParameterValue` error.
    #
    #   If a solution stack name is not specified and the source configuration
    #   parameter is specified, AWS Elastic Beanstalk uses the same solution
    #   stack as the source configuration template.
    #
    # @option params [String] :platform_arn
    #   The ARN of the custom platform.
    #
    # @option params [Types::SourceConfiguration] :source_configuration
    #   If specified, AWS Elastic Beanstalk uses the configuration values from
    #   the specified configuration template to create a new configuration.
    #
    #   Values specified in the `OptionSettings` parameter of this call
    #   overrides any values obtained from the `SourceConfiguration`.
    #
    #   If no configuration template is found, returns an
    #   `InvalidParameterValue` error.
    #
    #   Constraint: If both the solution stack name parameter and the source
    #   configuration parameters are specified, the solution stack of the
    #   source configuration template must match the specified solution stack
    #   name or else AWS Elastic Beanstalk returns an
    #   `InvalidParameterCombination` error.
    #
    # @option params [String] :environment_id
    #   The ID of the environment used with this configuration template.
    #
    # @option params [String] :description
    #   Describes this configuration.
    #
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   If specified, AWS Elastic Beanstalk sets the specified configuration
    #   option to the requested value. The new value overrides the value
    #   obtained from the solution stack or the source configuration template.
    #
    # @return [Types::ConfigurationSettingsDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationSettingsDescription#solution_stack_name #solution_stack_name} => String
    #   * {Types::ConfigurationSettingsDescription#platform_arn #platform_arn} => String
    #   * {Types::ConfigurationSettingsDescription#application_name #application_name} => String
    #   * {Types::ConfigurationSettingsDescription#template_name #template_name} => String
    #   * {Types::ConfigurationSettingsDescription#description #description} => String
    #   * {Types::ConfigurationSettingsDescription#environment_name #environment_name} => String
    #   * {Types::ConfigurationSettingsDescription#deployment_status #deployment_status} => String
    #   * {Types::ConfigurationSettingsDescription#date_created #date_created} => Time
    #   * {Types::ConfigurationSettingsDescription#date_updated #date_updated} => Time
    #   * {Types::ConfigurationSettingsDescription#option_settings #option_settings} => Array&lt;Types::ConfigurationOptionSetting&gt;
    #
    #
    # @example Example: To create a configuration template
    #
    #   # The following operation creates a configuration template named my-app-v1 from the settings applied to an environment
    #   # with the id e-rpqsewtp2j:
    #
    #   resp = client.create_configuration_template({
    #     application_name: "my-app", 
    #     environment_id: "e-rpqsewtp2j", 
    #     template_name: "my-app-v1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_name: "my-app", 
    #     date_created: Time.parse("2015-08-12T18:40:39Z"), 
    #     date_updated: Time.parse("2015-08-12T18:40:39Z"), 
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #     template_name: "my-app-v1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_template({
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName", # required
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     source_configuration: {
    #       application_name: "ApplicationName",
    #       template_name: "ConfigurationTemplateName",
    #     },
    #     environment_id: "EnvironmentId",
    #     description: "Description",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_stack_name #=> String
    #   resp.platform_arn #=> String
    #   resp.application_name #=> String
    #   resp.template_name #=> String
    #   resp.description #=> String
    #   resp.environment_name #=> String
    #   resp.deployment_status #=> String, one of "deployed", "pending", "failed"
    #   resp.date_created #=> Time
    #   resp.date_updated #=> Time
    #   resp.option_settings #=> Array
    #   resp.option_settings[0].resource_name #=> String
    #   resp.option_settings[0].namespace #=> String
    #   resp.option_settings[0].option_name #=> String
    #   resp.option_settings[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateConfigurationTemplate AWS API Documentation
    #
    # @overload create_configuration_template(params = {})
    # @param [Hash] params ({})
    def create_configuration_template(params = {}, options = {})
      req = build_request(:create_configuration_template, params)
      req.send_request(options)
    end

    # Launches an environment for the specified application using the
    # specified configuration.
    #
    # @option params [required, String] :application_name
    #   The name of the application that contains the version to be deployed.
    #
    #   If no application is found with this name, `CreateEnvironment` returns
    #   an `InvalidParameterValue` error.
    #
    # @option params [String] :environment_name
    #   A unique name for the deployment environment. Used in the application
    #   URL.
    #
    #   Constraint: Must be from 4 to 40 characters in length. The name can
    #   contain only letters, numbers, and hyphens. It cannot start or end
    #   with a hyphen. This name must be unique within a region in your
    #   account. If the specified name already exists in the region, AWS
    #   Elastic Beanstalk returns an `InvalidParameterValue` error.
    #
    #   Default: If the CNAME parameter is not specified, the environment name
    #   becomes part of the CNAME, and therefore part of the visible URL for
    #   your application.
    #
    # @option params [String] :group_name
    #   The name of the group to which the target environment belongs. Specify
    #   a group name only if the environment's name is specified in an
    #   environment manifest and not with the environment name parameter. See
    #   [Environment Manifest (env.yaml)][1] for details.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #
    # @option params [String] :description
    #   Describes this environment.
    #
    # @option params [String] :cname_prefix
    #   If specified, the environment attempts to use this value as the prefix
    #   for the CNAME. If not specified, the CNAME is generated automatically
    #   by appending a random alphanumeric string to the environment name.
    #
    # @option params [Types::EnvironmentTier] :tier
    #   This specifies the tier to use for creating this environment.
    #
    # @option params [Array<Types::Tag>] :tags
    #   This specifies the tags applied to resources in the environment.
    #
    # @option params [String] :version_label
    #   The name of the application version to deploy.
    #
    #   If the specified application has no associated application versions,
    #   AWS Elastic Beanstalk `UpdateEnvironment` returns an
    #   `InvalidParameterValue` error.
    #
    #   Default: If not specified, AWS Elastic Beanstalk attempts to launch
    #   the sample application in the container.
    #
    # @option params [String] :template_name
    #   The name of the configuration template to use in deployment. If no
    #   configuration template is found with this name, AWS Elastic Beanstalk
    #   returns an `InvalidParameterValue` error.
    #
    # @option params [String] :solution_stack_name
    #   This is an alternative to specifying a template name. If specified,
    #   AWS Elastic Beanstalk sets the configuration values to the default
    #   values associated with the specified solution stack.
    #
    #   For a list of current solution stacks, see [Elastic Beanstalk
    #   Supported Platforms][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html
    #
    # @option params [String] :platform_arn
    #   The ARN of the platform.
    #
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   If specified, AWS Elastic Beanstalk sets the specified configuration
    #   options to the requested value in the configuration set for the new
    #   environment. These override the values obtained from the solution
    #   stack or the configuration template.
    #
    # @option params [Array<Types::OptionSpecification>] :options_to_remove
    #   A list of custom user-defined configuration options to remove from the
    #   configuration set for this new environment.
    #
    # @return [Types::EnvironmentDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnvironmentDescription#environment_name #environment_name} => String
    #   * {Types::EnvironmentDescription#environment_id #environment_id} => String
    #   * {Types::EnvironmentDescription#application_name #application_name} => String
    #   * {Types::EnvironmentDescription#version_label #version_label} => String
    #   * {Types::EnvironmentDescription#solution_stack_name #solution_stack_name} => String
    #   * {Types::EnvironmentDescription#platform_arn #platform_arn} => String
    #   * {Types::EnvironmentDescription#template_name #template_name} => String
    #   * {Types::EnvironmentDescription#description #description} => String
    #   * {Types::EnvironmentDescription#endpoint_url #endpoint_url} => String
    #   * {Types::EnvironmentDescription#cname #cname} => String
    #   * {Types::EnvironmentDescription#date_created #date_created} => Time
    #   * {Types::EnvironmentDescription#date_updated #date_updated} => Time
    #   * {Types::EnvironmentDescription#status #status} => String
    #   * {Types::EnvironmentDescription#abortable_operation_in_progress #abortable_operation_in_progress} => Boolean
    #   * {Types::EnvironmentDescription#health #health} => String
    #   * {Types::EnvironmentDescription#health_status #health_status} => String
    #   * {Types::EnvironmentDescription#resources #resources} => Types::EnvironmentResourcesDescription
    #   * {Types::EnvironmentDescription#tier #tier} => Types::EnvironmentTier
    #   * {Types::EnvironmentDescription#environment_links #environment_links} => Array&lt;Types::EnvironmentLink&gt;
    #   * {Types::EnvironmentDescription#environment_arn #environment_arn} => String
    #
    #
    # @example Example: To create a new environment for an application
    #
    #   # The following operation creates a new environment for version v1 of a java application named my-app:
    #
    #   resp = client.create_environment({
    #     application_name: "my-app", 
    #     cname_prefix: "my-app", 
    #     environment_name: "my-env", 
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #     version_label: "v1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_name: "my-app", 
    #     cname: "my-app.elasticbeanstalk.com", 
    #     date_created: Time.parse("2015-02-03T23:04:54.479Z"), 
    #     date_updated: Time.parse("2015-02-03T23:04:54.479Z"), 
    #     environment_id: "e-izqpassy4h", 
    #     environment_name: "my-env", 
    #     health: "Grey", 
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #     status: "Launching", 
    #     tier: {
    #       name: "WebServer", 
    #       type: "Standard", 
    #       version: " ", 
    #     }, 
    #     version_label: "v1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     application_name: "ApplicationName", # required
    #     environment_name: "EnvironmentName",
    #     group_name: "GroupName",
    #     description: "Description",
    #     cname_prefix: "DNSCnamePrefix",
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     version_label: "VersionLabel",
    #     template_name: "ConfigurationTemplateName",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       },
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_name #=> String
    #   resp.environment_id #=> String
    #   resp.application_name #=> String
    #   resp.version_label #=> String
    #   resp.solution_stack_name #=> String
    #   resp.platform_arn #=> String
    #   resp.template_name #=> String
    #   resp.description #=> String
    #   resp.endpoint_url #=> String
    #   resp.cname #=> String
    #   resp.date_created #=> Time
    #   resp.date_updated #=> Time
    #   resp.status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
    #   resp.abortable_operation_in_progress #=> Boolean
    #   resp.health #=> String, one of "Green", "Yellow", "Red", "Grey"
    #   resp.health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"
    #   resp.resources.load_balancer.load_balancer_name #=> String
    #   resp.resources.load_balancer.domain #=> String
    #   resp.resources.load_balancer.listeners #=> Array
    #   resp.resources.load_balancer.listeners[0].protocol #=> String
    #   resp.resources.load_balancer.listeners[0].port #=> Integer
    #   resp.tier.name #=> String
    #   resp.tier.type #=> String
    #   resp.tier.version #=> String
    #   resp.environment_links #=> Array
    #   resp.environment_links[0].link_name #=> String
    #   resp.environment_links[0].environment_name #=> String
    #   resp.environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Create a new version of your custom platform.
    #
    # @option params [required, String] :platform_name
    #   The name of your custom platform.
    #
    # @option params [required, String] :platform_version
    #   The number, such as 1.0.2, for the new platform version.
    #
    # @option params [required, Types::S3Location] :platform_definition_bundle
    #   The location of the platform definition archive in Amazon S3.
    #
    # @option params [String] :environment_name
    #   The name of the builder environment.
    #
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   The configuration option settings to apply to the builder environment.
    #
    # @return [Types::CreatePlatformVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlatformVersionResult#platform_summary #platform_summary} => Types::PlatformSummary
    #   * {Types::CreatePlatformVersionResult#builder #builder} => Types::Builder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_platform_version({
    #     platform_name: "PlatformName", # required
    #     platform_version: "PlatformVersion", # required
    #     platform_definition_bundle: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #     },
    #     environment_name: "EnvironmentName",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.platform_summary.platform_arn #=> String
    #   resp.platform_summary.platform_owner #=> String
    #   resp.platform_summary.platform_status #=> String, one of "Creating", "Failed", "Ready", "Deleting", "Deleted"
    #   resp.platform_summary.platform_category #=> String
    #   resp.platform_summary.operating_system_name #=> String
    #   resp.platform_summary.operating_system_version #=> String
    #   resp.platform_summary.supported_tier_list #=> Array
    #   resp.platform_summary.supported_tier_list[0] #=> String
    #   resp.platform_summary.supported_addon_list #=> Array
    #   resp.platform_summary.supported_addon_list[0] #=> String
    #   resp.builder.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreatePlatformVersion AWS API Documentation
    #
    # @overload create_platform_version(params = {})
    # @param [Hash] params ({})
    def create_platform_version(params = {}, options = {})
      req = build_request(:create_platform_version, params)
      req.send_request(options)
    end

    # Creates a bucket in Amazon S3 to store application versions, logs, and
    # other files used by Elastic Beanstalk environments. The Elastic
    # Beanstalk console and EB CLI call this API the first time you create
    # an environment in a region. If the storage location already exists,
    # `CreateStorageLocation` still returns the bucket name but does not
    # create a new bucket.
    #
    # @return [Types::CreateStorageLocationResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStorageLocationResultMessage#s3_bucket #s3_bucket} => String
    #
    #
    # @example Example: To create a new environment for an application
    #
    #   # The following operation creates a new environment for version v1 of a java application named my-app:
    #
    #   resp = client.create_storage_location({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     s3_bucket: "elasticbeanstalk-us-west-2-0123456789012", 
    #   }
    #
    # @example Response structure
    #
    #   resp.s3_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateStorageLocation AWS API Documentation
    #
    # @overload create_storage_location(params = {})
    # @param [Hash] params ({})
    def create_storage_location(params = {}, options = {})
      req = build_request(:create_storage_location, params)
      req.send_request(options)
    end

    # Deletes the specified application along with all associated versions
    # and configurations. The application versions will not be deleted from
    # your Amazon S3 bucket.
    #
    # <note markdown="1"> You cannot delete an application that has a running environment.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application to delete.
    #
    # @option params [Boolean] :terminate_env_by_force
    #   When set to true, running environments will be terminated before
    #   deleting the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an application
    #
    #   # The following operation deletes an application named my-app:
    #
    #   resp = client.delete_application({
    #     application_name: "my-app", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_name: "ApplicationName", # required
    #     terminate_env_by_force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes the specified version from the specified application.
    #
    # <note markdown="1"> You cannot delete an application version that is associated with a
    # running environment.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application to which the version belongs.
    #
    # @option params [required, String] :version_label
    #   The label of the version to delete.
    #
    # @option params [Boolean] :delete_source_bundle
    #   Set to `true` to delete the source bundle from your storage bucket.
    #   Otherwise, the application version is deleted only from Elastic
    #   Beanstalk and the source bundle remains in Amazon S3.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an application version
    #
    #   # The following operation deletes an application version named 22a0-stage-150819_182129 for an application named my-app:
    #
    #   resp = client.delete_application_version({
    #     application_name: "my-app", 
    #     delete_source_bundle: true, 
    #     version_label: "22a0-stage-150819_182129", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_version({
    #     application_name: "ApplicationName", # required
    #     version_label: "VersionLabel", # required
    #     delete_source_bundle: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteApplicationVersion AWS API Documentation
    #
    # @overload delete_application_version(params = {})
    # @param [Hash] params ({})
    def delete_application_version(params = {}, options = {})
      req = build_request(:delete_application_version, params)
      req.send_request(options)
    end

    # Deletes the specified configuration template.
    #
    # <note markdown="1"> When you launch an environment using a configuration template, the
    # environment gets a copy of the template. You can delete or modify the
    # environment's copy of the template without affecting the running
    # environment.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application to delete the configuration template from.
    #
    # @option params [required, String] :template_name
    #   The name of the configuration template to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a configuration template
    #
    #   # The following operation deletes a configuration template named my-template for an application named my-app:
    #
    #   resp = client.delete_configuration_template({
    #     application_name: "my-app", 
    #     template_name: "my-template", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_template({
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteConfigurationTemplate AWS API Documentation
    #
    # @overload delete_configuration_template(params = {})
    # @param [Hash] params ({})
    def delete_configuration_template(params = {}, options = {})
      req = build_request(:delete_configuration_template, params)
      req.send_request(options)
    end

    # Deletes the draft configuration associated with the running
    # environment.
    #
    # Updating a running environment with any configuration changes creates
    # a draft configuration set. You can get the draft configuration using
    # DescribeConfigurationSettings while the update is in progress or if
    # the update fails. The `DeploymentStatus` for the draft configuration
    # indicates whether the deployment is in process or has failed. The
    # draft configuration remains in existence until it is deleted with this
    # action.
    #
    # @option params [required, String] :application_name
    #   The name of the application the environment is associated with.
    #
    # @option params [required, String] :environment_name
    #   The name of the environment to delete the draft configuration from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a draft configuration
    #
    #   # The following operation deletes a draft configuration for an environment named my-env:
    #
    #   resp = client.delete_environment_configuration({
    #     application_name: "my-app", 
    #     environment_name: "my-env", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_configuration({
    #     application_name: "ApplicationName", # required
    #     environment_name: "EnvironmentName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteEnvironmentConfiguration AWS API Documentation
    #
    # @overload delete_environment_configuration(params = {})
    # @param [Hash] params ({})
    def delete_environment_configuration(params = {}, options = {})
      req = build_request(:delete_environment_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified version of a custom platform.
    #
    # @option params [String] :platform_arn
    #   The ARN of the version of the custom platform.
    #
    # @return [Types::DeletePlatformVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePlatformVersionResult#platform_summary #platform_summary} => Types::PlatformSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_platform_version({
    #     platform_arn: "PlatformArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.platform_summary.platform_arn #=> String
    #   resp.platform_summary.platform_owner #=> String
    #   resp.platform_summary.platform_status #=> String, one of "Creating", "Failed", "Ready", "Deleting", "Deleted"
    #   resp.platform_summary.platform_category #=> String
    #   resp.platform_summary.operating_system_name #=> String
    #   resp.platform_summary.operating_system_version #=> String
    #   resp.platform_summary.supported_tier_list #=> Array
    #   resp.platform_summary.supported_tier_list[0] #=> String
    #   resp.platform_summary.supported_addon_list #=> Array
    #   resp.platform_summary.supported_addon_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeletePlatformVersion AWS API Documentation
    #
    # @overload delete_platform_version(params = {})
    # @param [Hash] params ({})
    def delete_platform_version(params = {}, options = {})
      req = build_request(:delete_platform_version, params)
      req.send_request(options)
    end

    # Returns attributes related to AWS Elastic Beanstalk that are
    # associated with the calling AWS account.
    #
    # The result currently has one set of attributes—resource quotas.
    #
    # @return [Types::DescribeAccountAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResult#resource_quotas #resource_quotas} => Types::ResourceQuotas
    #
    # @example Response structure
    #
    #   resp.resource_quotas.application_quota.maximum #=> Integer
    #   resp.resource_quotas.application_version_quota.maximum #=> Integer
    #   resp.resource_quotas.environment_quota.maximum #=> Integer
    #   resp.resource_quotas.configuration_template_quota.maximum #=> Integer
    #   resp.resource_quotas.custom_platform_quota.maximum #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Retrieve a list of application versions.
    #
    # @option params [String] :application_name
    #   Specify an application name to show only application versions for that
    #   application.
    #
    # @option params [Array<String>] :version_labels
    #   Specify a version label to show a specific application version.
    #
    # @option params [Integer] :max_records
    #   For a paginated request. Specify a maximum number of application
    #   versions to include in each response.
    #
    #   If no `MaxRecords` is specified, all available application versions
    #   are retrieved in a single response.
    #
    # @option params [String] :next_token
    #   For a paginated request. Specify a token from a previous response page
    #   to retrieve the next response page. All other parameter values must be
    #   identical to the ones specified in the initial request.
    #
    #   If no `NextToken` is specified, the first page is retrieved.
    #
    # @return [Types::ApplicationVersionDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationVersionDescriptionsMessage#application_versions #application_versions} => Array&lt;Types::ApplicationVersionDescription&gt;
    #   * {Types::ApplicationVersionDescriptionsMessage#next_token #next_token} => String
    #
    #
    # @example Example: To view information about an application version
    #
    #   # The following operation retrieves information about an application version labeled v2:
    #
    #   resp = client.describe_application_versions({
    #     application_name: "my-app", 
    #     version_labels: [
    #       "v2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_versions: [
    #       {
    #         application_name: "my-app", 
    #         date_created: Time.parse("2015-07-23T01:32:26.079Z"), 
    #         date_updated: Time.parse("2015-07-23T01:32:26.079Z"), 
    #         description: "update cover page", 
    #         source_bundle: {
    #           s3_bucket: "elasticbeanstalk-us-west-2-015321684451", 
    #           s3_key: "my-app/5026-stage-150723_224258.war", 
    #         }, 
    #         version_label: "v2", 
    #       }, 
    #       {
    #         application_name: "my-app", 
    #         date_created: Time.parse("2015-07-23T22:26:10.816Z"), 
    #         date_updated: Time.parse("2015-07-23T22:26:10.816Z"), 
    #         description: "initial version", 
    #         source_bundle: {
    #           s3_bucket: "elasticbeanstalk-us-west-2-015321684451", 
    #           s3_key: "my-app/5026-stage-150723_222618.war", 
    #         }, 
    #         version_label: "v1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_versions({
    #     application_name: "ApplicationName",
    #     version_labels: ["VersionLabel"],
    #     max_records: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_versions #=> Array
    #   resp.application_versions[0].application_version_arn #=> String
    #   resp.application_versions[0].application_name #=> String
    #   resp.application_versions[0].description #=> String
    #   resp.application_versions[0].version_label #=> String
    #   resp.application_versions[0].source_build_information.source_type #=> String, one of "Git", "Zip"
    #   resp.application_versions[0].source_build_information.source_repository #=> String, one of "CodeCommit", "S3"
    #   resp.application_versions[0].source_build_information.source_location #=> String
    #   resp.application_versions[0].build_arn #=> String
    #   resp.application_versions[0].source_bundle.s3_bucket #=> String
    #   resp.application_versions[0].source_bundle.s3_key #=> String
    #   resp.application_versions[0].date_created #=> Time
    #   resp.application_versions[0].date_updated #=> Time
    #   resp.application_versions[0].status #=> String, one of "Processed", "Unprocessed", "Failed", "Processing", "Building"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeApplicationVersions AWS API Documentation
    #
    # @overload describe_application_versions(params = {})
    # @param [Hash] params ({})
    def describe_application_versions(params = {}, options = {})
      req = build_request(:describe_application_versions, params)
      req.send_request(options)
    end

    # Returns the descriptions of existing applications.
    #
    # @option params [Array<String>] :application_names
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to only include those with the specified names.
    #
    # @return [Types::ApplicationDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationDescriptionsMessage#applications #applications} => Array&lt;Types::ApplicationDescription&gt;
    #
    #
    # @example Example: To view a list of applications
    #
    #   # The following operation retrieves information about applications in the current region:
    #
    #   resp = client.describe_applications({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     applications: [
    #       {
    #         application_name: "ruby", 
    #         configuration_templates: [
    #         ], 
    #         date_created: Time.parse("2015-08-13T21:05:44.376Z"), 
    #         date_updated: Time.parse("2015-08-13T21:05:44.376Z"), 
    #         versions: [
    #           "Sample Application", 
    #         ], 
    #       }, 
    #       {
    #         application_name: "pythonsample", 
    #         configuration_templates: [
    #         ], 
    #         date_created: Time.parse("2015-08-13T19:05:43.637Z"), 
    #         date_updated: Time.parse("2015-08-13T19:05:43.637Z"), 
    #         description: "Application created from the EB CLI using \"eb init\"", 
    #         versions: [
    #           "Sample Application", 
    #         ], 
    #       }, 
    #       {
    #         application_name: "nodejs-example", 
    #         configuration_templates: [
    #         ], 
    #         date_created: Time.parse("2015-08-06T17:50:02.486Z"), 
    #         date_updated: Time.parse("2015-08-06T17:50:02.486Z"), 
    #         versions: [
    #           "add elasticache", 
    #           "First Release", 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applications({
    #     application_names: ["ApplicationName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].application_arn #=> String
    #   resp.applications[0].application_name #=> String
    #   resp.applications[0].description #=> String
    #   resp.applications[0].date_created #=> Time
    #   resp.applications[0].date_updated #=> Time
    #   resp.applications[0].versions #=> Array
    #   resp.applications[0].versions[0] #=> String
    #   resp.applications[0].configuration_templates #=> Array
    #   resp.applications[0].configuration_templates[0] #=> String
    #   resp.applications[0].resource_lifecycle_config.service_role #=> String
    #   resp.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeApplications AWS API Documentation
    #
    # @overload describe_applications(params = {})
    # @param [Hash] params ({})
    def describe_applications(params = {}, options = {})
      req = build_request(:describe_applications, params)
      req.send_request(options)
    end

    # Describes the configuration options that are used in a particular
    # configuration template or environment, or that a specified solution
    # stack defines. The description includes the values the options, their
    # default values, and an indication of the required action on a running
    # environment if an option value is changed.
    #
    # @option params [String] :application_name
    #   The name of the application associated with the configuration template
    #   or environment. Only needed if you want to describe the configuration
    #   options associated with either the configuration template or
    #   environment.
    #
    # @option params [String] :template_name
    #   The name of the configuration template whose configuration options you
    #   want to describe.
    #
    # @option params [String] :environment_name
    #   The name of the environment whose configuration options you want to
    #   describe.
    #
    # @option params [String] :solution_stack_name
    #   The name of the solution stack whose configuration options you want to
    #   describe.
    #
    # @option params [String] :platform_arn
    #   The ARN of the custom platform.
    #
    # @option params [Array<Types::OptionSpecification>] :options
    #   If specified, restricts the descriptions to only the specified
    #   options.
    #
    # @return [Types::ConfigurationOptionsDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationOptionsDescription#solution_stack_name #solution_stack_name} => String
    #   * {Types::ConfigurationOptionsDescription#platform_arn #platform_arn} => String
    #   * {Types::ConfigurationOptionsDescription#options #options} => Array&lt;Types::ConfigurationOptionDescription&gt;
    #
    #
    # @example Example: To view configuration options for an environment
    #
    #   # The following operation retrieves descriptions of all available configuration options for an environment named my-env:
    #
    #   resp = client.describe_configuration_options({
    #     application_name: "my-app", 
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     options: [
    #       {
    #         change_severity: "NoInterruption", 
    #         default_value: "30", 
    #         max_value: 300, 
    #         min_value: 5, 
    #         name: "Interval", 
    #         namespace: "aws:elb:healthcheck", 
    #         user_defined: false, 
    #         value_type: "Scalar", 
    #       }, 
    #       {
    #         change_severity: "NoInterruption", 
    #         default_value: "2000000", 
    #         min_value: 0, 
    #         name: "LowerThreshold", 
    #         namespace: "aws:autoscaling:trigger", 
    #         user_defined: false, 
    #         value_type: "Scalar", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_options({
    #     application_name: "ApplicationName",
    #     template_name: "ConfigurationTemplateName",
    #     environment_name: "EnvironmentName",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     options: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_stack_name #=> String
    #   resp.platform_arn #=> String
    #   resp.options #=> Array
    #   resp.options[0].namespace #=> String
    #   resp.options[0].name #=> String
    #   resp.options[0].default_value #=> String
    #   resp.options[0].change_severity #=> String
    #   resp.options[0].user_defined #=> Boolean
    #   resp.options[0].value_type #=> String, one of "Scalar", "List"
    #   resp.options[0].value_options #=> Array
    #   resp.options[0].value_options[0] #=> String
    #   resp.options[0].min_value #=> Integer
    #   resp.options[0].max_value #=> Integer
    #   resp.options[0].max_length #=> Integer
    #   resp.options[0].regex.pattern #=> String
    #   resp.options[0].regex.label #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeConfigurationOptions AWS API Documentation
    #
    # @overload describe_configuration_options(params = {})
    # @param [Hash] params ({})
    def describe_configuration_options(params = {}, options = {})
      req = build_request(:describe_configuration_options, params)
      req.send_request(options)
    end

    # Returns a description of the settings for the specified configuration
    # set, that is, either a configuration template or the configuration set
    # associated with a running environment.
    #
    # When describing the settings for the configuration set associated with
    # a running environment, it is possible to receive two sets of setting
    # descriptions. One is the deployed configuration set, and the other is
    # a draft configuration of an environment that is either in the process
    # of deployment or that failed to deploy.
    #
    # Related Topics
    #
    # * DeleteEnvironmentConfiguration
    #
    # ^
    #
    # @option params [required, String] :application_name
    #   The application for the environment or configuration template.
    #
    # @option params [String] :template_name
    #   The name of the configuration template to describe.
    #
    #   Conditional: You must specify either this parameter or an
    #   EnvironmentName, but not both. If you specify both, AWS Elastic
    #   Beanstalk returns an `InvalidParameterCombination` error. If you do
    #   not specify either, AWS Elastic Beanstalk returns a
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment to describe.
    #
    #   Condition: You must specify either this or a TemplateName, but not
    #   both. If you specify both, AWS Elastic Beanstalk returns an
    #   `InvalidParameterCombination` error. If you do not specify either, AWS
    #   Elastic Beanstalk returns `MissingRequiredParameter` error.
    #
    # @return [Types::ConfigurationSettingsDescriptions] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationSettingsDescriptions#configuration_settings #configuration_settings} => Array&lt;Types::ConfigurationSettingsDescription&gt;
    #
    #
    # @example Example: To view configurations settings for an environment
    #
    #   # The following operation retrieves configuration settings for an environment named my-env:
    #
    #   resp = client.describe_configuration_settings({
    #     application_name: "my-app", 
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_settings: [
    #       {
    #         application_name: "my-app", 
    #         date_created: Time.parse("2015-08-13T19:16:25Z"), 
    #         date_updated: Time.parse("2015-08-13T23:30:07Z"), 
    #         deployment_status: "deployed", 
    #         description: "Environment created from the EB CLI using \"eb create\"", 
    #         environment_name: "my-env", 
    #         option_settings: [
    #           {
    #             namespace: "aws:autoscaling:asg", 
    #             option_name: "Availability Zones", 
    #             resource_name: "AWSEBAutoScalingGroup", 
    #             value: "Any", 
    #           }, 
    #           {
    #             namespace: "aws:autoscaling:asg", 
    #             option_name: "Cooldown", 
    #             resource_name: "AWSEBAutoScalingGroup", 
    #             value: "360", 
    #           }, 
    #           {
    #             namespace: "aws:elb:policies", 
    #             option_name: "ConnectionDrainingTimeout", 
    #             resource_name: "AWSEBLoadBalancer", 
    #             value: "20", 
    #           }, 
    #           {
    #             namespace: "aws:elb:policies", 
    #             option_name: "ConnectionSettingIdleTimeout", 
    #             resource_name: "AWSEBLoadBalancer", 
    #             value: "60", 
    #           }, 
    #         ], 
    #         solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_settings({
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName",
    #     environment_name: "EnvironmentName",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_settings #=> Array
    #   resp.configuration_settings[0].solution_stack_name #=> String
    #   resp.configuration_settings[0].platform_arn #=> String
    #   resp.configuration_settings[0].application_name #=> String
    #   resp.configuration_settings[0].template_name #=> String
    #   resp.configuration_settings[0].description #=> String
    #   resp.configuration_settings[0].environment_name #=> String
    #   resp.configuration_settings[0].deployment_status #=> String, one of "deployed", "pending", "failed"
    #   resp.configuration_settings[0].date_created #=> Time
    #   resp.configuration_settings[0].date_updated #=> Time
    #   resp.configuration_settings[0].option_settings #=> Array
    #   resp.configuration_settings[0].option_settings[0].resource_name #=> String
    #   resp.configuration_settings[0].option_settings[0].namespace #=> String
    #   resp.configuration_settings[0].option_settings[0].option_name #=> String
    #   resp.configuration_settings[0].option_settings[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeConfigurationSettings AWS API Documentation
    #
    # @overload describe_configuration_settings(params = {})
    # @param [Hash] params ({})
    def describe_configuration_settings(params = {}, options = {})
      req = build_request(:describe_configuration_settings, params)
      req.send_request(options)
    end

    # Returns information about the overall health of the specified
    # environment. The **DescribeEnvironmentHealth** operation is only
    # available with AWS Elastic Beanstalk Enhanced Health.
    #
    # @option params [String] :environment_name
    #   Specify the environment by name.
    #
    #   You must specify either this or an EnvironmentName, or both.
    #
    # @option params [String] :environment_id
    #   Specify the environment by ID.
    #
    #   You must specify either this or an EnvironmentName, or both.
    #
    # @option params [Array<String>] :attribute_names
    #   Specify the response elements to return. To retrieve all attributes,
    #   set to `All`. If no attribute names are specified, returns the name of
    #   the environment.
    #
    # @return [Types::DescribeEnvironmentHealthResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentHealthResult#environment_name #environment_name} => String
    #   * {Types::DescribeEnvironmentHealthResult#health_status #health_status} => String
    #   * {Types::DescribeEnvironmentHealthResult#status #status} => String
    #   * {Types::DescribeEnvironmentHealthResult#color #color} => String
    #   * {Types::DescribeEnvironmentHealthResult#causes #causes} => Array&lt;String&gt;
    #   * {Types::DescribeEnvironmentHealthResult#application_metrics #application_metrics} => Types::ApplicationMetrics
    #   * {Types::DescribeEnvironmentHealthResult#instances_health #instances_health} => Types::InstanceHealthSummary
    #   * {Types::DescribeEnvironmentHealthResult#refreshed_at #refreshed_at} => Time
    #
    #
    # @example Example: To view environment health
    #
    #   # The following operation retrieves overall health information for an environment named my-env:
    #
    #   resp = client.describe_environment_health({
    #     attribute_names: [
    #       "All", 
    #     ], 
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_metrics: {
    #       duration: 10, 
    #       latency: {
    #         p10: 0.001, 
    #         p50: 0.001, 
    #         p75: 0.002, 
    #         p85: 0.003, 
    #         p90: 0.003, 
    #         p95: 0.004, 
    #         p99: 0.004, 
    #         p999: 0.004, 
    #       }, 
    #       request_count: 45, 
    #       status_codes: {
    #         status_2xx: 45, 
    #         status_3xx: 0, 
    #         status_4xx: 0, 
    #         status_5xx: 0, 
    #       }, 
    #     }, 
    #     causes: [
    #     ], 
    #     color: "Green", 
    #     environment_name: "my-env", 
    #     health_status: "Ok", 
    #     instances_health: {
    #       degraded: 0, 
    #       info: 0, 
    #       no_data: 0, 
    #       ok: 1, 
    #       pending: 0, 
    #       severe: 0, 
    #       unknown: 0, 
    #       warning: 0, 
    #     }, 
    #     refreshed_at: Time.parse("2015-08-20T21:09:18Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_health({
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     attribute_names: ["Status"], # accepts Status, Color, Causes, ApplicationMetrics, InstancesHealth, All, HealthStatus, RefreshedAt
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_name #=> String
    #   resp.health_status #=> String
    #   resp.status #=> String, one of "Green", "Yellow", "Red", "Grey"
    #   resp.color #=> String
    #   resp.causes #=> Array
    #   resp.causes[0] #=> String
    #   resp.application_metrics.duration #=> Integer
    #   resp.application_metrics.request_count #=> Integer
    #   resp.application_metrics.status_codes.status_2xx #=> Integer
    #   resp.application_metrics.status_codes.status_3xx #=> Integer
    #   resp.application_metrics.status_codes.status_4xx #=> Integer
    #   resp.application_metrics.status_codes.status_5xx #=> Integer
    #   resp.application_metrics.latency.p999 #=> Float
    #   resp.application_metrics.latency.p99 #=> Float
    #   resp.application_metrics.latency.p95 #=> Float
    #   resp.application_metrics.latency.p90 #=> Float
    #   resp.application_metrics.latency.p85 #=> Float
    #   resp.application_metrics.latency.p75 #=> Float
    #   resp.application_metrics.latency.p50 #=> Float
    #   resp.application_metrics.latency.p10 #=> Float
    #   resp.instances_health.no_data #=> Integer
    #   resp.instances_health.unknown #=> Integer
    #   resp.instances_health.pending #=> Integer
    #   resp.instances_health.ok #=> Integer
    #   resp.instances_health.info #=> Integer
    #   resp.instances_health.warning #=> Integer
    #   resp.instances_health.degraded #=> Integer
    #   resp.instances_health.severe #=> Integer
    #   resp.refreshed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentHealth AWS API Documentation
    #
    # @overload describe_environment_health(params = {})
    # @param [Hash] params ({})
    def describe_environment_health(params = {}, options = {})
      req = build_request(:describe_environment_health, params)
      req.send_request(options)
    end

    # Lists an environment's completed and failed managed actions.
    #
    # @option params [String] :environment_id
    #   The environment ID of the target environment.
    #
    # @option params [String] :environment_name
    #   The name of the target environment.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous request.
    #
    # @option params [Integer] :max_items
    #   The maximum number of items to return for a single request.
    #
    # @return [Types::DescribeEnvironmentManagedActionHistoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentManagedActionHistoryResult#managed_action_history_items #managed_action_history_items} => Array&lt;Types::ManagedActionHistoryItem&gt;
    #   * {Types::DescribeEnvironmentManagedActionHistoryResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_managed_action_history({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     next_token: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_action_history_items #=> Array
    #   resp.managed_action_history_items[0].action_id #=> String
    #   resp.managed_action_history_items[0].action_type #=> String, one of "InstanceRefresh", "PlatformUpdate", "Unknown"
    #   resp.managed_action_history_items[0].action_description #=> String
    #   resp.managed_action_history_items[0].failure_type #=> String, one of "UpdateCancelled", "CancellationFailed", "RollbackFailed", "RollbackSuccessful", "InternalFailure", "InvalidEnvironmentState", "PermissionsError"
    #   resp.managed_action_history_items[0].status #=> String, one of "Completed", "Failed", "Unknown"
    #   resp.managed_action_history_items[0].failure_description #=> String
    #   resp.managed_action_history_items[0].executed_time #=> Time
    #   resp.managed_action_history_items[0].finished_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActionHistory AWS API Documentation
    #
    # @overload describe_environment_managed_action_history(params = {})
    # @param [Hash] params ({})
    def describe_environment_managed_action_history(params = {}, options = {})
      req = build_request(:describe_environment_managed_action_history, params)
      req.send_request(options)
    end

    # Lists an environment's upcoming and in-progress managed actions.
    #
    # @option params [String] :environment_name
    #   The name of the target environment.
    #
    # @option params [String] :environment_id
    #   The environment ID of the target environment.
    #
    # @option params [String] :status
    #   To show only actions with a particular status, specify a status.
    #
    # @return [Types::DescribeEnvironmentManagedActionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentManagedActionsResult#managed_actions #managed_actions} => Array&lt;Types::ManagedAction&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_managed_actions({
    #     environment_name: "String",
    #     environment_id: "String",
    #     status: "Scheduled", # accepts Scheduled, Pending, Running, Unknown
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_actions #=> Array
    #   resp.managed_actions[0].action_id #=> String
    #   resp.managed_actions[0].action_description #=> String
    #   resp.managed_actions[0].action_type #=> String, one of "InstanceRefresh", "PlatformUpdate", "Unknown"
    #   resp.managed_actions[0].status #=> String, one of "Scheduled", "Pending", "Running", "Unknown"
    #   resp.managed_actions[0].window_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActions AWS API Documentation
    #
    # @overload describe_environment_managed_actions(params = {})
    # @param [Hash] params ({})
    def describe_environment_managed_actions(params = {}, options = {})
      req = build_request(:describe_environment_managed_actions, params)
      req.send_request(options)
    end

    # Returns AWS resources for this environment.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to retrieve AWS resource usage data.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment to retrieve AWS resource usage data.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @return [Types::EnvironmentResourceDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnvironmentResourceDescriptionsMessage#environment_resources #environment_resources} => Types::EnvironmentResourceDescription
    #
    #
    # @example Example: To view information about the AWS resources in your environment
    #
    #   # The following operation retrieves information about resources in an environment named my-env:
    #
    #   resp = client.describe_environment_resources({
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment_resources: {
    #       auto_scaling_groups: [
    #         {
    #           name: "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingGroup-QSB2ZO88SXZT", 
    #         }, 
    #       ], 
    #       environment_name: "my-env", 
    #       instances: [
    #         {
    #           id: "i-0c91c786", 
    #         }, 
    #       ], 
    #       launch_configurations: [
    #         {
    #           name: "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingLaunchConfiguration-1UUVQIBC96TQ2", 
    #         }, 
    #       ], 
    #       load_balancers: [
    #         {
    #           name: "awseb-e-q-AWSEBLoa-1EEPZ0K98BIF0", 
    #         }, 
    #       ], 
    #       queues: [
    #       ], 
    #       triggers: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_resources({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_resources.environment_name #=> String
    #   resp.environment_resources.auto_scaling_groups #=> Array
    #   resp.environment_resources.auto_scaling_groups[0].name #=> String
    #   resp.environment_resources.instances #=> Array
    #   resp.environment_resources.instances[0].id #=> String
    #   resp.environment_resources.launch_configurations #=> Array
    #   resp.environment_resources.launch_configurations[0].name #=> String
    #   resp.environment_resources.load_balancers #=> Array
    #   resp.environment_resources.load_balancers[0].name #=> String
    #   resp.environment_resources.triggers #=> Array
    #   resp.environment_resources.triggers[0].name #=> String
    #   resp.environment_resources.queues #=> Array
    #   resp.environment_resources.queues[0].name #=> String
    #   resp.environment_resources.queues[0].url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentResources AWS API Documentation
    #
    # @overload describe_environment_resources(params = {})
    # @param [Hash] params ({})
    def describe_environment_resources(params = {}, options = {})
      req = build_request(:describe_environment_resources, params)
      req.send_request(options)
    end

    # Returns descriptions for existing environments.
    #
    # @option params [String] :application_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that are associated with this
    #   application.
    #
    # @option params [String] :version_label
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that are associated with this
    #   application version.
    #
    # @option params [Array<String>] :environment_ids
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that have the specified IDs.
    #
    # @option params [Array<String>] :environment_names
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that have the specified names.
    #
    # @option params [Boolean] :include_deleted
    #   Indicates whether to include deleted environments:
    #
    #   `true`\: Environments that have been deleted after
    #   `IncludedDeletedBackTo` are displayed.
    #
    #   `false`\: Do not include deleted environments.
    #
    # @option params [Time,DateTime,Date,Integer,String] :included_deleted_back_to
    #   If specified when `IncludeDeleted` is set to `true`, then environments
    #   deleted after this date are displayed.
    #
    # @option params [Integer] :max_records
    #   For a paginated request. Specify a maximum number of environments to
    #   include in each response.
    #
    #   If no `MaxRecords` is specified, all available environments are
    #   retrieved in a single response.
    #
    # @option params [String] :next_token
    #   For a paginated request. Specify a token from a previous response page
    #   to retrieve the next response page. All other parameter values must be
    #   identical to the ones specified in the initial request.
    #
    #   If no `NextToken` is specified, the first page is retrieved.
    #
    # @return [Types::EnvironmentDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnvironmentDescriptionsMessage#environments #environments} => Array&lt;Types::EnvironmentDescription&gt;
    #   * {Types::EnvironmentDescriptionsMessage#next_token #next_token} => String
    #
    #
    # @example Example: To view information about an environment
    #
    #   # The following operation retrieves information about an environment named my-env:
    #
    #   resp = client.describe_environments({
    #     environment_names: [
    #       "my-env", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environments: [
    #       {
    #         abortable_operation_in_progress: false, 
    #         application_name: "my-app", 
    #         cname: "my-env.elasticbeanstalk.com", 
    #         date_created: Time.parse("2015-08-07T20:48:49.599Z"), 
    #         date_updated: Time.parse("2015-08-12T18:16:55.019Z"), 
    #         endpoint_url: "awseb-e-w-AWSEBLoa-1483140XB0Q4L-109QXY8121.us-west-2.elb.amazonaws.com", 
    #         environment_id: "e-rpqsewtp2j", 
    #         environment_name: "my-env", 
    #         health: "Green", 
    #         solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #         status: "Ready", 
    #         tier: {
    #           name: "WebServer", 
    #           type: "Standard", 
    #           version: " ", 
    #         }, 
    #         version_label: "7f58-stage-150812_025409", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environments({
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     environment_ids: ["EnvironmentId"],
    #     environment_names: ["EnvironmentName"],
    #     include_deleted: false,
    #     included_deleted_back_to: Time.now,
    #     max_records: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].environment_name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].application_name #=> String
    #   resp.environments[0].version_label #=> String
    #   resp.environments[0].solution_stack_name #=> String
    #   resp.environments[0].platform_arn #=> String
    #   resp.environments[0].template_name #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].endpoint_url #=> String
    #   resp.environments[0].cname #=> String
    #   resp.environments[0].date_created #=> Time
    #   resp.environments[0].date_updated #=> Time
    #   resp.environments[0].status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
    #   resp.environments[0].abortable_operation_in_progress #=> Boolean
    #   resp.environments[0].health #=> String, one of "Green", "Yellow", "Red", "Grey"
    #   resp.environments[0].health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"
    #   resp.environments[0].resources.load_balancer.load_balancer_name #=> String
    #   resp.environments[0].resources.load_balancer.domain #=> String
    #   resp.environments[0].resources.load_balancer.listeners #=> Array
    #   resp.environments[0].resources.load_balancer.listeners[0].protocol #=> String
    #   resp.environments[0].resources.load_balancer.listeners[0].port #=> Integer
    #   resp.environments[0].tier.name #=> String
    #   resp.environments[0].tier.type #=> String
    #   resp.environments[0].tier.version #=> String
    #   resp.environments[0].environment_links #=> Array
    #   resp.environments[0].environment_links[0].link_name #=> String
    #   resp.environments[0].environment_links[0].environment_name #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironments AWS API Documentation
    #
    # @overload describe_environments(params = {})
    # @param [Hash] params ({})
    def describe_environments(params = {}, options = {})
      req = build_request(:describe_environments, params)
      req.send_request(options)
    end

    # Returns list of event descriptions matching criteria up to the last 6
    # weeks.
    #
    # <note markdown="1"> This action returns the most recent 1,000 events from the specified
    # `NextToken`.
    #
    #  </note>
    #
    # @option params [String] :application_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those associated with this application.
    #
    # @option params [String] :version_label
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those associated with this application version.
    #
    # @option params [String] :template_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those that are associated with this environment
    #   configuration.
    #
    # @option params [String] :environment_id
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those associated with this environment.
    #
    # @option params [String] :environment_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those associated with this environment.
    #
    # @option params [String] :platform_arn
    #   The ARN of the version of the custom platform.
    #
    # @option params [String] :request_id
    #   If specified, AWS Elastic Beanstalk restricts the described events to
    #   include only those associated with this request ID.
    #
    # @option params [String] :severity
    #   If specified, limits the events returned from this call to include
    #   only those with the specified severity or higher.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those that occur on or after this time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those that occur up to, but not including, the
    #   `EndTime`.
    #
    # @option params [Integer] :max_records
    #   Specifies the maximum number of events that can be returned, beginning
    #   with the most recent event.
    #
    # @option params [String] :next_token
    #   Pagination token. If specified, the events return the next batch of
    #   results.
    #
    # @return [Types::EventDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventDescriptionsMessage#events #events} => Array&lt;Types::EventDescription&gt;
    #   * {Types::EventDescriptionsMessage#next_token #next_token} => String
    #
    #
    # @example Example: To view events for an environment
    #
    #   # The following operation retrieves events for an environment named my-env:
    #
    #   resp = client.describe_events({
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     events: [
    #       {
    #         application_name: "my-app", 
    #         environment_name: "my-env", 
    #         event_date: Time.parse("2015-08-20T07:06:53.535Z"), 
    #         message: "Environment health has transitioned from Info to Ok.", 
    #         severity: "INFO", 
    #       }, 
    #       {
    #         application_name: "my-app", 
    #         environment_name: "my-env", 
    #         event_date: Time.parse("2015-08-20T07:06:02.049Z"), 
    #         message: "Environment update completed successfully.", 
    #         request_id: "b7f3960b-4709-11e5-ba1e-07e16200da41", 
    #         severity: "INFO", 
    #       }, 
    #       {
    #         application_name: "my-app", 
    #         environment_name: "my-env", 
    #         event_date: Time.parse("2015-08-13T19:16:27.561Z"), 
    #         message: "Using elasticbeanstalk-us-west-2-012445113685 as Amazon S3 storage bucket for environment data.", 
    #         request_id: "ca8dfbf6-41ef-11e5-988b-651aa638f46b", 
    #         severity: "INFO", 
    #       }, 
    #       {
    #         application_name: "my-app", 
    #         environment_name: "my-env", 
    #         event_date: Time.parse("2015-08-13T19:16:26.581Z"), 
    #         message: "createEnvironment is starting.", 
    #         request_id: "cdfba8f6-41ef-11e5-988b-65638f41aa6b", 
    #         severity: "INFO", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     template_name: "ConfigurationTemplateName",
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     platform_arn: "PlatformArn",
    #     request_id: "RequestId",
    #     severity: "TRACE", # accepts TRACE, DEBUG, INFO, WARN, ERROR, FATAL
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_records: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_date #=> Time
    #   resp.events[0].message #=> String
    #   resp.events[0].application_name #=> String
    #   resp.events[0].version_label #=> String
    #   resp.events[0].template_name #=> String
    #   resp.events[0].environment_name #=> String
    #   resp.events[0].platform_arn #=> String
    #   resp.events[0].request_id #=> String
    #   resp.events[0].severity #=> String, one of "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Retrieves detailed information about the health of instances in your
    # AWS Elastic Beanstalk. This operation requires [enhanced health
    # reporting][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html
    #
    # @option params [String] :environment_name
    #   Specify the AWS Elastic Beanstalk environment by name.
    #
    # @option params [String] :environment_id
    #   Specify the AWS Elastic Beanstalk environment by ID.
    #
    # @option params [Array<String>] :attribute_names
    #   Specifies the response elements you wish to receive. To retrieve all
    #   attributes, set to `All`. If no attribute names are specified, returns
    #   a list of instances.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous call.
    #
    # @return [Types::DescribeInstancesHealthResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancesHealthResult#instance_health_list #instance_health_list} => Array&lt;Types::SingleInstanceHealth&gt;
    #   * {Types::DescribeInstancesHealthResult#refreshed_at #refreshed_at} => Time
    #   * {Types::DescribeInstancesHealthResult#next_token #next_token} => String
    #
    #
    # @example Example: To view environment health
    #
    #   # The following operation retrieves health information for instances in an environment named my-env:
    #
    #   resp = client.describe_instances_health({
    #     attribute_names: [
    #       "All", 
    #     ], 
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_health_list: [
    #       {
    #         application_metrics: {
    #           duration: 10, 
    #           latency: {
    #             p10: 0, 
    #             p50: 0.001, 
    #             p75: 0.002, 
    #             p85: 0.003, 
    #             p90: 0.004, 
    #             p95: 0.005, 
    #             p99: 0.006, 
    #             p999: 0.006, 
    #           }, 
    #           request_count: 48, 
    #           status_codes: {
    #             status_2xx: 47, 
    #             status_3xx: 0, 
    #             status_4xx: 1, 
    #             status_5xx: 0, 
    #           }, 
    #         }, 
    #         causes: [
    #         ], 
    #         color: "Green", 
    #         health_status: "Ok", 
    #         instance_id: "i-08691cc7", 
    #         launched_at: Time.parse("2015-08-13T19:17:09Z"), 
    #         system: {
    #           cpu_utilization: {
    #             io_wait: 0.2, 
    #             irq: 0, 
    #             idle: 97.8, 
    #             nice: 0.1, 
    #             soft_irq: 0.1, 
    #             system: 0.3, 
    #             user: 1.5, 
    #           }, 
    #           load_average: [
    #             0, 
    #             0.02, 
    #             0.05, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #     refreshed_at: Time.parse("2015-08-20T21:09:08Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances_health({
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     attribute_names: ["HealthStatus"], # accepts HealthStatus, Color, Causes, ApplicationMetrics, RefreshedAt, LaunchedAt, System, Deployment, AvailabilityZone, InstanceType, All
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_health_list #=> Array
    #   resp.instance_health_list[0].instance_id #=> String
    #   resp.instance_health_list[0].health_status #=> String
    #   resp.instance_health_list[0].color #=> String
    #   resp.instance_health_list[0].causes #=> Array
    #   resp.instance_health_list[0].causes[0] #=> String
    #   resp.instance_health_list[0].launched_at #=> Time
    #   resp.instance_health_list[0].application_metrics.duration #=> Integer
    #   resp.instance_health_list[0].application_metrics.request_count #=> Integer
    #   resp.instance_health_list[0].application_metrics.status_codes.status_2xx #=> Integer
    #   resp.instance_health_list[0].application_metrics.status_codes.status_3xx #=> Integer
    #   resp.instance_health_list[0].application_metrics.status_codes.status_4xx #=> Integer
    #   resp.instance_health_list[0].application_metrics.status_codes.status_5xx #=> Integer
    #   resp.instance_health_list[0].application_metrics.latency.p999 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p99 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p95 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p90 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p85 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p75 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p50 #=> Float
    #   resp.instance_health_list[0].application_metrics.latency.p10 #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.user #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.nice #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.system #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.idle #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.io_wait #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.irq #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.soft_irq #=> Float
    #   resp.instance_health_list[0].system.cpu_utilization.privileged #=> Float
    #   resp.instance_health_list[0].system.load_average #=> Array
    #   resp.instance_health_list[0].system.load_average[0] #=> Float
    #   resp.instance_health_list[0].deployment.version_label #=> String
    #   resp.instance_health_list[0].deployment.deployment_id #=> Integer
    #   resp.instance_health_list[0].deployment.status #=> String
    #   resp.instance_health_list[0].deployment.deployment_time #=> Time
    #   resp.instance_health_list[0].availability_zone #=> String
    #   resp.instance_health_list[0].instance_type #=> String
    #   resp.refreshed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeInstancesHealth AWS API Documentation
    #
    # @overload describe_instances_health(params = {})
    # @param [Hash] params ({})
    def describe_instances_health(params = {}, options = {})
      req = build_request(:describe_instances_health, params)
      req.send_request(options)
    end

    # Describes the version of the platform.
    #
    # @option params [String] :platform_arn
    #   The ARN of the version of the platform.
    #
    # @return [Types::DescribePlatformVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlatformVersionResult#platform_description #platform_description} => Types::PlatformDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_platform_version({
    #     platform_arn: "PlatformArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.platform_description.platform_arn #=> String
    #   resp.platform_description.platform_owner #=> String
    #   resp.platform_description.platform_name #=> String
    #   resp.platform_description.platform_version #=> String
    #   resp.platform_description.solution_stack_name #=> String
    #   resp.platform_description.platform_status #=> String, one of "Creating", "Failed", "Ready", "Deleting", "Deleted"
    #   resp.platform_description.date_created #=> Time
    #   resp.platform_description.date_updated #=> Time
    #   resp.platform_description.platform_category #=> String
    #   resp.platform_description.description #=> String
    #   resp.platform_description.maintainer #=> String
    #   resp.platform_description.operating_system_name #=> String
    #   resp.platform_description.operating_system_version #=> String
    #   resp.platform_description.programming_languages #=> Array
    #   resp.platform_description.programming_languages[0].name #=> String
    #   resp.platform_description.programming_languages[0].version #=> String
    #   resp.platform_description.frameworks #=> Array
    #   resp.platform_description.frameworks[0].name #=> String
    #   resp.platform_description.frameworks[0].version #=> String
    #   resp.platform_description.custom_ami_list #=> Array
    #   resp.platform_description.custom_ami_list[0].virtualization_type #=> String
    #   resp.platform_description.custom_ami_list[0].image_id #=> String
    #   resp.platform_description.supported_tier_list #=> Array
    #   resp.platform_description.supported_tier_list[0] #=> String
    #   resp.platform_description.supported_addon_list #=> Array
    #   resp.platform_description.supported_addon_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribePlatformVersion AWS API Documentation
    #
    # @overload describe_platform_version(params = {})
    # @param [Hash] params ({})
    def describe_platform_version(params = {}, options = {})
      req = build_request(:describe_platform_version, params)
      req.send_request(options)
    end

    # Returns a list of the available solution stack names, with the public
    # version first and then in reverse chronological order.
    #
    # @return [Types::ListAvailableSolutionStacksResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableSolutionStacksResultMessage#solution_stacks #solution_stacks} => Array&lt;String&gt;
    #   * {Types::ListAvailableSolutionStacksResultMessage#solution_stack_details #solution_stack_details} => Array&lt;Types::SolutionStackDescription&gt;
    #
    #
    # @example Example: To view solution stacks
    #
    #   # The following operation lists solution stacks for all currently available platform configurations and any that you have
    #   # used in the past:
    #
    #   resp = client.list_available_solution_stacks({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     solution_stack_details: [
    #       {
    #         permitted_file_types: [
    #           "zip", 
    #         ], 
    #         solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Node.js", 
    #       }, 
    #     ], 
    #     solution_stacks: [
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Node.js", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.6", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.5", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.4", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Python 3.4", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Python 2.7", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Python", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Puma)", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Passenger Standalone)", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Puma)", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Passenger Standalone)", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Puma)", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Passenger Standalone)", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 1.9.3", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 7", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 6", 
    #       "64bit Windows Server Core 2012 R2 running IIS 8.5", 
    #       "64bit Windows Server 2012 R2 running IIS 8.5", 
    #       "64bit Windows Server 2012 running IIS 8", 
    #       "64bit Windows Server 2008 R2 running IIS 7.5", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Docker 1.6.2", 
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Multi-container Docker 1.6.2 (Generic)", 
    #       "64bit Debian jessie v2.0.0 running GlassFish 4.1 Java 8 (Preconfigured - Docker)", 
    #       "64bit Debian jessie v2.0.0 running GlassFish 4.0 Java 7 (Preconfigured - Docker)", 
    #       "64bit Debian jessie v2.0.0 running Go 1.4 (Preconfigured - Docker)", 
    #       "64bit Debian jessie v2.0.0 running Go 1.3 (Preconfigured - Docker)", 
    #       "64bit Debian jessie v2.0.0 running Python 3.4 (Preconfigured - Docker)", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.solution_stacks #=> Array
    #   resp.solution_stacks[0] #=> String
    #   resp.solution_stack_details #=> Array
    #   resp.solution_stack_details[0].solution_stack_name #=> String
    #   resp.solution_stack_details[0].permitted_file_types #=> Array
    #   resp.solution_stack_details[0].permitted_file_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListAvailableSolutionStacks AWS API Documentation
    #
    # @overload list_available_solution_stacks(params = {})
    # @param [Hash] params ({})
    def list_available_solution_stacks(params = {}, options = {})
      req = build_request(:list_available_solution_stacks, params)
      req.send_request(options)
    end

    # Lists the available platforms.
    #
    # @option params [Array<Types::PlatformFilter>] :filters
    #   List only the platforms where the platform member value relates to one
    #   of the supplied values.
    #
    # @option params [Integer] :max_records
    #   The maximum number of platform values returned in one call.
    #
    # @option params [String] :next_token
    #   The starting index into the remaining list of platforms. Use the
    #   `NextToken` value from a previous `ListPlatformVersion` call.
    #
    # @return [Types::ListPlatformVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlatformVersionsResult#platform_summary_list #platform_summary_list} => Array&lt;Types::PlatformSummary&gt;
    #   * {Types::ListPlatformVersionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_platform_versions({
    #     filters: [
    #       {
    #         type: "PlatformFilterType",
    #         operator: "PlatformFilterOperator",
    #         values: ["PlatformFilterValue"],
    #       },
    #     ],
    #     max_records: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.platform_summary_list #=> Array
    #   resp.platform_summary_list[0].platform_arn #=> String
    #   resp.platform_summary_list[0].platform_owner #=> String
    #   resp.platform_summary_list[0].platform_status #=> String, one of "Creating", "Failed", "Ready", "Deleting", "Deleted"
    #   resp.platform_summary_list[0].platform_category #=> String
    #   resp.platform_summary_list[0].operating_system_name #=> String
    #   resp.platform_summary_list[0].operating_system_version #=> String
    #   resp.platform_summary_list[0].supported_tier_list #=> Array
    #   resp.platform_summary_list[0].supported_tier_list[0] #=> String
    #   resp.platform_summary_list[0].supported_addon_list #=> Array
    #   resp.platform_summary_list[0].supported_addon_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListPlatformVersions AWS API Documentation
    #
    # @overload list_platform_versions(params = {})
    # @param [Hash] params ({})
    def list_platform_versions(params = {}, options = {})
      req = build_request(:list_platform_versions, params)
      req.send_request(options)
    end

    # Returns the tags applied to an AWS Elastic Beanstalk resource. The
    # response contains a list of tag key-value pairs.
    #
    # Currently, Elastic Beanstalk only supports tagging of Elastic
    # Beanstalk environments. For details about environment tagging, see
    # [Tagging Resources in Your Elastic Beanstalk Environment][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resouce for which a tag list is
    #   requested.
    #
    #   Must be the ARN of an Elastic Beanstalk environment.
    #
    # @return [Types::ResourceTagsDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResourceTagsDescriptionMessage#resource_arn #resource_arn} => String
    #   * {Types::ResourceTagsDescriptionMessage#resource_tags #resource_tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Deletes and recreates all of the AWS resources (for example: the Auto
    # Scaling group, load balancer, etc.) for a specified environment and
    # forces a restart.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to rebuild.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment to rebuild.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To rebuild an environment
    #
    #   # The following operation terminates and recreates the resources in an environment named my-env:
    #
    #   resp = client.rebuild_environment({
    #     environment_name: "my-env", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebuild_environment({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RebuildEnvironment AWS API Documentation
    #
    # @overload rebuild_environment(params = {})
    # @param [Hash] params ({})
    def rebuild_environment(params = {}, options = {})
      req = build_request(:rebuild_environment, params)
      req.send_request(options)
    end

    # Initiates a request to compile the specified type of information of
    # the deployed environment.
    #
    # Setting the `InfoType` to `tail` compiles the last lines from the
    # application server log files of every Amazon EC2 instance in your
    # environment.
    #
    # Setting the `InfoType` to `bundle` compresses the application server
    # log files for every Amazon EC2 instance into a `.zip` file. Legacy and
    # .NET containers do not support bundle logs.
    #
    # Use RetrieveEnvironmentInfo to obtain the set of logs.
    #
    # Related Topics
    #
    # * RetrieveEnvironmentInfo
    #
    # ^
    #
    # @option params [String] :environment_id
    #   The ID of the environment of the requested data.
    #
    #   If no such environment is found, `RequestEnvironmentInfo` returns an
    #   `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment of the requested data.
    #
    #   If no such environment is found, `RequestEnvironmentInfo` returns an
    #   `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [required, String] :info_type
    #   The type of information to request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To request tailed logs
    #
    #   # The following operation requests logs from an environment named my-env:
    #
    #   resp = client.request_environment_info({
    #     environment_name: "my-env", 
    #     info_type: "tail", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_environment_info({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     info_type: "tail", # required, accepts tail, bundle
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RequestEnvironmentInfo AWS API Documentation
    #
    # @overload request_environment_info(params = {})
    # @param [Hash] params ({})
    def request_environment_info(params = {}, options = {})
      req = build_request(:request_environment_info, params)
      req.send_request(options)
    end

    # Causes the environment to restart the application container server
    # running on each Amazon EC2 instance.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to restart the server for.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment to restart the server for.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To restart application servers
    #
    #   # The following operation restarts application servers on all instances in an environment named my-env:
    #
    #   resp = client.restart_app_server({
    #     environment_name: "my-env", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restart_app_server({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RestartAppServer AWS API Documentation
    #
    # @overload restart_app_server(params = {})
    # @param [Hash] params ({})
    def restart_app_server(params = {}, options = {})
      req = build_request(:restart_app_server, params)
      req.send_request(options)
    end

    # Retrieves the compiled information from a RequestEnvironmentInfo
    # request.
    #
    # Related Topics
    #
    # * RequestEnvironmentInfo
    #
    # ^
    #
    # @option params [String] :environment_id
    #   The ID of the data's environment.
    #
    #   If no such environment is found, returns an `InvalidParameterValue`
    #   error.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the data's environment.
    #
    #   If no such environment is found, returns an `InvalidParameterValue`
    #   error.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [required, String] :info_type
    #   The type of information to retrieve.
    #
    # @return [Types::RetrieveEnvironmentInfoResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveEnvironmentInfoResultMessage#environment_info #environment_info} => Array&lt;Types::EnvironmentInfoDescription&gt;
    #
    #
    # @example Example: To retrieve tailed logs
    #
    #   # The following operation retrieves a link to logs from an environment named my-env:
    #
    #   resp = client.retrieve_environment_info({
    #     environment_name: "my-env", 
    #     info_type: "tail", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment_info: [
    #       {
    #         ec2_instance_id: "i-09c1c867", 
    #         info_type: "tail", 
    #         message: "https://elasticbeanstalk-us-west-2-0123456789012.s3.amazonaws.com/resources/environments/logs/tail/e-fyqyju3yjs/i-09c1c867/TailLogs-1440109397703.out?AWSAccessKeyId=AKGPT4J56IAJ2EUBL5CQ&Expires=1440195891&Signature=n%2BEalOV6A2HIOx4Rcfb7LT16bBM%3D", 
    #         sample_timestamp: Time.parse("2015-08-20T22:23:17.703Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_environment_info({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     info_type: "tail", # required, accepts tail, bundle
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_info #=> Array
    #   resp.environment_info[0].info_type #=> String, one of "tail", "bundle"
    #   resp.environment_info[0].ec2_instance_id #=> String
    #   resp.environment_info[0].sample_timestamp #=> Time
    #   resp.environment_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RetrieveEnvironmentInfo AWS API Documentation
    #
    # @overload retrieve_environment_info(params = {})
    # @param [Hash] params ({})
    def retrieve_environment_info(params = {}, options = {})
      req = build_request(:retrieve_environment_info, params)
      req.send_request(options)
    end

    # Swaps the CNAMEs of two environments.
    #
    # @option params [String] :source_environment_id
    #   The ID of the source environment.
    #
    #   Condition: You must specify at least the `SourceEnvironmentID` or the
    #   `SourceEnvironmentName`. You may also specify both. If you specify the
    #   `SourceEnvironmentId`, you must specify the
    #   `DestinationEnvironmentId`.
    #
    # @option params [String] :source_environment_name
    #   The name of the source environment.
    #
    #   Condition: You must specify at least the `SourceEnvironmentID` or the
    #   `SourceEnvironmentName`. You may also specify both. If you specify the
    #   `SourceEnvironmentName`, you must specify the
    #   `DestinationEnvironmentName`.
    #
    # @option params [String] :destination_environment_id
    #   The ID of the destination environment.
    #
    #   Condition: You must specify at least the `DestinationEnvironmentID` or
    #   the `DestinationEnvironmentName`. You may also specify both. You must
    #   specify the `SourceEnvironmentId` with the `DestinationEnvironmentId`.
    #
    # @option params [String] :destination_environment_name
    #   The name of the destination environment.
    #
    #   Condition: You must specify at least the `DestinationEnvironmentID` or
    #   the `DestinationEnvironmentName`. You may also specify both. You must
    #   specify the `SourceEnvironmentName` with the
    #   `DestinationEnvironmentName`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To swap environment CNAMES
    #
    #   # The following operation swaps the assigned subdomains of two environments:
    #
    #   resp = client.swap_environment_cnames({
    #     destination_environment_name: "my-env-green", 
    #     source_environment_name: "my-env-blue", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.swap_environment_cnames({
    #     source_environment_id: "EnvironmentId",
    #     source_environment_name: "EnvironmentName",
    #     destination_environment_id: "EnvironmentId",
    #     destination_environment_name: "EnvironmentName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SwapEnvironmentCNAMEs AWS API Documentation
    #
    # @overload swap_environment_cnames(params = {})
    # @param [Hash] params ({})
    def swap_environment_cnames(params = {}, options = {})
      req = build_request(:swap_environment_cnames, params)
      req.send_request(options)
    end

    # Terminates the specified environment.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to terminate.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment to terminate.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [Boolean] :terminate_resources
    #   Indicates whether the associated AWS resources should shut down when
    #   the environment is terminated:
    #
    #   * `true`\: The specified environment as well as the associated AWS
    #     resources, such as Auto Scaling group and LoadBalancer, are
    #     terminated.
    #
    #   * `false`\: AWS Elastic Beanstalk resource management is removed from
    #     the environment, but the AWS resources continue to operate.
    #
    #   For more information, see the [ AWS Elastic Beanstalk User Guide. ][1]
    #
    #   Default: `true`
    #
    #   Valid Values: `true` \| `false`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/ug/
    #
    # @option params [Boolean] :force_terminate
    #   Terminates the target environment even if another environment in the
    #   same group is dependent on it.
    #
    # @return [Types::EnvironmentDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnvironmentDescription#environment_name #environment_name} => String
    #   * {Types::EnvironmentDescription#environment_id #environment_id} => String
    #   * {Types::EnvironmentDescription#application_name #application_name} => String
    #   * {Types::EnvironmentDescription#version_label #version_label} => String
    #   * {Types::EnvironmentDescription#solution_stack_name #solution_stack_name} => String
    #   * {Types::EnvironmentDescription#platform_arn #platform_arn} => String
    #   * {Types::EnvironmentDescription#template_name #template_name} => String
    #   * {Types::EnvironmentDescription#description #description} => String
    #   * {Types::EnvironmentDescription#endpoint_url #endpoint_url} => String
    #   * {Types::EnvironmentDescription#cname #cname} => String
    #   * {Types::EnvironmentDescription#date_created #date_created} => Time
    #   * {Types::EnvironmentDescription#date_updated #date_updated} => Time
    #   * {Types::EnvironmentDescription#status #status} => String
    #   * {Types::EnvironmentDescription#abortable_operation_in_progress #abortable_operation_in_progress} => Boolean
    #   * {Types::EnvironmentDescription#health #health} => String
    #   * {Types::EnvironmentDescription#health_status #health_status} => String
    #   * {Types::EnvironmentDescription#resources #resources} => Types::EnvironmentResourcesDescription
    #   * {Types::EnvironmentDescription#tier #tier} => Types::EnvironmentTier
    #   * {Types::EnvironmentDescription#environment_links #environment_links} => Array&lt;Types::EnvironmentLink&gt;
    #   * {Types::EnvironmentDescription#environment_arn #environment_arn} => String
    #
    #
    # @example Example: To terminate an environment
    #
    #   # The following operation terminates an Elastic Beanstalk environment named my-env:
    #
    #   resp = client.terminate_environment({
    #     environment_name: "my-env", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     abortable_operation_in_progress: false, 
    #     application_name: "my-app", 
    #     cname: "my-env.elasticbeanstalk.com", 
    #     date_created: Time.parse("2015-08-12T18:52:53.622Z"), 
    #     date_updated: Time.parse("2015-08-12T19:05:54.744Z"), 
    #     endpoint_url: "awseb-e-f-AWSEBLoa-1I9XUMP4-8492WNUP202574.us-west-2.elb.amazonaws.com", 
    #     environment_id: "e-fh2eravpns", 
    #     environment_name: "my-env", 
    #     health: "Grey", 
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #     status: "Terminating", 
    #     tier: {
    #       name: "WebServer", 
    #       type: "Standard", 
    #       version: " ", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_environment({
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     terminate_resources: false,
    #     force_terminate: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_name #=> String
    #   resp.environment_id #=> String
    #   resp.application_name #=> String
    #   resp.version_label #=> String
    #   resp.solution_stack_name #=> String
    #   resp.platform_arn #=> String
    #   resp.template_name #=> String
    #   resp.description #=> String
    #   resp.endpoint_url #=> String
    #   resp.cname #=> String
    #   resp.date_created #=> Time
    #   resp.date_updated #=> Time
    #   resp.status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
    #   resp.abortable_operation_in_progress #=> Boolean
    #   resp.health #=> String, one of "Green", "Yellow", "Red", "Grey"
    #   resp.health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"
    #   resp.resources.load_balancer.load_balancer_name #=> String
    #   resp.resources.load_balancer.domain #=> String
    #   resp.resources.load_balancer.listeners #=> Array
    #   resp.resources.load_balancer.listeners[0].protocol #=> String
    #   resp.resources.load_balancer.listeners[0].port #=> Integer
    #   resp.tier.name #=> String
    #   resp.tier.type #=> String
    #   resp.tier.version #=> String
    #   resp.environment_links #=> Array
    #   resp.environment_links[0].link_name #=> String
    #   resp.environment_links[0].environment_name #=> String
    #   resp.environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/TerminateEnvironment AWS API Documentation
    #
    # @overload terminate_environment(params = {})
    # @param [Hash] params ({})
    def terminate_environment(params = {}, options = {})
      req = build_request(:terminate_environment, params)
      req.send_request(options)
    end

    # Updates the specified application to have the specified properties.
    #
    # <note markdown="1"> If a property (for example, `description`) is not provided, the value
    # remains unchanged. To clear these properties, specify an empty string.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application to update. If no such application is
    #   found, `UpdateApplication` returns an `InvalidParameterValue` error.
    #
    # @option params [String] :description
    #   A new description for the application.
    #
    #   Default: If not specified, AWS Elastic Beanstalk does not update the
    #   description.
    #
    # @return [Types::ApplicationDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationDescriptionMessage#application #application} => Types::ApplicationDescription
    #
    #
    # @example Example: To change an application's description
    #
    #   # The following operation updates the description of an application named my-app:
    #
    #   resp = client.update_application({
    #     application_name: "my-app", 
    #     description: "my Elastic Beanstalk application", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application: {
    #       application_name: "my-app", 
    #       configuration_templates: [
    #       ], 
    #       date_created: Time.parse("2015-08-13T19:15:50.449Z"), 
    #       date_updated: Time.parse("2015-08-20T22:34:56.195Z"), 
    #       description: "my Elastic Beanstalk application", 
    #       versions: [
    #         "2fba-stage-150819_234450", 
    #         "bf07-stage-150820_214945", 
    #         "93f8", 
    #         "fd7c-stage-150820_000431", 
    #         "22a0-stage-150819_185942", 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_name: "ApplicationName", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.application.application_arn #=> String
    #   resp.application.application_name #=> String
    #   resp.application.description #=> String
    #   resp.application.date_created #=> Time
    #   resp.application.date_updated #=> Time
    #   resp.application.versions #=> Array
    #   resp.application.versions[0] #=> String
    #   resp.application.configuration_templates #=> Array
    #   resp.application.configuration_templates[0] #=> String
    #   resp.application.resource_lifecycle_config.service_role #=> String
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Modifies lifecycle settings for an application.
    #
    # @option params [required, String] :application_name
    #   The name of the application.
    #
    # @option params [required, Types::ApplicationResourceLifecycleConfig] :resource_lifecycle_config
    #   The lifecycle configuration.
    #
    # @return [Types::ApplicationResourceLifecycleDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationResourceLifecycleDescriptionMessage#application_name #application_name} => String
    #   * {Types::ApplicationResourceLifecycleDescriptionMessage#resource_lifecycle_config #resource_lifecycle_config} => Types::ApplicationResourceLifecycleConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_resource_lifecycle({
    #     application_name: "ApplicationName", # required
    #     resource_lifecycle_config: { # required
    #       service_role: "String",
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false,
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_name #=> String
    #   resp.resource_lifecycle_config.service_role #=> String
    #   resp.resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationResourceLifecycle AWS API Documentation
    #
    # @overload update_application_resource_lifecycle(params = {})
    # @param [Hash] params ({})
    def update_application_resource_lifecycle(params = {}, options = {})
      req = build_request(:update_application_resource_lifecycle, params)
      req.send_request(options)
    end

    # Updates the specified application version to have the specified
    # properties.
    #
    # <note markdown="1"> If a property (for example, `description`) is not provided, the value
    # remains unchanged. To clear properties, specify an empty string.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application associated with this version.
    #
    #   If no application is found with this name, `UpdateApplication` returns
    #   an `InvalidParameterValue` error.
    #
    # @option params [required, String] :version_label
    #   The name of the version to update.
    #
    #   If no application version is found with this label,
    #   `UpdateApplication` returns an `InvalidParameterValue` error.
    #
    # @option params [String] :description
    #   A new description for this version.
    #
    # @return [Types::ApplicationVersionDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplicationVersionDescriptionMessage#application_version #application_version} => Types::ApplicationVersionDescription
    #
    #
    # @example Example: To change an application version's description
    #
    #   # The following operation updates the description of an application version named 22a0-stage-150819_185942:
    #
    #   resp = client.update_application_version({
    #     application_name: "my-app", 
    #     description: "new description", 
    #     version_label: "22a0-stage-150819_185942", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_version: {
    #       application_name: "my-app", 
    #       date_created: Time.parse("2015-08-19T18:59:17.646Z"), 
    #       date_updated: Time.parse("2015-08-20T22:53:28.871Z"), 
    #       description: "new description", 
    #       source_bundle: {
    #         s3_bucket: "elasticbeanstalk-us-west-2-0123456789012", 
    #         s3_key: "my-app/22a0-stage-150819_185942.war", 
    #       }, 
    #       version_label: "22a0-stage-150819_185942", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_version({
    #     application_name: "ApplicationName", # required
    #     version_label: "VersionLabel", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_version.application_version_arn #=> String
    #   resp.application_version.application_name #=> String
    #   resp.application_version.description #=> String
    #   resp.application_version.version_label #=> String
    #   resp.application_version.source_build_information.source_type #=> String, one of "Git", "Zip"
    #   resp.application_version.source_build_information.source_repository #=> String, one of "CodeCommit", "S3"
    #   resp.application_version.source_build_information.source_location #=> String
    #   resp.application_version.build_arn #=> String
    #   resp.application_version.source_bundle.s3_bucket #=> String
    #   resp.application_version.source_bundle.s3_key #=> String
    #   resp.application_version.date_created #=> Time
    #   resp.application_version.date_updated #=> Time
    #   resp.application_version.status #=> String, one of "Processed", "Unprocessed", "Failed", "Processing", "Building"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationVersion AWS API Documentation
    #
    # @overload update_application_version(params = {})
    # @param [Hash] params ({})
    def update_application_version(params = {}, options = {})
      req = build_request(:update_application_version, params)
      req.send_request(options)
    end

    # Updates the specified configuration template to have the specified
    # properties or configuration option values.
    #
    # <note markdown="1"> If a property (for example, `ApplicationName`) is not provided, its
    # value remains unchanged. To clear such properties, specify an empty
    # string.
    #
    #  </note>
    #
    # Related Topics
    #
    # * DescribeConfigurationOptions
    #
    # ^
    #
    # @option params [required, String] :application_name
    #   The name of the application associated with the configuration template
    #   to update.
    #
    #   If no application is found with this name,
    #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
    #   error.
    #
    # @option params [required, String] :template_name
    #   The name of the configuration template to update.
    #
    #   If no configuration template is found with this name,
    #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
    #   error.
    #
    # @option params [String] :description
    #   A new description for the configuration.
    #
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   A list of configuration option settings to update with the new
    #   specified option value.
    #
    # @option params [Array<Types::OptionSpecification>] :options_to_remove
    #   A list of configuration options to remove from the configuration set.
    #
    #   Constraint: You can remove only `UserDefined` configuration options.
    #
    # @return [Types::ConfigurationSettingsDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationSettingsDescription#solution_stack_name #solution_stack_name} => String
    #   * {Types::ConfigurationSettingsDescription#platform_arn #platform_arn} => String
    #   * {Types::ConfigurationSettingsDescription#application_name #application_name} => String
    #   * {Types::ConfigurationSettingsDescription#template_name #template_name} => String
    #   * {Types::ConfigurationSettingsDescription#description #description} => String
    #   * {Types::ConfigurationSettingsDescription#environment_name #environment_name} => String
    #   * {Types::ConfigurationSettingsDescription#deployment_status #deployment_status} => String
    #   * {Types::ConfigurationSettingsDescription#date_created #date_created} => Time
    #   * {Types::ConfigurationSettingsDescription#date_updated #date_updated} => Time
    #   * {Types::ConfigurationSettingsDescription#option_settings #option_settings} => Array&lt;Types::ConfigurationOptionSetting&gt;
    #
    #
    # @example Example: To update a configuration template
    #
    #   # The following operation removes the configured CloudWatch custom health metrics configuration ConfigDocument from a
    #   # saved configuration template named my-template:
    #
    #   resp = client.update_configuration_template({
    #     application_name: "my-app", 
    #     options_to_remove: [
    #       {
    #         namespace: "aws:elasticbeanstalk:healthreporting:system", 
    #         option_name: "ConfigDocument", 
    #       }, 
    #     ], 
    #     template_name: "my-template", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_name: "my-app", 
    #     date_created: Time.parse("2015-08-20T22:39:31Z"), 
    #     date_updated: Time.parse("2015-08-20T22:43:11Z"), 
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #     template_name: "my-template", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_template({
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName", # required
    #     description: "Description",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       },
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_stack_name #=> String
    #   resp.platform_arn #=> String
    #   resp.application_name #=> String
    #   resp.template_name #=> String
    #   resp.description #=> String
    #   resp.environment_name #=> String
    #   resp.deployment_status #=> String, one of "deployed", "pending", "failed"
    #   resp.date_created #=> Time
    #   resp.date_updated #=> Time
    #   resp.option_settings #=> Array
    #   resp.option_settings[0].resource_name #=> String
    #   resp.option_settings[0].namespace #=> String
    #   resp.option_settings[0].option_name #=> String
    #   resp.option_settings[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateConfigurationTemplate AWS API Documentation
    #
    # @overload update_configuration_template(params = {})
    # @param [Hash] params ({})
    def update_configuration_template(params = {}, options = {})
      req = build_request(:update_configuration_template, params)
      req.send_request(options)
    end

    # Updates the environment description, deploys a new application
    # version, updates the configuration settings to an entirely new
    # configuration template, or updates select configuration option values
    # in the running environment.
    #
    # Attempting to update both the release and configuration is not allowed
    # and AWS Elastic Beanstalk returns an `InvalidParameterCombination`
    # error.
    #
    # When updating the configuration settings to a new template or
    # individual settings, a draft configuration is created and
    # DescribeConfigurationSettings for this environment returns two setting
    # descriptions with different `DeploymentStatus` values.
    #
    # @option params [String] :application_name
    #   The name of the application with which the environment is associated.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to update.
    #
    #   If no environment with this ID exists, AWS Elastic Beanstalk returns
    #   an `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :environment_name
    #   The name of the environment to update. If no environment with this
    #   name exists, AWS Elastic Beanstalk returns an `InvalidParameterValue`
    #   error.
    #
    #   Condition: You must specify either this or an EnvironmentId, or both.
    #   If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #
    # @option params [String] :group_name
    #   The name of the group to which the target environment belongs. Specify
    #   a group name only if the environment's name is specified in an
    #   environment manifest and not with the environment name or environment
    #   ID parameters. See [Environment Manifest (env.yaml)][1] for details.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #
    # @option params [String] :description
    #   If this parameter is specified, AWS Elastic Beanstalk updates the
    #   description of this environment.
    #
    # @option params [Types::EnvironmentTier] :tier
    #   This specifies the tier to use to update the environment.
    #
    #   Condition: At this time, if you change the tier version, name, or
    #   type, AWS Elastic Beanstalk returns `InvalidParameterValue` error.
    #
    # @option params [String] :version_label
    #   If this parameter is specified, AWS Elastic Beanstalk deploys the
    #   named application version to the environment. If no such application
    #   version is found, returns an `InvalidParameterValue` error.
    #
    # @option params [String] :template_name
    #   If this parameter is specified, AWS Elastic Beanstalk deploys this
    #   configuration template to the environment. If no such configuration
    #   template is found, AWS Elastic Beanstalk returns an
    #   `InvalidParameterValue` error.
    #
    # @option params [String] :solution_stack_name
    #   This specifies the platform version that the environment will run
    #   after the environment is updated.
    #
    # @option params [String] :platform_arn
    #   The ARN of the platform, if used.
    #
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   If specified, AWS Elastic Beanstalk updates the configuration set
    #   associated with the running environment and sets the specified
    #   configuration options to the requested value.
    #
    # @option params [Array<Types::OptionSpecification>] :options_to_remove
    #   A list of custom user-defined configuration options to remove from the
    #   configuration set for this environment.
    #
    # @return [Types::EnvironmentDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnvironmentDescription#environment_name #environment_name} => String
    #   * {Types::EnvironmentDescription#environment_id #environment_id} => String
    #   * {Types::EnvironmentDescription#application_name #application_name} => String
    #   * {Types::EnvironmentDescription#version_label #version_label} => String
    #   * {Types::EnvironmentDescription#solution_stack_name #solution_stack_name} => String
    #   * {Types::EnvironmentDescription#platform_arn #platform_arn} => String
    #   * {Types::EnvironmentDescription#template_name #template_name} => String
    #   * {Types::EnvironmentDescription#description #description} => String
    #   * {Types::EnvironmentDescription#endpoint_url #endpoint_url} => String
    #   * {Types::EnvironmentDescription#cname #cname} => String
    #   * {Types::EnvironmentDescription#date_created #date_created} => Time
    #   * {Types::EnvironmentDescription#date_updated #date_updated} => Time
    #   * {Types::EnvironmentDescription#status #status} => String
    #   * {Types::EnvironmentDescription#abortable_operation_in_progress #abortable_operation_in_progress} => Boolean
    #   * {Types::EnvironmentDescription#health #health} => String
    #   * {Types::EnvironmentDescription#health_status #health_status} => String
    #   * {Types::EnvironmentDescription#resources #resources} => Types::EnvironmentResourcesDescription
    #   * {Types::EnvironmentDescription#tier #tier} => Types::EnvironmentTier
    #   * {Types::EnvironmentDescription#environment_links #environment_links} => Array&lt;Types::EnvironmentLink&gt;
    #   * {Types::EnvironmentDescription#environment_arn #environment_arn} => String
    #
    #
    # @example Example: To update an environment to a new version
    #
    #   # The following operation updates an environment named "my-env" to version "v2" of the application to which it belongs:
    #
    #   resp = client.update_environment({
    #     environment_name: "my-env", 
    #     version_label: "v2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_name: "my-app", 
    #     cname: "my-env.elasticbeanstalk.com", 
    #     date_created: Time.parse("2015-02-03T23:04:54.453Z"), 
    #     date_updated: Time.parse("2015-02-03T23:12:29.119Z"), 
    #     endpoint_url: "awseb-e-i-AWSEBLoa-1RDLX6TC9VUAO-0123456789.us-west-2.elb.amazonaws.com", 
    #     environment_id: "e-szqipays4h", 
    #     environment_name: "my-env", 
    #     health: "Grey", 
    #     solution_stack_name: "64bit Amazon Linux running Tomcat 7", 
    #     status: "Updating", 
    #     tier: {
    #       name: "WebServer", 
    #       type: "Standard", 
    #       version: " ", 
    #     }, 
    #     version_label: "v2", 
    #   }
    #
    # @example Example: To configure option settings
    #
    #   # The following operation configures several options in the aws:elb:loadbalancer namespace:
    #
    #   resp = client.update_environment({
    #     environment_name: "my-env", 
    #     option_settings: [
    #       {
    #         namespace: "aws:elb:healthcheck", 
    #         option_name: "Interval", 
    #         value: "15", 
    #       }, 
    #       {
    #         namespace: "aws:elb:healthcheck", 
    #         option_name: "Timeout", 
    #         value: "8", 
    #       }, 
    #       {
    #         namespace: "aws:elb:healthcheck", 
    #         option_name: "HealthyThreshold", 
    #         value: "2", 
    #       }, 
    #       {
    #         namespace: "aws:elb:healthcheck", 
    #         option_name: "UnhealthyThreshold", 
    #         value: "3", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     abortable_operation_in_progress: true, 
    #     application_name: "my-app", 
    #     cname: "my-env.elasticbeanstalk.com", 
    #     date_created: Time.parse("2015-08-07T20:48:49.599Z"), 
    #     date_updated: Time.parse("2015-08-12T18:15:23.804Z"), 
    #     endpoint_url: "awseb-e-w-AWSEBLoa-14XB83101Q4L-104QXY80921.sa-east-1.elb.amazonaws.com", 
    #     environment_id: "e-wtp2rpqsej", 
    #     environment_name: "my-env", 
    #     health: "Grey", 
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", 
    #     status: "Updating", 
    #     tier: {
    #       name: "WebServer", 
    #       type: "Standard", 
    #       version: " ", 
    #     }, 
    #     version_label: "7f58-stage-150812_025409", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     application_name: "ApplicationName",
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     group_name: "GroupName",
    #     description: "Description",
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String",
    #     },
    #     version_label: "VersionLabel",
    #     template_name: "ConfigurationTemplateName",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       },
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_name #=> String
    #   resp.environment_id #=> String
    #   resp.application_name #=> String
    #   resp.version_label #=> String
    #   resp.solution_stack_name #=> String
    #   resp.platform_arn #=> String
    #   resp.template_name #=> String
    #   resp.description #=> String
    #   resp.endpoint_url #=> String
    #   resp.cname #=> String
    #   resp.date_created #=> Time
    #   resp.date_updated #=> Time
    #   resp.status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
    #   resp.abortable_operation_in_progress #=> Boolean
    #   resp.health #=> String, one of "Green", "Yellow", "Red", "Grey"
    #   resp.health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"
    #   resp.resources.load_balancer.load_balancer_name #=> String
    #   resp.resources.load_balancer.domain #=> String
    #   resp.resources.load_balancer.listeners #=> Array
    #   resp.resources.load_balancer.listeners[0].protocol #=> String
    #   resp.resources.load_balancer.listeners[0].port #=> Integer
    #   resp.tier.name #=> String
    #   resp.tier.type #=> String
    #   resp.tier.version #=> String
    #   resp.environment_links #=> Array
    #   resp.environment_links[0].link_name #=> String
    #   resp.environment_links[0].environment_name #=> String
    #   resp.environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Update the list of tags applied to an AWS Elastic Beanstalk resource.
    # Two lists can be passed: `TagsToAdd` for tags to add or update, and
    # `TagsToRemove`.
    #
    # Currently, Elastic Beanstalk only supports tagging of Elastic
    # Beanstalk environments. For details about environment tagging, see
    # [Tagging Resources in Your Elastic Beanstalk Environment][1].
    #
    # If you create a custom IAM user policy to control permission to this
    # operation, specify one of the following two virtual actions (or both)
    # instead of the API operation name:
    #
    # elasticbeanstalk:AddTags
    #
    # : Controls permission to call `UpdateTagsForResource` and pass a list
    #   of tags to add in the `TagsToAdd` parameter.
    #
    # elasticbeanstalk:RemoveTags
    #
    # : Controls permission to call `UpdateTagsForResource` and pass a list
    #   of tag keys to remove in the `TagsToRemove` parameter.
    #
    # For details about creating a custom user policy, see [Creating a
    # Custom User Policy][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html
    # [2]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resouce to be updated.
    #
    #   Must be the ARN of an Elastic Beanstalk environment.
    #
    # @option params [Array<Types::Tag>] :tags_to_add
    #   A list of tags to add or update.
    #
    #   If a key of an existing tag is added, the tag's value is updated.
    #
    # @option params [Array<String>] :tags_to_remove
    #   A list of tag keys to remove.
    #
    #   If a tag key doesn't exist, it is silently ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags_to_add: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     tags_to_remove: ["TagKey"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateTagsForResource AWS API Documentation
    #
    # @overload update_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def update_tags_for_resource(params = {}, options = {})
      req = build_request(:update_tags_for_resource, params)
      req.send_request(options)
    end

    # Takes a set of configuration settings and either a configuration
    # template or environment, and determines whether those values are
    # valid.
    #
    # This action returns a list of messages indicating any errors or
    # warnings associated with the selection of option values.
    #
    # @option params [required, String] :application_name
    #   The name of the application that the configuration template or
    #   environment belongs to.
    #
    # @option params [String] :template_name
    #   The name of the configuration template to validate the settings
    #   against.
    #
    #   Condition: You cannot specify both this and an environment name.
    #
    # @option params [String] :environment_name
    #   The name of the environment to validate the settings against.
    #
    #   Condition: You cannot specify both this and a configuration template
    #   name.
    #
    # @option params [required, Array<Types::ConfigurationOptionSetting>] :option_settings
    #   A list of the options and desired values to evaluate.
    #
    # @return [Types::ConfigurationSettingsValidationMessages] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationSettingsValidationMessages#messages #messages} => Array&lt;Types::ValidationMessage&gt;
    #
    #
    # @example Example: To validate configuration settings
    #
    #   # The following operation validates a CloudWatch custom metrics config document:
    #
    #   resp = client.validate_configuration_settings({
    #     application_name: "my-app", 
    #     environment_name: "my-env", 
    #     option_settings: [
    #       {
    #         namespace: "aws:elasticbeanstalk:healthreporting:system", 
    #         option_name: "ConfigDocument", 
    #         value: "{\"CloudWatchMetrics\": {\"Environment\": {\"ApplicationLatencyP99.9\": null,\"InstancesSevere\": 60,\"ApplicationLatencyP90\": 60,\"ApplicationLatencyP99\": null,\"ApplicationLatencyP95\": 60,\"InstancesUnknown\": 60,\"ApplicationLatencyP85\": 60,\"InstancesInfo\": null,\"ApplicationRequests2xx\": null,\"InstancesDegraded\": null,\"InstancesWarning\": 60,\"ApplicationLatencyP50\": 60,\"ApplicationRequestsTotal\": null,\"InstancesNoData\": null,\"InstancesPending\": 60,\"ApplicationLatencyP10\": null,\"ApplicationRequests5xx\": null,\"ApplicationLatencyP75\": null,\"InstancesOk\": 60,\"ApplicationRequests3xx\": null,\"ApplicationRequests4xx\": null},\"Instance\": {\"ApplicationLatencyP99.9\": null,\"ApplicationLatencyP90\": 60,\"ApplicationLatencyP99\": null,\"ApplicationLatencyP95\": null,\"ApplicationLatencyP85\": null,\"CPUUser\": 60,\"ApplicationRequests2xx\": null,\"CPUIdle\": null,\"ApplicationLatencyP50\": null,\"ApplicationRequestsTotal\": 60,\"RootFilesystemUtil\": null,\"LoadAverage1min\": null,\"CPUIrq\": null,\"CPUNice\": 60,\"CPUIowait\": 60,\"ApplicationLatencyP10\": null,\"LoadAverage5min\": null,\"ApplicationRequests5xx\": null,\"ApplicationLatencyP75\": 60,\"CPUSystem\": 60,\"ApplicationRequests3xx\": 60,\"ApplicationRequests4xx\": null,\"InstanceHealth\": null,\"CPUSoftirq\": 60}},\"Version\": 1}", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     messages: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_configuration_settings({
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName",
    #     environment_name: "EnvironmentName",
    #     option_settings: [ # required
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].message #=> String
    #   resp.messages[0].severity #=> String, one of "error", "warning"
    #   resp.messages[0].namespace #=> String
    #   resp.messages[0].option_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ValidateConfigurationSettings AWS API Documentation
    #
    # @overload validate_configuration_settings(params = {})
    # @param [Hash] params ({})
    def validate_configuration_settings(params = {}, options = {})
      req = build_request(:validate_configuration_settings, params)
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
      context[:gem_name] = 'aws-sdk-elasticbeanstalk'
      context[:gem_version] = '1.11.0'
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
