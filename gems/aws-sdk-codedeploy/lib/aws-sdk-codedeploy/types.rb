# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CodeDeploy
    module Types

      # Represents the input of, and adds tags to, an on-premises instance
      # operation.
      # @note When making an API call, pass AddTagsToOnPremisesInstancesInput
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
      class AddTagsToOnPremisesInstancesInput < Struct.new(
        :tags,
        :instance_names)
        include Aws::Structure
      end

      # Information about an application.
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
      #   application; otherwise, false.
      #   @return [Boolean]
      class ApplicationInfo < Struct.new(
        :application_id,
        :application_name,
        :create_time,
        :linked_to_git_hub)
        include Aws::Structure
      end

      # Information about an Auto Scaling group.
      # @!attribute [rw] name
      #   The Auto Scaling group name.
      #   @return [String]
      #
      # @!attribute [rw] hook
      #   An Auto Scaling lifecycle event hook name.
      #   @return [String]
      class AutoScalingGroup < Struct.new(
        :name,
        :hook)
        include Aws::Structure
      end

      # Represents the input of a batch get application revisions operation.
      # @note When making an API call, pass BatchGetApplicationRevisionsInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         revisions: [ # required
      #           {
      #             revision_type: "S3", # accepts S3, GitHub
      #             s3_location: {
      #               bucket: "S3Bucket",
      #               key: "S3Key",
      #               bundle_type: "tar", # accepts tar, tgz, zip
      #               version: "VersionId",
      #               e_tag: "ETag",
      #             },
      #             git_hub_location: {
      #               repository: "Repository",
      #               commit_id: "CommitId",
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application about which to get
      #   revision information.
      #   @return [String]
      #
      # @!attribute [rw] revisions
      #   Information to get about the application revisions, including type
      #   and location.
      #   @return [Array<Types::RevisionLocation>]
      class BatchGetApplicationRevisionsInput < Struct.new(
        :application_name,
        :revisions)
        include Aws::Structure
      end

      # Represents the output of a batch get application revisions operation.
      # @!attribute [rw] application_name
      #   The name of the application that corresponds to the revisions.
      #   @return [String]
      #
      # @!attribute [rw] error_message
      #   Information about errors that may have occurred during the API call.
      #   @return [String]
      #
      # @!attribute [rw] revisions
      #   Additional information about the revisions, including the type and
      #   location.
      #   @return [Array<Types::RevisionInfo>]
      class BatchGetApplicationRevisionsOutput < Struct.new(
        :application_name,
        :error_message,
        :revisions)
        include Aws::Structure
      end

      # Represents the input of a batch get applications operation.
      # @note When making an API call, pass BatchGetApplicationsInput
      #   data as a hash:
      #
      #       {
      #         application_names: ["ApplicationName"],
      #       }
      # @!attribute [rw] application_names
      #   A list of application names separated by spaces.
      #   @return [Array<String>]
      class BatchGetApplicationsInput < Struct.new(
        :application_names)
        include Aws::Structure
      end

      # Represents the output of a batch get applications operation.
      # @!attribute [rw] applications_info
      #   Information about the applications.
      #   @return [Array<Types::ApplicationInfo>]
      class BatchGetApplicationsOutput < Struct.new(
        :applications_info)
        include Aws::Structure
      end

      # Represents the input of a batch get deployment groups operation.
      # @note When making an API call, pass BatchGetDeploymentGroupsInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         deployment_group_names: ["DeploymentGroupName"], # required
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      #
      # @!attribute [rw] deployment_group_names
      #   The deployment groups' names.
      #   @return [Array<String>]
      class BatchGetDeploymentGroupsInput < Struct.new(
        :application_name,
        :deployment_group_names)
        include Aws::Structure
      end

      # Represents the output of a batch get deployment groups operation.
      # @!attribute [rw] deployment_groups_info
      #   Information about the deployment groups.
      #   @return [Array<Types::DeploymentGroupInfo>]
      #
      # @!attribute [rw] error_message
      #   Information about errors that may have occurred during the API call.
      #   @return [String]
      class BatchGetDeploymentGroupsOutput < Struct.new(
        :deployment_groups_info,
        :error_message)
        include Aws::Structure
      end

      # Represents the input of a batch get deployment instances operation.
      # @note When making an API call, pass BatchGetDeploymentInstancesInput
      #   data as a hash:
      #
      #       {
      #         deployment_id: "DeploymentId", # required
      #         instance_ids: ["InstanceId"], # required
      #       }
      # @!attribute [rw] deployment_id
      #   The unique ID of a deployment.
      #   @return [String]
      #
      # @!attribute [rw] instance_ids
      #   The unique IDs of instances in the deployment group.
      #   @return [Array<String>]
      class BatchGetDeploymentInstancesInput < Struct.new(
        :deployment_id,
        :instance_ids)
        include Aws::Structure
      end

      # Represents the output of a batch get deployment instance operation.
      # @!attribute [rw] instances_summary
      #   Information about the instance.
      #   @return [Array<Types::InstanceSummary>]
      #
      # @!attribute [rw] error_message
      #   Information about errors that may have occurred during the API call.
      #   @return [String]
      class BatchGetDeploymentInstancesOutput < Struct.new(
        :instances_summary,
        :error_message)
        include Aws::Structure
      end

      # Represents the input of a batch get deployments operation.
      # @note When making an API call, pass BatchGetDeploymentsInput
      #   data as a hash:
      #
      #       {
      #         deployment_ids: ["DeploymentId"],
      #       }
      # @!attribute [rw] deployment_ids
      #   A list of deployment IDs, separated by spaces.
      #   @return [Array<String>]
      class BatchGetDeploymentsInput < Struct.new(
        :deployment_ids)
        include Aws::Structure
      end

      # Represents the output of a batch get deployments operation.
      # @!attribute [rw] deployments_info
      #   Information about the deployments.
      #   @return [Array<Types::DeploymentInfo>]
      class BatchGetDeploymentsOutput < Struct.new(
        :deployments_info)
        include Aws::Structure
      end

      # Represents the input of a batch get on-premises instances operation.
      # @note When making an API call, pass BatchGetOnPremisesInstancesInput
      #   data as a hash:
      #
      #       {
      #         instance_names: ["InstanceName"],
      #       }
      # @!attribute [rw] instance_names
      #   The names of the on-premises instances about which to get
      #   information.
      #   @return [Array<String>]
      class BatchGetOnPremisesInstancesInput < Struct.new(
        :instance_names)
        include Aws::Structure
      end

      # Represents the output of a batch get on-premises instances operation.
      # @!attribute [rw] instance_infos
      #   Information about the on-premises instances.
      #   @return [Array<Types::InstanceInfo>]
      class BatchGetOnPremisesInstancesOutput < Struct.new(
        :instance_infos)
        include Aws::Structure
      end

      # Represents the input of a create application operation.
      # @note When making an API call, pass CreateApplicationInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #       }
      # @!attribute [rw] application_name
      #   The name of the application. This name must be unique with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      class CreateApplicationInput < Struct.new(
        :application_name)
        include Aws::Structure
      end

      # Represents the output of a create application operation.
      # @!attribute [rw] application_id
      #   A unique application ID.
      #   @return [String]
      class CreateApplicationOutput < Struct.new(
        :application_id)
        include Aws::Structure
      end

      # Represents the input of a create deployment configuration operation.
      # @note When making an API call, pass CreateDeploymentConfigInput
      #   data as a hash:
      #
      #       {
      #         deployment_config_name: "DeploymentConfigName", # required
      #         minimum_healthy_hosts: {
      #           value: 1,
      #           type: "HOST_COUNT", # accepts HOST_COUNT, FLEET_PERCENT
      #         },
      #       }
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
      class CreateDeploymentConfigInput < Struct.new(
        :deployment_config_name,
        :minimum_healthy_hosts)
        include Aws::Structure
      end

      # Represents the output of a create deployment configuration operation.
      # @!attribute [rw] deployment_config_id
      #   A unique deployment configuration ID.
      #   @return [String]
      class CreateDeploymentConfigOutput < Struct.new(
        :deployment_config_id)
        include Aws::Structure
      end

      # Represents the input of a create deployment group operation.
      # @note When making an API call, pass CreateDeploymentGroupInput
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
      #             trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, InstanceStart, InstanceSuccess, InstanceFailure
      #           },
      #         ],
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
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
      #   <note markdown="1"> CodeDeployDefault.OneAtATime is the default deployment
      #   configuration. It is used if a configuration isn't specified for
      #   the deployment or the deployment group.
      #
      #    </note>
      #
      #   The predefined deployment configurations include the following:
      #
      #   * **CodeDeployDefault.AllAtOnce** attempts to deploy an application
      #     revision to as many instance as possible at once. The status of
      #     the overall deployment will be displayed as **Succeeded** if the
      #     application revision is deployed to one or more of the instances.
      #     The status of the overall deployment will be displayed as
      #     **Failed** if the application revision is not deployed to any of
      #     the instances. Using an example of nine instance,
      #     CodeDeployDefault.AllAtOnce will attempt to deploy to all nine
      #     instance at once. The overall deployment will succeed if
      #     deployment to even a single instance is successful; it will fail
      #     only if deployments to all nine instance fail.
      #
      #   * **CodeDeployDefault.HalfAtATime** deploys to up to half of the
      #     instances at a time (with fractions rounded down). The overall
      #     deployment succeeds if the application revision is deployed to at
      #     least half of the instances (with fractions rounded up);
      #     otherwise, the deployment fails. In the example of nine instances,
      #     it will deploy to up to four instance at a time. The overall
      #     deployment succeeds if deployment to five or more instances
      #     succeed; otherwise, the deployment fails. The deployment may be
      #     successfully deployed to some instances even if the overall
      #     deployment fails.
      #
      #   * **CodeDeployDefault.OneAtATime** deploys the application revision
      #     to only one instance at a time.
      #
      #     For deployment groups that contain more than one instance:
      #
      #     * The overall deployment succeeds if the application revision is
      #       deployed to all of the instances. The exception to this rule is
      #       if deployment to the last instance fails, the overall deployment
      #       still succeeds. This is because AWS CodeDeploy allows only one
      #       instance at a time to be taken offline with the
      #       CodeDeployDefault.OneAtATime configuration.
      #
      #     * The overall deployment fails as soon as the application revision
      #       fails to be deployed to any but the last instance. The
      #       deployment may be successfully deployed to some instances even
      #       if the overall deployment fails.
      #
      #     * In an example using nine instance, it will deploy to one
      #       instance at a time. The overall deployment succeeds if
      #       deployment to the first eight instance is successful; the
      #       overall deployment fails if deployment to any of the first eight
      #       instance fails.
      #
      #     For deployment groups that contain only one instance, the overall
      #     deployment is successful only if deployment to the single instance
      #     is successful
      #   @return [String]
      #
      # @!attribute [rw] ec2_tag_filters
      #   The Amazon EC2 tags on which to filter.
      #   @return [Array<Types::EC2TagFilter>]
      #
      # @!attribute [rw] on_premises_instance_tag_filters
      #   The on-premises instance tags on which to filter.
      #   @return [Array<Types::TagFilter>]
      #
      # @!attribute [rw] auto_scaling_groups
      #   A list of associated Auto Scaling groups.
      #   @return [Array<String>]
      #
      # @!attribute [rw] service_role_arn
      #   A service role ARN that allows AWS CodeDeploy to act on the user's
      #   behalf when interacting with AWS services.
      #   @return [String]
      #
      # @!attribute [rw] trigger_configurations
      #   Information about triggers to create when the deployment group is
      #   created.
      #   @return [Array<Types::TriggerConfig>]
      class CreateDeploymentGroupInput < Struct.new(
        :application_name,
        :deployment_group_name,
        :deployment_config_name,
        :ec2_tag_filters,
        :on_premises_instance_tag_filters,
        :auto_scaling_groups,
        :service_role_arn,
        :trigger_configurations)
        include Aws::Structure
      end

      # Represents the output of a create deployment group operation.
      # @!attribute [rw] deployment_group_id
      #   A unique deployment group ID.
      #   @return [String]
      class CreateDeploymentGroupOutput < Struct.new(
        :deployment_group_id)
        include Aws::Structure
      end

      # Represents the input of a create deployment operation.
      # @note When making an API call, pass CreateDeploymentInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         deployment_group_name: "DeploymentGroupName",
      #         revision: {
      #           revision_type: "S3", # accepts S3, GitHub
      #           s3_location: {
      #             bucket: "S3Bucket",
      #             key: "S3Key",
      #             bundle_type: "tar", # accepts tar, tgz, zip
      #             version: "VersionId",
      #             e_tag: "ETag",
      #           },
      #           git_hub_location: {
      #             repository: "Repository",
      #             commit_id: "CommitId",
      #           },
      #         },
      #         deployment_config_name: "DeploymentConfigName",
      #         description: "Description",
      #         ignore_application_stop_failures: false,
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
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
      #   The name of a deployment configuration associated with the
      #   applicable IAM user or AWS account.
      #
      #   If not specified, the value configured in the deployment group will
      #   be used as the default. If the deployment group does not have a
      #   deployment configuration associated with it, then
      #   CodeDeployDefault.OneAtATime will be used by default.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A comment about the deployment.
      #   @return [String]
      #
      # @!attribute [rw] ignore_application_stop_failures
      #   If set to true, then if the deployment causes the ApplicationStop
      #   deployment lifecycle event to an instance to fail, the deployment to
      #   that instance will not be considered to have failed at that point
      #   and will continue on to the BeforeInstall deployment lifecycle
      #   event.
      #
      #   If set to false or not specified, then if the deployment causes the
      #   ApplicationStop deployment lifecycle event to fail to an instance,
      #   the deployment to that instance will stop, and the deployment to
      #   that instance will be considered to have failed.
      #   @return [Boolean]
      class CreateDeploymentInput < Struct.new(
        :application_name,
        :deployment_group_name,
        :revision,
        :deployment_config_name,
        :description,
        :ignore_application_stop_failures)
        include Aws::Structure
      end

      # Represents the output of a create deployment operation.
      # @!attribute [rw] deployment_id
      #   A unique deployment ID.
      #   @return [String]
      class CreateDeploymentOutput < Struct.new(
        :deployment_id)
        include Aws::Structure
      end

      # Represents the input of a delete application operation.
      # @note When making an API call, pass DeleteApplicationInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      class DeleteApplicationInput < Struct.new(
        :application_name)
        include Aws::Structure
      end

      # Represents the input of a delete deployment configuration operation.
      # @note When making an API call, pass DeleteDeploymentConfigInput
      #   data as a hash:
      #
      #       {
      #         deployment_config_name: "DeploymentConfigName", # required
      #       }
      # @!attribute [rw] deployment_config_name
      #   The name of a deployment configuration associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      class DeleteDeploymentConfigInput < Struct.new(
        :deployment_config_name)
        include Aws::Structure
      end

      # Represents the input of a delete deployment group operation.
      # @note When making an API call, pass DeleteDeploymentGroupInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         deployment_group_name: "DeploymentGroupName", # required
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      #
      # @!attribute [rw] deployment_group_name
      #   The name of an existing deployment group for the specified
      #   application.
      #   @return [String]
      class DeleteDeploymentGroupInput < Struct.new(
        :application_name,
        :deployment_group_name)
        include Aws::Structure
      end

      # Represents the output of a delete deployment group operation.
      # @!attribute [rw] hooks_not_cleaned_up
      #   If the output contains no data, and the corresponding deployment
      #   group contained at least one Auto Scaling group, AWS CodeDeploy
      #   successfully removed all corresponding Auto Scaling lifecycle event
      #   hooks from the Amazon EC2 instances in the Auto Scaling group. If
      #   the output contains data, AWS CodeDeploy could not remove some Auto
      #   Scaling lifecycle event hooks from the Amazon EC2 instances in the
      #   Auto Scaling group.
      #   @return [Array<Types::AutoScalingGroup>]
      class DeleteDeploymentGroupOutput < Struct.new(
        :hooks_not_cleaned_up)
        include Aws::Structure
      end

      # Information about a deployment configuration.
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
      class DeploymentConfigInfo < Struct.new(
        :deployment_config_id,
        :deployment_config_name,
        :minimum_healthy_hosts,
        :create_time)
        include Aws::Structure
      end

      # Information about a deployment group.
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
      #   The Amazon EC2 tags on which to filter.
      #   @return [Array<Types::EC2TagFilter>]
      #
      # @!attribute [rw] on_premises_instance_tag_filters
      #   The on-premises instance tags on which to filter.
      #   @return [Array<Types::TagFilter>]
      #
      # @!attribute [rw] auto_scaling_groups
      #   A list of associated Auto Scaling groups.
      #   @return [Array<Types::AutoScalingGroup>]
      #
      # @!attribute [rw] service_role_arn
      #   A service role ARN.
      #   @return [String]
      #
      # @!attribute [rw] target_revision
      #   Information about the deployment group's target revision, including
      #   type and location.
      #   @return [Types::RevisionLocation]
      #
      # @!attribute [rw] trigger_configurations
      #   A list of associated triggers.
      #   @return [Array<Types::TriggerConfig>]
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
        :trigger_configurations)
        include Aws::Structure
      end

      # Information about a deployment.
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
      #   The deployment ID.
      #   @return [String]
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
      #   A timestamp indicating when the deployment was created.
      #   @return [Time]
      #
      # @!attribute [rw] start_time
      #   A timestamp indicating when the deployment was deployed to the
      #   deployment group.
      #
      #   In some cases, the reported value of the start time may be later
      #   than the complete time. This is due to differences in the clock
      #   settings of back-end servers that participate in the deployment
      #   process.
      #   @return [Time]
      #
      # @!attribute [rw] complete_time
      #   A timestamp indicating when the deployment was complete.
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
      #   * autoscaling: Auto Scaling created the deployment.
      #   @return [String]
      #
      # @!attribute [rw] ignore_application_stop_failures
      #   If true, then if the deployment causes the ApplicationStop
      #   deployment lifecycle event to an instance to fail, the deployment to
      #   that instance will not be considered to have failed at that point
      #   and will continue on to the BeforeInstall deployment lifecycle
      #   event.
      #
      #   If false or not specified, then if the deployment causes the
      #   ApplicationStop deployment lifecycle event to an instance to fail,
      #   the deployment to that instance will stop, and the deployment to
      #   that instance will be considered to have failed.
      #   @return [Boolean]
      class DeploymentInfo < Struct.new(
        :application_name,
        :deployment_group_name,
        :deployment_config_name,
        :deployment_id,
        :revision,
        :status,
        :error_information,
        :create_time,
        :start_time,
        :complete_time,
        :deployment_overview,
        :description,
        :creator,
        :ignore_application_stop_failures)
        include Aws::Structure
      end

      # Information about the deployment status of the instances in the
      # deployment.
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
      class DeploymentOverview < Struct.new(
        :pending,
        :in_progress,
        :succeeded,
        :failed,
        :skipped)
        include Aws::Structure
      end

      # Represents the input of a deregister on-premises instance operation.
      # @note When making an API call, pass DeregisterOnPremisesInstanceInput
      #   data as a hash:
      #
      #       {
      #         instance_name: "InstanceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the on-premises instance to deregister.
      #   @return [String]
      class DeregisterOnPremisesInstanceInput < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # Diagnostic information about executable scripts that are part of a
      # deployment.
      # @!attribute [rw] error_code
      #   The associated error code:
      #
      #   * Success: The specified script ran.
      #   * ScriptMissing: The specified script was not found in the specified
      #     location.
      #   * ScriptNotExecutable: The specified script is not a recognized
      #     executable file type.
      #   * ScriptTimedOut: The specified script did not finish running in the
      #     specified time period.
      #   * ScriptFailed: The specified script failed to run as expected.
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
      class Diagnostics < Struct.new(
        :error_code,
        :script_name,
        :message,
        :log_tail)
        include Aws::Structure
      end

      # Information about a tag filter.
      # @note When making an API call, pass EC2TagFilter
      #   data as a hash:
      #
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       }
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
      #   * VALUE\_ONLY: Value only.
      #   * KEY\_AND\_VALUE: Key and value.
      #   @return [String]
      class EC2TagFilter < Struct.new(
        :key,
        :value,
        :type)
        include Aws::Structure
      end

      # Information about a deployment error.
      # @!attribute [rw] code
      #   The error code:
      #
      #   * APPLICATION\_MISSING: The application was missing. This error code
      #     will most likely be raised if the application is deleted after the
      #     deployment is created but before it is started.
      #   * DEPLOYMENT\_GROUP\_MISSING: The deployment group was missing. This
      #     error code will most likely be raised if the deployment group is
      #     deleted after the deployment is created but before it is started.
      #   * HEALTH\_CONSTRAINTS: The deployment failed on too many instances
      #     to be successfully deployed within the instance health constraints
      #     specified.
      #   * HEALTH\_CONSTRAINTS\_INVALID: The revision cannot be successfully
      #     deployed within the instance health constraints specified.
      #   * IAM\_ROLE\_MISSING: The service role cannot be accessed.
      #   * IAM\_ROLE\_PERMISSIONS: The service role does not have the correct
      #     permissions.
      #   * INTERNAL\_ERROR: There was an internal error.
      #   * NO\_EC2\_SUBSCRIPTION: The calling account is not subscribed to
      #     the Amazon EC2 service.
      #   * NO\_INSTANCES: No instance were specified, or no instance can be
      #     found.
      #   * OVER\_MAX\_INSTANCES: The maximum number of instance was exceeded.
      #   * THROTTLED: The operation was throttled because the calling account
      #     exceeded the throttling limits of one or more AWS services.
      #   * TIMEOUT: The deployment has timed out.
      #   * REVISION\_MISSING: The revision ID was missing. This error code
      #     will most likely be raised if the revision is deleted after the
      #     deployment is created but before it is started.
      #   @return [String]
      #
      # @!attribute [rw] message
      #   An accompanying error message.
      #   @return [String]
      class ErrorInformation < Struct.new(
        :code,
        :message)
        include Aws::Structure
      end

      # Information about an application revision.
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
      class GenericRevisionInfo < Struct.new(
        :description,
        :deployment_groups,
        :first_used_time,
        :last_used_time,
        :register_time)
        include Aws::Structure
      end

      # Represents the input of a get application operation.
      # @note When making an API call, pass GetApplicationInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      class GetApplicationInput < Struct.new(
        :application_name)
        include Aws::Structure
      end

      # Represents the output of a get application operation.
      # @!attribute [rw] application
      #   Information about the application.
      #   @return [Types::ApplicationInfo]
      class GetApplicationOutput < Struct.new(
        :application)
        include Aws::Structure
      end

      # Represents the input of a get application revision operation.
      # @note When making an API call, pass GetApplicationRevisionInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         revision: { # required
      #           revision_type: "S3", # accepts S3, GitHub
      #           s3_location: {
      #             bucket: "S3Bucket",
      #             key: "S3Key",
      #             bundle_type: "tar", # accepts tar, tgz, zip
      #             version: "VersionId",
      #             e_tag: "ETag",
      #           },
      #           git_hub_location: {
      #             repository: "Repository",
      #             commit_id: "CommitId",
      #           },
      #         },
      #       }
      # @!attribute [rw] application_name
      #   The name of the application that corresponds to the revision.
      #   @return [String]
      #
      # @!attribute [rw] revision
      #   Information about the application revision to get, including type
      #   and location.
      #   @return [Types::RevisionLocation]
      class GetApplicationRevisionInput < Struct.new(
        :application_name,
        :revision)
        include Aws::Structure
      end

      # Represents the output of a get application revision operation.
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
      class GetApplicationRevisionOutput < Struct.new(
        :application_name,
        :revision,
        :revision_info)
        include Aws::Structure
      end

      # Represents the input of a get deployment configuration operation.
      # @note When making an API call, pass GetDeploymentConfigInput
      #   data as a hash:
      #
      #       {
      #         deployment_config_name: "DeploymentConfigName", # required
      #       }
      # @!attribute [rw] deployment_config_name
      #   The name of a deployment configuration associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      class GetDeploymentConfigInput < Struct.new(
        :deployment_config_name)
        include Aws::Structure
      end

      # Represents the output of a get deployment configuration operation.
      # @!attribute [rw] deployment_config_info
      #   Information about the deployment configuration.
      #   @return [Types::DeploymentConfigInfo]
      class GetDeploymentConfigOutput < Struct.new(
        :deployment_config_info)
        include Aws::Structure
      end

      # Represents the input of a get deployment group operation.
      # @note When making an API call, pass GetDeploymentGroupInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         deployment_group_name: "DeploymentGroupName", # required
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      #
      # @!attribute [rw] deployment_group_name
      #   The name of an existing deployment group for the specified
      #   application.
      #   @return [String]
      class GetDeploymentGroupInput < Struct.new(
        :application_name,
        :deployment_group_name)
        include Aws::Structure
      end

      # Represents the output of a get deployment group operation.
      # @!attribute [rw] deployment_group_info
      #   Information about the deployment group.
      #   @return [Types::DeploymentGroupInfo]
      class GetDeploymentGroupOutput < Struct.new(
        :deployment_group_info)
        include Aws::Structure
      end

      # Represents the input of a get deployment operation.
      # @note When making an API call, pass GetDeploymentInput
      #   data as a hash:
      #
      #       {
      #         deployment_id: "DeploymentId", # required
      #       }
      # @!attribute [rw] deployment_id
      #   A deployment ID associated with the applicable IAM user or AWS
      #   account.
      #   @return [String]
      class GetDeploymentInput < Struct.new(
        :deployment_id)
        include Aws::Structure
      end

      # Represents the input of a get deployment instance operation.
      # @note When making an API call, pass GetDeploymentInstanceInput
      #   data as a hash:
      #
      #       {
      #         deployment_id: "DeploymentId", # required
      #         instance_id: "InstanceId", # required
      #       }
      # @!attribute [rw] deployment_id
      #   The unique ID of a deployment.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The unique ID of an instance in the deployment group.
      #   @return [String]
      class GetDeploymentInstanceInput < Struct.new(
        :deployment_id,
        :instance_id)
        include Aws::Structure
      end

      # Represents the output of a get deployment instance operation.
      # @!attribute [rw] instance_summary
      #   Information about the instance.
      #   @return [Types::InstanceSummary]
      class GetDeploymentInstanceOutput < Struct.new(
        :instance_summary)
        include Aws::Structure
      end

      # Represents the output of a get deployment operation.
      # @!attribute [rw] deployment_info
      #   Information about the deployment.
      #   @return [Types::DeploymentInfo]
      class GetDeploymentOutput < Struct.new(
        :deployment_info)
        include Aws::Structure
      end

      # Represents the input of a get on-premises instance operation.
      # @note When making an API call, pass GetOnPremisesInstanceInput
      #   data as a hash:
      #
      #       {
      #         instance_name: "InstanceName", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the on-premises instance about which to get information.
      #   @return [String]
      class GetOnPremisesInstanceInput < Struct.new(
        :instance_name)
        include Aws::Structure
      end

      # Represents the output of a get on-premises instance operation.
      # @!attribute [rw] instance_info
      #   Information about the on-premises instance.
      #   @return [Types::InstanceInfo]
      class GetOnPremisesInstanceOutput < Struct.new(
        :instance_info)
        include Aws::Structure
      end

      # Information about the location of application artifacts stored in
      # GitHub.
      # @note When making an API call, pass GitHubLocation
      #   data as a hash:
      #
      #       {
      #         repository: "Repository",
      #         commit_id: "CommitId",
      #       }
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
      class GitHubLocation < Struct.new(
        :repository,
        :commit_id)
        include Aws::Structure
      end

      # Information about an on-premises instance.
      # @!attribute [rw] instance_name
      #   The name of the on-premises instance.
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
      class InstanceInfo < Struct.new(
        :instance_name,
        :iam_user_arn,
        :instance_arn,
        :register_time,
        :deregister_time,
        :tags)
        include Aws::Structure
      end

      # Information about an instance in a deployment.
      # @!attribute [rw] deployment_id
      #   The deployment ID.
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
      #   * In Progress: The deployment is in progress for this instance.
      #   * Succeeded: The deployment has succeeded for this instance.
      #   * Failed: The deployment has failed for this instance.
      #   * Skipped: The deployment has been skipped for this instance.
      #   * Unknown: The deployment status is unknown for this instance.
      #   @return [String]
      #
      # @!attribute [rw] last_updated_at
      #   A timestamp indicating when the instance information was last
      #   updated.
      #   @return [Time]
      #
      # @!attribute [rw] lifecycle_events
      #   A list of lifecycle events for this instance.
      #   @return [Array<Types::LifecycleEvent>]
      class InstanceSummary < Struct.new(
        :deployment_id,
        :instance_id,
        :status,
        :last_updated_at,
        :lifecycle_events)
        include Aws::Structure
      end

      # Information about a deployment lifecycle event.
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
      #   A timestamp indicating when the deployment lifecycle event started.
      #   @return [Time]
      #
      # @!attribute [rw] end_time
      #   A timestamp indicating when the deployment lifecycle event ended.
      #   @return [Time]
      #
      # @!attribute [rw] status
      #   The deployment lifecycle event status:
      #
      #   * Pending: The deployment lifecycle event is pending.
      #   * InProgress: The deployment lifecycle event is in progress.
      #   * Succeeded: The deployment lifecycle event ran successfully.
      #   * Failed: The deployment lifecycle event has failed.
      #   * Skipped: The deployment lifecycle event has been skipped.
      #   * Unknown: The deployment lifecycle event is unknown.
      #   @return [String]
      class LifecycleEvent < Struct.new(
        :lifecycle_event_name,
        :diagnostics,
        :start_time,
        :end_time,
        :status)
        include Aws::Structure
      end

      # Represents the input of a list application revisions operation.
      # @note When making an API call, pass ListApplicationRevisionsInput
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
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      #
      # @!attribute [rw] sort_by
      #   The column name to use to sort the list results:
      #
      #   * registerTime: Sort by the time the revisions were registered with
      #     AWS CodeDeploy.
      #   * firstUsedTime: Sort by the time the revisions were first used in a
      #     deployment.
      #   * lastUsedTime: Sort by the time the revisions were last used in a
      #     deployment.
      #
      #   If not specified or set to null, the results will be returned in an
      #   arbitrary order.
      #   @return [String]
      #
      # @!attribute [rw] sort_order
      #   The order in which to sort the list results:
      #
      #   * ascending: ascending order.
      #   * descending: descending order.
      #
      #   If not specified, the results will be sorted in ascending order.
      #
      #   If set to null, the results will be sorted in an arbitrary order.
      #   @return [String]
      #
      # @!attribute [rw] s3_bucket
      #   An Amazon S3 bucket name to limit the search for revisions.
      #
      #   If set to null, all of the user's buckets will be searched.
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
      #   * exclude: Do not list revisions that are target revisions of a
      #     deployment group.
      #   * ignore: List all revisions.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   An identifier returned from the previous list application revisions
      #   call. It can be used to return the next set of applications in the
      #   list.
      #   @return [String]
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

      # Represents the output of a list application revisions operation.
      # @!attribute [rw] revisions
      #   A list of locations that contain the matching revisions.
      #   @return [Array<Types::RevisionLocation>]
      #
      # @!attribute [rw] next_token
      #   If a large amount of information is returned, an identifier will
      #   also be returned. It can be used in a subsequent list application
      #   revisions call to return the next set of application revisions in
      #   the list.
      #   @return [String]
      class ListApplicationRevisionsOutput < Struct.new(
        :revisions,
        :next_token)
        include Aws::Structure
      end

      # Represents the input of a list applications operation.
      # @note When making an API call, pass ListApplicationsInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] next_token
      #   An identifier returned from the previous list applications call. It
      #   can be used to return the next set of applications in the list.
      #   @return [String]
      class ListApplicationsInput < Struct.new(
        :next_token)
        include Aws::Structure
      end

      # Represents the output of a list applications operation.
      # @!attribute [rw] applications
      #   A list of application names.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If a large amount of information is returned, an identifier is also
      #   returned. It can be used in a subsequent list applications call to
      #   return the next set of applications, will also be returned. in the
      #   list.
      #   @return [String]
      class ListApplicationsOutput < Struct.new(
        :applications,
        :next_token)
        include Aws::Structure
      end

      # Represents the input of a list deployment configurations operation.
      # @note When making an API call, pass ListDeploymentConfigsInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] next_token
      #   An identifier returned from the previous list deployment
      #   configurations call. It can be used to return the next set of
      #   deployment configurations in the list.
      #   @return [String]
      class ListDeploymentConfigsInput < Struct.new(
        :next_token)
        include Aws::Structure
      end

      # Represents the output of a list deployment configurations operation.
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
      class ListDeploymentConfigsOutput < Struct.new(
        :deployment_configs_list,
        :next_token)
        include Aws::Structure
      end

      # Represents the input of a list deployment groups operation.
      # @note When making an API call, pass ListDeploymentGroupsInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   An identifier returned from the previous list deployment groups
      #   call. It can be used to return the next set of deployment groups in
      #   the list.
      #   @return [String]
      class ListDeploymentGroupsInput < Struct.new(
        :application_name,
        :next_token)
        include Aws::Structure
      end

      # Represents the output of a list deployment groups operation.
      # @!attribute [rw] application_name
      #   The application name.
      #   @return [String]
      #
      # @!attribute [rw] deployment_groups
      #   A list of corresponding deployment group names.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If a large amount of information is returned, an identifier is also
      #   returned. It can be used in a subsequent list deployment groups call
      #   to return the next set of deployment groups in the list.
      #   @return [String]
      class ListDeploymentGroupsOutput < Struct.new(
        :application_name,
        :deployment_groups,
        :next_token)
        include Aws::Structure
      end

      # Represents the input of a list deployment instances operation.
      # @note When making an API call, pass ListDeploymentInstancesInput
      #   data as a hash:
      #
      #       {
      #         deployment_id: "DeploymentId", # required
      #         next_token: "NextToken",
      #         instance_status_filter: ["Pending"], # accepts Pending, InProgress, Succeeded, Failed, Skipped, Unknown
      #       }
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
      #   * Pending: Include those instance with pending deployments.
      #   * InProgress: Include those instance where deployments are still in
      #     progress.
      #   * Succeeded: Include those instances with successful deployments.
      #   * Failed: Include those instance with failed deployments.
      #   * Skipped: Include those instance with skipped deployments.
      #   * Unknown: Include those instance with deployments in an unknown
      #     state.
      #   @return [Array<String>]
      class ListDeploymentInstancesInput < Struct.new(
        :deployment_id,
        :next_token,
        :instance_status_filter)
        include Aws::Structure
      end

      # Represents the output of a list deployment instances operation.
      # @!attribute [rw] instances_list
      #   A list of instance IDs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If a large amount of information is returned, an identifier is also
      #   returned. It can be used in a subsequent list deployment instances
      #   call to return the next set of deployment instances in the list.
      #   @return [String]
      class ListDeploymentInstancesOutput < Struct.new(
        :instances_list,
        :next_token)
        include Aws::Structure
      end

      # Represents the input of a list deployments operation.
      # @note When making an API call, pass ListDeploymentsInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         deployment_group_name: "DeploymentGroupName",
      #         include_only_statuses: ["Created"], # accepts Created, Queued, InProgress, Succeeded, Failed, Stopped
      #         create_time_range: {
      #           start: Time.now,
      #           end: Time.now,
      #         },
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      #   @return [String]
      #
      # @!attribute [rw] deployment_group_name
      #   The name of an existing deployment group for the specified
      #   application.
      #   @return [String]
      #
      # @!attribute [rw] include_only_statuses
      #   A subset of deployments to list by status:
      #
      #   * Created: Include created deployments in the resulting list.
      #   * Queued: Include queued deployments in the resulting list.
      #   * In Progress: Include in-progress deployments in the resulting
      #     list.
      #   * Succeeded: Include successful deployments in the resulting list.
      #   * Failed: Include failed deployments in the resulting list.
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
      class ListDeploymentsInput < Struct.new(
        :application_name,
        :deployment_group_name,
        :include_only_statuses,
        :create_time_range,
        :next_token)
        include Aws::Structure
      end

      # Represents the output of a list deployments operation.
      # @!attribute [rw] deployments
      #   A list of deployment IDs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If a large amount of information is returned, an identifier is also
      #   returned. It can be used in a subsequent list deployments call to
      #   return the next set of deployments in the list.
      #   @return [String]
      class ListDeploymentsOutput < Struct.new(
        :deployments,
        :next_token)
        include Aws::Structure
      end

      # Represents the input of a list on-premises instances operation.
      #
      # .
      # @note When making an API call, pass ListOnPremisesInstancesInput
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
      # @!attribute [rw] registration_status
      #   The registration status of the on-premises instances:
      #
      #   * Deregistered: Include deregistered on-premises instances in the
      #     resulting list.
      #   * Registered: Include registered on-premises instances in the
      #     resulting list.
      #   @return [String]
      #
      # @!attribute [rw] tag_filters
      #   The on-premises instance tags that will be used to restrict the
      #   corresponding on-premises instance names returned.
      #   @return [Array<Types::TagFilter>]
      #
      # @!attribute [rw] next_token
      #   An identifier returned from the previous list on-premises instances
      #   call. It can be used to return the next set of on-premises instances
      #   in the list.
      #   @return [String]
      class ListOnPremisesInstancesInput < Struct.new(
        :registration_status,
        :tag_filters,
        :next_token)
        include Aws::Structure
      end

      # Represents the output of list on-premises instances operation.
      # @!attribute [rw] instance_names
      #   The list of matching on-premises instance names.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If a large amount of information is returned, an identifier is also
      #   returned. It can be used in a subsequent list on-premises instances
      #   call to return the next set of on-premises instances in the list.
      #   @return [String]
      class ListOnPremisesInstancesOutput < Struct.new(
        :instance_names,
        :next_token)
        include Aws::Structure
      end

      # Information about minimum healthy instance.
      # @note When making an API call, pass MinimumHealthyHosts
      #   data as a hash:
      #
      #       {
      #         value: 1,
      #         type: "HOST_COUNT", # accepts HOST_COUNT, FLEET_PERCENT
      #       }
      # @!attribute [rw] value
      #   The minimum healthy instance value.
      #   @return [Integer]
      #
      # @!attribute [rw] type
      #   The minimum healthy instance type:
      #
      #   * HOST\_COUNT: The minimum number of healthy instance as an absolute
      #     value.
      #   * FLEET\_PERCENT: The minimum number of healthy instance as a
      #     percentage of the total number of instance in the deployment.
      #
      #   In an example of nine instance, if a HOST\_COUNT of six is
      #   specified, deploy to up to three instances at a time. The deployment
      #   will be successful if six or more instances are deployed to
      #   successfully; otherwise, the deployment fails. If a FLEET\_PERCENT
      #   of 40 is specified, deploy to up to five instance at a time. The
      #   deployment will be successful if four or more instance are deployed
      #   to successfully; otherwise, the deployment fails.
      #
      #   <note>In a call to the get deployment configuration operation, CodeDeployDefault.OneAtATime will return a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This means a deployment to only one instance at a time. (You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy will try to ensure that all instances but one are kept in a healthy state during the deployment. Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment still succeeds.</note>
      #   @return [String]
      class MinimumHealthyHosts < Struct.new(
        :value,
        :type)
        include Aws::Structure
      end

      # Represents the input of a register application revision operation.
      # @note When making an API call, pass RegisterApplicationRevisionInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         description: "Description",
      #         revision: { # required
      #           revision_type: "S3", # accepts S3, GitHub
      #           s3_location: {
      #             bucket: "S3Bucket",
      #             key: "S3Key",
      #             bundle_type: "tar", # accepts tar, tgz, zip
      #             version: "VersionId",
      #             e_tag: "ETag",
      #           },
      #           git_hub_location: {
      #             repository: "Repository",
      #             commit_id: "CommitId",
      #           },
      #         },
      #       }
      # @!attribute [rw] application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
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
      class RegisterApplicationRevisionInput < Struct.new(
        :application_name,
        :description,
        :revision)
        include Aws::Structure
      end

      # Represents the input of the register on-premises instance operation.
      # @note When making an API call, pass RegisterOnPremisesInstanceInput
      #   data as a hash:
      #
      #       {
      #         instance_name: "InstanceName", # required
      #         iam_user_arn: "IamUserArn", # required
      #       }
      # @!attribute [rw] instance_name
      #   The name of the on-premises instance to register.
      #   @return [String]
      #
      # @!attribute [rw] iam_user_arn
      #   The ARN of the IAM user to associate with the on-premises instance.
      #   @return [String]
      class RegisterOnPremisesInstanceInput < Struct.new(
        :instance_name,
        :iam_user_arn)
        include Aws::Structure
      end

      # Represents the input of a remove tags from on-premises instances
      # operation.
      # @note When making an API call, pass RemoveTagsFromOnPremisesInstancesInput
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
      # @!attribute [rw] tags
      #   The tag key-value pairs to remove from the on-premises instances.
      #   @return [Array<Types::Tag>]
      #
      # @!attribute [rw] instance_names
      #   The names of the on-premises instances from which to remove tags.
      #   @return [Array<String>]
      class RemoveTagsFromOnPremisesInstancesInput < Struct.new(
        :tags,
        :instance_names)
        include Aws::Structure
      end

      # Information about an application revision.
      # @!attribute [rw] revision_location
      #   Information about the location of an application revision.
      #   @return [Types::RevisionLocation]
      #
      # @!attribute [rw] generic_revision_info
      #   Information about an application revision.
      #   @return [Types::GenericRevisionInfo]
      class RevisionInfo < Struct.new(
        :revision_location,
        :generic_revision_info)
        include Aws::Structure
      end

      # Information about the location of an application revision.
      # @note When making an API call, pass RevisionLocation
      #   data as a hash:
      #
      #       {
      #         revision_type: "S3", # accepts S3, GitHub
      #         s3_location: {
      #           bucket: "S3Bucket",
      #           key: "S3Key",
      #           bundle_type: "tar", # accepts tar, tgz, zip
      #           version: "VersionId",
      #           e_tag: "ETag",
      #         },
      #         git_hub_location: {
      #           repository: "Repository",
      #           commit_id: "CommitId",
      #         },
      #       }
      # @!attribute [rw] revision_type
      #   The type of application revision:
      #
      #   * S3: An application revision stored in Amazon S3.
      #   * GitHub: An application revision stored in GitHub.
      #   @return [String]
      #
      # @!attribute [rw] s3_location
      #   Information about the location of application artifacts stored in
      #   Amazon S3.
      #   @return [Types::S3Location]
      #
      # @!attribute [rw] git_hub_location
      #   Information about the location of application artifacts stored in
      #   GitHub.
      #   @return [Types::GitHubLocation]
      class RevisionLocation < Struct.new(
        :revision_type,
        :s3_location,
        :git_hub_location)
        include Aws::Structure
      end

      # Information about the location of application artifacts stored in
      # Amazon S3.
      # @note When making an API call, pass S3Location
      #   data as a hash:
      #
      #       {
      #         bucket: "S3Bucket",
      #         key: "S3Key",
      #         bundle_type: "tar", # accepts tar, tgz, zip
      #         version: "VersionId",
      #         e_tag: "ETag",
      #       }
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
      #   * tgz: A compressed tar archive file.
      #   * zip: A zip archive file.
      #   @return [String]
      #
      # @!attribute [rw] version
      #   A specific version of the Amazon S3 object that represents the
      #   bundled artifacts for the application revision.
      #
      #   If the version is not specified, the system will use the most recent
      #   version by default.
      #   @return [String]
      #
      # @!attribute [rw] e_tag
      #   The ETag of the Amazon S3 object that represents the bundled
      #   artifacts for the application revision.
      #
      #   If the ETag is not specified as an input parameter, ETag validation
      #   of the object will be skipped.
      #   @return [String]
      class S3Location < Struct.new(
        :bucket,
        :key,
        :bundle_type,
        :version,
        :e_tag)
        include Aws::Structure
      end

      # Represents the input of a stop deployment operation.
      # @note When making an API call, pass StopDeploymentInput
      #   data as a hash:
      #
      #       {
      #         deployment_id: "DeploymentId", # required
      #       }
      # @!attribute [rw] deployment_id
      #   The unique ID of a deployment.
      #   @return [String]
      class StopDeploymentInput < Struct.new(
        :deployment_id)
        include Aws::Structure
      end

      # Represents the output of a stop deployment operation.
      # @!attribute [rw] status
      #   The status of the stop deployment operation:
      #
      #   * Pending: The stop operation is pending.
      #   * Succeeded: The stop operation was successful.
      #   @return [String]
      #
      # @!attribute [rw] status_message
      #   An accompanying status message.
      #   @return [String]
      class StopDeploymentOutput < Struct.new(
        :status,
        :status_message)
        include Aws::Structure
      end

      # Information about a tag.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "Key",
      #         value: "Value",
      #       }
      # @!attribute [rw] key
      #   The tag's key.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The tag's value.
      #   @return [String]
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # Information about an on-premises instance tag filter.
      # @note When making an API call, pass TagFilter
      #   data as a hash:
      #
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       }
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
      #   * VALUE\_ONLY: Value only.
      #   * KEY\_AND\_VALUE: Key and value.
      #   @return [String]
      class TagFilter < Struct.new(
        :key,
        :value,
        :type)
        include Aws::Structure
      end

      # Information about a time range.
      # @note When making an API call, pass TimeRange
      #   data as a hash:
      #
      #       {
      #         start: Time.now,
      #         end: Time.now,
      #       }
      # @!attribute [rw] start
      #   The start time of the time range.
      #
      #   <note>Specify null to leave the start time open-ended.</note>
      #   @return [Time]
      #
      # @!attribute [rw] end
      #   The end time of the time range.
      #
      #   <note>Specify null to leave the end time open-ended.</note>
      #   @return [Time]
      class TimeRange < Struct.new(
        :start,
        :end)
        include Aws::Structure
      end

      # Information about notification triggers for the deployment group.
      # @note When making an API call, pass TriggerConfig
      #   data as a hash:
      #
      #       {
      #         trigger_name: "TriggerName",
      #         trigger_target_arn: "TriggerTargetArn",
      #         trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, InstanceStart, InstanceSuccess, InstanceFailure
      #       }
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
      #
      #   The following event type values are supported:
      #
      #   * DEPLOYMENT\_START
      #   * DEPLOYMENT\_SUCCESS
      #   * DEPLOYMENT\_FAILURE
      #   * DEPLOYMENT\_STOP
      #   * INSTANCE\_START
      #   * INSTANCE\_SUCCESS
      #   * INSTANCE\_FAILURE
      #   @return [Array<String>]
      class TriggerConfig < Struct.new(
        :trigger_name,
        :trigger_target_arn,
        :trigger_events)
        include Aws::Structure
      end

      # Represents the input of an update application operation.
      # @note When making an API call, pass UpdateApplicationInput
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         new_application_name: "ApplicationName",
      #       }
      # @!attribute [rw] application_name
      #   The current name of the application you want to change.
      #   @return [String]
      #
      # @!attribute [rw] new_application_name
      #   The new name to give the application.
      #   @return [String]
      class UpdateApplicationInput < Struct.new(
        :application_name,
        :new_application_name)
        include Aws::Structure
      end

      # Represents the input of an update deployment group operation.
      # @note When making an API call, pass UpdateDeploymentGroupInput
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
      #             trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, InstanceStart, InstanceSuccess, InstanceFailure
      #           },
      #         ],
      #       }
      # @!attribute [rw] application_name
      #   The application name corresponding to the deployment group to
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
      #   updated.
      #   @return [Array<Types::TriggerConfig>]
      class UpdateDeploymentGroupInput < Struct.new(
        :application_name,
        :current_deployment_group_name,
        :new_deployment_group_name,
        :deployment_config_name,
        :ec2_tag_filters,
        :on_premises_instance_tag_filters,
        :auto_scaling_groups,
        :service_role_arn,
        :trigger_configurations)
        include Aws::Structure
      end

      # Represents the output of an update deployment group operation.
      # @!attribute [rw] hooks_not_cleaned_up
      #   If the output contains no data, and the corresponding deployment
      #   group contained at least one Auto Scaling group, AWS CodeDeploy
      #   successfully removed all corresponding Auto Scaling lifecycle event
      #   hooks from the AWS account. If the output contains data, AWS
      #   CodeDeploy could not remove some Auto Scaling lifecycle event hooks
      #   from the AWS account.
      #   @return [Array<Types::AutoScalingGroup>]
      class UpdateDeploymentGroupOutput < Struct.new(
        :hooks_not_cleaned_up)
        include Aws::Structure
      end

    end
  end
end
