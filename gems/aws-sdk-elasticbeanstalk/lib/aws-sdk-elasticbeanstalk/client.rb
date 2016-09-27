# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

module Aws
  module ElasticBeanstalk
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :elasticbeanstalk

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Cancels in-progress environment configuration update or application
      # version deployment.
      # @option params [String] :environment_id
      #   This specifies the ID of the environment with the in-progress update
      #   that you want to cancel.
      # @option params [String] :environment_name
      #   This specifies the name of the environment with the in-progress update
      #   that you want to cancel.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.abort_environment_update({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #   })
      # @overload abort_environment_update(params = {})
      # @param [Hash] params ({})
      def abort_environment_update(params = {}, options = {})
        req = build_request(:abort_environment_update, params)
        req.send_request(options)
      end

      # Applies a scheduled managed action immediately. A managed action can
      # be applied only if its status is `Scheduled`. Get the status and
      # action ID of a managed action with DescribeEnvironmentManagedActions.
      # @option params [String] :environment_name
      #   The name of the target environment.
      # @option params [String] :environment_id
      #   The environment ID of the target environment.
      # @option params [required, String] :action_id
      #   The action ID of the scheduled managed action to execute.
      # @return [Types::ApplyEnvironmentManagedActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplyEnvironmentManagedActionResult#action_id #ActionId} => String
      #   * {Types::ApplyEnvironmentManagedActionResult#action_description #ActionDescription} => String
      #   * {Types::ApplyEnvironmentManagedActionResult#action_type #ActionType} => String
      #   * {Types::ApplyEnvironmentManagedActionResult#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.apply_environment_managed_action({
      #     environment_name: "String",
      #     environment_id: "String",
      #     action_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.action_id #=> String
      #   resp.action_description #=> String
      #   resp.action_type #=> String, one of "InstanceRefresh", "PlatformUpdate", "Unknown"
      #   resp.status #=> String
      # @overload apply_environment_managed_action(params = {})
      # @param [Hash] params ({})
      def apply_environment_managed_action(params = {}, options = {})
        req = build_request(:apply_environment_managed_action, params)
        req.send_request(options)
      end

      # Checks if the specified CNAME is available.
      # @option params [required, String] :cname_prefix
      #   The prefix used when this CNAME is reserved.
      # @return [Types::CheckDNSAvailabilityResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CheckDNSAvailabilityResultMessage#available #Available} => Boolean
      #   * {Types::CheckDNSAvailabilityResultMessage#fully_qualified_cname #FullyQualifiedCNAME} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.check_dns_availability({
      #     cname_prefix: "DNSCnamePrefix", # required
      #   })
      #
      # @example Response structure
      #   resp.available #=> Boolean
      #   resp.fully_qualified_cname #=> String
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
      # @option params [String] :application_name
      #   The name of the application to which the specified source bundles
      #   belong.
      # @option params [String] :group_name
      #   The name of the group to which the target environments belong. Specify
      #   a group name only if the environment name defined in each target
      #   environment's manifest ends with a + (plus) character. See
      #   [Environment Manifest (env.yaml)][1] for details.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
      # @option params [Array<String>] :version_labels
      #   A list of version labels, specifying one or more application source
      #   bundles that belong to the target application. Each source bundle must
      #   include an environment manifest that specifies the name of the
      #   environment and the name of the solution stack to use, and optionally
      #   can specify environment links to create.
      # @return [Types::EnvironmentDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnvironmentDescriptionsMessage#environments #Environments} => Array&lt;Types::EnvironmentDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.compose_environments({
      #     application_name: "ApplicationName",
      #     group_name: "GroupName",
      #     version_labels: ["VersionLabel"],
      #   })
      #
      # @example Response structure
      #   resp.environments #=> Array
      #   resp.environments[0].environment_name #=> String
      #   resp.environments[0].environment_id #=> String
      #   resp.environments[0].application_name #=> String
      #   resp.environments[0].version_label #=> String
      #   resp.environments[0].solution_stack_name #=> String
      #   resp.environments[0].template_name #=> String
      #   resp.environments[0].description #=> String
      #   resp.environments[0].endpoint_url #=> String
      #   resp.environments[0].cname #=> String
      #   resp.environments[0].date_created #=> Time
      #   resp.environments[0].date_updated #=> Time
      #   resp.environments[0].status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
      #   resp.environments[0].abortable_operation_in_progress #=> Boolean
      #   resp.environments[0].health #=> String, one of "Green", "Yellow", "Red", "Grey"
      #   resp.environments[0].health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe"
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
      # @overload compose_environments(params = {})
      # @param [Hash] params ({})
      def compose_environments(params = {}, options = {})
        req = build_request(:compose_environments, params)
        req.send_request(options)
      end

      # Creates an application that has one configuration template named
      # `default` and no application versions.
      # @option params [required, String] :application_name
      #   The name of the application.
      #
      #   Constraint: This name must be unique within your account. If the
      #   specified name already exists, the action returns an
      #   `InvalidParameterValue` error.
      # @option params [String] :description
      #   Describes the application.
      # @return [Types::ApplicationDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplicationDescriptionMessage#application #Application} => Types::ApplicationDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_application({
      #     application_name: "ApplicationName", # required
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.application.application_name #=> String
      #   resp.application.description #=> String
      #   resp.application.date_created #=> Time
      #   resp.application.date_updated #=> Time
      #   resp.application.versions #=> Array
      #   resp.application.versions[0] #=> String
      #   resp.application.configuration_templates #=> Array
      #   resp.application.configuration_templates[0] #=> String
      # @overload create_application(params = {})
      # @param [Hash] params ({})
      def create_application(params = {}, options = {})
        req = build_request(:create_application, params)
        req.send_request(options)
      end

      # Creates an application version for the specified application.
      #
      # <note>Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version. </note>
      # @option params [required, String] :application_name
      #   The name of the application. If no application is found with this
      #   name, and `AutoCreateApplication` is `false`, returns an
      #   `InvalidParameterValue` error.
      # @option params [required, String] :version_label
      #   A label identifying this version.
      #
      #   Constraint: Must be unique per application. If an application version
      #   already exists with this label for the specified application, AWS
      #   Elastic Beanstalk returns an `InvalidParameterValue` error.
      # @option params [String] :description
      #   Describes this version.
      # @option params [Types::S3Location] :source_bundle
      #   The Amazon S3 bucket and key that identify the location of the source
      #   bundle for this version.
      #
      #   If data found at the Amazon S3 location exceeds the maximum allowed
      #   source bundle size, AWS Elastic Beanstalk returns an
      #   `InvalidParameterValue` error. The maximum size allowed is 512 MB.
      #
      #   Default: If not specified, AWS Elastic Beanstalk uses a sample
      #   application. If only partially specified (for example, a bucket is
      #   provided but not the key) or if no data is found at the Amazon S3
      #   location, AWS Elastic Beanstalk returns an
      #   `InvalidParameterCombination` error.
      # @option params [Boolean] :auto_create_application
      #   Determines how the system behaves if the specified application for
      #   this version does not already exist:
      #
      #   * `true`\: Automatically creates the specified application for this
      #     release if it does not already exist.
      #   * `false`\: Throws an `InvalidParameterValue` if the specified
      #     application for this release does not already exist.
      #
      #   Default: `false`
      #
      #   Valid Values: `true` \| `false`
      # @option params [Boolean] :process
      #   Preprocesses and validates the environment manifest and configuration
      #   files in the source bundle. Validating configuration files can
      #   identify issues prior to deploying the application version to an
      #   environment.
      # @return [Types::ApplicationVersionDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplicationVersionDescriptionMessage#application_version #ApplicationVersion} => Types::ApplicationVersionDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_application_version({
      #     application_name: "ApplicationName", # required
      #     version_label: "VersionLabel", # required
      #     description: "Description",
      #     source_bundle: {
      #       s3_bucket: "S3Bucket",
      #       s3_key: "S3Key",
      #     },
      #     auto_create_application: false,
      #     process: false,
      #   })
      #
      # @example Response structure
      #   resp.application_version.application_name #=> String
      #   resp.application_version.description #=> String
      #   resp.application_version.version_label #=> String
      #   resp.application_version.source_bundle.s3_bucket #=> String
      #   resp.application_version.source_bundle.s3_key #=> String
      #   resp.application_version.date_created #=> Time
      #   resp.application_version.date_updated #=> Time
      #   resp.application_version.status #=> String, one of "Processed", "Unprocessed", "Failed", "Processing"
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
      # Related Topics
      #
      # * DescribeConfigurationOptions
      # * DescribeConfigurationSettings
      # * ListAvailableSolutionStacks
      # @option params [required, String] :application_name
      #   The name of the application to associate with this configuration
      #   template. If no application is found with this name, AWS Elastic
      #   Beanstalk returns an `InvalidParameterValue` error.
      # @option params [required, String] :template_name
      #   The name of the configuration template.
      #
      #   Constraint: This name must be unique per application.
      #
      #   Default: If a configuration template already exists with this name,
      #   AWS Elastic Beanstalk returns an `InvalidParameterValue` error.
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
      # @option params [String] :environment_id
      #   The ID of the environment used with this configuration template.
      # @option params [String] :description
      #   Describes this configuration.
      # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
      #   If specified, AWS Elastic Beanstalk sets the specified configuration
      #   option to the requested value. The new value overrides the value
      #   obtained from the solution stack or the source configuration template.
      # @return [Types::ConfigurationSettingsDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfigurationSettingsDescription#solution_stack_name #SolutionStackName} => String
      #   * {Types::ConfigurationSettingsDescription#application_name #ApplicationName} => String
      #   * {Types::ConfigurationSettingsDescription#template_name #TemplateName} => String
      #   * {Types::ConfigurationSettingsDescription#description #Description} => String
      #   * {Types::ConfigurationSettingsDescription#environment_name #EnvironmentName} => String
      #   * {Types::ConfigurationSettingsDescription#deployment_status #DeploymentStatus} => String
      #   * {Types::ConfigurationSettingsDescription#date_created #DateCreated} => Time
      #   * {Types::ConfigurationSettingsDescription#date_updated #DateUpdated} => Time
      #   * {Types::ConfigurationSettingsDescription#option_settings #OptionSettings} => Array&lt;Types::ConfigurationOptionSetting&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_configuration_template({
      #     application_name: "ApplicationName", # required
      #     template_name: "ConfigurationTemplateName", # required
      #     solution_stack_name: "SolutionStackName",
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
      #   resp.solution_stack_name #=> String
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
      # @overload create_configuration_template(params = {})
      # @param [Hash] params ({})
      def create_configuration_template(params = {}, options = {})
        req = build_request(:create_configuration_template, params)
        req.send_request(options)
      end

      # Launches an environment for the specified application using the
      # specified configuration.
      # @option params [required, String] :application_name
      #   The name of the application that contains the version to be deployed.
      #
      #   If no application is found with this name, `CreateEnvironment` returns
      #   an `InvalidParameterValue` error.
      # @option params [String] :environment_name
      #   A unique name for the deployment environment. Used in the application
      #   URL.
      #
      #   Constraint: Must be from 4 to 40 characters in length. The name can
      #   contain only letters, numbers, and hyphens. It cannot start or end
      #   with a hyphen. This name must be unique in your account. If the
      #   specified name already exists, AWS Elastic Beanstalk returns an
      #   `InvalidParameterValue` error.
      #
      #   Default: If the CNAME parameter is not specified, the environment name
      #   becomes part of the CNAME, and therefore part of the visible URL for
      #   your application.
      # @option params [String] :group_name
      #   The name of the group to which the target environment belongs. Specify
      #   a group name only if the environment's name is specified in an
      #   environment manifest and not with the environment name parameter. See
      #   [Environment Manifest (env.yaml)][1] for details.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
      # @option params [String] :description
      #   Describes this environment.
      # @option params [String] :cname_prefix
      #   If specified, the environment attempts to use this value as the prefix
      #   for the CNAME. If not specified, the CNAME is generated automatically
      #   by appending a random alphanumeric string to the environment name.
      # @option params [Types::EnvironmentTier] :tier
      #   This specifies the tier to use for creating this environment.
      # @option params [Array<Types::Tag>] :tags
      #   This specifies the tags applied to resources in the environment.
      # @option params [String] :version_label
      #   The name of the application version to deploy.
      #
      #   If the specified application has no associated application versions,
      #   AWS Elastic Beanstalk `UpdateEnvironment` returns an
      #   `InvalidParameterValue` error.
      #
      #   Default: If not specified, AWS Elastic Beanstalk attempts to launch
      #   the sample application in the container.
      # @option params [String] :template_name
      #   The name of the configuration template to use in deployment. If no
      #   configuration template is found with this name, AWS Elastic Beanstalk
      #   returns an `InvalidParameterValue` error.
      #
      #   Condition: You must specify either this parameter or a
      #   `SolutionStackName`, but not both. If you specify both, AWS Elastic
      #   Beanstalk returns an `InvalidParameterCombination` error. If you do
      #   not specify either, AWS Elastic Beanstalk returns a
      #   `MissingRequiredParameter` error.
      # @option params [String] :solution_stack_name
      #   This is an alternative to specifying a template name. If specified,
      #   AWS Elastic Beanstalk sets the configuration values to the default
      #   values associated with the specified solution stack.
      #
      #   Condition: You must specify either this or a `TemplateName`, but not
      #   both. If you specify both, AWS Elastic Beanstalk returns an
      #   `InvalidParameterCombination` error. If you do not specify either, AWS
      #   Elastic Beanstalk returns a `MissingRequiredParameter` error.
      # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
      #   If specified, AWS Elastic Beanstalk sets the specified configuration
      #   options to the requested value in the configuration set for the new
      #   environment. These override the values obtained from the solution
      #   stack or the configuration template.
      # @option params [Array<Types::OptionSpecification>] :options_to_remove
      #   A list of custom user-defined configuration options to remove from the
      #   configuration set for this new environment.
      # @return [Types::EnvironmentDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnvironmentDescription#environment_name #EnvironmentName} => String
      #   * {Types::EnvironmentDescription#environment_id #EnvironmentId} => String
      #   * {Types::EnvironmentDescription#application_name #ApplicationName} => String
      #   * {Types::EnvironmentDescription#version_label #VersionLabel} => String
      #   * {Types::EnvironmentDescription#solution_stack_name #SolutionStackName} => String
      #   * {Types::EnvironmentDescription#template_name #TemplateName} => String
      #   * {Types::EnvironmentDescription#description #Description} => String
      #   * {Types::EnvironmentDescription#endpoint_url #EndpointURL} => String
      #   * {Types::EnvironmentDescription#cname #CNAME} => String
      #   * {Types::EnvironmentDescription#date_created #DateCreated} => Time
      #   * {Types::EnvironmentDescription#date_updated #DateUpdated} => Time
      #   * {Types::EnvironmentDescription#status #Status} => String
      #   * {Types::EnvironmentDescription#abortable_operation_in_progress #AbortableOperationInProgress} => Boolean
      #   * {Types::EnvironmentDescription#health #Health} => String
      #   * {Types::EnvironmentDescription#health_status #HealthStatus} => String
      #   * {Types::EnvironmentDescription#resources #Resources} => Types::EnvironmentResourcesDescription
      #   * {Types::EnvironmentDescription#tier #Tier} => Types::EnvironmentTier
      #   * {Types::EnvironmentDescription#environment_links #EnvironmentLinks} => Array&lt;Types::EnvironmentLink&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.environment_name #=> String
      #   resp.environment_id #=> String
      #   resp.application_name #=> String
      #   resp.version_label #=> String
      #   resp.solution_stack_name #=> String
      #   resp.template_name #=> String
      #   resp.description #=> String
      #   resp.endpoint_url #=> String
      #   resp.cname #=> String
      #   resp.date_created #=> Time
      #   resp.date_updated #=> Time
      #   resp.status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
      #   resp.abortable_operation_in_progress #=> Boolean
      #   resp.health #=> String, one of "Green", "Yellow", "Red", "Grey"
      #   resp.health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe"
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
      # @overload create_environment(params = {})
      # @param [Hash] params ({})
      def create_environment(params = {}, options = {})
        req = build_request(:create_environment, params)
        req.send_request(options)
      end

      # Creates the Amazon S3 storage location for the account.
      #
      # This location is used to store user log files.
      # @return [Types::CreateStorageLocationResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateStorageLocationResultMessage#s3_bucket #S3Bucket} => String
      #
      # @example Response structure
      #   resp.s3_bucket #=> String
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
      # <note>You cannot delete an application that has a running environment. </note>
      # @option params [required, String] :application_name
      #   The name of the application to delete.
      # @option params [Boolean] :terminate_env_by_force
      #   When set to true, running environments will be terminated before
      #   deleting the application.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_application({
      #     application_name: "ApplicationName", # required
      #     terminate_env_by_force: false,
      #   })
      # @overload delete_application(params = {})
      # @param [Hash] params ({})
      def delete_application(params = {}, options = {})
        req = build_request(:delete_application, params)
        req.send_request(options)
      end

      # Deletes the specified version from the specified application.
      #
      # <note>You cannot delete an application version that is associated with a running environment.</note>
      # @option params [required, String] :application_name
      #   The name of the application to delete releases from.
      # @option params [required, String] :version_label
      #   The label of the version to delete.
      # @option params [Boolean] :delete_source_bundle
      #   Indicates whether to delete the associated source bundle from Amazon
      #   S3:
      #
      #   * `true`\: An attempt is made to delete the associated Amazon S3
      #     source bundle specified at time of creation.
      #   * `false`\: No action is taken on the Amazon S3 source bundle
      #     specified at time of creation.
      #
      #   Valid Values: `true` \| `false`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_application_version({
      #     application_name: "ApplicationName", # required
      #     version_label: "VersionLabel", # required
      #     delete_source_bundle: false,
      #   })
      # @overload delete_application_version(params = {})
      # @param [Hash] params ({})
      def delete_application_version(params = {}, options = {})
        req = build_request(:delete_application_version, params)
        req.send_request(options)
      end

      # Deletes the specified configuration template.
      #
      # <note>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</note>
      # @option params [required, String] :application_name
      #   The name of the application to delete the configuration template from.
      # @option params [required, String] :template_name
      #   The name of the configuration template to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_configuration_template({
      #     application_name: "ApplicationName", # required
      #     template_name: "ConfigurationTemplateName", # required
      #   })
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
      # @option params [required, String] :application_name
      #   The name of the application the environment is associated with.
      # @option params [required, String] :environment_name
      #   The name of the environment to delete the draft configuration from.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_environment_configuration({
      #     application_name: "ApplicationName", # required
      #     environment_name: "EnvironmentName", # required
      #   })
      # @overload delete_environment_configuration(params = {})
      # @param [Hash] params ({})
      def delete_environment_configuration(params = {}, options = {})
        req = build_request(:delete_environment_configuration, params)
        req.send_request(options)
      end

      # Retrieve a list of application versions stored in your AWS Elastic
      # Beanstalk storage bucket.
      # @option params [String] :application_name
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to only include ones that are associated with the
      #   specified application.
      # @option params [Array<String>] :version_labels
      #   If specified, restricts the returned descriptions to only include ones
      #   that have the specified version labels.
      # @return [Types::ApplicationVersionDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplicationVersionDescriptionsMessage#application_versions #ApplicationVersions} => Array&lt;Types::ApplicationVersionDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_application_versions({
      #     application_name: "ApplicationName",
      #     version_labels: ["VersionLabel"],
      #   })
      #
      # @example Response structure
      #   resp.application_versions #=> Array
      #   resp.application_versions[0].application_name #=> String
      #   resp.application_versions[0].description #=> String
      #   resp.application_versions[0].version_label #=> String
      #   resp.application_versions[0].source_bundle.s3_bucket #=> String
      #   resp.application_versions[0].source_bundle.s3_key #=> String
      #   resp.application_versions[0].date_created #=> Time
      #   resp.application_versions[0].date_updated #=> Time
      #   resp.application_versions[0].status #=> String, one of "Processed", "Unprocessed", "Failed", "Processing"
      # @overload describe_application_versions(params = {})
      # @param [Hash] params ({})
      def describe_application_versions(params = {}, options = {})
        req = build_request(:describe_application_versions, params)
        req.send_request(options)
      end

      # Returns the descriptions of existing applications.
      # @option params [Array<String>] :application_names
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to only include those with the specified names.
      # @return [Types::ApplicationDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplicationDescriptionsMessage#applications #Applications} => Array&lt;Types::ApplicationDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_applications({
      #     application_names: ["ApplicationName"],
      #   })
      #
      # @example Response structure
      #   resp.applications #=> Array
      #   resp.applications[0].application_name #=> String
      #   resp.applications[0].description #=> String
      #   resp.applications[0].date_created #=> Time
      #   resp.applications[0].date_updated #=> Time
      #   resp.applications[0].versions #=> Array
      #   resp.applications[0].versions[0] #=> String
      #   resp.applications[0].configuration_templates #=> Array
      #   resp.applications[0].configuration_templates[0] #=> String
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
      # @option params [String] :application_name
      #   The name of the application associated with the configuration template
      #   or environment. Only needed if you want to describe the configuration
      #   options associated with either the configuration template or
      #   environment.
      # @option params [String] :template_name
      #   The name of the configuration template whose configuration options you
      #   want to describe.
      # @option params [String] :environment_name
      #   The name of the environment whose configuration options you want to
      #   describe.
      # @option params [String] :solution_stack_name
      #   The name of the solution stack whose configuration options you want to
      #   describe.
      # @option params [Array<Types::OptionSpecification>] :options
      #   If specified, restricts the descriptions to only the specified
      #   options.
      # @return [Types::ConfigurationOptionsDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfigurationOptionsDescription#solution_stack_name #SolutionStackName} => String
      #   * {Types::ConfigurationOptionsDescription#options #Options} => Array&lt;Types::ConfigurationOptionDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_configuration_options({
      #     application_name: "ApplicationName",
      #     template_name: "ConfigurationTemplateName",
      #     environment_name: "EnvironmentName",
      #     solution_stack_name: "SolutionStackName",
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
      #   resp.solution_stack_name #=> String
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
      # @option params [required, String] :application_name
      #   The application for the environment or configuration template.
      # @option params [String] :template_name
      #   The name of the configuration template to describe.
      #
      #   Conditional: You must specify either this parameter or an
      #   EnvironmentName, but not both. If you specify both, AWS Elastic
      #   Beanstalk returns an `InvalidParameterCombination` error. If you do
      #   not specify either, AWS Elastic Beanstalk returns a
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment to describe.
      #
      #   Condition: You must specify either this or a TemplateName, but not
      #   both. If you specify both, AWS Elastic Beanstalk returns an
      #   `InvalidParameterCombination` error. If you do not specify either, AWS
      #   Elastic Beanstalk returns `MissingRequiredParameter` error.
      # @return [Types::ConfigurationSettingsDescriptions] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfigurationSettingsDescriptions#configuration_settings #ConfigurationSettings} => Array&lt;Types::ConfigurationSettingsDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_configuration_settings({
      #     application_name: "ApplicationName", # required
      #     template_name: "ConfigurationTemplateName",
      #     environment_name: "EnvironmentName",
      #   })
      #
      # @example Response structure
      #   resp.configuration_settings #=> Array
      #   resp.configuration_settings[0].solution_stack_name #=> String
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
      # @overload describe_configuration_settings(params = {})
      # @param [Hash] params ({})
      def describe_configuration_settings(params = {}, options = {})
        req = build_request(:describe_configuration_settings, params)
        req.send_request(options)
      end

      # Returns information about the overall health of the specified
      # environment. The **DescribeEnvironmentHealth** operation is only
      # available with AWS Elastic Beanstalk Enhanced Health.
      # @option params [String] :environment_name
      #   Specifies the AWS Elastic Beanstalk environment name.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_id
      #   Specifies the AWS Elastic Beanstalk environment ID.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [Array<String>] :attribute_names
      #   Specifies the response elements you wish to receive. If no attribute
      #   names are specified, AWS Elastic Beanstalk only returns the name of
      #   the environment.
      # @return [Types::DescribeEnvironmentHealthResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEnvironmentHealthResult#environment_name #EnvironmentName} => String
      #   * {Types::DescribeEnvironmentHealthResult#health_status #HealthStatus} => String
      #   * {Types::DescribeEnvironmentHealthResult#status #Status} => String
      #   * {Types::DescribeEnvironmentHealthResult#color #Color} => String
      #   * {Types::DescribeEnvironmentHealthResult#causes #Causes} => Array&lt;String&gt;
      #   * {Types::DescribeEnvironmentHealthResult#application_metrics #ApplicationMetrics} => Types::ApplicationMetrics
      #   * {Types::DescribeEnvironmentHealthResult#instances_health #InstancesHealth} => Types::InstanceHealthSummary
      #   * {Types::DescribeEnvironmentHealthResult#refreshed_at #RefreshedAt} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_environment_health({
      #     environment_name: "EnvironmentName",
      #     environment_id: "EnvironmentId",
      #     attribute_names: ["Status"], # accepts Status, Color, Causes, ApplicationMetrics, InstancesHealth, All, HealthStatus, RefreshedAt
      #   })
      #
      # @example Response structure
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
      # @overload describe_environment_health(params = {})
      # @param [Hash] params ({})
      def describe_environment_health(params = {}, options = {})
        req = build_request(:describe_environment_health, params)
        req.send_request(options)
      end

      # Lists an environment's completed and failed managed actions.
      # @option params [String] :environment_id
      #   The environment ID of the target environment.
      # @option params [String] :environment_name
      #   The name of the target environment.
      # @option params [String] :next_token
      #   The pagination token returned by a previous request.
      # @option params [Integer] :max_items
      #   The maximum number of items to return for a single request.
      # @return [Types::DescribeEnvironmentManagedActionHistoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEnvironmentManagedActionHistoryResult#managed_action_history_items #ManagedActionHistoryItems} => Array&lt;Types::ManagedActionHistoryItem&gt;
      #   * {Types::DescribeEnvironmentManagedActionHistoryResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_environment_managed_action_history({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #     next_token: "String",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
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
      # @overload describe_environment_managed_action_history(params = {})
      # @param [Hash] params ({})
      def describe_environment_managed_action_history(params = {}, options = {})
        req = build_request(:describe_environment_managed_action_history, params)
        req.send_request(options)
      end

      # Lists an environment's upcoming and in-progress managed actions.
      # @option params [String] :environment_name
      #   The name of the target environment.
      # @option params [String] :environment_id
      #   The environment ID of the target environment.
      # @option params [String] :status
      #   To show only actions with a particular status, specify a status.
      # @return [Types::DescribeEnvironmentManagedActionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEnvironmentManagedActionsResult#managed_actions #ManagedActions} => Array&lt;Types::ManagedAction&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_environment_managed_actions({
      #     environment_name: "String",
      #     environment_id: "String",
      #     status: "Scheduled", # accepts Scheduled, Pending, Running, Unknown
      #   })
      #
      # @example Response structure
      #   resp.managed_actions #=> Array
      #   resp.managed_actions[0].action_id #=> String
      #   resp.managed_actions[0].action_description #=> String
      #   resp.managed_actions[0].action_type #=> String, one of "InstanceRefresh", "PlatformUpdate", "Unknown"
      #   resp.managed_actions[0].status #=> String, one of "Scheduled", "Pending", "Running", "Unknown"
      #   resp.managed_actions[0].window_start_time #=> Time
      # @overload describe_environment_managed_actions(params = {})
      # @param [Hash] params ({})
      def describe_environment_managed_actions(params = {}, options = {})
        req = build_request(:describe_environment_managed_actions, params)
        req.send_request(options)
      end

      # Returns AWS resources for this environment.
      # @option params [String] :environment_id
      #   The ID of the environment to retrieve AWS resource usage data.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment to retrieve AWS resource usage data.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @return [Types::EnvironmentResourceDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnvironmentResourceDescriptionsMessage#environment_resources #EnvironmentResources} => Types::EnvironmentResourceDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_environment_resources({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #   })
      #
      # @example Response structure
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
      # @overload describe_environment_resources(params = {})
      # @param [Hash] params ({})
      def describe_environment_resources(params = {}, options = {})
        req = build_request(:describe_environment_resources, params)
        req.send_request(options)
      end

      # Returns descriptions for existing environments.
      # @option params [String] :application_name
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to include only those that are associated with this
      #   application.
      # @option params [String] :version_label
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to include only those that are associated with this
      #   application version.
      # @option params [Array<String>] :environment_ids
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to include only those that have the specified IDs.
      # @option params [Array<String>] :environment_names
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to include only those that have the specified names.
      # @option params [Boolean] :include_deleted
      #   Indicates whether to include deleted environments:
      #
      #   `true`\: Environments that have been deleted after
      #   `IncludedDeletedBackTo` are displayed.
      #
      #   `false`\: Do not include deleted environments.
      # @option params [Time,DateTime,Date,Integer,String] :included_deleted_back_to
      #   If specified when `IncludeDeleted` is set to `true`, then environments
      #   deleted after this date are displayed.
      # @return [Types::EnvironmentDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnvironmentDescriptionsMessage#environments #Environments} => Array&lt;Types::EnvironmentDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_environments({
      #     application_name: "ApplicationName",
      #     version_label: "VersionLabel",
      #     environment_ids: ["EnvironmentId"],
      #     environment_names: ["EnvironmentName"],
      #     include_deleted: false,
      #     included_deleted_back_to: Time.now,
      #   })
      #
      # @example Response structure
      #   resp.environments #=> Array
      #   resp.environments[0].environment_name #=> String
      #   resp.environments[0].environment_id #=> String
      #   resp.environments[0].application_name #=> String
      #   resp.environments[0].version_label #=> String
      #   resp.environments[0].solution_stack_name #=> String
      #   resp.environments[0].template_name #=> String
      #   resp.environments[0].description #=> String
      #   resp.environments[0].endpoint_url #=> String
      #   resp.environments[0].cname #=> String
      #   resp.environments[0].date_created #=> Time
      #   resp.environments[0].date_updated #=> Time
      #   resp.environments[0].status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
      #   resp.environments[0].abortable_operation_in_progress #=> Boolean
      #   resp.environments[0].health #=> String, one of "Green", "Yellow", "Red", "Grey"
      #   resp.environments[0].health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe"
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
      # @overload describe_environments(params = {})
      # @param [Hash] params ({})
      def describe_environments(params = {}, options = {})
        req = build_request(:describe_environments, params)
        req.send_request(options)
      end

      # Returns list of event descriptions matching criteria up to the last 6
      # weeks.
      #
      # <note>This action returns the most recent 1,000 events from the specified `NextToken`.</note>
      # @option params [String] :application_name
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to include only those associated with this application.
      # @option params [String] :version_label
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to those associated with this application version.
      # @option params [String] :template_name
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to those that are associated with this environment
      #   configuration.
      # @option params [String] :environment_id
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to those associated with this environment.
      # @option params [String] :environment_name
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to those associated with this environment.
      # @option params [String] :request_id
      #   If specified, AWS Elastic Beanstalk restricts the described events to
      #   include only those associated with this request ID.
      # @option params [String] :severity
      #   If specified, limits the events returned from this call to include
      #   only those with the specified severity or higher.
      # @option params [Time,DateTime,Date,Integer,String] :start_time
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to those that occur on or after this time.
      # @option params [Time,DateTime,Date,Integer,String] :end_time
      #   If specified, AWS Elastic Beanstalk restricts the returned
      #   descriptions to those that occur up to, but not including, the
      #   `EndTime`.
      # @option params [Integer] :max_records
      #   Specifies the maximum number of events that can be returned, beginning
      #   with the most recent event.
      # @option params [String] :next_token
      #   Pagination token. If specified, the events return the next batch of
      #   results.
      # @return [Types::EventDescriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EventDescriptionsMessage#events #Events} => Array&lt;Types::EventDescription&gt;
      #   * {Types::EventDescriptionsMessage#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_events({
      #     application_name: "ApplicationName",
      #     version_label: "VersionLabel",
      #     template_name: "ConfigurationTemplateName",
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #     request_id: "RequestId",
      #     severity: "TRACE", # accepts TRACE, DEBUG, INFO, WARN, ERROR, FATAL
      #     start_time: Time.now,
      #     end_time: Time.now,
      #     max_records: 1,
      #     next_token: "Token",
      #   })
      #
      # @example Response structure
      #   resp.events #=> Array
      #   resp.events[0].event_date #=> Time
      #   resp.events[0].message #=> String
      #   resp.events[0].application_name #=> String
      #   resp.events[0].version_label #=> String
      #   resp.events[0].template_name #=> String
      #   resp.events[0].environment_name #=> String
      #   resp.events[0].request_id #=> String
      #   resp.events[0].severity #=> String, one of "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
      #   resp.next_token #=> String
      # @overload describe_events(params = {})
      # @param [Hash] params ({})
      def describe_events(params = {}, options = {})
        req = build_request(:describe_events, params)
        req.send_request(options)
      end

      # Returns more detailed information about the health of the specified
      # instances (for example, CPU utilization, load average, and causes).
      # The **DescribeInstancesHealth** operation is only available with AWS
      # Elastic Beanstalk Enhanced Health.
      # @option params [String] :environment_name
      #   Specifies the AWS Elastic Beanstalk environment name.
      # @option params [String] :environment_id
      #   Specifies the AWS Elastic Beanstalk environment ID.
      # @option params [Array<String>] :attribute_names
      #   Specifies the response elements you wish to receive. If no attribute
      #   names are specified, AWS Elastic Beanstalk only returns a list of
      #   instances.
      # @option params [String] :next_token
      #   Specifies the next token of the request.
      # @return [Types::DescribeInstancesHealthResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeInstancesHealthResult#instance_health_list #InstanceHealthList} => Array&lt;Types::SingleInstanceHealth&gt;
      #   * {Types::DescribeInstancesHealthResult#refreshed_at #RefreshedAt} => Time
      #   * {Types::DescribeInstancesHealthResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_instances_health({
      #     environment_name: "EnvironmentName",
      #     environment_id: "EnvironmentId",
      #     attribute_names: ["HealthStatus"], # accepts HealthStatus, Color, Causes, ApplicationMetrics, RefreshedAt, LaunchedAt, System, Deployment, AvailabilityZone, InstanceType, All
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
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
      # @overload describe_instances_health(params = {})
      # @param [Hash] params ({})
      def describe_instances_health(params = {}, options = {})
        req = build_request(:describe_instances_health, params)
        req.send_request(options)
      end

      # Returns a list of the available solution stack names.
      # @return [Types::ListAvailableSolutionStacksResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAvailableSolutionStacksResultMessage#solution_stacks #SolutionStacks} => Array&lt;String&gt;
      #   * {Types::ListAvailableSolutionStacksResultMessage#solution_stack_details #SolutionStackDetails} => Array&lt;Types::SolutionStackDescription&gt;
      #
      # @example Response structure
      #   resp.solution_stacks #=> Array
      #   resp.solution_stacks[0] #=> String
      #   resp.solution_stack_details #=> Array
      #   resp.solution_stack_details[0].solution_stack_name #=> String
      #   resp.solution_stack_details[0].permitted_file_types #=> Array
      #   resp.solution_stack_details[0].permitted_file_types[0] #=> String
      # @overload list_available_solution_stacks(params = {})
      # @param [Hash] params ({})
      def list_available_solution_stacks(params = {}, options = {})
        req = build_request(:list_available_solution_stacks, params)
        req.send_request(options)
      end

      # Deletes and recreates all of the AWS resources (for example: the Auto
      # Scaling group, load balancer, etc.) for a specified environment and
      # forces a restart.
      # @option params [String] :environment_id
      #   The ID of the environment to rebuild.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment to rebuild.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.rebuild_environment({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #   })
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
      # @option params [String] :environment_id
      #   The ID of the environment of the requested data.
      #
      #   If no such environment is found, `RequestEnvironmentInfo` returns an
      #   `InvalidParameterValue` error.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment of the requested data.
      #
      #   If no such environment is found, `RequestEnvironmentInfo` returns an
      #   `InvalidParameterValue` error.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [required, String] :info_type
      #   The type of information to request.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.request_environment_info({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #     info_type: "tail", # required, accepts tail, bundle
      #   })
      # @overload request_environment_info(params = {})
      # @param [Hash] params ({})
      def request_environment_info(params = {}, options = {})
        req = build_request(:request_environment_info, params)
        req.send_request(options)
      end

      # Causes the environment to restart the application container server
      # running on each Amazon EC2 instance.
      # @option params [String] :environment_id
      #   The ID of the environment to restart the server for.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment to restart the server for.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.restart_app_server({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #   })
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
      # @option params [String] :environment_id
      #   The ID of the data's environment.
      #
      #   If no such environment is found, returns an `InvalidParameterValue`
      #   error.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the data's environment.
      #
      #   If no such environment is found, returns an `InvalidParameterValue`
      #   error.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [required, String] :info_type
      #   The type of information to retrieve.
      # @return [Types::RetrieveEnvironmentInfoResultMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RetrieveEnvironmentInfoResultMessage#environment_info #EnvironmentInfo} => Array&lt;Types::EnvironmentInfoDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.retrieve_environment_info({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #     info_type: "tail", # required, accepts tail, bundle
      #   })
      #
      # @example Response structure
      #   resp.environment_info #=> Array
      #   resp.environment_info[0].info_type #=> String, one of "tail", "bundle"
      #   resp.environment_info[0].ec2_instance_id #=> String
      #   resp.environment_info[0].sample_timestamp #=> Time
      #   resp.environment_info[0].message #=> String
      # @overload retrieve_environment_info(params = {})
      # @param [Hash] params ({})
      def retrieve_environment_info(params = {}, options = {})
        req = build_request(:retrieve_environment_info, params)
        req.send_request(options)
      end

      # Swaps the CNAMEs of two environments.
      # @option params [String] :source_environment_id
      #   The ID of the source environment.
      #
      #   Condition: You must specify at least the `SourceEnvironmentID` or the
      #   `SourceEnvironmentName`. You may also specify both. If you specify the
      #   `SourceEnvironmentId`, you must specify the
      #   `DestinationEnvironmentId`.
      # @option params [String] :source_environment_name
      #   The name of the source environment.
      #
      #   Condition: You must specify at least the `SourceEnvironmentID` or the
      #   `SourceEnvironmentName`. You may also specify both. If you specify the
      #   `SourceEnvironmentName`, you must specify the
      #   `DestinationEnvironmentName`.
      # @option params [String] :destination_environment_id
      #   The ID of the destination environment.
      #
      #   Condition: You must specify at least the `DestinationEnvironmentID` or
      #   the `DestinationEnvironmentName`. You may also specify both. You must
      #   specify the `SourceEnvironmentId` with the `DestinationEnvironmentId`.
      # @option params [String] :destination_environment_name
      #   The name of the destination environment.
      #
      #   Condition: You must specify at least the `DestinationEnvironmentID` or
      #   the `DestinationEnvironmentName`. You may also specify both. You must
      #   specify the `SourceEnvironmentName` with the
      #   `DestinationEnvironmentName`.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.swap_environment_cnames({
      #     source_environment_id: "EnvironmentId",
      #     source_environment_name: "EnvironmentName",
      #     destination_environment_id: "EnvironmentId",
      #     destination_environment_name: "EnvironmentName",
      #   })
      # @overload swap_environment_cnames(params = {})
      # @param [Hash] params ({})
      def swap_environment_cnames(params = {}, options = {})
        req = build_request(:swap_environment_cnames, params)
        req.send_request(options)
      end

      # Terminates the specified environment.
      # @option params [String] :environment_id
      #   The ID of the environment to terminate.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment to terminate.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [Boolean] :terminate_resources
      #   Indicates whether the associated AWS resources should shut down when
      #   the environment is terminated:
      #
      #   * `true`\: The specified environment as well as the associated AWS
      #     resources, such as Auto Scaling group and LoadBalancer, are
      #     terminated.
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
      # @option params [Boolean] :force_terminate
      #   Terminates the target environment even if another environment in the
      #   same group is dependent on it.
      # @return [Types::EnvironmentDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnvironmentDescription#environment_name #EnvironmentName} => String
      #   * {Types::EnvironmentDescription#environment_id #EnvironmentId} => String
      #   * {Types::EnvironmentDescription#application_name #ApplicationName} => String
      #   * {Types::EnvironmentDescription#version_label #VersionLabel} => String
      #   * {Types::EnvironmentDescription#solution_stack_name #SolutionStackName} => String
      #   * {Types::EnvironmentDescription#template_name #TemplateName} => String
      #   * {Types::EnvironmentDescription#description #Description} => String
      #   * {Types::EnvironmentDescription#endpoint_url #EndpointURL} => String
      #   * {Types::EnvironmentDescription#cname #CNAME} => String
      #   * {Types::EnvironmentDescription#date_created #DateCreated} => Time
      #   * {Types::EnvironmentDescription#date_updated #DateUpdated} => Time
      #   * {Types::EnvironmentDescription#status #Status} => String
      #   * {Types::EnvironmentDescription#abortable_operation_in_progress #AbortableOperationInProgress} => Boolean
      #   * {Types::EnvironmentDescription#health #Health} => String
      #   * {Types::EnvironmentDescription#health_status #HealthStatus} => String
      #   * {Types::EnvironmentDescription#resources #Resources} => Types::EnvironmentResourcesDescription
      #   * {Types::EnvironmentDescription#tier #Tier} => Types::EnvironmentTier
      #   * {Types::EnvironmentDescription#environment_links #EnvironmentLinks} => Array&lt;Types::EnvironmentLink&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.terminate_environment({
      #     environment_id: "EnvironmentId",
      #     environment_name: "EnvironmentName",
      #     terminate_resources: false,
      #     force_terminate: false,
      #   })
      #
      # @example Response structure
      #   resp.environment_name #=> String
      #   resp.environment_id #=> String
      #   resp.application_name #=> String
      #   resp.version_label #=> String
      #   resp.solution_stack_name #=> String
      #   resp.template_name #=> String
      #   resp.description #=> String
      #   resp.endpoint_url #=> String
      #   resp.cname #=> String
      #   resp.date_created #=> Time
      #   resp.date_updated #=> Time
      #   resp.status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
      #   resp.abortable_operation_in_progress #=> Boolean
      #   resp.health #=> String, one of "Green", "Yellow", "Red", "Grey"
      #   resp.health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe"
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
      # @overload terminate_environment(params = {})
      # @param [Hash] params ({})
      def terminate_environment(params = {}, options = {})
        req = build_request(:terminate_environment, params)
        req.send_request(options)
      end

      # Updates the specified application to have the specified properties.
      #
      # <note> If a property (for example, `description`) is not provided, the value remains unchanged. To clear these properties, specify an empty string. </note>
      # @option params [required, String] :application_name
      #   The name of the application to update. If no such application is
      #   found, `UpdateApplication` returns an `InvalidParameterValue` error.
      # @option params [String] :description
      #   A new description for the application.
      #
      #   Default: If not specified, AWS Elastic Beanstalk does not update the
      #   description.
      # @return [Types::ApplicationDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplicationDescriptionMessage#application #Application} => Types::ApplicationDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_application({
      #     application_name: "ApplicationName", # required
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.application.application_name #=> String
      #   resp.application.description #=> String
      #   resp.application.date_created #=> Time
      #   resp.application.date_updated #=> Time
      #   resp.application.versions #=> Array
      #   resp.application.versions[0] #=> String
      #   resp.application.configuration_templates #=> Array
      #   resp.application.configuration_templates[0] #=> String
      # @overload update_application(params = {})
      # @param [Hash] params ({})
      def update_application(params = {}, options = {})
        req = build_request(:update_application, params)
        req.send_request(options)
      end

      # Updates the specified application version to have the specified
      # properties.
      #
      # <note> If a property (for example, `description`) is not provided, the value remains unchanged. To clear properties, specify an empty string. </note>
      # @option params [required, String] :application_name
      #   The name of the application associated with this version.
      #
      #   If no application is found with this name, `UpdateApplication` returns
      #   an `InvalidParameterValue` error.
      # @option params [required, String] :version_label
      #   The name of the version to update.
      #
      #   If no application version is found with this label,
      #   `UpdateApplication` returns an `InvalidParameterValue` error.
      # @option params [String] :description
      #   A new description for this release.
      # @return [Types::ApplicationVersionDescriptionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplicationVersionDescriptionMessage#application_version #ApplicationVersion} => Types::ApplicationVersionDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_application_version({
      #     application_name: "ApplicationName", # required
      #     version_label: "VersionLabel", # required
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.application_version.application_name #=> String
      #   resp.application_version.description #=> String
      #   resp.application_version.version_label #=> String
      #   resp.application_version.source_bundle.s3_bucket #=> String
      #   resp.application_version.source_bundle.s3_key #=> String
      #   resp.application_version.date_created #=> Time
      #   resp.application_version.date_updated #=> Time
      #   resp.application_version.status #=> String, one of "Processed", "Unprocessed", "Failed", "Processing"
      # @overload update_application_version(params = {})
      # @param [Hash] params ({})
      def update_application_version(params = {}, options = {})
        req = build_request(:update_application_version, params)
        req.send_request(options)
      end

      # Updates the specified configuration template to have the specified
      # properties or configuration option values.
      #
      # <note> If a property (for example, `ApplicationName`) is not provided, its value remains unchanged. To clear such properties, specify an empty string. </note>
      #
      # Related Topics
      #
      # * DescribeConfigurationOptions
      # @option params [required, String] :application_name
      #   The name of the application associated with the configuration template
      #   to update.
      #
      #   If no application is found with this name,
      #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
      #   error.
      # @option params [required, String] :template_name
      #   The name of the configuration template to update.
      #
      #   If no configuration template is found with this name,
      #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
      #   error.
      # @option params [String] :description
      #   A new description for the configuration.
      # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
      #   A list of configuration option settings to update with the new
      #   specified option value.
      # @option params [Array<Types::OptionSpecification>] :options_to_remove
      #   A list of configuration options to remove from the configuration set.
      #
      #   Constraint: You can remove only `UserDefined` configuration options.
      # @return [Types::ConfigurationSettingsDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfigurationSettingsDescription#solution_stack_name #SolutionStackName} => String
      #   * {Types::ConfigurationSettingsDescription#application_name #ApplicationName} => String
      #   * {Types::ConfigurationSettingsDescription#template_name #TemplateName} => String
      #   * {Types::ConfigurationSettingsDescription#description #Description} => String
      #   * {Types::ConfigurationSettingsDescription#environment_name #EnvironmentName} => String
      #   * {Types::ConfigurationSettingsDescription#deployment_status #DeploymentStatus} => String
      #   * {Types::ConfigurationSettingsDescription#date_created #DateCreated} => Time
      #   * {Types::ConfigurationSettingsDescription#date_updated #DateUpdated} => Time
      #   * {Types::ConfigurationSettingsDescription#option_settings #OptionSettings} => Array&lt;Types::ConfigurationOptionSetting&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.solution_stack_name #=> String
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
      # @option params [String] :application_name
      #   The name of the application with which the environment is associated.
      # @option params [String] :environment_id
      #   The ID of the environment to update.
      #
      #   If no environment with this ID exists, AWS Elastic Beanstalk returns
      #   an `InvalidParameterValue` error.
      #
      #   Condition: You must specify either this or an EnvironmentName, or
      #   both. If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :environment_name
      #   The name of the environment to update. If no environment with this
      #   name exists, AWS Elastic Beanstalk returns an `InvalidParameterValue`
      #   error.
      #
      #   Condition: You must specify either this or an EnvironmentId, or both.
      #   If you do not specify either, AWS Elastic Beanstalk returns
      #   `MissingRequiredParameter` error.
      # @option params [String] :group_name
      #   The name of the group to which the target environment belongs. Specify
      #   a group name only if the environment's name is specified in an
      #   environment manifest and not with the environment name or environment
      #   ID parameters. See [Environment Manifest (env.yaml)][1] for details.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
      # @option params [String] :description
      #   If this parameter is specified, AWS Elastic Beanstalk updates the
      #   description of this environment.
      # @option params [Types::EnvironmentTier] :tier
      #   This specifies the tier to use to update the environment.
      #
      #   Condition: At this time, if you change the tier version, name, or
      #   type, AWS Elastic Beanstalk returns `InvalidParameterValue` error.
      # @option params [String] :version_label
      #   If this parameter is specified, AWS Elastic Beanstalk deploys the
      #   named application version to the environment. If no such application
      #   version is found, returns an `InvalidParameterValue` error.
      # @option params [String] :template_name
      #   If this parameter is specified, AWS Elastic Beanstalk deploys this
      #   configuration template to the environment. If no such configuration
      #   template is found, AWS Elastic Beanstalk returns an
      #   `InvalidParameterValue` error.
      # @option params [String] :solution_stack_name
      #   This specifies the platform version that the environment will run
      #   after the environment is updated.
      # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
      #   If specified, AWS Elastic Beanstalk updates the configuration set
      #   associated with the running environment and sets the specified
      #   configuration options to the requested value.
      # @option params [Array<Types::OptionSpecification>] :options_to_remove
      #   A list of custom user-defined configuration options to remove from the
      #   configuration set for this environment.
      # @return [Types::EnvironmentDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnvironmentDescription#environment_name #EnvironmentName} => String
      #   * {Types::EnvironmentDescription#environment_id #EnvironmentId} => String
      #   * {Types::EnvironmentDescription#application_name #ApplicationName} => String
      #   * {Types::EnvironmentDescription#version_label #VersionLabel} => String
      #   * {Types::EnvironmentDescription#solution_stack_name #SolutionStackName} => String
      #   * {Types::EnvironmentDescription#template_name #TemplateName} => String
      #   * {Types::EnvironmentDescription#description #Description} => String
      #   * {Types::EnvironmentDescription#endpoint_url #EndpointURL} => String
      #   * {Types::EnvironmentDescription#cname #CNAME} => String
      #   * {Types::EnvironmentDescription#date_created #DateCreated} => Time
      #   * {Types::EnvironmentDescription#date_updated #DateUpdated} => Time
      #   * {Types::EnvironmentDescription#status #Status} => String
      #   * {Types::EnvironmentDescription#abortable_operation_in_progress #AbortableOperationInProgress} => Boolean
      #   * {Types::EnvironmentDescription#health #Health} => String
      #   * {Types::EnvironmentDescription#health_status #HealthStatus} => String
      #   * {Types::EnvironmentDescription#resources #Resources} => Types::EnvironmentResourcesDescription
      #   * {Types::EnvironmentDescription#tier #Tier} => Types::EnvironmentTier
      #   * {Types::EnvironmentDescription#environment_links #EnvironmentLinks} => Array&lt;Types::EnvironmentLink&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.environment_name #=> String
      #   resp.environment_id #=> String
      #   resp.application_name #=> String
      #   resp.version_label #=> String
      #   resp.solution_stack_name #=> String
      #   resp.template_name #=> String
      #   resp.description #=> String
      #   resp.endpoint_url #=> String
      #   resp.cname #=> String
      #   resp.date_created #=> Time
      #   resp.date_updated #=> Time
      #   resp.status #=> String, one of "Launching", "Updating", "Ready", "Terminating", "Terminated"
      #   resp.abortable_operation_in_progress #=> Boolean
      #   resp.health #=> String, one of "Green", "Yellow", "Red", "Grey"
      #   resp.health_status #=> String, one of "NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe"
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
      # @overload update_environment(params = {})
      # @param [Hash] params ({})
      def update_environment(params = {}, options = {})
        req = build_request(:update_environment, params)
        req.send_request(options)
      end

      # Takes a set of configuration settings and either a configuration
      # template or environment, and determines whether those values are
      # valid.
      #
      # This action returns a list of messages indicating any errors or
      # warnings associated with the selection of option values.
      # @option params [required, String] :application_name
      #   The name of the application that the configuration template or
      #   environment belongs to.
      # @option params [String] :template_name
      #   The name of the configuration template to validate the settings
      #   against.
      #
      #   Condition: You cannot specify both this and an environment name.
      # @option params [String] :environment_name
      #   The name of the environment to validate the settings against.
      #
      #   Condition: You cannot specify both this and a configuration template
      #   name.
      # @option params [required, Array<Types::ConfigurationOptionSetting>] :option_settings
      #   A list of the options and desired values to evaluate.
      # @return [Types::ConfigurationSettingsValidationMessages] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfigurationSettingsValidationMessages#messages #Messages} => Array&lt;Types::ValidationMessage&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.messages #=> Array
      #   resp.messages[0].message #=> String
      #   resp.messages[0].severity #=> String, one of "error", "warning"
      #   resp.messages[0].namespace #=> String
      #   resp.messages[0].option_name #=> String
      # @overload validate_configuration_settings(params = {})
      # @param [Hash] params ({})
      def validate_configuration_settings(params = {}, options = {})
        req = build_request(:validate_configuration_settings, params)
        req.send_request(options)
      end

      # @!endgroup

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
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
