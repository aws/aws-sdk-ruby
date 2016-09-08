# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module EMR
    module Types

      # Input to an AddInstanceGroups call.
      # @note When making an API call, pass AddInstanceGroupsInput
      #   data as a hash:
      #
      #       {
      #         instance_groups: [ # required
      #           {
      #             name: "XmlStringMaxLen256",
      #             market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
      #             instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
      #             bid_price: "XmlStringMaxLen256",
      #             instance_type: "InstanceType", # required
      #             instance_count: 1, # required
      #             configurations: [
      #               {
      #                 classification: "String",
      #                 configurations: {
      #                   # recursive ConfigurationList
      #                 },
      #                 properties: {
      #                   "String" => "String",
      #                 },
      #               },
      #             ],
      #             ebs_configuration: {
      #               ebs_block_device_configs: [
      #                 {
      #                   volume_specification: { # required
      #                     volume_type: "String", # required
      #                     iops: 1,
      #                     size_in_gb: 1, # required
      #                   },
      #                   volumes_per_instance: 1,
      #                 },
      #               ],
      #               ebs_optimized: false,
      #             },
      #           },
      #         ],
      #         job_flow_id: "XmlStringMaxLen256", # required
      #       }
      class AddInstanceGroupsInput < Aws::Structure.new(
        :instance_groups,
        :job_flow_id)

        # @!attribute [rw] instance_groups
        #   Instance Groups to add.
        #   @return [Array<Types::InstanceGroupConfig>]

        # @!attribute [rw] job_flow_id
        #   Job flow in which to add the instance groups.
        #   @return [String]

      end

      # Output from an AddInstanceGroups call.
      class AddInstanceGroupsOutput < Aws::Structure.new(
        :job_flow_id,
        :instance_group_ids)

        # @!attribute [rw] job_flow_id
        #   The job flow ID in which the instance groups are added.
        #   @return [String]

        # @!attribute [rw] instance_group_ids
        #   Instance group IDs of the newly created instance groups.
        #   @return [Array<String>]

      end

      # The input argument to the AddJobFlowSteps operation.
      # @note When making an API call, pass AddJobFlowStepsInput
      #   data as a hash:
      #
      #       {
      #         job_flow_id: "XmlStringMaxLen256", # required
      #         steps: [ # required
      #           {
      #             name: "XmlStringMaxLen256", # required
      #             action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
      #             hadoop_jar_step: { # required
      #               properties: [
      #                 {
      #                   key: "XmlString",
      #                   value: "XmlString",
      #                 },
      #               ],
      #               jar: "XmlString", # required
      #               main_class: "XmlString",
      #               args: ["XmlString"],
      #             },
      #           },
      #         ],
      #       }
      class AddJobFlowStepsInput < Aws::Structure.new(
        :job_flow_id,
        :steps)

        # @!attribute [rw] job_flow_id
        #   A string that uniquely identifies the job flow. This identifier is
        #   returned by RunJobFlow and can also be obtained from ListClusters.
        #   @return [String]

        # @!attribute [rw] steps
        #   A list of StepConfig to be executed by the job flow.
        #   @return [Array<Types::StepConfig>]

      end

      # The output for the AddJobFlowSteps operation.
      class AddJobFlowStepsOutput < Aws::Structure.new(
        :step_ids)

        # @!attribute [rw] step_ids
        #   The identifiers of the list of steps added to the job flow.
        #   @return [Array<String>]

      end

      # This input identifies a cluster and a list of tags to attach.
      # @note When making an API call, pass AddTagsInput
      #   data as a hash:
      #
      #       {
      #         resource_id: "ResourceId", # required
      #         tags: [ # required
      #           {
      #             key: "String",
      #             value: "String",
      #           },
      #         ],
      #       }
      class AddTagsInput < Aws::Structure.new(
        :resource_id,
        :tags)

        # @!attribute [rw] resource_id
        #   The Amazon EMR resource identifier to which tags will be added. This
        #   value must be a cluster identifier.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags to associate with a cluster and propagate to Amazon
        #   EC2 instances. Tags are user-defined key/value pairs that consist of
        #   a required key string with a maximum of 128 characters, and an
        #   optional value string with a maximum of 256 characters.
        #   @return [Array<Types::Tag>]

      end

      # This output indicates the result of adding tags to a resource.
      class AddTagsOutput < Aws::EmptyStructure; end

      # An application is any Amazon or third-party software that you can add
      # to the cluster. This structure contains a list of strings that
      # indicates the software to use with the cluster and accepts a user
      # argument list. Amazon EMR accepts and forwards the argument list to
      # the corresponding installation script as bootstrap action argument.
      # For more information, see [Launch a Job Flow on the MapR Distribution
      # for Hadoop][1]. Currently supported values are:
      #
      # * \"mapr-m3\" - launch the job flow using MapR M3 Edition.
      #
      # * \"mapr-m5\" - launch the job flow using MapR M5 Edition.
      #
      # * \"mapr\" with the user arguments specifying \"--edition,m3\" or
      #   \"--edition,m5\" - launch the job flow using MapR M3 or M5 Edition,
      #   respectively.
      #
      # <note markdown="1"> In Amazon EMR releases 4.0 and greater, the only accepted parameter is
      # the application name. To pass arguments to applications, you supply a
      # configuration for each application.
      #
      #  </note>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-mapr.html
      # @note When making an API call, pass Application
      #   data as a hash:
      #
      #       {
      #         name: "String",
      #         version: "String",
      #         args: ["String"],
      #         additional_info: {
      #           "String" => "String",
      #         },
      #       }
      class Application < Aws::Structure.new(
        :name,
        :version,
        :args,
        :additional_info)

        # @!attribute [rw] name
        #   The name of the application.
        #   @return [String]

        # @!attribute [rw] version
        #   The version of the application.
        #   @return [String]

        # @!attribute [rw] args
        #   Arguments for Amazon EMR to pass to the application.
        #   @return [Array<String>]

        # @!attribute [rw] additional_info
        #   This option is for advanced users only. This is meta information
        #   about third-party applications that third-party vendors use for
        #   testing purposes.
        #   @return [Hash<String,String>]

      end

      # Configuration of a bootstrap action.
      # @note When making an API call, pass BootstrapActionConfig
      #   data as a hash:
      #
      #       {
      #         name: "XmlStringMaxLen256", # required
      #         script_bootstrap_action: { # required
      #           path: "XmlString", # required
      #           args: ["XmlString"],
      #         },
      #       }
      class BootstrapActionConfig < Aws::Structure.new(
        :name,
        :script_bootstrap_action)

        # @!attribute [rw] name
        #   The name of the bootstrap action.
        #   @return [String]

        # @!attribute [rw] script_bootstrap_action
        #   The script run by the bootstrap action.
        #   @return [Types::ScriptBootstrapActionConfig]

      end

      # Reports the configuration of a bootstrap action in a job flow.
      class BootstrapActionDetail < Aws::Structure.new(
        :bootstrap_action_config)

        # @!attribute [rw] bootstrap_action_config
        #   A description of the bootstrap action.
        #   @return [Types::BootstrapActionConfig]

      end

      # The detailed description of the cluster.
      class Cluster < Aws::Structure.new(
        :id,
        :name,
        :status,
        :ec2_instance_attributes,
        :log_uri,
        :requested_ami_version,
        :running_ami_version,
        :release_label,
        :auto_terminate,
        :termination_protected,
        :visible_to_all_users,
        :applications,
        :tags,
        :service_role,
        :normalized_instance_hours,
        :master_public_dns_name,
        :configurations)

        # @!attribute [rw] id
        #   The unique identifier for the cluster.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the cluster.
        #   @return [String]

        # @!attribute [rw] status
        #   The current status details about the cluster.
        #   @return [Types::ClusterStatus]

        # @!attribute [rw] ec2_instance_attributes
        #   Provides information about the EC2 instances in a cluster grouped by
        #   category. For example, key name, subnet ID, IAM instance profile,
        #   and so on.
        #   @return [Types::Ec2InstanceAttributes]

        # @!attribute [rw] log_uri
        #   The path to the Amazon S3 location where logs for this cluster are
        #   stored.
        #   @return [String]

        # @!attribute [rw] requested_ami_version
        #   The AMI version requested for this cluster.
        #   @return [String]

        # @!attribute [rw] running_ami_version
        #   The AMI version running on this cluster.
        #   @return [String]

        # @!attribute [rw] release_label
        #   The release label for the Amazon EMR release. For Amazon EMR 3.x and
        #   2.x AMIs, use amiVersion instead instead of ReleaseLabel.
        #   @return [String]

        # @!attribute [rw] auto_terminate
        #   Specifies whether the cluster should terminate after completing all
        #   steps.
        #   @return [Boolean]

        # @!attribute [rw] termination_protected
        #   Indicates whether Amazon EMR will lock the cluster to prevent the
        #   EC2 instances from being terminated by an API call or user
        #   intervention, or in the event of a cluster error.
        #   @return [Boolean]

        # @!attribute [rw] visible_to_all_users
        #   Indicates whether the job flow is visible to all IAM users of the
        #   AWS account associated with the job flow. If this value is set to
        #   `true`, all IAM users of that AWS account can view and manage the
        #   job flow if they have the proper policy permissions set. If this
        #   value is `false`, only the IAM user that created the cluster can
        #   view and manage it. This value can be changed using the
        #   SetVisibleToAllUsers action.
        #   @return [Boolean]

        # @!attribute [rw] applications
        #   The applications installed on this cluster.
        #   @return [Array<Types::Application>]

        # @!attribute [rw] tags
        #   A list of tags associated with a cluster.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] service_role
        #   The IAM role that will be assumed by the Amazon EMR service to
        #   access AWS resources on your behalf.
        #   @return [String]

        # @!attribute [rw] normalized_instance_hours
        #   An approximation of the cost of the job flow, represented in
        #   m1.small/hours. This value is incremented one time for every hour an
        #   m1.small instance runs. Larger instances are weighted more, so an
        #   EC2 instance that is roughly four times more expensive would result
        #   in the normalized instance hours being incremented by four. This
        #   result is only an approximation and does not reflect the actual
        #   billing rate.
        #   @return [Integer]

        # @!attribute [rw] master_public_dns_name
        #   The public DNS name of the master EC2 instance.
        #   @return [String]

        # @!attribute [rw] configurations
        #   <note markdown="1"> Amazon EMR releases 4.x or later.
        #
        #    </note>
        #
        #   The list of Configurations supplied to the EMR cluster.
        #   @return [Array<Types::Configuration>]

      end

      # The reason that the cluster changed to its current state.
      class ClusterStateChangeReason < Aws::Structure.new(
        :code,
        :message)

        # @!attribute [rw] code
        #   The programmatic code for the state change reason.
        #   @return [String]

        # @!attribute [rw] message
        #   The descriptive message for the state change reason.
        #   @return [String]

      end

      # The detailed status of the cluster.
      class ClusterStatus < Aws::Structure.new(
        :state,
        :state_change_reason,
        :timeline)

        # @!attribute [rw] state
        #   The current state of the cluster.
        #   @return [String]

        # @!attribute [rw] state_change_reason
        #   The reason for the cluster status change.
        #   @return [Types::ClusterStateChangeReason]

        # @!attribute [rw] timeline
        #   A timeline that represents the status of a cluster over the lifetime
        #   of the cluster.
        #   @return [Types::ClusterTimeline]

      end

      # The summary description of the cluster.
      class ClusterSummary < Aws::Structure.new(
        :id,
        :name,
        :status,
        :normalized_instance_hours)

        # @!attribute [rw] id
        #   The unique identifier for the cluster.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the cluster.
        #   @return [String]

        # @!attribute [rw] status
        #   The details about the current status of the cluster.
        #   @return [Types::ClusterStatus]

        # @!attribute [rw] normalized_instance_hours
        #   An approximation of the cost of the job flow, represented in
        #   m1.small/hours. This value is incremented one time for every hour an
        #   m1.small instance runs. Larger instances are weighted more, so an
        #   EC2 instance that is roughly four times more expensive would result
        #   in the normalized instance hours being incremented by four. This
        #   result is only an approximation and does not reflect the actual
        #   billing rate.
        #   @return [Integer]

      end

      # Represents the timeline of the cluster\'s lifecycle.
      class ClusterTimeline < Aws::Structure.new(
        :creation_date_time,
        :ready_date_time,
        :end_date_time)

        # @!attribute [rw] creation_date_time
        #   The creation date and time of the cluster.
        #   @return [Time]

        # @!attribute [rw] ready_date_time
        #   The date and time when the cluster was ready to execute steps.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The date and time when the cluster was terminated.
        #   @return [Time]

      end

      # An entity describing an executable that runs on a cluster.
      class Command < Aws::Structure.new(
        :name,
        :script_path,
        :args)

        # @!attribute [rw] name
        #   The name of the command.
        #   @return [String]

        # @!attribute [rw] script_path
        #   The Amazon S3 location of the command script.
        #   @return [String]

        # @!attribute [rw] args
        #   Arguments for Amazon EMR to pass to the command for execution.
        #   @return [Array<String>]

      end

      # <note markdown="1"> Amazon EMR releases 4.x or later.
      #
      #  </note>
      #
      # Specifies a hardware and software configuration of the EMR cluster.
      # This includes configurations for applications and software bundled
      # with Amazon EMR. The Configuration object is a JSON object which is
      # defined by a classification and a set of properties. Configurations
      # can be nested, so a configuration may have its own Configuration
      # objects listed.
      # @note When making an API call, pass Configuration
      #   data as a hash:
      #
      #       {
      #         classification: "String",
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
      #         properties: {
      #           "String" => "String",
      #         },
      #       }
      class Configuration < Aws::Structure.new(
        :classification,
        :configurations,
        :properties)

        # @!attribute [rw] classification
        #   The classification of a configuration. For more information see,
        #   [Amazon EMR Configurations][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/API/EmrConfigurations.html
        #   @return [String]

        # @!attribute [rw] configurations
        #   A list of configurations you apply to this configuration object.
        #   @return [Array<Types::Configuration>]

        # @!attribute [rw] properties
        #   A set of properties supplied to the Configuration object.
        #   @return [Hash<String,String>]

      end

      # This input determines which cluster to describe.
      # @note When making an API call, pass DescribeClusterInput
      #   data as a hash:
      #
      #       {
      #         cluster_id: "ClusterId", # required
      #       }
      class DescribeClusterInput < Aws::Structure.new(
        :cluster_id)

        # @!attribute [rw] cluster_id
        #   The identifier of the cluster to describe.
        #   @return [String]

      end

      # This output contains the description of the cluster.
      class DescribeClusterOutput < Aws::Structure.new(
        :cluster)

        # @!attribute [rw] cluster
        #   This output contains the details for the requested cluster.
        #   @return [Types::Cluster]

      end

      # The input for the DescribeJobFlows operation.
      # @note When making an API call, pass DescribeJobFlowsInput
      #   data as a hash:
      #
      #       {
      #         created_after: Time.now,
      #         created_before: Time.now,
      #         job_flow_ids: ["XmlString"],
      #         job_flow_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, SHUTTING_DOWN, TERMINATED, COMPLETED, FAILED
      #       }
      class DescribeJobFlowsInput < Aws::Structure.new(
        :created_after,
        :created_before,
        :job_flow_ids,
        :job_flow_states)

        # @!attribute [rw] created_after
        #   Return only job flows created after this date and time.
        #   @return [Time]

        # @!attribute [rw] created_before
        #   Return only job flows created before this date and time.
        #   @return [Time]

        # @!attribute [rw] job_flow_ids
        #   Return only job flows whose job flow ID is contained in this list.
        #   @return [Array<String>]

        # @!attribute [rw] job_flow_states
        #   Return only job flows whose state is contained in this list.
        #   @return [Array<String>]

      end

      # The output for the DescribeJobFlows operation.
      class DescribeJobFlowsOutput < Aws::Structure.new(
        :job_flows)

        # @!attribute [rw] job_flows
        #   A list of job flows matching the parameters supplied.
        #   @return [Array<Types::JobFlowDetail>]

      end

      # This input determines which step to describe.
      # @note When making an API call, pass DescribeStepInput
      #   data as a hash:
      #
      #       {
      #         cluster_id: "ClusterId", # required
      #         step_id: "StepId", # required
      #       }
      class DescribeStepInput < Aws::Structure.new(
        :cluster_id,
        :step_id)

        # @!attribute [rw] cluster_id
        #   The identifier of the cluster with steps to describe.
        #   @return [String]

        # @!attribute [rw] step_id
        #   The identifier of the step to describe.
        #   @return [String]

      end

      # This output contains the description of the cluster step.
      class DescribeStepOutput < Aws::Structure.new(
        :step)

        # @!attribute [rw] step
        #   The step details for the requested step identifier.
        #   @return [Types::Step]

      end

      # Configuration of requested EBS block device associated with the
      # instance group.
      class EbsBlockDevice < Aws::Structure.new(
        :volume_specification,
        :device)

        # @!attribute [rw] volume_specification
        #   EBS volume specifications such as volume type, IOPS, and size(GiB)
        #   that will be requested for the EBS volume attached to an EC2
        #   instance in the cluster.
        #   @return [Types::VolumeSpecification]

        # @!attribute [rw] device
        #   The device name that is exposed to the instance, such as /dev/sdh.
        #   @return [String]

      end

      # Configuration of requested EBS block device associated with the
      # instance group with count of volumes that will be associated to every
      # instance.
      # @note When making an API call, pass EbsBlockDeviceConfig
      #   data as a hash:
      #
      #       {
      #         volume_specification: { # required
      #           volume_type: "String", # required
      #           iops: 1,
      #           size_in_gb: 1, # required
      #         },
      #         volumes_per_instance: 1,
      #       }
      class EbsBlockDeviceConfig < Aws::Structure.new(
        :volume_specification,
        :volumes_per_instance)

        # @!attribute [rw] volume_specification
        #   EBS volume specifications such as volume type, IOPS, and size(GiB)
        #   that will be requested for the EBS volume attached to an EC2
        #   instance in the cluster.
        #   @return [Types::VolumeSpecification]

        # @!attribute [rw] volumes_per_instance
        #   Number of EBS volumes with specific volume configuration, that will
        #   be associated with every instance in the instance group
        #   @return [Integer]

      end

      # @note When making an API call, pass EbsConfiguration
      #   data as a hash:
      #
      #       {
      #         ebs_block_device_configs: [
      #           {
      #             volume_specification: { # required
      #               volume_type: "String", # required
      #               iops: 1,
      #               size_in_gb: 1, # required
      #             },
      #             volumes_per_instance: 1,
      #           },
      #         ],
      #         ebs_optimized: false,
      #       }
      class EbsConfiguration < Aws::Structure.new(
        :ebs_block_device_configs,
        :ebs_optimized)

        # @!attribute [rw] ebs_block_device_configs
        #   @return [Array<Types::EbsBlockDeviceConfig>]

        # @!attribute [rw] ebs_optimized
        #   @return [Boolean]

      end

      # EBS block device that\'s attached to an EC2 instance.
      class EbsVolume < Aws::Structure.new(
        :device,
        :volume_id)

        # @!attribute [rw] device
        #   The device name that is exposed to the instance, such as /dev/sdh.
        #   @return [String]

        # @!attribute [rw] volume_id
        #   The volume identifier of the EBS volume.
        #   @return [String]

      end

      # Provides information about the EC2 instances in a cluster grouped by
      # category. For example, key name, subnet ID, IAM instance profile, and
      # so on.
      class Ec2InstanceAttributes < Aws::Structure.new(
        :ec2_key_name,
        :ec2_subnet_id,
        :ec2_availability_zone,
        :iam_instance_profile,
        :emr_managed_master_security_group,
        :emr_managed_slave_security_group,
        :service_access_security_group,
        :additional_master_security_groups,
        :additional_slave_security_groups)

        # @!attribute [rw] ec2_key_name
        #   The name of the Amazon EC2 key pair to use when connecting with SSH
        #   into the master node as a user named \"hadoop\".
        #   @return [String]

        # @!attribute [rw] ec2_subnet_id
        #   To launch the job flow in Amazon VPC, set this parameter to the
        #   identifier of the Amazon VPC subnet where you want the job flow to
        #   launch. If you do not specify this value, the job flow is launched
        #   in the normal AWS cloud, outside of a VPC.
        #
        #   Amazon VPC currently does not support cluster compute quadruple
        #   extra large (cc1.4xlarge) instances. Thus, you cannot specify the
        #   cc1.4xlarge instance type for nodes of a job flow launched in a VPC.
        #   @return [String]

        # @!attribute [rw] ec2_availability_zone
        #   The Availability Zone in which the cluster will run.
        #   @return [String]

        # @!attribute [rw] iam_instance_profile
        #   The IAM role that was specified when the job flow was launched. The
        #   EC2 instances of the job flow assume this role.
        #   @return [String]

        # @!attribute [rw] emr_managed_master_security_group
        #   The identifier of the Amazon EC2 security group for the master node.
        #   @return [String]

        # @!attribute [rw] emr_managed_slave_security_group
        #   The identifier of the Amazon EC2 security group for the slave nodes.
        #   @return [String]

        # @!attribute [rw] service_access_security_group
        #   The identifier of the Amazon EC2 security group for the Amazon EMR
        #   service to access clusters in VPC private subnets.
        #   @return [String]

        # @!attribute [rw] additional_master_security_groups
        #   A list of additional Amazon EC2 security group IDs for the master
        #   node.
        #   @return [Array<String>]

        # @!attribute [rw] additional_slave_security_groups
        #   A list of additional Amazon EC2 security group IDs for the slave
        #   nodes.
        #   @return [Array<String>]

      end

      # The details of the step failure. The service attempts to detect the
      # root cause for many common failures.
      class FailureDetails < Aws::Structure.new(
        :reason,
        :message,
        :log_file)

        # @!attribute [rw] reason
        #   The reason for the step failure. In the case where the service
        #   cannot successfully determine the root cause of the failure, it
        #   returns \"Unknown Error\" as a reason.
        #   @return [String]

        # @!attribute [rw] message
        #   The descriptive message including the error the EMR service has
        #   identified as the cause of step failure. This is text from an error
        #   log that describes the root cause of the failure.
        #   @return [String]

        # @!attribute [rw] log_file
        #   The path to the log file where the step failure root cause was
        #   originally recorded.
        #   @return [String]

      end

      # A job flow step consisting of a JAR file whose main function will be
      # executed. The main function submits a job for Hadoop to execute and
      # waits for the job to finish or fail.
      # @note When making an API call, pass HadoopJarStepConfig
      #   data as a hash:
      #
      #       {
      #         properties: [
      #           {
      #             key: "XmlString",
      #             value: "XmlString",
      #           },
      #         ],
      #         jar: "XmlString", # required
      #         main_class: "XmlString",
      #         args: ["XmlString"],
      #       }
      class HadoopJarStepConfig < Aws::Structure.new(
        :properties,
        :jar,
        :main_class,
        :args)

        # @!attribute [rw] properties
        #   A list of Java properties that are set when the step runs. You can
        #   use these properties to pass key value pairs to your main function.
        #   @return [Array<Types::KeyValue>]

        # @!attribute [rw] jar
        #   A path to a JAR file run during the step.
        #   @return [String]

        # @!attribute [rw] main_class
        #   The name of the main class in the specified Java file. If not
        #   specified, the JAR file should specify a Main-Class in its manifest
        #   file.
        #   @return [String]

        # @!attribute [rw] args
        #   A list of command line arguments passed to the JAR file\'s main
        #   function when executed.
        #   @return [Array<String>]

      end

      # A cluster step consisting of a JAR file whose main function will be
      # executed. The main function submits a job for Hadoop to execute and
      # waits for the job to finish or fail.
      class HadoopStepConfig < Aws::Structure.new(
        :jar,
        :properties,
        :main_class,
        :args)

        # @!attribute [rw] jar
        #   The path to the JAR file that runs during the step.
        #   @return [String]

        # @!attribute [rw] properties
        #   The list of Java properties that are set when the step runs. You can
        #   use these properties to pass key value pairs to your main function.
        #   @return [Hash<String,String>]

        # @!attribute [rw] main_class
        #   The name of the main class in the specified Java file. If not
        #   specified, the JAR file should specify a main class in its manifest
        #   file.
        #   @return [String]

        # @!attribute [rw] args
        #   The list of command line arguments to pass to the JAR file\'s main
        #   function for execution.
        #   @return [Array<String>]

      end

      # Represents an EC2 instance provisioned as part of cluster.
      class Instance < Aws::Structure.new(
        :id,
        :ec2_instance_id,
        :public_dns_name,
        :public_ip_address,
        :private_dns_name,
        :private_ip_address,
        :status,
        :instance_group_id,
        :ebs_volumes)

        # @!attribute [rw] id
        #   The unique identifier for the instance in Amazon EMR.
        #   @return [String]

        # @!attribute [rw] ec2_instance_id
        #   The unique identifier of the instance in Amazon EC2.
        #   @return [String]

        # @!attribute [rw] public_dns_name
        #   The public DNS name of the instance.
        #   @return [String]

        # @!attribute [rw] public_ip_address
        #   The public IP address of the instance.
        #   @return [String]

        # @!attribute [rw] private_dns_name
        #   The private DNS name of the instance.
        #   @return [String]

        # @!attribute [rw] private_ip_address
        #   The private IP address of the instance.
        #   @return [String]

        # @!attribute [rw] status
        #   The current status of the instance.
        #   @return [Types::InstanceStatus]

        # @!attribute [rw] instance_group_id
        #   The identifier of the instance group to which this instance belongs.
        #   @return [String]

        # @!attribute [rw] ebs_volumes
        #   The list of EBS volumes that are attached to this instance.
        #   @return [Array<Types::EbsVolume>]

      end

      # This entity represents an instance group, which is a group of
      # instances that have common purpose. For example, CORE instance group
      # is used for HDFS.
      class InstanceGroup < Aws::Structure.new(
        :id,
        :name,
        :market,
        :instance_group_type,
        :bid_price,
        :instance_type,
        :requested_instance_count,
        :running_instance_count,
        :status,
        :configurations,
        :ebs_block_devices,
        :ebs_optimized,
        :shrink_policy)

        # @!attribute [rw] id
        #   The identifier of the instance group.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the instance group.
        #   @return [String]

        # @!attribute [rw] market
        #   The marketplace to provision instances for this group. Valid values
        #   are ON\_DEMAND or SPOT.
        #   @return [String]

        # @!attribute [rw] instance_group_type
        #   The type of the instance group. Valid values are MASTER, CORE or
        #   TASK.
        #   @return [String]

        # @!attribute [rw] bid_price
        #   The bid price for each EC2 instance in the instance group when
        #   launching nodes as Spot Instances, expressed in USD.
        #   @return [String]

        # @!attribute [rw] instance_type
        #   The EC2 instance type for all instances in the instance group.
        #   @return [String]

        # @!attribute [rw] requested_instance_count
        #   The target number of instances for the instance group.
        #   @return [Integer]

        # @!attribute [rw] running_instance_count
        #   The number of instances currently running in this instance group.
        #   @return [Integer]

        # @!attribute [rw] status
        #   The current status of the instance group.
        #   @return [Types::InstanceGroupStatus]

        # @!attribute [rw] configurations
        #   <note markdown="1"> Amazon EMR releases 4.x or later.
        #
        #    </note>
        #
        #   The list of configurations supplied for an EMR cluster instance
        #   group. You can specify a separate configuration for each instance
        #   group (master, core, and task).
        #   @return [Array<Types::Configuration>]

        # @!attribute [rw] ebs_block_devices
        #   The EBS block devices that are mapped to this instance group.
        #   @return [Array<Types::EbsBlockDevice>]

        # @!attribute [rw] ebs_optimized
        #   If the instance group is EBS-optimized. An Amazon EBS-optimized
        #   instance uses an optimized configuration stack and provides
        #   additional, dedicated capacity for Amazon EBS I/O.
        #   @return [Boolean]

        # @!attribute [rw] shrink_policy
        #   Policy for customizing shrink operations.
        #   @return [Types::ShrinkPolicy]

      end

      # Configuration defining a new instance group.
      # @note When making an API call, pass InstanceGroupConfig
      #   data as a hash:
      #
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
      #       }
      class InstanceGroupConfig < Aws::Structure.new(
        :name,
        :market,
        :instance_role,
        :bid_price,
        :instance_type,
        :instance_count,
        :configurations,
        :ebs_configuration)

        # @!attribute [rw] name
        #   Friendly name given to the instance group.
        #   @return [String]

        # @!attribute [rw] market
        #   Market type of the Amazon EC2 instances used to create a cluster
        #   node.
        #   @return [String]

        # @!attribute [rw] instance_role
        #   The role of the instance group in the cluster.
        #   @return [String]

        # @!attribute [rw] bid_price
        #   Bid price for each Amazon EC2 instance in the instance group when
        #   launching nodes as Spot Instances, expressed in USD.
        #   @return [String]

        # @!attribute [rw] instance_type
        #   The Amazon EC2 instance type for all instances in the instance
        #   group.
        #   @return [String]

        # @!attribute [rw] instance_count
        #   Target number of instances for the instance group.
        #   @return [Integer]

        # @!attribute [rw] configurations
        #   <note markdown="1"> Amazon EMR releases 4.x or later.
        #
        #    </note>
        #
        #   The list of configurations supplied for an EMR cluster instance
        #   group. You can specify a separate configuration for each instance
        #   group (master, core, and task).
        #   @return [Array<Types::Configuration>]

        # @!attribute [rw] ebs_configuration
        #   EBS configurations that will be attached to each Amazon EC2 instance
        #   in the instance group.
        #   @return [Types::EbsConfiguration]

      end

      # Detailed information about an instance group.
      class InstanceGroupDetail < Aws::Structure.new(
        :instance_group_id,
        :name,
        :market,
        :instance_role,
        :bid_price,
        :instance_type,
        :instance_request_count,
        :instance_running_count,
        :state,
        :last_state_change_reason,
        :creation_date_time,
        :start_date_time,
        :ready_date_time,
        :end_date_time)

        # @!attribute [rw] instance_group_id
        #   Unique identifier for the instance group.
        #   @return [String]

        # @!attribute [rw] name
        #   Friendly name for the instance group.
        #   @return [String]

        # @!attribute [rw] market
        #   Market type of the Amazon EC2 instances used to create a cluster
        #   node.
        #   @return [String]

        # @!attribute [rw] instance_role
        #   Instance group role in the cluster
        #   @return [String]

        # @!attribute [rw] bid_price
        #   Bid price for EC2 Instances when launching nodes as Spot Instances,
        #   expressed in USD.
        #   @return [String]

        # @!attribute [rw] instance_type
        #   Amazon EC2 Instance type.
        #   @return [String]

        # @!attribute [rw] instance_request_count
        #   Target number of instances to run in the instance group.
        #   @return [Integer]

        # @!attribute [rw] instance_running_count
        #   Actual count of running instances.
        #   @return [Integer]

        # @!attribute [rw] state
        #   State of instance group. The following values are deprecated:
        #   STARTING, TERMINATED, and FAILED.
        #   @return [String]

        # @!attribute [rw] last_state_change_reason
        #   Details regarding the state of the instance group.
        #   @return [String]

        # @!attribute [rw] creation_date_time
        #   The date/time the instance group was created.
        #   @return [Time]

        # @!attribute [rw] start_date_time
        #   The date/time the instance group was started.
        #   @return [Time]

        # @!attribute [rw] ready_date_time
        #   The date/time the instance group was available to the cluster.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The date/time the instance group was terminated.
        #   @return [Time]

      end

      # Modify an instance group size.
      # @note When making an API call, pass InstanceGroupModifyConfig
      #   data as a hash:
      #
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
      #       }
      class InstanceGroupModifyConfig < Aws::Structure.new(
        :instance_group_id,
        :instance_count,
        :ec2_instance_ids_to_terminate,
        :shrink_policy)

        # @!attribute [rw] instance_group_id
        #   Unique ID of the instance group to expand or shrink.
        #   @return [String]

        # @!attribute [rw] instance_count
        #   Target size for the instance group.
        #   @return [Integer]

        # @!attribute [rw] ec2_instance_ids_to_terminate
        #   The EC2 InstanceIds to terminate. Once you terminate the instances,
        #   the instance group will not return to its original requested size.
        #   @return [Array<String>]

        # @!attribute [rw] shrink_policy
        #   Policy for customizing shrink operations.
        #   @return [Types::ShrinkPolicy]

      end

      # The status change reason details for the instance group.
      class InstanceGroupStateChangeReason < Aws::Structure.new(
        :code,
        :message)

        # @!attribute [rw] code
        #   The programmable code for the state change reason.
        #   @return [String]

        # @!attribute [rw] message
        #   The status change reason description.
        #   @return [String]

      end

      # The details of the instance group status.
      class InstanceGroupStatus < Aws::Structure.new(
        :state,
        :state_change_reason,
        :timeline)

        # @!attribute [rw] state
        #   The current state of the instance group.
        #   @return [String]

        # @!attribute [rw] state_change_reason
        #   The status change reason details for the instance group.
        #   @return [Types::InstanceGroupStateChangeReason]

        # @!attribute [rw] timeline
        #   The timeline of the instance group status over time.
        #   @return [Types::InstanceGroupTimeline]

      end

      # The timeline of the instance group lifecycle.
      class InstanceGroupTimeline < Aws::Structure.new(
        :creation_date_time,
        :ready_date_time,
        :end_date_time)

        # @!attribute [rw] creation_date_time
        #   The creation date and time of the instance group.
        #   @return [Time]

        # @!attribute [rw] ready_date_time
        #   The date and time when the instance group became ready to perform
        #   tasks.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The date and time when the instance group terminated.
        #   @return [Time]

      end

      # Custom policy for requesting termination protection or termination of
      # specific instances when shrinking an instance group.
      # @note When making an API call, pass InstanceResizePolicy
      #   data as a hash:
      #
      #       {
      #         instances_to_terminate: ["InstanceId"],
      #         instances_to_protect: ["InstanceId"],
      #         instance_termination_timeout: 1,
      #       }
      class InstanceResizePolicy < Aws::Structure.new(
        :instances_to_terminate,
        :instances_to_protect,
        :instance_termination_timeout)

        # @!attribute [rw] instances_to_terminate
        #   Specific list of instances to be terminated when shrinking an
        #   instance group.
        #   @return [Array<String>]

        # @!attribute [rw] instances_to_protect
        #   Specific list of instances to be protected when shrinking an
        #   instance group.
        #   @return [Array<String>]

        # @!attribute [rw] instance_termination_timeout
        #   Decommissioning timeout override for the specific list of instances
        #   to be terminated.
        #   @return [Integer]

      end

      # The details of the status change reason for the instance.
      class InstanceStateChangeReason < Aws::Structure.new(
        :code,
        :message)

        # @!attribute [rw] code
        #   The programmable code for the state change reason.
        #   @return [String]

        # @!attribute [rw] message
        #   The status change reason description.
        #   @return [String]

      end

      # The instance status details.
      class InstanceStatus < Aws::Structure.new(
        :state,
        :state_change_reason,
        :timeline)

        # @!attribute [rw] state
        #   The current state of the instance.
        #   @return [String]

        # @!attribute [rw] state_change_reason
        #   The details of the status change reason for the instance.
        #   @return [Types::InstanceStateChangeReason]

        # @!attribute [rw] timeline
        #   The timeline of the instance status over time.
        #   @return [Types::InstanceTimeline]

      end

      # The timeline of the instance lifecycle.
      class InstanceTimeline < Aws::Structure.new(
        :creation_date_time,
        :ready_date_time,
        :end_date_time)

        # @!attribute [rw] creation_date_time
        #   The creation date and time of the instance.
        #   @return [Time]

        # @!attribute [rw] ready_date_time
        #   The date and time when the instance was ready to perform tasks.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The date and time when the instance was terminated.
        #   @return [Time]

      end

      # A description of a job flow.
      class JobFlowDetail < Aws::Structure.new(
        :job_flow_id,
        :name,
        :log_uri,
        :ami_version,
        :execution_status_detail,
        :instances,
        :steps,
        :bootstrap_actions,
        :supported_products,
        :visible_to_all_users,
        :job_flow_role,
        :service_role)

        # @!attribute [rw] job_flow_id
        #   The job flow identifier.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the job flow.
        #   @return [String]

        # @!attribute [rw] log_uri
        #   The location in Amazon S3 where log files for the job are stored.
        #   @return [String]

        # @!attribute [rw] ami_version
        #   The version of the AMI used to initialize Amazon EC2 instances in
        #   the job flow. For a list of AMI versions currently supported by
        #   Amazon ElasticMapReduce, go to [AMI Versions Supported in Elastic
        #   MapReduce][1] in the *Amazon Elastic MapReduce Developer Guide.*
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/EnvironmentConfig_AMIVersion.html#ami-versions-supported
        #   @return [String]

        # @!attribute [rw] execution_status_detail
        #   Describes the execution status of the job flow.
        #   @return [Types::JobFlowExecutionStatusDetail]

        # @!attribute [rw] instances
        #   Describes the Amazon EC2 instances of the job flow.
        #   @return [Types::JobFlowInstancesDetail]

        # @!attribute [rw] steps
        #   A list of steps run by the job flow.
        #   @return [Array<Types::StepDetail>]

        # @!attribute [rw] bootstrap_actions
        #   A list of the bootstrap actions run by the job flow.
        #   @return [Array<Types::BootstrapActionDetail>]

        # @!attribute [rw] supported_products
        #   A list of strings set by third party software when the job flow is
        #   launched. If you are not using third party software to manage the
        #   job flow this value is empty.
        #   @return [Array<String>]

        # @!attribute [rw] visible_to_all_users
        #   Specifies whether the job flow is visible to all IAM users of the
        #   AWS account associated with the job flow. If this value is set to
        #   `true`, all IAM users of that AWS account can view and (if they have
        #   the proper policy permissions set) manage the job flow. If it is set
        #   to `false`, only the IAM user that created the job flow can view and
        #   manage it. This value can be changed using the SetVisibleToAllUsers
        #   action.
        #   @return [Boolean]

        # @!attribute [rw] job_flow_role
        #   The IAM role that was specified when the job flow was launched. The
        #   EC2 instances of the job flow assume this role.
        #   @return [String]

        # @!attribute [rw] service_role
        #   The IAM role that will be assumed by the Amazon EMR service to
        #   access AWS resources on your behalf.
        #   @return [String]

      end

      # Describes the status of the job flow.
      class JobFlowExecutionStatusDetail < Aws::Structure.new(
        :state,
        :creation_date_time,
        :start_date_time,
        :ready_date_time,
        :end_date_time,
        :last_state_change_reason)

        # @!attribute [rw] state
        #   The state of the job flow.
        #   @return [String]

        # @!attribute [rw] creation_date_time
        #   The creation date and time of the job flow.
        #   @return [Time]

        # @!attribute [rw] start_date_time
        #   The start date and time of the job flow.
        #   @return [Time]

        # @!attribute [rw] ready_date_time
        #   The date and time when the job flow was ready to start running
        #   bootstrap actions.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The completion date and time of the job flow.
        #   @return [Time]

        # @!attribute [rw] last_state_change_reason
        #   Description of the job flow last changed state.
        #   @return [String]

      end

      # A description of the Amazon EC2 instance running the job flow. A valid
      # JobFlowInstancesConfig must contain at least InstanceGroups, which is
      # the recommended configuration. However, a valid alternative is to have
      # MasterInstanceType, SlaveInstanceType, and InstanceCount (all three
      # must be present).
      # @note When making an API call, pass JobFlowInstancesConfig
      #   data as a hash:
      #
      #       {
      #         master_instance_type: "InstanceType",
      #         slave_instance_type: "InstanceType",
      #         instance_count: 1,
      #         instance_groups: [
      #           {
      #             name: "XmlStringMaxLen256",
      #             market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
      #             instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
      #             bid_price: "XmlStringMaxLen256",
      #             instance_type: "InstanceType", # required
      #             instance_count: 1, # required
      #             configurations: [
      #               {
      #                 classification: "String",
      #                 configurations: {
      #                   # recursive ConfigurationList
      #                 },
      #                 properties: {
      #                   "String" => "String",
      #                 },
      #               },
      #             ],
      #             ebs_configuration: {
      #               ebs_block_device_configs: [
      #                 {
      #                   volume_specification: { # required
      #                     volume_type: "String", # required
      #                     iops: 1,
      #                     size_in_gb: 1, # required
      #                   },
      #                   volumes_per_instance: 1,
      #                 },
      #               ],
      #               ebs_optimized: false,
      #             },
      #           },
      #         ],
      #         ec2_key_name: "XmlStringMaxLen256",
      #         placement: {
      #           availability_zone: "XmlString", # required
      #         },
      #         keep_job_flow_alive_when_no_steps: false,
      #         termination_protected: false,
      #         hadoop_version: "XmlStringMaxLen256",
      #         ec2_subnet_id: "XmlStringMaxLen256",
      #         emr_managed_master_security_group: "XmlStringMaxLen256",
      #         emr_managed_slave_security_group: "XmlStringMaxLen256",
      #         service_access_security_group: "XmlStringMaxLen256",
      #         additional_master_security_groups: ["XmlStringMaxLen256"],
      #         additional_slave_security_groups: ["XmlStringMaxLen256"],
      #       }
      class JobFlowInstancesConfig < Aws::Structure.new(
        :master_instance_type,
        :slave_instance_type,
        :instance_count,
        :instance_groups,
        :ec2_key_name,
        :placement,
        :keep_job_flow_alive_when_no_steps,
        :termination_protected,
        :hadoop_version,
        :ec2_subnet_id,
        :emr_managed_master_security_group,
        :emr_managed_slave_security_group,
        :service_access_security_group,
        :additional_master_security_groups,
        :additional_slave_security_groups)

        # @!attribute [rw] master_instance_type
        #   The EC2 instance type of the master node.
        #   @return [String]

        # @!attribute [rw] slave_instance_type
        #   The EC2 instance type of the slave nodes.
        #   @return [String]

        # @!attribute [rw] instance_count
        #   The number of Amazon EC2 instances used to execute the job flow.
        #   @return [Integer]

        # @!attribute [rw] instance_groups
        #   Configuration for the job flow\'s instance groups.
        #   @return [Array<Types::InstanceGroupConfig>]

        # @!attribute [rw] ec2_key_name
        #   The name of the Amazon EC2 key pair that can be used to ssh to the
        #   master node as the user called \"hadoop.\"
        #   @return [String]

        # @!attribute [rw] placement
        #   The Availability Zone the job flow will run in.
        #   @return [Types::PlacementType]

        # @!attribute [rw] keep_job_flow_alive_when_no_steps
        #   Specifies whether the job flow should be kept alive after completing
        #   all steps.
        #   @return [Boolean]

        # @!attribute [rw] termination_protected
        #   Specifies whether to lock the job flow to prevent the Amazon EC2
        #   instances from being terminated by API call, user intervention, or
        #   in the event of a job flow error.
        #   @return [Boolean]

        # @!attribute [rw] hadoop_version
        #   The Hadoop version for the job flow. Valid inputs are \"0.18\"
        #   (deprecated), \"0.20\" (deprecated), \"0.20.205\" (deprecated),
        #   \"1.0.3\", \"2.2.0\", or \"2.4.0\". If you do not set this value,
        #   the default of 0.18 is used, unless the AmiVersion parameter is set
        #   in the RunJobFlow call, in which case the default version of Hadoop
        #   for that AMI version is used.
        #   @return [String]

        # @!attribute [rw] ec2_subnet_id
        #   To launch the job flow in Amazon Virtual Private Cloud (Amazon VPC),
        #   set this parameter to the identifier of the Amazon VPC subnet where
        #   you want the job flow to launch. If you do not specify this value,
        #   the job flow is launched in the normal Amazon Web Services cloud,
        #   outside of an Amazon VPC.
        #
        #   Amazon VPC currently does not support cluster compute quadruple
        #   extra large (cc1.4xlarge) instances. Thus you cannot specify the
        #   cc1.4xlarge instance type for nodes of a job flow launched in a
        #   Amazon VPC.
        #   @return [String]

        # @!attribute [rw] emr_managed_master_security_group
        #   The identifier of the Amazon EC2 security group for the master node.
        #   @return [String]

        # @!attribute [rw] emr_managed_slave_security_group
        #   The identifier of the Amazon EC2 security group for the slave nodes.
        #   @return [String]

        # @!attribute [rw] service_access_security_group
        #   The identifier of the Amazon EC2 security group for the Amazon EMR
        #   service to access clusters in VPC private subnets.
        #   @return [String]

        # @!attribute [rw] additional_master_security_groups
        #   A list of additional Amazon EC2 security group IDs for the master
        #   node.
        #   @return [Array<String>]

        # @!attribute [rw] additional_slave_security_groups
        #   A list of additional Amazon EC2 security group IDs for the slave
        #   nodes.
        #   @return [Array<String>]

      end

      # Specify the type of Amazon EC2 instances to run the job flow on.
      class JobFlowInstancesDetail < Aws::Structure.new(
        :master_instance_type,
        :master_public_dns_name,
        :master_instance_id,
        :slave_instance_type,
        :instance_count,
        :instance_groups,
        :normalized_instance_hours,
        :ec2_key_name,
        :ec2_subnet_id,
        :placement,
        :keep_job_flow_alive_when_no_steps,
        :termination_protected,
        :hadoop_version)

        # @!attribute [rw] master_instance_type
        #   The Amazon EC2 master node instance type.
        #   @return [String]

        # @!attribute [rw] master_public_dns_name
        #   The DNS name of the master node.
        #   @return [String]

        # @!attribute [rw] master_instance_id
        #   The Amazon EC2 instance identifier of the master node.
        #   @return [String]

        # @!attribute [rw] slave_instance_type
        #   The Amazon EC2 slave node instance type.
        #   @return [String]

        # @!attribute [rw] instance_count
        #   The number of Amazon EC2 instances in the cluster. If the value is
        #   1, the same instance serves as both the master and slave node. If
        #   the value is greater than 1, one instance is the master node and all
        #   others are slave nodes.
        #   @return [Integer]

        # @!attribute [rw] instance_groups
        #   Details about the job flow\'s instance groups.
        #   @return [Array<Types::InstanceGroupDetail>]

        # @!attribute [rw] normalized_instance_hours
        #   An approximation of the cost of the job flow, represented in
        #   m1.small/hours. This value is incremented once for every hour an
        #   m1.small runs. Larger instances are weighted more, so an Amazon EC2
        #   instance that is roughly four times more expensive would result in
        #   the normalized instance hours being incremented by four. This result
        #   is only an approximation and does not reflect the actual billing
        #   rate.
        #   @return [Integer]

        # @!attribute [rw] ec2_key_name
        #   The name of an Amazon EC2 key pair that can be used to ssh to the
        #   master node of job flow.
        #   @return [String]

        # @!attribute [rw] ec2_subnet_id
        #   For job flows launched within Amazon Virtual Private Cloud, this
        #   value specifies the identifier of the subnet where the job flow was
        #   launched.
        #   @return [String]

        # @!attribute [rw] placement
        #   The Amazon EC2 Availability Zone for the job flow.
        #   @return [Types::PlacementType]

        # @!attribute [rw] keep_job_flow_alive_when_no_steps
        #   Specifies whether the job flow should terminate after completing all
        #   steps.
        #   @return [Boolean]

        # @!attribute [rw] termination_protected
        #   Specifies whether the Amazon EC2 instances in the cluster are
        #   protected from termination by API calls, user intervention, or in
        #   the event of a job flow error.
        #   @return [Boolean]

        # @!attribute [rw] hadoop_version
        #   The Hadoop version for the job flow.
        #   @return [String]

      end

      # A key value pair.
      # @note When making an API call, pass KeyValue
      #   data as a hash:
      #
      #       {
      #         key: "XmlString",
      #         value: "XmlString",
      #       }
      class KeyValue < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The unique identifier of a key value pair.
        #   @return [String]

        # @!attribute [rw] value
        #   The value part of the identified key.
        #   @return [String]

      end

      # This input determines which bootstrap actions to retrieve.
      # @note When making an API call, pass ListBootstrapActionsInput
      #   data as a hash:
      #
      #       {
      #         cluster_id: "ClusterId", # required
      #         marker: "Marker",
      #       }
      class ListBootstrapActionsInput < Aws::Structure.new(
        :cluster_id,
        :marker)

        # @!attribute [rw] cluster_id
        #   The cluster identifier for the bootstrap actions to list .
        #   @return [String]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve .
        #   @return [String]

      end

      # This output contains the boostrap actions detail .
      class ListBootstrapActionsOutput < Aws::Structure.new(
        :bootstrap_actions,
        :marker)

        # @!attribute [rw] bootstrap_actions
        #   The bootstrap actions associated with the cluster .
        #   @return [Array<Types::Command>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve .
        #   @return [String]

      end

      # This input determines how the ListClusters action filters the list of
      # clusters that it returns.
      # @note When making an API call, pass ListClustersInput
      #   data as a hash:
      #
      #       {
      #         created_after: Time.now,
      #         created_before: Time.now,
      #         cluster_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
      #         marker: "Marker",
      #       }
      class ListClustersInput < Aws::Structure.new(
        :created_after,
        :created_before,
        :cluster_states,
        :marker)

        # @!attribute [rw] created_after
        #   The creation date and time beginning value filter for listing
        #   clusters .
        #   @return [Time]

        # @!attribute [rw] created_before
        #   The creation date and time end value filter for listing clusters .
        #   @return [Time]

        # @!attribute [rw] cluster_states
        #   The cluster state filters to apply when listing clusters.
        #   @return [Array<String>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This contains a ClusterSummaryList with the cluster details; for
      # example, the cluster IDs, names, and status.
      class ListClustersOutput < Aws::Structure.new(
        :clusters,
        :marker)

        # @!attribute [rw] clusters
        #   The list of clusters for the account based on the given filters.
        #   @return [Array<Types::ClusterSummary>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This input determines which instance groups to retrieve.
      # @note When making an API call, pass ListInstanceGroupsInput
      #   data as a hash:
      #
      #       {
      #         cluster_id: "ClusterId", # required
      #         marker: "Marker",
      #       }
      class ListInstanceGroupsInput < Aws::Structure.new(
        :cluster_id,
        :marker)

        # @!attribute [rw] cluster_id
        #   The identifier of the cluster for which to list the instance groups.
        #   @return [String]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This input determines which instance groups to retrieve.
      class ListInstanceGroupsOutput < Aws::Structure.new(
        :instance_groups,
        :marker)

        # @!attribute [rw] instance_groups
        #   The list of instance groups for the cluster and given filters.
        #   @return [Array<Types::InstanceGroup>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This input determines which instances to list.
      # @note When making an API call, pass ListInstancesInput
      #   data as a hash:
      #
      #       {
      #         cluster_id: "ClusterId", # required
      #         instance_group_id: "InstanceGroupId",
      #         instance_group_types: ["MASTER"], # accepts MASTER, CORE, TASK
      #         instance_states: ["AWAITING_FULFILLMENT"], # accepts AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING, TERMINATED
      #         marker: "Marker",
      #       }
      class ListInstancesInput < Aws::Structure.new(
        :cluster_id,
        :instance_group_id,
        :instance_group_types,
        :instance_states,
        :marker)

        # @!attribute [rw] cluster_id
        #   The identifier of the cluster for which to list the instances.
        #   @return [String]

        # @!attribute [rw] instance_group_id
        #   The identifier of the instance group for which to list the
        #   instances.
        #   @return [String]

        # @!attribute [rw] instance_group_types
        #   The type of instance group for which to list the instances.
        #   @return [Array<String>]

        # @!attribute [rw] instance_states
        #   A list of instance states that will filter the instances returned
        #   with this request.
        #   @return [Array<String>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This output contains the list of instances.
      class ListInstancesOutput < Aws::Structure.new(
        :instances,
        :marker)

        # @!attribute [rw] instances
        #   The list of instances for the cluster and given filters.
        #   @return [Array<Types::Instance>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This input determines which steps to list.
      # @note When making an API call, pass ListStepsInput
      #   data as a hash:
      #
      #       {
      #         cluster_id: "ClusterId", # required
      #         step_states: ["PENDING"], # accepts PENDING, RUNNING, COMPLETED, CANCELLED, FAILED, INTERRUPTED
      #         step_ids: ["XmlString"],
      #         marker: "Marker",
      #       }
      class ListStepsInput < Aws::Structure.new(
        :cluster_id,
        :step_states,
        :step_ids,
        :marker)

        # @!attribute [rw] cluster_id
        #   The identifier of the cluster for which to list the steps.
        #   @return [String]

        # @!attribute [rw] step_states
        #   The filter to limit the step list based on certain states.
        #   @return [Array<String>]

        # @!attribute [rw] step_ids
        #   The filter to limit the step list based on the identifier of the
        #   steps.
        #   @return [Array<String>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # This output contains the list of steps returned in reverse order. This
      # means that the last step is the first element in the list.
      class ListStepsOutput < Aws::Structure.new(
        :steps,
        :marker)

        # @!attribute [rw] steps
        #   The filtered list of steps for the cluster.
        #   @return [Array<Types::StepSummary>]

        # @!attribute [rw] marker
        #   The pagination token that indicates the next set of results to
        #   retrieve.
        #   @return [String]

      end

      # Change the size of some instance groups.
      # @note When making an API call, pass ModifyInstanceGroupsInput
      #   data as a hash:
      #
      #       {
      #         instance_groups: [
      #           {
      #             instance_group_id: "XmlStringMaxLen256", # required
      #             instance_count: 1,
      #             ec2_instance_ids_to_terminate: ["InstanceId"],
      #             shrink_policy: {
      #               decommission_timeout: 1,
      #               instance_resize_policy: {
      #                 instances_to_terminate: ["InstanceId"],
      #                 instances_to_protect: ["InstanceId"],
      #                 instance_termination_timeout: 1,
      #               },
      #             },
      #           },
      #         ],
      #       }
      class ModifyInstanceGroupsInput < Aws::Structure.new(
        :instance_groups)

        # @!attribute [rw] instance_groups
        #   Instance groups to change.
        #   @return [Array<Types::InstanceGroupModifyConfig>]

      end

      # The Amazon EC2 location for the job flow.
      # @note When making an API call, pass PlacementType
      #   data as a hash:
      #
      #       {
      #         availability_zone: "XmlString", # required
      #       }
      class PlacementType < Aws::Structure.new(
        :availability_zone)

        # @!attribute [rw] availability_zone
        #   The Amazon EC2 Availability Zone for the job flow.
        #   @return [String]

      end

      # This input identifies a cluster and a list of tags to remove.
      # @note When making an API call, pass RemoveTagsInput
      #   data as a hash:
      #
      #       {
      #         resource_id: "ResourceId", # required
      #         tag_keys: ["String"], # required
      #       }
      class RemoveTagsInput < Aws::Structure.new(
        :resource_id,
        :tag_keys)

        # @!attribute [rw] resource_id
        #   The Amazon EMR resource identifier from which tags will be removed.
        #   This value must be a cluster identifier.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   A list of tag keys to remove from a resource.
        #   @return [Array<String>]

      end

      # This output indicates the result of removing tags from a resource.
      class RemoveTagsOutput < Aws::EmptyStructure; end

      # Input to the RunJobFlow operation.
      # @note When making an API call, pass RunJobFlowInput
      #   data as a hash:
      #
      #       {
      #         name: "XmlStringMaxLen256", # required
      #         log_uri: "XmlString",
      #         additional_info: "XmlString",
      #         ami_version: "XmlStringMaxLen256",
      #         release_label: "XmlStringMaxLen256",
      #         instances: { # required
      #           master_instance_type: "InstanceType",
      #           slave_instance_type: "InstanceType",
      #           instance_count: 1,
      #           instance_groups: [
      #             {
      #               name: "XmlStringMaxLen256",
      #               market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
      #               instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
      #               bid_price: "XmlStringMaxLen256",
      #               instance_type: "InstanceType", # required
      #               instance_count: 1, # required
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
      #             },
      #           ],
      #           ec2_key_name: "XmlStringMaxLen256",
      #           placement: {
      #             availability_zone: "XmlString", # required
      #           },
      #           keep_job_flow_alive_when_no_steps: false,
      #           termination_protected: false,
      #           hadoop_version: "XmlStringMaxLen256",
      #           ec2_subnet_id: "XmlStringMaxLen256",
      #           emr_managed_master_security_group: "XmlStringMaxLen256",
      #           emr_managed_slave_security_group: "XmlStringMaxLen256",
      #           service_access_security_group: "XmlStringMaxLen256",
      #           additional_master_security_groups: ["XmlStringMaxLen256"],
      #           additional_slave_security_groups: ["XmlStringMaxLen256"],
      #         },
      #         steps: [
      #           {
      #             name: "XmlStringMaxLen256", # required
      #             action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
      #             hadoop_jar_step: { # required
      #               properties: [
      #                 {
      #                   key: "XmlString",
      #                   value: "XmlString",
      #                 },
      #               ],
      #               jar: "XmlString", # required
      #               main_class: "XmlString",
      #               args: ["XmlString"],
      #             },
      #           },
      #         ],
      #         bootstrap_actions: [
      #           {
      #             name: "XmlStringMaxLen256", # required
      #             script_bootstrap_action: { # required
      #               path: "XmlString", # required
      #               args: ["XmlString"],
      #             },
      #           },
      #         ],
      #         supported_products: ["XmlStringMaxLen256"],
      #         new_supported_products: [
      #           {
      #             name: "XmlStringMaxLen256",
      #             args: ["XmlString"],
      #           },
      #         ],
      #         applications: [
      #           {
      #             name: "String",
      #             version: "String",
      #             args: ["String"],
      #             additional_info: {
      #               "String" => "String",
      #             },
      #           },
      #         ],
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
      #         visible_to_all_users: false,
      #         job_flow_role: "XmlString",
      #         service_role: "XmlString",
      #         tags: [
      #           {
      #             key: "String",
      #             value: "String",
      #           },
      #         ],
      #       }
      class RunJobFlowInput < Aws::Structure.new(
        :name,
        :log_uri,
        :additional_info,
        :ami_version,
        :release_label,
        :instances,
        :steps,
        :bootstrap_actions,
        :supported_products,
        :new_supported_products,
        :applications,
        :configurations,
        :visible_to_all_users,
        :job_flow_role,
        :service_role,
        :tags)

        # @!attribute [rw] name
        #   The name of the job flow.
        #   @return [String]

        # @!attribute [rw] log_uri
        #   The location in Amazon S3 to write the log files of the job flow. If
        #   a value is not provided, logs are not created.
        #   @return [String]

        # @!attribute [rw] additional_info
        #   A JSON string for selecting additional features.
        #   @return [String]

        # @!attribute [rw] ami_version
        #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
        #   greater, use ReleaseLabel.
        #
        #    </note>
        #
        #   The version of the Amazon Machine Image (AMI) to use when launching
        #   Amazon EC2 instances in the job flow. The following values are
        #   valid:
        #
        #   * The version number of the AMI to use, for example, \"2.0.\"
        #
        #   ^
        #
        #   If the AMI supports multiple versions of Hadoop (for example, AMI
        #   1.0 supports both Hadoop 0.18 and 0.20) you can use the
        #   JobFlowInstancesConfig `HadoopVersion` parameter to modify the
        #   version of Hadoop from the defaults shown above.
        #
        #   For details about the AMI versions currently supported by Amazon
        #   Elastic MapReduce, go to [AMI Versions Supported in Elastic
        #   MapReduce][1] in the *Amazon Elastic MapReduce Developer\'s Guide.*
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/EnvironmentConfig_AMIVersion.html#ami-versions-supported
        #   @return [String]

        # @!attribute [rw] release_label
        #   <note markdown="1"> Amazon EMR releases 4.x or later.
        #
        #    </note>
        #
        #   The release label for the Amazon EMR release. For Amazon EMR 3.x and
        #   2.x AMIs, use amiVersion instead instead of ReleaseLabel.
        #   @return [String]

        # @!attribute [rw] instances
        #   A specification of the number and type of Amazon EC2 instances on
        #   which to run the job flow.
        #   @return [Types::JobFlowInstancesConfig]

        # @!attribute [rw] steps
        #   A list of steps to be executed by the job flow.
        #   @return [Array<Types::StepConfig>]

        # @!attribute [rw] bootstrap_actions
        #   A list of bootstrap actions that will be run before Hadoop is
        #   started on the cluster nodes.
        #   @return [Array<Types::BootstrapActionConfig>]

        # @!attribute [rw] supported_products
        #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
        #   greater, use Applications.
        #
        #    </note>
        #
        #   A list of strings that indicates third-party software to use with
        #   the job flow. For more information, go to [Use Third Party
        #   Applications with Amazon EMR][1]. Currently supported values are:
        #
        #   * \"mapr-m3\" - launch the job flow using MapR M3 Edition.
        #
        #   * \"mapr-m5\" - launch the job flow using MapR M5 Edition.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-supported-products.html
        #   @return [Array<String>]

        # @!attribute [rw] new_supported_products
        #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
        #   greater, use Applications.
        #
        #    </note>
        #
        #   A list of strings that indicates third-party software to use with
        #   the job flow that accepts a user argument list. EMR accepts and
        #   forwards the argument list to the corresponding installation script
        #   as bootstrap action arguments. For more information, see [Launch a
        #   Job Flow on the MapR Distribution for Hadoop][1]. Currently
        #   supported values are:
        #
        #   * \"mapr-m3\" - launch the cluster using MapR M3 Edition.
        #
        #   * \"mapr-m5\" - launch the cluster using MapR M5 Edition.
        #
        #   * \"mapr\" with the user arguments specifying \"--edition,m3\" or
        #     \"--edition,m5\" - launch the job flow using MapR M3 or M5 Edition
        #     respectively.
        #
        #   * \"mapr-m7\" - launch the cluster using MapR M7 Edition.
        #
        #   * \"hunk\" - launch the cluster with the Hunk Big Data Analtics
        #     Platform.
        #
        #   * \"hue\"- launch the cluster with Hue installed.
        #
        #   * \"spark\" - launch the cluster with Apache Spark installed.
        #
        #   * \"ganglia\" - launch the cluster with the Ganglia Monitoring
        #     System installed.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-mapr.html
        #   @return [Array<Types::SupportedProductConfig>]

        # @!attribute [rw] applications
        #   <note markdown="1"> Amazon EMR releases 4.x or later.
        #
        #    </note>
        #
        #   A list of applications for the cluster. Valid values are:
        #   \"Hadoop\", \"Hive\", \"Mahout\", \"Pig\", and \"Spark.\" They are
        #   case insensitive.
        #   @return [Array<Types::Application>]

        # @!attribute [rw] configurations
        #   <note markdown="1"> Amazon EMR releases 4.x or later.
        #
        #    </note>
        #
        #   The list of configurations supplied for the EMR cluster you are
        #   creating.
        #   @return [Array<Types::Configuration>]

        # @!attribute [rw] visible_to_all_users
        #   Whether the job flow is visible to all IAM users of the AWS account
        #   associated with the job flow. If this value is set to `true`, all
        #   IAM users of that AWS account can view and (if they have the proper
        #   policy permissions set) manage the job flow. If it is set to
        #   `false`, only the IAM user that created the job flow can view and
        #   manage it.
        #   @return [Boolean]

        # @!attribute [rw] job_flow_role
        #   Also called instance profile and EC2 role. An IAM role for an EMR
        #   cluster. The EC2 instances of the cluster assume this role. The
        #   default role is `EMR_EC2_DefaultRole`. In order to use the default
        #   role, you must have already created it using the CLI or console.
        #   @return [String]

        # @!attribute [rw] service_role
        #   The IAM role that will be assumed by the Amazon EMR service to
        #   access AWS resources on your behalf.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags to associate with a cluster and propagate to Amazon
        #   EC2 instances.
        #   @return [Array<Types::Tag>]

      end

      # The result of the RunJobFlow operation.
      class RunJobFlowOutput < Aws::Structure.new(
        :job_flow_id)

        # @!attribute [rw] job_flow_id
        #   An unique identifier for the job flow.
        #   @return [String]

      end

      # Configuration of the script to run during a bootstrap action.
      # @note When making an API call, pass ScriptBootstrapActionConfig
      #   data as a hash:
      #
      #       {
      #         path: "XmlString", # required
      #         args: ["XmlString"],
      #       }
      class ScriptBootstrapActionConfig < Aws::Structure.new(
        :path,
        :args)

        # @!attribute [rw] path
        #   Location of the script to run during a bootstrap action. Can be
        #   either a location in Amazon S3 or on a local file system.
        #   @return [String]

        # @!attribute [rw] args
        #   A list of command line arguments to pass to the bootstrap action
        #   script.
        #   @return [Array<String>]

      end

      # The input argument to the TerminationProtection operation.
      # @note When making an API call, pass SetTerminationProtectionInput
      #   data as a hash:
      #
      #       {
      #         job_flow_ids: ["XmlString"], # required
      #         termination_protected: false, # required
      #       }
      class SetTerminationProtectionInput < Aws::Structure.new(
        :job_flow_ids,
        :termination_protected)

        # @!attribute [rw] job_flow_ids
        #   A list of strings that uniquely identify the job flows to protect.
        #   This identifier is returned by RunJobFlow and can also be obtained
        #   from DescribeJobFlows .
        #   @return [Array<String>]

        # @!attribute [rw] termination_protected
        #   A Boolean that indicates whether to protect the job flow and prevent
        #   the Amazon EC2 instances in the cluster from shutting down due to
        #   API calls, user intervention, or job-flow error.
        #   @return [Boolean]

      end

      # The input to the SetVisibleToAllUsers action.
      # @note When making an API call, pass SetVisibleToAllUsersInput
      #   data as a hash:
      #
      #       {
      #         job_flow_ids: ["XmlString"], # required
      #         visible_to_all_users: false, # required
      #       }
      class SetVisibleToAllUsersInput < Aws::Structure.new(
        :job_flow_ids,
        :visible_to_all_users)

        # @!attribute [rw] job_flow_ids
        #   Identifiers of the job flows to receive the new visibility setting.
        #   @return [Array<String>]

        # @!attribute [rw] visible_to_all_users
        #   Whether the specified job flows are visible to all IAM users of the
        #   AWS account associated with the job flow. If this value is set to
        #   True, all IAM users of that AWS account can view and, if they have
        #   the proper IAM policy permissions set, manage the job flows. If it
        #   is set to False, only the IAM user that created a job flow can view
        #   and manage it.
        #   @return [Boolean]

      end

      # Policy for customizing shrink operations. Allows configuration of
      # decommissioning timeout and targeted instance shrinking.
      # @note When making an API call, pass ShrinkPolicy
      #   data as a hash:
      #
      #       {
      #         decommission_timeout: 1,
      #         instance_resize_policy: {
      #           instances_to_terminate: ["InstanceId"],
      #           instances_to_protect: ["InstanceId"],
      #           instance_termination_timeout: 1,
      #         },
      #       }
      class ShrinkPolicy < Aws::Structure.new(
        :decommission_timeout,
        :instance_resize_policy)

        # @!attribute [rw] decommission_timeout
        #   The desired timeout for decommissioning an instance. Overrides the
        #   default YARN decommissioning timeout.
        #   @return [Integer]

        # @!attribute [rw] instance_resize_policy
        #   Custom policy for requesting termination protection or termination
        #   of specific instances when shrinking an instance group.
        #   @return [Types::InstanceResizePolicy]

      end

      # This represents a step in a cluster.
      class Step < Aws::Structure.new(
        :id,
        :name,
        :config,
        :action_on_failure,
        :status)

        # @!attribute [rw] id
        #   The identifier of the cluster step.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the cluster step.
        #   @return [String]

        # @!attribute [rw] config
        #   The Hadoop job configuration of the cluster step.
        #   @return [Types::HadoopStepConfig]

        # @!attribute [rw] action_on_failure
        #   This specifies what action to take when the cluster step fails.
        #   Possible values are TERMINATE\_CLUSTER, CANCEL\_AND\_WAIT, and
        #   CONTINUE.
        #   @return [String]

        # @!attribute [rw] status
        #   The current execution status details of the cluster step.
        #   @return [Types::StepStatus]

      end

      # Specification of a job flow step.
      # @note When making an API call, pass StepConfig
      #   data as a hash:
      #
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
      #       }
      class StepConfig < Aws::Structure.new(
        :name,
        :action_on_failure,
        :hadoop_jar_step)

        # @!attribute [rw] name
        #   The name of the job flow step.
        #   @return [String]

        # @!attribute [rw] action_on_failure
        #   The action to take if the job flow step fails.
        #   @return [String]

        # @!attribute [rw] hadoop_jar_step
        #   The JAR file used for the job flow step.
        #   @return [Types::HadoopJarStepConfig]

      end

      # Combines the execution state and configuration of a step.
      class StepDetail < Aws::Structure.new(
        :step_config,
        :execution_status_detail)

        # @!attribute [rw] step_config
        #   The step configuration.
        #   @return [Types::StepConfig]

        # @!attribute [rw] execution_status_detail
        #   The description of the step status.
        #   @return [Types::StepExecutionStatusDetail]

      end

      # The execution state of a step.
      class StepExecutionStatusDetail < Aws::Structure.new(
        :state,
        :creation_date_time,
        :start_date_time,
        :end_date_time,
        :last_state_change_reason)

        # @!attribute [rw] state
        #   The state of the job flow step.
        #   @return [String]

        # @!attribute [rw] creation_date_time
        #   The creation date and time of the step.
        #   @return [Time]

        # @!attribute [rw] start_date_time
        #   The start date and time of the step.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The completion date and time of the step.
        #   @return [Time]

        # @!attribute [rw] last_state_change_reason
        #   A description of the step\'s current state.
        #   @return [String]

      end

      # The details of the step state change reason.
      class StepStateChangeReason < Aws::Structure.new(
        :code,
        :message)

        # @!attribute [rw] code
        #   The programmable code for the state change reason. Note: Currently,
        #   the service provides no code for the state change.
        #   @return [String]

        # @!attribute [rw] message
        #   The descriptive message for the state change reason.
        #   @return [String]

      end

      # The execution status details of the cluster step.
      class StepStatus < Aws::Structure.new(
        :state,
        :state_change_reason,
        :failure_details,
        :timeline)

        # @!attribute [rw] state
        #   The execution state of the cluster step.
        #   @return [String]

        # @!attribute [rw] state_change_reason
        #   The reason for the step execution status change.
        #   @return [Types::StepStateChangeReason]

        # @!attribute [rw] failure_details
        #   The details for the step failure including reason, message, and log
        #   file path where the root cause was identified.
        #   @return [Types::FailureDetails]

        # @!attribute [rw] timeline
        #   The timeline of the cluster step status over time.
        #   @return [Types::StepTimeline]

      end

      # The summary of the cluster step.
      class StepSummary < Aws::Structure.new(
        :id,
        :name,
        :config,
        :action_on_failure,
        :status)

        # @!attribute [rw] id
        #   The identifier of the cluster step.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the cluster step.
        #   @return [String]

        # @!attribute [rw] config
        #   The Hadoop job configuration of the cluster step.
        #   @return [Types::HadoopStepConfig]

        # @!attribute [rw] action_on_failure
        #   This specifies what action to take when the cluster step fails.
        #   Possible values are TERMINATE\_CLUSTER, CANCEL\_AND\_WAIT, and
        #   CONTINUE.
        #   @return [String]

        # @!attribute [rw] status
        #   The current execution status details of the cluster step.
        #   @return [Types::StepStatus]

      end

      # The timeline of the cluster step lifecycle.
      class StepTimeline < Aws::Structure.new(
        :creation_date_time,
        :start_date_time,
        :end_date_time)

        # @!attribute [rw] creation_date_time
        #   The date and time when the cluster step was created.
        #   @return [Time]

        # @!attribute [rw] start_date_time
        #   The date and time when the cluster step execution started.
        #   @return [Time]

        # @!attribute [rw] end_date_time
        #   The date and time when the cluster step execution completed or
        #   failed.
        #   @return [Time]

      end

      # The list of supported product configurations which allow user-supplied
      # arguments. EMR accepts these arguments and forwards them to the
      # corresponding installation script as bootstrap action arguments.
      # @note When making an API call, pass SupportedProductConfig
      #   data as a hash:
      #
      #       {
      #         name: "XmlStringMaxLen256",
      #         args: ["XmlString"],
      #       }
      class SupportedProductConfig < Aws::Structure.new(
        :name,
        :args)

        # @!attribute [rw] name
        #   The name of the product configuration.
        #   @return [String]

        # @!attribute [rw] args
        #   The list of user-supplied arguments.
        #   @return [Array<String>]

      end

      # A key/value pair containing user-defined metadata that you can
      # associate with an Amazon EMR resource. Tags make it easier to
      # associate clusters in various ways, such as grouping clu\\ sters to
      # track your Amazon EMR resource allocation costs. For more information,
      # see [Tagging Amazon EMR Resources][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "String",
      #         value: "String",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   A user-defined key, which is the minimum required information for a
        #   valid tag. For more information, see [Tagging Amazon EMR
        #   Resources][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html
        #   @return [String]

        # @!attribute [rw] value
        #   A user-defined value, which is optional in a tag. For more
        #   information, see [Tagging Amazon EMR Resources][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html
        #   @return [String]

      end

      # Input to the TerminateJobFlows operation.
      # @note When making an API call, pass TerminateJobFlowsInput
      #   data as a hash:
      #
      #       {
      #         job_flow_ids: ["XmlString"], # required
      #       }
      class TerminateJobFlowsInput < Aws::Structure.new(
        :job_flow_ids)

        # @!attribute [rw] job_flow_ids
        #   A list of job flows to be shutdown.
        #   @return [Array<String>]

      end

      # EBS volume specifications such as volume type, IOPS, and size(GiB)
      # that will be requested for the EBS volume attached to an EC2 instance
      # in the cluster.
      # @note When making an API call, pass VolumeSpecification
      #   data as a hash:
      #
      #       {
      #         volume_type: "String", # required
      #         iops: 1,
      #         size_in_gb: 1, # required
      #       }
      class VolumeSpecification < Aws::Structure.new(
        :volume_type,
        :iops,
        :size_in_gb)

        # @!attribute [rw] volume_type
        #   The volume type. Volume types supported are gp2, io1, standard.
        #   @return [String]

        # @!attribute [rw] iops
        #   The number of I/O operations per second (IOPS) that the volume
        #   supports.
        #   @return [Integer]

        # @!attribute [rw] size_in_gb
        #   The volume size, in gibibytes (GiB). This can be a number from 1 -
        #   1024. If the volume type is EBS-optimized, the minimum value is 10.
        #   @return [Integer]

      end

    end
  end
end
