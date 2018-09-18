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

Aws::Plugins::GlobalConfiguration.add_identifier(:emr)

module Aws::EMR
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :emr

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

    # Adds an instance fleet to a running cluster.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [required, Types::InstanceFleetConfig] :instance_fleet
    #   Specifies the configuration of the instance fleet.
    #
    # @return [Types::AddInstanceFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddInstanceFleetOutput#cluster_id #cluster_id} => String
    #   * {Types::AddInstanceFleetOutput#instance_fleet_id #instance_fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_instance_fleet({
    #     cluster_id: "XmlStringMaxLen256", # required
    #     instance_fleet: { # required
    #       name: "XmlStringMaxLen256",
    #       instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #       instance_type_configs: [
    #         {
    #           instance_type: "InstanceType", # required
    #           weighted_capacity: 1,
    #           bid_price: "XmlStringMaxLen256",
    #           bid_price_as_percentage_of_on_demand_price: 1.0,
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                 },
    #                 volumes_per_instance: 1,
    #               },
    #             ],
    #             ebs_optimized: false,
    #           },
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String",
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       launch_specifications: {
    #         spot_specification: { # required
    #           timeout_duration_minutes: 1, # required
    #           timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #           block_duration_minutes: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_id #=> String
    #   resp.instance_fleet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceFleet AWS API Documentation
    #
    # @overload add_instance_fleet(params = {})
    # @param [Hash] params ({})
    def add_instance_fleet(params = {}, options = {})
      req = build_request(:add_instance_fleet, params)
      req.send_request(options)
    end

    # Adds one or more instance groups to a running cluster.
    #
    # @option params [required, Array<Types::InstanceGroupConfig>] :instance_groups
    #   Instance groups to add.
    #
    # @option params [required, String] :job_flow_id
    #   Job flow in which to add the instance groups.
    #
    # @return [Types::AddInstanceGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddInstanceGroupsOutput#job_flow_id #job_flow_id} => String
    #   * {Types::AddInstanceGroupsOutput#instance_group_ids #instance_group_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_instance_groups({
    #     instance_groups: [ # required
    #       {
    #         name: "XmlStringMaxLen256",
    #         market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #         instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #         bid_price: "XmlStringMaxLen256",
    #         instance_type: "InstanceType", # required
    #         instance_count: 1, # required
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         ebs_configuration: {
    #           ebs_block_device_configs: [
    #             {
    #               volume_specification: { # required
    #                 volume_type: "String", # required
    #                 iops: 1,
    #                 size_in_gb: 1, # required
    #               },
    #               volumes_per_instance: 1,
    #             },
    #           ],
    #           ebs_optimized: false,
    #         },
    #         auto_scaling_policy: {
    #           constraints: { # required
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #           },
    #           rules: [ # required
    #             {
    #               name: "String", # required
    #               description: "String",
    #               action: { # required
    #                 market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                 simple_scaling_policy_configuration: { # required
    #                   adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1,
    #                 },
    #               },
    #               trigger: { # required
    #                 cloud_watch_alarm_definition: { # required
    #                   comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                   evaluation_periods: 1,
    #                   metric_name: "String", # required
    #                   namespace: "String",
    #                   period: 1, # required
    #                   statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                   threshold: 1.0, # required
    #                   unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                   dimensions: [
    #                     {
    #                       key: "String",
    #                       value: "String",
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     job_flow_id: "XmlStringMaxLen256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_flow_id #=> String
    #   resp.instance_group_ids #=> Array
    #   resp.instance_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceGroups AWS API Documentation
    #
    # @overload add_instance_groups(params = {})
    # @param [Hash] params ({})
    def add_instance_groups(params = {}, options = {})
      req = build_request(:add_instance_groups, params)
      req.send_request(options)
    end

    # AddJobFlowSteps adds new steps to a running cluster. A maximum of 256
    # steps are allowed in each job flow.
    #
    # If your cluster is long-running (such as a Hive data warehouse) or
    # complex, you may require more than 256 steps to process your data. You
    # can bypass the 256-step limitation in various ways, including using
    # SSH to connect to the master node and submitting queries directly to
    # the software running on the master node, such as Hive and Hadoop. For
    # more information on how to do this, see [Add More than 256 Steps to a
    # Cluster][1] in the *Amazon EMR Management Guide*.
    #
    # A step specifies the location of a JAR file stored either on the
    # master node of the cluster or in Amazon S3. Each step is performed by
    # the main function of the main class of the JAR file. The main class
    # can be specified either in the manifest of the JAR or by using the
    # MainFunction parameter of the step.
    #
    # Amazon EMR executes each step in the order listed. For a step to be
    # considered complete, the main function must exit with a zero exit code
    # and all Hadoop jobs started while the step was running must have
    # completed and run successfully.
    #
    # You can only add steps to a cluster that is in one of the following
    # states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html
    #
    # @option params [required, String] :job_flow_id
    #   A string that uniquely identifies the job flow. This identifier is
    #   returned by RunJobFlow and can also be obtained from ListClusters.
    #
    # @option params [required, Array<Types::StepConfig>] :steps
    #   A list of StepConfig to be executed by the job flow.
    #
    # @return [Types::AddJobFlowStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddJobFlowStepsOutput#step_ids #step_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_job_flow_steps({
    #     job_flow_id: "XmlStringMaxLen256", # required
    #     steps: [ # required
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString",
    #             },
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.step_ids #=> Array
    #   resp.step_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddJobFlowSteps AWS API Documentation
    #
    # @overload add_job_flow_steps(params = {})
    # @param [Hash] params ({})
    def add_job_flow_steps(params = {}, options = {})
      req = build_request(:add_job_flow_steps, params)
      req.send_request(options)
    end

    # Adds tags to an Amazon EMR resource. Tags make it easier to associate
    # clusters in various ways, such as grouping clusters to track your
    # Amazon EMR resource allocation costs. For more information, see [Tag
    # Clusters][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #
    # @option params [required, String] :resource_id
    #   The Amazon EMR resource identifier to which tags will be added. This
    #   value must be a cluster identifier.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to associate with a cluster and propagate to EC2
    #   instances. Tags are user-defined key/value pairs that consist of a
    #   required key string with a maximum of 128 characters, and an optional
    #   value string with a maximum of 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Cancels a pending step or steps in a running cluster. Available only
    # in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A
    # maximum of 256 steps are allowed in each CancelSteps request.
    # CancelSteps is idempotent but asynchronous; it does not guarantee a
    # step will be canceled, even if the request is successfully submitted.
    # You can only cancel steps that are in a `PENDING` state.
    #
    # @option params [String] :cluster_id
    #   The `ClusterID` for which specified steps will be canceled. Use
    #   RunJobFlow and ListClusters to get ClusterIDs.
    #
    # @option params [Array<String>] :step_ids
    #   The list of `StepIDs` to cancel. Use ListSteps to get steps and their
    #   states for the specified cluster.
    #
    # @return [Types::CancelStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelStepsOutput#cancel_steps_info_list #cancel_steps_info_list} => Array&lt;Types::CancelStepsInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_steps({
    #     cluster_id: "XmlStringMaxLen256",
    #     step_ids: ["XmlStringMaxLen256"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cancel_steps_info_list #=> Array
    #   resp.cancel_steps_info_list[0].step_id #=> String
    #   resp.cancel_steps_info_list[0].status #=> String, one of "SUBMITTED", "FAILED"
    #   resp.cancel_steps_info_list[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelSteps AWS API Documentation
    #
    # @overload cancel_steps(params = {})
    # @param [Hash] params ({})
    def cancel_steps(params = {}, options = {})
      req = build_request(:cancel_steps, params)
      req.send_request(options)
    end

    # Creates a security configuration, which is stored in the service and
    # can be specified when a cluster is created.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @option params [required, String] :security_configuration
    #   The security configuration details in JSON format. For JSON parameters
    #   and examples, see [Use Security Configurations to Set Up Cluster
    #   Security][1] in the *Amazon EMR Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html
    #
    # @return [Types::CreateSecurityConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityConfigurationOutput#name #name} => String
    #   * {Types::CreateSecurityConfigurationOutput#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_configuration({
    #     name: "XmlString", # required
    #     security_configuration: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateSecurityConfiguration AWS API Documentation
    #
    # @overload create_security_configuration(params = {})
    # @param [Hash] params ({})
    def create_security_configuration(params = {}, options = {})
      req = build_request(:create_security_configuration, params)
      req.send_request(options)
    end

    # Deletes a security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_configuration({
    #     name: "XmlString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfiguration AWS API Documentation
    #
    # @overload delete_security_configuration(params = {})
    # @param [Hash] params ({})
    def delete_security_configuration(params = {}, options = {})
      req = build_request(:delete_security_configuration, params)
      req.send_request(options)
    end

    # Provides cluster-level details including status, hardware and software
    # configuration, VPC settings, and so on.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster to describe.
    #
    # @return [Types::DescribeClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.id #=> String
    #   resp.cluster.name #=> String
    #   resp.cluster.status.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
    #   resp.cluster.status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"
    #   resp.cluster.status.state_change_reason.message #=> String
    #   resp.cluster.status.timeline.creation_date_time #=> Time
    #   resp.cluster.status.timeline.ready_date_time #=> Time
    #   resp.cluster.status.timeline.end_date_time #=> Time
    #   resp.cluster.ec2_instance_attributes.ec2_key_name #=> String
    #   resp.cluster.ec2_instance_attributes.ec2_subnet_id #=> String
    #   resp.cluster.ec2_instance_attributes.requested_ec2_subnet_ids #=> Array
    #   resp.cluster.ec2_instance_attributes.requested_ec2_subnet_ids[0] #=> String
    #   resp.cluster.ec2_instance_attributes.ec2_availability_zone #=> String
    #   resp.cluster.ec2_instance_attributes.requested_ec2_availability_zones #=> Array
    #   resp.cluster.ec2_instance_attributes.requested_ec2_availability_zones[0] #=> String
    #   resp.cluster.ec2_instance_attributes.iam_instance_profile #=> String
    #   resp.cluster.ec2_instance_attributes.emr_managed_master_security_group #=> String
    #   resp.cluster.ec2_instance_attributes.emr_managed_slave_security_group #=> String
    #   resp.cluster.ec2_instance_attributes.service_access_security_group #=> String
    #   resp.cluster.ec2_instance_attributes.additional_master_security_groups #=> Array
    #   resp.cluster.ec2_instance_attributes.additional_master_security_groups[0] #=> String
    #   resp.cluster.ec2_instance_attributes.additional_slave_security_groups #=> Array
    #   resp.cluster.ec2_instance_attributes.additional_slave_security_groups[0] #=> String
    #   resp.cluster.instance_collection_type #=> String, one of "INSTANCE_FLEET", "INSTANCE_GROUP"
    #   resp.cluster.log_uri #=> String
    #   resp.cluster.requested_ami_version #=> String
    #   resp.cluster.running_ami_version #=> String
    #   resp.cluster.release_label #=> String
    #   resp.cluster.auto_terminate #=> Boolean
    #   resp.cluster.termination_protected #=> Boolean
    #   resp.cluster.visible_to_all_users #=> Boolean
    #   resp.cluster.applications #=> Array
    #   resp.cluster.applications[0].name #=> String
    #   resp.cluster.applications[0].version #=> String
    #   resp.cluster.applications[0].args #=> Array
    #   resp.cluster.applications[0].args[0] #=> String
    #   resp.cluster.applications[0].additional_info #=> Hash
    #   resp.cluster.applications[0].additional_info["String"] #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.service_role #=> String
    #   resp.cluster.normalized_instance_hours #=> Integer
    #   resp.cluster.master_public_dns_name #=> String
    #   resp.cluster.configurations #=> Array
    #   resp.cluster.configurations[0].classification #=> String
    #   resp.cluster.configurations[0].configurations #=> Types::ConfigurationList
    #   resp.cluster.configurations[0].properties #=> Hash
    #   resp.cluster.configurations[0].properties["String"] #=> String
    #   resp.cluster.security_configuration #=> String
    #   resp.cluster.auto_scaling_role #=> String
    #   resp.cluster.scale_down_behavior #=> String, one of "TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"
    #   resp.cluster.custom_ami_id #=> String
    #   resp.cluster.ebs_root_volume_size #=> Integer
    #   resp.cluster.repo_upgrade_on_boot #=> String, one of "SECURITY", "NONE"
    #   resp.cluster.kerberos_attributes.realm #=> String
    #   resp.cluster.kerberos_attributes.kdc_admin_password #=> String
    #   resp.cluster.kerberos_attributes.cross_realm_trust_principal_password #=> String
    #   resp.cluster.kerberos_attributes.ad_domain_join_user #=> String
    #   resp.cluster.kerberos_attributes.ad_domain_join_password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # This API is deprecated and will eventually be removed. We recommend
    # you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups
    # and ListBootstrapActions instead.
    #
    # DescribeJobFlows returns a list of job flows that match all of the
    # supplied parameters. The parameters can include a list of job flow
    # IDs, job flow states, and restrictions on job flow creation date and
    # time.
    #
    # Regardless of supplied parameters, only job flows created within the
    # last two months are returned.
    #
    # If no parameters are supplied, then job flows matching either of the
    # following criteria are returned:
    #
    # * Job flows created and completed in the last two weeks
    #
    # * Job flows created within the last two months that are in one of the
    #   following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`
    #
    # Amazon EMR can return a maximum of 512 job flow descriptions.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   Return only job flows created after this date and time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   Return only job flows created before this date and time.
    #
    # @option params [Array<String>] :job_flow_ids
    #   Return only job flows whose job flow ID is contained in this list.
    #
    # @option params [Array<String>] :job_flow_states
    #   Return only job flows whose state is contained in this list.
    #
    # @return [Types::DescribeJobFlowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobFlowsOutput#job_flows #job_flows} => Array&lt;Types::JobFlowDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_flows({
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     job_flow_ids: ["XmlString"],
    #     job_flow_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, SHUTTING_DOWN, TERMINATED, COMPLETED, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.job_flows #=> Array
    #   resp.job_flows[0].job_flow_id #=> String
    #   resp.job_flows[0].name #=> String
    #   resp.job_flows[0].log_uri #=> String
    #   resp.job_flows[0].ami_version #=> String
    #   resp.job_flows[0].execution_status_detail.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"
    #   resp.job_flows[0].execution_status_detail.creation_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.start_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.ready_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.end_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.last_state_change_reason #=> String
    #   resp.job_flows[0].instances.master_instance_type #=> String
    #   resp.job_flows[0].instances.master_public_dns_name #=> String
    #   resp.job_flows[0].instances.master_instance_id #=> String
    #   resp.job_flows[0].instances.slave_instance_type #=> String
    #   resp.job_flows[0].instances.instance_count #=> Integer
    #   resp.job_flows[0].instances.instance_groups #=> Array
    #   resp.job_flows[0].instances.instance_groups[0].instance_group_id #=> String
    #   resp.job_flows[0].instances.instance_groups[0].name #=> String
    #   resp.job_flows[0].instances.instance_groups[0].market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.job_flows[0].instances.instance_groups[0].instance_role #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.job_flows[0].instances.instance_groups[0].bid_price #=> String
    #   resp.job_flows[0].instances.instance_groups[0].instance_type #=> String
    #   resp.job_flows[0].instances.instance_groups[0].instance_request_count #=> Integer
    #   resp.job_flows[0].instances.instance_groups[0].instance_running_count #=> Integer
    #   resp.job_flows[0].instances.instance_groups[0].state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"
    #   resp.job_flows[0].instances.instance_groups[0].last_state_change_reason #=> String
    #   resp.job_flows[0].instances.instance_groups[0].creation_date_time #=> Time
    #   resp.job_flows[0].instances.instance_groups[0].start_date_time #=> Time
    #   resp.job_flows[0].instances.instance_groups[0].ready_date_time #=> Time
    #   resp.job_flows[0].instances.instance_groups[0].end_date_time #=> Time
    #   resp.job_flows[0].instances.normalized_instance_hours #=> Integer
    #   resp.job_flows[0].instances.ec2_key_name #=> String
    #   resp.job_flows[0].instances.ec2_subnet_id #=> String
    #   resp.job_flows[0].instances.placement.availability_zone #=> String
    #   resp.job_flows[0].instances.placement.availability_zones #=> Array
    #   resp.job_flows[0].instances.placement.availability_zones[0] #=> String
    #   resp.job_flows[0].instances.keep_job_flow_alive_when_no_steps #=> Boolean
    #   resp.job_flows[0].instances.termination_protected #=> Boolean
    #   resp.job_flows[0].instances.hadoop_version #=> String
    #   resp.job_flows[0].steps #=> Array
    #   resp.job_flows[0].steps[0].step_config.name #=> String
    #   resp.job_flows[0].steps[0].step_config.action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties #=> Array
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].key #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].value #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.jar #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.main_class #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.args #=> Array
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.args[0] #=> String
    #   resp.job_flows[0].steps[0].execution_status_detail.state #=> String, one of "PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
    #   resp.job_flows[0].steps[0].execution_status_detail.creation_date_time #=> Time
    #   resp.job_flows[0].steps[0].execution_status_detail.start_date_time #=> Time
    #   resp.job_flows[0].steps[0].execution_status_detail.end_date_time #=> Time
    #   resp.job_flows[0].steps[0].execution_status_detail.last_state_change_reason #=> String
    #   resp.job_flows[0].bootstrap_actions #=> Array
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.name #=> String
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.path #=> String
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args #=> Array
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args[0] #=> String
    #   resp.job_flows[0].supported_products #=> Array
    #   resp.job_flows[0].supported_products[0] #=> String
    #   resp.job_flows[0].visible_to_all_users #=> Boolean
    #   resp.job_flows[0].job_flow_role #=> String
    #   resp.job_flows[0].service_role #=> String
    #   resp.job_flows[0].auto_scaling_role #=> String
    #   resp.job_flows[0].scale_down_behavior #=> String, one of "TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeJobFlows AWS API Documentation
    #
    # @overload describe_job_flows(params = {})
    # @param [Hash] params ({})
    def describe_job_flows(params = {}, options = {})
      req = build_request(:describe_job_flows, params)
      req.send_request(options)
    end

    # Provides the details of a security configuration by returning the
    # configuration JSON.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @return [Types::DescribeSecurityConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityConfigurationOutput#name #name} => String
    #   * {Types::DescribeSecurityConfigurationOutput#security_configuration #security_configuration} => String
    #   * {Types::DescribeSecurityConfigurationOutput#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_configuration({
    #     name: "XmlString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.security_configuration #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeSecurityConfiguration AWS API Documentation
    #
    # @overload describe_security_configuration(params = {})
    # @param [Hash] params ({})
    def describe_security_configuration(params = {}, options = {})
      req = build_request(:describe_security_configuration, params)
      req.send_request(options)
    end

    # Provides more detail about the cluster step.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster with steps to describe.
    #
    # @option params [required, String] :step_id
    #   The identifier of the step to describe.
    #
    # @return [Types::DescribeStepOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStepOutput#step #step} => Types::Step
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_step({
    #     cluster_id: "ClusterId", # required
    #     step_id: "StepId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.step.id #=> String
    #   resp.step.name #=> String
    #   resp.step.config.jar #=> String
    #   resp.step.config.properties #=> Hash
    #   resp.step.config.properties["String"] #=> String
    #   resp.step.config.main_class #=> String
    #   resp.step.config.args #=> Array
    #   resp.step.config.args[0] #=> String
    #   resp.step.action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
    #   resp.step.status.state #=> String, one of "PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
    #   resp.step.status.state_change_reason.code #=> String, one of "NONE"
    #   resp.step.status.state_change_reason.message #=> String
    #   resp.step.status.failure_details.reason #=> String
    #   resp.step.status.failure_details.message #=> String
    #   resp.step.status.failure_details.log_file #=> String
    #   resp.step.status.timeline.creation_date_time #=> Time
    #   resp.step.status.timeline.start_date_time #=> Time
    #   resp.step.status.timeline.end_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStep AWS API Documentation
    #
    # @overload describe_step(params = {})
    # @param [Hash] params ({})
    def describe_step(params = {}, options = {})
      req = build_request(:describe_step, params)
      req.send_request(options)
    end

    # Provides information about the bootstrap actions associated with a
    # cluster.
    #
    # @option params [required, String] :cluster_id
    #   The cluster identifier for the bootstrap actions to list.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListBootstrapActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBootstrapActionsOutput#bootstrap_actions #bootstrap_actions} => Array&lt;Types::Command&gt;
    #   * {Types::ListBootstrapActionsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bootstrap_actions({
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.bootstrap_actions #=> Array
    #   resp.bootstrap_actions[0].name #=> String
    #   resp.bootstrap_actions[0].script_path #=> String
    #   resp.bootstrap_actions[0].args #=> Array
    #   resp.bootstrap_actions[0].args[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListBootstrapActions AWS API Documentation
    #
    # @overload list_bootstrap_actions(params = {})
    # @param [Hash] params ({})
    def list_bootstrap_actions(params = {}, options = {})
      req = build_request(:list_bootstrap_actions, params)
      req.send_request(options)
    end

    # Provides the status of all clusters visible to this AWS account.
    # Allows you to filter the list of clusters based on certain criteria;
    # for example, filtering by cluster creation date and time or by status.
    # This call returns a maximum of 50 clusters per call, but returns a
    # marker to track the paging of the cluster list across multiple
    # ListClusters calls.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   The creation date and time beginning value filter for listing
    #   clusters.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   The creation date and time end value filter for listing clusters.
    #
    # @option params [Array<String>] :cluster_states
    #   The cluster state filters to apply when listing clusters.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersOutput#clusters #clusters} => Array&lt;Types::ClusterSummary&gt;
    #   * {Types::ListClustersOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     cluster_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].id #=> String
    #   resp.clusters[0].name #=> String
    #   resp.clusters[0].status.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
    #   resp.clusters[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"
    #   resp.clusters[0].status.state_change_reason.message #=> String
    #   resp.clusters[0].status.timeline.creation_date_time #=> Time
    #   resp.clusters[0].status.timeline.ready_date_time #=> Time
    #   resp.clusters[0].status.timeline.end_date_time #=> Time
    #   resp.clusters[0].normalized_instance_hours #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Lists all available details about the instance fleets in a cluster.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInstanceFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceFleetsOutput#instance_fleets #instance_fleets} => Array&lt;Types::InstanceFleet&gt;
    #   * {Types::ListInstanceFleetsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_fleets({
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_fleets #=> Array
    #   resp.instance_fleets[0].id #=> String
    #   resp.instance_fleets[0].name #=> String
    #   resp.instance_fleets[0].status.state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED"
    #   resp.instance_fleets[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"
    #   resp.instance_fleets[0].status.state_change_reason.message #=> String
    #   resp.instance_fleets[0].status.timeline.creation_date_time #=> Time
    #   resp.instance_fleets[0].status.timeline.ready_date_time #=> Time
    #   resp.instance_fleets[0].status.timeline.end_date_time #=> Time
    #   resp.instance_fleets[0].instance_fleet_type #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.instance_fleets[0].target_on_demand_capacity #=> Integer
    #   resp.instance_fleets[0].target_spot_capacity #=> Integer
    #   resp.instance_fleets[0].provisioned_on_demand_capacity #=> Integer
    #   resp.instance_fleets[0].provisioned_spot_capacity #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications #=> Array
    #   resp.instance_fleets[0].instance_type_specifications[0].instance_type #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].weighted_capacity #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications[0].bid_price #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].bid_price_as_percentage_of_on_demand_price #=> Float
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations #=> Array
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].classification #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].configurations #=> Types::ConfigurationList
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].properties #=> Hash
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].properties["String"] #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices #=> Array
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.volume_type #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.iops #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].device #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_optimized #=> Boolean
    #   resp.instance_fleets[0].launch_specifications.spot_specification.timeout_duration_minutes #=> Integer
    #   resp.instance_fleets[0].launch_specifications.spot_specification.timeout_action #=> String, one of "SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"
    #   resp.instance_fleets[0].launch_specifications.spot_specification.block_duration_minutes #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceFleets AWS API Documentation
    #
    # @overload list_instance_fleets(params = {})
    # @param [Hash] params ({})
    def list_instance_fleets(params = {}, options = {})
      req = build_request(:list_instance_fleets, params)
      req.send_request(options)
    end

    # Provides all available details about the instance groups in a cluster.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster for which to list the instance groups.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInstanceGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceGroupsOutput#instance_groups #instance_groups} => Array&lt;Types::InstanceGroup&gt;
    #   * {Types::ListInstanceGroupsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_groups({
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_groups #=> Array
    #   resp.instance_groups[0].id #=> String
    #   resp.instance_groups[0].name #=> String
    #   resp.instance_groups[0].market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.instance_groups[0].instance_group_type #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.instance_groups[0].bid_price #=> String
    #   resp.instance_groups[0].instance_type #=> String
    #   resp.instance_groups[0].requested_instance_count #=> Integer
    #   resp.instance_groups[0].running_instance_count #=> Integer
    #   resp.instance_groups[0].status.state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"
    #   resp.instance_groups[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"
    #   resp.instance_groups[0].status.state_change_reason.message #=> String
    #   resp.instance_groups[0].status.timeline.creation_date_time #=> Time
    #   resp.instance_groups[0].status.timeline.ready_date_time #=> Time
    #   resp.instance_groups[0].status.timeline.end_date_time #=> Time
    #   resp.instance_groups[0].configurations #=> Array
    #   resp.instance_groups[0].configurations[0].classification #=> String
    #   resp.instance_groups[0].configurations[0].configurations #=> Types::ConfigurationList
    #   resp.instance_groups[0].configurations[0].properties #=> Hash
    #   resp.instance_groups[0].configurations[0].properties["String"] #=> String
    #   resp.instance_groups[0].ebs_block_devices #=> Array
    #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.volume_type #=> String
    #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.iops #=> Integer
    #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
    #   resp.instance_groups[0].ebs_block_devices[0].device #=> String
    #   resp.instance_groups[0].ebs_optimized #=> Boolean
    #   resp.instance_groups[0].shrink_policy.decommission_timeout #=> Integer
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate #=> Array
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate[0] #=> String
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect #=> Array
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect[0] #=> String
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instance_termination_timeout #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.status.state #=> String, one of "PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"
    #   resp.instance_groups[0].auto_scaling_policy.status.state_change_reason.code #=> String, one of "USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"
    #   resp.instance_groups[0].auto_scaling_policy.status.state_change_reason.message #=> String
    #   resp.instance_groups[0].auto_scaling_policy.constraints.min_capacity #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.constraints.max_capacity #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules #=> Array
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].name #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].description #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.adjustment_type #=> String, one of "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.scaling_adjustment #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.cool_down #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.comparison_operator #=> String, one of "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.evaluation_periods #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.metric_name #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.namespace #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.period #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.statistic #=> String, one of "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.threshold #=> Float
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.unit #=> String, one of "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions #=> Array
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].key #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].value #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceGroups AWS API Documentation
    #
    # @overload list_instance_groups(params = {})
    # @param [Hash] params ({})
    def list_instance_groups(params = {}, options = {})
      req = build_request(:list_instance_groups, params)
      req.send_request(options)
    end

    # Provides information for all active EC2 instances and EC2 instances
    # terminated in the last 30 days, up to a maximum of 2,000. EC2
    # instances in any of the following states are considered active:
    # AWAITING\_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster for which to list the instances.
    #
    # @option params [String] :instance_group_id
    #   The identifier of the instance group for which to list the instances.
    #
    # @option params [Array<String>] :instance_group_types
    #   The type of instance group for which to list the instances.
    #
    # @option params [String] :instance_fleet_id
    #   The unique identifier of the instance fleet.
    #
    # @option params [String] :instance_fleet_type
    #   The node type of the instance fleet. For example MASTER, CORE, or
    #   TASK.
    #
    # @option params [Array<String>] :instance_states
    #   A list of instance states that will filter the instances returned with
    #   this request.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::ListInstancesOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId",
    #     instance_group_types: ["MASTER"], # accepts MASTER, CORE, TASK
    #     instance_fleet_id: "InstanceFleetId",
    #     instance_fleet_type: "MASTER", # accepts MASTER, CORE, TASK
    #     instance_states: ["AWAITING_FULFILLMENT"], # accepts AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING, TERMINATED
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].id #=> String
    #   resp.instances[0].ec2_instance_id #=> String
    #   resp.instances[0].public_dns_name #=> String
    #   resp.instances[0].public_ip_address #=> String
    #   resp.instances[0].private_dns_name #=> String
    #   resp.instances[0].private_ip_address #=> String
    #   resp.instances[0].status.state #=> String, one of "AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"
    #   resp.instances[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"
    #   resp.instances[0].status.state_change_reason.message #=> String
    #   resp.instances[0].status.timeline.creation_date_time #=> Time
    #   resp.instances[0].status.timeline.ready_date_time #=> Time
    #   resp.instances[0].status.timeline.end_date_time #=> Time
    #   resp.instances[0].instance_group_id #=> String
    #   resp.instances[0].instance_fleet_id #=> String
    #   resp.instances[0].market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.instances[0].instance_type #=> String
    #   resp.instances[0].ebs_volumes #=> Array
    #   resp.instances[0].ebs_volumes[0].device #=> String
    #   resp.instances[0].ebs_volumes[0].volume_id #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Lists all the security configurations visible to this account,
    # providing their creation dates and times, and their names. This call
    # returns a maximum of 50 clusters per call, but returns a marker to
    # track the paging of the cluster list across multiple
    # ListSecurityConfigurations calls.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the set of results to retrieve.
    #
    # @return [Types::ListSecurityConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityConfigurationsOutput#security_configurations #security_configurations} => Array&lt;Types::SecurityConfigurationSummary&gt;
    #   * {Types::ListSecurityConfigurationsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_configurations({
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_configurations #=> Array
    #   resp.security_configurations[0].name #=> String
    #   resp.security_configurations[0].creation_date_time #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSecurityConfigurations AWS API Documentation
    #
    # @overload list_security_configurations(params = {})
    # @param [Hash] params ({})
    def list_security_configurations(params = {}, options = {})
      req = build_request(:list_security_configurations, params)
      req.send_request(options)
    end

    # Provides a list of steps for the cluster in reverse order unless you
    # specify stepIds with the request.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster for which to list the steps.
    #
    # @option params [Array<String>] :step_states
    #   The filter to limit the step list based on certain states.
    #
    # @option params [Array<String>] :step_ids
    #   The filter to limit the step list based on the identifier of the
    #   steps.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStepsOutput#steps #steps} => Array&lt;Types::StepSummary&gt;
    #   * {Types::ListStepsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_steps({
    #     cluster_id: "ClusterId", # required
    #     step_states: ["PENDING"], # accepts PENDING, CANCEL_PENDING, RUNNING, COMPLETED, CANCELLED, FAILED, INTERRUPTED
    #     step_ids: ["XmlString"],
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.steps #=> Array
    #   resp.steps[0].id #=> String
    #   resp.steps[0].name #=> String
    #   resp.steps[0].config.jar #=> String
    #   resp.steps[0].config.properties #=> Hash
    #   resp.steps[0].config.properties["String"] #=> String
    #   resp.steps[0].config.main_class #=> String
    #   resp.steps[0].config.args #=> Array
    #   resp.steps[0].config.args[0] #=> String
    #   resp.steps[0].action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
    #   resp.steps[0].status.state #=> String, one of "PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
    #   resp.steps[0].status.state_change_reason.code #=> String, one of "NONE"
    #   resp.steps[0].status.state_change_reason.message #=> String
    #   resp.steps[0].status.failure_details.reason #=> String
    #   resp.steps[0].status.failure_details.message #=> String
    #   resp.steps[0].status.failure_details.log_file #=> String
    #   resp.steps[0].status.timeline.creation_date_time #=> Time
    #   resp.steps[0].status.timeline.start_date_time #=> Time
    #   resp.steps[0].status.timeline.end_date_time #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSteps AWS API Documentation
    #
    # @overload list_steps(params = {})
    # @param [Hash] params ({})
    def list_steps(params = {}, options = {})
      req = build_request(:list_steps, params)
      req.send_request(options)
    end

    # Modifies the target On-Demand and target Spot capacities for the
    # instance fleet with the specified InstanceFleetID within the cluster
    # specified using ClusterID. The call either succeeds or fails
    # atomically.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [required, Types::InstanceFleetModifyConfig] :instance_fleet
    #   The unique identifier of the instance fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_fleet({
    #     cluster_id: "ClusterId", # required
    #     instance_fleet: { # required
    #       instance_fleet_id: "InstanceFleetId", # required
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceFleet AWS API Documentation
    #
    # @overload modify_instance_fleet(params = {})
    # @param [Hash] params ({})
    def modify_instance_fleet(params = {}, options = {})
      req = build_request(:modify_instance_fleet, params)
      req.send_request(options)
    end

    # ModifyInstanceGroups modifies the number of nodes and configuration
    # settings of an instance group. The input parameters include the new
    # target instance count for the group and the instance group ID. The
    # call will either succeed or fail atomically.
    #
    # @option params [String] :cluster_id
    #   The ID of the cluster to which the instance group belongs.
    #
    # @option params [Array<Types::InstanceGroupModifyConfig>] :instance_groups
    #   Instance groups to change.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_groups({
    #     cluster_id: "ClusterId",
    #     instance_groups: [
    #       {
    #         instance_group_id: "XmlStringMaxLen256", # required
    #         instance_count: 1,
    #         ec2_instance_ids_to_terminate: ["InstanceId"],
    #         shrink_policy: {
    #           decommission_timeout: 1,
    #           instance_resize_policy: {
    #             instances_to_terminate: ["InstanceId"],
    #             instances_to_protect: ["InstanceId"],
    #             instance_termination_timeout: 1,
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceGroups AWS API Documentation
    #
    # @overload modify_instance_groups(params = {})
    # @param [Hash] params ({})
    def modify_instance_groups(params = {}, options = {})
      req = build_request(:modify_instance_groups, params)
      req.send_request(options)
    end

    # Creates or updates an automatic scaling policy for a core instance
    # group or task instance group in an Amazon EMR cluster. The automatic
    # scaling policy defines how an instance group dynamically adds and
    # terminates EC2 instances in response to the value of a CloudWatch
    # metric.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #
    # @option params [required, String] :instance_group_id
    #   Specifies the ID of the instance group to which the automatic scaling
    #   policy is applied.
    #
    # @option params [required, Types::AutoScalingPolicy] :auto_scaling_policy
    #   Specifies the definition of the automatic scaling policy.
    #
    # @return [Types::PutAutoScalingPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAutoScalingPolicyOutput#cluster_id #cluster_id} => String
    #   * {Types::PutAutoScalingPolicyOutput#instance_group_id #instance_group_id} => String
    #   * {Types::PutAutoScalingPolicyOutput#auto_scaling_policy #auto_scaling_policy} => Types::AutoScalingPolicyDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_auto_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId", # required
    #     auto_scaling_policy: { # required
    #       constraints: { # required
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #       },
    #       rules: [ # required
    #         {
    #           name: "String", # required
    #           description: "String",
    #           action: { # required
    #             market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #             simple_scaling_policy_configuration: { # required
    #               adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #               scaling_adjustment: 1, # required
    #               cool_down: 1,
    #             },
    #           },
    #           trigger: { # required
    #             cloud_watch_alarm_definition: { # required
    #               comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #               evaluation_periods: 1,
    #               metric_name: "String", # required
    #               namespace: "String",
    #               period: 1, # required
    #               statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #               threshold: 1.0, # required
    #               unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #               dimensions: [
    #                 {
    #                   key: "String",
    #                   value: "String",
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_id #=> String
    #   resp.instance_group_id #=> String
    #   resp.auto_scaling_policy.status.state #=> String, one of "PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"
    #   resp.auto_scaling_policy.status.state_change_reason.code #=> String, one of "USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"
    #   resp.auto_scaling_policy.status.state_change_reason.message #=> String
    #   resp.auto_scaling_policy.constraints.min_capacity #=> Integer
    #   resp.auto_scaling_policy.constraints.max_capacity #=> Integer
    #   resp.auto_scaling_policy.rules #=> Array
    #   resp.auto_scaling_policy.rules[0].name #=> String
    #   resp.auto_scaling_policy.rules[0].description #=> String
    #   resp.auto_scaling_policy.rules[0].action.market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.adjustment_type #=> String, one of "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"
    #   resp.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.scaling_adjustment #=> Integer
    #   resp.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.cool_down #=> Integer
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.comparison_operator #=> String, one of "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.evaluation_periods #=> Integer
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.metric_name #=> String
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.namespace #=> String
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.period #=> Integer
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.statistic #=> String, one of "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.threshold #=> Float
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.unit #=> String, one of "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions #=> Array
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].key #=> String
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoScalingPolicy AWS API Documentation
    #
    # @overload put_auto_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_auto_scaling_policy(params = {}, options = {})
      req = build_request(:put_auto_scaling_policy, params)
      req.send_request(options)
    end

    # Removes an automatic scaling policy from a specified instance group
    # within an EMR cluster.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #
    # @option params [required, String] :instance_group_id
    #   Specifies the ID of the instance group to which the scaling policy is
    #   applied.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_auto_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicy AWS API Documentation
    #
    # @overload remove_auto_scaling_policy(params = {})
    # @param [Hash] params ({})
    def remove_auto_scaling_policy(params = {}, options = {})
      req = build_request(:remove_auto_scaling_policy, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon EMR resource. Tags make it easier to
    # associate clusters in various ways, such as grouping clusters to track
    # your Amazon EMR resource allocation costs. For more information, see
    # [Tag Clusters][1].
    #
    # The following example removes the stack tag with value Prod from a
    # cluster:
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #
    # @option params [required, String] :resource_id
    #   The Amazon EMR resource identifier from which tags will be removed.
    #   This value must be a cluster identifier.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # RunJobFlow creates and starts running a new cluster (job flow). The
    # cluster runs the steps specified. After the steps complete, the
    # cluster stops and the HDFS partition is lost. To prevent loss of data,
    # configure the last step of the job flow to store results in Amazon S3.
    # If the JobFlowInstancesConfig `KeepJobFlowAliveWhenNoSteps` parameter
    # is set to `TRUE`, the cluster transitions to the WAITING state rather
    # than shutting down after the steps have completed.
    #
    # For additional protection, you can set the JobFlowInstancesConfig
    # `TerminationProtected` parameter to `TRUE` to lock the cluster and
    # prevent it from being terminated by API call, user intervention, or in
    # the event of a job flow error.
    #
    # A maximum of 256 steps are allowed in each job flow.
    #
    # If your cluster is long-running (such as a Hive data warehouse) or
    # complex, you may require more than 256 steps to process your data. You
    # can bypass the 256-step limitation in various ways, including using
    # the SSH shell to connect to the master node and submitting queries
    # directly to the software running on the master node, such as Hive and
    # Hadoop. For more information on how to do this, see [Add More than 256
    # Steps to a Cluster][1] in the *Amazon EMR Management Guide*.
    #
    # For long running clusters, we recommend that you periodically store
    # your results.
    #
    # <note markdown="1"> The instance fleets configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow
    # request can contain InstanceFleets parameters or InstanceGroups
    # parameters, but not both.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html
    #
    # @option params [required, String] :name
    #   The name of the job flow.
    #
    # @option params [String] :log_uri
    #   The location in Amazon S3 to write the log files of the job flow. If a
    #   value is not provided, logs are not created.
    #
    # @option params [String] :additional_info
    #   A JSON string for selecting additional features.
    #
    # @option params [String] :ami_version
    #   Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #   releases 4.0 and later, `ReleaseLabel` is used. To specify a custom
    #   AMI, use `CustomAmiID`.
    #
    # @option params [String] :release_label
    #   The Amazon EMR release label, which determines the version of
    #   open-source application packages installed on the cluster. Release
    #   labels are in the form `emr-x.x.x`, where x.x.x is an Amazon EMR
    #   release version, for example, `emr-5.14.0`. For more information about
    #   Amazon EMR release versions and included application versions and
    #   features, see
    #   [http://docs.aws.amazon.com/emr/latest/ReleaseGuide/][1]. The release
    #   label applies only to Amazon EMR releases versions 4.x and later.
    #   Earlier versions use `AmiVersion`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #
    # @option params [required, Types::JobFlowInstancesConfig] :instances
    #   A specification of the number and type of Amazon EC2 instances.
    #
    # @option params [Array<Types::StepConfig>] :steps
    #   A list of steps to run.
    #
    # @option params [Array<Types::BootstrapActionConfig>] :bootstrap_actions
    #   A list of bootstrap actions to run before Hadoop starts on the cluster
    #   nodes.
    #
    # @option params [Array<String>] :supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use. For more
    #   information, see the [Amazon EMR Developer Guide][1]. Currently
    #   supported values are:
    #
    #   * "mapr-m3" - launch the job flow using MapR M3 Edition.
    #
    #   * "mapr-m5" - launch the job flow using MapR M5 Edition.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #
    # @option params [Array<Types::SupportedProductConfig>] :new_supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use with the
    #   job flow that accepts a user argument list. EMR accepts and forwards
    #   the argument list to the corresponding installation script as
    #   bootstrap action arguments. For more information, see "Launch a Job
    #   Flow on the MapR Distribution for Hadoop" in the [Amazon EMR
    #   Developer Guide][1]. Supported values are:
    #
    #   * "mapr-m3" - launch the cluster using MapR M3 Edition.
    #
    #   * "mapr-m5" - launch the cluster using MapR M5 Edition.
    #
    #   * "mapr" with the user arguments specifying "--edition,m3" or
    #     "--edition,m5" - launch the job flow using MapR M3 or M5 Edition
    #     respectively.
    #
    #   * "mapr-m7" - launch the cluster using MapR M7 Edition.
    #
    #   * "hunk" - launch the cluster with the Hunk Big Data Analtics
    #     Platform.
    #
    #   * "hue"- launch the cluster with Hue installed.
    #
    #   * "spark" - launch the cluster with Apache Spark installed.
    #
    #   * "ganglia" - launch the cluster with the Ganglia Monitoring System
    #     installed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #
    # @option params [Array<Types::Application>] :applications
    #   For Amazon EMR releases 4.0 and later. A list of applications for the
    #   cluster. Valid values are: "Hadoop", "Hive", "Mahout", "Pig",
    #   and "Spark." They are case insensitive.
    #
    # @option params [Array<Types::Configuration>] :configurations
    #   For Amazon EMR releases 4.0 and later. The list of configurations
    #   supplied for the EMR cluster you are creating.
    #
    # @option params [Boolean] :visible_to_all_users
    #   Whether the cluster is visible to all IAM users of the AWS account
    #   associated with the cluster. If this value is set to `true`, all IAM
    #   users of that AWS account can view and (if they have the proper policy
    #   permissions set) manage the cluster. If it is set to `false`, only the
    #   IAM user that created the cluster can view and manage it.
    #
    # @option params [String] :job_flow_role
    #   Also called instance profile and EC2 role. An IAM role for an EMR
    #   cluster. The EC2 instances of the cluster assume this role. The
    #   default role is `EMR_EC2_DefaultRole`. In order to use the default
    #   role, you must have already created it using the CLI or console.
    #
    # @option params [String] :service_role
    #   The IAM role that will be assumed by the Amazon EMR service to access
    #   AWS resources on your behalf.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with a cluster and propagate to Amazon EC2
    #   instances.
    #
    # @option params [String] :security_configuration
    #   The name of a security configuration to apply to the cluster.
    #
    # @option params [String] :auto_scaling_role
    #   An IAM role for automatic scaling policies. The default role is
    #   `EMR_AutoScaling_DefaultRole`. The IAM role provides permissions that
    #   the automatic scaling feature requires to launch and terminate EC2
    #   instances in an instance group.
    #
    # @option params [String] :scale_down_behavior
    #   Specifies the way that individual Amazon EC2 instances terminate when
    #   an automatic scale-in activity occurs or an instance group is resized.
    #   `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR terminates
    #   nodes at the instance-hour boundary, regardless of when the request to
    #   terminate the instance was submitted. This option is only available
    #   with Amazon EMR 5.1.0 and later and is the default for clusters
    #   created using that version. `TERMINATE_AT_TASK_COMPLETION` indicates
    #   that Amazon EMR blacklists and drains tasks from nodes before
    #   terminating the Amazon EC2 instances, regardless of the instance-hour
    #   boundary. With either behavior, Amazon EMR removes the least active
    #   nodes first and blocks instance termination if it could lead to HDFS
    #   corruption. `TERMINATE_AT_TASK_COMPLETION` available only in Amazon
    #   EMR version 4.1.0 and later, and is the default for versions of Amazon
    #   EMR earlier than 5.1.0.
    #
    # @option params [String] :custom_ami_id
    #   Available only in Amazon EMR version 5.7.0 and later. The ID of a
    #   custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this
    #   AMI when it launches cluster EC2 instances. For more information about
    #   custom AMIs in Amazon EMR, see [Using a Custom AMI][1] in the *Amazon
    #   EMR Management Guide*. If omitted, the cluster uses the base Linux AMI
    #   for the `ReleaseLabel` specified. For Amazon EMR versions 2.x and 3.x,
    #   use `AmiVersion` instead.
    #
    #   For information about creating a custom AMI, see [Creating an Amazon
    #   EBS-Backed Linux AMI][2] in the *Amazon Elastic Compute Cloud User
    #   Guide for Linux Instances*. For information about finding an AMI ID,
    #   see [Finding a Linux AMI][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html
    #   [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #
    # @option params [Integer] :ebs_root_volume_size
    #   The size, in GiB, of the EBS root device volume of the Linux AMI that
    #   is used for each EC2 instance. Available in Amazon EMR version 4.x and
    #   later.
    #
    # @option params [String] :repo_upgrade_on_boot
    #   Applies only when `CustomAmiID` is used. Specifies which updates from
    #   the Amazon Linux AMI package repositories to apply automatically when
    #   the instance boots using the AMI. If omitted, the default is
    #   `SECURITY`, which indicates that only security updates are applied. If
    #   `NONE` is specified, no updates are applied, and all updates must be
    #   applied manually.
    #
    # @option params [Types::KerberosAttributes] :kerberos_attributes
    #   Attributes for Kerberos configuration when Kerberos authentication is
    #   enabled using a security configuration. For more information see [Use
    #   Kerberos Authentication][1] in the *EMR Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #
    # @return [Types::RunJobFlowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunJobFlowOutput#job_flow_id #job_flow_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_job_flow({
    #     name: "XmlStringMaxLen256", # required
    #     log_uri: "XmlString",
    #     additional_info: "XmlString",
    #     ami_version: "XmlStringMaxLen256",
    #     release_label: "XmlStringMaxLen256",
    #     instances: { # required
    #       master_instance_type: "InstanceType",
    #       slave_instance_type: "InstanceType",
    #       instance_count: 1,
    #       instance_groups: [
    #         {
    #           name: "XmlStringMaxLen256",
    #           market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #           instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #           bid_price: "XmlStringMaxLen256",
    #           instance_type: "InstanceType", # required
    #           instance_count: 1, # required
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String",
    #               },
    #             },
    #           ],
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                 },
    #                 volumes_per_instance: 1,
    #               },
    #             ],
    #             ebs_optimized: false,
    #           },
    #           auto_scaling_policy: {
    #             constraints: { # required
    #               min_capacity: 1, # required
    #               max_capacity: 1, # required
    #             },
    #             rules: [ # required
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 action: { # required
    #                   market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                   simple_scaling_policy_configuration: { # required
    #                     adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                     scaling_adjustment: 1, # required
    #                     cool_down: 1,
    #                   },
    #                 },
    #                 trigger: { # required
    #                   cloud_watch_alarm_definition: { # required
    #                     comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                     evaluation_periods: 1,
    #                     metric_name: "String", # required
    #                     namespace: "String",
    #                     period: 1, # required
    #                     statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                     threshold: 1.0, # required
    #                     unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                     dimensions: [
    #                       {
    #                         key: "String",
    #                         value: "String",
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       instance_fleets: [
    #         {
    #           name: "XmlStringMaxLen256",
    #           instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #           target_on_demand_capacity: 1,
    #           target_spot_capacity: 1,
    #           instance_type_configs: [
    #             {
    #               instance_type: "InstanceType", # required
    #               weighted_capacity: 1,
    #               bid_price: "XmlStringMaxLen256",
    #               bid_price_as_percentage_of_on_demand_price: 1.0,
    #               ebs_configuration: {
    #                 ebs_block_device_configs: [
    #                   {
    #                     volume_specification: { # required
    #                       volume_type: "String", # required
    #                       iops: 1,
    #                       size_in_gb: 1, # required
    #                     },
    #                     volumes_per_instance: 1,
    #                   },
    #                 ],
    #                 ebs_optimized: false,
    #               },
    #               configurations: [
    #                 {
    #                   classification: "String",
    #                   configurations: {
    #                     # recursive ConfigurationList
    #                   },
    #                   properties: {
    #                     "String" => "String",
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           launch_specifications: {
    #             spot_specification: { # required
    #               timeout_duration_minutes: 1, # required
    #               timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #               block_duration_minutes: 1,
    #             },
    #           },
    #         },
    #       ],
    #       ec2_key_name: "XmlStringMaxLen256",
    #       placement: {
    #         availability_zone: "XmlString",
    #         availability_zones: ["XmlStringMaxLen256"],
    #       },
    #       keep_job_flow_alive_when_no_steps: false,
    #       termination_protected: false,
    #       hadoop_version: "XmlStringMaxLen256",
    #       ec2_subnet_id: "XmlStringMaxLen256",
    #       ec2_subnet_ids: ["XmlStringMaxLen256"],
    #       emr_managed_master_security_group: "XmlStringMaxLen256",
    #       emr_managed_slave_security_group: "XmlStringMaxLen256",
    #       service_access_security_group: "XmlStringMaxLen256",
    #       additional_master_security_groups: ["XmlStringMaxLen256"],
    #       additional_slave_security_groups: ["XmlStringMaxLen256"],
    #     },
    #     steps: [
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString",
    #             },
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"],
    #         },
    #       },
    #     ],
    #     bootstrap_actions: [
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         script_bootstrap_action: { # required
    #           path: "XmlString", # required
    #           args: ["XmlString"],
    #         },
    #       },
    #     ],
    #     supported_products: ["XmlStringMaxLen256"],
    #     new_supported_products: [
    #       {
    #         name: "XmlStringMaxLen256",
    #         args: ["XmlString"],
    #       },
    #     ],
    #     applications: [
    #       {
    #         name: "String",
    #         version: "String",
    #         args: ["String"],
    #         additional_info: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     configurations: [
    #       {
    #         classification: "String",
    #         configurations: {
    #           # recursive ConfigurationList
    #         },
    #         properties: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     visible_to_all_users: false,
    #     job_flow_role: "XmlString",
    #     service_role: "XmlString",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     security_configuration: "XmlString",
    #     auto_scaling_role: "XmlString",
    #     scale_down_behavior: "TERMINATE_AT_INSTANCE_HOUR", # accepts TERMINATE_AT_INSTANCE_HOUR, TERMINATE_AT_TASK_COMPLETION
    #     custom_ami_id: "XmlStringMaxLen256",
    #     ebs_root_volume_size: 1,
    #     repo_upgrade_on_boot: "SECURITY", # accepts SECURITY, NONE
    #     kerberos_attributes: {
    #       realm: "XmlStringMaxLen256", # required
    #       kdc_admin_password: "XmlStringMaxLen256", # required
    #       cross_realm_trust_principal_password: "XmlStringMaxLen256",
    #       ad_domain_join_user: "XmlStringMaxLen256",
    #       ad_domain_join_password: "XmlStringMaxLen256",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_flow_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlow AWS API Documentation
    #
    # @overload run_job_flow(params = {})
    # @param [Hash] params ({})
    def run_job_flow(params = {}, options = {})
      req = build_request(:run_job_flow, params)
      req.send_request(options)
    end

    # SetTerminationProtection locks a cluster (job flow) so the EC2
    # instances in the cluster cannot be terminated by user intervention, an
    # API call, or in the event of a job-flow error. The cluster still
    # terminates upon successful completion of the job flow. Calling
    # `SetTerminationProtection` on a cluster is similar to calling the
    # Amazon EC2 `DisableAPITermination` API on all EC2 instances in a
    # cluster.
    #
    # `SetTerminationProtection` is used to prevent accidental termination
    # of a cluster and to ensure that in the event of an error, the
    # instances persist so that you can recover any data stored in their
    # ephemeral instance storage.
    #
    # To terminate a cluster that has been locked by setting
    # `SetTerminationProtection` to `true`, you must first unlock the job
    # flow by a subsequent call to `SetTerminationProtection` in which you
    # set the value to `false`.
    #
    # For more information, see[Managing Cluster Termination][1] in the
    # *Amazon EMR Management Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html
    #
    # @option params [required, Array<String>] :job_flow_ids
    #   A list of strings that uniquely identify the clusters to protect. This
    #   identifier is returned by RunJobFlow and can also be obtained from
    #   DescribeJobFlows .
    #
    # @option params [required, Boolean] :termination_protected
    #   A Boolean that indicates whether to protect the cluster and prevent
    #   the Amazon EC2 instances in the cluster from shutting down due to API
    #   calls, user intervention, or job-flow error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_termination_protection({
    #     job_flow_ids: ["XmlString"], # required
    #     termination_protected: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetTerminationProtection AWS API Documentation
    #
    # @overload set_termination_protection(params = {})
    # @param [Hash] params ({})
    def set_termination_protection(params = {}, options = {})
      req = build_request(:set_termination_protection, params)
      req.send_request(options)
    end

    # Sets whether all AWS Identity and Access Management (IAM) users under
    # your account can access the specified clusters (job flows). This
    # action works on running clusters. You can also set the visibility of a
    # cluster when you launch it using the `VisibleToAllUsers` parameter of
    # RunJobFlow. The SetVisibleToAllUsers action can be called only by an
    # IAM user who created the cluster or the AWS account that owns the
    # cluster.
    #
    # @option params [required, Array<String>] :job_flow_ids
    #   Identifiers of the job flows to receive the new visibility setting.
    #
    # @option params [required, Boolean] :visible_to_all_users
    #   Whether the specified clusters are visible to all IAM users of the AWS
    #   account associated with the cluster. If this value is set to True, all
    #   IAM users of that AWS account can view and, if they have the proper
    #   IAM policy permissions set, manage the clusters. If it is set to
    #   False, only the IAM user that created a cluster can view and manage
    #   it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_visible_to_all_users({
    #     job_flow_ids: ["XmlString"], # required
    #     visible_to_all_users: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetVisibleToAllUsers AWS API Documentation
    #
    # @overload set_visible_to_all_users(params = {})
    # @param [Hash] params ({})
    def set_visible_to_all_users(params = {}, options = {})
      req = build_request(:set_visible_to_all_users, params)
      req.send_request(options)
    end

    # TerminateJobFlows shuts a list of clusters (job flows) down. When a
    # job flow is shut down, any step not yet completed is canceled and the
    # EC2 instances on which the cluster is running are stopped. Any log
    # files not already saved are uploaded to Amazon S3 if a LogUri was
    # specified when the cluster was created.
    #
    # The maximum number of clusters allowed is 10. The call to
    # `TerminateJobFlows` is asynchronous. Depending on the configuration of
    # the cluster, it may take up to 1-5 minutes for the cluster to
    # completely terminate and release allocated resources, such as Amazon
    # EC2 instances.
    #
    # @option params [required, Array<String>] :job_flow_ids
    #   A list of job flows to be shutdown.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_job_flows({
    #     job_flow_ids: ["XmlString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/TerminateJobFlows AWS API Documentation
    #
    # @overload terminate_job_flows(params = {})
    # @param [Hash] params ({})
    def terminate_job_flows(params = {}, options = {})
      req = build_request(:terminate_job_flows, params)
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
      context[:gem_name] = 'aws-sdk-emr'
      context[:gem_version] = '1.5.0'
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
    # | waiter_name        | params              | :delay   | :max_attempts |
    # | ------------------ | ------------------- | -------- | ------------- |
    # | cluster_running    | {#describe_cluster} | 30       | 60            |
    # | cluster_terminated | {#describe_cluster} | 30       | 60            |
    # | step_complete      | {#describe_step}    | 30       | 60            |
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
        cluster_running: Waiters::ClusterRunning,
        cluster_terminated: Waiters::ClusterTerminated,
        step_complete: Waiters::StepComplete
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
