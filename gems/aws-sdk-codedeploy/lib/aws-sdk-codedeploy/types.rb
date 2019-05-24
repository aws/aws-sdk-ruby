# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeDeploy
  module Types

    # Represents the input of, and adds tags to, an on-premises instance
    # operation.
    #
    # @note When making an API call, you may pass AddTagsToOnPremisesInstancesInput
    #   data as a hash:
    #
    #       {
    #         tags: [ # required
    #           {
    #             key: "Key",
    #             value: "Value",
    #           },
    #         ],
    #         instance_names: ["InstanceName"], # required
    #       }
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs to add to the on-premises instances.
    #
    #   Keys and values are both required. Keys cannot be null or empty
    #   strings. Value-only tags are not allowed.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] instance_names
    #   The names of the on-premises instances to which to add tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AddTagsToOnPremisesInstancesInput AWS API Documentation
    #
    class AddTagsToOnPremisesInstancesInput < Struct.new(
      :tags,
      :instance_names)
      include Aws::Structure
    end

    # Information about an alarm.
    #
    # @note When making an API call, you may pass Alarm
    #   data as a hash:
    #
    #       {
    #         name: "AlarmName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the alarm. Maximum length is 255 characters. Each alarm
    #   name can be used only once in a list of alarms.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/Alarm AWS API Documentation
    #
    class Alarm < Struct.new(
      :name)
      include Aws::Structure
    end

    # Information about alarms associated with the deployment group.
    #
    # @note When making an API call, you may pass AlarmConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         ignore_poll_alarm_failure: false,
    #         alarms: [
    #           {
    #             name: "AlarmName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether the alarm configuration is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_poll_alarm_failure
    #   Indicates whether a deployment should continue if information about
    #   the current state of alarms cannot be retrieved from Amazon
    #   CloudWatch. The default value is false.
    #
    #   * true: The deployment proceeds even if alarm status information
    #     can't be retrieved from Amazon CloudWatch.
    #
    #   * false: The deployment stops if alarm status information can't be
    #     retrieved from Amazon CloudWatch.
    #   @return [Boolean]
    #
    # @!attribute [rw] alarms
    #   A list of alarms configured for the deployment group. A maximum of
    #   10 alarms can be added to a deployment group.
    #   @return [Array<Types::Alarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AlarmConfiguration AWS API Documentation
    #
    class AlarmConfiguration < Struct.new(
      :enabled,
      :ignore_poll_alarm_failure,
      :alarms)
      include Aws::Structure
    end

    # A revision for an AWS Lambda or Amazon ECS deployment that is a
    # YAML-formatted or JSON-formatted string. For AWS Lambda and Amazon ECS
    # deployments, the revision is the same as the AppSpec file. This method
    # replaces the deprecated `RawString` data type.
    #
    # @note When making an API call, you may pass AppSpecContent
    #   data as a hash:
    #
    #       {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256",
    #       }
    #
    # @!attribute [rw] content
    #   The YAML-formatted or JSON-formatted revision string.
    #
    #   For an AWS Lambda deployment, the content includes a Lambda function
    #   name, the alias for its original version, and the alias for its
    #   replacement version. The deployment shifts traffic from the original
    #   version of the Lambda function to the replacement version.
    #
    #   For an Amazon ECS deployment, the content includes the task name,
    #   information about the load balancer that serves traffic to the
    #   container, and more.
    #
    #   For both types of deployments, the content can specify Lambda
    #   functions that run at specified hooks, such as `BeforeInstall`,
    #   during a deployment.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA256 hash value of the revision content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AppSpecContent AWS API Documentation
    #
    class AppSpecContent < Struct.new(
      :content,
      :sha256)
      include Aws::Structure
    end

    # Information about an application.
    #
    # @!attribute [rw] application_id
    #   The application ID.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] linked_to_git_hub
    #   True if the user has authenticated with GitHub for the specified
    #   application. Otherwise, false.
    #   @return [Boolean]
    #
    # @!attribute [rw] git_hub_account_name
    #   The name for a connection to a GitHub account.
    #   @return [String]
    #
    # @!attribute [rw] compute_platform
    #   The destination platform type for deployment of the application
    #   (`Lambda` or `Server`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ApplicationInfo AWS API Documentation
    #
    class ApplicationInfo < Struct.new(
      :application_id,
      :application_name,
      :create_time,
      :linked_to_git_hub,
      :git_hub_account_name,
      :compute_platform)
      include Aws::Structure
    end

    # Information about a configuration for automatically rolling back to a
    # previous version of an application revision when a deployment is not
    # completed successfully.
    #
    # @note When making an API call, you may pass AutoRollbackConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether a defined automatic rollback configuration is
    #   currently enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] events
    #   The event type or types that trigger a rollback.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AutoRollbackConfiguration AWS API Documentation
    #
    class AutoRollbackConfiguration < Struct.new(
      :enabled,
      :events)
      include Aws::Structure
    end

    # Information about an Auto Scaling group.
    #
    # @!attribute [rw] name
    #   The Auto Scaling group name.
    #   @return [String]
    #
    # @!attribute [rw] hook
    #   An Auto Scaling lifecycle event hook name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AutoScalingGroup AWS API Documentation
    #
    class AutoScalingGroup < Struct.new(
      :name,
      :hook)
      include Aws::Structure
    end

    # Represents the input of a BatchGetApplicationRevisions operation.
    #
    # @note When making an API call, you may pass BatchGetApplicationRevisionsInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         revisions: [ # required
    #           {
    #             revision_type: "S3", # accepts S3, GitHub, String, AppSpecContent
    #             s3_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #               bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #               version: "VersionId",
    #               e_tag: "ETag",
    #             },
    #             git_hub_location: {
    #               repository: "Repository",
    #               commit_id: "CommitId",
    #             },
    #             string: {
    #               content: "RawStringContent",
    #               sha256: "RawStringSha256",
    #             },
    #             app_spec_content: {
    #               content: "RawStringContent",
    #               sha256: "RawStringSha256",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application about which to get
    #   revision information.
    #   @return [String]
    #
    # @!attribute [rw] revisions
    #   An array of `RevisionLocation` objects that specify information to
    #   get about the application revisions, including type and location.
    #   The maximum number of `RevisionLocation` objects you can specify is
    #   25.
    #   @return [Array<Types::RevisionLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationRevisionsInput AWS API Documentation
    #
    class BatchGetApplicationRevisionsInput < Struct.new(
      :application_name,
      :revisions)
      include Aws::Structure
    end

    # Represents the output of a BatchGetApplicationRevisions operation.
    #
    # @!attribute [rw] application_name
    #   The name of the application that corresponds to the revisions.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Information about errors that might have occurred during the API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] revisions
    #   Additional information about the revisions, including the type and
    #   location.
    #   @return [Array<Types::RevisionInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationRevisionsOutput AWS API Documentation
    #
    class BatchGetApplicationRevisionsOutput < Struct.new(
      :application_name,
      :error_message,
      :revisions)
      include Aws::Structure
    end

    # Represents the input of a BatchGetApplications operation.
    #
    # @note When making an API call, you may pass BatchGetApplicationsInput
    #   data as a hash:
    #
    #       {
    #         application_names: ["ApplicationName"], # required
    #       }
    #
    # @!attribute [rw] application_names
    #   A list of application names separated by spaces. The maximum number
    #   of application names you can specify is 25.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationsInput AWS API Documentation
    #
    class BatchGetApplicationsInput < Struct.new(
      :application_names)
      include Aws::Structure
    end

    # Represents the output of a BatchGetApplications operation.
    #
    # @!attribute [rw] applications_info
    #   Information about the applications.
    #   @return [Array<Types::ApplicationInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationsOutput AWS API Documentation
    #
    class BatchGetApplicationsOutput < Struct.new(
      :applications_info)
      include Aws::Structure
    end

    # Represents the input of a BatchGetDeploymentGroups operation.
    #
    # @note When making an API call, you may pass BatchGetDeploymentGroupsInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         deployment_group_names: ["DeploymentGroupName"], # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the
    #   applicable IAM user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_names
    #   The names of the deployment groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentGroupsInput AWS API Documentation
    #
    class BatchGetDeploymentGroupsInput < Struct.new(
      :application_name,
      :deployment_group_names)
      include Aws::Structure
    end

    # Represents the output of a BatchGetDeploymentGroups operation.
    #
    # @!attribute [rw] deployment_groups_info
    #   Information about the deployment groups.
    #   @return [Array<Types::DeploymentGroupInfo>]
    #
    # @!attribute [rw] error_message
    #   Information about errors that might have occurred during the API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentGroupsOutput AWS API Documentation
    #
    class BatchGetDeploymentGroupsOutput < Struct.new(
      :deployment_groups_info,
      :error_message)
      include Aws::Structure
    end

    # Represents the input of a BatchGetDeploymentInstances operation.
    #
    # @note When making an API call, you may pass BatchGetDeploymentInstancesInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId", # required
    #         instance_ids: ["InstanceId"], # required
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   The unique IDs of instances used in the deployment. The maximum
    #   number of instance IDs you can specify is 25.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentInstancesInput AWS API Documentation
    #
    class BatchGetDeploymentInstancesInput < Struct.new(
      :deployment_id,
      :instance_ids)
      include Aws::Structure
    end

    # Represents the output of a BatchGetDeploymentInstances operation.
    #
    # @!attribute [rw] instances_summary
    #   Information about the instance.
    #   @return [Array<Types::InstanceSummary>]
    #
    # @!attribute [rw] error_message
    #   Information about errors that might have occurred during the API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentInstancesOutput AWS API Documentation
    #
    class BatchGetDeploymentInstancesOutput < Struct.new(
      :instances_summary,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetDeploymentTargetsInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #         target_ids: ["TargetId"],
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_ids
    #   The unique IDs of the deployment targets. The compute platform of
    #   the deployment determines the type of the targets and their formats.
    #   The maximum number of deployment target IDs you can specify is 25.
    #
    #   * For deployments that use the EC2/On-premises compute platform, the
    #     target IDs are EC2 or on-premises instances IDs, and their target
    #     type is `instanceTarget`.
    #
    #   * For deployments that use the AWS Lambda compute platform, the
    #     target IDs are the names of Lambda functions, and their target
    #     type is `instanceTarget`.
    #
    #   * For deployments that use the Amazon ECS compute platform, the
    #     target IDs are pairs of Amazon ECS clusters and services specified
    #     using the format `<clustername>:<servicename>`. Their target type
    #     is `ecsTarget`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentTargetsInput AWS API Documentation
    #
    class BatchGetDeploymentTargetsInput < Struct.new(
      :deployment_id,
      :target_ids)
      include Aws::Structure
    end

    # @!attribute [rw] deployment_targets
    #   A list of target objects for a deployment. Each target object
    #   contains details about the target, such as its status and lifecycle
    #   events. The type of the target objects depends on the deployment'
    #   compute platform.
    #
    #   * **EC2/On-premises**\: Each target object is an EC2 or on-premises
    #     instance.
    #
    #   * **AWS Lambda**\: The target object is a specific version of an AWS
    #     Lambda function.
    #
    #   * **Amazon ECS**\: The target object is an Amazon ECS service.
    #   @return [Array<Types::DeploymentTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentTargetsOutput AWS API Documentation
    #
    class BatchGetDeploymentTargetsOutput < Struct.new(
      :deployment_targets)
      include Aws::Structure
    end

    # Represents the input of a BatchGetDeployments operation.
    #
    # @note When making an API call, you may pass BatchGetDeploymentsInput
    #   data as a hash:
    #
    #       {
    #         deployment_ids: ["DeploymentId"], # required
    #       }
    #
    # @!attribute [rw] deployment_ids
    #   A list of deployment IDs, separated by spaces. The maximum number of
    #   deployment IDs you can specify is 25.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentsInput AWS API Documentation
    #
    class BatchGetDeploymentsInput < Struct.new(
      :deployment_ids)
      include Aws::Structure
    end

    # Represents the output of a BatchGetDeployments operation.
    #
    # @!attribute [rw] deployments_info
    #   Information about the deployments.
    #   @return [Array<Types::DeploymentInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentsOutput AWS API Documentation
    #
    class BatchGetDeploymentsOutput < Struct.new(
      :deployments_info)
      include Aws::Structure
    end

    # Represents the input of a BatchGetOnPremisesInstances operation.
    #
    # @note When making an API call, you may pass BatchGetOnPremisesInstancesInput
    #   data as a hash:
    #
    #       {
    #         instance_names: ["InstanceName"], # required
    #       }
    #
    # @!attribute [rw] instance_names
    #   The names of the on-premises instances about which to get
    #   information. The maximum number of instance names you can specify is
    #   25.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetOnPremisesInstancesInput AWS API Documentation
    #
    class BatchGetOnPremisesInstancesInput < Struct.new(
      :instance_names)
      include Aws::Structure
    end

    # Represents the output of a BatchGetOnPremisesInstances operation.
    #
    # @!attribute [rw] instance_infos
    #   Information about the on-premises instances.
    #   @return [Array<Types::InstanceInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetOnPremisesInstancesOutput AWS API Documentation
    #
    class BatchGetOnPremisesInstancesOutput < Struct.new(
      :instance_infos)
      include Aws::Structure
    end

    # Information about blue/green deployment options for a deployment
    # group.
    #
    # @note When making an API call, you may pass BlueGreenDeploymentConfiguration
    #   data as a hash:
    #
    #       {
    #         terminate_blue_instances_on_deployment_success: {
    #           action: "TERMINATE", # accepts TERMINATE, KEEP_ALIVE
    #           termination_wait_time_in_minutes: 1,
    #         },
    #         deployment_ready_option: {
    #           action_on_timeout: "CONTINUE_DEPLOYMENT", # accepts CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT
    #           wait_time_in_minutes: 1,
    #         },
    #         green_fleet_provisioning_option: {
    #           action: "DISCOVER_EXISTING", # accepts DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP
    #         },
    #       }
    #
    # @!attribute [rw] terminate_blue_instances_on_deployment_success
    #   Information about whether to terminate instances in the original
    #   fleet during a blue/green deployment.
    #   @return [Types::BlueInstanceTerminationOption]
    #
    # @!attribute [rw] deployment_ready_option
    #   Information about the action to take when newly provisioned
    #   instances are ready to receive traffic in a blue/green deployment.
    #   @return [Types::DeploymentReadyOption]
    #
    # @!attribute [rw] green_fleet_provisioning_option
    #   Information about how instances are provisioned for a replacement
    #   environment in a blue/green deployment.
    #   @return [Types::GreenFleetProvisioningOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BlueGreenDeploymentConfiguration AWS API Documentation
    #
    class BlueGreenDeploymentConfiguration < Struct.new(
      :terminate_blue_instances_on_deployment_success,
      :deployment_ready_option,
      :green_fleet_provisioning_option)
      include Aws::Structure
    end

    # Information about whether instances in the original environment are
    # terminated when a blue/green deployment is successful.
    #
    # @note When making an API call, you may pass BlueInstanceTerminationOption
    #   data as a hash:
    #
    #       {
    #         action: "TERMINATE", # accepts TERMINATE, KEEP_ALIVE
    #         termination_wait_time_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] action
    #   The action to take on instances in the original environment after a
    #   successful blue/green deployment.
    #
    #   * TERMINATE: Instances are terminated after a specified wait time.
    #
    #   * KEEP\_ALIVE: Instances are left running after they are
    #     deregistered from the load balancer and removed from the
    #     deployment group.
    #   @return [String]
    #
    # @!attribute [rw] termination_wait_time_in_minutes
    #   The number of minutes to wait after a successful blue/green
    #   deployment before terminating instances from the original
    #   environment. The maximum setting is 2880 minutes (2 days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BlueInstanceTerminationOption AWS API Documentation
    #
    class BlueInstanceTerminationOption < Struct.new(
      :action,
      :termination_wait_time_in_minutes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ContinueDeploymentInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #         deployment_wait_type: "READY_WAIT", # accepts READY_WAIT, TERMINATION_WAIT
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a blue/green deployment for which you want to start
    #   rerouting traffic to the replacement environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_wait_type
    #   The status of the deployment's waiting period. READY\_WAIT
    #   indicates the deployment is ready to start shifting traffic.
    #   TERMINATION\_WAIT indicates the traffic is shifted, but the original
    #   target is not terminated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ContinueDeploymentInput AWS API Documentation
    #
    class ContinueDeploymentInput < Struct.new(
      :deployment_id,
      :deployment_wait_type)
      include Aws::Structure
    end

    # Represents the input of a CreateApplication operation.
    #
    # @note When making an API call, you may pass CreateApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         compute_platform: "Server", # accepts Server, Lambda, ECS
    #         tags: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application. This name must be unique with the
    #   applicable IAM user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] compute_platform
    #   The destination platform type for the deployment (`Lambda`,
    #   `Server`, or `ECS`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to CodeDeploy applications to help you
    #   organize and categorize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateApplicationInput AWS API Documentation
    #
    class CreateApplicationInput < Struct.new(
      :application_name,
      :compute_platform,
      :tags)
      include Aws::Structure
    end

    # Represents the output of a CreateApplication operation.
    #
    # @!attribute [rw] application_id
    #   A unique application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateApplicationOutput AWS API Documentation
    #
    class CreateApplicationOutput < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # Represents the input of a CreateDeploymentConfig operation.
    #
    # @note When making an API call, you may pass CreateDeploymentConfigInput
    #   data as a hash:
    #
    #       {
    #         deployment_config_name: "DeploymentConfigName", # required
    #         minimum_healthy_hosts: {
    #           value: 1,
    #           type: "HOST_COUNT", # accepts HOST_COUNT, FLEET_PERCENT
    #         },
    #         traffic_routing_config: {
    #           type: "TimeBasedCanary", # accepts TimeBasedCanary, TimeBasedLinear, AllAtOnce
    #           time_based_canary: {
    #             canary_percentage: 1,
    #             canary_interval: 1,
    #           },
    #           time_based_linear: {
    #             linear_percentage: 1,
    #             linear_interval: 1,
    #           },
    #         },
    #         compute_platform: "Server", # accepts Server, Lambda, ECS
    #       }
    #
    # @!attribute [rw] deployment_config_name
    #   The name of the deployment configuration to create.
    #   @return [String]
    #
    # @!attribute [rw] minimum_healthy_hosts
    #   The minimum number of healthy instances that should be available at
    #   any time during the deployment. There are two parameters expected in
    #   the input: type and value.
    #
    #   The type parameter takes either of the following values:
    #
    #   * HOST\_COUNT: The value parameter represents the minimum number of
    #     healthy instances as an absolute value.
    #
    #   * FLEET\_PERCENT: The value parameter represents the minimum number
    #     of healthy instances as a percentage of the total number of
    #     instances in the deployment. If you specify FLEET\_PERCENT, at the
    #     start of the deployment, AWS CodeDeploy converts the percentage to
    #     the equivalent number of instance and rounds up fractional
    #     instances.
    #
    #   The value parameter takes an integer.
    #
    #   For example, to set a minimum of 95% healthy instance, specify a
    #   type of FLEET\_PERCENT and a value of 95.
    #   @return [Types::MinimumHealthyHosts]
    #
    # @!attribute [rw] traffic_routing_config
    #   The configuration that specifies how the deployment traffic is
    #   routed.
    #   @return [Types::TrafficRoutingConfig]
    #
    # @!attribute [rw] compute_platform
    #   The destination platform type for the deployment (`Lambda`,
    #   `Server`, or `ECS`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentConfigInput AWS API Documentation
    #
    class CreateDeploymentConfigInput < Struct.new(
      :deployment_config_name,
      :minimum_healthy_hosts,
      :traffic_routing_config,
      :compute_platform)
      include Aws::Structure
    end

    # Represents the output of a CreateDeploymentConfig operation.
    #
    # @!attribute [rw] deployment_config_id
    #   A unique deployment configuration ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentConfigOutput AWS API Documentation
    #
    class CreateDeploymentConfigOutput < Struct.new(
      :deployment_config_id)
      include Aws::Structure
    end

    # Represents the input of a CreateDeploymentGroup operation.
    #
    # @note When making an API call, you may pass CreateDeploymentGroupInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         deployment_group_name: "DeploymentGroupName", # required
    #         deployment_config_name: "DeploymentConfigName",
    #         ec2_tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #         on_premises_instance_tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #         auto_scaling_groups: ["AutoScalingGroupName"],
    #         service_role_arn: "Role", # required
    #         trigger_configurations: [
    #           {
    #             trigger_name: "TriggerName",
    #             trigger_target_arn: "TriggerTargetArn",
    #             trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
    #           },
    #         ],
    #         alarm_configuration: {
    #           enabled: false,
    #           ignore_poll_alarm_failure: false,
    #           alarms: [
    #             {
    #               name: "AlarmName",
    #             },
    #           ],
    #         },
    #         auto_rollback_configuration: {
    #           enabled: false,
    #           events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #         },
    #         deployment_style: {
    #           deployment_type: "IN_PLACE", # accepts IN_PLACE, BLUE_GREEN
    #           deployment_option: "WITH_TRAFFIC_CONTROL", # accepts WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL
    #         },
    #         blue_green_deployment_configuration: {
    #           terminate_blue_instances_on_deployment_success: {
    #             action: "TERMINATE", # accepts TERMINATE, KEEP_ALIVE
    #             termination_wait_time_in_minutes: 1,
    #           },
    #           deployment_ready_option: {
    #             action_on_timeout: "CONTINUE_DEPLOYMENT", # accepts CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT
    #             wait_time_in_minutes: 1,
    #           },
    #           green_fleet_provisioning_option: {
    #             action: "DISCOVER_EXISTING", # accepts DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP
    #           },
    #         },
    #         load_balancer_info: {
    #           elb_info_list: [
    #             {
    #               name: "ELBName",
    #             },
    #           ],
    #           target_group_info_list: [
    #             {
    #               name: "TargetGroupName",
    #             },
    #           ],
    #           target_group_pair_info_list: [
    #             {
    #               target_groups: [
    #                 {
    #                   name: "TargetGroupName",
    #                 },
    #               ],
    #               prod_traffic_route: {
    #                 listener_arns: ["ListenerArn"],
    #               },
    #               test_traffic_route: {
    #                 listener_arns: ["ListenerArn"],
    #               },
    #             },
    #           ],
    #         },
    #         ec2_tag_set: {
    #           ec2_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #               },
    #             ],
    #           ],
    #         },
    #         ecs_services: [
    #           {
    #             service_name: "ECSServiceName",
    #             cluster_name: "ECSClusterName",
    #           },
    #         ],
    #         on_premises_tag_set: {
    #           on_premises_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #               },
    #             ],
    #           ],
    #         },
    #         tags: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The name of a new deployment group for the specified application.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config_name
    #   If specified, the deployment configuration name can be either one of
    #   the predefined configurations provided with AWS CodeDeploy or a
    #   custom deployment configuration that you create by calling the
    #   create deployment configuration operation.
    #
    #   CodeDeployDefault.OneAtATime is the default deployment
    #   configuration. It is used if a configuration isn't specified for
    #   the deployment or deployment group.
    #
    #   For more information about the predefined deployment configurations
    #   in AWS CodeDeploy, see [Working with Deployment Groups in AWS
    #   CodeDeploy][1] in the AWS CodeDeploy User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html
    #   @return [String]
    #
    # @!attribute [rw] ec2_tag_filters
    #   The Amazon EC2 tags on which to filter. The deployment group
    #   includes EC2 instances with any of the specified tags. Cannot be
    #   used in the same call as ec2TagSet.
    #   @return [Array<Types::EC2TagFilter>]
    #
    # @!attribute [rw] on_premises_instance_tag_filters
    #   The on-premises instance tags on which to filter. The deployment
    #   group includes on-premises instances with any of the specified tags.
    #   Cannot be used in the same call as OnPremisesTagSet.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] auto_scaling_groups
    #   A list of associated Amazon EC2 Auto Scaling groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role_arn
    #   A service role ARN that allows AWS CodeDeploy to act on the user's
    #   behalf when interacting with AWS services.
    #   @return [String]
    #
    # @!attribute [rw] trigger_configurations
    #   Information about triggers to create when the deployment group is
    #   created. For examples, see [Create a Trigger for an AWS CodeDeploy
    #   Event][1] in the AWS CodeDeploy User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html
    #   @return [Array<Types::TriggerConfig>]
    #
    # @!attribute [rw] alarm_configuration
    #   Information to add about Amazon CloudWatch alarms when the
    #   deployment group is created.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] auto_rollback_configuration
    #   Configuration information for an automatic rollback that is added
    #   when a deployment group is created.
    #   @return [Types::AutoRollbackConfiguration]
    #
    # @!attribute [rw] deployment_style
    #   Information about the type of deployment, in-place or blue/green,
    #   that you want to run and whether to route deployment traffic behind
    #   a load balancer.
    #   @return [Types::DeploymentStyle]
    #
    # @!attribute [rw] blue_green_deployment_configuration
    #   Information about blue/green deployment options for a deployment
    #   group.
    #   @return [Types::BlueGreenDeploymentConfiguration]
    #
    # @!attribute [rw] load_balancer_info
    #   Information about the load balancer used in a deployment.
    #   @return [Types::LoadBalancerInfo]
    #
    # @!attribute [rw] ec2_tag_set
    #   Information about groups of tags applied to EC2 instances. The
    #   deployment group includes only EC2 instances identified by all the
    #   tag groups. Cannot be used in the same call as ec2TagFilters.
    #   @return [Types::EC2TagSet]
    #
    # @!attribute [rw] ecs_services
    #   The target Amazon ECS services in the deployment group. This applies
    #   only to deployment groups that use the Amazon ECS compute platform.
    #   A target Amazon ECS service is specified as an Amazon ECS cluster
    #   and service name pair using the format
    #   `<clustername>:<servicename>`.
    #   @return [Array<Types::ECSService>]
    #
    # @!attribute [rw] on_premises_tag_set
    #   Information about groups of tags applied to on-premises instances.
    #   The deployment group includes only on-premises instances identified
    #   by all of the tag groups. Cannot be used in the same call as
    #   onPremisesInstanceTagFilters.
    #   @return [Types::OnPremisesTagSet]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to CodeDeploy deployment groups to help
    #   you organize and categorize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentGroupInput AWS API Documentation
    #
    class CreateDeploymentGroupInput < Struct.new(
      :application_name,
      :deployment_group_name,
      :deployment_config_name,
      :ec2_tag_filters,
      :on_premises_instance_tag_filters,
      :auto_scaling_groups,
      :service_role_arn,
      :trigger_configurations,
      :alarm_configuration,
      :auto_rollback_configuration,
      :deployment_style,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :ec2_tag_set,
      :ecs_services,
      :on_premises_tag_set,
      :tags)
      include Aws::Structure
    end

    # Represents the output of a CreateDeploymentGroup operation.
    #
    # @!attribute [rw] deployment_group_id
    #   A unique deployment group ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentGroupOutput AWS API Documentation
    #
    class CreateDeploymentGroupOutput < Struct.new(
      :deployment_group_id)
      include Aws::Structure
    end

    # Represents the input of a CreateDeployment operation.
    #
    # @note When making an API call, you may pass CreateDeploymentInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         deployment_group_name: "DeploymentGroupName",
    #         revision: {
    #           revision_type: "S3", # accepts S3, GitHub, String, AppSpecContent
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #             version: "VersionId",
    #             e_tag: "ETag",
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId",
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256",
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256",
    #           },
    #         },
    #         deployment_config_name: "DeploymentConfigName",
    #         description: "Description",
    #         ignore_application_stop_failures: false,
    #         target_instances: {
    #           tag_filters: [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #             },
    #           ],
    #           auto_scaling_groups: ["AutoScalingGroupName"],
    #           ec2_tag_set: {
    #             ec2_tag_set_list: [
    #               [
    #                 {
    #                   key: "Key",
    #                   value: "Value",
    #                   type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #                 },
    #               ],
    #             ],
    #           },
    #         },
    #         auto_rollback_configuration: {
    #           enabled: false,
    #           events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #         },
    #         update_outdated_instances_only: false,
    #         file_exists_behavior: "DISALLOW", # accepts DISALLOW, OVERWRITE, RETAIN
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The name of the deployment group.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The type and location of the revision to deploy.
    #   @return [Types::RevisionLocation]
    #
    # @!attribute [rw] deployment_config_name
    #   The name of a deployment configuration associated with the IAM user
    #   or AWS account.
    #
    #   If not specified, the value configured in the deployment group is
    #   used as the default. If the deployment group does not have a
    #   deployment configuration associated with it,
    #   CodeDeployDefault.OneAtATime is used by default.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A comment about the deployment.
    #   @return [String]
    #
    # @!attribute [rw] ignore_application_stop_failures
    #   If true, then if an ApplicationStop, BeforeBlockTraffic, or
    #   AfterBlockTraffic deployment lifecycle event to an instance fails,
    #   then the deployment continues to the next deployment lifecycle
    #   event. For example, if ApplicationStop fails, the deployment
    #   continues with DownloadBundle. If BeforeBlockTraffic fails, the
    #   deployment continues with BlockTraffic. If AfterBlockTraffic fails,
    #   the deployment continues with ApplicationStop.
    #
    #   If false or not specified, then if a lifecycle event fails during a
    #   deployment to an instance, that deployment fails. If deployment to
    #   that instance is part of an overall deployment and the number of
    #   healthy hosts is not less than the minimum number of healthy hosts,
    #   then a deployment to the next instance is attempted.
    #
    #   During a deployment, the AWS CodeDeploy agent runs the scripts
    #   specified for ApplicationStop, BeforeBlockTraffic, and
    #   AfterBlockTraffic in the AppSpec file from the previous successful
    #   deployment. (All other scripts are run from the AppSpec file in the
    #   current deployment.) If one of these scripts contains an error and
    #   does not run successfully, the deployment can fail.
    #
    #   If the cause of the failure is a script from the last successful
    #   deployment that will never run successfully, create a new deployment
    #   and use `ignoreApplicationStopFailures` to specify that the
    #   ApplicationStop, BeforeBlockTraffic, and AfterBlockTraffic failures
    #   should be ignored.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_instances
    #   Information about the instances that belong to the replacement
    #   environment in a blue/green deployment.
    #   @return [Types::TargetInstances]
    #
    # @!attribute [rw] auto_rollback_configuration
    #   Configuration information for an automatic rollback that is added
    #   when a deployment is created.
    #   @return [Types::AutoRollbackConfiguration]
    #
    # @!attribute [rw] update_outdated_instances_only
    #   Indicates whether to deploy to all instances or only to instances
    #   that are not running the latest application revision.
    #   @return [Boolean]
    #
    # @!attribute [rw] file_exists_behavior
    #   Information about how AWS CodeDeploy handles files that already
    #   exist in a deployment target location but weren't part of the
    #   previous successful deployment.
    #
    #   The fileExistsBehavior parameter takes any of the following values:
    #
    #   * DISALLOW: The deployment fails. This is also the default behavior
    #     if no option is specified.
    #
    #   * OVERWRITE: The version of the file from the application revision
    #     currently being deployed replaces the version already on the
    #     instance.
    #
    #   * RETAIN: The version of the file already on the instance is kept
    #     and used as part of the new deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentInput AWS API Documentation
    #
    class CreateDeploymentInput < Struct.new(
      :application_name,
      :deployment_group_name,
      :revision,
      :deployment_config_name,
      :description,
      :ignore_application_stop_failures,
      :target_instances,
      :auto_rollback_configuration,
      :update_outdated_instances_only,
      :file_exists_behavior)
      include Aws::Structure
    end

    # Represents the output of a CreateDeployment operation.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentOutput AWS API Documentation
    #
    class CreateDeploymentOutput < Struct.new(
      :deployment_id)
      include Aws::Structure
    end

    # Represents the input of a DeleteApplication operation.
    #
    # @note When making an API call, you may pass DeleteApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteApplicationInput AWS API Documentation
    #
    class DeleteApplicationInput < Struct.new(
      :application_name)
      include Aws::Structure
    end

    # Represents the input of a DeleteDeploymentConfig operation.
    #
    # @note When making an API call, you may pass DeleteDeploymentConfigInput
    #   data as a hash:
    #
    #       {
    #         deployment_config_name: "DeploymentConfigName", # required
    #       }
    #
    # @!attribute [rw] deployment_config_name
    #   The name of a deployment configuration associated with the IAM user
    #   or AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentConfigInput AWS API Documentation
    #
    class DeleteDeploymentConfigInput < Struct.new(
      :deployment_config_name)
      include Aws::Structure
    end

    # Represents the input of a DeleteDeploymentGroup operation.
    #
    # @note When making an API call, you may pass DeleteDeploymentGroupInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         deployment_group_name: "DeploymentGroupName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The name of a deployment group for the specified application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentGroupInput AWS API Documentation
    #
    class DeleteDeploymentGroupInput < Struct.new(
      :application_name,
      :deployment_group_name)
      include Aws::Structure
    end

    # Represents the output of a DeleteDeploymentGroup operation.
    #
    # @!attribute [rw] hooks_not_cleaned_up
    #   If the output contains no data, and the corresponding deployment
    #   group contained at least one Auto Scaling group, AWS CodeDeploy
    #   successfully removed all corresponding Auto Scaling lifecycle event
    #   hooks from the Amazon EC2 instances in the Auto Scaling group. If
    #   the output contains data, AWS CodeDeploy could not remove some Auto
    #   Scaling lifecycle event hooks from the Amazon EC2 instances in the
    #   Auto Scaling group.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentGroupOutput AWS API Documentation
    #
    class DeleteDeploymentGroupOutput < Struct.new(
      :hooks_not_cleaned_up)
      include Aws::Structure
    end

    # Represents the input of a DeleteGitHubAccount operation.
    #
    # @note When making an API call, you may pass DeleteGitHubAccountTokenInput
    #   data as a hash:
    #
    #       {
    #         token_name: "GitHubAccountTokenName",
    #       }
    #
    # @!attribute [rw] token_name
    #   The name of the GitHub account connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteGitHubAccountTokenInput AWS API Documentation
    #
    class DeleteGitHubAccountTokenInput < Struct.new(
      :token_name)
      include Aws::Structure
    end

    # Represents the output of a DeleteGitHubAccountToken operation.
    #
    # @!attribute [rw] token_name
    #   The name of the GitHub account connection that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteGitHubAccountTokenOutput AWS API Documentation
    #
    class DeleteGitHubAccountTokenOutput < Struct.new(
      :token_name)
      include Aws::Structure
    end

    # Information about a deployment configuration.
    #
    # @!attribute [rw] deployment_config_id
    #   The deployment configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config_name
    #   The deployment configuration name.
    #   @return [String]
    #
    # @!attribute [rw] minimum_healthy_hosts
    #   Information about the number or percentage of minimum healthy
    #   instance.
    #   @return [Types::MinimumHealthyHosts]
    #
    # @!attribute [rw] create_time
    #   The time at which the deployment configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] compute_platform
    #   The destination platform type for the deployment (`Lambda`,
    #   `Server`, or `ECS`).
    #   @return [String]
    #
    # @!attribute [rw] traffic_routing_config
    #   The configuration that specifies how the deployment traffic is
    #   routed. Only deployments with a Lambda compute platform can specify
    #   this.
    #   @return [Types::TrafficRoutingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentConfigInfo AWS API Documentation
    #
    class DeploymentConfigInfo < Struct.new(
      :deployment_config_id,
      :deployment_config_name,
      :minimum_healthy_hosts,
      :create_time,
      :compute_platform,
      :traffic_routing_config)
      include Aws::Structure
    end

    # Information about a deployment group.
    #
    # @!attribute [rw] application_name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_id
    #   The deployment group ID.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The deployment group name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config_name
    #   The deployment configuration name.
    #   @return [String]
    #
    # @!attribute [rw] ec2_tag_filters
    #   The Amazon EC2 tags on which to filter. The deployment group
    #   includes EC2 instances with any of the specified tags.
    #   @return [Array<Types::EC2TagFilter>]
    #
    # @!attribute [rw] on_premises_instance_tag_filters
    #   The on-premises instance tags on which to filter. The deployment
    #   group includes on-premises instances with any of the specified tags.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] auto_scaling_groups
    #   A list of associated Auto Scaling groups.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @!attribute [rw] service_role_arn
    #   A service role Amazon Resource Name (ARN) that grants CodeDeploy
    #   permission to make calls to AWS services on your behalf. For more
    #   information, see [Create a Service Role for AWS CodeDeploy][1] in
    #   the *AWS CodeDeploy User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] target_revision
    #   Information about the deployment group's target revision, including
    #   type and location.
    #   @return [Types::RevisionLocation]
    #
    # @!attribute [rw] trigger_configurations
    #   Information about triggers associated with the deployment group.
    #   @return [Array<Types::TriggerConfig>]
    #
    # @!attribute [rw] alarm_configuration
    #   A list of alarms associated with the deployment group.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] auto_rollback_configuration
    #   Information about the automatic rollback configuration associated
    #   with the deployment group.
    #   @return [Types::AutoRollbackConfiguration]
    #
    # @!attribute [rw] deployment_style
    #   Information about the type of deployment, either in-place or
    #   blue/green, you want to run and whether to route deployment traffic
    #   behind a load balancer.
    #   @return [Types::DeploymentStyle]
    #
    # @!attribute [rw] blue_green_deployment_configuration
    #   Information about blue/green deployment options for a deployment
    #   group.
    #   @return [Types::BlueGreenDeploymentConfiguration]
    #
    # @!attribute [rw] load_balancer_info
    #   Information about the load balancer to use in a deployment.
    #   @return [Types::LoadBalancerInfo]
    #
    # @!attribute [rw] last_successful_deployment
    #   Information about the most recent successful deployment to the
    #   deployment group.
    #   @return [Types::LastDeploymentInfo]
    #
    # @!attribute [rw] last_attempted_deployment
    #   Information about the most recent attempted deployment to the
    #   deployment group.
    #   @return [Types::LastDeploymentInfo]
    #
    # @!attribute [rw] ec2_tag_set
    #   Information about groups of tags applied to an EC2 instance. The
    #   deployment group includes only EC2 instances identified by all of
    #   the tag groups. Cannot be used in the same call as ec2TagFilters.
    #   @return [Types::EC2TagSet]
    #
    # @!attribute [rw] on_premises_tag_set
    #   Information about groups of tags applied to an on-premises instance.
    #   The deployment group includes only on-premises instances identified
    #   by all the tag groups. Cannot be used in the same call as
    #   onPremisesInstanceTagFilters.
    #   @return [Types::OnPremisesTagSet]
    #
    # @!attribute [rw] compute_platform
    #   The destination platform type for the deployment (`Lambda`,
    #   `Server`, or `ECS`).
    #   @return [String]
    #
    # @!attribute [rw] ecs_services
    #   The target Amazon ECS services in the deployment group. This applies
    #   only to deployment groups that use the Amazon ECS compute platform.
    #   A target Amazon ECS service is specified as an Amazon ECS cluster
    #   and service name pair using the format
    #   `<clustername>:<servicename>`.
    #   @return [Array<Types::ECSService>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentGroupInfo AWS API Documentation
    #
    class DeploymentGroupInfo < Struct.new(
      :application_name,
      :deployment_group_id,
      :deployment_group_name,
      :deployment_config_name,
      :ec2_tag_filters,
      :on_premises_instance_tag_filters,
      :auto_scaling_groups,
      :service_role_arn,
      :target_revision,
      :trigger_configurations,
      :alarm_configuration,
      :auto_rollback_configuration,
      :deployment_style,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :last_successful_deployment,
      :last_attempted_deployment,
      :ec2_tag_set,
      :on_premises_tag_set,
      :compute_platform,
      :ecs_services)
      include Aws::Structure
    end

    # Information about a deployment.
    #
    # @!attribute [rw] application_name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The deployment group name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config_name
    #   The deployment configuration name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] previous_revision
    #   Information about the application revision that was deployed to the
    #   deployment group before the most recent successful deployment.
    #   @return [Types::RevisionLocation]
    #
    # @!attribute [rw] revision
    #   Information about the location of stored application artifacts and
    #   the service from which to retrieve them.
    #   @return [Types::RevisionLocation]
    #
    # @!attribute [rw] status
    #   The current state of the deployment as a whole.
    #   @return [String]
    #
    # @!attribute [rw] error_information
    #   Information about any error associated with this deployment.
    #   @return [Types::ErrorInformation]
    #
    # @!attribute [rw] create_time
    #   A timestamp that indicates when the deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   A timestamp that indicates when the deployment was deployed to the
    #   deployment group.
    #
    #   In some cases, the reported value of the start time might be later
    #   than the complete time. This is due to differences in the clock
    #   settings of backend servers that participate in the deployment
    #   process.
    #   @return [Time]
    #
    # @!attribute [rw] complete_time
    #   A timestamp that indicates when the deployment was complete.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_overview
    #   A summary of the deployment status of the instances in the
    #   deployment.
    #   @return [Types::DeploymentOverview]
    #
    # @!attribute [rw] description
    #   A comment about the deployment.
    #   @return [String]
    #
    # @!attribute [rw] creator
    #   The means by which the deployment was created:
    #
    #   * user: A user created the deployment.
    #
    #   * autoscaling: Amazon EC2 Auto Scaling created the deployment.
    #
    #   * codeDeployRollback: A rollback process created the deployment.
    #   @return [String]
    #
    # @!attribute [rw] ignore_application_stop_failures
    #   If true, then if an `ApplicationStop`, `BeforeBlockTraffic`, or
    #   `AfterBlockTraffic` deployment lifecycle event to an instance fails,
    #   then the deployment continues to the next deployment lifecycle
    #   event. For example, if `ApplicationStop` fails, the deployment
    #   continues with DownloadBundle. If `BeforeBlockTraffic` fails, the
    #   deployment continues with `BlockTraffic`. If `AfterBlockTraffic`
    #   fails, the deployment continues with `ApplicationStop`.
    #
    #   If false or not specified, then if a lifecycle event fails during a
    #   deployment to an instance, that deployment fails. If deployment to
    #   that instance is part of an overall deployment and the number of
    #   healthy hosts is not less than the minimum number of healthy hosts,
    #   then a deployment to the next instance is attempted.
    #
    #   During a deployment, the AWS CodeDeploy agent runs the scripts
    #   specified for `ApplicationStop`, `BeforeBlockTraffic`, and
    #   `AfterBlockTraffic` in the AppSpec file from the previous successful
    #   deployment. (All other scripts are run from the AppSpec file in the
    #   current deployment.) If one of these scripts contains an error and
    #   does not run successfully, the deployment can fail.
    #
    #   If the cause of the failure is a script from the last successful
    #   deployment that will never run successfully, create a new deployment
    #   and use `ignoreApplicationStopFailures` to specify that the
    #   `ApplicationStop`, `BeforeBlockTraffic`, and `AfterBlockTraffic`
    #   failures should be ignored.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_rollback_configuration
    #   Information about the automatic rollback configuration associated
    #   with the deployment.
    #   @return [Types::AutoRollbackConfiguration]
    #
    # @!attribute [rw] update_outdated_instances_only
    #   Indicates whether only instances that are not running the latest
    #   application revision are to be deployed to.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback_info
    #   Information about a deployment rollback.
    #   @return [Types::RollbackInfo]
    #
    # @!attribute [rw] deployment_style
    #   Information about the type of deployment, either in-place or
    #   blue/green, you want to run and whether to route deployment traffic
    #   behind a load balancer.
    #   @return [Types::DeploymentStyle]
    #
    # @!attribute [rw] target_instances
    #   Information about the instances that belong to the replacement
    #   environment in a blue/green deployment.
    #   @return [Types::TargetInstances]
    #
    # @!attribute [rw] instance_termination_wait_time_started
    #   Indicates whether the wait period set for the termination of
    #   instances in the original environment has started. Status is
    #   'false' if the KEEP\_ALIVE option is specified. Otherwise,
    #   'true' as soon as the termination wait period starts.
    #   @return [Boolean]
    #
    # @!attribute [rw] blue_green_deployment_configuration
    #   Information about blue/green deployment options for this deployment.
    #   @return [Types::BlueGreenDeploymentConfiguration]
    #
    # @!attribute [rw] load_balancer_info
    #   Information about the load balancer used in the deployment.
    #   @return [Types::LoadBalancerInfo]
    #
    # @!attribute [rw] additional_deployment_status_info
    #   Provides information about the results of a deployment, such as
    #   whether instances in the original environment in a blue/green
    #   deployment were not terminated.
    #   @return [String]
    #
    # @!attribute [rw] file_exists_behavior
    #   Information about how AWS CodeDeploy handles files that already
    #   exist in a deployment target location but weren't part of the
    #   previous successful deployment.
    #
    #   * DISALLOW: The deployment fails. This is also the default behavior
    #     if no option is specified.
    #
    #   * OVERWRITE: The version of the file from the application revision
    #     currently being deployed replaces the version already on the
    #     instance.
    #
    #   * RETAIN: The version of the file already on the instance is kept
    #     and used as part of the new deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_messages
    #   Messages that contain information about the status of a deployment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compute_platform
    #   The destination platform type for the deployment (`Lambda`,
    #   `Server`, or `ECS`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentInfo AWS API Documentation
    #
    class DeploymentInfo < Struct.new(
      :application_name,
      :deployment_group_name,
      :deployment_config_name,
      :deployment_id,
      :previous_revision,
      :revision,
      :status,
      :error_information,
      :create_time,
      :start_time,
      :complete_time,
      :deployment_overview,
      :description,
      :creator,
      :ignore_application_stop_failures,
      :auto_rollback_configuration,
      :update_outdated_instances_only,
      :rollback_info,
      :deployment_style,
      :target_instances,
      :instance_termination_wait_time_started,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :additional_deployment_status_info,
      :file_exists_behavior,
      :deployment_status_messages,
      :compute_platform)
      include Aws::Structure
    end

    # Information about the deployment status of the instances in the
    # deployment.
    #
    # @!attribute [rw] pending
    #   The number of instances in the deployment in a pending state.
    #   @return [Integer]
    #
    # @!attribute [rw] in_progress
    #   The number of instances in which the deployment is in progress.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded
    #   The number of instances in the deployment to which revisions have
    #   been successfully deployed.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   The number of instances in the deployment in a failed state.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped
    #   The number of instances in the deployment in a skipped state.
    #   @return [Integer]
    #
    # @!attribute [rw] ready
    #   The number of instances in a replacement environment ready to
    #   receive traffic in a blue/green deployment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentOverview AWS API Documentation
    #
    class DeploymentOverview < Struct.new(
      :pending,
      :in_progress,
      :succeeded,
      :failed,
      :skipped,
      :ready)
      include Aws::Structure
    end

    # Information about how traffic is rerouted to instances in a
    # replacement environment in a blue/green deployment.
    #
    # @note When making an API call, you may pass DeploymentReadyOption
    #   data as a hash:
    #
    #       {
    #         action_on_timeout: "CONTINUE_DEPLOYMENT", # accepts CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT
    #         wait_time_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] action_on_timeout
    #   Information about when to reroute traffic from an original
    #   environment to a replacement environment in a blue/green deployment.
    #
    #   * CONTINUE\_DEPLOYMENT: Register new instances with the load
    #     balancer immediately after the new application revision is
    #     installed on the instances in the replacement environment.
    #
    #   * STOP\_DEPLOYMENT: Do not register new instances with a load
    #     balancer unless traffic rerouting is started using
    #     ContinueDeployment. If traffic rerouting is not started before the
    #     end of the specified wait period, the deployment status is changed
    #     to Stopped.
    #   @return [String]
    #
    # @!attribute [rw] wait_time_in_minutes
    #   The number of minutes to wait before the status of a blue/green
    #   deployment is changed to Stopped if rerouting is not started
    #   manually. Applies only to the STOP\_DEPLOYMENT option for
    #   actionOnTimeout
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentReadyOption AWS API Documentation
    #
    class DeploymentReadyOption < Struct.new(
      :action_on_timeout,
      :wait_time_in_minutes)
      include Aws::Structure
    end

    # Information about the type of deployment, either in-place or
    # blue/green, you want to run and whether to route deployment traffic
    # behind a load balancer.
    #
    # @note When making an API call, you may pass DeploymentStyle
    #   data as a hash:
    #
    #       {
    #         deployment_type: "IN_PLACE", # accepts IN_PLACE, BLUE_GREEN
    #         deployment_option: "WITH_TRAFFIC_CONTROL", # accepts WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL
    #       }
    #
    # @!attribute [rw] deployment_type
    #   Indicates whether to run an in-place deployment or a blue/green
    #   deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_option
    #   Indicates whether to route deployment traffic behind a load
    #   balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentStyle AWS API Documentation
    #
    class DeploymentStyle < Struct.new(
      :deployment_type,
      :deployment_option)
      include Aws::Structure
    end

    # Information about the deployment target.
    #
    # @!attribute [rw] deployment_target_type
    #   The deployment type that is specific to the deployment's compute
    #   platform.
    #   @return [String]
    #
    # @!attribute [rw] instance_target
    #   Information about the target for a deployment that uses the
    #   EC2/On-premises compute platform.
    #   @return [Types::InstanceTarget]
    #
    # @!attribute [rw] lambda_target
    #   Information about the target for a deployment that uses the AWS
    #   Lambda compute platform.
    #   @return [Types::LambdaTarget]
    #
    # @!attribute [rw] ecs_target
    #   Information about the target for a deployment that uses the Amazon
    #   ECS compute platform.
    #   @return [Types::ECSTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentTarget AWS API Documentation
    #
    class DeploymentTarget < Struct.new(
      :deployment_target_type,
      :instance_target,
      :lambda_target,
      :ecs_target)
      include Aws::Structure
    end

    # Represents the input of a DeregisterOnPremisesInstance operation.
    #
    # @note When making an API call, you may pass DeregisterOnPremisesInstanceInput
    #   data as a hash:
    #
    #       {
    #         instance_name: "InstanceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the on-premises instance to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeregisterOnPremisesInstanceInput AWS API Documentation
    #
    class DeregisterOnPremisesInstanceInput < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # Diagnostic information about executable scripts that are part of a
    # deployment.
    #
    # @!attribute [rw] error_code
    #   The associated error code:
    #
    #   * Success: The specified script ran.
    #
    #   * ScriptMissing: The specified script was not found in the specified
    #     location.
    #
    #   * ScriptNotExecutable: The specified script is not a recognized
    #     executable file type.
    #
    #   * ScriptTimedOut: The specified script did not finish running in the
    #     specified time period.
    #
    #   * ScriptFailed: The specified script failed to run as expected.
    #
    #   * UnknownError: The specified script did not run for an unknown
    #     reason.
    #   @return [String]
    #
    # @!attribute [rw] script_name
    #   The name of the script.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] log_tail
    #   The last portion of the diagnostic log.
    #
    #   If available, AWS CodeDeploy returns up to the last 4 KB of the
    #   diagnostic log.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/Diagnostics AWS API Documentation
    #
    class Diagnostics < Struct.new(
      :error_code,
      :script_name,
      :message,
      :log_tail)
      include Aws::Structure
    end

    # Information about an EC2 tag filter.
    #
    # @note When making an API call, you may pass EC2TagFilter
    #   data as a hash:
    #
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       }
    #
    # @!attribute [rw] key
    #   The tag filter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag filter value.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The tag filter type:
    #
    #   * KEY\_ONLY: Key only.
    #
    #   * VALUE\_ONLY: Value only.
    #
    #   * KEY\_AND\_VALUE: Key and value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/EC2TagFilter AWS API Documentation
    #
    class EC2TagFilter < Struct.new(
      :key,
      :value,
      :type)
      include Aws::Structure
    end

    # Information about groups of EC2 instance tags.
    #
    # @note When making an API call, you may pass EC2TagSet
    #   data as a hash:
    #
    #       {
    #         ec2_tag_set_list: [
    #           [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #             },
    #           ],
    #         ],
    #       }
    #
    # @!attribute [rw] ec2_tag_set_list
    #   A list that contains other lists of EC2 instance tag groups. For an
    #   instance to be included in the deployment group, it must be
    #   identified by all of the tag groups in the list.
    #   @return [Array<Array<Types::EC2TagFilter>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/EC2TagSet AWS API Documentation
    #
    class EC2TagSet < Struct.new(
      :ec2_tag_set_list)
      include Aws::Structure
    end

    # Contains the service and cluster names used to identify an Amazon ECS
    # deployment's target.
    #
    # @note When making an API call, you may pass ECSService
    #   data as a hash:
    #
    #       {
    #         service_name: "ECSServiceName",
    #         cluster_name: "ECSClusterName",
    #       }
    #
    # @!attribute [rw] service_name
    #   The name of the target Amazon ECS service.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that the Amazon ECS service is associated
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ECSService AWS API Documentation
    #
    class ECSService < Struct.new(
      :service_name,
      :cluster_name)
      include Aws::Structure
    end

    # Information about the target of an Amazon ECS deployment.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique ID of a deployment target that has a type of `ecsTarget`.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the target Amazon ECS application was updated
    #   by a deployment.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_events
    #   The lifecycle events of the deployment to this target Amazon ECS
    #   application.
    #   @return [Array<Types::LifecycleEvent>]
    #
    # @!attribute [rw] status
    #   The status an Amazon ECS deployment's target ECS application.
    #   @return [String]
    #
    # @!attribute [rw] task_sets_info
    #   The `ECSTaskSet` objects associated with the ECS target.
    #   @return [Array<Types::ECSTaskSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ECSTarget AWS API Documentation
    #
    class ECSTarget < Struct.new(
      :deployment_id,
      :target_id,
      :target_arn,
      :last_updated_at,
      :lifecycle_events,
      :status,
      :task_sets_info)
      include Aws::Structure
    end

    # Information about a set of Amazon ECS tasks in an AWS CodeDeploy
    # deployment. An Amazon ECS task set includes details such as the
    # desired number of tasks, how many tasks are running, and whether the
    # task set serves production traffic. An AWS CodeDeploy application that
    # uses the Amazon ECS compute platform deploys a containerized
    # application in an Amazon ECS service as a task set.
    #
    # @!attribute [rw] identifer
    #   A unique ID of an `ECSTaskSet`.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The number of tasks in a task set. During a deployment that uses the
    #   Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a
    #   new task set and uses this value to determine how many tasks to
    #   create. After the updated task set is created, CodeDeploy shifts
    #   traffic to the new task set.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_count
    #   The number of tasks in the task set that are in the `PENDING` status
    #   during an Amazon ECS deployment. A task in the `PENDING` state is
    #   preparing to enter the `RUNNING` state. A task set enters the
    #   `PENDING` status when it launches for the first time, or when it is
    #   restarted after being in the `STOPPED` state.
    #   @return [Integer]
    #
    # @!attribute [rw] running_count
    #   The number of tasks in the task set that are in the `RUNNING` status
    #   during an Amazon ECS deployment. A task in the `RUNNING` state is
    #   running and ready for use.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the task set. There are three valid task set statuses:
    #
    #   * `PRIMARY`\: Indicates the task set is serving production traffic.
    #
    #   * `ACTIVE`\: Indicates the task set is not serving production
    #     traffic.
    #
    #   * `DRAINING`\: Indicates the tasks in the task set are being stopped
    #     and their corresponding targets are being deregistered from their
    #     target group.
    #   @return [String]
    #
    # @!attribute [rw] traffic_weight
    #   The percentage of traffic served by this task set.
    #   @return [Float]
    #
    # @!attribute [rw] target_group
    #   The target group associated with the task set. The target group is
    #   used by AWS CodeDeploy to manage traffic to a task set.
    #   @return [Types::TargetGroupInfo]
    #
    # @!attribute [rw] task_set_label
    #   A label that identifies whether the ECS task set is an original
    #   target (`BLUE`) or a replacement target (`GREEN`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ECSTaskSet AWS API Documentation
    #
    class ECSTaskSet < Struct.new(
      :identifer,
      :desired_count,
      :pending_count,
      :running_count,
      :status,
      :traffic_weight,
      :target_group,
      :task_set_label)
      include Aws::Structure
    end

    # Information about a load balancer in Elastic Load Balancing to use in
    # a deployment. Instances are registered directly with a load balancer,
    # and traffic is routed to the load balancer.
    #
    # @note When making an API call, you may pass ELBInfo
    #   data as a hash:
    #
    #       {
    #         name: "ELBName",
    #       }
    #
    # @!attribute [rw] name
    #   For blue/green deployments, the name of the load balancer that is
    #   used to route traffic from original instances to replacement
    #   instances in a blue/green deployment. For in-place deployments, the
    #   name of the load balancer that instances are deregistered from so
    #   they are not serving traffic during a deployment, and then
    #   re-registered with after the deployment is complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ELBInfo AWS API Documentation
    #
    class ELBInfo < Struct.new(
      :name)
      include Aws::Structure
    end

    # Information about a deployment error.
    #
    # @!attribute [rw] code
    #   For more information, see [Error Codes for AWS CodeDeploy][1] in the
    #   [AWS CodeDeploy User Guide][2].
    #
    #   The error code:
    #
    #   * APPLICATION\_MISSING: The application was missing. This error code
    #     is most likely raised if the application is deleted after the
    #     deployment is created, but before it is started.
    #
    #   * DEPLOYMENT\_GROUP\_MISSING: The deployment group was missing. This
    #     error code is most likely raised if the deployment group is
    #     deleted after the deployment is created, but before it is started.
    #
    #   * HEALTH\_CONSTRAINTS: The deployment failed on too many instances
    #     to be successfully deployed within the instance health constraints
    #     specified.
    #
    #   * HEALTH\_CONSTRAINTS\_INVALID: The revision cannot be successfully
    #     deployed within the instance health constraints specified.
    #
    #   * IAM\_ROLE\_MISSING: The service role cannot be accessed.
    #
    #   * IAM\_ROLE\_PERMISSIONS: The service role does not have the correct
    #     permissions.
    #
    #   * INTERNAL\_ERROR: There was an internal error.
    #
    #   * NO\_EC2\_SUBSCRIPTION: The calling account is not subscribed to
    #     Amazon EC2.
    #
    #   * NO\_INSTANCES: No instances were specified, or no instances can be
    #     found.
    #
    #   * OVER\_MAX\_INSTANCES: The maximum number of instances was
    #     exceeded.
    #
    #   * THROTTLED: The operation was throttled because the calling account
    #     exceeded the throttling limits of one or more AWS services.
    #
    #   * TIMEOUT: The deployment has timed out.
    #
    #   * REVISION\_MISSING: The revision ID was missing. This error code is
    #     most likely raised if the revision is deleted after the deployment
    #     is created, but before it is started.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html
    #   [2]: https://docs.aws.amazon.com/codedeploy/latest/userguide
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An accompanying error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ErrorInformation AWS API Documentation
    #
    class ErrorInformation < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Information about an application revision.
    #
    # @!attribute [rw] description
    #   A comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] deployment_groups
    #   The deployment groups for which this is the current target revision.
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_used_time
    #   When the revision was first used by AWS CodeDeploy.
    #   @return [Time]
    #
    # @!attribute [rw] last_used_time
    #   When the revision was last used by AWS CodeDeploy.
    #   @return [Time]
    #
    # @!attribute [rw] register_time
    #   When the revision was registered with AWS CodeDeploy.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GenericRevisionInfo AWS API Documentation
    #
    class GenericRevisionInfo < Struct.new(
      :description,
      :deployment_groups,
      :first_used_time,
      :last_used_time,
      :register_time)
      include Aws::Structure
    end

    # Represents the input of a GetApplication operation.
    #
    # @note When making an API call, you may pass GetApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationInput AWS API Documentation
    #
    class GetApplicationInput < Struct.new(
      :application_name)
      include Aws::Structure
    end

    # Represents the output of a GetApplication operation.
    #
    # @!attribute [rw] application
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationOutput AWS API Documentation
    #
    class GetApplicationOutput < Struct.new(
      :application)
      include Aws::Structure
    end

    # Represents the input of a GetApplicationRevision operation.
    #
    # @note When making an API call, you may pass GetApplicationRevisionInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         revision: { # required
    #           revision_type: "S3", # accepts S3, GitHub, String, AppSpecContent
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #             version: "VersionId",
    #             e_tag: "ETag",
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId",
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256",
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application that corresponds to the revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   Information about the application revision to get, including type
    #   and location.
    #   @return [Types::RevisionLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationRevisionInput AWS API Documentation
    #
    class GetApplicationRevisionInput < Struct.new(
      :application_name,
      :revision)
      include Aws::Structure
    end

    # Represents the output of a GetApplicationRevision operation.
    #
    # @!attribute [rw] application_name
    #   The name of the application that corresponds to the revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   Additional information about the revision, including type and
    #   location.
    #   @return [Types::RevisionLocation]
    #
    # @!attribute [rw] revision_info
    #   General information about the revision.
    #   @return [Types::GenericRevisionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationRevisionOutput AWS API Documentation
    #
    class GetApplicationRevisionOutput < Struct.new(
      :application_name,
      :revision,
      :revision_info)
      include Aws::Structure
    end

    # Represents the input of a GetDeploymentConfig operation.
    #
    # @note When making an API call, you may pass GetDeploymentConfigInput
    #   data as a hash:
    #
    #       {
    #         deployment_config_name: "DeploymentConfigName", # required
    #       }
    #
    # @!attribute [rw] deployment_config_name
    #   The name of a deployment configuration associated with the IAM user
    #   or AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentConfigInput AWS API Documentation
    #
    class GetDeploymentConfigInput < Struct.new(
      :deployment_config_name)
      include Aws::Structure
    end

    # Represents the output of a GetDeploymentConfig operation.
    #
    # @!attribute [rw] deployment_config_info
    #   Information about the deployment configuration.
    #   @return [Types::DeploymentConfigInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentConfigOutput AWS API Documentation
    #
    class GetDeploymentConfigOutput < Struct.new(
      :deployment_config_info)
      include Aws::Structure
    end

    # Represents the input of a GetDeploymentGroup operation.
    #
    # @note When making an API call, you may pass GetDeploymentGroupInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         deployment_group_name: "DeploymentGroupName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The name of a deployment group for the specified application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentGroupInput AWS API Documentation
    #
    class GetDeploymentGroupInput < Struct.new(
      :application_name,
      :deployment_group_name)
      include Aws::Structure
    end

    # Represents the output of a GetDeploymentGroup operation.
    #
    # @!attribute [rw] deployment_group_info
    #   Information about the deployment group.
    #   @return [Types::DeploymentGroupInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentGroupOutput AWS API Documentation
    #
    class GetDeploymentGroupOutput < Struct.new(
      :deployment_group_info)
      include Aws::Structure
    end

    # Represents the input of a GetDeployment operation.
    #
    # @note When making an API call, you may pass GetDeploymentInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId", # required
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment associated with the IAM user or AWS
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentInput AWS API Documentation
    #
    class GetDeploymentInput < Struct.new(
      :deployment_id)
      include Aws::Structure
    end

    # Represents the input of a GetDeploymentInstance operation.
    #
    # @note When making an API call, you may pass GetDeploymentInstanceInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The unique ID of an instance in the deployment group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentInstanceInput AWS API Documentation
    #
    class GetDeploymentInstanceInput < Struct.new(
      :deployment_id,
      :instance_id)
      include Aws::Structure
    end

    # Represents the output of a GetDeploymentInstance operation.
    #
    # @!attribute [rw] instance_summary
    #   Information about the instance.
    #   @return [Types::InstanceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentInstanceOutput AWS API Documentation
    #
    class GetDeploymentInstanceOutput < Struct.new(
      :instance_summary)
      include Aws::Structure
    end

    # Represents the output of a GetDeployment operation.
    #
    # @!attribute [rw] deployment_info
    #   Information about the deployment.
    #   @return [Types::DeploymentInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentOutput AWS API Documentation
    #
    class GetDeploymentOutput < Struct.new(
      :deployment_info)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeploymentTargetInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #         target_id: "TargetId",
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique ID of a deployment target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentTargetInput AWS API Documentation
    #
    class GetDeploymentTargetInput < Struct.new(
      :deployment_id,
      :target_id)
      include Aws::Structure
    end

    # @!attribute [rw] deployment_target
    #   A deployment target that contains information about a deployment
    #   such as its status, lifecyle events, and when it was last updated.
    #   It also contains metadata about the deployment target. The
    #   deployment target metadata depends on the deployment target's type
    #   (`instanceTarget`, `lambdaTarget`, or `ecsTarget`).
    #   @return [Types::DeploymentTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentTargetOutput AWS API Documentation
    #
    class GetDeploymentTargetOutput < Struct.new(
      :deployment_target)
      include Aws::Structure
    end

    # Represents the input of a GetOnPremisesInstance operation.
    #
    # @note When making an API call, you may pass GetOnPremisesInstanceInput
    #   data as a hash:
    #
    #       {
    #         instance_name: "InstanceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the on-premises instance about which to get information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetOnPremisesInstanceInput AWS API Documentation
    #
    class GetOnPremisesInstanceInput < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # Represents the output of a GetOnPremisesInstance operation.
    #
    # @!attribute [rw] instance_info
    #   Information about the on-premises instance.
    #   @return [Types::InstanceInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetOnPremisesInstanceOutput AWS API Documentation
    #
    class GetOnPremisesInstanceOutput < Struct.new(
      :instance_info)
      include Aws::Structure
    end

    # Information about the location of application artifacts stored in
    # GitHub.
    #
    # @note When making an API call, you may pass GitHubLocation
    #   data as a hash:
    #
    #       {
    #         repository: "Repository",
    #         commit_id: "CommitId",
    #       }
    #
    # @!attribute [rw] repository
    #   The GitHub account and repository pair that stores a reference to
    #   the commit that represents the bundled artifacts for the application
    #   revision.
    #
    #   Specified as account/repository.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   The SHA1 commit ID of the GitHub commit that represents the bundled
    #   artifacts for the application revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GitHubLocation AWS API Documentation
    #
    class GitHubLocation < Struct.new(
      :repository,
      :commit_id)
      include Aws::Structure
    end

    # Information about the instances that belong to the replacement
    # environment in a blue/green deployment.
    #
    # @note When making an API call, you may pass GreenFleetProvisioningOption
    #   data as a hash:
    #
    #       {
    #         action: "DISCOVER_EXISTING", # accepts DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP
    #       }
    #
    # @!attribute [rw] action
    #   The method used to add instances to a replacement environment.
    #
    #   * DISCOVER\_EXISTING: Use instances that already exist or will be
    #     created manually.
    #
    #   * COPY\_AUTO\_SCALING\_GROUP: Use settings from a specified Auto
    #     Scaling group to define and create instances in a new Auto Scaling
    #     group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GreenFleetProvisioningOption AWS API Documentation
    #
    class GreenFleetProvisioningOption < Struct.new(
      :action)
      include Aws::Structure
    end

    # Information about an on-premises instance.
    #
    # @!attribute [rw] instance_name
    #   The name of the on-premises instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_session_arn
    #   The ARN of the IAM session associated with the on-premises instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_user_arn
    #   The IAM user ARN associated with the on-premises instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the on-premises instance.
    #   @return [String]
    #
    # @!attribute [rw] register_time
    #   The time at which the on-premises instance was registered.
    #   @return [Time]
    #
    # @!attribute [rw] deregister_time
    #   If the on-premises instance was deregistered, the time at which the
    #   on-premises instance was deregistered.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags currently associated with the on-premises instance.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceInfo AWS API Documentation
    #
    class InstanceInfo < Struct.new(
      :instance_name,
      :iam_session_arn,
      :iam_user_arn,
      :instance_arn,
      :register_time,
      :deregister_time,
      :tags)
      include Aws::Structure
    end

    # Information about an instance in a deployment.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The deployment status for this instance:
    #
    #   * Pending: The deployment is pending for this instance.
    #
    #   * In Progress: The deployment is in progress for this instance.
    #
    #   * Succeeded: The deployment has succeeded for this instance.
    #
    #   * Failed: The deployment has failed for this instance.
    #
    #   * Skipped: The deployment has been skipped for this instance.
    #
    #   * Unknown: The deployment status is unknown for this instance.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   A timestamp that indicaties when the instance information was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_events
    #   A list of lifecycle events for this instance.
    #   @return [Array<Types::LifecycleEvent>]
    #
    # @!attribute [rw] instance_type
    #   Information about which environment an instance belongs to in a
    #   blue/green deployment.
    #
    #   * BLUE: The instance is part of the original environment.
    #
    #   * GREEN: The instance is part of the replacement environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceSummary AWS API Documentation
    #
    class InstanceSummary < Struct.new(
      :deployment_id,
      :instance_id,
      :status,
      :last_updated_at,
      :lifecycle_events,
      :instance_type)
      include Aws::Structure
    end

    # A target Amazon EC2 or on-premises instance during a deployment that
    # uses the EC2/On-premises compute platform.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique ID of a deployment target that has a type of
    #   `instanceTarget`.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status an EC2/On-premises deployment's target instance.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the target instance was updated by a
    #   deployment.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_events
    #   The lifecycle events of the deployment to this target instance.
    #   @return [Array<Types::LifecycleEvent>]
    #
    # @!attribute [rw] instance_label
    #   A label that identifies whether the instance is an original target
    #   (`BLUE`) or a replacement target (`GREEN`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceTarget AWS API Documentation
    #
    class InstanceTarget < Struct.new(
      :deployment_id,
      :target_id,
      :target_arn,
      :status,
      :last_updated_at,
      :lifecycle_events,
      :instance_label)
      include Aws::Structure
    end

    # Information about a Lambda function specified in a deployment.
    #
    # @!attribute [rw] function_name
    #   The name of a Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_alias
    #   The alias of a Lambda function. For more information, see
    #   [Introduction to AWS Lambda Aliases][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The version of a Lambda function that production traffic points to.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of a Lambda function that production traffic points to
    #   after the Lambda function is deployed.
    #   @return [String]
    #
    # @!attribute [rw] target_version_weight
    #   The percentage of production traffic that the target version of a
    #   Lambda function receives.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LambdaFunctionInfo AWS API Documentation
    #
    class LambdaFunctionInfo < Struct.new(
      :function_name,
      :function_alias,
      :current_version,
      :target_version,
      :target_version_weight)
      include Aws::Structure
    end

    # Information about the target AWS Lambda function during an AWS Lambda
    # deployment.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique ID of a deployment target that has a type of
    #   `lambdaTarget`.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status an AWS Lambda deployment's target Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the target Lambda function was updated by a
    #   deployment.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_events
    #   The lifecycle events of the deployment to this target Lambda
    #   function.
    #   @return [Array<Types::LifecycleEvent>]
    #
    # @!attribute [rw] lambda_function_info
    #   A `LambdaFunctionInfo` object that describes a target Lambda
    #   function.
    #   @return [Types::LambdaFunctionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LambdaTarget AWS API Documentation
    #
    class LambdaTarget < Struct.new(
      :deployment_id,
      :target_id,
      :target_arn,
      :status,
      :last_updated_at,
      :lifecycle_events,
      :lambda_function_info)
      include Aws::Structure
    end

    # Information about the most recent attempted or successful deployment
    # to a deployment group.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the most recent deployment.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   A timestamp that indicates when the most recent deployment to the
    #   deployment group was complete.
    #   @return [Time]
    #
    # @!attribute [rw] create_time
    #   A timestamp that indicates when the most recent deployment to the
    #   deployment group started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LastDeploymentInfo AWS API Documentation
    #
    class LastDeploymentInfo < Struct.new(
      :deployment_id,
      :status,
      :end_time,
      :create_time)
      include Aws::Structure
    end

    # Information about a deployment lifecycle event.
    #
    # @!attribute [rw] lifecycle_event_name
    #   The deployment lifecycle event name, such as ApplicationStop,
    #   BeforeInstall, AfterInstall, ApplicationStart, or ValidateService.
    #   @return [String]
    #
    # @!attribute [rw] diagnostics
    #   Diagnostic information about the deployment lifecycle event.
    #   @return [Types::Diagnostics]
    #
    # @!attribute [rw] start_time
    #   A timestamp that indicates when the deployment lifecycle event
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   A timestamp that indicates when the deployment lifecycle event
    #   ended.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The deployment lifecycle event status:
    #
    #   * Pending: The deployment lifecycle event is pending.
    #
    #   * InProgress: The deployment lifecycle event is in progress.
    #
    #   * Succeeded: The deployment lifecycle event ran successfully.
    #
    #   * Failed: The deployment lifecycle event has failed.
    #
    #   * Skipped: The deployment lifecycle event has been skipped.
    #
    #   * Unknown: The deployment lifecycle event is unknown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LifecycleEvent AWS API Documentation
    #
    class LifecycleEvent < Struct.new(
      :lifecycle_event_name,
      :diagnostics,
      :start_time,
      :end_time,
      :status)
      include Aws::Structure
    end

    # Represents the input of a ListApplicationRevisions operation.
    #
    # @note When making an API call, you may pass ListApplicationRevisionsInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         sort_by: "registerTime", # accepts registerTime, firstUsedTime, lastUsedTime
    #         sort_order: "ascending", # accepts ascending, descending
    #         s3_bucket: "S3Bucket",
    #         s3_key_prefix: "S3Key",
    #         deployed: "include", # accepts include, exclude, ignore
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
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
    #   If not specified or set to null, the results are returned in an
    #   arbitrary order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to sort the list results:
    #
    #   * ascending: ascending order.
    #
    #   * descending: descending order.
    #
    #   If not specified, the results are sorted in ascending order.
    #
    #   If set to null, the results are sorted in an arbitrary order.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket name to limit the search for revisions.
    #
    #   If set to null, all of the user's buckets are searched.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   A key prefix for the set of Amazon S3 objects to limit the search
    #   for revisions.
    #   @return [String]
    #
    # @!attribute [rw] deployed
    #   Whether to list revisions based on whether the revision is the
    #   target revision of an deployment group:
    #
    #   * include: List revisions that are target revisions of a deployment
    #     group.
    #
    #   * exclude: Do not list revisions that are target revisions of a
    #     deployment group.
    #
    #   * ignore: List all revisions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous `ListApplicationRevisions`
    #   call. It can be used to return the next set of applications in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplicationRevisionsInput AWS API Documentation
    #
    class ListApplicationRevisionsInput < Struct.new(
      :application_name,
      :sort_by,
      :sort_order,
      :s3_bucket,
      :s3_key_prefix,
      :deployed,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListApplicationRevisions operation.
    #
    # @!attribute [rw] revisions
    #   A list of locations that contain the matching revisions.
    #   @return [Array<Types::RevisionLocation>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list application revisions
    #   call to return the next set of application revisions in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplicationRevisionsOutput AWS API Documentation
    #
    class ListApplicationRevisionsOutput < Struct.new(
      :revisions,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListApplications operation.
    #
    # @note When making an API call, you may pass ListApplicationsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous list applications call. It
    #   can be used to return the next set of applications in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplicationsInput AWS API Documentation
    #
    class ListApplicationsInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListApplications operation.
    #
    # @!attribute [rw] applications
    #   A list of application names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list applications call to
    #   return the next set of applications in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplicationsOutput AWS API Documentation
    #
    class ListApplicationsOutput < Struct.new(
      :applications,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListDeploymentConfigs operation.
    #
    # @note When making an API call, you may pass ListDeploymentConfigsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous `ListDeploymentConfigs`
    #   call. It can be used to return the next set of deployment
    #   configurations in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentConfigsInput AWS API Documentation
    #
    class ListDeploymentConfigsInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListDeploymentConfigs operation.
    #
    # @!attribute [rw] deployment_configs_list
    #   A list of deployment configurations, including built-in
    #   configurations such as CodeDeployDefault.OneAtATime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list deployment
    #   configurations call to return the next set of deployment
    #   configurations in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentConfigsOutput AWS API Documentation
    #
    class ListDeploymentConfigsOutput < Struct.new(
      :deployment_configs_list,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListDeploymentGroups operation.
    #
    # @note When making an API call, you may pass ListDeploymentGroupsInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous list deployment groups
    #   call. It can be used to return the next set of deployment groups in
    #   the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentGroupsInput AWS API Documentation
    #
    class ListDeploymentGroupsInput < Struct.new(
      :application_name,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListDeploymentGroups operation.
    #
    # @!attribute [rw] application_name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] deployment_groups
    #   A list of deployment group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list deployment groups call
    #   to return the next set of deployment groups in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentGroupsOutput AWS API Documentation
    #
    class ListDeploymentGroupsOutput < Struct.new(
      :application_name,
      :deployment_groups,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListDeploymentInstances operation.
    #
    # @note When making an API call, you may pass ListDeploymentInstancesInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId", # required
    #         next_token: "NextToken",
    #         instance_status_filter: ["Pending"], # accepts Pending, InProgress, Succeeded, Failed, Skipped, Unknown, Ready
    #         instance_type_filter: ["Blue"], # accepts Blue, Green
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous list deployment instances
    #   call. It can be used to return the next set of deployment instances
    #   in the list.
    #   @return [String]
    #
    # @!attribute [rw] instance_status_filter
    #   A subset of instances to list by status:
    #
    #   * Pending: Include those instances with pending deployments.
    #
    #   * InProgress: Include those instances where deployments are still in
    #     progress.
    #
    #   * Succeeded: Include those instances with successful deployments.
    #
    #   * Failed: Include those instances with failed deployments.
    #
    #   * Skipped: Include those instances with skipped deployments.
    #
    #   * Unknown: Include those instances with deployments in an unknown
    #     state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type_filter
    #   The set of instances in a blue/green deployment, either those in the
    #   original environment ("BLUE") or those in the replacement
    #   environment ("GREEN"), for which you want to view instance
    #   information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentInstancesInput AWS API Documentation
    #
    class ListDeploymentInstancesInput < Struct.new(
      :deployment_id,
      :next_token,
      :instance_status_filter,
      :instance_type_filter)
      include Aws::Structure
    end

    # Represents the output of a ListDeploymentInstances operation.
    #
    # @!attribute [rw] instances_list
    #   A list of instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list deployment instances
    #   call to return the next set of deployment instances in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentInstancesOutput AWS API Documentation
    #
    class ListDeploymentInstancesOutput < Struct.new(
      :instances_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeploymentTargetsInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #         next_token: "NextToken",
    #         target_filters: {
    #           "TargetStatus" => ["FilterValue"],
    #         },
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token identifier returned from the previous
    #   `ListDeploymentTargets` call. It can be used to return the next set
    #   of deployment targets in the list.
    #   @return [String]
    #
    # @!attribute [rw] target_filters
    #   A key used to filter the returned targets.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentTargetsInput AWS API Documentation
    #
    class ListDeploymentTargetsInput < Struct.new(
      :deployment_id,
      :next_token,
      :target_filters)
      include Aws::Structure
    end

    # @!attribute [rw] target_ids
    #   The unique IDs of deployment targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, a token identifier is
    #   also returned. It can be used in a subsequent
    #   `ListDeploymentTargets` call to return the next set of deployment
    #   targets in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentTargetsOutput AWS API Documentation
    #
    class ListDeploymentTargetsOutput < Struct.new(
      :target_ids,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListDeployments operation.
    #
    # @note When making an API call, you may pass ListDeploymentsInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         deployment_group_name: "DeploymentGroupName",
    #         include_only_statuses: ["Created"], # accepts Created, Queued, InProgress, Succeeded, Failed, Stopped, Ready
    #         create_time_range: {
    #           start: Time.now,
    #           end: Time.now,
    #         },
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #
    #   <note markdown="1"> If `applicationName` is specified, then `deploymentGroupName` must
    #   be specified. If it is not specified, then `deploymentGroupName`
    #   must not be specified.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] deployment_group_name
    #   The name of a deployment group for the specified application.
    #
    #   <note markdown="1"> If `deploymentGroupName` is specified, then `applicationName` must
    #   be specified. If it is not specified, then `applicationName` must
    #   not be specified.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] include_only_statuses
    #   A subset of deployments to list by status:
    #
    #   * Created: Include created deployments in the resulting list.
    #
    #   * Queued: Include queued deployments in the resulting list.
    #
    #   * In Progress: Include in-progress deployments in the resulting
    #     list.
    #
    #   * Succeeded: Include successful deployments in the resulting list.
    #
    #   * Failed: Include failed deployments in the resulting list.
    #
    #   * Stopped: Include stopped deployments in the resulting list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] create_time_range
    #   A time range (start and end) for returning a subset of the list of
    #   deployments.
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous list deployments call. It
    #   can be used to return the next set of deployments in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentsInput AWS API Documentation
    #
    class ListDeploymentsInput < Struct.new(
      :application_name,
      :deployment_group_name,
      :include_only_statuses,
      :create_time_range,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListDeployments operation.
    #
    # @!attribute [rw] deployments
    #   A list of deployment IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list deployments call to
    #   return the next set of deployments in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentsOutput AWS API Documentation
    #
    class ListDeploymentsOutput < Struct.new(
      :deployments,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListGitHubAccountTokenNames operation.
    #
    # @note When making an API call, you may pass ListGitHubAccountTokenNamesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous ListGitHubAccountTokenNames
    #   call. It can be used to return the next set of names in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListGitHubAccountTokenNamesInput AWS API Documentation
    #
    class ListGitHubAccountTokenNamesInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListGitHubAccountTokenNames operation.
    #
    # @!attribute [rw] token_name_list
    #   A list of names of connections to GitHub accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent ListGitHubAccountTokenNames
    #   call to return the next set of names in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListGitHubAccountTokenNamesOutput AWS API Documentation
    #
    class ListGitHubAccountTokenNamesOutput < Struct.new(
      :token_name_list,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a ListOnPremisesInstances operation.
    #
    # @note When making an API call, you may pass ListOnPremisesInstancesInput
    #   data as a hash:
    #
    #       {
    #         registration_status: "Registered", # accepts Registered, Deregistered
    #         tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] registration_status
    #   The registration status of the on-premises instances:
    #
    #   * Deregistered: Include deregistered on-premises instances in the
    #     resulting list.
    #
    #   * Registered: Include registered on-premises instances in the
    #     resulting list.
    #   @return [String]
    #
    # @!attribute [rw] tag_filters
    #   The on-premises instance tags that are used to restrict the
    #   on-premises instance names returned.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous list on-premises instances
    #   call. It can be used to return the next set of on-premises instances
    #   in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListOnPremisesInstancesInput AWS API Documentation
    #
    class ListOnPremisesInstancesInput < Struct.new(
      :registration_status,
      :tag_filters,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of the list on-premises instances operation.
    #
    # @!attribute [rw] instance_names
    #   The list of matching on-premises instance names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list on-premises instances
    #   call to return the next set of on-premises instances in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListOnPremisesInstancesOutput AWS API Documentation
    #
    class ListOnPremisesInstancesOutput < Struct.new(
      :instance_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of a CodeDeploy resource. `ListTagsForResource` returns all
    #   the tags associated with the resource that is identified by the
    #   `ResourceArn`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous `ListTagsForResource` call.
    #   It can be used to return the next set of applications in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags returned by `ListTagsForResource`. The tags are
    #   associated with the resource identified by the input `ResourceArn`
    #   parameter.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent list application revisions
    #   call to return the next set of application revisions in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # Information about the Elastic Load Balancing load balancer or target
    # group used in a deployment.
    #
    # @note When making an API call, you may pass LoadBalancerInfo
    #   data as a hash:
    #
    #       {
    #         elb_info_list: [
    #           {
    #             name: "ELBName",
    #           },
    #         ],
    #         target_group_info_list: [
    #           {
    #             name: "TargetGroupName",
    #           },
    #         ],
    #         target_group_pair_info_list: [
    #           {
    #             target_groups: [
    #               {
    #                 name: "TargetGroupName",
    #               },
    #             ],
    #             prod_traffic_route: {
    #               listener_arns: ["ListenerArn"],
    #             },
    #             test_traffic_route: {
    #               listener_arns: ["ListenerArn"],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] elb_info_list
    #   An array that contains information about the load balancer to use
    #   for load balancing in a deployment. In Elastic Load Balancing, load
    #   balancers are used with Classic Load Balancers.
    #
    #   <note markdown="1"> Adding more than one load balancer to the array is not supported.
    #
    #    </note>
    #   @return [Array<Types::ELBInfo>]
    #
    # @!attribute [rw] target_group_info_list
    #   An array that contains information about the target group to use for
    #   load balancing in a deployment. In Elastic Load Balancing, target
    #   groups are used with Application Load Balancers.
    #
    #   <note markdown="1"> Adding more than one target group to the array is not supported.
    #
    #    </note>
    #   @return [Array<Types::TargetGroupInfo>]
    #
    # @!attribute [rw] target_group_pair_info_list
    #   The target group pair information. This is an array of
    #   `TargeGroupPairInfo` objects with a maximum size of one.
    #   @return [Array<Types::TargetGroupPairInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LoadBalancerInfo AWS API Documentation
    #
    class LoadBalancerInfo < Struct.new(
      :elb_info_list,
      :target_group_info_list,
      :target_group_pair_info_list)
      include Aws::Structure
    end

    # Information about minimum healthy instance.
    #
    # @note When making an API call, you may pass MinimumHealthyHosts
    #   data as a hash:
    #
    #       {
    #         value: 1,
    #         type: "HOST_COUNT", # accepts HOST_COUNT, FLEET_PERCENT
    #       }
    #
    # @!attribute [rw] value
    #   The minimum healthy instance value.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The minimum healthy instance type:
    #
    #   * HOST\_COUNT: The minimum number of healthy instance as an absolute
    #     value.
    #
    #   * FLEET\_PERCENT: The minimum number of healthy instance as a
    #     percentage of the total number of instance in the deployment.
    #
    #   In an example of nine instance, if a HOST\_COUNT of six is
    #   specified, deploy to up to three instances at a time. The deployment
    #   is successful if six or more instances are deployed to successfully.
    #   Otherwise, the deployment fails. If a FLEET\_PERCENT of 40 is
    #   specified, deploy to up to five instance at a time. The deployment
    #   is successful if four or more instance are deployed to successfully.
    #   Otherwise, the deployment fails.
    #
    #   <note markdown="1"> In a call to the `GetDeploymentConfig`, CodeDeployDefault.OneAtATime
    #   returns a minimum healthy instance type of MOST\_CONCURRENCY and a
    #   value of 1. This means a deployment to only one instance at a time.
    #   (You cannot set the type to MOST\_CONCURRENCY, only to HOST\_COUNT
    #   or FLEET\_PERCENT.) In addition, with CodeDeployDefault.OneAtATime,
    #   AWS CodeDeploy attempts to ensure that all instances but one are
    #   kept in a healthy state during the deployment. Although this allows
    #   one instance at a time to be taken offline for a new deployment, it
    #   also means that if the deployment to the last instance fails, the
    #   overall deployment is still successful.
    #
    #    </note>
    #
    #   For more information, see [AWS CodeDeploy Instance Health][1] in the
    #   *AWS CodeDeploy User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/MinimumHealthyHosts AWS API Documentation
    #
    class MinimumHealthyHosts < Struct.new(
      :value,
      :type)
      include Aws::Structure
    end

    # Information about groups of on-premises instance tags.
    #
    # @note When making an API call, you may pass OnPremisesTagSet
    #   data as a hash:
    #
    #       {
    #         on_premises_tag_set_list: [
    #           [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #             },
    #           ],
    #         ],
    #       }
    #
    # @!attribute [rw] on_premises_tag_set_list
    #   A list that contains other lists of on-premises instance tag groups.
    #   For an instance to be included in the deployment group, it must be
    #   identified by all of the tag groups in the list.
    #   @return [Array<Array<Types::TagFilter>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/OnPremisesTagSet AWS API Documentation
    #
    class OnPremisesTagSet < Struct.new(
      :on_premises_tag_set_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLifecycleEventHookExecutionStatusInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #         lifecycle_event_hook_execution_id: "LifecycleEventHookExecutionId",
    #         status: "Pending", # accepts Pending, InProgress, Succeeded, Failed, Skipped, Unknown
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment. Pass this ID to a Lambda function
    #   that validates a deployment lifecycle event.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_event_hook_execution_id
    #   The execution ID of a deployment's lifecycle hook. A deployment
    #   lifecycle hook is specified in the `hooks` section of the AppSpec
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The result of a Lambda function that validates a deployment
    #   lifecycle event (`Succeeded` or `Failed`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/PutLifecycleEventHookExecutionStatusInput AWS API Documentation
    #
    class PutLifecycleEventHookExecutionStatusInput < Struct.new(
      :deployment_id,
      :lifecycle_event_hook_execution_id,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_event_hook_execution_id
    #   The execution ID of the lifecycle event hook. A hook is specified in
    #   the `hooks` section of the deployment's AppSpec file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/PutLifecycleEventHookExecutionStatusOutput AWS API Documentation
    #
    class PutLifecycleEventHookExecutionStatusOutput < Struct.new(
      :lifecycle_event_hook_execution_id)
      include Aws::Structure
    end

    # A revision for an AWS Lambda deployment that is a YAML-formatted or
    # JSON-formatted string. For AWS Lambda deployments, the revision is the
    # same as the AppSpec file.
    #
    # @note When making an API call, you may pass RawString
    #   data as a hash:
    #
    #       {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256",
    #       }
    #
    # @!attribute [rw] content
    #   The YAML-formatted or JSON-formatted revision string. It includes
    #   information about which Lambda function to update and optional
    #   Lambda functions that validate deployment lifecycle events.
    #   @return [String]
    #
    # @!attribute [rw] sha256
    #   The SHA256 hash value of the revision content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RawString AWS API Documentation
    #
    class RawString < Struct.new(
      :content,
      :sha256)
      include Aws::Structure
    end

    # Represents the input of a RegisterApplicationRevision operation.
    #
    # @note When making an API call, you may pass RegisterApplicationRevisionInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         description: "Description",
    #         revision: { # required
    #           revision_type: "S3", # accepts S3, GitHub, String, AppSpecContent
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #             version: "VersionId",
    #             e_tag: "ETag",
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId",
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256",
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of an AWS CodeDeploy application associated with the IAM
    #   user or AWS account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   Information about the application revision to register, including
    #   type and location.
    #   @return [Types::RevisionLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RegisterApplicationRevisionInput AWS API Documentation
    #
    class RegisterApplicationRevisionInput < Struct.new(
      :application_name,
      :description,
      :revision)
      include Aws::Structure
    end

    # Represents the input of the register on-premises instance operation.
    #
    # @note When making an API call, you may pass RegisterOnPremisesInstanceInput
    #   data as a hash:
    #
    #       {
    #         instance_name: "InstanceName", # required
    #         iam_session_arn: "IamSessionArn",
    #         iam_user_arn: "IamUserArn",
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the on-premises instance to register.
    #   @return [String]
    #
    # @!attribute [rw] iam_session_arn
    #   The ARN of the IAM session to associate with the on-premises
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_user_arn
    #   The ARN of the IAM user to associate with the on-premises instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RegisterOnPremisesInstanceInput AWS API Documentation
    #
    class RegisterOnPremisesInstanceInput < Struct.new(
      :instance_name,
      :iam_session_arn,
      :iam_user_arn)
      include Aws::Structure
    end

    # Represents the input of a RemoveTagsFromOnPremisesInstances operation.
    #
    # @note When making an API call, you may pass RemoveTagsFromOnPremisesInstancesInput
    #   data as a hash:
    #
    #       {
    #         tags: [ # required
    #           {
    #             key: "Key",
    #             value: "Value",
    #           },
    #         ],
    #         instance_names: ["InstanceName"], # required
    #       }
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs to remove from the on-premises instances.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] instance_names
    #   The names of the on-premises instances from which to remove tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RemoveTagsFromOnPremisesInstancesInput AWS API Documentation
    #
    class RemoveTagsFromOnPremisesInstancesInput < Struct.new(
      :tags,
      :instance_names)
      include Aws::Structure
    end

    # Information about an application revision.
    #
    # @!attribute [rw] revision_location
    #   Information about the location and type of an application revision.
    #   @return [Types::RevisionLocation]
    #
    # @!attribute [rw] generic_revision_info
    #   Information about an application revision, including usage details
    #   and associated deployment groups.
    #   @return [Types::GenericRevisionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RevisionInfo AWS API Documentation
    #
    class RevisionInfo < Struct.new(
      :revision_location,
      :generic_revision_info)
      include Aws::Structure
    end

    # Information about the location of an application revision.
    #
    # @note When making an API call, you may pass RevisionLocation
    #   data as a hash:
    #
    #       {
    #         revision_type: "S3", # accepts S3, GitHub, String, AppSpecContent
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
    #         app_spec_content: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256",
    #         },
    #       }
    #
    # @!attribute [rw] revision_type
    #   The type of application revision:
    #
    #   * S3: An application revision stored in Amazon S3.
    #
    #   * GitHub: An application revision stored in GitHub (EC2/On-premises
    #     deployments only).
    #
    #   * String: A YAML-formatted or JSON-formatted string (AWS Lambda
    #     deployments only).
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   Information about the location of a revision stored in Amazon S3.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] git_hub_location
    #   Information about the location of application artifacts stored in
    #   GitHub.
    #   @return [Types::GitHubLocation]
    #
    # @!attribute [rw] string
    #   Information about the location of an AWS Lambda deployment revision
    #   stored as a RawString.
    #   @return [Types::RawString]
    #
    # @!attribute [rw] app_spec_content
    #   The content of an AppSpec file for an AWS Lambda or Amazon ECS
    #   deployment. The content is formatted as JSON or YAML and stored as a
    #   RawString.
    #   @return [Types::AppSpecContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RevisionLocation AWS API Documentation
    #
    class RevisionLocation < Struct.new(
      :revision_type,
      :s3_location,
      :git_hub_location,
      :string,
      :app_spec_content)
      include Aws::Structure
    end

    # Information about a deployment rollback.
    #
    # @!attribute [rw] rollback_deployment_id
    #   The ID of the deployment rollback.
    #   @return [String]
    #
    # @!attribute [rw] rollback_triggering_deployment_id
    #   The deployment ID of the deployment that was underway and triggered
    #   a rollback deployment because it failed or was stopped.
    #   @return [String]
    #
    # @!attribute [rw] rollback_message
    #   Information that describes the status of a deployment rollback (for
    #   example, whether the deployment can't be rolled back, is in
    #   progress, failed, or succeeded).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RollbackInfo AWS API Documentation
    #
    class RollbackInfo < Struct.new(
      :rollback_deployment_id,
      :rollback_triggering_deployment_id,
      :rollback_message)
      include Aws::Structure
    end

    # Information about the location of application artifacts stored in
    # Amazon S3.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar", # accepts tar, tgz, zip, YAML, JSON
    #         version: "VersionId",
    #         e_tag: "ETag",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where the application revision is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the Amazon S3 object that represents the bundled
    #   artifacts for the application revision.
    #   @return [String]
    #
    # @!attribute [rw] bundle_type
    #   The file type of the application revision. Must be one of the
    #   following:
    #
    #   * tar: A tar archive file.
    #
    #   * tgz: A compressed tar archive file.
    #
    #   * zip: A zip archive file.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A specific version of the Amazon S3 object that represents the
    #   bundled artifacts for the application revision.
    #
    #   If the version is not specified, the system uses the most recent
    #   version by default.
    #   @return [String]
    #
    # @!attribute [rw] e_tag
    #   The ETag of the Amazon S3 object that represents the bundled
    #   artifacts for the application revision.
    #
    #   If the ETag is not specified as an input parameter, ETag validation
    #   of the object is skipped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key,
      :bundle_type,
      :version,
      :e_tag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SkipWaitTimeForInstanceTerminationInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a blue/green deployment for which you want to skip
    #   the instance termination wait time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/SkipWaitTimeForInstanceTerminationInput AWS API Documentation
    #
    class SkipWaitTimeForInstanceTerminationInput < Struct.new(
      :deployment_id)
      include Aws::Structure
    end

    # Represents the input of a StopDeployment operation.
    #
    # @note When making an API call, you may pass StopDeploymentInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId", # required
    #         auto_rollback_enabled: false,
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] auto_rollback_enabled
    #   Indicates, when a deployment is stopped, whether instances that have
    #   been updated should be rolled back to the previous version of the
    #   application revision.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/StopDeploymentInput AWS API Documentation
    #
    class StopDeploymentInput < Struct.new(
      :deployment_id,
      :auto_rollback_enabled)
      include Aws::Structure
    end

    # Represents the output of a StopDeployment operation.
    #
    # @!attribute [rw] status
    #   The status of the stop deployment operation:
    #
    #   * Pending: The stop operation is pending.
    #
    #   * Succeeded: The stop operation was successful.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   An accompanying status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/StopDeploymentOutput AWS API Documentation
    #
    class StopDeploymentOutput < Struct.new(
      :status,
      :status_message)
      include Aws::Structure
    end

    # Information about a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "Key",
    #         value: "Value",
    #       }
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Information about an on-premises instance tag filter.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #       }
    #
    # @!attribute [rw] key
    #   The on-premises instance tag filter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The on-premises instance tag filter value.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The on-premises instance tag filter type:
    #
    #   * KEY\_ONLY: Key only.
    #
    #   * VALUE\_ONLY: Value only.
    #
    #   * KEY\_AND\_VALUE: Key and value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :key,
      :value,
      :type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "Key",
    #             value: "Value",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of a resource, such as a CodeDeploy application or
    #   deployment group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that `TagResource` associates with a resource. The
    #   resource is identified by the `ResourceArn` input parameter.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Information about a target group in Elastic Load Balancing to use in a
    # deployment. Instances are registered as targets in a target group, and
    # traffic is routed to the target group.
    #
    # @note When making an API call, you may pass TargetGroupInfo
    #   data as a hash:
    #
    #       {
    #         name: "TargetGroupName",
    #       }
    #
    # @!attribute [rw] name
    #   For blue/green deployments, the name of the target group that
    #   instances in the original environment are deregistered from, and
    #   instances in the replacement environment are registered with. For
    #   in-place deployments, the name of the target group that instances
    #   are deregistered from, so they are not serving traffic during a
    #   deployment, and then re-registered with after the deployment is
    #   complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TargetGroupInfo AWS API Documentation
    #
    class TargetGroupInfo < Struct.new(
      :name)
      include Aws::Structure
    end

    # Information about two target groups and how traffic is routed during
    # an Amazon ECS deployment. An optional test traffic route can be
    # specified.
    #
    # @note When making an API call, you may pass TargetGroupPairInfo
    #   data as a hash:
    #
    #       {
    #         target_groups: [
    #           {
    #             name: "TargetGroupName",
    #           },
    #         ],
    #         prod_traffic_route: {
    #           listener_arns: ["ListenerArn"],
    #         },
    #         test_traffic_route: {
    #           listener_arns: ["ListenerArn"],
    #         },
    #       }
    #
    # @!attribute [rw] target_groups
    #   One pair of target groups. One is associated with the original task
    #   set. The second is associated with the task set that serves traffic
    #   after the deployment is complete.
    #   @return [Array<Types::TargetGroupInfo>]
    #
    # @!attribute [rw] prod_traffic_route
    #   The path used by a load balancer to route production traffic when an
    #   Amazon ECS deployment is complete.
    #   @return [Types::TrafficRoute]
    #
    # @!attribute [rw] test_traffic_route
    #   An optional path used by a load balancer to route test traffic after
    #   an Amazon ECS deployment. Validation can occur while test traffic is
    #   served during a deployment.
    #   @return [Types::TrafficRoute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TargetGroupPairInfo AWS API Documentation
    #
    class TargetGroupPairInfo < Struct.new(
      :target_groups,
      :prod_traffic_route,
      :test_traffic_route)
      include Aws::Structure
    end

    # Information about the instances to be used in the replacement
    # environment in a blue/green deployment.
    #
    # @note When making an API call, you may pass TargetInstances
    #   data as a hash:
    #
    #       {
    #         tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #         auto_scaling_groups: ["AutoScalingGroupName"],
    #         ec2_tag_set: {
    #           ec2_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #               },
    #             ],
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] tag_filters
    #   The tag filter key, type, and value used to identify Amazon EC2
    #   instances in a replacement environment for a blue/green deployment.
    #   Cannot be used in the same call as ec2TagSet.
    #   @return [Array<Types::EC2TagFilter>]
    #
    # @!attribute [rw] auto_scaling_groups
    #   The names of one or more Auto Scaling groups to identify a
    #   replacement environment for a blue/green deployment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_tag_set
    #   Information about the groups of EC2 instance tags that an instance
    #   must be identified by in order for it to be included in the
    #   replacement environment for a blue/green deployment. Cannot be used
    #   in the same call as tagFilters.
    #   @return [Types::EC2TagSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TargetInstances AWS API Documentation
    #
    class TargetInstances < Struct.new(
      :tag_filters,
      :auto_scaling_groups,
      :ec2_tag_set)
      include Aws::Structure
    end

    # A configuration that shifts traffic from one version of a Lambda
    # function to another in two increments. The original and target Lambda
    # function versions are specified in the deployment's AppSpec file.
    #
    # @note When making an API call, you may pass TimeBasedCanary
    #   data as a hash:
    #
    #       {
    #         canary_percentage: 1,
    #         canary_interval: 1,
    #       }
    #
    # @!attribute [rw] canary_percentage
    #   The percentage of traffic to shift in the first increment of a
    #   `TimeBasedCanary` deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] canary_interval
    #   The number of minutes between the first and second traffic shifts of
    #   a `TimeBasedCanary` deployment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TimeBasedCanary AWS API Documentation
    #
    class TimeBasedCanary < Struct.new(
      :canary_percentage,
      :canary_interval)
      include Aws::Structure
    end

    # A configuration that shifts traffic from one version of a Lambda
    # function to another in equal increments, with an equal number of
    # minutes between each increment. The original and target Lambda
    # function versions are specified in the deployment's AppSpec file.
    #
    # @note When making an API call, you may pass TimeBasedLinear
    #   data as a hash:
    #
    #       {
    #         linear_percentage: 1,
    #         linear_interval: 1,
    #       }
    #
    # @!attribute [rw] linear_percentage
    #   The percentage of traffic that is shifted at the start of each
    #   increment of a `TimeBasedLinear` deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] linear_interval
    #   The number of minutes between each incremental traffic shift of a
    #   `TimeBasedLinear` deployment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TimeBasedLinear AWS API Documentation
    #
    class TimeBasedLinear < Struct.new(
      :linear_percentage,
      :linear_interval)
      include Aws::Structure
    end

    # Information about a time range.
    #
    # @note When making an API call, you may pass TimeRange
    #   data as a hash:
    #
    #       {
    #         start: Time.now,
    #         end: Time.now,
    #       }
    #
    # @!attribute [rw] start
    #   The start time of the time range.
    #
    #   <note markdown="1"> Specify null to leave the start time open-ended.
    #
    #    </note>
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end time of the time range.
    #
    #   <note markdown="1"> Specify null to leave the end time open-ended.
    #
    #    </note>
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :start,
      :end)
      include Aws::Structure
    end

    # Information about a listener. The listener contains the path used to
    # route traffic that is received from the load balancer to a target
    # group.
    #
    # @note When making an API call, you may pass TrafficRoute
    #   data as a hash:
    #
    #       {
    #         listener_arns: ["ListenerArn"],
    #       }
    #
    # @!attribute [rw] listener_arns
    #   The ARN of one listener. The listener identifies the route between a
    #   target group and a load balancer. This is an array of strings with a
    #   maximum size of one.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TrafficRoute AWS API Documentation
    #
    class TrafficRoute < Struct.new(
      :listener_arns)
      include Aws::Structure
    end

    # The configuration that specifies how traffic is shifted from one
    # version of a Lambda function to another version during an AWS Lambda
    # deployment.
    #
    # @note When making an API call, you may pass TrafficRoutingConfig
    #   data as a hash:
    #
    #       {
    #         type: "TimeBasedCanary", # accepts TimeBasedCanary, TimeBasedLinear, AllAtOnce
    #         time_based_canary: {
    #           canary_percentage: 1,
    #           canary_interval: 1,
    #         },
    #         time_based_linear: {
    #           linear_percentage: 1,
    #           linear_interval: 1,
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of traffic shifting (`TimeBasedCanary` or
    #   `TimeBasedLinear`) used by a deployment configuration .
    #   @return [String]
    #
    # @!attribute [rw] time_based_canary
    #   A configuration that shifts traffic from one version of a Lambda
    #   function to another in two increments. The original and target
    #   Lambda function versions are specified in the deployment's AppSpec
    #   file.
    #   @return [Types::TimeBasedCanary]
    #
    # @!attribute [rw] time_based_linear
    #   A configuration that shifts traffic from one version of a Lambda
    #   function to another in equal increments, with an equal number of
    #   minutes between each increment. The original and target Lambda
    #   function versions are specified in the deployment's AppSpec file.
    #   @return [Types::TimeBasedLinear]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TrafficRoutingConfig AWS API Documentation
    #
    class TrafficRoutingConfig < Struct.new(
      :type,
      :time_based_canary,
      :time_based_linear)
      include Aws::Structure
    end

    # Information about notification triggers for the deployment group.
    #
    # @note When making an API call, you may pass TriggerConfig
    #   data as a hash:
    #
    #       {
    #         trigger_name: "TriggerName",
    #         trigger_target_arn: "TriggerTargetArn",
    #         trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
    #       }
    #
    # @!attribute [rw] trigger_name
    #   The name of the notification trigger.
    #   @return [String]
    #
    # @!attribute [rw] trigger_target_arn
    #   The ARN of the Amazon Simple Notification Service topic through
    #   which notifications about deployment or instance events are sent.
    #   @return [String]
    #
    # @!attribute [rw] trigger_events
    #   The event type or types for which notifications are triggered.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TriggerConfig AWS API Documentation
    #
    class TriggerConfig < Struct.new(
      :trigger_name,
      :trigger_target_arn,
      :trigger_events)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["Key"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN that specifies from which resource to disassociate the tags
    #   with the keys in the `TagKeys` input paramter.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys of `Tag` objects. The `Tag` objects identified by the
    #   keys are disassociated from the resource specified by the
    #   `ResourceArn` input parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # Represents the input of an UpdateApplication operation.
    #
    # @note When making an API call, you may pass UpdateApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         new_application_name: "ApplicationName",
    #       }
    #
    # @!attribute [rw] application_name
    #   The current name of the application you want to change.
    #   @return [String]
    #
    # @!attribute [rw] new_application_name
    #   The new name to give the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateApplicationInput AWS API Documentation
    #
    class UpdateApplicationInput < Struct.new(
      :application_name,
      :new_application_name)
      include Aws::Structure
    end

    # Represents the input of an UpdateDeploymentGroup operation.
    #
    # @note When making an API call, you may pass UpdateDeploymentGroupInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_deployment_group_name: "DeploymentGroupName", # required
    #         new_deployment_group_name: "DeploymentGroupName",
    #         deployment_config_name: "DeploymentConfigName",
    #         ec2_tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #         on_premises_instance_tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #           },
    #         ],
    #         auto_scaling_groups: ["AutoScalingGroupName"],
    #         service_role_arn: "Role",
    #         trigger_configurations: [
    #           {
    #             trigger_name: "TriggerName",
    #             trigger_target_arn: "TriggerTargetArn",
    #             trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
    #           },
    #         ],
    #         alarm_configuration: {
    #           enabled: false,
    #           ignore_poll_alarm_failure: false,
    #           alarms: [
    #             {
    #               name: "AlarmName",
    #             },
    #           ],
    #         },
    #         auto_rollback_configuration: {
    #           enabled: false,
    #           events: ["DEPLOYMENT_FAILURE"], # accepts DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
    #         },
    #         deployment_style: {
    #           deployment_type: "IN_PLACE", # accepts IN_PLACE, BLUE_GREEN
    #           deployment_option: "WITH_TRAFFIC_CONTROL", # accepts WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL
    #         },
    #         blue_green_deployment_configuration: {
    #           terminate_blue_instances_on_deployment_success: {
    #             action: "TERMINATE", # accepts TERMINATE, KEEP_ALIVE
    #             termination_wait_time_in_minutes: 1,
    #           },
    #           deployment_ready_option: {
    #             action_on_timeout: "CONTINUE_DEPLOYMENT", # accepts CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT
    #             wait_time_in_minutes: 1,
    #           },
    #           green_fleet_provisioning_option: {
    #             action: "DISCOVER_EXISTING", # accepts DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP
    #           },
    #         },
    #         load_balancer_info: {
    #           elb_info_list: [
    #             {
    #               name: "ELBName",
    #             },
    #           ],
    #           target_group_info_list: [
    #             {
    #               name: "TargetGroupName",
    #             },
    #           ],
    #           target_group_pair_info_list: [
    #             {
    #               target_groups: [
    #                 {
    #                   name: "TargetGroupName",
    #                 },
    #               ],
    #               prod_traffic_route: {
    #                 listener_arns: ["ListenerArn"],
    #               },
    #               test_traffic_route: {
    #                 listener_arns: ["ListenerArn"],
    #               },
    #             },
    #           ],
    #         },
    #         ec2_tag_set: {
    #           ec2_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #               },
    #             ],
    #           ],
    #         },
    #         ecs_services: [
    #           {
    #             service_name: "ECSServiceName",
    #             cluster_name: "ECSClusterName",
    #           },
    #         ],
    #         on_premises_tag_set: {
    #           on_premises_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
    #               },
    #             ],
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   The application name that corresponds to the deployment group to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] current_deployment_group_name
    #   The current name of the deployment group.
    #   @return [String]
    #
    # @!attribute [rw] new_deployment_group_name
    #   The new name of the deployment group, if you want to change it.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config_name
    #   The replacement deployment configuration name to use, if you want to
    #   change it.
    #   @return [String]
    #
    # @!attribute [rw] ec2_tag_filters
    #   The replacement set of Amazon EC2 tags on which to filter, if you
    #   want to change them. To keep the existing tags, enter their names.
    #   To remove tags, do not enter any tag names.
    #   @return [Array<Types::EC2TagFilter>]
    #
    # @!attribute [rw] on_premises_instance_tag_filters
    #   The replacement set of on-premises instance tags on which to filter,
    #   if you want to change them. To keep the existing tags, enter their
    #   names. To remove tags, do not enter any tag names.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] auto_scaling_groups
    #   The replacement list of Auto Scaling groups to be included in the
    #   deployment group, if you want to change them. To keep the Auto
    #   Scaling groups, enter their names. To remove Auto Scaling groups, do
    #   not enter any Auto Scaling group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role_arn
    #   A replacement ARN for the service role, if you want to change it.
    #   @return [String]
    #
    # @!attribute [rw] trigger_configurations
    #   Information about triggers to change when the deployment group is
    #   updated. For examples, see [Modify Triggers in an AWS CodeDeploy
    #   Deployment Group][1] in the AWS CodeDeploy User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html
    #   @return [Array<Types::TriggerConfig>]
    #
    # @!attribute [rw] alarm_configuration
    #   Information to add or change about Amazon CloudWatch alarms when the
    #   deployment group is updated.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] auto_rollback_configuration
    #   Information for an automatic rollback configuration that is added or
    #   changed when a deployment group is updated.
    #   @return [Types::AutoRollbackConfiguration]
    #
    # @!attribute [rw] deployment_style
    #   Information about the type of deployment, either in-place or
    #   blue/green, you want to run and whether to route deployment traffic
    #   behind a load balancer.
    #   @return [Types::DeploymentStyle]
    #
    # @!attribute [rw] blue_green_deployment_configuration
    #   Information about blue/green deployment options for a deployment
    #   group.
    #   @return [Types::BlueGreenDeploymentConfiguration]
    #
    # @!attribute [rw] load_balancer_info
    #   Information about the load balancer used in a deployment.
    #   @return [Types::LoadBalancerInfo]
    #
    # @!attribute [rw] ec2_tag_set
    #   Information about groups of tags applied to on-premises instances.
    #   The deployment group includes only EC2 instances identified by all
    #   the tag groups.
    #   @return [Types::EC2TagSet]
    #
    # @!attribute [rw] ecs_services
    #   The target Amazon ECS services in the deployment group. This applies
    #   only to deployment groups that use the Amazon ECS compute platform.
    #   A target Amazon ECS service is specified as an Amazon ECS cluster
    #   and service name pair using the format
    #   `<clustername>:<servicename>`.
    #   @return [Array<Types::ECSService>]
    #
    # @!attribute [rw] on_premises_tag_set
    #   Information about an on-premises instance tag set. The deployment
    #   group includes only on-premises instances identified by all the tag
    #   groups.
    #   @return [Types::OnPremisesTagSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateDeploymentGroupInput AWS API Documentation
    #
    class UpdateDeploymentGroupInput < Struct.new(
      :application_name,
      :current_deployment_group_name,
      :new_deployment_group_name,
      :deployment_config_name,
      :ec2_tag_filters,
      :on_premises_instance_tag_filters,
      :auto_scaling_groups,
      :service_role_arn,
      :trigger_configurations,
      :alarm_configuration,
      :auto_rollback_configuration,
      :deployment_style,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :ec2_tag_set,
      :ecs_services,
      :on_premises_tag_set)
      include Aws::Structure
    end

    # Represents the output of an UpdateDeploymentGroup operation.
    #
    # @!attribute [rw] hooks_not_cleaned_up
    #   If the output contains no data, and the corresponding deployment
    #   group contained at least one Auto Scaling group, AWS CodeDeploy
    #   successfully removed all corresponding Auto Scaling lifecycle event
    #   hooks from the AWS account. If the output contains data, AWS
    #   CodeDeploy could not remove some Auto Scaling lifecycle event hooks
    #   from the AWS account.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateDeploymentGroupOutput AWS API Documentation
    #
    class UpdateDeploymentGroupOutput < Struct.new(
      :hooks_not_cleaned_up)
      include Aws::Structure
    end

  end
end
