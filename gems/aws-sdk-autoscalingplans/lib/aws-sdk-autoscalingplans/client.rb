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

Aws::Plugins::GlobalConfiguration.add_identifier(:autoscalingplans)

module Aws::AutoScalingPlans
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :autoscalingplans

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

    # Creates a scaling plan.
    #
    # A scaling plan contains a set of instructions used to configure
    # dynamic scaling for the scalable resources in your application. AWS
    # Auto Scaling creates target tracking scaling policies based on the
    # scaling instructions in your scaling plan.
    #
    # @option params [required, String] :scaling_plan_name
    #   The name of the scaling plan. Names cannot contain vertical bars,
    #   colons, or forward slashes.
    #
    # @option params [required, Types::ApplicationSource] :application_source
    #   A CloudFormation stack or set of tags. You can create one scaling plan
    #   per application source.
    #
    # @option params [required, Array<Types::ScalingInstruction>] :scaling_instructions
    #   The scaling instructions.
    #
    # @return [Types::CreateScalingPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScalingPlanResponse#scaling_plan_version #scaling_plan_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scaling_plan({
    #     scaling_plan_name: "ScalingPlanName", # required
    #     application_source: { # required
    #       cloud_formation_stack_arn: "XmlString",
    #       tag_filters: [
    #         {
    #           key: "XmlStringMaxLen128",
    #           values: ["XmlStringMaxLen256"],
    #         },
    #       ],
    #     },
    #     scaling_instructions: [ # required
    #       {
    #         service_namespace: "autoscaling", # required, accepts autoscaling, ecs, ec2, rds, dynamodb
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "autoscaling:autoScalingGroup:DesiredCapacity", # required, accepts autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #         target_tracking_configurations: [ # required
    #           {
    #             predefined_scaling_metric_specification: {
    #               predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #               resource_label: "ResourceLabel",
    #             },
    #             customized_scaling_metric_specification: {
    #               metric_name: "MetricName", # required
    #               namespace: "MetricNamespace", # required
    #               dimensions: [
    #                 {
    #                   name: "MetricDimensionName", # required
    #                   value: "MetricDimensionValue", # required
    #                 },
    #               ],
    #               statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #               unit: "MetricUnit",
    #             },
    #             target_value: 1.0, # required
    #             disable_scale_in: false,
    #             scale_out_cooldown: 1,
    #             scale_in_cooldown: 1,
    #             estimated_instance_warmup: 1,
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_plan_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlan AWS API Documentation
    #
    # @overload create_scaling_plan(params = {})
    # @param [Hash] params ({})
    def create_scaling_plan(params = {}, options = {})
      req = build_request(:create_scaling_plan, params)
      req.send_request(options)
    end

    # Deletes the specified scaling plan.
    #
    # @option params [required, String] :scaling_plan_name
    #   The name of the scaling plan.
    #
    # @option params [required, Integer] :scaling_plan_version
    #   The version of the scaling plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_plan({
    #     scaling_plan_name: "ScalingPlanName", # required
    #     scaling_plan_version: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DeleteScalingPlan AWS API Documentation
    #
    # @overload delete_scaling_plan(params = {})
    # @param [Hash] params ({})
    def delete_scaling_plan(params = {}, options = {})
      req = build_request(:delete_scaling_plan, params)
      req.send_request(options)
    end

    # Describes the scalable resources in the specified scaling plan.
    #
    # @option params [required, String] :scaling_plan_name
    #   The name of the scaling plan.
    #
    # @option params [required, Integer] :scaling_plan_version
    #   The version of the scaling plan.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scalable resources to return. This value can be
    #   between 1 and 50. The default value is 50.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::DescribeScalingPlanResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPlanResourcesResponse#scaling_plan_resources #scaling_plan_resources} => Array&lt;Types::ScalingPlanResource&gt;
    #   * {Types::DescribeScalingPlanResourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_plan_resources({
    #     scaling_plan_name: "ScalingPlanName", # required
    #     scaling_plan_version: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_plan_resources #=> Array
    #   resp.scaling_plan_resources[0].scaling_plan_name #=> String
    #   resp.scaling_plan_resources[0].scaling_plan_version #=> Integer
    #   resp.scaling_plan_resources[0].service_namespace #=> String, one of "autoscaling", "ecs", "ec2", "rds", "dynamodb"
    #   resp.scaling_plan_resources[0].resource_id #=> String
    #   resp.scaling_plan_resources[0].scalable_dimension #=> String, one of "autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"
    #   resp.scaling_plan_resources[0].scaling_policies #=> Array
    #   resp.scaling_plan_resources[0].scaling_policies[0].policy_name #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].policy_type #=> String, one of "TargetTrackingScaling"
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.predefined_scaling_metric_specification.predefined_scaling_metric_type #=> String, one of "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.predefined_scaling_metric_specification.resource_label #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.metric_name #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.namespace #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions #=> Array
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions[0].name #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions[0].value #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.statistic #=> String, one of "Average", "Minimum", "Maximum", "SampleCount", "Sum"
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.unit #=> String
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.target_value #=> Float
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.disable_scale_in #=> Boolean
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.scale_out_cooldown #=> Integer
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.scale_in_cooldown #=> Integer
    #   resp.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.estimated_instance_warmup #=> Integer
    #   resp.scaling_plan_resources[0].scaling_status_code #=> String, one of "Inactive", "PartiallyActive", "Active"
    #   resp.scaling_plan_resources[0].scaling_status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlanResources AWS API Documentation
    #
    # @overload describe_scaling_plan_resources(params = {})
    # @param [Hash] params ({})
    def describe_scaling_plan_resources(params = {}, options = {})
      req = build_request(:describe_scaling_plan_resources, params)
      req.send_request(options)
    end

    # Describes the specified scaling plans or all of your scaling plans.
    #
    # @option params [Array<String>] :scaling_plan_names
    #   The names of the scaling plans (up to 10). If you specify application
    #   sources, you cannot specify scaling plan names.
    #
    # @option params [Integer] :scaling_plan_version
    #   The version of the scaling plan. If you specify a scaling plan
    #   version, you must also specify a scaling plan name.
    #
    # @option params [Array<Types::ApplicationSource>] :application_sources
    #   The sources for the applications (up to 10). If you specify scaling
    #   plan names, you cannot specify application sources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scalable resources to return. This value can be
    #   between 1 and 50. The default value is 50.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::DescribeScalingPlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPlansResponse#scaling_plans #scaling_plans} => Array&lt;Types::ScalingPlan&gt;
    #   * {Types::DescribeScalingPlansResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_plans({
    #     scaling_plan_names: ["ScalingPlanName"],
    #     scaling_plan_version: 1,
    #     application_sources: [
    #       {
    #         cloud_formation_stack_arn: "XmlString",
    #         tag_filters: [
    #           {
    #             key: "XmlStringMaxLen128",
    #             values: ["XmlStringMaxLen256"],
    #           },
    #         ],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_plans #=> Array
    #   resp.scaling_plans[0].scaling_plan_name #=> String
    #   resp.scaling_plans[0].scaling_plan_version #=> Integer
    #   resp.scaling_plans[0].application_source.cloud_formation_stack_arn #=> String
    #   resp.scaling_plans[0].application_source.tag_filters #=> Array
    #   resp.scaling_plans[0].application_source.tag_filters[0].key #=> String
    #   resp.scaling_plans[0].application_source.tag_filters[0].values #=> Array
    #   resp.scaling_plans[0].application_source.tag_filters[0].values[0] #=> String
    #   resp.scaling_plans[0].scaling_instructions #=> Array
    #   resp.scaling_plans[0].scaling_instructions[0].service_namespace #=> String, one of "autoscaling", "ecs", "ec2", "rds", "dynamodb"
    #   resp.scaling_plans[0].scaling_instructions[0].resource_id #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].scalable_dimension #=> String, one of "autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"
    #   resp.scaling_plans[0].scaling_instructions[0].min_capacity #=> Integer
    #   resp.scaling_plans[0].scaling_instructions[0].max_capacity #=> Integer
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations #=> Array
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].predefined_scaling_metric_specification.predefined_scaling_metric_type #=> String, one of "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].predefined_scaling_metric_specification.resource_label #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.metric_name #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.namespace #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions #=> Array
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions[0].name #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions[0].value #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.statistic #=> String, one of "Average", "Minimum", "Maximum", "SampleCount", "Sum"
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.unit #=> String
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].target_value #=> Float
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].disable_scale_in #=> Boolean
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].scale_out_cooldown #=> Integer
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].scale_in_cooldown #=> Integer
    #   resp.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].estimated_instance_warmup #=> Integer
    #   resp.scaling_plans[0].status_code #=> String, one of "Active", "ActiveWithProblems", "CreationInProgress", "CreationFailed", "DeletionInProgress", "DeletionFailed", "UpdateInProgress", "UpdateFailed"
    #   resp.scaling_plans[0].status_message #=> String
    #   resp.scaling_plans[0].status_start_time #=> Time
    #   resp.scaling_plans[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlans AWS API Documentation
    #
    # @overload describe_scaling_plans(params = {})
    # @param [Hash] params ({})
    def describe_scaling_plans(params = {}, options = {})
      req = build_request(:describe_scaling_plans, params)
      req.send_request(options)
    end

    # Updates the scaling plan for the specified scaling plan.
    #
    # You cannot update a scaling plan if it is in the process of being
    # created, updated, or deleted.
    #
    # @option params [Types::ApplicationSource] :application_source
    #   A CloudFormation stack or set of tags.
    #
    # @option params [required, String] :scaling_plan_name
    #   The name of the scaling plan.
    #
    # @option params [Array<Types::ScalingInstruction>] :scaling_instructions
    #   The scaling instructions.
    #
    # @option params [required, Integer] :scaling_plan_version
    #   The version number.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scaling_plan({
    #     application_source: {
    #       cloud_formation_stack_arn: "XmlString",
    #       tag_filters: [
    #         {
    #           key: "XmlStringMaxLen128",
    #           values: ["XmlStringMaxLen256"],
    #         },
    #       ],
    #     },
    #     scaling_plan_name: "ScalingPlanName", # required
    #     scaling_instructions: [
    #       {
    #         service_namespace: "autoscaling", # required, accepts autoscaling, ecs, ec2, rds, dynamodb
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "autoscaling:autoScalingGroup:DesiredCapacity", # required, accepts autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #         target_tracking_configurations: [ # required
    #           {
    #             predefined_scaling_metric_specification: {
    #               predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #               resource_label: "ResourceLabel",
    #             },
    #             customized_scaling_metric_specification: {
    #               metric_name: "MetricName", # required
    #               namespace: "MetricNamespace", # required
    #               dimensions: [
    #                 {
    #                   name: "MetricDimensionName", # required
    #                   value: "MetricDimensionValue", # required
    #                 },
    #               ],
    #               statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #               unit: "MetricUnit",
    #             },
    #             target_value: 1.0, # required
    #             disable_scale_in: false,
    #             scale_out_cooldown: 1,
    #             scale_in_cooldown: 1,
    #             estimated_instance_warmup: 1,
    #           },
    #         ],
    #       },
    #     ],
    #     scaling_plan_version: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/UpdateScalingPlan AWS API Documentation
    #
    # @overload update_scaling_plan(params = {})
    # @param [Hash] params ({})
    def update_scaling_plan(params = {}, options = {})
      req = build_request(:update_scaling_plan, params)
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
      context[:gem_name] = 'aws-sdk-autoscalingplans'
      context[:gem_version] = '1.5.0'
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
