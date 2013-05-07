# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class EMR

    # Client class for Elastic MapReduce (EMR).
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method add_instance_groups(options = {})
      # Calls the AddInstanceGroups API operation.
      # @param [Hash] options
      #   * `:instance_groups` - *required* - (Array<Hash>) Instance Groups to
      #     add.
      #     * `:name` - (String) Friendly name given to the instance group.
      #     * `:market` - (String) Market type of the Amazon EC2 instances used
      #       to create a cluster node. Valid values include:
      #       * `ON_DEMAND`
      #       * `SPOT`
      #     * `:instance_role` - *required* - (String) The role of the instance
      #       group in the cluster. Valid values include:
      #       * `MASTER`
      #       * `CORE`
      #       * `TASK`
      #     * `:bid_price` - (String) Bid price for each Amazon EC2 instance in
      #       the instance group when launching nodes as Spot Instances,
      #       expressed in USD.
      #     * `:instance_type` - *required* - (String) The Amazon EC2 instance
      #       type for all instances in the instance group.
      #     * `:instance_count` - *required* - (Integer) Target number of
      #       instances for the instance group.
      #   * `:job_flow_id` - *required* - (String) Job flow in which to add the
      #     instance groups.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_flow_id` - (String)
      #   * `:instance_group_ids` - (Array<String>)

      # @!method add_job_flow_steps(options = {})
      # Calls the AddJobFlowSteps API operation.
      # @param [Hash] options
      #   * `:job_flow_id` - *required* - (String) A string that uniquely
      #     identifies the job flow. This identifier is returned by RunJobFlow
      #     and can also be obtained from DescribeJobFlows.
      #   * `:steps` - *required* - (Array<Hash>) A list of StepConfig to be
      #     executed by the job flow.
      #     * `:name` - *required* - (String) The name of the job flow step.
      #     * `:action_on_failure` - (String) Specifies the action to take if
      #       the job flow step fails. Valid values include:
      #       * `TERMINATE_JOB_FLOW`
      #       * `CANCEL_AND_WAIT`
      #       * `CONTINUE`
      #     * `:hadoop_jar_step` - *required* - (Hash) Specifies the JAR file
      #       used for the job flow step.
      #       * `:properties` - (Array<Hash>) A list of Java properties that
      #         are set when the step runs. You can use these properties to
      #         pass key value pairs to your main function.
      #         * `:key` - (String) The unique identifier of a key value pair.
      #         * `:value` - (String) The value part of the identified key.
      #       * `:jar` - *required* - (String) A path to a JAR file run during
      #         the step.
      #       * `:main_class` - (String) The name of the main class in the
      #         specified Java file. If not specified, the JAR file should
      #         specify a Main-Class in its manifest file.
      #       * `:args` - (Array<String>) A list of command line arguments
      #         passed to the JAR file's main function when executed.
      # @return [Core::Response]

      # @!method describe_job_flows(options = {})
      # Calls the DescribeJobFlows API operation.
      # @param [Hash] options
      #   * `:created_after` - (String<ISO8601 datetime>) Return only job flows
      #     created after this date and time.
      #   * `:created_before` - (String<ISO8601 datetime>) Return only job
      #     flows created before this date and time.
      #   * `:job_flow_ids` - (Array<String>) Return only job flows whose job
      #     flow ID is contained in this list.
      #   * `:job_flow_states` - (Array<String>) Return only job flows whose
      #     state is contained in this list.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_flows` - (Array<Hash>)
      #     * `:job_flow_id` - (String)
      #     * `:name` - (String)
      #     * `:log_uri` - (String)
      #     * `:ami_version` - (String)
      #     * `:execution_status_detail` - (Hash)
      #       * `:state` - (String)
      #       * `:creation_date_time` - (Time)
      #       * `:start_date_time` - (Time)
      #       * `:ready_date_time` - (Time)
      #       * `:end_date_time` - (Time)
      #       * `:last_state_change_reason` - (String)
      #     * `:instances` - (Hash)
      #       * `:master_instance_type` - (String)
      #       * `:master_public_dns_name` - (String)
      #       * `:master_instance_id` - (String)
      #       * `:slave_instance_type` - (String)
      #       * `:instance_count` - (Integer)
      #       * `:instance_groups` - (Array<Hash>)
      #         * `:instance_group_id` - (String)
      #         * `:name` - (String)
      #         * `:market` - (String)
      #         * `:instance_role` - (String)
      #         * `:bid_price` - (String)
      #         * `:instance_type` - (String)
      #         * `:instance_request_count` - (Integer)
      #         * `:instance_running_count` - (Integer)
      #         * `:state` - (String)
      #         * `:last_state_change_reason` - (String)
      #         * `:creation_date_time` - (Time)
      #         * `:start_date_time` - (Time)
      #         * `:ready_date_time` - (Time)
      #         * `:end_date_time` - (Time)
      #       * `:normalized_instance_hours` - (Integer)
      #       * `:ec2_key_name` - (String)
      #       * `:ec2_subnet_id` - (String)
      #       * `:placement` - (Hash)
      #         * `:availability_zone` - (String)
      #       * `:keep_job_flow_alive_when_no_steps` - (Boolean)
      #       * `:termination_protected` - (Boolean)
      #       * `:hadoop_version` - (String)
      #     * `:steps` - (Array<Hash>)
      #       * `:step_config` - (Hash)
      #         * `:name` - (String)
      #         * `:action_on_failure` - (String)
      #         * `:hadoop_jar_step` - (Hash)
      #           * `:properties` - (Array<Hash>)
      #             * `:key` - (String)
      #             * `:value` - (String)
      #           * `:jar` - (String)
      #           * `:main_class` - (String)
      #           * `:args` - (Array<String>)
      #       * `:execution_status_detail` - (Hash)
      #         * `:state` - (String)
      #         * `:creation_date_time` - (Time)
      #         * `:start_date_time` - (Time)
      #         * `:end_date_time` - (Time)
      #         * `:last_state_change_reason` - (String)
      #     * `:bootstrap_actions` - (Array<Hash>)
      #       * `:bootstrap_action_config` - (Hash)
      #         * `:name` - (String)
      #         * `:script_bootstrap_action` - (Hash)
      #           * `:path` - (String)
      #           * `:args` - (Array<String>)
      #     * `:supported_products` - (Array<String>)
      #     * `:visible_to_all_users` - (Boolean)
      #     * `:job_flow_role` - (String)

      # @!method modify_instance_groups(options = {})
      # Calls the ModifyInstanceGroups API operation.
      # @param [Hash] options
      #   * `:instance_groups` - (Array<Hash>) Instance groups to change.
      #     * `:instance_group_id` - *required* - (String) Unique ID of the
      #       instance group to expand or shrink.
      #     * `:instance_count` - *required* - (Integer) Target size for the
      #       instance group.
      # @return [Core::Response]

      # @!method run_job_flow(options = {})
      # Calls the RunJobFlow API operation.
      # @param [Hash] options
      #   * `:name` - *required* - (String) The name of the job flow.
      #   * `:log_uri` - (String) Specifies the location in Amazon S3 to write
      #     the log files of the job flow. If a value is not provided, logs are
      #     not created.
      #   * `:additional_info` - (String) A JSON string for selecting
      #     additional features.
      #   * `:ami_version` - (String) The version of the Amazon Machine Image
      #     (AMI) to use when launching Amazon EC2 instances in the job flow.
      #     The following values are valid: "latest" (uses the latest AMI) The
      #     version number of the AMI to use, for example, "2.0" If this value
      #     is not specified, the job flow uses the default of (AMI 1.0, Hadoop
      #     0.18). If the AMI supports multiple versions of Hadoop (for
      #     example, AMI 1.0 supports both Hadoop 0.18 and 0.20) you can use
      #     the JobFlowInstancesConfig HadoopVersion parameter to modify the
      #     version of Hadoop from the defaults shown above. For details about
      #     the AMI versions currently supported by Amazon ElasticMapReduce, go
      #     to AMI Versions Supported in Elastic MapReduce in the Amazon
      #     Elastic MapReduce Developer's Guide.
      #   * `:instances` - *required* - (Hash) A specification of the number
      #     and type of Amazon EC2 instances on which to run the job flow.
      #     * `:master_instance_type` - (String) The EC2 instance type of the
      #       master node.
      #     * `:slave_instance_type` - (String) The EC2 instance type of the
      #       slave nodes.
      #     * `:instance_count` - (Integer) The number of Amazon EC2 instances
      #       used to execute the job flow.
      #     * `:instance_groups` - (Array<Hash>) Configuration for the job
      #       flow's instance groups.
      #       * `:name` - (String) Friendly name given to the instance group.
      #       * `:market` - (String) Market type of the Amazon EC2 instances
      #         used to create a cluster node. Valid values include:
      #         * `ON_DEMAND`
      #         * `SPOT`
      #       * `:instance_role` - *required* - (String) The role of the
      #         instance group in the cluster. Valid values include:
      #         * `MASTER`
      #         * `CORE`
      #         * `TASK`
      #       * `:bid_price` - (String) Bid price for each Amazon EC2 instance
      #         in the instance group when launching nodes as Spot Instances,
      #         expressed in USD.
      #       * `:instance_type` - *required* - (String) The Amazon EC2
      #         instance type for all instances in the instance group.
      #       * `:instance_count` - *required* - (Integer) Target number of
      #         instances for the instance group.
      #     * `:ec2_key_name` - (String) Specifies the name of the Amazon EC2
      #       key pair that can be used to ssh to the master node as the user
      #       called "hadoop."
      #     * `:placement` - (Hash) Specifies the Availability Zone the job
      #       flow will run in.
      #       * `:availability_zone` - *required* - (String) The Amazon EC2
      #         Availability Zone for the job flow.
      #     * `:keep_job_flow_alive_when_no_steps` - (Boolean) Specifies
      #       whether the job flow should terminate after completing all steps.
      #     * `:termination_protected` - (Boolean) Specifies whether to lock
      #       the job flow to prevent the Amazon EC2 instances from being
      #       terminated by API call, user intervention, or in the event of a
      #       job flow error.
      #     * `:hadoop_version` - (String) Specifies the Hadoop version for the
      #       job flow. Valid inputs are "0.18", "0.20", or "0.20.205". If you
      #       do not set this value, the default of 0.18 is used, unless the
      #       AmiVersion parameter is set in the RunJobFlow call, in which case
      #       the default version of Hadoop for that AMI version is used.
      #     * `:ec2_subnet_id` - (String) To launch the job flow in Amazon
      #       Virtual Private Cloud (Amazon VPC), set this parameter to the
      #       identifier of the Amazon VPC subnet where you want the job flow
      #       to launch. If you do not specify this value, the job flow is
      #       launched in the normal Amazon Web Services cloud, outside of an
      #       Amazon VPC. Amazon VPC currently does not support cluster compute
      #       quadruple extra large (cc1.4xlarge) instances. Thus you cannot
      #       specify the cc1.4xlarge instance type for nodes of a job flow
      #       launched in a Amazon VPC.
      #   * `:steps` - (Array<Hash>) A list of steps to be executed by the job
      #     flow.
      #     * `:name` - *required* - (String) The name of the job flow step.
      #     * `:action_on_failure` - (String) Specifies the action to take if
      #       the job flow step fails. Valid values include:
      #       * `TERMINATE_JOB_FLOW`
      #       * `CANCEL_AND_WAIT`
      #       * `CONTINUE`
      #     * `:hadoop_jar_step` - *required* - (Hash) Specifies the JAR file
      #       used for the job flow step.
      #       * `:properties` - (Array<Hash>) A list of Java properties that
      #         are set when the step runs. You can use these properties to
      #         pass key value pairs to your main function.
      #         * `:key` - (String) The unique identifier of a key value pair.
      #         * `:value` - (String) The value part of the identified key.
      #       * `:jar` - *required* - (String) A path to a JAR file run during
      #         the step.
      #       * `:main_class` - (String) The name of the main class in the
      #         specified Java file. If not specified, the JAR file should
      #         specify a Main-Class in its manifest file.
      #       * `:args` - (Array<String>) A list of command line arguments
      #         passed to the JAR file's main function when executed.
      #   * `:bootstrap_actions` - (Array<Hash>) A list of bootstrap actions
      #     that will be run before Hadoop is started on the cluster nodes.
      #     * `:name` - *required* - (String) The name of the bootstrap action.
      #     * `:script_bootstrap_action` - *required* - (Hash) The script run
      #       by the bootstrap action.
      #       * `:path` - *required* - (String) Location of the script to run
      #         during a bootstrap action. Can be either a location in Amazon
      #         S3 or on a local file system.
      #       * `:args` - (Array<String>) A list of command line arguments to
      #         pass to the bootstrap action script.
      #   * `:supported_products` - (Array<String>) A list of strings that
      #     indicates third-party software to use with the job flow. For more
      #     information, go to Use Third Party Applications with Amazon EMR.
      #     Currently supported values are: "karmasphere-enterprise-utility" -
      #     tag the job flow for management by Karmasphere. "mapr-m3" - launch
      #     the job flow using MapR M3 Edition. "mapr-m5" - launch the job flow
      #     using MapR M5 Edition.
      #   * `:visible_to_all_users` - (Boolean) Whether the job flow is visible
      #     to all IAM users of the AWS account associated with the job flow.
      #     If this value is set to `true` , all IAM users of that AWS account
      #     can view and (if they have the proper policy permissions set)
      #     manage the job flow. If it is set to `false` , only the IAM user
      #     that created the job flow can view and manage it.
      #   * `:job_flow_role` - (String) An IAM role for the job flow. The EC2
      #     instances of the job flow assume this role. The default role is
      #     EMRJobflowDefault. In order to use the default role, you must have
      #     already created it using the CLI.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_flow_id` - (String)

      # @!method set_termination_protection(options = {})
      # Calls the SetTerminationProtection API operation.
      # @param [Hash] options
      #   * `:job_flow_ids` - *required* - (Array<String>) A list of strings
      #     that uniquely identify the job flows to protect. This identifier is
      #     returned by RunJobFlow and can also be obtained from
      #     DescribeJobFlows .
      #   * `:termination_protected` - *required* - (Boolean) A Boolean that
      #     indicates whether to protect the job flow and prevent the Amazon
      #     EC2 instances in the cluster from shutting down due to API calls,
      #     user intervention, or job-flow error.
      # @return [Core::Response]

      # @!method set_visible_to_all_users(options = {})
      # Calls the SetVisibleToAllUsers API operation.
      # @param [Hash] options
      #   * `:job_flow_ids` - *required* - (Array<String>) Identifiers of the
      #     job flows to receive the new visibility setting.
      #   * `:visible_to_all_users` - *required* - (Boolean) Whether the
      #     specified job flows are visible to all IAM users of the AWS account
      #     associated with the job flow. If this value is set to True, all IAM
      #     users of that AWS account can view and, if they have the proper IAM
      #     policy permissions set, manage the job flows. If it is set to
      #     False, only the IAM user that created a job flow can view and
      #     manage it.
      # @return [Core::Response]

      # @!method terminate_job_flows(options = {})
      # Calls the TerminateJobFlows API operation.
      # @param [Hash] options
      #   * `:job_flow_ids` - *required* - (Array<String>) A list of job flows
      #     to be shutdown.
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2009-03-31')

    end
  end
end
