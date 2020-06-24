# frozen_string_literal: true

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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   * `true`\: The deployment proceeds even if alarm status information
    #     can't be retrieved from Amazon CloudWatch.
    #
    #   * `false`\: The deployment stops if alarm status information can't
    #     be retrieved from Amazon CloudWatch.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of alarms for a deployment group (10) was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AlarmsLimitExceededException AWS API Documentation
    #
    class AlarmsLimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # An application with the specified name with the IAM user or AWS
    # account already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ApplicationAlreadyExistsException AWS API Documentation
    #
    class ApplicationAlreadyExistsException < Aws::EmptyStructure; end

    # The application does not exist with the IAM user or AWS account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ApplicationDoesNotExistException AWS API Documentation
    #
    class ApplicationDoesNotExistException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # More applications were attempted to be created than are allowed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ApplicationLimitExceededException AWS API Documentation
    #
    class ApplicationLimitExceededException < Aws::EmptyStructure; end

    # The minimum number of required application names was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ApplicationNameRequiredException AWS API Documentation
    #
    class ApplicationNameRequiredException < Aws::EmptyStructure; end

    # The specified ARN is not supported. For example, it might be an ARN
    # for a resource that is not expected.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ArnNotSupportedException AWS API Documentation
    #
    class ArnNotSupportedException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `BatchGetApplicationRevisions` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `BatchGetApplicationRevisions` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `BatchGetApplications` operation.
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
    #   of application names you can specify is 100.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationsInput AWS API Documentation
    #
    class BatchGetApplicationsInput < Struct.new(
      :application_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `BatchGetApplications` operation.
    #
    # @!attribute [rw] applications_info
    #   Information about the applications.
    #   @return [Array<Types::ApplicationInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationsOutput AWS API Documentation
    #
    class BatchGetApplicationsOutput < Struct.new(
      :applications_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `BatchGetDeploymentGroups` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `BatchGetDeploymentGroups` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `BatchGetDeploymentInstances` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `BatchGetDeploymentInstances` operation.
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
      SENSITIVE = []
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
    #
    #   * For deployments that are deployed with AWS CloudFormation, the
    #     target IDs are CloudFormation stack IDs. Their target type is
    #     `cloudFormationTarget`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentTargetsInput AWS API Documentation
    #
    class BatchGetDeploymentTargetsInput < Struct.new(
      :deployment_id,
      :target_ids)
      SENSITIVE = []
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
    #
    #   * **CloudFormation**\: The target object is an AWS CloudFormation
    #     blue/green deployment.
    #   @return [Array<Types::DeploymentTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentTargetsOutput AWS API Documentation
    #
    class BatchGetDeploymentTargetsOutput < Struct.new(
      :deployment_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `BatchGetDeployments` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `BatchGetDeployments` operation.
    #
    # @!attribute [rw] deployments_info
    #   Information about the deployments.
    #   @return [Array<Types::DeploymentInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentsOutput AWS API Documentation
    #
    class BatchGetDeploymentsOutput < Struct.new(
      :deployments_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `BatchGetOnPremisesInstances` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `BatchGetOnPremisesInstances` operation.
    #
    # @!attribute [rw] instance_infos
    #   Information about the on-premises instances.
    #   @return [Array<Types::InstanceInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetOnPremisesInstancesOutput AWS API Documentation
    #
    class BatchGetOnPremisesInstancesOutput < Struct.new(
      :instance_infos)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of names or IDs allowed for this request (100) was
    # exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchLimitExceededException AWS API Documentation
    #
    class BatchLimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about whether instances in the original environment are
    # terminated when a blue/green deployment is successful.
    # `BlueInstanceTerminationOption` does not apply to Lambda deployments.
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
    #   * `TERMINATE`\: Instances are terminated after a specified wait
    #     time.
    #
    #   * `KEEP_ALIVE`\: Instances are left running after they are
    #     deregistered from the load balancer and removed from the
    #     deployment group.
    #   @return [String]
    #
    # @!attribute [rw] termination_wait_time_in_minutes
    #   For an Amazon EC2 deployment, the number of minutes to wait after a
    #   successful blue/green deployment before terminating instances from
    #   the original environment.
    #
    #   For an Amazon ECS deployment, the number of minutes before deleting
    #   the original (blue) task set. During an Amazon ECS deployment,
    #   CodeDeploy shifts traffic from the original (blue) task set to a
    #   replacement (green) task set.
    #
    #   The maximum setting is 2880 minutes (2 days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BlueInstanceTerminationOption AWS API Documentation
    #
    class BlueInstanceTerminationOption < Struct.new(
      :action,
      :termination_wait_time_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A bucket name is required, but was not provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BucketNameFilterRequiredException AWS API Documentation
    #
    class BucketNameFilterRequiredException < Aws::EmptyStructure; end

    # Information about the target to be updated by an AWS CloudFormation
    # blue/green deployment. This target type is used for all deployments
    # initiated by a CloudFormation stack update.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of an AWS CloudFormation blue/green deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique ID of a deployment target that has a type
    #   of `CloudFormationTarget`.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the target application was updated by an AWS
    #   CloudFormation blue/green deployment.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_events
    #   The lifecycle events of the AWS CloudFormation blue/green deployment
    #   to this target application.
    #   @return [Array<Types::LifecycleEvent>]
    #
    # @!attribute [rw] status
    #   The status of an AWS CloudFormation blue/green deployment's target
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for the AWS CloudFormation blue/green deployment.
    #   @return [String]
    #
    # @!attribute [rw] target_version_weight
    #   The percentage of production traffic that the target version of an
    #   AWS CloudFormation blue/green deployment receives.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CloudFormationTarget AWS API Documentation
    #
    class CloudFormationTarget < Struct.new(
      :deployment_id,
      :target_id,
      :last_updated_at,
      :lifecycle_events,
      :status,
      :resource_type,
      :target_version_weight)
      SENSITIVE = []
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
    #   The status of the deployment's waiting period. `READY_WAIT`
    #   indicates that the deployment is ready to start shifting traffic.
    #   `TERMINATION_WAIT` indicates that the traffic is shifted, but the
    #   original target is not terminated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ContinueDeploymentInput AWS API Documentation
    #
    class ContinueDeploymentInput < Struct.new(
      :deployment_id,
      :deployment_wait_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateApplication` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateApplication` operation.
    #
    # @!attribute [rw] application_id
    #   A unique application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateApplicationOutput AWS API Documentation
    #
    class CreateApplicationOutput < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateDeploymentConfig` operation.
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
    #     the equivalent number of instances and rounds up fractional
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateDeploymentConfig` operation.
    #
    # @!attribute [rw] deployment_config_id
    #   A unique deployment configuration ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentConfigOutput AWS API Documentation
    #
    class CreateDeploymentConfigOutput < Struct.new(
      :deployment_config_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateDeploymentGroup` operation.
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
    #   `CodeDeployDefault.OneAtATime` is the default deployment
    #   configuration. It is used if a configuration isn't specified for
    #   the deployment or deployment group.
    #
    #   For more information about the predefined deployment configurations
    #   in AWS CodeDeploy, see [Working with Deployment Configurations in
    #   CodeDeploy][1] in the *AWS CodeDeploy User Guide*.
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
    #   Cannot be used in the same call as `OnPremisesTagSet`.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] auto_scaling_groups
    #   A list of associated Amazon EC2 Auto Scaling groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role_arn
    #   A service role Amazon Resource Name (ARN) that allows AWS CodeDeploy
    #   to act on the user's behalf when interacting with AWS services.
    #   @return [String]
    #
    # @!attribute [rw] trigger_configurations
    #   Information about triggers to create when the deployment group is
    #   created. For examples, see [Create a Trigger for an AWS CodeDeploy
    #   Event][1] in the *AWS CodeDeploy User Guide*.
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
    #   tag groups. Cannot be used in the same call as `ec2TagFilters`.
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
    #   `onPremisesInstanceTagFilters`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateDeploymentGroup` operation.
    #
    # @!attribute [rw] deployment_group_id
    #   A unique deployment group ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentGroupOutput AWS API Documentation
    #
    class CreateDeploymentGroupOutput < Struct.new(
      :deployment_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateDeployment` operation.
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
    #   `CodeDeployDefault`.`OneAtATime` is used by default.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A comment about the deployment.
    #   @return [String]
    #
    # @!attribute [rw] ignore_application_stop_failures
    #   If true, then if an `ApplicationStop`, `BeforeBlockTraffic`, or
    #   `AfterBlockTraffic` deployment lifecycle event to an instance fails,
    #   then the deployment continues to the next deployment lifecycle
    #   event. For example, if `ApplicationStop` fails, the deployment
    #   continues with `DownloadBundle`. If `BeforeBlockTraffic` fails, the
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
    #   The `fileExistsBehavior` parameter takes any of the following
    #   values:
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateDeployment` operation.
    #
    # @!attribute [rw] deployment_id
    #   The unique ID of a deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentOutput AWS API Documentation
    #
    class CreateDeploymentOutput < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteApplication` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteDeploymentConfig` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteDeploymentGroup` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DeleteDeploymentGroup` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteGitHubAccount` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DeleteGitHubAccountToken` operation.
    #
    # @!attribute [rw] token_name
    #   The name of the GitHub account connection that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteGitHubAccountTokenOutput AWS API Documentation
    #
    class DeleteGitHubAccountTokenOutput < Struct.new(
      :token_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcesByExternalIdInput
    #   data as a hash:
    #
    #       {
    #         external_id: "ExternalId",
    #       }
    #
    # @!attribute [rw] external_id
    #   The unique ID of an external resource (for example, a CloudFormation
    #   stack ID) that is linked to one or more CodeDeploy resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteResourcesByExternalIdInput AWS API Documentation
    #
    class DeleteResourcesByExternalIdInput < Struct.new(
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteResourcesByExternalIdOutput AWS API Documentation
    #
    class DeleteResourcesByExternalIdOutput < Aws::EmptyStructure; end

    # The deployment is already complete.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentAlreadyCompletedException AWS API Documentation
    #
    class DeploymentAlreadyCompletedException < Aws::EmptyStructure; end

    # A deployment to a target was attempted while another deployment was in
    # progress.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentAlreadyStartedException AWS API Documentation
    #
    class DeploymentAlreadyStartedException < Aws::EmptyStructure; end

    # A deployment configuration with the specified name with the IAM user
    # or AWS account already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentConfigAlreadyExistsException AWS API Documentation
    #
    class DeploymentConfigAlreadyExistsException < Aws::EmptyStructure; end

    # The deployment configuration does not exist with the IAM user or AWS
    # account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentConfigDoesNotExistException AWS API Documentation
    #
    class DeploymentConfigDoesNotExistException < Aws::EmptyStructure; end

    # The deployment configuration is still in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentConfigInUseException AWS API Documentation
    #
    class DeploymentConfigInUseException < Aws::EmptyStructure; end

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
    #   routed. Used for deployments with a Lambda or ECS compute platform
    #   only.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment configurations limit was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentConfigLimitExceededException AWS API Documentation
    #
    class DeploymentConfigLimitExceededException < Aws::EmptyStructure; end

    # The deployment configuration name was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentConfigNameRequiredException AWS API Documentation
    #
    class DeploymentConfigNameRequiredException < Aws::EmptyStructure; end

    # The deployment with the IAM user or AWS account does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentDoesNotExistException AWS API Documentation
    #
    class DeploymentDoesNotExistException < Aws::EmptyStructure; end

    # A deployment group with the specified name with the IAM user or AWS
    # account already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentGroupAlreadyExistsException AWS API Documentation
    #
    class DeploymentGroupAlreadyExistsException < Aws::EmptyStructure; end

    # The named deployment group with the IAM user or AWS account does not
    # exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentGroupDoesNotExistException AWS API Documentation
    #
    class DeploymentGroupDoesNotExistException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment groups limit was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentGroupLimitExceededException AWS API Documentation
    #
    class DeploymentGroupLimitExceededException < Aws::EmptyStructure; end

    # The deployment group name was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentGroupNameRequiredException AWS API Documentation
    #
    class DeploymentGroupNameRequiredException < Aws::EmptyStructure; end

    # At least one deployment ID must be specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentIdRequiredException AWS API Documentation
    #
    class DeploymentIdRequiredException < Aws::EmptyStructure; end

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
    #   * `user`\: A user created the deployment.
    #
    #   * `autoscaling`\: Amazon EC2 Auto Scaling created the deployment.
    #
    #   * `codeDeployRollback`\: A rollback process created the deployment.
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
    #   * `DISALLOW`\: The deployment fails. This is also the default
    #     behavior if no option is specified.
    #
    #   * `OVERWRITE`\: The version of the file from the application
    #     revision currently being deployed replaces the version already on
    #     the instance.
    #
    #   * `RETAIN`\: The version of the file already on the instance is kept
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
    # @!attribute [rw] external_id
    #   The unique ID for an external resource (for example, a
    #   CloudFormation stack ID) that is linked to this deployment.
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
      :compute_platform,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment does not have a status of Ready and can't continue
    # yet.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentIsNotInReadyStateException AWS API Documentation
    #
    class DeploymentIsNotInReadyStateException < Aws::EmptyStructure; end

    # The number of allowed deployments was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentLimitExceededException AWS API Documentation
    #
    class DeploymentLimitExceededException < Aws::EmptyStructure; end

    # The specified deployment has not started.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentNotStartedException AWS API Documentation
    #
    class DeploymentNotStartedException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #   manually. Applies only to the `STOP_DEPLOYMENT` option for
    #   `actionOnTimeout`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentReadyOption AWS API Documentation
    #
    class DeploymentReadyOption < Struct.new(
      :action_on_timeout,
      :wait_time_in_minutes)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the deployment target.
    #
    # @!attribute [rw] deployment_target_type
    #   The deployment type that is specific to the deployment's compute
    #   platform or deployments initiated by a CloudFormation stack update.
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
    # @!attribute [rw] cloud_formation_target
    #   Information about the target to be updated by an AWS CloudFormation
    #   blue/green deployment. This target type is used for all deployments
    #   initiated by a CloudFormation stack update.
    #   @return [Types::CloudFormationTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentTarget AWS API Documentation
    #
    class DeploymentTarget < Struct.new(
      :deployment_target_type,
      :instance_target,
      :lambda_target,
      :ecs_target,
      :cloud_formation_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided target ID does not belong to the attempted deployment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentTargetDoesNotExistException AWS API Documentation
    #
    class DeploymentTargetDoesNotExistException < Aws::EmptyStructure; end

    # A deployment target ID was not provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentTargetIdRequiredException AWS API Documentation
    #
    class DeploymentTargetIdRequiredException < Aws::EmptyStructure; end

    # The maximum number of targets that can be associated with an Amazon
    # ECS or AWS Lambda deployment was exceeded. The target list of both
    # types of deployments must have exactly one item. This exception does
    # not apply to EC2/On-premises deployments.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeploymentTargetListSizeExceededException AWS API Documentation
    #
    class DeploymentTargetListSizeExceededException < Aws::EmptyStructure; end

    # Represents the input of a `DeregisterOnPremisesInstance` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The description is too long.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DescriptionTooLongException AWS API Documentation
    #
    class DescriptionTooLongException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #   * `KEY_ONLY`\: Key only.
    #
    #   * `VALUE_ONLY`\: Value only.
    #
    #   * `KEY_AND_VALUE`\: Key and value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/EC2TagFilter AWS API Documentation
    #
    class EC2TagFilter < Struct.new(
      :key,
      :value,
      :type)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon ECS service is associated with more than one deployment
    # groups. An Amazon ECS service can be associated with only one
    # deployment group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ECSServiceMappingLimitExceededException AWS API Documentation
    #
    class ECSServiceMappingLimitExceededException < Aws::EmptyStructure; end

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
    #   The Amazon Resource Name (ARN) of the target.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetApplication` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetApplication` operation.
    #
    # @!attribute [rw] application
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationOutput AWS API Documentation
    #
    class GetApplicationOutput < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetApplicationRevision` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetApplicationRevision` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetDeploymentConfig` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetDeploymentConfig` operation.
    #
    # @!attribute [rw] deployment_config_info
    #   Information about the deployment configuration.
    #   @return [Types::DeploymentConfigInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentConfigOutput AWS API Documentation
    #
    class GetDeploymentConfigOutput < Struct.new(
      :deployment_config_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetDeploymentGroup` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetDeploymentGroup` operation.
    #
    # @!attribute [rw] deployment_group_info
    #   Information about the deployment group.
    #   @return [Types::DeploymentGroupInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentGroupOutput AWS API Documentation
    #
    class GetDeploymentGroupOutput < Struct.new(
      :deployment_group_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetDeployment` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetDeploymentInstance` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetDeploymentInstance` operation.
    #
    # @!attribute [rw] instance_summary
    #   Information about the instance.
    #   @return [Types::InstanceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentInstanceOutput AWS API Documentation
    #
    class GetDeploymentInstanceOutput < Struct.new(
      :instance_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetDeployment` operation.
    #
    # @!attribute [rw] deployment_info
    #   Information about the deployment.
    #   @return [Types::DeploymentInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentOutput AWS API Documentation
    #
    class GetDeploymentOutput < Struct.new(
      :deployment_info)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_target
    #   A deployment target that contains information about a deployment
    #   such as its status, lifecycle events, and when it was last updated.
    #   It also contains metadata about the deployment target. The
    #   deployment target metadata depends on the deployment target's type
    #   (`instanceTarget`, `lambdaTarget`, or `ecsTarget`).
    #   @return [Types::DeploymentTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentTargetOutput AWS API Documentation
    #
    class GetDeploymentTargetOutput < Struct.new(
      :deployment_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetOnPremisesInstance` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetOnPremisesInstance` operation.
    #
    # @!attribute [rw] instance_info
    #   Information about the on-premises instance.
    #   @return [Types::InstanceInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetOnPremisesInstanceOutput AWS API Documentation
    #
    class GetOnPremisesInstanceOutput < Struct.new(
      :instance_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # No GitHub account connection exists with the named specified in the
    # call.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GitHubAccountTokenDoesNotExistException AWS API Documentation
    #
    class GitHubAccountTokenDoesNotExistException < Aws::EmptyStructure; end

    # The call is missing a required GitHub account connection name.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GitHubAccountTokenNameRequiredException AWS API Documentation
    #
    class GitHubAccountTokenNameRequiredException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #   * `DISCOVER_EXISTING`\: Use instances that already exist or will be
    #     created manually.
    #
    #   * `COPY_AUTO_SCALING_GROUP`\: Use settings from a specified Auto
    #     Scaling group to define and create instances in a new Auto Scaling
    #     group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GreenFleetProvisioningOption AWS API Documentation
    #
    class GreenFleetProvisioningOption < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # No IAM ARN was included in the request. You must use an IAM session
    # ARN or IAM user ARN in the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/IamArnRequiredException AWS API Documentation
    #
    class IamArnRequiredException < Aws::EmptyStructure; end

    # The request included an IAM session ARN that has already been used to
    # register a different instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/IamSessionArnAlreadyRegisteredException AWS API Documentation
    #
    class IamSessionArnAlreadyRegisteredException < Aws::EmptyStructure; end

    # The specified IAM user ARN is already registered with an on-premises
    # instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/IamUserArnAlreadyRegisteredException AWS API Documentation
    #
    class IamUserArnAlreadyRegisteredException < Aws::EmptyStructure; end

    # An IAM user ARN was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/IamUserArnRequiredException AWS API Documentation
    #
    class IamUserArnRequiredException < Aws::EmptyStructure; end

    # The specified instance does not exist in the deployment group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceDoesNotExistException AWS API Documentation
    #
    class InstanceDoesNotExistException < Aws::EmptyStructure; end

    # The instance ID was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceIdRequiredException AWS API Documentation
    #
    class InstanceIdRequiredException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of allowed on-premises instances in a single call
    # was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceLimitExceededException AWS API Documentation
    #
    class InstanceLimitExceededException < Aws::EmptyStructure; end

    # The specified on-premises instance name is already registered.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceNameAlreadyRegisteredException AWS API Documentation
    #
    class InstanceNameAlreadyRegisteredException < Aws::EmptyStructure; end

    # An on-premises instance name was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceNameRequiredException AWS API Documentation
    #
    class InstanceNameRequiredException < Aws::EmptyStructure; end

    # The specified on-premises instance is not registered.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InstanceNotRegisteredException AWS API Documentation
    #
    class InstanceNotRegisteredException < Aws::EmptyStructure; end

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
    #   * `Pending`\: The deployment is pending for this instance.
    #
    #   * `In Progress`\: The deployment is in progress for this instance.
    #
    #   * `Succeeded`\: The deployment has succeeded for this instance.
    #
    #   * `Failed`\: The deployment has failed for this instance.
    #
    #   * `Skipped`\: The deployment has been skipped for this instance.
    #
    #   * `Unknown`\: The deployment status is unknown for this instance.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   A timestamp that indicates when the instance information was last
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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the target.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The format of the alarm configuration is invalid. Possible causes
    # include:
    #
    # * The alarm list is null.
    #
    # * The alarm object is null.
    #
    # * The alarm name is empty or null or exceeds the limit of 255
    #   characters.
    #
    # * Two alarms with the same name have been specified.
    #
    # * The alarm configuration is enabled, but the alarm list is empty.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidAlarmConfigException AWS API Documentation
    #
    class InvalidAlarmConfigException < Aws::EmptyStructure; end

    # The application name was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidApplicationNameException AWS API Documentation
    #
    class InvalidApplicationNameException < Aws::EmptyStructure; end

    # The specified ARN is not in a valid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidArnException AWS API Documentation
    #
    class InvalidArnException < Aws::EmptyStructure; end

    # The automatic rollback configuration was specified in an invalid
    # format. For example, automatic rollback is enabled, but an invalid
    # triggering event type or no event types were listed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidAutoRollbackConfigException AWS API Documentation
    #
    class InvalidAutoRollbackConfigException < Aws::EmptyStructure; end

    # The Auto Scaling group was specified in an invalid format or does not
    # exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidAutoScalingGroupException AWS API Documentation
    #
    class InvalidAutoScalingGroupException < Aws::EmptyStructure; end

    # The configuration for the blue/green deployment group was provided in
    # an invalid format. For information about deployment configuration
    # format, see CreateDeploymentConfig.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidBlueGreenDeploymentConfigurationException AWS API Documentation
    #
    class InvalidBlueGreenDeploymentConfigurationException < Aws::EmptyStructure; end

    # The bucket name either doesn't exist or was specified in an invalid
    # format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidBucketNameFilterException AWS API Documentation
    #
    class InvalidBucketNameFilterException < Aws::EmptyStructure; end

    # The computePlatform is invalid. The computePlatform should be
    # `Lambda`, `Server`, or `ECS`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidComputePlatformException AWS API Documentation
    #
    class InvalidComputePlatformException < Aws::EmptyStructure; end

    # The deployed state filter was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeployedStateFilterException AWS API Documentation
    #
    class InvalidDeployedStateFilterException < Aws::EmptyStructure; end

    # The ID of the deployment configuration is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentConfigIdException AWS API Documentation
    #
    class InvalidDeploymentConfigIdException < Aws::EmptyStructure; end

    # The deployment configuration name was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentConfigNameException AWS API Documentation
    #
    class InvalidDeploymentConfigNameException < Aws::EmptyStructure; end

    # The deployment group name was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentGroupNameException AWS API Documentation
    #
    class InvalidDeploymentGroupNameException < Aws::EmptyStructure; end

    # At least one of the deployment IDs was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentIdException AWS API Documentation
    #
    class InvalidDeploymentIdException < Aws::EmptyStructure; end

    # An instance type was specified for an in-place deployment. Instance
    # types are supported for blue/green deployments only.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentInstanceTypeException AWS API Documentation
    #
    class InvalidDeploymentInstanceTypeException < Aws::EmptyStructure; end

    # The specified deployment status doesn't exist or cannot be
    # determined.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentStatusException AWS API Documentation
    #
    class InvalidDeploymentStatusException < Aws::EmptyStructure; end

    # An invalid deployment style was specified. Valid deployment types
    # include "IN\_PLACE" and "BLUE\_GREEN." Valid deployment options
    # include "WITH\_TRAFFIC\_CONTROL" and "WITHOUT\_TRAFFIC\_CONTROL."
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentStyleException AWS API Documentation
    #
    class InvalidDeploymentStyleException < Aws::EmptyStructure; end

    # The target ID provided was not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentTargetIdException AWS API Documentation
    #
    class InvalidDeploymentTargetIdException < Aws::EmptyStructure; end

    # The wait type is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidDeploymentWaitTypeException AWS API Documentation
    #
    class InvalidDeploymentWaitTypeException < Aws::EmptyStructure; end

    # A call was submitted that specified both Ec2TagFilters and Ec2TagSet,
    # but only one of these data types can be used in a single call.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidEC2TagCombinationException AWS API Documentation
    #
    class InvalidEC2TagCombinationException < Aws::EmptyStructure; end

    # The tag was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidEC2TagException AWS API Documentation
    #
    class InvalidEC2TagException < Aws::EmptyStructure; end

    # The Amazon ECS service identifier is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidECSServiceException AWS API Documentation
    #
    class InvalidECSServiceException < Aws::EmptyStructure; end

    # The external ID was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidExternalIdException AWS API Documentation
    #
    class InvalidExternalIdException < Aws::EmptyStructure; end

    # An invalid fileExistsBehavior option was specified to determine how
    # AWS CodeDeploy handles files or directories that already exist in a
    # deployment target location, but weren't part of the previous
    # successful deployment. Valid values include "DISALLOW,"
    # "OVERWRITE," and "RETAIN."
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidFileExistsBehaviorException AWS API Documentation
    #
    class InvalidFileExistsBehaviorException < Aws::EmptyStructure; end

    # The GitHub token is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidGitHubAccountTokenException AWS API Documentation
    #
    class InvalidGitHubAccountTokenException < Aws::EmptyStructure; end

    # The format of the specified GitHub account connection name is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidGitHubAccountTokenNameException AWS API Documentation
    #
    class InvalidGitHubAccountTokenNameException < Aws::EmptyStructure; end

    # The IAM session ARN was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidIamSessionArnException AWS API Documentation
    #
    class InvalidIamSessionArnException < Aws::EmptyStructure; end

    # The IAM user ARN was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidIamUserArnException AWS API Documentation
    #
    class InvalidIamUserArnException < Aws::EmptyStructure; end

    # The IgnoreApplicationStopFailures value is invalid. For AWS Lambda
    # deployments, `false` is expected. For EC2/On-premises deployments,
    # `true` or `false` is expected.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidIgnoreApplicationStopFailuresValueException AWS API Documentation
    #
    class InvalidIgnoreApplicationStopFailuresValueException < Aws::EmptyStructure; end

    # The input was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidInstanceIdException AWS API Documentation
    #
    class InvalidInstanceIdException < Aws::EmptyStructure; end

    # The on-premises instance name was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidInstanceNameException AWS API Documentation
    #
    class InvalidInstanceNameException < Aws::EmptyStructure; end

    # The specified instance status does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidInstanceStatusException AWS API Documentation
    #
    class InvalidInstanceStatusException < Aws::EmptyStructure; end

    # An invalid instance type was specified for instances in a blue/green
    # deployment. Valid values include "Blue" for an original environment
    # and "Green" for a replacement environment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidInstanceTypeException AWS API Documentation
    #
    class InvalidInstanceTypeException < Aws::EmptyStructure; end

    # The specified key prefix filter was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidKeyPrefixFilterException AWS API Documentation
    #
    class InvalidKeyPrefixFilterException < Aws::EmptyStructure; end

    # A lifecycle event hook is invalid. Review the `hooks` section in your
    # AppSpec file to ensure the lifecycle events and `hooks` functions are
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidLifecycleEventHookExecutionIdException AWS API Documentation
    #
    class InvalidLifecycleEventHookExecutionIdException < Aws::EmptyStructure; end

    # The result of a Lambda validation function that verifies a lifecycle
    # event is invalid. It should return `Succeeded` or `Failed`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidLifecycleEventHookExecutionStatusException AWS API Documentation
    #
    class InvalidLifecycleEventHookExecutionStatusException < Aws::EmptyStructure; end

    # An invalid load balancer name, or no load balancer name, was
    # specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidLoadBalancerInfoException AWS API Documentation
    #
    class InvalidLoadBalancerInfoException < Aws::EmptyStructure; end

    # The minimum healthy instance value was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidMinimumHealthyHostValueException AWS API Documentation
    #
    class InvalidMinimumHealthyHostValueException < Aws::EmptyStructure; end

    # The next token was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # A call was submitted that specified both OnPremisesTagFilters and
    # OnPremisesTagSet, but only one of these data types can be used in a
    # single call.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidOnPremisesTagCombinationException AWS API Documentation
    #
    class InvalidOnPremisesTagCombinationException < Aws::EmptyStructure; end

    # An invalid operation was detected.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Aws::EmptyStructure; end

    # The registration status was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidRegistrationStatusException AWS API Documentation
    #
    class InvalidRegistrationStatusException < Aws::EmptyStructure; end

    # The revision was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidRevisionException AWS API Documentation
    #
    class InvalidRevisionException < Aws::EmptyStructure; end

    # The service role ARN was specified in an invalid format. Or, if an
    # Auto Scaling group was specified, the specified service role does not
    # grant the appropriate permissions to Amazon EC2 Auto Scaling.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidRoleException AWS API Documentation
    #
    class InvalidRoleException < Aws::EmptyStructure; end

    # The column name to sort by is either not present or was specified in
    # an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidSortByException AWS API Documentation
    #
    class InvalidSortByException < Aws::EmptyStructure; end

    # The sort order was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidSortOrderException AWS API Documentation
    #
    class InvalidSortOrderException < Aws::EmptyStructure; end

    # The tag was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTagException AWS API Documentation
    #
    class InvalidTagException < Aws::EmptyStructure; end

    # The tag filter was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTagFilterException AWS API Documentation
    #
    class InvalidTagFilterException < Aws::EmptyStructure; end

    # The specified tags are not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTagsToAddException AWS API Documentation
    #
    class InvalidTagsToAddException < Aws::EmptyStructure; end

    # A target is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTargetException AWS API Documentation
    #
    class InvalidTargetException < Aws::EmptyStructure; end

    # The target filter name is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTargetFilterNameException AWS API Documentation
    #
    class InvalidTargetFilterNameException < Aws::EmptyStructure; end

    # A target group pair associated with this deployment is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTargetGroupPairException AWS API Documentation
    #
    class InvalidTargetGroupPairException < Aws::EmptyStructure; end

    # The target instance configuration is invalid. Possible causes include:
    #
    # * Configuration data for target instances was entered for an in-place
    #   deployment.
    #
    # * The limit of 10 tags for a tag type was exceeded.
    #
    # * The combined length of the tag names exceeded the limit.
    #
    # * A specified tag is not currently applied to any instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTargetInstancesException AWS API Documentation
    #
    class InvalidTargetInstancesException < Aws::EmptyStructure; end

    # The specified time range was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTimeRangeException AWS API Documentation
    #
    class InvalidTimeRangeException < Aws::EmptyStructure; end

    # The configuration that specifies how traffic is routed during a
    # deployment is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTrafficRoutingConfigurationException AWS API Documentation
    #
    class InvalidTrafficRoutingConfigurationException < Aws::EmptyStructure; end

    # The trigger was specified in an invalid format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidTriggerConfigException AWS API Documentation
    #
    class InvalidTriggerConfigException < Aws::EmptyStructure; end

    # The UpdateOutdatedInstancesOnly value is invalid. For AWS Lambda
    # deployments, `false` is expected. For EC2/On-premises deployments,
    # `true` or `false` is expected.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/InvalidUpdateOutdatedInstancesOnlyValueException AWS API Documentation
    #
    class InvalidUpdateOutdatedInstancesOnlyValueException < Aws::EmptyStructure; end

    # Information about a Lambda function specified in a deployment.
    #
    # @!attribute [rw] function_name
    #   The name of a Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_alias
    #   The alias of a Lambda function. For more information, see [AWS
    #   Lambda Function Aliases][1] in the *AWS Lambda Developer Guide*.
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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the target.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a deployment lifecycle event.
    #
    # @!attribute [rw] lifecycle_event_name
    #   The deployment lifecycle event name, such as `ApplicationStop`,
    #   `BeforeInstall`, `AfterInstall`, `ApplicationStart`, or
    #   `ValidateService`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An attempt to return the status of an already completed lifecycle
    # event occurred.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LifecycleEventAlreadyCompletedException AWS API Documentation
    #
    class LifecycleEventAlreadyCompletedException < Aws::EmptyStructure; end

    # The limit for lifecycle hooks was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/LifecycleHookLimitExceededException AWS API Documentation
    #
    class LifecycleHookLimitExceededException < Aws::EmptyStructure; end

    # Represents the input of a `ListApplicationRevisions` operation.
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
    #   * `registerTime`\: Sort by the time the revisions were registered
    #     with AWS CodeDeploy.
    #
    #   * `firstUsedTime`\: Sort by the time the revisions were first used
    #     in a deployment.
    #
    #   * `lastUsedTime`\: Sort by the time the revisions were last used in
    #     a deployment.
    #
    #   If not specified or set to null, the results are returned in an
    #   arbitrary order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to sort the list results:
    #
    #   * `ascending`\: ascending order.
    #
    #   * `descending`\: descending order.
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
    #   target revision of a deployment group:
    #
    #   * `include`\: List revisions that are target revisions of a
    #     deployment group.
    #
    #   * `exclude`\: Do not list revisions that are target revisions of a
    #     deployment group.
    #
    #   * `ignore`\: List all revisions.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListApplicationRevisions` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListApplications` operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListDeploymentConfigs` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListDeploymentConfigs` operation.
    #
    # @!attribute [rw] deployment_configs_list
    #   A list of deployment configurations, including built-in
    #   configurations such as `CodeDeployDefault.OneAtATime`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListDeploymentGroups` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListDeploymentGroups` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListDeploymentInstances` operation.
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
    #   * `Pending`\: Include those instances with pending deployments.
    #
    #   * `InProgress`\: Include those instances where deployments are still
    #     in progress.
    #
    #   * `Succeeded`\: Include those instances with successful deployments.
    #
    #   * `Failed`\: Include those instances with failed deployments.
    #
    #   * `Skipped`\: Include those instances with skipped deployments.
    #
    #   * `Unknown`\: Include those instances with deployments in an unknown
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListDeploymentInstances` operation.
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
      SENSITIVE = []
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
    #   A key used to filter the returned targets. The two valid values are:
    #
    #   * `TargetStatus` - A `TargetStatus` filter string can be `Failed`,
    #     `InProgress`, `Pending`, `Ready`, `Skipped`, `Succeeded`, or
    #     `Unknown`.
    #
    #   * `ServerInstanceLabel` - A `ServerInstanceLabel` filter string can
    #     be `Blue` or `Green`.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentTargetsInput AWS API Documentation
    #
    class ListDeploymentTargetsInput < Struct.new(
      :deployment_id,
      :next_token,
      :target_filters)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListDeployments` operation.
    #
    # @note When making an API call, you may pass ListDeploymentsInput
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         deployment_group_name: "DeploymentGroupName",
    #         external_id: "ExternalId",
    #         include_only_statuses: ["Created"], # accepts Created, Queued, InProgress, Baking, Succeeded, Failed, Stopped, Ready
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
    # @!attribute [rw] external_id
    #   The unique ID of an external resource for returning deployments
    #   linked to the external resource.
    #   @return [String]
    #
    # @!attribute [rw] include_only_statuses
    #   A subset of deployments to list by status:
    #
    #   * `Created`\: Include created deployments in the resulting list.
    #
    #   * `Queued`\: Include queued deployments in the resulting list.
    #
    #   * `In Progress`\: Include in-progress deployments in the resulting
    #     list.
    #
    #   * `Succeeded`\: Include successful deployments in the resulting
    #     list.
    #
    #   * `Failed`\: Include failed deployments in the resulting list.
    #
    #   * `Stopped`\: Include stopped deployments in the resulting list.
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
      :external_id,
      :include_only_statuses,
      :create_time_range,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListDeployments` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListGitHubAccountTokenNames` operation.
    #
    # @note When making an API call, you may pass ListGitHubAccountTokenNamesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   An identifier returned from the previous
    #   `ListGitHubAccountTokenNames` call. It can be used to return the
    #   next set of names in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListGitHubAccountTokenNamesInput AWS API Documentation
    #
    class ListGitHubAccountTokenNamesInput < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListGitHubAccountTokenNames` operation.
    #
    # @!attribute [rw] token_name_list
    #   A list of names of connections to GitHub accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a large amount of information is returned, an identifier is also
    #   returned. It can be used in a subsequent
    #   `ListGitHubAccountTokenNames` call to return the next set of names
    #   in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListGitHubAccountTokenNamesOutput AWS API Documentation
    #
    class ListGitHubAccountTokenNamesOutput < Struct.new(
      :token_name_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListOnPremisesInstances` operation.
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
    #   * `Deregistered`\: Include deregistered on-premises instances in the
    #     resulting list.
    #
    #   * `Registered`\: Include registered on-premises instances in the
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   * `HOST_COUNT`\: The minimum number of healthy instances as an
    #     absolute value.
    #
    #   * `FLEET_PERCENT`\: The minimum number of healthy instances as a
    #     percentage of the total number of instances in the deployment.
    #
    #   In an example of nine instances, if a HOST\_COUNT of six is
    #   specified, deploy to up to three instances at a time. The deployment
    #   is successful if six or more instances are deployed to successfully.
    #   Otherwise, the deployment fails. If a FLEET\_PERCENT of 40 is
    #   specified, deploy to up to five instances at a time. The deployment
    #   is successful if four or more instances are deployed to
    #   successfully. Otherwise, the deployment fails.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Both an IAM user ARN and an IAM session ARN were included in the
    # request. Use only one ARN type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/MultipleIamArnsProvidedException AWS API Documentation
    #
    class MultipleIamArnsProvidedException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The API used does not support the deployment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/OperationNotSupportedException AWS API Documentation
    #
    class OperationNotSupportedException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `RemoveTagsFromOnPremisesInstances`
    # operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The ARN of a resource is required, but was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ResourceArnRequiredException AWS API Documentation
    #
    class ResourceArnRequiredException < Aws::EmptyStructure; end

    # The specified resource could not be validated.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ResourceValidationException AWS API Documentation
    #
    class ResourceValidationException < Aws::EmptyStructure; end

    # The named revision does not exist with the IAM user or AWS account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RevisionDoesNotExistException AWS API Documentation
    #
    class RevisionDoesNotExistException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #
    #   * AppSpecContent: An `AppSpecContent` object that contains the
    #     contents of an AppSpec file for an AWS Lambda or Amazon ECS
    #     deployment. The content is formatted as JSON or YAML stored as a
    #     RawString.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The revision ID was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RevisionRequiredException AWS API Documentation
    #
    class RevisionRequiredException < Aws::EmptyStructure; end

    # The role ID was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RoleRequiredException AWS API Documentation
    #
    class RoleRequiredException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #   * `tar`\: A tar archive file.
    #
    #   * `tgz`\: A compressed tar archive file.
    #
    #   * `zip`\: A zip archive file.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `StopDeployment` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `StopDeployment` operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of tags was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagLimitExceededException AWS API Documentation
    #
    class TagLimitExceededException < Aws::EmptyStructure; end

    # A tag was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagRequiredException AWS API Documentation
    #
    class TagRequiredException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The number of tag groups included in the tag set list exceeded the
    # maximum allowed limit of 3.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TagSetListLimitExceededException AWS API Documentation
    #
    class TagSetListLimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Cannot be used in the same call as `ec2TagSet`.
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
    #   in the same call as `tagFilters`.
    #   @return [Types::EC2TagSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TargetInstances AWS API Documentation
    #
    class TargetInstances < Struct.new(
      :tag_filters,
      :auto_scaling_groups,
      :ec2_tag_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # An API function was called too frequently.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # A configuration that shifts traffic from one version of a Lambda
    # function or ECS task set to another in two increments. The original
    # and target Lambda function versions or ECS task sets are specified in
    # the deployment's AppSpec file.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration that shifts traffic from one version of a Lambda
    # function or ECS task set to another in equal increments, with an equal
    # number of minutes between each increment. The original and target
    # Lambda function versions or ECS task sets are specified in the
    # deployment's AppSpec file.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of one listener. The listener
    #   identifies the route between a target group and a load balancer.
    #   This is an array of strings with a maximum size of one.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TrafficRoute AWS API Documentation
    #
    class TrafficRoute < Struct.new(
      :listener_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that specifies how traffic is shifted from one
    # version of a Lambda function to another version during an AWS Lambda
    # deployment, or from one Amazon ECS task set to another during an
    # Amazon ECS deployment.
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
    #   `TimeBasedLinear`) used by a deployment configuration.
    #   @return [String]
    #
    # @!attribute [rw] time_based_canary
    #   A configuration that shifts traffic from one version of a Lambda
    #   function or ECS task set to another in two increments. The original
    #   and target Lambda function versions or ECS task sets are specified
    #   in the deployment's AppSpec file.
    #   @return [Types::TimeBasedCanary]
    #
    # @!attribute [rw] time_based_linear
    #   A configuration that shifts traffic from one version of a Lambda
    #   function or ECS task set to another in equal increments, with an
    #   equal number of minutes between each increment. The original and
    #   target Lambda function versions or ECS task sets are specified in
    #   the deployment's AppSpec file.
    #   @return [Types::TimeBasedLinear]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TrafficRoutingConfig AWS API Documentation
    #
    class TrafficRoutingConfig < Struct.new(
      :type,
      :time_based_canary,
      :time_based_linear)
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service topic through which notifications about deployment or
    #   instance events are sent.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of triggers was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/TriggerTargetsLimitExceededException AWS API Documentation
    #
    class TriggerTargetsLimitExceededException < Aws::EmptyStructure; end

    # A call was submitted that is not supported for the specified
    # deployment type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UnsupportedActionForDeploymentTypeException AWS API Documentation
    #
    class UnsupportedActionForDeploymentTypeException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["Key"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that specifies from which resource to
    #   disassociate the tags with the keys in the `TagKeys` input
    #   parameter.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # Represents the input of an `UpdateApplication` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an `UpdateDeploymentGroup` operation.
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
    #   updated. For examples, see [Edit a Trigger in a CodeDeploy
    #   Deployment Group][1] in the *AWS CodeDeploy User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of an `UpdateDeploymentGroup` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
