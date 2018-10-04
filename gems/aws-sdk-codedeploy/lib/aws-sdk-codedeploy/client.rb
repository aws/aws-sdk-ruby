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

Aws::Plugins::GlobalConfiguration.add_identifier(:codedeploy)

module Aws::CodeDeploy
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :codedeploy

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

    # Adds tags to on-premises instances.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs to add to the on-premises instances.
    #
    #   Keys and values are both required. Keys cannot be null or empty
    #   strings. Value-only tags are not allowed.
    #
    # @option params [required, Array<String>] :instance_names
    #   The names of the on-premises instances to which to add tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_on_premises_instances({
    #     tags: [ # required
    #       {
    #         key: "Key",
    #         value: "Value",
    #       },
    #     ],
    #     instance_names: ["InstanceName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AddTagsToOnPremisesInstances AWS API Documentation
    #
    # @overload add_tags_to_on_premises_instances(params = {})
    # @param [Hash] params ({})
    def add_tags_to_on_premises_instances(params = {}, options = {})
      req = build_request(:add_tags_to_on_premises_instances, params)
      req.send_request(options)
    end

    # Gets information about one or more application revisions.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application about which to get revision
    #   information.
    #
    # @option params [required, Array<Types::RevisionLocation>] :revisions
    #   Information to get about the application revisions, including type and
    #   location.
    #
    # @return [Types::BatchGetApplicationRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetApplicationRevisionsOutput#application_name #application_name} => String
    #   * {Types::BatchGetApplicationRevisionsOutput#error_message #error_message} => String
    #   * {Types::BatchGetApplicationRevisionsOutput#revisions #revisions} => Array&lt;Types::RevisionInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_application_revisions({
    #     application_name: "ApplicationName", # required
    #     revisions: [ # required
    #       {
    #         revision_type: "S3", # accepts S3, GitHub, String
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #           version: "VersionId",
    #           e_tag: "ETag",
    #         },
    #         git_hub_location: {
    #           repository: "Repository",
    #           commit_id: "CommitId",
    #         },
    #         string: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application_name #=> String
    #   resp.error_message #=> String
    #   resp.revisions #=> Array
    #   resp.revisions[0].revision_location.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.revisions[0].revision_location.s3_location.bucket #=> String
    #   resp.revisions[0].revision_location.s3_location.key #=> String
    #   resp.revisions[0].revision_location.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.revisions[0].revision_location.s3_location.version #=> String
    #   resp.revisions[0].revision_location.s3_location.e_tag #=> String
    #   resp.revisions[0].revision_location.git_hub_location.repository #=> String
    #   resp.revisions[0].revision_location.git_hub_location.commit_id #=> String
    #   resp.revisions[0].revision_location.string.content #=> String
    #   resp.revisions[0].revision_location.string.sha256 #=> String
    #   resp.revisions[0].generic_revision_info.description #=> String
    #   resp.revisions[0].generic_revision_info.deployment_groups #=> Array
    #   resp.revisions[0].generic_revision_info.deployment_groups[0] #=> String
    #   resp.revisions[0].generic_revision_info.first_used_time #=> Time
    #   resp.revisions[0].generic_revision_info.last_used_time #=> Time
    #   resp.revisions[0].generic_revision_info.register_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationRevisions AWS API Documentation
    #
    # @overload batch_get_application_revisions(params = {})
    # @param [Hash] params ({})
    def batch_get_application_revisions(params = {}, options = {})
      req = build_request(:batch_get_application_revisions, params)
      req.send_request(options)
    end

    # Gets information about one or more applications.
    #
    # @option params [required, Array<String>] :application_names
    #   A list of application names separated by spaces.
    #
    # @return [Types::BatchGetApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetApplicationsOutput#applications_info #applications_info} => Array&lt;Types::ApplicationInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_applications({
    #     application_names: ["ApplicationName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.applications_info #=> Array
    #   resp.applications_info[0].application_id #=> String
    #   resp.applications_info[0].application_name #=> String
    #   resp.applications_info[0].create_time #=> Time
    #   resp.applications_info[0].linked_to_git_hub #=> Boolean
    #   resp.applications_info[0].git_hub_account_name #=> String
    #   resp.applications_info[0].compute_platform #=> String, one of "Server", "Lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplications AWS API Documentation
    #
    # @overload batch_get_applications(params = {})
    # @param [Hash] params ({})
    def batch_get_applications(params = {}, options = {})
      req = build_request(:batch_get_applications, params)
      req.send_request(options)
    end

    # Gets information about one or more deployment groups.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [required, Array<String>] :deployment_group_names
    #   The deployment groups' names.
    #
    # @return [Types::BatchGetDeploymentGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDeploymentGroupsOutput#deployment_groups_info #deployment_groups_info} => Array&lt;Types::DeploymentGroupInfo&gt;
    #   * {Types::BatchGetDeploymentGroupsOutput#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployment_groups({
    #     application_name: "ApplicationName", # required
    #     deployment_group_names: ["DeploymentGroupName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_groups_info #=> Array
    #   resp.deployment_groups_info[0].application_name #=> String
    #   resp.deployment_groups_info[0].deployment_group_id #=> String
    #   resp.deployment_groups_info[0].deployment_group_name #=> String
    #   resp.deployment_groups_info[0].deployment_config_name #=> String
    #   resp.deployment_groups_info[0].ec2_tag_filters #=> Array
    #   resp.deployment_groups_info[0].ec2_tag_filters[0].key #=> String
    #   resp.deployment_groups_info[0].ec2_tag_filters[0].value #=> String
    #   resp.deployment_groups_info[0].ec2_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_groups_info[0].on_premises_instance_tag_filters #=> Array
    #   resp.deployment_groups_info[0].on_premises_instance_tag_filters[0].key #=> String
    #   resp.deployment_groups_info[0].on_premises_instance_tag_filters[0].value #=> String
    #   resp.deployment_groups_info[0].on_premises_instance_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_groups_info[0].auto_scaling_groups #=> Array
    #   resp.deployment_groups_info[0].auto_scaling_groups[0].name #=> String
    #   resp.deployment_groups_info[0].auto_scaling_groups[0].hook #=> String
    #   resp.deployment_groups_info[0].service_role_arn #=> String
    #   resp.deployment_groups_info[0].target_revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.deployment_groups_info[0].target_revision.s3_location.bucket #=> String
    #   resp.deployment_groups_info[0].target_revision.s3_location.key #=> String
    #   resp.deployment_groups_info[0].target_revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.deployment_groups_info[0].target_revision.s3_location.version #=> String
    #   resp.deployment_groups_info[0].target_revision.s3_location.e_tag #=> String
    #   resp.deployment_groups_info[0].target_revision.git_hub_location.repository #=> String
    #   resp.deployment_groups_info[0].target_revision.git_hub_location.commit_id #=> String
    #   resp.deployment_groups_info[0].target_revision.string.content #=> String
    #   resp.deployment_groups_info[0].target_revision.string.sha256 #=> String
    #   resp.deployment_groups_info[0].trigger_configurations #=> Array
    #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_name #=> String
    #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_target_arn #=> String
    #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_events #=> Array
    #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_events[0] #=> String, one of "DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"
    #   resp.deployment_groups_info[0].alarm_configuration.enabled #=> Boolean
    #   resp.deployment_groups_info[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.deployment_groups_info[0].alarm_configuration.alarms #=> Array
    #   resp.deployment_groups_info[0].alarm_configuration.alarms[0].name #=> String
    #   resp.deployment_groups_info[0].auto_rollback_configuration.enabled #=> Boolean
    #   resp.deployment_groups_info[0].auto_rollback_configuration.events #=> Array
    #   resp.deployment_groups_info[0].auto_rollback_configuration.events[0] #=> String, one of "DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"
    #   resp.deployment_groups_info[0].deployment_style.deployment_type #=> String, one of "IN_PLACE", "BLUE_GREEN"
    #   resp.deployment_groups_info[0].deployment_style.deployment_option #=> String, one of "WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"
    #   resp.deployment_groups_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of "TERMINATE", "KEEP_ALIVE"
    #   resp.deployment_groups_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.deployment_groups_info[0].blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of "CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"
    #   resp.deployment_groups_info[0].blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.deployment_groups_info[0].blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of "DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"
    #   resp.deployment_groups_info[0].load_balancer_info.elb_info_list #=> Array
    #   resp.deployment_groups_info[0].load_balancer_info.elb_info_list[0].name #=> String
    #   resp.deployment_groups_info[0].load_balancer_info.target_group_info_list #=> Array
    #   resp.deployment_groups_info[0].load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.deployment_groups_info[0].last_successful_deployment.deployment_id #=> String
    #   resp.deployment_groups_info[0].last_successful_deployment.status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"
    #   resp.deployment_groups_info[0].last_successful_deployment.end_time #=> Time
    #   resp.deployment_groups_info[0].last_successful_deployment.create_time #=> Time
    #   resp.deployment_groups_info[0].last_attempted_deployment.deployment_id #=> String
    #   resp.deployment_groups_info[0].last_attempted_deployment.status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"
    #   resp.deployment_groups_info[0].last_attempted_deployment.end_time #=> Time
    #   resp.deployment_groups_info[0].last_attempted_deployment.create_time #=> Time
    #   resp.deployment_groups_info[0].ec2_tag_set.ec2_tag_set_list #=> Array
    #   resp.deployment_groups_info[0].ec2_tag_set.ec2_tag_set_list[0] #=> Array
    #   resp.deployment_groups_info[0].ec2_tag_set.ec2_tag_set_list[0][0].key #=> String
    #   resp.deployment_groups_info[0].ec2_tag_set.ec2_tag_set_list[0][0].value #=> String
    #   resp.deployment_groups_info[0].ec2_tag_set.ec2_tag_set_list[0][0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_groups_info[0].on_premises_tag_set.on_premises_tag_set_list #=> Array
    #   resp.deployment_groups_info[0].on_premises_tag_set.on_premises_tag_set_list[0] #=> Array
    #   resp.deployment_groups_info[0].on_premises_tag_set.on_premises_tag_set_list[0][0].key #=> String
    #   resp.deployment_groups_info[0].on_premises_tag_set.on_premises_tag_set_list[0][0].value #=> String
    #   resp.deployment_groups_info[0].on_premises_tag_set.on_premises_tag_set_list[0][0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_groups_info[0].compute_platform #=> String, one of "Server", "Lambda"
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentGroups AWS API Documentation
    #
    # @overload batch_get_deployment_groups(params = {})
    # @param [Hash] params ({})
    def batch_get_deployment_groups(params = {}, options = {})
      req = build_request(:batch_get_deployment_groups, params)
      req.send_request(options)
    end

    # Gets information about one or more instance that are part of a
    # deployment group.
    #
    # @option params [required, String] :deployment_id
    #   The unique ID of a deployment.
    #
    # @option params [required, Array<String>] :instance_ids
    #   The unique IDs of instances in the deployment group.
    #
    # @return [Types::BatchGetDeploymentInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDeploymentInstancesOutput#instances_summary #instances_summary} => Array&lt;Types::InstanceSummary&gt;
    #   * {Types::BatchGetDeploymentInstancesOutput#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployment_instances({
    #     deployment_id: "DeploymentId", # required
    #     instance_ids: ["InstanceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instances_summary #=> Array
    #   resp.instances_summary[0].deployment_id #=> String
    #   resp.instances_summary[0].instance_id #=> String
    #   resp.instances_summary[0].status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"
    #   resp.instances_summary[0].last_updated_at #=> Time
    #   resp.instances_summary[0].lifecycle_events #=> Array
    #   resp.instances_summary[0].lifecycle_events[0].lifecycle_event_name #=> String
    #   resp.instances_summary[0].lifecycle_events[0].diagnostics.error_code #=> String, one of "Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"
    #   resp.instances_summary[0].lifecycle_events[0].diagnostics.script_name #=> String
    #   resp.instances_summary[0].lifecycle_events[0].diagnostics.message #=> String
    #   resp.instances_summary[0].lifecycle_events[0].diagnostics.log_tail #=> String
    #   resp.instances_summary[0].lifecycle_events[0].start_time #=> Time
    #   resp.instances_summary[0].lifecycle_events[0].end_time #=> Time
    #   resp.instances_summary[0].lifecycle_events[0].status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"
    #   resp.instances_summary[0].instance_type #=> String, one of "Blue", "Green"
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentInstances AWS API Documentation
    #
    # @overload batch_get_deployment_instances(params = {})
    # @param [Hash] params ({})
    def batch_get_deployment_instances(params = {}, options = {})
      req = build_request(:batch_get_deployment_instances, params)
      req.send_request(options)
    end

    # Gets information about one or more deployments.
    #
    # @option params [required, Array<String>] :deployment_ids
    #   A list of deployment IDs, separated by spaces.
    #
    # @return [Types::BatchGetDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDeploymentsOutput#deployments_info #deployments_info} => Array&lt;Types::DeploymentInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployments({
    #     deployment_ids: ["DeploymentId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments_info #=> Array
    #   resp.deployments_info[0].application_name #=> String
    #   resp.deployments_info[0].deployment_group_name #=> String
    #   resp.deployments_info[0].deployment_config_name #=> String
    #   resp.deployments_info[0].deployment_id #=> String
    #   resp.deployments_info[0].previous_revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.deployments_info[0].previous_revision.s3_location.bucket #=> String
    #   resp.deployments_info[0].previous_revision.s3_location.key #=> String
    #   resp.deployments_info[0].previous_revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.deployments_info[0].previous_revision.s3_location.version #=> String
    #   resp.deployments_info[0].previous_revision.s3_location.e_tag #=> String
    #   resp.deployments_info[0].previous_revision.git_hub_location.repository #=> String
    #   resp.deployments_info[0].previous_revision.git_hub_location.commit_id #=> String
    #   resp.deployments_info[0].previous_revision.string.content #=> String
    #   resp.deployments_info[0].previous_revision.string.sha256 #=> String
    #   resp.deployments_info[0].revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.deployments_info[0].revision.s3_location.bucket #=> String
    #   resp.deployments_info[0].revision.s3_location.key #=> String
    #   resp.deployments_info[0].revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.deployments_info[0].revision.s3_location.version #=> String
    #   resp.deployments_info[0].revision.s3_location.e_tag #=> String
    #   resp.deployments_info[0].revision.git_hub_location.repository #=> String
    #   resp.deployments_info[0].revision.git_hub_location.commit_id #=> String
    #   resp.deployments_info[0].revision.string.content #=> String
    #   resp.deployments_info[0].revision.string.sha256 #=> String
    #   resp.deployments_info[0].status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"
    #   resp.deployments_info[0].error_information.code #=> String, one of "DEPLOYMENT_GROUP_MISSING", "APPLICATION_MISSING", "REVISION_MISSING", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "NO_EC2_SUBSCRIPTION", "OVER_MAX_INSTANCES", "NO_INSTANCES", "TIMEOUT", "HEALTH_CONSTRAINTS_INVALID", "HEALTH_CONSTRAINTS", "INTERNAL_ERROR", "THROTTLED", "ALARM_ACTIVE", "AGENT_ISSUE", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "AUTO_SCALING_CONFIGURATION", "MANUAL_STOP", "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", "MISSING_ELB_INFORMATION", "MISSING_GITHUB_TOKEN", "ELASTIC_LOAD_BALANCING_INVALID", "ELB_INVALID_INSTANCE", "INVALID_LAMBDA_CONFIGURATION", "INVALID_LAMBDA_FUNCTION", "HOOK_EXECUTION_FAILURE"
    #   resp.deployments_info[0].error_information.message #=> String
    #   resp.deployments_info[0].create_time #=> Time
    #   resp.deployments_info[0].start_time #=> Time
    #   resp.deployments_info[0].complete_time #=> Time
    #   resp.deployments_info[0].deployment_overview.pending #=> Integer
    #   resp.deployments_info[0].deployment_overview.in_progress #=> Integer
    #   resp.deployments_info[0].deployment_overview.succeeded #=> Integer
    #   resp.deployments_info[0].deployment_overview.failed #=> Integer
    #   resp.deployments_info[0].deployment_overview.skipped #=> Integer
    #   resp.deployments_info[0].deployment_overview.ready #=> Integer
    #   resp.deployments_info[0].description #=> String
    #   resp.deployments_info[0].creator #=> String, one of "user", "autoscaling", "codeDeployRollback"
    #   resp.deployments_info[0].ignore_application_stop_failures #=> Boolean
    #   resp.deployments_info[0].auto_rollback_configuration.enabled #=> Boolean
    #   resp.deployments_info[0].auto_rollback_configuration.events #=> Array
    #   resp.deployments_info[0].auto_rollback_configuration.events[0] #=> String, one of "DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"
    #   resp.deployments_info[0].update_outdated_instances_only #=> Boolean
    #   resp.deployments_info[0].rollback_info.rollback_deployment_id #=> String
    #   resp.deployments_info[0].rollback_info.rollback_triggering_deployment_id #=> String
    #   resp.deployments_info[0].rollback_info.rollback_message #=> String
    #   resp.deployments_info[0].deployment_style.deployment_type #=> String, one of "IN_PLACE", "BLUE_GREEN"
    #   resp.deployments_info[0].deployment_style.deployment_option #=> String, one of "WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"
    #   resp.deployments_info[0].target_instances.tag_filters #=> Array
    #   resp.deployments_info[0].target_instances.tag_filters[0].key #=> String
    #   resp.deployments_info[0].target_instances.tag_filters[0].value #=> String
    #   resp.deployments_info[0].target_instances.tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployments_info[0].target_instances.auto_scaling_groups #=> Array
    #   resp.deployments_info[0].target_instances.auto_scaling_groups[0] #=> String
    #   resp.deployments_info[0].target_instances.ec2_tag_set.ec2_tag_set_list #=> Array
    #   resp.deployments_info[0].target_instances.ec2_tag_set.ec2_tag_set_list[0] #=> Array
    #   resp.deployments_info[0].target_instances.ec2_tag_set.ec2_tag_set_list[0][0].key #=> String
    #   resp.deployments_info[0].target_instances.ec2_tag_set.ec2_tag_set_list[0][0].value #=> String
    #   resp.deployments_info[0].target_instances.ec2_tag_set.ec2_tag_set_list[0][0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployments_info[0].instance_termination_wait_time_started #=> Boolean
    #   resp.deployments_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of "TERMINATE", "KEEP_ALIVE"
    #   resp.deployments_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.deployments_info[0].blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of "CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"
    #   resp.deployments_info[0].blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.deployments_info[0].blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of "DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"
    #   resp.deployments_info[0].load_balancer_info.elb_info_list #=> Array
    #   resp.deployments_info[0].load_balancer_info.elb_info_list[0].name #=> String
    #   resp.deployments_info[0].load_balancer_info.target_group_info_list #=> Array
    #   resp.deployments_info[0].load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.deployments_info[0].additional_deployment_status_info #=> String
    #   resp.deployments_info[0].file_exists_behavior #=> String, one of "DISALLOW", "OVERWRITE", "RETAIN"
    #   resp.deployments_info[0].deployment_status_messages #=> Array
    #   resp.deployments_info[0].deployment_status_messages[0] #=> String
    #   resp.deployments_info[0].compute_platform #=> String, one of "Server", "Lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeployments AWS API Documentation
    #
    # @overload batch_get_deployments(params = {})
    # @param [Hash] params ({})
    def batch_get_deployments(params = {}, options = {})
      req = build_request(:batch_get_deployments, params)
      req.send_request(options)
    end

    # Gets information about one or more on-premises instances.
    #
    # @option params [required, Array<String>] :instance_names
    #   The names of the on-premises instances about which to get information.
    #
    # @return [Types::BatchGetOnPremisesInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetOnPremisesInstancesOutput#instance_infos #instance_infos} => Array&lt;Types::InstanceInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_on_premises_instances({
    #     instance_names: ["InstanceName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_infos #=> Array
    #   resp.instance_infos[0].instance_name #=> String
    #   resp.instance_infos[0].iam_session_arn #=> String
    #   resp.instance_infos[0].iam_user_arn #=> String
    #   resp.instance_infos[0].instance_arn #=> String
    #   resp.instance_infos[0].register_time #=> Time
    #   resp.instance_infos[0].deregister_time #=> Time
    #   resp.instance_infos[0].tags #=> Array
    #   resp.instance_infos[0].tags[0].key #=> String
    #   resp.instance_infos[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetOnPremisesInstances AWS API Documentation
    #
    # @overload batch_get_on_premises_instances(params = {})
    # @param [Hash] params ({})
    def batch_get_on_premises_instances(params = {}, options = {})
      req = build_request(:batch_get_on_premises_instances, params)
      req.send_request(options)
    end

    # For a blue/green deployment, starts the process of rerouting traffic
    # from instances in the original environment to instances in the
    # replacement environment without waiting for a specified wait time to
    # elapse. (Traffic rerouting, which is achieved by registering instances
    # in the replacement environment with the load balancer, can start as
    # soon as all instances have a status of Ready.)
    #
    # @option params [String] :deployment_id
    #   The deployment ID of the blue/green deployment for which you want to
    #   start rerouting traffic to the replacement environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.continue_deployment({
    #     deployment_id: "DeploymentId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ContinueDeployment AWS API Documentation
    #
    # @overload continue_deployment(params = {})
    # @param [Hash] params ({})
    def continue_deployment(params = {}, options = {})
      req = build_request(:continue_deployment, params)
      req.send_request(options)
    end

    # Creates an application.
    #
    # @option params [required, String] :application_name
    #   The name of the application. This name must be unique with the
    #   applicable IAM user or AWS account.
    #
    # @option params [String] :compute_platform
    #   The destination platform type for the deployment (`Lambda` or
    #   `Server`).
    #
    # @return [Types::CreateApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationOutput#application_id #application_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     application_name: "ApplicationName", # required
    #     compute_platform: "Server", # accepts Server, Lambda
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Deploys an application revision through the specified deployment
    # group.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [String] :deployment_group_name
    #   The name of the deployment group.
    #
    # @option params [Types::RevisionLocation] :revision
    #   The type and location of the revision to deploy.
    #
    # @option params [String] :deployment_config_name
    #   The name of a deployment configuration associated with the applicable
    #   IAM user or AWS account.
    #
    #   If not specified, the value configured in the deployment group will be
    #   used as the default. If the deployment group does not have a
    #   deployment configuration associated with it, then
    #   CodeDeployDefault.OneAtATime will be used by default.
    #
    # @option params [String] :description
    #   A comment about the deployment.
    #
    # @option params [Boolean] :ignore_application_stop_failures
    #   If set to true, then if the deployment causes the ApplicationStop
    #   deployment lifecycle event to an instance to fail, the deployment to
    #   that instance will not be considered to have failed at that point and
    #   will continue on to the BeforeInstall deployment lifecycle event.
    #
    #   If set to false or not specified, then if the deployment causes the
    #   ApplicationStop deployment lifecycle event to fail to an instance, the
    #   deployment to that instance will stop, and the deployment to that
    #   instance will be considered to have failed.
    #
    # @option params [Types::TargetInstances] :target_instances
    #   Information about the instances that will belong to the replacement
    #   environment in a blue/green deployment.
    #
    # @option params [Types::AutoRollbackConfiguration] :auto_rollback_configuration
    #   Configuration information for an automatic rollback that is added when
    #   a deployment is created.
    #
    # @option params [Boolean] :update_outdated_instances_only
    #   Indicates whether to deploy to all instances or only to instances that
    #   are not running the latest application revision.
    #
    # @option params [String] :file_exists_behavior
    #   Information about how AWS CodeDeploy handles files that already exist
    #   in a deployment target location but weren't part of the previous
    #   successful deployment.
    #
    #   The fileExistsBehavior parameter takes any of the following values:
    #
    #   * DISALLOW: The deployment fails. This is also the default behavior if
    #     no option is specified.
    #
    #   * OVERWRITE: The version of the file from the application revision
    #     currently being deployed replaces the version already on the
    #     instance.
    #
    #   * RETAIN: The version of the file already on the instance is kept and
    #     used as part of the new deployment.
    #
    # @return [Types::CreateDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentOutput#deployment_id #deployment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName",
    #     revision: {
    #       revision_type: "S3", # accepts S3, GitHub, String
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #         version: "VersionId",
    #         e_tag: "ETag",
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId",
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256",
    #       },
    #     },
    #     deployment_config_name: "DeploymentConfigName",
    #     description: "Description",
    #     ignore_application_stop_failures: false,
    #     target_instances: {
    #       tag_filters: [
    #         {
    #           key: "Key",
    #           value: "Value",
    #           type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #         },
    #       ],
    #       auto_scaling_groups: ["AutoScalingGroupName"],
    #       ec2_tag_set: {
    #         ec2_tag_set_list: [
    #           [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #             },
    #           ],
    #         ],
    #       },
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #     },
    #     update_outdated_instances_only: false,
    #     file_exists_behavior: "DISALLOW", # accepts DISALLOW, OVERWRITE, RETAIN
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates a deployment configuration.
    #
    # @option params [required, String] :deployment_config_name
    #   The name of the deployment configuration to create.
    #
    # @option params [Types::MinimumHealthyHosts] :minimum_healthy_hosts
    #   The minimum number of healthy instances that should be available at
    #   any time during the deployment. There are two parameters expected in
    #   the input: type and value.
    #
    #   The type parameter takes either of the following values:
    #
    #   * HOST\_COUNT: The value parameter represents the minimum number of
    #     healthy instances as an absolute value.
    #
    #   * FLEET\_PERCENT: The value parameter represents the minimum number of
    #     healthy instances as a percentage of the total number of instances
    #     in the deployment. If you specify FLEET\_PERCENT, at the start of
    #     the deployment, AWS CodeDeploy converts the percentage to the
    #     equivalent number of instance and rounds up fractional instances.
    #
    #   The value parameter takes an integer.
    #
    #   For example, to set a minimum of 95% healthy instance, specify a type
    #   of FLEET\_PERCENT and a value of 95.
    #
    # @option params [Types::TrafficRoutingConfig] :traffic_routing_config
    #   The configuration that specifies how the deployment traffic will be
    #   routed.
    #
    # @option params [String] :compute_platform
    #   The destination platform type for the deployment (`Lambda` or
    #   `Server`&gt;).
    #
    # @return [Types::CreateDeploymentConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentConfigOutput#deployment_config_id #deployment_config_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_config({
    #     deployment_config_name: "DeploymentConfigName", # required
    #     minimum_healthy_hosts: {
    #       value: 1,
    #       type: "HOST_COUNT", # accepts HOST_COUNT, FLEET_PERCENT
    #     },
    #     traffic_routing_config: {
    #       type: "TimeBasedCanary", # accepts TimeBasedCanary, TimeBasedLinear, AllAtOnce
    #       time_based_canary: {
    #         canary_percentage: 1,
    #         canary_interval: 1,
    #       },
    #       time_based_linear: {
    #         linear_percentage: 1,
    #         linear_interval: 1,
    #       },
    #     },
    #     compute_platform: "Server", # accepts Server, Lambda
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_config_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentConfig AWS API Documentation
    #
    # @overload create_deployment_config(params = {})
    # @param [Hash] params ({})
    def create_deployment_config(params = {}, options = {})
      req = build_request(:create_deployment_config, params)
      req.send_request(options)
    end

    # Creates a deployment group to which application revisions will be
    # deployed.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [required, String] :deployment_group_name
    #   The name of a new deployment group for the specified application.
    #
    # @option params [String] :deployment_config_name
    #   If specified, the deployment configuration name can be either one of
    #   the predefined configurations provided with AWS CodeDeploy or a custom
    #   deployment configuration that you create by calling the create
    #   deployment configuration operation.
    #
    #   CodeDeployDefault.OneAtATime is the default deployment configuration.
    #   It is used if a configuration isn't specified for the deployment or
    #   the deployment group.
    #
    #   For more information about the predefined deployment configurations in
    #   AWS CodeDeploy, see [Working with Deployment Groups in AWS
    #   CodeDeploy][1] in the AWS CodeDeploy User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html
    #
    # @option params [Array<Types::EC2TagFilter>] :ec2_tag_filters
    #   The Amazon EC2 tags on which to filter. The deployment group will
    #   include EC2 instances with any of the specified tags. Cannot be used
    #   in the same call as ec2TagSet.
    #
    # @option params [Array<Types::TagFilter>] :on_premises_instance_tag_filters
    #   The on-premises instance tags on which to filter. The deployment group
    #   will include on-premises instances with any of the specified tags.
    #   Cannot be used in the same call as OnPremisesTagSet.
    #
    # @option params [Array<String>] :auto_scaling_groups
    #   A list of associated Auto Scaling groups.
    #
    # @option params [required, String] :service_role_arn
    #   A service role ARN that allows AWS CodeDeploy to act on the user's
    #   behalf when interacting with AWS services.
    #
    # @option params [Array<Types::TriggerConfig>] :trigger_configurations
    #   Information about triggers to create when the deployment group is
    #   created. For examples, see [Create a Trigger for an AWS CodeDeploy
    #   Event][1] in the AWS CodeDeploy User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   Information to add about Amazon CloudWatch alarms when the deployment
    #   group is created.
    #
    # @option params [Types::AutoRollbackConfiguration] :auto_rollback_configuration
    #   Configuration information for an automatic rollback that is added when
    #   a deployment group is created.
    #
    # @option params [Types::DeploymentStyle] :deployment_style
    #   Information about the type of deployment, in-place or blue/green, that
    #   you want to run and whether to route deployment traffic behind a load
    #   balancer.
    #
    # @option params [Types::BlueGreenDeploymentConfiguration] :blue_green_deployment_configuration
    #   Information about blue/green deployment options for a deployment
    #   group.
    #
    # @option params [Types::LoadBalancerInfo] :load_balancer_info
    #   Information about the load balancer used in a deployment.
    #
    # @option params [Types::EC2TagSet] :ec2_tag_set
    #   Information about groups of tags applied to EC2 instances. The
    #   deployment group will include only EC2 instances identified by all the
    #   tag groups. Cannot be used in the same call as ec2TagFilters.
    #
    # @option params [Types::OnPremisesTagSet] :on_premises_tag_set
    #   Information about groups of tags applied to on-premises instances. The
    #   deployment group will include only on-premises instances identified by
    #   all the tag groups. Cannot be used in the same call as
    #   onPremisesInstanceTagFilters.
    #
    # @return [Types::CreateDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentGroupOutput#deployment_group_id #deployment_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_group({
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName", # required
    #     deployment_config_name: "DeploymentConfigName",
    #     ec2_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       },
    #     ],
    #     on_premises_instance_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       },
    #     ],
    #     auto_scaling_groups: ["AutoScalingGroupName"],
    #     service_role_arn: "Role", # required
    #     trigger_configurations: [
    #       {
    #         trigger_name: "TriggerName",
    #         trigger_target_arn: "TriggerTargetArn",
    #         trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
    #       },
    #     ],
    #     alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: "AlarmName",
    #         },
    #       ],
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #     },
    #     deployment_style: {
    #       deployment_type: "IN_PLACE", # accepts IN_PLACE, BLUE_GREEN
    #       deployment_option: "WITH_TRAFFIC_CONTROL", # accepts WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL
    #     },
    #     blue_green_deployment_configuration: {
    #       terminate_blue_instances_on_deployment_success: {
    #         action: "TERMINATE", # accepts TERMINATE, KEEP_ALIVE
    #         termination_wait_time_in_minutes: 1,
    #       },
    #       deployment_ready_option: {
    #         action_on_timeout: "CONTINUE_DEPLOYMENT", # accepts CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT
    #         wait_time_in_minutes: 1,
    #       },
    #       green_fleet_provisioning_option: {
    #         action: "DISCOVER_EXISTING", # accepts DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP
    #       },
    #     },
    #     load_balancer_info: {
    #       elb_info_list: [
    #         {
    #           name: "ELBName",
    #         },
    #       ],
    #       target_group_info_list: [
    #         {
    #           name: "TargetGroupName",
    #         },
    #       ],
    #     },
    #     ec2_tag_set: {
    #       ec2_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #       ],
    #     },
    #     on_premises_tag_set: {
    #       on_premises_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentGroup AWS API Documentation
    #
    # @overload create_deployment_group(params = {})
    # @param [Hash] params ({})
    def create_deployment_group(params = {}, options = {})
      req = build_request(:create_deployment_group, params)
      req.send_request(options)
    end

    # Deletes an application.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_name: "ApplicationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes a deployment configuration.
    #
    # <note markdown="1"> A deployment configuration cannot be deleted if it is currently in
    # use. Predefined configurations cannot be deleted.
    #
    #  </note>
    #
    # @option params [required, String] :deployment_config_name
    #   The name of a deployment configuration associated with the applicable
    #   IAM user or AWS account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment_config({
    #     deployment_config_name: "DeploymentConfigName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentConfig AWS API Documentation
    #
    # @overload delete_deployment_config(params = {})
    # @param [Hash] params ({})
    def delete_deployment_config(params = {}, options = {})
      req = build_request(:delete_deployment_config, params)
      req.send_request(options)
    end

    # Deletes a deployment group.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [required, String] :deployment_group_name
    #   The name of an existing deployment group for the specified
    #   application.
    #
    # @return [Types::DeleteDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDeploymentGroupOutput#hooks_not_cleaned_up #hooks_not_cleaned_up} => Array&lt;Types::AutoScalingGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment_group({
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hooks_not_cleaned_up #=> Array
    #   resp.hooks_not_cleaned_up[0].name #=> String
    #   resp.hooks_not_cleaned_up[0].hook #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentGroup AWS API Documentation
    #
    # @overload delete_deployment_group(params = {})
    # @param [Hash] params ({})
    def delete_deployment_group(params = {}, options = {})
      req = build_request(:delete_deployment_group, params)
      req.send_request(options)
    end

    # Deletes a GitHub account connection.
    #
    # @option params [String] :token_name
    #   The name of the GitHub account connection to delete.
    #
    # @return [Types::DeleteGitHubAccountTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGitHubAccountTokenOutput#token_name #token_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_git_hub_account_token({
    #     token_name: "GitHubAccountTokenName",
    #   })
    #
    # @example Response structure
    #
    #   resp.token_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteGitHubAccountToken AWS API Documentation
    #
    # @overload delete_git_hub_account_token(params = {})
    # @param [Hash] params ({})
    def delete_git_hub_account_token(params = {}, options = {})
      req = build_request(:delete_git_hub_account_token, params)
      req.send_request(options)
    end

    # Deregisters an on-premises instance.
    #
    # @option params [required, String] :instance_name
    #   The name of the on-premises instance to deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_on_premises_instance({
    #     instance_name: "InstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeregisterOnPremisesInstance AWS API Documentation
    #
    # @overload deregister_on_premises_instance(params = {})
    # @param [Hash] params ({})
    def deregister_on_premises_instance(params = {}, options = {})
      req = build_request(:deregister_on_premises_instance, params)
      req.send_request(options)
    end

    # Gets information about an application.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @return [Types::GetApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationOutput#application #application} => Types::ApplicationInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_name: "ApplicationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application.application_id #=> String
    #   resp.application.application_name #=> String
    #   resp.application.create_time #=> Time
    #   resp.application.linked_to_git_hub #=> Boolean
    #   resp.application.git_hub_account_name #=> String
    #   resp.application.compute_platform #=> String, one of "Server", "Lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Gets information about an application revision.
    #
    # @option params [required, String] :application_name
    #   The name of the application that corresponds to the revision.
    #
    # @option params [required, Types::RevisionLocation] :revision
    #   Information about the application revision to get, including type and
    #   location.
    #
    # @return [Types::GetApplicationRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationRevisionOutput#application_name #application_name} => String
    #   * {Types::GetApplicationRevisionOutput#revision #revision} => Types::RevisionLocation
    #   * {Types::GetApplicationRevisionOutput#revision_info #revision_info} => Types::GenericRevisionInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_revision({
    #     application_name: "ApplicationName", # required
    #     revision: { # required
    #       revision_type: "S3", # accepts S3, GitHub, String
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #         version: "VersionId",
    #         e_tag: "ETag",
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId",
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_name #=> String
    #   resp.revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.revision.s3_location.bucket #=> String
    #   resp.revision.s3_location.key #=> String
    #   resp.revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.revision.s3_location.version #=> String
    #   resp.revision.s3_location.e_tag #=> String
    #   resp.revision.git_hub_location.repository #=> String
    #   resp.revision.git_hub_location.commit_id #=> String
    #   resp.revision.string.content #=> String
    #   resp.revision.string.sha256 #=> String
    #   resp.revision_info.description #=> String
    #   resp.revision_info.deployment_groups #=> Array
    #   resp.revision_info.deployment_groups[0] #=> String
    #   resp.revision_info.first_used_time #=> Time
    #   resp.revision_info.last_used_time #=> Time
    #   resp.revision_info.register_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationRevision AWS API Documentation
    #
    # @overload get_application_revision(params = {})
    # @param [Hash] params ({})
    def get_application_revision(params = {}, options = {})
      req = build_request(:get_application_revision, params)
      req.send_request(options)
    end

    # Gets information about a deployment.
    #
    # @option params [required, String] :deployment_id
    #   A deployment ID associated with the applicable IAM user or AWS
    #   account.
    #
    # @return [Types::GetDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentOutput#deployment_info #deployment_info} => Types::DeploymentInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     deployment_id: "DeploymentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_info.application_name #=> String
    #   resp.deployment_info.deployment_group_name #=> String
    #   resp.deployment_info.deployment_config_name #=> String
    #   resp.deployment_info.deployment_id #=> String
    #   resp.deployment_info.previous_revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.deployment_info.previous_revision.s3_location.bucket #=> String
    #   resp.deployment_info.previous_revision.s3_location.key #=> String
    #   resp.deployment_info.previous_revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.deployment_info.previous_revision.s3_location.version #=> String
    #   resp.deployment_info.previous_revision.s3_location.e_tag #=> String
    #   resp.deployment_info.previous_revision.git_hub_location.repository #=> String
    #   resp.deployment_info.previous_revision.git_hub_location.commit_id #=> String
    #   resp.deployment_info.previous_revision.string.content #=> String
    #   resp.deployment_info.previous_revision.string.sha256 #=> String
    #   resp.deployment_info.revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.deployment_info.revision.s3_location.bucket #=> String
    #   resp.deployment_info.revision.s3_location.key #=> String
    #   resp.deployment_info.revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.deployment_info.revision.s3_location.version #=> String
    #   resp.deployment_info.revision.s3_location.e_tag #=> String
    #   resp.deployment_info.revision.git_hub_location.repository #=> String
    #   resp.deployment_info.revision.git_hub_location.commit_id #=> String
    #   resp.deployment_info.revision.string.content #=> String
    #   resp.deployment_info.revision.string.sha256 #=> String
    #   resp.deployment_info.status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"
    #   resp.deployment_info.error_information.code #=> String, one of "DEPLOYMENT_GROUP_MISSING", "APPLICATION_MISSING", "REVISION_MISSING", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "NO_EC2_SUBSCRIPTION", "OVER_MAX_INSTANCES", "NO_INSTANCES", "TIMEOUT", "HEALTH_CONSTRAINTS_INVALID", "HEALTH_CONSTRAINTS", "INTERNAL_ERROR", "THROTTLED", "ALARM_ACTIVE", "AGENT_ISSUE", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "AUTO_SCALING_CONFIGURATION", "MANUAL_STOP", "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", "MISSING_ELB_INFORMATION", "MISSING_GITHUB_TOKEN", "ELASTIC_LOAD_BALANCING_INVALID", "ELB_INVALID_INSTANCE", "INVALID_LAMBDA_CONFIGURATION", "INVALID_LAMBDA_FUNCTION", "HOOK_EXECUTION_FAILURE"
    #   resp.deployment_info.error_information.message #=> String
    #   resp.deployment_info.create_time #=> Time
    #   resp.deployment_info.start_time #=> Time
    #   resp.deployment_info.complete_time #=> Time
    #   resp.deployment_info.deployment_overview.pending #=> Integer
    #   resp.deployment_info.deployment_overview.in_progress #=> Integer
    #   resp.deployment_info.deployment_overview.succeeded #=> Integer
    #   resp.deployment_info.deployment_overview.failed #=> Integer
    #   resp.deployment_info.deployment_overview.skipped #=> Integer
    #   resp.deployment_info.deployment_overview.ready #=> Integer
    #   resp.deployment_info.description #=> String
    #   resp.deployment_info.creator #=> String, one of "user", "autoscaling", "codeDeployRollback"
    #   resp.deployment_info.ignore_application_stop_failures #=> Boolean
    #   resp.deployment_info.auto_rollback_configuration.enabled #=> Boolean
    #   resp.deployment_info.auto_rollback_configuration.events #=> Array
    #   resp.deployment_info.auto_rollback_configuration.events[0] #=> String, one of "DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"
    #   resp.deployment_info.update_outdated_instances_only #=> Boolean
    #   resp.deployment_info.rollback_info.rollback_deployment_id #=> String
    #   resp.deployment_info.rollback_info.rollback_triggering_deployment_id #=> String
    #   resp.deployment_info.rollback_info.rollback_message #=> String
    #   resp.deployment_info.deployment_style.deployment_type #=> String, one of "IN_PLACE", "BLUE_GREEN"
    #   resp.deployment_info.deployment_style.deployment_option #=> String, one of "WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"
    #   resp.deployment_info.target_instances.tag_filters #=> Array
    #   resp.deployment_info.target_instances.tag_filters[0].key #=> String
    #   resp.deployment_info.target_instances.tag_filters[0].value #=> String
    #   resp.deployment_info.target_instances.tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_info.target_instances.auto_scaling_groups #=> Array
    #   resp.deployment_info.target_instances.auto_scaling_groups[0] #=> String
    #   resp.deployment_info.target_instances.ec2_tag_set.ec2_tag_set_list #=> Array
    #   resp.deployment_info.target_instances.ec2_tag_set.ec2_tag_set_list[0] #=> Array
    #   resp.deployment_info.target_instances.ec2_tag_set.ec2_tag_set_list[0][0].key #=> String
    #   resp.deployment_info.target_instances.ec2_tag_set.ec2_tag_set_list[0][0].value #=> String
    #   resp.deployment_info.target_instances.ec2_tag_set.ec2_tag_set_list[0][0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_info.instance_termination_wait_time_started #=> Boolean
    #   resp.deployment_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of "TERMINATE", "KEEP_ALIVE"
    #   resp.deployment_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.deployment_info.blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of "CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"
    #   resp.deployment_info.blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.deployment_info.blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of "DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"
    #   resp.deployment_info.load_balancer_info.elb_info_list #=> Array
    #   resp.deployment_info.load_balancer_info.elb_info_list[0].name #=> String
    #   resp.deployment_info.load_balancer_info.target_group_info_list #=> Array
    #   resp.deployment_info.load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.deployment_info.additional_deployment_status_info #=> String
    #   resp.deployment_info.file_exists_behavior #=> String, one of "DISALLOW", "OVERWRITE", "RETAIN"
    #   resp.deployment_info.deployment_status_messages #=> Array
    #   resp.deployment_info.deployment_status_messages[0] #=> String
    #   resp.deployment_info.compute_platform #=> String, one of "Server", "Lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Gets information about a deployment configuration.
    #
    # @option params [required, String] :deployment_config_name
    #   The name of a deployment configuration associated with the applicable
    #   IAM user or AWS account.
    #
    # @return [Types::GetDeploymentConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentConfigOutput#deployment_config_info #deployment_config_info} => Types::DeploymentConfigInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_config({
    #     deployment_config_name: "DeploymentConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_config_info.deployment_config_id #=> String
    #   resp.deployment_config_info.deployment_config_name #=> String
    #   resp.deployment_config_info.minimum_healthy_hosts.value #=> Integer
    #   resp.deployment_config_info.minimum_healthy_hosts.type #=> String, one of "HOST_COUNT", "FLEET_PERCENT"
    #   resp.deployment_config_info.create_time #=> Time
    #   resp.deployment_config_info.compute_platform #=> String, one of "Server", "Lambda"
    #   resp.deployment_config_info.traffic_routing_config.type #=> String, one of "TimeBasedCanary", "TimeBasedLinear", "AllAtOnce"
    #   resp.deployment_config_info.traffic_routing_config.time_based_canary.canary_percentage #=> Integer
    #   resp.deployment_config_info.traffic_routing_config.time_based_canary.canary_interval #=> Integer
    #   resp.deployment_config_info.traffic_routing_config.time_based_linear.linear_percentage #=> Integer
    #   resp.deployment_config_info.traffic_routing_config.time_based_linear.linear_interval #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentConfig AWS API Documentation
    #
    # @overload get_deployment_config(params = {})
    # @param [Hash] params ({})
    def get_deployment_config(params = {}, options = {})
      req = build_request(:get_deployment_config, params)
      req.send_request(options)
    end

    # Gets information about a deployment group.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [required, String] :deployment_group_name
    #   The name of an existing deployment group for the specified
    #   application.
    #
    # @return [Types::GetDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentGroupOutput#deployment_group_info #deployment_group_info} => Types::DeploymentGroupInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_group({
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_group_info.application_name #=> String
    #   resp.deployment_group_info.deployment_group_id #=> String
    #   resp.deployment_group_info.deployment_group_name #=> String
    #   resp.deployment_group_info.deployment_config_name #=> String
    #   resp.deployment_group_info.ec2_tag_filters #=> Array
    #   resp.deployment_group_info.ec2_tag_filters[0].key #=> String
    #   resp.deployment_group_info.ec2_tag_filters[0].value #=> String
    #   resp.deployment_group_info.ec2_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_group_info.on_premises_instance_tag_filters #=> Array
    #   resp.deployment_group_info.on_premises_instance_tag_filters[0].key #=> String
    #   resp.deployment_group_info.on_premises_instance_tag_filters[0].value #=> String
    #   resp.deployment_group_info.on_premises_instance_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_group_info.auto_scaling_groups #=> Array
    #   resp.deployment_group_info.auto_scaling_groups[0].name #=> String
    #   resp.deployment_group_info.auto_scaling_groups[0].hook #=> String
    #   resp.deployment_group_info.service_role_arn #=> String
    #   resp.deployment_group_info.target_revision.revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.deployment_group_info.target_revision.s3_location.bucket #=> String
    #   resp.deployment_group_info.target_revision.s3_location.key #=> String
    #   resp.deployment_group_info.target_revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.deployment_group_info.target_revision.s3_location.version #=> String
    #   resp.deployment_group_info.target_revision.s3_location.e_tag #=> String
    #   resp.deployment_group_info.target_revision.git_hub_location.repository #=> String
    #   resp.deployment_group_info.target_revision.git_hub_location.commit_id #=> String
    #   resp.deployment_group_info.target_revision.string.content #=> String
    #   resp.deployment_group_info.target_revision.string.sha256 #=> String
    #   resp.deployment_group_info.trigger_configurations #=> Array
    #   resp.deployment_group_info.trigger_configurations[0].trigger_name #=> String
    #   resp.deployment_group_info.trigger_configurations[0].trigger_target_arn #=> String
    #   resp.deployment_group_info.trigger_configurations[0].trigger_events #=> Array
    #   resp.deployment_group_info.trigger_configurations[0].trigger_events[0] #=> String, one of "DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"
    #   resp.deployment_group_info.alarm_configuration.enabled #=> Boolean
    #   resp.deployment_group_info.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.deployment_group_info.alarm_configuration.alarms #=> Array
    #   resp.deployment_group_info.alarm_configuration.alarms[0].name #=> String
    #   resp.deployment_group_info.auto_rollback_configuration.enabled #=> Boolean
    #   resp.deployment_group_info.auto_rollback_configuration.events #=> Array
    #   resp.deployment_group_info.auto_rollback_configuration.events[0] #=> String, one of "DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"
    #   resp.deployment_group_info.deployment_style.deployment_type #=> String, one of "IN_PLACE", "BLUE_GREEN"
    #   resp.deployment_group_info.deployment_style.deployment_option #=> String, one of "WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"
    #   resp.deployment_group_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of "TERMINATE", "KEEP_ALIVE"
    #   resp.deployment_group_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.deployment_group_info.blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of "CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"
    #   resp.deployment_group_info.blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.deployment_group_info.blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of "DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"
    #   resp.deployment_group_info.load_balancer_info.elb_info_list #=> Array
    #   resp.deployment_group_info.load_balancer_info.elb_info_list[0].name #=> String
    #   resp.deployment_group_info.load_balancer_info.target_group_info_list #=> Array
    #   resp.deployment_group_info.load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.deployment_group_info.last_successful_deployment.deployment_id #=> String
    #   resp.deployment_group_info.last_successful_deployment.status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"
    #   resp.deployment_group_info.last_successful_deployment.end_time #=> Time
    #   resp.deployment_group_info.last_successful_deployment.create_time #=> Time
    #   resp.deployment_group_info.last_attempted_deployment.deployment_id #=> String
    #   resp.deployment_group_info.last_attempted_deployment.status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped", "Ready"
    #   resp.deployment_group_info.last_attempted_deployment.end_time #=> Time
    #   resp.deployment_group_info.last_attempted_deployment.create_time #=> Time
    #   resp.deployment_group_info.ec2_tag_set.ec2_tag_set_list #=> Array
    #   resp.deployment_group_info.ec2_tag_set.ec2_tag_set_list[0] #=> Array
    #   resp.deployment_group_info.ec2_tag_set.ec2_tag_set_list[0][0].key #=> String
    #   resp.deployment_group_info.ec2_tag_set.ec2_tag_set_list[0][0].value #=> String
    #   resp.deployment_group_info.ec2_tag_set.ec2_tag_set_list[0][0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_group_info.on_premises_tag_set.on_premises_tag_set_list #=> Array
    #   resp.deployment_group_info.on_premises_tag_set.on_premises_tag_set_list[0] #=> Array
    #   resp.deployment_group_info.on_premises_tag_set.on_premises_tag_set_list[0][0].key #=> String
    #   resp.deployment_group_info.on_premises_tag_set.on_premises_tag_set_list[0][0].value #=> String
    #   resp.deployment_group_info.on_premises_tag_set.on_premises_tag_set_list[0][0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
    #   resp.deployment_group_info.compute_platform #=> String, one of "Server", "Lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentGroup AWS API Documentation
    #
    # @overload get_deployment_group(params = {})
    # @param [Hash] params ({})
    def get_deployment_group(params = {}, options = {})
      req = build_request(:get_deployment_group, params)
      req.send_request(options)
    end

    # Gets information about an instance as part of a deployment.
    #
    # @option params [required, String] :deployment_id
    #   The unique ID of a deployment.
    #
    # @option params [required, String] :instance_id
    #   The unique ID of an instance in the deployment group.
    #
    # @return [Types::GetDeploymentInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentInstanceOutput#instance_summary #instance_summary} => Types::InstanceSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_instance({
    #     deployment_id: "DeploymentId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_summary.deployment_id #=> String
    #   resp.instance_summary.instance_id #=> String
    #   resp.instance_summary.status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"
    #   resp.instance_summary.last_updated_at #=> Time
    #   resp.instance_summary.lifecycle_events #=> Array
    #   resp.instance_summary.lifecycle_events[0].lifecycle_event_name #=> String
    #   resp.instance_summary.lifecycle_events[0].diagnostics.error_code #=> String, one of "Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"
    #   resp.instance_summary.lifecycle_events[0].diagnostics.script_name #=> String
    #   resp.instance_summary.lifecycle_events[0].diagnostics.message #=> String
    #   resp.instance_summary.lifecycle_events[0].diagnostics.log_tail #=> String
    #   resp.instance_summary.lifecycle_events[0].start_time #=> Time
    #   resp.instance_summary.lifecycle_events[0].end_time #=> Time
    #   resp.instance_summary.lifecycle_events[0].status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"
    #   resp.instance_summary.instance_type #=> String, one of "Blue", "Green"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentInstance AWS API Documentation
    #
    # @overload get_deployment_instance(params = {})
    # @param [Hash] params ({})
    def get_deployment_instance(params = {}, options = {})
      req = build_request(:get_deployment_instance, params)
      req.send_request(options)
    end

    # Gets information about an on-premises instance.
    #
    # @option params [required, String] :instance_name
    #   The name of the on-premises instance about which to get information.
    #
    # @return [Types::GetOnPremisesInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOnPremisesInstanceOutput#instance_info #instance_info} => Types::InstanceInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_on_premises_instance({
    #     instance_name: "InstanceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_info.instance_name #=> String
    #   resp.instance_info.iam_session_arn #=> String
    #   resp.instance_info.iam_user_arn #=> String
    #   resp.instance_info.instance_arn #=> String
    #   resp.instance_info.register_time #=> Time
    #   resp.instance_info.deregister_time #=> Time
    #   resp.instance_info.tags #=> Array
    #   resp.instance_info.tags[0].key #=> String
    #   resp.instance_info.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetOnPremisesInstance AWS API Documentation
    #
    # @overload get_on_premises_instance(params = {})
    # @param [Hash] params ({})
    def get_on_premises_instance(params = {}, options = {})
      req = build_request(:get_on_premises_instance, params)
      req.send_request(options)
    end

    # Lists information about revisions for an application.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [String] :sort_by
    #   The column name to use to sort the list results:
    #
    #   * registerTime: Sort by the time the revisions were registered with
    #     AWS CodeDeploy.
    #
    #   * firstUsedTime: Sort by the time the revisions were first used in a
    #     deployment.
    #
    #   * lastUsedTime: Sort by the time the revisions were last used in a
    #     deployment.
    #
    #   If not specified or set to null, the results will be returned in an
    #   arbitrary order.
    #
    # @option params [String] :sort_order
    #   The order in which to sort the list results:
    #
    #   * ascending: ascending order.
    #
    #   * descending: descending order.
    #
    #   If not specified, the results will be sorted in ascending order.
    #
    #   If set to null, the results will be sorted in an arbitrary order.
    #
    # @option params [String] :s3_bucket
    #   An Amazon S3 bucket name to limit the search for revisions.
    #
    #   If set to null, all of the user's buckets will be searched.
    #
    # @option params [String] :s3_key_prefix
    #   A key prefix for the set of Amazon S3 objects to limit the search for
    #   revisions.
    #
    # @option params [String] :deployed
    #   Whether to list revisions based on whether the revision is the target
    #   revision of an deployment group:
    #
    #   * include: List revisions that are target revisions of a deployment
    #     group.
    #
    #   * exclude: Do not list revisions that are target revisions of a
    #     deployment group.
    #
    #   * ignore: List all revisions.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list application revisions
    #   call. It can be used to return the next set of applications in the
    #   list.
    #
    # @return [Types::ListApplicationRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationRevisionsOutput#revisions #revisions} => Array&lt;Types::RevisionLocation&gt;
    #   * {Types::ListApplicationRevisionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_revisions({
    #     application_name: "ApplicationName", # required
    #     sort_by: "registerTime", # accepts registerTime, firstUsedTime, lastUsedTime
    #     sort_order: "ascending", # accepts ascending, descending
    #     s3_bucket: "S3Bucket",
    #     s3_key_prefix: "S3Key",
    #     deployed: "include", # accepts include, exclude, ignore
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.revisions #=> Array
    #   resp.revisions[0].revision_type #=> String, one of "S3", "GitHub", "String"
    #   resp.revisions[0].s3_location.bucket #=> String
    #   resp.revisions[0].s3_location.key #=> String
    #   resp.revisions[0].s3_location.bundle_type #=> String, one of "tar", "tgz", "zip", "YAML", "JSON"
    #   resp.revisions[0].s3_location.version #=> String
    #   resp.revisions[0].s3_location.e_tag #=> String
    #   resp.revisions[0].git_hub_location.repository #=> String
    #   resp.revisions[0].git_hub_location.commit_id #=> String
    #   resp.revisions[0].string.content #=> String
    #   resp.revisions[0].string.sha256 #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplicationRevisions AWS API Documentation
    #
    # @overload list_application_revisions(params = {})
    # @param [Hash] params ({})
    def list_application_revisions(params = {}, options = {})
      req = build_request(:list_application_revisions, params)
      req.send_request(options)
    end

    # Lists the applications registered with the applicable IAM user or AWS
    # account.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list applications call. It
    #   can be used to return the next set of applications in the list.
    #
    # @return [Types::ListApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsOutput#applications #applications} => Array&lt;String&gt;
    #   * {Types::ListApplicationsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists the deployment configurations with the applicable IAM user or
    # AWS account.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list deployment
    #   configurations call. It can be used to return the next set of
    #   deployment configurations in the list.
    #
    # @return [Types::ListDeploymentConfigsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentConfigsOutput#deployment_configs_list #deployment_configs_list} => Array&lt;String&gt;
    #   * {Types::ListDeploymentConfigsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_configs({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_configs_list #=> Array
    #   resp.deployment_configs_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentConfigs AWS API Documentation
    #
    # @overload list_deployment_configs(params = {})
    # @param [Hash] params ({})
    def list_deployment_configs(params = {}, options = {})
      req = build_request(:list_deployment_configs, params)
      req.send_request(options)
    end

    # Lists the deployment groups for an application registered with the
    # applicable IAM user or AWS account.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list deployment groups call.
    #   It can be used to return the next set of deployment groups in the
    #   list.
    #
    # @return [Types::ListDeploymentGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentGroupsOutput#application_name #application_name} => String
    #   * {Types::ListDeploymentGroupsOutput#deployment_groups #deployment_groups} => Array&lt;String&gt;
    #   * {Types::ListDeploymentGroupsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_groups({
    #     application_name: "ApplicationName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_name #=> String
    #   resp.deployment_groups #=> Array
    #   resp.deployment_groups[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentGroups AWS API Documentation
    #
    # @overload list_deployment_groups(params = {})
    # @param [Hash] params ({})
    def list_deployment_groups(params = {}, options = {})
      req = build_request(:list_deployment_groups, params)
      req.send_request(options)
    end

    # Lists the instance for a deployment associated with the applicable IAM
    # user or AWS account.
    #
    # @option params [required, String] :deployment_id
    #   The unique ID of a deployment.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list deployment instances
    #   call. It can be used to return the next set of deployment instances in
    #   the list.
    #
    # @option params [Array<String>] :instance_status_filter
    #   A subset of instances to list by status:
    #
    #   * Pending: Include those instance with pending deployments.
    #
    #   * InProgress: Include those instance where deployments are still in
    #     progress.
    #
    #   * Succeeded: Include those instances with successful deployments.
    #
    #   * Failed: Include those instance with failed deployments.
    #
    #   * Skipped: Include those instance with skipped deployments.
    #
    #   * Unknown: Include those instance with deployments in an unknown
    #     state.
    #
    # @option params [Array<String>] :instance_type_filter
    #   The set of instances in a blue/green deployment, either those in the
    #   original environment ("BLUE") or those in the replacement
    #   environment ("GREEN"), for which you want to view instance
    #   information.
    #
    # @return [Types::ListDeploymentInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentInstancesOutput#instances_list #instances_list} => Array&lt;String&gt;
    #   * {Types::ListDeploymentInstancesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_instances({
    #     deployment_id: "DeploymentId", # required
    #     next_token: "NextToken",
    #     instance_status_filter: ["Pending"], # accepts Pending, InProgress, Succeeded, Failed, Skipped, Unknown, Ready
    #     instance_type_filter: ["Blue"], # accepts Blue, Green
    #   })
    #
    # @example Response structure
    #
    #   resp.instances_list #=> Array
    #   resp.instances_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentInstances AWS API Documentation
    #
    # @overload list_deployment_instances(params = {})
    # @param [Hash] params ({})
    def list_deployment_instances(params = {}, options = {})
      req = build_request(:list_deployment_instances, params)
      req.send_request(options)
    end

    # Lists the deployments in a deployment group for an application
    # registered with the applicable IAM user or AWS account.
    #
    # @option params [String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [String] :deployment_group_name
    #   The name of an existing deployment group for the specified
    #   application.
    #
    # @option params [Array<String>] :include_only_statuses
    #   A subset of deployments to list by status:
    #
    #   * Created: Include created deployments in the resulting list.
    #
    #   * Queued: Include queued deployments in the resulting list.
    #
    #   * In Progress: Include in-progress deployments in the resulting list.
    #
    #   * Succeeded: Include successful deployments in the resulting list.
    #
    #   * Failed: Include failed deployments in the resulting list.
    #
    #   * Stopped: Include stopped deployments in the resulting list.
    #
    # @option params [Types::TimeRange] :create_time_range
    #   A time range (start and end) for returning a subset of the list of
    #   deployments.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list deployments call. It can
    #   be used to return the next set of deployments in the list.
    #
    # @return [Types::ListDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentsOutput#deployments #deployments} => Array&lt;String&gt;
    #   * {Types::ListDeploymentsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     application_name: "ApplicationName",
    #     deployment_group_name: "DeploymentGroupName",
    #     include_only_statuses: ["Created"], # accepts Created, Queued, InProgress, Succeeded, Failed, Stopped, Ready
    #     create_time_range: {
    #       start: Time.now,
    #       end: Time.now,
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments #=> Array
    #   resp.deployments[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # Lists the names of stored connections to GitHub accounts.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous ListGitHubAccountTokenNames
    #   call. It can be used to return the next set of names in the list.
    #
    # @return [Types::ListGitHubAccountTokenNamesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGitHubAccountTokenNamesOutput#token_name_list #token_name_list} => Array&lt;String&gt;
    #   * {Types::ListGitHubAccountTokenNamesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_git_hub_account_token_names({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.token_name_list #=> Array
    #   resp.token_name_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListGitHubAccountTokenNames AWS API Documentation
    #
    # @overload list_git_hub_account_token_names(params = {})
    # @param [Hash] params ({})
    def list_git_hub_account_token_names(params = {}, options = {})
      req = build_request(:list_git_hub_account_token_names, params)
      req.send_request(options)
    end

    # Gets a list of names for one or more on-premises instances.
    #
    # Unless otherwise specified, both registered and deregistered
    # on-premises instance names will be listed. To list only registered or
    # deregistered on-premises instance names, use the registration status
    # parameter.
    #
    # @option params [String] :registration_status
    #   The registration status of the on-premises instances:
    #
    #   * Deregistered: Include deregistered on-premises instances in the
    #     resulting list.
    #
    #   * Registered: Include registered on-premises instances in the
    #     resulting list.
    #
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   The on-premises instance tags that will be used to restrict the
    #   corresponding on-premises instance names returned.
    #
    # @option params [String] :next_token
    #   An identifier returned from the previous list on-premises instances
    #   call. It can be used to return the next set of on-premises instances
    #   in the list.
    #
    # @return [Types::ListOnPremisesInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOnPremisesInstancesOutput#instance_names #instance_names} => Array&lt;String&gt;
    #   * {Types::ListOnPremisesInstancesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_on_premises_instances({
    #     registration_status: "Registered", # accepts Registered, Deregistered
    #     tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       },
    #     ],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_names #=> Array
    #   resp.instance_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListOnPremisesInstances AWS API Documentation
    #
    # @overload list_on_premises_instances(params = {})
    # @param [Hash] params ({})
    def list_on_premises_instances(params = {}, options = {})
      req = build_request(:list_on_premises_instances, params)
      req.send_request(options)
    end

    # Sets the result of a Lambda validation function. The function
    # validates one or both lifecycle events (`BeforeAllowTraffic` and
    # `AfterAllowTraffic`) and returns `Succeeded` or `Failed`.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment. Pass this ID to a Lambda function that
    #   validates a deployment lifecycle event.
    #
    # @option params [String] :lifecycle_event_hook_execution_id
    #   The execution ID of a deployment's lifecycle hook. A deployment
    #   lifecycle hook is specified in the `hooks` section of the AppSpec
    #   file.
    #
    # @option params [String] :status
    #   The result of a Lambda function that validates a deployment lifecycle
    #   event (`Succeeded` or `Failed`).
    #
    # @return [Types::PutLifecycleEventHookExecutionStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutLifecycleEventHookExecutionStatusOutput#lifecycle_event_hook_execution_id #lifecycle_event_hook_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_event_hook_execution_status({
    #     deployment_id: "DeploymentId",
    #     lifecycle_event_hook_execution_id: "LifecycleEventHookExecutionId",
    #     status: "Pending", # accepts Pending, InProgress, Succeeded, Failed, Skipped, Unknown
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_event_hook_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/PutLifecycleEventHookExecutionStatus AWS API Documentation
    #
    # @overload put_lifecycle_event_hook_execution_status(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_event_hook_execution_status(params = {}, options = {})
      req = build_request(:put_lifecycle_event_hook_execution_status, params)
      req.send_request(options)
    end

    # Registers with AWS CodeDeploy a revision for the specified
    # application.
    #
    # @option params [required, String] :application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #
    # @option params [String] :description
    #   A comment about the revision.
    #
    # @option params [required, Types::RevisionLocation] :revision
    #   Information about the application revision to register, including type
    #   and location.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_application_revision({
    #     application_name: "ApplicationName", # required
    #     description: "Description",
    #     revision: { # required
    #       revision_type: "S3", # accepts S3, GitHub, String
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #         version: "VersionId",
    #         e_tag: "ETag",
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId",
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RegisterApplicationRevision AWS API Documentation
    #
    # @overload register_application_revision(params = {})
    # @param [Hash] params ({})
    def register_application_revision(params = {}, options = {})
      req = build_request(:register_application_revision, params)
      req.send_request(options)
    end

    # Registers an on-premises instance.
    #
    # <note markdown="1"> Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in
    # the request. You cannot use both.
    #
    #  </note>
    #
    # @option params [required, String] :instance_name
    #   The name of the on-premises instance to register.
    #
    # @option params [String] :iam_session_arn
    #   The ARN of the IAM session to associate with the on-premises instance.
    #
    # @option params [String] :iam_user_arn
    #   The ARN of the IAM user to associate with the on-premises instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_on_premises_instance({
    #     instance_name: "InstanceName", # required
    #     iam_session_arn: "IamSessionArn",
    #     iam_user_arn: "IamUserArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RegisterOnPremisesInstance AWS API Documentation
    #
    # @overload register_on_premises_instance(params = {})
    # @param [Hash] params ({})
    def register_on_premises_instance(params = {}, options = {})
      req = build_request(:register_on_premises_instance, params)
      req.send_request(options)
    end

    # Removes one or more tags from one or more on-premises instances.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs to remove from the on-premises instances.
    #
    # @option params [required, Array<String>] :instance_names
    #   The names of the on-premises instances from which to remove tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_on_premises_instances({
    #     tags: [ # required
    #       {
    #         key: "Key",
    #         value: "Value",
    #       },
    #     ],
    #     instance_names: ["InstanceName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RemoveTagsFromOnPremisesInstances AWS API Documentation
    #
    # @overload remove_tags_from_on_premises_instances(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_on_premises_instances(params = {}, options = {})
      req = build_request(:remove_tags_from_on_premises_instances, params)
      req.send_request(options)
    end

    # In a blue/green deployment, overrides any specified wait time and
    # starts terminating instances immediately after the traffic routing is
    # completed.
    #
    # @option params [String] :deployment_id
    #   The ID of the blue/green deployment for which you want to skip the
    #   instance termination wait time.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.skip_wait_time_for_instance_termination({
    #     deployment_id: "DeploymentId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/SkipWaitTimeForInstanceTermination AWS API Documentation
    #
    # @overload skip_wait_time_for_instance_termination(params = {})
    # @param [Hash] params ({})
    def skip_wait_time_for_instance_termination(params = {}, options = {})
      req = build_request(:skip_wait_time_for_instance_termination, params)
      req.send_request(options)
    end

    # Attempts to stop an ongoing deployment.
    #
    # @option params [required, String] :deployment_id
    #   The unique ID of a deployment.
    #
    # @option params [Boolean] :auto_rollback_enabled
    #   Indicates, when a deployment is stopped, whether instances that have
    #   been updated should be rolled back to the previous version of the
    #   application revision.
    #
    # @return [Types::StopDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDeploymentOutput#status #status} => String
    #   * {Types::StopDeploymentOutput#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_deployment({
    #     deployment_id: "DeploymentId", # required
    #     auto_rollback_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Pending", "Succeeded"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/StopDeployment AWS API Documentation
    #
    # @overload stop_deployment(params = {})
    # @param [Hash] params ({})
    def stop_deployment(params = {}, options = {})
      req = build_request(:stop_deployment, params)
      req.send_request(options)
    end

    # Changes the name of an application.
    #
    # @option params [String] :application_name
    #   The current name of the application you want to change.
    #
    # @option params [String] :new_application_name
    #   The new name to give the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_name: "ApplicationName",
    #     new_application_name: "ApplicationName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Changes information about a deployment group.
    #
    # @option params [required, String] :application_name
    #   The application name corresponding to the deployment group to update.
    #
    # @option params [required, String] :current_deployment_group_name
    #   The current name of the deployment group.
    #
    # @option params [String] :new_deployment_group_name
    #   The new name of the deployment group, if you want to change it.
    #
    # @option params [String] :deployment_config_name
    #   The replacement deployment configuration name to use, if you want to
    #   change it.
    #
    # @option params [Array<Types::EC2TagFilter>] :ec2_tag_filters
    #   The replacement set of Amazon EC2 tags on which to filter, if you want
    #   to change them. To keep the existing tags, enter their names. To
    #   remove tags, do not enter any tag names.
    #
    # @option params [Array<Types::TagFilter>] :on_premises_instance_tag_filters
    #   The replacement set of on-premises instance tags on which to filter,
    #   if you want to change them. To keep the existing tags, enter their
    #   names. To remove tags, do not enter any tag names.
    #
    # @option params [Array<String>] :auto_scaling_groups
    #   The replacement list of Auto Scaling groups to be included in the
    #   deployment group, if you want to change them. To keep the Auto Scaling
    #   groups, enter their names. To remove Auto Scaling groups, do not enter
    #   any Auto Scaling group names.
    #
    # @option params [String] :service_role_arn
    #   A replacement ARN for the service role, if you want to change it.
    #
    # @option params [Array<Types::TriggerConfig>] :trigger_configurations
    #   Information about triggers to change when the deployment group is
    #   updated. For examples, see [Modify Triggers in an AWS CodeDeploy
    #   Deployment Group][1] in the AWS CodeDeploy User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   Information to add or change about Amazon CloudWatch alarms when the
    #   deployment group is updated.
    #
    # @option params [Types::AutoRollbackConfiguration] :auto_rollback_configuration
    #   Information for an automatic rollback configuration that is added or
    #   changed when a deployment group is updated.
    #
    # @option params [Types::DeploymentStyle] :deployment_style
    #   Information about the type of deployment, either in-place or
    #   blue/green, you want to run and whether to route deployment traffic
    #   behind a load balancer.
    #
    # @option params [Types::BlueGreenDeploymentConfiguration] :blue_green_deployment_configuration
    #   Information about blue/green deployment options for a deployment
    #   group.
    #
    # @option params [Types::LoadBalancerInfo] :load_balancer_info
    #   Information about the load balancer used in a deployment.
    #
    # @option params [Types::EC2TagSet] :ec2_tag_set
    #   Information about groups of tags applied to on-premises instances. The
    #   deployment group will include only EC2 instances identified by all the
    #   tag groups.
    #
    # @option params [Types::OnPremisesTagSet] :on_premises_tag_set
    #   Information about an on-premises instance tag set. The deployment
    #   group will include only on-premises instances identified by all the
    #   tag groups.
    #
    # @return [Types::UpdateDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeploymentGroupOutput#hooks_not_cleaned_up #hooks_not_cleaned_up} => Array&lt;Types::AutoScalingGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment_group({
    #     application_name: "ApplicationName", # required
    #     current_deployment_group_name: "DeploymentGroupName", # required
    #     new_deployment_group_name: "DeploymentGroupName",
    #     deployment_config_name: "DeploymentConfigName",
    #     ec2_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       },
    #     ],
    #     on_premises_instance_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       },
    #     ],
    #     auto_scaling_groups: ["AutoScalingGroupName"],
    #     service_role_arn: "Role",
    #     trigger_configurations: [
    #       {
    #         trigger_name: "TriggerName",
    #         trigger_target_arn: "TriggerTargetArn",
    #         trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
    #       },
    #     ],
    #     alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: "AlarmName",
    #         },
    #       ],
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #     },
    #     deployment_style: {
    #       deployment_type: "IN_PLACE", # accepts IN_PLACE, BLUE_GREEN
    #       deployment_option: "WITH_TRAFFIC_CONTROL", # accepts WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL
    #     },
    #     blue_green_deployment_configuration: {
    #       terminate_blue_instances_on_deployment_success: {
    #         action: "TERMINATE", # accepts TERMINATE, KEEP_ALIVE
    #         termination_wait_time_in_minutes: 1,
    #       },
    #       deployment_ready_option: {
    #         action_on_timeout: "CONTINUE_DEPLOYMENT", # accepts CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT
    #         wait_time_in_minutes: 1,
    #       },
    #       green_fleet_provisioning_option: {
    #         action: "DISCOVER_EXISTING", # accepts DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP
    #       },
    #     },
    #     load_balancer_info: {
    #       elb_info_list: [
    #         {
    #           name: "ELBName",
    #         },
    #       ],
    #       target_group_info_list: [
    #         {
    #           name: "TargetGroupName",
    #         },
    #       ],
    #     },
    #     ec2_tag_set: {
    #       ec2_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #       ],
    #     },
    #     on_premises_tag_set: {
    #       on_premises_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hooks_not_cleaned_up #=> Array
    #   resp.hooks_not_cleaned_up[0].name #=> String
    #   resp.hooks_not_cleaned_up[0].hook #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateDeploymentGroup AWS API Documentation
    #
    # @overload update_deployment_group(params = {})
    # @param [Hash] params ({})
    def update_deployment_group(params = {}, options = {})
      req = build_request(:update_deployment_group, params)
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
      context[:gem_name] = 'aws-sdk-codedeploy'
      context[:gem_version] = '1.8.0'
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
    # | waiter_name           | params            | :delay   | :max_attempts |
    # | --------------------- | ----------------- | -------- | ------------- |
    # | deployment_successful | {#get_deployment} | 15       | 120           |
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
        deployment_successful: Waiters::DeploymentSuccessful
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
