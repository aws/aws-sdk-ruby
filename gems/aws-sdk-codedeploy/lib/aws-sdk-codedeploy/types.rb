# frozen_string_literal: true

# This is generated code!

module Aws::CodeDeploy
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents the input of, and adds tags to, an on-premises instance operation.</p>
    # @!attribute tags
    #   <p>The tag key-value pairs to add to the on-premises instances.</p>
    #            <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only
    #               tags are not allowed.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute instance_names
    #   <p>The names of the on-premises instances to which to add tags.</p>
    #   @return [Array<String>]
    class AddTagsToOnPremisesInstancesInput < Struct.new(
      nil,
      :tags,
      :instance_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an alarm.</p>
    # @!attribute name
    #   <p>The name of the alarm. Maximum length is 255 characters. Each alarm name can be used
    #               only once in a list of alarms.</p>
    #   @return [String]
    class Alarm < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about alarms associated with a deployment or deployment group.</p>
    # @!attribute enabled
    #   <p>Indicates whether the alarm configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute ignore_poll_alarm_failure
    #   <p>Indicates whether a deployment should continue if information about the current state
    #               of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: The deployment proceeds even if alarm status information
    #                       can't be retrieved from Amazon CloudWatch.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: The deployment stops if alarm status information can't be
    #                       retrieved from Amazon CloudWatch.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute alarms
    #   <p>A list of alarms configured for the deployment or deployment group. A maximum of 10
    #               alarms can be added.</p>
    #   @return [Array<Types::Alarm>]
    class AlarmConfiguration < Struct.new(
      nil,
      :enabled,
      :ignore_poll_alarm_failure,
      :alarms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        options[:ignore_poll_alarm_failure] = false unless options.key?(:ignore_poll_alarm_failure)
        super
      end
    end

    # <p>The maximum number of alarms for a deployment group (10) was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class AlarmsLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A revision for an Lambda or Amazon ECS deployment that is a
    #             YAML-formatted or JSON-formatted string. For Lambda and Amazon ECS deployments, the revision is the same as the AppSpec file. This method replaces the
    #             deprecated <code>RawString</code> data type. </p>
    # @!attribute content
    #   <p> The YAML-formatted or JSON-formatted revision string. </p>
    #            <p> For an Lambda deployment, the content includes a Lambda
    #               function name, the alias for its original version, and the alias for its replacement
    #               version. The deployment shifts traffic from the original version of the Lambda function to the replacement version. </p>
    #            <p> For an Amazon ECS deployment, the content includes the task name, information
    #               about the load balancer that serves traffic to the container, and more. </p>
    #            <p> For both types of deployments, the content can specify Lambda functions
    #               that run at specified hooks, such as <code>BeforeInstall</code>, during a deployment.
    #           </p>
    #   @return [String]
    # @!attribute sha256
    #   <p> The SHA256 hash value of the revision content. </p>
    #   @return [String]
    class AppSpecContent < Struct.new(
      nil,
      :content,
      :sha256,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An application with the specified name with the user or Amazon Web Services account
    #             already exists.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ApplicationAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The application does not exist with the user or Amazon Web Services account.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ApplicationDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an application.</p>
    # @!attribute application_id
    #   <p>The application ID.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the application was created.</p>
    #   @return [Time]
    # @!attribute linked_to_git_hub
    #   <p>True if the user has authenticated with GitHub for the specified application.
    #               Otherwise, false.</p>
    #   @return [Boolean]
    # @!attribute git_hub_account_name
    #   <p>The name for a connection to a GitHub account.</p>
    #   @return [String]
    # @!attribute compute_platform
    #   <p>The destination platform type for deployment of the application (<code>Lambda</code> or <code>Server</code>).</p>
    #   @return [String]
    class ApplicationInfo < Struct.new(
      nil,
      :application_id,
      :application_name,
      :create_time,
      :linked_to_git_hub,
      :git_hub_account_name,
      :compute_platform,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:linked_to_git_hub] = false unless options.key?(:linked_to_git_hub)
        super
      end
    end

    # <p>More applications were attempted to be created than are allowed.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ApplicationLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum number of required application names was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ApplicationNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified ARN is not supported. For example, it might be an ARN for a resource
    #             that is not expected. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ArnNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a configuration for automatically rolling back to a previous version
    #             of an application revision when a deployment is not completed successfully.</p>
    # @!attribute enabled
    #   <p>Indicates whether a defined automatic rollback configuration is currently
    #               enabled.</p>
    #   @return [Boolean]
    # @!attribute events
    #   <p>The event type or types that trigger a rollback.</p>
    #   @return [Array<String>]
    class AutoRollbackConfiguration < Struct.new(
      nil,
      :enabled,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Information about an Auto Scaling group.</p>
    # @!attribute name
    #   <p>The Auto Scaling group name.</p>
    #   @return [String]
    # @!attribute hook
    #   <p>The name of the launch hook that CodeDeploy installed into the Auto Scaling group.</p>
    #            <p>For more information about the launch hook, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors">How Amazon EC2 Auto Scaling works with CodeDeploy</a> in the
    #                       <i>CodeDeploy User Guide</i>.</p>
    #   @return [String]
    # @!attribute termination_hook
    #   <p>The name of the termination hook that CodeDeploy installed into the Auto Scaling group.</p>
    #            <p>For more information about the termination hook, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable">Enabling termination deployments during Auto Scaling scale-in events</a> in the
    #               <i>CodeDeploy User Guide</i>.</p>
    #   @return [String]
    class AutoScalingGroup < Struct.new(
      nil,
      :name,
      :hook,
      :termination_hook,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>BatchGetApplicationRevisions</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application about which to get revision
    #               information.</p>
    #   @return [String]
    # @!attribute revisions
    #   <p>An array of <code>RevisionLocation</code> objects that specify information to get
    #               about the application revisions, including type and location. The maximum number of
    #                   <code>RevisionLocation</code> objects you can specify is 25.</p>
    #   @return [Array<Types::RevisionLocation>]
    class BatchGetApplicationRevisionsInput < Struct.new(
      nil,
      :application_name,
      :revisions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchGetApplicationRevisions</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of the application that corresponds to the revisions.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Information about errors that might have occurred during the API call.</p>
    #   @return [String]
    # @!attribute revisions
    #   <p>Additional information about the revisions, including the type and location.</p>
    #   @return [Array<Types::RevisionInfo>]
    class BatchGetApplicationRevisionsOutput < Struct.new(
      nil,
      :application_name,
      :error_message,
      :revisions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>BatchGetApplications</code> operation.</p>
    # @!attribute application_names
    #   <p>A list of application names separated by spaces. The maximum number of application
    #               names you can specify is 100.</p>
    #   @return [Array<String>]
    class BatchGetApplicationsInput < Struct.new(
      nil,
      :application_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchGetApplications</code> operation.</p>
    # @!attribute applications_info
    #   <p>Information about the applications.</p>
    #   @return [Array<Types::ApplicationInfo>]
    class BatchGetApplicationsOutput < Struct.new(
      nil,
      :applications_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>BatchGetDeploymentGroups</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the applicable user
    #               or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute deployment_group_names
    #   <p>The names of the deployment groups.</p>
    #   @return [Array<String>]
    class BatchGetDeploymentGroupsInput < Struct.new(
      nil,
      :application_name,
      :deployment_group_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchGetDeploymentGroups</code> operation.</p>
    # @!attribute deployment_groups_info
    #   <p>Information about the deployment groups.</p>
    #   @return [Array<Types::DeploymentGroupInfo>]
    # @!attribute error_message
    #   <p>Information about errors that might have occurred during the API call.</p>
    #   @return [String]
    class BatchGetDeploymentGroupsOutput < Struct.new(
      nil,
      :deployment_groups_info,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>BatchGetDeploymentInstances</code> operation. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>The unique IDs of instances used in the deployment. The maximum number of instance IDs
    #               you can specify is 25.</p>
    #   @return [Array<String>]
    class BatchGetDeploymentInstancesInput < Struct.new(
      nil,
      :deployment_id,
      :instance_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchGetDeploymentInstances</code> operation.</p>
    # @!attribute instances_summary
    #   <p>Information about the instance.</p>
    #   @return [Array<Types::InstanceSummary>]
    # @!attribute error_message
    #   <p>Information about errors that might have occurred during the API call.</p>
    #   @return [String]
    class BatchGetDeploymentInstancesOutput < Struct.new(
      nil,
      :instances_summary,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute target_ids
    #   <p> The unique IDs of the deployment targets. The compute platform of the deployment
    #               determines the type of the targets and their formats. The maximum number of deployment
    #               target IDs you can specify is 25.</p>
    #            <ul>
    #               <li>
    #                  <p> For deployments that use the EC2/On-premises compute platform, the target IDs
    #                       are Amazon EC2 or on-premises instances IDs, and their target type is
    #                           <code>instanceTarget</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For deployments that use the Lambda compute platform, the
    #                       target IDs are the names of Lambda functions, and their target type
    #                       is <code>instanceTarget</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For deployments that use the Amazon ECS compute platform, the target
    #                       IDs are pairs of Amazon ECS clusters and services specified using the
    #                       format <code><clustername>:<servicename></code>. Their target type
    #                       is <code>ecsTarget</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For deployments that are deployed with CloudFormation, the target IDs are
    #                           CloudFormation stack IDs. Their target type is
    #                           <code>cloudFormationTarget</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class BatchGetDeploymentTargetsInput < Struct.new(
      nil,
      :deployment_id,
      :target_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_targets
    #   <p> A list of target objects for a deployment. Each target object contains details about
    #               the target, such as its status and lifecycle events. The type of the target objects
    #               depends on the deployment' compute platform. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>EC2/On-premises</b>: Each target object is an
    #                           Amazon EC2 or on-premises instance. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Lambda</b>: The target object is a
    #                       specific version of an Lambda function. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon ECS</b>: The target object is an
    #                           Amazon ECS service. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CloudFormation</b>: The target object is
    #                       an CloudFormation blue/green deployment. </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::DeploymentTarget>]
    class BatchGetDeploymentTargetsOutput < Struct.new(
      nil,
      :deployment_targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>BatchGetDeployments</code> operation. </p>
    # @!attribute deployment_ids
    #   <p> A list of deployment IDs, separated by spaces. The maximum number of deployment IDs
    #               you can specify is 25.</p>
    #   @return [Array<String>]
    class BatchGetDeploymentsInput < Struct.new(
      nil,
      :deployment_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>BatchGetDeployments</code> operation. </p>
    # @!attribute deployments_info
    #   <p> Information about the deployments. </p>
    #   @return [Array<Types::DeploymentInfo>]
    class BatchGetDeploymentsOutput < Struct.new(
      nil,
      :deployments_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>BatchGetOnPremisesInstances</code> operation.</p>
    # @!attribute instance_names
    #   <p>The names of the on-premises instances about which to get information. The maximum
    #               number of instance names you can specify is 25.</p>
    #   @return [Array<String>]
    class BatchGetOnPremisesInstancesInput < Struct.new(
      nil,
      :instance_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchGetOnPremisesInstances</code> operation.</p>
    # @!attribute instance_infos
    #   <p>Information about the on-premises instances.</p>
    #   @return [Array<Types::InstanceInfo>]
    class BatchGetOnPremisesInstancesOutput < Struct.new(
      nil,
      :instance_infos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of names or IDs allowed for this request (100) was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class BatchLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about blue/green deployment options for a deployment group.</p>
    # @!attribute terminate_blue_instances_on_deployment_success
    #   <p>Information about whether to terminate instances in the original fleet during a
    #               blue/green deployment.</p>
    #   @return [Types::BlueInstanceTerminationOption]
    # @!attribute deployment_ready_option
    #   <p>Information about the action to take when newly provisioned instances are ready to
    #               receive traffic in a blue/green deployment.</p>
    #   @return [Types::DeploymentReadyOption]
    # @!attribute green_fleet_provisioning_option
    #   <p>Information about how instances are provisioned for a replacement environment in a
    #               blue/green deployment.</p>
    #   @return [Types::GreenFleetProvisioningOption]
    class BlueGreenDeploymentConfiguration < Struct.new(
      nil,
      :terminate_blue_instances_on_deployment_success,
      :deployment_ready_option,
      :green_fleet_provisioning_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about whether instances in the original environment are terminated when a
    #             blue/green deployment is successful. <code>BlueInstanceTerminationOption</code> does not
    #             apply to Lambda deployments. </p>
    # @!attribute action
    #   <p>The action to take on instances in the original environment after a successful
    #               blue/green deployment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code>: Instances are terminated after a specified wait
    #                       time.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KEEP_ALIVE</code>: Instances are left running after they are
    #                       deregistered from the load balancer and removed from the deployment
    #                       group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute termination_wait_time_in_minutes
    #   <p>For an Amazon EC2 deployment, the number of minutes to wait after a successful
    #               blue/green deployment before terminating instances from the original environment.</p>
    #            <p> For an Amazon ECS deployment, the number of minutes before deleting the
    #               original (blue) task set. During an Amazon ECS deployment, CodeDeploy shifts
    #               traffic from the original (blue) task set to a replacement (green) task set. </p>
    #            <p> The maximum setting is 2880 minutes (2 days). </p>
    #   @return [Integer]
    class BlueInstanceTerminationOption < Struct.new(
      nil,
      :action,
      :termination_wait_time_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:termination_wait_time_in_minutes] = 0 unless options.key?(:termination_wait_time_in_minutes)
        super
      end
    end

    # <p>A bucket name is required, but was not provided.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class BucketNameFilterRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about the target to be updated by an CloudFormation blue/green
    #             deployment. This target type is used for all deployments initiated by a CloudFormation stack update.</p>
    # @!attribute deployment_id
    #   <p>The unique ID of an CloudFormation blue/green deployment.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p> The unique ID of a deployment target that has a type
    #                   of <code>CloudFormationTarget</code>. </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p> The date and time when the target application was updated by an CloudFormation
    #               blue/green deployment. </p>
    #   @return [Time]
    # @!attribute lifecycle_events
    #   <p> The lifecycle events of the CloudFormation blue/green deployment to this target
    #               application. </p>
    #   @return [Array<Types::LifecycleEvent>]
    # @!attribute status
    #   <p> The status of an CloudFormation blue/green deployment's target application.
    #           </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type for the CloudFormation blue/green deployment.</p>
    #   @return [String]
    # @!attribute target_version_weight
    #   <p>The percentage of production traffic that the target version of an CloudFormation
    #               blue/green deployment receives.</p>
    #   @return [Float]
    class CloudFormationTarget < Struct.new(
      nil,
      :deployment_id,
      :target_id,
      :last_updated_at,
      :lifecycle_events,
      :status,
      :resource_type,
      :target_version_weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:target_version_weight] = 0 unless options.key?(:target_version_weight)
        super
      end
    end

    # @!attribute deployment_id
    #   <p> The unique ID of a blue/green deployment for which you want to start rerouting
    #               traffic to the replacement environment. </p>
    #   @return [String]
    # @!attribute deployment_wait_type
    #   <p> The status of the deployment's waiting period. <code>READY_WAIT</code> indicates that
    #               the deployment is ready to start shifting traffic. <code>TERMINATION_WAIT</code>
    #               indicates that the traffic is shifted, but the original target is not terminated.
    #           </p>
    #   @return [String]
    class ContinueDeploymentInput < Struct.new(
      nil,
      :deployment_id,
      :deployment_wait_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateApplication</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of the application. This name must be unique with the applicable user or
    #                   Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute compute_platform
    #   <p> The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p> The metadata that you apply to CodeDeploy applications to help you organize and
    #               categorize them. Each tag consists of a key and an optional value, both of which you
    #               define. </p>
    #   @return [Array<Types::Tag>]
    class CreateApplicationInput < Struct.new(
      nil,
      :application_name,
      :compute_platform,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateApplication</code> operation.</p>
    # @!attribute application_id
    #   <p>A unique application ID.</p>
    #   @return [String]
    class CreateApplicationOutput < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateDeploymentConfig</code> operation.</p>
    # @!attribute deployment_config_name
    #   <p>The name of the deployment configuration to create.</p>
    #   @return [String]
    # @!attribute minimum_healthy_hosts
    #   <p>The minimum number of healthy instances that should be available at any time during
    #               the deployment. There are two parameters expected in the input: type and value.</p>
    #            <p>The type parameter takes either of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>HOST_COUNT: The value parameter represents the minimum number of healthy
    #                       instances as an absolute value.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy
    #                       instances as a percentage of the total number of instances in the deployment. If
    #                       you specify FLEET_PERCENT, at the start of the deployment, CodeDeploy converts the percentage to the equivalent number of instances and rounds up
    #                       fractional instances.</p>
    #               </li>
    #            </ul>
    #            <p>The value parameter takes an integer.</p>
    #            <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT
    #               and a value of 95.</p>
    #   @return [Types::MinimumHealthyHosts]
    # @!attribute traffic_routing_config
    #   <p>The configuration that specifies how the deployment traffic is routed.</p>
    #   @return [Types::TrafficRoutingConfig]
    # @!attribute compute_platform
    #   <p>The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #   @return [String]
    # @!attribute zonal_config
    #   <p>Configure the <code>ZonalConfig</code> object if you want CodeDeploy to
    #               deploy your application to one <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-availability-zones">Availability Zone</a> at a time, within an Amazon Web Services Region.</p>
    #            <p>For more information about the zonal configuration feature, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config">zonal configuration</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    #   @return [Types::ZonalConfig]
    class CreateDeploymentConfigInput < Struct.new(
      nil,
      :deployment_config_name,
      :minimum_healthy_hosts,
      :traffic_routing_config,
      :compute_platform,
      :zonal_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateDeploymentConfig</code> operation.</p>
    # @!attribute deployment_config_id
    #   <p>A unique deployment configuration ID.</p>
    #   @return [String]
    class CreateDeploymentConfigOutput < Struct.new(
      nil,
      :deployment_config_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateDeploymentGroup</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p>The name of a new deployment group for the specified application.</p>
    #   @return [String]
    # @!attribute deployment_config_name
    #   <p>If specified, the deployment configuration name can be either one of the predefined
    #               configurations provided with CodeDeploy or a custom deployment configuration
    #               that you create by calling the create deployment configuration operation.</p>
    #            <p>
    #               <code>CodeDeployDefault.OneAtATime</code> is the default deployment configuration. It
    #               is used if a configuration isn't specified for the deployment or deployment
    #               group.</p>
    #            <p>For more information about the predefined deployment configurations in CodeDeploy, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html">Working with
    #                   Deployment Configurations in CodeDeploy</a> in the <i>CodeDeploy User Guide</i>.</p>
    #   @return [String]
    # @!attribute ec2_tag_filters
    #   <p>The Amazon EC2 tags on which to filter. The deployment group includes Amazon EC2 instances with any of the specified tags. Cannot be used in the same call
    #               as ec2TagSet.</p>
    #   @return [Array<Types::EC2TagFilter>]
    # @!attribute on_premises_instance_tag_filters
    #   <p>The on-premises instance tags on which to filter. The deployment group includes
    #               on-premises instances with any of the specified tags. Cannot be used in the same call as
    #                   <code>OnPremisesTagSet</code>.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute auto_scaling_groups
    #   <p>A list of associated Amazon EC2 Auto Scaling groups.</p>
    #   @return [Array<String>]
    # @!attribute service_role_arn
    #   <p>A service role Amazon Resource Name (ARN) that allows CodeDeploy to act on
    #               the user's behalf when interacting with Amazon Web Services services.</p>
    #   @return [String]
    # @!attribute trigger_configurations
    #   <p>Information about triggers to create when the deployment group is created. For
    #               examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html">Create a Trigger for an
    #                       CodeDeploy Event</a> in the <i>CodeDeploy
    #                   User Guide</i>.</p>
    #   @return [Array<Types::TriggerConfig>]
    # @!attribute alarm_configuration
    #   <p>Information to add about Amazon CloudWatch alarms when the deployment group is
    #               created.</p>
    #   @return [Types::AlarmConfiguration]
    # @!attribute auto_rollback_configuration
    #   <p>Configuration information for an automatic rollback that is added when a deployment
    #               group is created.</p>
    #   @return [Types::AutoRollbackConfiguration]
    # @!attribute outdated_instances_strategy
    #   <p>Indicates what happens when new Amazon EC2 instances are launched
    #               mid-deployment and do not receive the deployed application revision.</p>
    #            <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new Amazon EC2 instances.</p>
    #            <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new Amazon EC2 instances. This may result in instances
    #               having different revisions.</p>
    #   @return [String]
    # @!attribute deployment_style
    #   <p>Information about the type of deployment, in-place or blue/green, that you want to run
    #               and whether to route deployment traffic behind a load balancer.</p>
    #   @return [Types::DeploymentStyle]
    # @!attribute blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    #   @return [Types::BlueGreenDeploymentConfiguration]
    # @!attribute load_balancer_info
    #   <p>Information about the load balancer used in a deployment.</p>
    #   @return [Types::LoadBalancerInfo]
    # @!attribute ec2_tag_set
    #   <p>Information about groups of tags applied to Amazon EC2 instances. The
    #               deployment group includes only Amazon EC2 instances identified by all the tag
    #               groups. Cannot be used in the same call as <code>ec2TagFilters</code>.</p>
    #   @return [Types::EC2TagSet]
    # @!attribute ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name
    #               pair using the format <code><clustername>:<servicename></code>. </p>
    #   @return [Array<Types::ECSService>]
    # @!attribute on_premises_tag_set
    #   <p>Information about groups of tags applied to on-premises instances. The deployment
    #               group includes only on-premises instances identified by all of the tag groups. Cannot be
    #               used in the same call as <code>onPremisesInstanceTagFilters</code>.</p>
    #   @return [Types::OnPremisesTagSet]
    # @!attribute tags
    #   <p> The metadata that you apply to CodeDeploy deployment groups to help you organize and
    #               categorize them. Each tag consists of a key and an optional value, both of which you
    #               define. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute termination_hook_enabled
    #   <p>This parameter only applies if you are using CodeDeploy with Amazon EC2 Auto Scaling. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html">Integrating
    #                       CodeDeploy with Amazon EC2 Auto Scaling</a> in the <i>CodeDeploy User Guide</i>.</p>
    #            <p>Set <code>terminationHookEnabled</code> to <code>true</code> to have CodeDeploy install a termination hook into your Auto Scaling group when you create a
    #               deployment group. When this hook is installed, CodeDeploy will perform
    #               termination deployments.</p>
    #            <p>For information about termination deployments, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable">Enabling termination deployments during Auto Scaling scale-in events</a> in the
    #                       <i>CodeDeploy User Guide</i>.</p>
    #            <p>For more information about Auto Scaling scale-in events, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in">Scale in</a> topic in the <i>Amazon EC2 Auto Scaling User
    #               Guide</i>.</p>
    #   @return [Boolean]
    class CreateDeploymentGroupInput < Struct.new(
      nil,
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
      :outdated_instances_strategy,
      :deployment_style,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :ec2_tag_set,
      :ecs_services,
      :on_premises_tag_set,
      :tags,
      :termination_hook_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateDeploymentGroup</code> operation.</p>
    # @!attribute deployment_group_id
    #   <p>A unique deployment group ID.</p>
    #   @return [String]
    class CreateDeploymentGroupOutput < Struct.new(
      nil,
      :deployment_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateDeployment</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p>The name of the deployment group.</p>
    #   @return [String]
    # @!attribute revision
    #   <p> The type and location of the revision to deploy. </p>
    #   @return [Types::RevisionLocation]
    # @!attribute deployment_config_name
    #   <p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>
    #            <p>If not specified, the value configured in the deployment group is used as the default.
    #               If the deployment group does not have a deployment configuration associated with it,
    #                   <code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by default.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A comment about the deployment.</p>
    #   @return [String]
    # @!attribute ignore_application_stop_failures
    #   <p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or
    #                   <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then
    #               the deployment continues to the next deployment lifecycle event. For example, if
    #                   <code>ApplicationStop</code> fails, the deployment continues with
    #                   <code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails, the
    #               deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code>
    #               fails, the deployment continues with <code>ApplicationStop</code>. </p>
    #            <p> If false or not specified, then if a lifecycle event fails during a deployment to an
    #               instance, that deployment fails. If deployment to that instance is part of an overall
    #               deployment and the number of healthy hosts is not less than the minimum number of
    #               healthy hosts, then a deployment to the next instance is attempted. </p>
    #            <p> During a deployment, the CodeDeploy agent runs the scripts specified for
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful
    #               deployment. (All other scripts are run from the AppSpec file in the current deployment.)
    #               If one of these scripts contains an error and does not run successfully, the deployment
    #               can fail. </p>
    #            <p> If the cause of the failure is a script from the last successful deployment that will
    #               never run successfully, create a new deployment and use
    #                   <code>ignoreApplicationStopFailures</code> to specify that the
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> failures should be ignored. </p>
    #   @return [Boolean]
    # @!attribute target_instances
    #   <p> Information about the instances that belong to the replacement environment in a
    #               blue/green deployment. </p>
    #   @return [Types::TargetInstances]
    # @!attribute auto_rollback_configuration
    #   <p>Configuration information for an automatic rollback that is added when a deployment is
    #               created.</p>
    #   @return [Types::AutoRollbackConfiguration]
    # @!attribute update_outdated_instances_only
    #   <p> Indicates whether to deploy to all instances or only to instances that are not
    #               running the latest application revision. </p>
    #   @return [Boolean]
    # @!attribute file_exists_behavior
    #   <p>Information about how CodeDeploy handles files that already exist in a
    #               deployment target location but weren't part of the previous successful
    #               deployment.</p>
    #            <p>The <code>fileExistsBehavior</code> parameter takes any of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>DISALLOW: The deployment fails. This is also the default behavior if no option
    #                       is specified.</p>
    #               </li>
    #               <li>
    #                  <p>OVERWRITE: The version of the file from the application revision currently
    #                       being deployed replaces the version already on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>RETAIN: The version of the file already on the instance is kept and used as
    #                       part of the new deployment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deployment_mode
    #   <p>The type of deployment to create. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: Deploys the specified revision. This is the default
    #                       behavior if <code>deploymentMode</code> is not specified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESTART</code>: Restarts the application on the target instances using
    #                       the revision from the deployment group's last successful deployment, without
    #                       downloading a new revision. <code>RESTART</code> is supported only for
    #                       EC2/On-premises in-place deployments.</p>
    #                  <p>When <code>deploymentMode</code> is <code>RESTART</code>, the following
    #                       apply:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The call is rejected for Amazon ECS and Lambda
    #                               deployments.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>revision</code> parameter (including its
    #                                   <code>s3Location</code> and <code>gitHubLocation</code>) must not be
    #                               specified, and is rejected if provided. The revision is resolved by the
    #                               service from the deployment group's last successful deployment.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>updateOutdatedInstancesOnly</code> parameter must not be
    #                               set to <code>true</code>, and is rejected if provided.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute override_alarm_configuration
    #   <p>Allows you to specify information about alarms associated with a deployment. The alarm
    #               configuration that you specify here will override the alarm configuration at the
    #               deployment group level. Consider overriding the alarm configuration if you have set up
    #               alarms at the deployment group level that are causing deployment failures. In this case,
    #               you would call <code>CreateDeployment</code> to create a new deployment that uses a
    #               previous application revision that is known to work, and set its alarm configuration to
    #               turn off alarm polling. Turning off alarm polling ensures that the new deployment
    #               proceeds without being blocked by the alarm that was generated by the previous, failed,
    #               deployment.</p>
    #            <note>
    #               <p>If you specify an <code>overrideAlarmConfiguration</code>, you need the
    #                       <code>UpdateDeploymentGroup</code>
    #                   IAM permission when calling <code>CreateDeployment</code>.</p>
    #            </note>
    #   @return [Types::AlarmConfiguration]
    class CreateDeploymentInput < Struct.new(
      nil,
      :application_name,
      :deployment_group_name,
      :revision,
      :deployment_config_name,
      :description,
      :ignore_application_stop_failures,
      :target_instances,
      :auto_rollback_configuration,
      :update_outdated_instances_only,
      :file_exists_behavior,
      :deployment_mode,
      :override_alarm_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>CreateDeployment</code> operation. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    class CreateDeploymentOutput < Struct.new(
      nil,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteApplication</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    class DeleteApplicationInput < Struct.new(
      nil,
      :application_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteDeploymentConfig</code> operation.</p>
    # @!attribute deployment_config_name
    #   <p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    class DeleteDeploymentConfigInput < Struct.new(
      nil,
      :deployment_config_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteDeploymentGroup</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #   @return [String]
    class DeleteDeploymentGroupInput < Struct.new(
      nil,
      :application_name,
      :deployment_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteDeploymentGroup</code> operation.</p>
    # @!attribute hooks_not_cleaned_up
    #   <p>If the output contains no data, and the corresponding deployment group contained at
    #               least one Auto Scaling group, CodeDeploy successfully removed all
    #               corresponding Auto Scaling lifecycle event hooks from the Amazon EC2
    #               instances in the Auto Scaling group. If the output contains data, CodeDeploy could not remove some Auto Scaling lifecycle event hooks from
    #               the Amazon EC2 instances in the Auto Scaling group.</p>
    #   @return [Array<Types::AutoScalingGroup>]
    class DeleteDeploymentGroupOutput < Struct.new(
      nil,
      :hooks_not_cleaned_up,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteGitHubAccount</code> operation.</p>
    # @!attribute token_name
    #   <p>The name of the GitHub account connection to delete.</p>
    #   @return [String]
    class DeleteGitHubAccountTokenInput < Struct.new(
      nil,
      :token_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteGitHubAccountToken</code> operation.</p>
    # @!attribute token_name
    #   <p>The name of the GitHub account connection that was deleted.</p>
    #   @return [String]
    class DeleteGitHubAccountTokenOutput < Struct.new(
      nil,
      :token_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_id
    #   <p>The unique ID of an external resource (for example, a CloudFormation stack
    #               ID) that is linked to one or more CodeDeploy resources.</p>
    #   @return [String]
    class DeleteResourcesByExternalIdInput < Struct.new(
      nil,
      :external_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcesByExternalIdOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment is already complete.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentAlreadyCompletedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A deployment configuration with the specified name with the user or Amazon Web Services account already exists.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentConfigAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment configuration does not exist with the user or Amazon Web Services account.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentConfigDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment configuration is still in use.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentConfigInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a deployment configuration.</p>
    # @!attribute deployment_config_id
    #   <p>The deployment configuration ID.</p>
    #   @return [String]
    # @!attribute deployment_config_name
    #   <p>The deployment configuration name.</p>
    #   @return [String]
    # @!attribute minimum_healthy_hosts
    #   <p>Information about the number or percentage of minimum healthy instances.</p>
    #   @return [Types::MinimumHealthyHosts]
    # @!attribute create_time
    #   <p>The time at which the deployment configuration was created.</p>
    #   @return [Time]
    # @!attribute compute_platform
    #   <p>The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #   @return [String]
    # @!attribute traffic_routing_config
    #   <p>The configuration that specifies how the deployment traffic is routed. Used for
    #               deployments with a Lambda or Amazon ECS compute platform
    #               only.</p>
    #   @return [Types::TrafficRoutingConfig]
    # @!attribute zonal_config
    #   <p>Information about a zonal configuration.</p>
    #   @return [Types::ZonalConfig]
    class DeploymentConfigInfo < Struct.new(
      nil,
      :deployment_config_id,
      :deployment_config_name,
      :minimum_healthy_hosts,
      :create_time,
      :compute_platform,
      :traffic_routing_config,
      :zonal_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment configurations limit was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentConfigLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment configuration name was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentConfigNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment with the user or Amazon Web Services account does not exist.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A deployment group with the specified name with the user or Amazon Web Services account
    #             already exists.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentGroupAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The named deployment group with the user or Amazon Web Services account does not
    #             exist.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentGroupDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a deployment group.</p>
    # @!attribute application_name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute deployment_group_id
    #   <p>The deployment group ID.</p>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p>The deployment group name.</p>
    #   @return [String]
    # @!attribute deployment_config_name
    #   <p>The deployment configuration name.</p>
    #   @return [String]
    # @!attribute ec2_tag_filters
    #   <p>The Amazon EC2 tags on which to filter. The deployment group includes EC2
    #               instances with any of the specified tags.</p>
    #   @return [Array<Types::EC2TagFilter>]
    # @!attribute on_premises_instance_tag_filters
    #   <p>The on-premises instance tags on which to filter. The deployment group includes
    #               on-premises instances with any of the specified tags.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute auto_scaling_groups
    #   <p>A list of associated Auto Scaling groups.</p>
    #   @return [Array<Types::AutoScalingGroup>]
    # @!attribute service_role_arn
    #   <p>A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make
    #               calls to Amazon Web Services services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html">Create a
    #                   Service Role for CodeDeploy</a> in the <i>CodeDeploy User Guide</i>.</p>
    #   @return [String]
    # @!attribute target_revision
    #   <p>Information about the deployment group's target revision, including type and
    #               location.</p>
    #   @return [Types::RevisionLocation]
    # @!attribute trigger_configurations
    #   <p>Information about triggers associated with the deployment group.</p>
    #   @return [Array<Types::TriggerConfig>]
    # @!attribute alarm_configuration
    #   <p>A list of alarms associated with the deployment group.</p>
    #   @return [Types::AlarmConfiguration]
    # @!attribute auto_rollback_configuration
    #   <p>Information about the automatic rollback configuration associated with the deployment
    #               group.</p>
    #   @return [Types::AutoRollbackConfiguration]
    # @!attribute deployment_style
    #   <p>Information about the type of deployment, either in-place or blue/green, you want to
    #               run and whether to route deployment traffic behind a load balancer.</p>
    #   @return [Types::DeploymentStyle]
    # @!attribute outdated_instances_strategy
    #   <p>Indicates what happens when new Amazon EC2 instances are launched
    #               mid-deployment and do not receive the deployed application revision.</p>
    #            <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new Amazon EC2 instances.</p>
    #            <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new Amazon EC2 instances. This may result in instances
    #               having different revisions.</p>
    #   @return [String]
    # @!attribute blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    #   @return [Types::BlueGreenDeploymentConfiguration]
    # @!attribute load_balancer_info
    #   <p>Information about the load balancer to use in a deployment.</p>
    #   @return [Types::LoadBalancerInfo]
    # @!attribute last_successful_deployment
    #   <p>Information about the most recent successful deployment to the deployment
    #               group.</p>
    #   @return [Types::LastDeploymentInfo]
    # @!attribute last_attempted_deployment
    #   <p>Information about the most recent attempted deployment to the deployment group.</p>
    #   @return [Types::LastDeploymentInfo]
    # @!attribute ec2_tag_set
    #   <p>Information about groups of tags applied to an Amazon EC2 instance. The
    #               deployment group includes only Amazon EC2 instances identified by all of the tag
    #               groups. Cannot be used in the same call as ec2TagFilters.</p>
    #   @return [Types::EC2TagSet]
    # @!attribute on_premises_tag_set
    #   <p>Information about groups of tags applied to an on-premises instance. The deployment
    #               group includes only on-premises instances identified by all the tag groups. Cannot be
    #               used in the same call as onPremisesInstanceTagFilters.</p>
    #   @return [Types::OnPremisesTagSet]
    # @!attribute compute_platform
    #   <p>The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #   @return [String]
    # @!attribute ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name
    #               pair using the format <code><clustername>:<servicename></code>. </p>
    #   @return [Array<Types::ECSService>]
    # @!attribute termination_hook_enabled
    #   <p>Indicates whether the deployment group was configured to have CodeDeploy
    #               install a termination hook into an Auto Scaling group.</p>
    #            <p>For more information about the termination hook, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors">How Amazon EC2 Auto Scaling works with CodeDeploy</a> in the
    #                       <i>CodeDeploy User Guide</i>.</p>
    #   @return [Boolean]
    class DeploymentGroupInfo < Struct.new(
      nil,
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
      :outdated_instances_strategy,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :last_successful_deployment,
      :last_attempted_deployment,
      :ec2_tag_set,
      :on_premises_tag_set,
      :compute_platform,
      :ecs_services,
      :termination_hook_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:termination_hook_enabled] = false unless options.key?(:termination_hook_enabled)
        super
      end
    end

    # <p> The deployment groups limit was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentGroupLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment group name was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentGroupNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one deployment ID must be specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a deployment.</p>
    # @!attribute application_name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p> The deployment group name. </p>
    #   @return [String]
    # @!attribute deployment_config_name
    #   <p> The deployment configuration name. </p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute previous_revision
    #   <p>Information about the application revision that was deployed to the deployment group
    #               before the most recent successful deployment.</p>
    #   @return [Types::RevisionLocation]
    # @!attribute revision
    #   <p>Information about the location of stored application artifacts and the service from
    #               which to retrieve them.</p>
    #   @return [Types::RevisionLocation]
    # @!attribute status
    #   <p>The current state of the deployment as a whole.</p>
    #   @return [String]
    # @!attribute error_information
    #   <p>Information about any error associated with this deployment.</p>
    #   @return [Types::ErrorInformation]
    # @!attribute create_time
    #   <p>A timestamp that indicates when the deployment was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>A timestamp that indicates when the deployment was deployed to the deployment
    #               group.</p>
    #            <p>In some cases, the reported value of the start time might be later than the complete
    #               time. This is due to differences in the clock settings of backend servers that
    #               participate in the deployment process.</p>
    #   @return [Time]
    # @!attribute complete_time
    #   <p>A timestamp that indicates when the deployment was complete.</p>
    #   @return [Time]
    # @!attribute deployment_overview
    #   <p>A summary of the deployment status of the instances in the deployment.</p>
    #   @return [Types::DeploymentOverview]
    # @!attribute description
    #   <p>A comment about the deployment.</p>
    #   @return [String]
    # @!attribute creator
    #   <p>The means by which the deployment was created:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>user</code>: A user created the deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>autoscaling</code>: Amazon EC2 Auto Scaling created the deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>codeDeployRollback</code>: A rollback process created the
    #                       deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CodeDeployAutoUpdate</code>: An auto-update process created the
    #                       deployment when it detected outdated Amazon EC2 instances.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute ignore_application_stop_failures
    #   <p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or
    #                   <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then
    #               the deployment continues to the next deployment lifecycle event. For example, if
    #                   <code>ApplicationStop</code> fails, the deployment continues with DownloadBundle. If
    #                   <code>BeforeBlockTraffic</code> fails, the deployment continues with
    #                   <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code> fails, the deployment
    #               continues with <code>ApplicationStop</code>. </p>
    #            <p> If false or not specified, then if a lifecycle event fails during a deployment to an
    #               instance, that deployment fails. If deployment to that instance is part of an overall
    #               deployment and the number of healthy hosts is not less than the minimum number of
    #               healthy hosts, then a deployment to the next instance is attempted. </p>
    #            <p> During a deployment, the CodeDeploy agent runs the scripts specified for
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful
    #               deployment. (All other scripts are run from the AppSpec file in the current deployment.)
    #               If one of these scripts contains an error and does not run successfully, the deployment
    #               can fail. </p>
    #            <p> If the cause of the failure is a script from the last successful deployment that will
    #               never run successfully, create a new deployment and use
    #                   <code>ignoreApplicationStopFailures</code> to specify that the
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> failures should be ignored. </p>
    #   @return [Boolean]
    # @!attribute auto_rollback_configuration
    #   <p>Information about the automatic rollback configuration associated with the
    #               deployment.</p>
    #   @return [Types::AutoRollbackConfiguration]
    # @!attribute update_outdated_instances_only
    #   <p>Indicates whether only instances that are not running the latest application revision
    #               are to be deployed to.</p>
    #   @return [Boolean]
    # @!attribute rollback_info
    #   <p>Information about a deployment rollback.</p>
    #   @return [Types::RollbackInfo]
    # @!attribute deployment_style
    #   <p>Information about the type of deployment, either in-place or blue/green, you want to
    #               run and whether to route deployment traffic behind a load balancer.</p>
    #   @return [Types::DeploymentStyle]
    # @!attribute target_instances
    #   <p>Information about the instances that belong to the replacement environment in a
    #               blue/green deployment.</p>
    #   @return [Types::TargetInstances]
    # @!attribute instance_termination_wait_time_started
    #   <p>Indicates whether the wait period set for the termination of instances in the original
    #               environment has started. Status is 'false' if the KEEP_ALIVE option is specified.
    #               Otherwise, 'true' as soon as the termination wait period starts.</p>
    #   @return [Boolean]
    # @!attribute blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for this deployment.</p>
    #   @return [Types::BlueGreenDeploymentConfiguration]
    # @!attribute load_balancer_info
    #   <p>Information about the load balancer used in the deployment.</p>
    #   @return [Types::LoadBalancerInfo]
    # @!attribute additional_deployment_status_info
    #   <p>Provides information about the results of a deployment, such as whether instances in
    #               the original environment in a blue/green deployment were not terminated.</p>
    #   @return [String]
    # @!attribute file_exists_behavior
    #   <p>Information about how CodeDeploy handles files that already exist in a
    #               deployment target location but weren't part of the previous successful
    #               deployment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISALLOW</code>: The deployment fails. This is also the default behavior
    #                       if no option is specified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERWRITE</code>: The version of the file from the application revision
    #                       currently being deployed replaces the version already on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RETAIN</code>: The version of the file already on the instance is kept
    #                       and used as part of the new deployment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deployment_mode
    #   <p>The deployment's type. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: The deployment installed the specified revision.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESTART</code>: The deployment restarted the application on the target
    #                       instances using the revision from the deployment group's last successful
    #                       deployment, without downloading a new revision.</p>
    #               </li>
    #            </ul>
    #            <p>This field is absent for deployments created before <code>deploymentMode</code>
    #               existed, and for <code>STANDARD</code> deployments. An absent value must not be
    #               interpreted as <code>STANDARD</code>; it simply means no value was recorded either
    #               way.</p>
    #   @return [String]
    # @!attribute deployment_status_messages
    #   <p>Messages that contain information about the status of a deployment.</p>
    #   @return [Array<String>]
    # @!attribute compute_platform
    #   <p>The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The unique ID for an external resource (for example, a CloudFormation stack
    #               ID) that is linked to this deployment.</p>
    #   @return [String]
    # @!attribute related_deployments
    #   <p>Information about deployments related to the specified deployment.</p>
    #   @return [Types::RelatedDeployments]
    # @!attribute override_alarm_configuration
    #   <p>Information about alarms associated with a deployment or deployment group.</p>
    #   @return [Types::AlarmConfiguration]
    class DeploymentInfo < Struct.new(
      nil,
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
      :deployment_mode,
      :deployment_status_messages,
      :compute_platform,
      :external_id,
      :related_deployments,
      :override_alarm_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ignore_application_stop_failures] = false unless options.key?(:ignore_application_stop_failures)
        options[:update_outdated_instances_only] = false unless options.key?(:update_outdated_instances_only)
        options[:instance_termination_wait_time_started] = false unless options.key?(:instance_termination_wait_time_started)
        super
      end
    end

    # <p>The deployment does not have a status of Ready and can't continue yet.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentIsNotInReadyStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of allowed deployments was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified deployment has not started.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentNotStartedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the deployment status of the instances in the deployment.</p>
    # @!attribute pending
    #   <p>The number of instances in the deployment in a pending state.</p>
    #   @return [Integer]
    # @!attribute in_progress
    #   <p>The number of instances in which the deployment is in progress.</p>
    #   @return [Integer]
    # @!attribute succeeded
    #   <p>The number of instances in the deployment to which revisions have been successfully
    #               deployed.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The number of instances in the deployment in a failed state.</p>
    #   @return [Integer]
    # @!attribute skipped
    #   <p>The number of instances in the deployment in a skipped state.</p>
    #   @return [Integer]
    # @!attribute ready
    #   <p>The number of instances in a replacement environment ready to receive traffic in a
    #               blue/green deployment.</p>
    #   @return [Integer]
    class DeploymentOverview < Struct.new(
      nil,
      :pending,
      :in_progress,
      :succeeded,
      :failed,
      :skipped,
      :ready,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:pending] = 0 unless options.key?(:pending)
        options[:in_progress] = 0 unless options.key?(:in_progress)
        options[:succeeded] = 0 unless options.key?(:succeeded)
        options[:failed] = 0 unless options.key?(:failed)
        options[:skipped] = 0 unless options.key?(:skipped)
        options[:ready] = 0 unless options.key?(:ready)
        super
      end
    end

    # <p>Information about how traffic is rerouted to instances in a replacement environment in
    #             a blue/green deployment.</p>
    # @!attribute action_on_timeout
    #   <p>Information about when to reroute traffic from an original environment to a
    #               replacement environment in a blue/green deployment.</p>
    #            <ul>
    #               <li>
    #                  <p>CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately
    #                       after the new application revision is installed on the instances in the
    #                       replacement environment.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_DEPLOYMENT: Do not register new instances with a load balancer unless
    #                       traffic rerouting is started using <a>ContinueDeployment</a>. If
    #                       traffic rerouting is not started before the end of the specified wait period,
    #                       the deployment status is changed to Stopped.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute wait_time_in_minutes
    #   <p>The number of minutes to wait before the status of a blue/green deployment is changed
    #               to Stopped if rerouting is not started manually. Applies only to the
    #                   <code>STOP_DEPLOYMENT</code> option for <code>actionOnTimeout</code>.</p>
    #   @return [Integer]
    class DeploymentReadyOption < Struct.new(
      nil,
      :action_on_timeout,
      :wait_time_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:wait_time_in_minutes] = 0 unless options.key?(:wait_time_in_minutes)
        super
      end
    end

    # <p>Information about the type of deployment, either in-place or blue/green, you want to
    #             run and whether to route deployment traffic behind a load balancer.</p>
    # @!attribute deployment_type
    #   <p>Indicates whether to run an in-place deployment or a blue/green deployment.</p>
    #   @return [String]
    # @!attribute deployment_option
    #   <p>Indicates whether to route deployment traffic behind a load balancer.</p>
    #   @return [String]
    class DeploymentStyle < Struct.new(
      nil,
      :deployment_type,
      :deployment_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about the deployment target. </p>
    # @!attribute deployment_target_type
    #   <p>The deployment type that is specific to the deployment's compute platform or
    #               deployments initiated by a CloudFormation stack update.</p>
    #   @return [String]
    # @!attribute instance_target
    #   <p> Information about the target for a deployment that uses the EC2/On-premises compute
    #               platform. </p>
    #   @return [Types::InstanceTarget]
    # @!attribute lambda_target
    #   <p> Information about the target for a deployment that uses the Lambda
    #               compute platform. </p>
    #   @return [Types::LambdaTarget]
    # @!attribute ecs_target
    #   <p> Information about the target for a deployment that uses the Amazon ECS
    #               compute platform. </p>
    #   @return [Types::ECSTarget]
    # @!attribute cloud_formation_target
    #   <p> Information about the target to be updated by an CloudFormation blue/green
    #               deployment. This target type is used for all deployments initiated by a CloudFormation stack update.</p>
    #   @return [Types::CloudFormationTarget]
    class DeploymentTarget < Struct.new(
      nil,
      :deployment_target_type,
      :instance_target,
      :lambda_target,
      :ecs_target,
      :cloud_formation_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The provided target ID does not belong to the attempted deployment. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentTargetDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A deployment target ID was not provided. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentTargetIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The maximum number of targets that can be associated with an Amazon ECS or
    #                 Lambda deployment was exceeded. The target list of both types of
    #             deployments must have exactly one item. This exception does not apply to EC2/On-premises
    #             deployments. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DeploymentTargetListSizeExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeregisterOnPremisesInstance</code> operation.</p>
    # @!attribute instance_name
    #   <p>The name of the on-premises instance to deregister.</p>
    #   @return [String]
    class DeregisterOnPremisesInstanceInput < Struct.new(
      nil,
      :instance_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description is too long.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class DescriptionTooLongException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Diagnostic information about executable scripts that are part of a deployment.</p>
    # @!attribute error_code
    #   <p>The associated error code:</p>
    #            <ul>
    #               <li>
    #                  <p>Success: The specified script ran.</p>
    #               </li>
    #               <li>
    #                  <p>ScriptMissing: The specified script was not found in the specified
    #                       location.</p>
    #               </li>
    #               <li>
    #                  <p>ScriptNotExecutable: The specified script is not a recognized executable file
    #                       type.</p>
    #               </li>
    #               <li>
    #                  <p>ScriptTimedOut: The specified script did not finish running in the specified
    #                       time period.</p>
    #               </li>
    #               <li>
    #                  <p>ScriptFailed: The specified script failed to run as expected.</p>
    #               </li>
    #               <li>
    #                  <p>UnknownError: The specified script did not run for an unknown reason.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute script_name
    #   <p>The name of the script.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the error.</p>
    #   @return [String]
    # @!attribute log_tail
    #   <p>The last portion of the diagnostic log.</p>
    #            <p>If available, CodeDeploy returns up to the last 4 KB of the diagnostic
    #               log.</p>
    #   @return [String]
    class Diagnostics < Struct.new(
      nil,
      :error_code,
      :script_name,
      :message,
      :log_tail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an EC2 tag filter.</p>
    # @!attribute key
    #   <p>The tag filter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag filter value.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The tag filter type:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEY_ONLY</code>: Key only.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VALUE_ONLY</code>: Value only.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KEY_AND_VALUE</code>: Key and value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class EC2TagFilter < Struct.new(
      nil,
      :key,
      :value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about groups of Amazon EC2 instance tags.</p>
    # @!attribute ec2_tag_set_list
    #   <p>A list that contains other lists of Amazon EC2 instance tag groups. For an
    #               instance to be included in the deployment group, it must be identified by all of the tag
    #               groups in the list.</p>
    #   @return [Array<Array<Types::EC2TagFilter>>]
    class EC2TagSet < Struct.new(
      nil,
      :ec2_tag_set_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains the service and cluster names used to identify an Amazon ECS
    #             deployment's target. </p>
    # @!attribute service_name
    #   <p> The name of the target Amazon ECS service. </p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p> The name of the cluster that the Amazon ECS service is associated with.
    #           </p>
    #   @return [String]
    class ECSService < Struct.new(
      nil,
      :service_name,
      :cluster_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The Amazon ECS service is associated with more than one deployment groups. An
    #             Amazon ECS service can be associated with only one deployment group. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ECSServiceMappingLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about the target of an Amazon ECS deployment. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute target_id
    #   <p> The unique ID of a deployment target that has a type of <code>ecsTarget</code>.
    #           </p>
    #   @return [String]
    # @!attribute target_arn
    #   <p> The Amazon Resource Name (ARN) of the target. </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p> The date and time when the target Amazon ECS application was updated by a
    #               deployment. </p>
    #   @return [Time]
    # @!attribute lifecycle_events
    #   <p> The lifecycle events of the deployment to this target Amazon ECS application.
    #           </p>
    #   @return [Array<Types::LifecycleEvent>]
    # @!attribute status
    #   <p> The status an Amazon ECS deployment's target ECS application. </p>
    #   @return [String]
    # @!attribute task_sets_info
    #   <p> The <code>ECSTaskSet</code> objects associated with the ECS target. </p>
    #   @return [Array<Types::ECSTaskSet>]
    class ECSTarget < Struct.new(
      nil,
      :deployment_id,
      :target_id,
      :target_arn,
      :last_updated_at,
      :lifecycle_events,
      :status,
      :task_sets_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a set of Amazon ECS tasks in an CodeDeploy
    #             deployment. An Amazon ECS task set includes details such as the desired number
    #             of tasks, how many tasks are running, and whether the task set serves production
    #             traffic. An CodeDeploy application that uses the Amazon ECS compute
    #             platform deploys a containerized application in an Amazon ECS service as a task
    #             set. </p>
    # @!attribute identifer
    #   <p> A unique ID of an <code>ECSTaskSet</code>. </p>
    #   @return [String]
    # @!attribute desired_count
    #   <p> The number of tasks in a task set. During a deployment that uses the Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a new task set and
    #               uses this value to determine how many tasks to create. After the updated task set is
    #               created, CodeDeploy shifts traffic to the new task set. </p>
    #   @return [Integer]
    # @!attribute pending_count
    #   <p> The number of tasks in the task set that are in the <code>PENDING</code> status
    #               during an Amazon ECS deployment. A task in the <code>PENDING</code> state is
    #               preparing to enter the <code>RUNNING</code> state. A task set enters the
    #                   <code>PENDING</code> status when it launches for the first time, or when it is
    #               restarted after being in the <code>STOPPED</code> state. </p>
    #   @return [Integer]
    # @!attribute running_count
    #   <p> The number of tasks in the task set that are in the <code>RUNNING</code> status
    #               during an Amazon ECS deployment. A task in the <code>RUNNING</code> state is
    #               running and ready for use. </p>
    #   @return [Integer]
    # @!attribute status
    #   <p> The status of the task set. There are three valid task set statuses: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIMARY</code>: Indicates the task set is serving production traffic.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>: Indicates the task set is not serving production traffic.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAINING</code>: Indicates the tasks in the task set are being stopped and
    #                       their corresponding targets are being deregistered from their target group.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute traffic_weight
    #   <p> The percentage of traffic served by this task set. </p>
    #   @return [Float]
    # @!attribute target_group
    #   <p> The target group associated with the task set. The target group is used by CodeDeploy to manage traffic to a task set. </p>
    #   @return [Types::TargetGroupInfo]
    # @!attribute task_set_label
    #   <p> A label that identifies whether the ECS task set is an original target
    #                   (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>
    #   @return [String]
    class ECSTaskSet < Struct.new(
      nil,
      :identifer,
      :desired_count,
      :pending_count,
      :running_count,
      :status,
      :traffic_weight,
      :target_group,
      :task_set_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:desired_count] = 0 unless options.key?(:desired_count)
        options[:pending_count] = 0 unless options.key?(:pending_count)
        options[:running_count] = 0 unless options.key?(:running_count)
        options[:traffic_weight] = 0 unless options.key?(:traffic_weight)
        super
      end
    end

    # <p>Information about a Classic Load Balancer in Elastic Load Balancing to use in a
    #             deployment. Instances are registered directly with a load balancer, and traffic is
    #             routed to the load balancer.</p>
    # @!attribute name
    #   <p>For blue/green deployments, the name of the Classic Load Balancer that is used to
    #               route traffic from original instances to replacement instances in a blue/green
    #               deployment. For in-place deployments, the name of the Classic Load Balancer that
    #               instances are deregistered from so they are not serving traffic during a deployment, and
    #               then re-registered with after the deployment is complete.</p>
    #   @return [String]
    class ELBInfo < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a deployment error.</p>
    # @!attribute code
    #   <p>For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html">Error Codes for CodeDeploy</a> in the <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide">CodeDeploy User Guide</a>.</p>
    #            <p>The error code:</p>
    #            <ul>
    #               <li>
    #                  <p>APPLICATION_MISSING: The application was missing. This error code is most
    #                       likely raised if the application is deleted after the deployment is created, but
    #                       before it is started.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code is
    #                       most likely raised if the deployment group is deleted after the deployment is
    #                       created, but before it is started.</p>
    #               </li>
    #               <li>
    #                  <p>HEALTH_CONSTRAINTS: The deployment failed on too many instances to be
    #                       successfully deployed within the instance health constraints specified.</p>
    #               </li>
    #               <li>
    #                  <p>HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed
    #                       within the instance health constraints specified.</p>
    #               </li>
    #               <li>
    #                  <p>IAM_ROLE_MISSING: The service role cannot be accessed.</p>
    #               </li>
    #               <li>
    #                  <p>IAM_ROLE_PERMISSIONS: The service role does not have the
    #                       correct permissions.</p>
    #               </li>
    #               <li>
    #                  <p>INTERNAL_ERROR: There was an internal error.</p>
    #               </li>
    #               <li>
    #                  <p>NO_EC2_SUBSCRIPTION: The calling account is not subscribed to Amazon EC2.</p>
    #               </li>
    #               <li>
    #                  <p>NO_INSTANCES: No instances were specified, or no instances can be
    #                       found.</p>
    #               </li>
    #               <li>
    #                  <p>OVER_MAX_INSTANCES: The maximum number of instances was exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>THROTTLED: The operation was throttled because the calling account exceeded
    #                       the throttling limits of one or more Amazon Web Services services.</p>
    #               </li>
    #               <li>
    #                  <p>TIMEOUT: The deployment has timed out.</p>
    #               </li>
    #               <li>
    #                  <p>REVISION_MISSING: The revision ID was missing. This error code is most likely
    #                       raised if the revision is deleted after the deployment is created, but before it
    #                       is started.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>An accompanying error message.</p>
    #   @return [String]
    class ErrorInformation < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an application revision.</p>
    # @!attribute description
    #   <p>A comment about the revision.</p>
    #   @return [String]
    # @!attribute deployment_groups
    #   <p>The deployment groups for which this is the current target revision.</p>
    #   @return [Array<String>]
    # @!attribute first_used_time
    #   <p>When the revision was first used by CodeDeploy.</p>
    #   @return [Time]
    # @!attribute last_used_time
    #   <p>When the revision was last used by CodeDeploy.</p>
    #   @return [Time]
    # @!attribute register_time
    #   <p>When the revision was registered with CodeDeploy.</p>
    #   @return [Time]
    class GenericRevisionInfo < Struct.new(
      nil,
      :description,
      :deployment_groups,
      :first_used_time,
      :last_used_time,
      :register_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetApplication</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    class GetApplicationInput < Struct.new(
      nil,
      :application_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetApplication</code> operation.</p>
    # @!attribute application
    #   <p>Information about the application.</p>
    #   @return [Types::ApplicationInfo]
    class GetApplicationOutput < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetApplicationRevision</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of the application that corresponds to the revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>Information about the application revision to get, including type and location.</p>
    #   @return [Types::RevisionLocation]
    class GetApplicationRevisionInput < Struct.new(
      nil,
      :application_name,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetApplicationRevision</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of the application that corresponds to the revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>Additional information about the revision, including type and location.</p>
    #   @return [Types::RevisionLocation]
    # @!attribute revision_info
    #   <p>General information about the revision.</p>
    #   @return [Types::GenericRevisionInfo]
    class GetApplicationRevisionOutput < Struct.new(
      nil,
      :application_name,
      :revision,
      :revision_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetDeploymentConfig</code> operation.</p>
    # @!attribute deployment_config_name
    #   <p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    class GetDeploymentConfigInput < Struct.new(
      nil,
      :deployment_config_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetDeploymentConfig</code> operation.</p>
    # @!attribute deployment_config_info
    #   <p>Information about the deployment configuration.</p>
    #   @return [Types::DeploymentConfigInfo]
    class GetDeploymentConfigOutput < Struct.new(
      nil,
      :deployment_config_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetDeploymentGroup</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #   @return [String]
    class GetDeploymentGroupInput < Struct.new(
      nil,
      :application_name,
      :deployment_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetDeploymentGroup</code> operation.</p>
    # @!attribute deployment_group_info
    #   <p>Information about the deployment group.</p>
    #   @return [Types::DeploymentGroupInfo]
    class GetDeploymentGroupOutput < Struct.new(
      nil,
      :deployment_group_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetDeployment</code> operation.</p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment associated with the user or Amazon Web Services account.
    #           </p>
    #   @return [String]
    class GetDeploymentInput < Struct.new(
      nil,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>GetDeploymentInstance</code> operation. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p> The unique ID of an instance in the deployment group. </p>
    #   @return [String]
    class GetDeploymentInstanceInput < Struct.new(
      nil,
      :deployment_id,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>GetDeploymentInstance</code> operation. </p>
    # @!attribute instance_summary
    #   <p> Information about the instance. </p>
    #   @return [Types::InstanceSummary]
    class GetDeploymentInstanceOutput < Struct.new(
      nil,
      :instance_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetDeployment</code> operation.</p>
    # @!attribute deployment_info
    #   <p>Information about the deployment.</p>
    #   @return [Types::DeploymentInfo]
    class GetDeploymentOutput < Struct.new(
      nil,
      :deployment_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute target_id
    #   <p> The unique ID of a deployment target. </p>
    #   @return [String]
    class GetDeploymentTargetInput < Struct.new(
      nil,
      :deployment_id,
      :target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_target
    #   <p> A deployment target that contains information about a deployment such as its status,
    #               lifecycle events, and when it was last updated. It also contains metadata about the
    #               deployment target. The deployment target metadata depends on the deployment target's
    #               type (<code>instanceTarget</code>, <code>lambdaTarget</code>, or
    #               <code>ecsTarget</code>). </p>
    #   @return [Types::DeploymentTarget]
    class GetDeploymentTargetOutput < Struct.new(
      nil,
      :deployment_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>GetOnPremisesInstance</code> operation. </p>
    # @!attribute instance_name
    #   <p> The name of the on-premises instance about which to get information. </p>
    #   @return [String]
    class GetOnPremisesInstanceInput < Struct.new(
      nil,
      :instance_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>GetOnPremisesInstance</code> operation. </p>
    # @!attribute instance_info
    #   <p> Information about the on-premises instance. </p>
    #   @return [Types::InstanceInfo]
    class GetOnPremisesInstanceOutput < Struct.new(
      nil,
      :instance_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No GitHub account connection exists with the named specified in the call.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class GitHubAccountTokenDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The call is missing a required GitHub account connection name.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class GitHubAccountTokenNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the location of application artifacts stored in GitHub.</p>
    # @!attribute repository
    #   <p>The GitHub account and repository pair that stores a reference to the commit that
    #               represents the bundled artifacts for the application revision. </p>
    #            <p>Specified as account/repository.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p>The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the
    #               application revision.</p>
    #   @return [String]
    class GitHubLocation < Struct.new(
      nil,
      :repository,
      :commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the instances that belong to the replacement environment in a
    #             blue/green deployment.</p>
    # @!attribute action
    #   <p>The method used to add instances to a replacement environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISCOVER_EXISTING</code>: Use instances that already exist or will be
    #                       created manually.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COPY_AUTO_SCALING_GROUP</code>: Use settings from a specified Auto Scaling group to define and create instances in a new Auto Scaling
    #                       group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GreenFleetProvisioningOption < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No IAM ARN was included in the request. You must use an IAM session ARN or user ARN in the request.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class IamArnRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request included an IAM session ARN that has already been used to
    #             register a different instance.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class IamSessionArnAlreadyRegisteredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified user ARN is already registered with an on-premises instance.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class IamUserArnAlreadyRegisteredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An user ARN was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class IamUserArnRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified instance does not exist in the deployment group.</p>
    # @deprecated
    #   This exception is deprecated, use DeploymentTargetDoesNotExistException instead.
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InstanceDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The instance ID was not specified.</p>
    # @deprecated
    #   This exception is deprecated, use DeploymentTargetIdRequiredException instead.
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InstanceIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an on-premises instance.</p>
    # @!attribute instance_name
    #   <p>The name of the on-premises instance.</p>
    #   @return [String]
    # @!attribute iam_session_arn
    #   <p>The ARN of the IAM session associated with the on-premises
    #               instance.</p>
    #   @return [String]
    # @!attribute iam_user_arn
    #   <p>The user ARN associated with the on-premises instance.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The ARN of the on-premises instance.</p>
    #   @return [String]
    # @!attribute register_time
    #   <p>The time at which the on-premises instance was registered.</p>
    #   @return [Time]
    # @!attribute deregister_time
    #   <p>If the on-premises instance was deregistered, the time at which the on-premises
    #               instance was deregistered.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags currently associated with the on-premises instance.</p>
    #   @return [Array<Types::Tag>]
    class InstanceInfo < Struct.new(
      nil,
      :instance_name,
      :iam_session_arn,
      :iam_user_arn,
      :instance_arn,
      :register_time,
      :deregister_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of allowed on-premises instances in a single call was
    #             exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InstanceLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified on-premises instance name is already registered.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InstanceNameAlreadyRegisteredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An on-premises instance name was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InstanceNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified on-premises instance is not registered.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InstanceNotRegisteredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an instance in a deployment.</p>
    # @deprecated
    #   InstanceSummary is deprecated, use DeploymentTarget instead.
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The deployment status for this instance:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: The deployment is pending for this instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>In Progress</code>: The deployment is in progress for this
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Succeeded</code>: The deployment has succeeded for this instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The deployment has failed for this instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Skipped</code>: The deployment has been skipped for this
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unknown</code>: The deployment status is unknown for this
    #                       instance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when the instance information was last updated.</p>
    #   @return [Time]
    # @!attribute lifecycle_events
    #   <p>A list of lifecycle events for this instance.</p>
    #   @return [Array<Types::LifecycleEvent>]
    # @!attribute instance_type
    #   <p>Information about which environment an instance belongs to in a blue/green
    #               deployment.</p>
    #            <ul>
    #               <li>
    #                  <p>BLUE: The instance is part of the original environment.</p>
    #               </li>
    #               <li>
    #                  <p>GREEN: The instance is part of the replacement environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InstanceSummary < Struct.new(
      nil,
      :deployment_id,
      :instance_id,
      :status,
      :last_updated_at,
      :lifecycle_events,
      :instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A target Amazon EC2 or on-premises instance during a deployment that uses the
    #             EC2/On-premises compute platform. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute target_id
    #   <p> The unique ID of a deployment target that has a type of <code>instanceTarget</code>.
    #           </p>
    #   @return [String]
    # @!attribute target_arn
    #   <p> The Amazon Resource Name (ARN) of the target. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status an EC2/On-premises deployment's target instance. </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p> The date and time when the target instance was updated by a deployment. </p>
    #   @return [Time]
    # @!attribute lifecycle_events
    #   <p> The lifecycle events of the deployment to this target instance. </p>
    #   @return [Array<Types::LifecycleEvent>]
    # @!attribute instance_label
    #   <p> A label that identifies whether the instance is an original target
    #               (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>
    #   @return [String]
    class InstanceTarget < Struct.new(
      nil,
      :deployment_id,
      :target_id,
      :target_arn,
      :status,
      :last_updated_at,
      :lifecycle_events,
      :instance_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The format of the alarm configuration is invalid. Possible causes include:</p>
    #          <ul>
    #             <li>
    #                <p>The alarm list is null.</p>
    #             </li>
    #             <li>
    #                <p>The alarm object is null.</p>
    #             </li>
    #             <li>
    #                <p>The alarm name is empty or null or exceeds the limit of 255 characters.</p>
    #             </li>
    #             <li>
    #                <p>Two alarms with the same name have been specified.</p>
    #             </li>
    #             <li>
    #                <p>The alarm configuration is enabled, but the alarm list is empty.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidAlarmConfigException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The application name was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidApplicationNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified ARN is not in a valid format. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The automatic rollback configuration was specified in an invalid format. For example,
    #             automatic rollback is enabled, but an invalid triggering event type or no event types
    #             were listed.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidAutoRollbackConfigException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Auto Scaling group was specified in an invalid format or does not
    #             exist.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidAutoScalingGroupException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the blue/green deployment group was provided in an invalid
    #             format. For information about deployment configuration format, see <a>CreateDeploymentConfig</a>.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidBlueGreenDeploymentConfigurationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The bucket name either doesn't exist or was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidBucketNameFilterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The computePlatform is invalid. The computePlatform should be <code>Lambda</code>, <code>Server</code>, or <code>ECS</code>.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidComputePlatformException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployed state filter was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeployedStateFilterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment configuration name was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentConfigNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment group name was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentGroupNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one of the deployment IDs was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An instance type was specified for an in-place deployment. Instance types are
    #             supported for blue/green deployments only.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentInstanceTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified deployment status doesn't exist or cannot be determined.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid deployment style was specified. Valid deployment types include "IN_PLACE"
    #             and "BLUE_GREEN." Valid deployment options include "WITH_TRAFFIC_CONTROL" and
    #             "WITHOUT_TRAFFIC_CONTROL."</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentStyleException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The target ID provided was not valid. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentTargetIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The wait type is invalid. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidDeploymentWaitTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A call was submitted that specified both Ec2TagFilters and Ec2TagSet, but only one of
    #             these data types can be used in a single call.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidEC2TagCombinationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidEC2TagException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The Amazon ECS service identifier is not valid. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidECSServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The external ID was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidExternalIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid fileExistsBehavior option was specified to determine how CodeDeploy handles files or directories that already exist in a deployment
    #             target location, but weren't part of the previous successful deployment. Valid values
    #             include "DISALLOW," "OVERWRITE," and "RETAIN."</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidFileExistsBehaviorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GitHub token is not valid.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidGitHubAccountTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The format of the specified GitHub account connection name is invalid.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidGitHubAccountTokenNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IAM session ARN was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidIamSessionArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user ARN was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidIamUserArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IgnoreApplicationStopFailures value is invalid. For Lambda
    #             deployments, <code>false</code> is expected. For EC2/On-premises deployments,
    #                 <code>true</code> or <code>false</code> is expected.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidIgnoreApplicationStopFailuresValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidInputException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The on-premises instance name was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidInstanceNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified instance status does not exist.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidInstanceStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid instance type was specified for instances in a blue/green deployment. Valid
    #             values include "Blue" for an original environment and "Green" for a replacement
    #             environment.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidInstanceTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified key prefix filter was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidKeyPrefixFilterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle event hook is invalid. Review the <code>hooks</code> section in your
    #             AppSpec file to ensure the lifecycle events and <code>hooks</code> functions are
    #             valid.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidLifecycleEventHookExecutionIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a Lambda validation function that verifies a lifecycle event
    #             is invalid. It should return <code>Succeeded</code> or <code>Failed</code>.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidLifecycleEventHookExecutionStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid load balancer name, or no load balancer name, was specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidLoadBalancerInfoException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum healthy instance value was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidMinimumHealthyHostValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The next token was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A call was submitted that specified both OnPremisesTagFilters and OnPremisesTagSet,
    #             but only one of these data types can be used in a single call.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidOnPremisesTagCombinationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid operation was detected.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration status was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidRegistrationStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The revision was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidRevisionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service role ARN was specified in an invalid format. Or, if an Auto Scaling
    #             group was specified, the specified service role does not grant the appropriate
    #             permissions to Amazon EC2 Auto Scaling.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidRoleException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The column name to sort by is either not present or was specified in an invalid
    #             format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidSortByException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sort order was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidSortOrderException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTagException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag filter was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTagFilterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified tags are not valid. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTagsToAddException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The target filter name is invalid. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTargetFilterNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A target group pair associated with this deployment is not valid. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTargetGroupPairException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target instance configuration is invalid. Possible causes include:</p>
    #          <ul>
    #             <li>
    #                <p>Configuration data for target instances was entered for an in-place
    #                     deployment.</p>
    #             </li>
    #             <li>
    #                <p>The limit of 10 tags for a tag type was exceeded.</p>
    #             </li>
    #             <li>
    #                <p>The combined length of the tag names exceeded the limit. </p>
    #             </li>
    #             <li>
    #                <p>A specified tag is not currently applied to any instances.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTargetInstancesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified time range was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTimeRangeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration that specifies how traffic is routed during a deployment is
    #             invalid.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTrafficRoutingConfigurationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trigger was specified in an invalid format.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidTriggerConfigException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The UpdateOutdatedInstancesOnly value is invalid. For Lambda
    #             deployments, <code>false</code> is expected. For EC2/On-premises deployments,
    #                 <code>true</code> or <code>false</code> is expected.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidUpdateOutdatedInstancesOnlyValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ZonalConfig</code> object is not valid.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class InvalidZonalDeploymentConfigurationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a Lambda function specified in a deployment. </p>
    # @!attribute function_name
    #   <p> The name of a Lambda function. </p>
    #   @return [String]
    # @!attribute function_alias
    #   <p> The alias of a Lambda function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html">Lambda Function Aliases</a> in the <i>Lambda Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p> The version of a Lambda function that production traffic points to.
    #           </p>
    #   @return [String]
    # @!attribute target_version
    #   <p> The version of a Lambda function that production traffic points to after
    #               the Lambda function is deployed. </p>
    #   @return [String]
    # @!attribute target_version_weight
    #   <p> The percentage of production traffic that the target version of a Lambda
    #               function receives. </p>
    #   @return [Float]
    class LambdaFunctionInfo < Struct.new(
      nil,
      :function_name,
      :function_alias,
      :current_version,
      :target_version,
      :target_version_weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:target_version_weight] = 0 unless options.key?(:target_version_weight)
        super
      end
    end

    # <p> Information about the target Lambda function during an Lambda deployment. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute target_id
    #   <p> The unique ID of a deployment target that has a type of <code>lambdaTarget</code>.
    #           </p>
    #   @return [String]
    # @!attribute target_arn
    #   <p> The Amazon Resource Name (ARN) of the target. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status an Lambda deployment's target Lambda function.
    #           </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p> The date and time when the target Lambda function was updated by a
    #               deployment. </p>
    #   @return [Time]
    # @!attribute lifecycle_events
    #   <p> The lifecycle events of the deployment to this target Lambda function.
    #           </p>
    #   @return [Array<Types::LifecycleEvent>]
    # @!attribute lambda_function_info
    #   <p> A <code>LambdaFunctionInfo</code> object that describes a target Lambda
    #               function. </p>
    #   @return [Types::LambdaFunctionInfo]
    class LambdaTarget < Struct.new(
      nil,
      :deployment_id,
      :target_id,
      :target_arn,
      :status,
      :last_updated_at,
      :lifecycle_events,
      :lambda_function_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the most recent attempted or successful deployment to a deployment
    #             group.</p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the most recent deployment.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>A timestamp that indicates when the most recent deployment to the deployment group was
    #               complete.</p>
    #   @return [Time]
    # @!attribute create_time
    #   <p>A timestamp that indicates when the most recent deployment to the deployment group
    #               started.</p>
    #   @return [Time]
    class LastDeploymentInfo < Struct.new(
      nil,
      :deployment_id,
      :status,
      :end_time,
      :create_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a deployment lifecycle event.</p>
    # @!attribute lifecycle_event_name
    #   <p>The deployment lifecycle event name, such as <code>ApplicationStop</code>,
    #                   <code>BeforeInstall</code>, <code>AfterInstall</code>,
    #               <code>ApplicationStart</code>, or <code>ValidateService</code>.</p>
    #   @return [String]
    # @!attribute diagnostics
    #   <p>Diagnostic information about the deployment lifecycle event.</p>
    #   @return [Types::Diagnostics]
    # @!attribute start_time
    #   <p>A timestamp that indicates when the deployment lifecycle event started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>A timestamp that indicates when the deployment lifecycle event ended.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The deployment lifecycle event status:</p>
    #            <ul>
    #               <li>
    #                  <p>Pending: The deployment lifecycle event is pending.</p>
    #               </li>
    #               <li>
    #                  <p>InProgress: The deployment lifecycle event is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded: The deployment lifecycle event ran successfully.</p>
    #               </li>
    #               <li>
    #                  <p>Failed: The deployment lifecycle event has failed.</p>
    #               </li>
    #               <li>
    #                  <p>Skipped: The deployment lifecycle event has been skipped.</p>
    #               </li>
    #               <li>
    #                  <p>Unknown: The deployment lifecycle event is unknown.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LifecycleEvent < Struct.new(
      nil,
      :lifecycle_event_name,
      :diagnostics,
      :start_time,
      :end_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attempt to return the status of an already completed lifecycle event
    #             occurred.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class LifecycleEventAlreadyCompletedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit for lifecycle hooks was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class LifecycleHookLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>ListApplicationRevisions</code> operation. </p>
    # @!attribute application_name
    #   <p> The name of an CodeDeploy application associated with the user or Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The column name to use to sort the list results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>registerTime</code>: Sort by the time the revisions were registered with
    #                           CodeDeploy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>firstUsedTime</code>: Sort by the time the revisions were first used in
    #                       a deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lastUsedTime</code>: Sort by the time the revisions were last used in a
    #                       deployment.</p>
    #               </li>
    #            </ul>
    #            <p> If not specified or set to null, the results are returned in an arbitrary order.
    #           </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p> The order in which to sort the list results: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ascending</code>: ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>descending</code>: descending order.</p>
    #               </li>
    #            </ul>
    #            <p>If not specified, the results are sorted in ascending order.</p>
    #            <p>If set to null, the results are sorted in an arbitrary order.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p> An Amazon S3 bucket name to limit the search for revisions. </p>
    #            <p> If set to null, all of the user's buckets are searched. </p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p> A key prefix for the set of Amazon S3 objects to limit the search for
    #               revisions. </p>
    #   @return [String]
    # @!attribute deployed
    #   <p> Whether to list revisions based on whether the revision is the target revision of a
    #               deployment group: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>include</code>: List revisions that are target revisions of a deployment
    #                       group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>exclude</code>: Do not list revisions that are target revisions of a
    #                       deployment group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ignore</code>: List all revisions.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier returned from the previous <code>ListApplicationRevisions</code> call.
    #               It can be used to return the next set of applications in the list.</p>
    #   @return [String]
    class ListApplicationRevisionsInput < Struct.new(
      nil,
      :application_name,
      :sort_by,
      :sort_order,
      :s3_bucket,
      :s3_key_prefix,
      :deployed,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListApplicationRevisions</code> operation.</p>
    # @!attribute revisions
    #   <p>A list of locations that contain the matching revisions.</p>
    #   @return [Array<Types::RevisionLocation>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list application revisions call to return the next set of
    #               application revisions in the list.</p>
    #   @return [String]
    class ListApplicationRevisionsOutput < Struct.new(
      nil,
      :revisions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListApplications</code> operation.</p>
    # @!attribute next_token
    #   <p>An identifier returned from the previous list applications call. It can be used to
    #               return the next set of applications in the list.</p>
    #   @return [String]
    class ListApplicationsInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a ListApplications operation.</p>
    # @!attribute applications
    #   <p>A list of application names.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list applications call to return the next set of applications in
    #               the list.</p>
    #   @return [String]
    class ListApplicationsOutput < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListDeploymentConfigs</code> operation.</p>
    # @!attribute next_token
    #   <p>An identifier returned from the previous <code>ListDeploymentConfigs</code> call. It
    #               can be used to return the next set of deployment configurations in the list. </p>
    #   @return [String]
    class ListDeploymentConfigsInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListDeploymentConfigs</code> operation.</p>
    # @!attribute deployment_configs_list
    #   <p>A list of deployment configurations, including built-in configurations such as
    #                   <code>CodeDeployDefault.OneAtATime</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list deployment configurations call to return the next set of
    #               deployment configurations in the list.</p>
    #   @return [String]
    class ListDeploymentConfigsOutput < Struct.new(
      nil,
      :deployment_configs_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListDeploymentGroups</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier returned from the previous list deployment groups call. It can be used
    #               to return the next set of deployment groups in the list.</p>
    #   @return [String]
    class ListDeploymentGroupsInput < Struct.new(
      nil,
      :application_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListDeploymentGroups</code> operation.</p>
    # @!attribute application_name
    #   <p>The application name.</p>
    #   @return [String]
    # @!attribute deployment_groups
    #   <p>A list of deployment group names.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list deployment groups call to return the next set of deployment
    #               groups in the list.</p>
    #   @return [String]
    class ListDeploymentGroupsOutput < Struct.new(
      nil,
      :application_name,
      :deployment_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>ListDeploymentInstances</code> operation. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier returned from the previous list deployment instances call. It can be
    #               used to return the next set of deployment instances in the list.</p>
    #   @return [String]
    # @!attribute instance_status_filter
    #   <p>A subset of instances to list by status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: Include those instances with pending deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InProgress</code>: Include those instances where deployments are still
    #                       in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Succeeded</code>: Include those instances with successful
    #                       deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: Include those instances with failed deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Skipped</code>: Include those instances with skipped deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unknown</code>: Include those instances with deployments in an unknown
    #                       state.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute instance_type_filter
    #   <p>The set of instances in a blue/green deployment, either those in the original
    #               environment ("BLUE") or those in the replacement environment ("GREEN"), for which you
    #               want to view instance information.</p>
    #   @return [Array<String>]
    class ListDeploymentInstancesInput < Struct.new(
      nil,
      :deployment_id,
      :next_token,
      :instance_status_filter,
      :instance_type_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListDeploymentInstances</code> operation.</p>
    # @!attribute instances_list
    #   <p>A list of instance IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list deployment instances call to return the next set of
    #               deployment instances in the list.</p>
    #   @return [String]
    class ListDeploymentInstancesOutput < Struct.new(
      nil,
      :instances_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A token identifier returned from the previous <code>ListDeploymentTargets</code>
    #               call. It can be used to return the next set of deployment targets in the list. </p>
    #   @return [String]
    # @!attribute target_filters
    #   <p> A key used to filter the returned targets. The two valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TargetStatus</code> - A <code>TargetStatus</code> filter string can be
    #                           <code>Failed</code>, <code>InProgress</code>, <code>Pending</code>,
    #                           <code>Ready</code>, <code>Skipped</code>, <code>Succeeded</code>, or
    #                           <code>Unknown</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ServerInstanceLabel</code> - A <code>ServerInstanceLabel</code> filter
    #                       string can be <code>Blue</code> or <code>Green</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<String>>]
    class ListDeploymentTargetsInput < Struct.new(
      nil,
      :deployment_id,
      :next_token,
      :target_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_ids
    #   <p> The unique IDs of deployment targets. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> If a large amount of information is returned, a token identifier is also returned. It
    #               can be used in a subsequent <code>ListDeploymentTargets</code> call to return the next
    #               set of deployment targets in the list. </p>
    #   @return [String]
    class ListDeploymentTargetsOutput < Struct.new(
      nil,
      :target_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListDeployments</code> operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #            <note>
    #               <p>If <code>applicationName</code> is specified, then
    #                       <code>deploymentGroupName</code> must be specified. If it is not specified, then
    #                       <code>deploymentGroupName</code> must not be specified. </p>
    #            </note>
    #   @return [String]
    # @!attribute deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #            <note>
    #               <p>If <code>deploymentGroupName</code> is specified, then
    #                       <code>applicationName</code> must be specified. If it is not specified, then
    #                       <code>applicationName</code> must not be specified. </p>
    #            </note>
    #   @return [String]
    # @!attribute external_id
    #   <p>The unique ID of an external resource for returning deployments linked to the external
    #               resource.</p>
    #   @return [String]
    # @!attribute include_only_statuses
    #   <p>A subset of deployments to list by status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Created</code>: Include created deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Queued</code>: Include queued deployments in the resulting list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>In Progress</code>: Include in-progress deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Succeeded</code>: Include successful deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: Include failed deployments in the resulting list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stopped</code>: Include stopped deployments in the resulting
    #                       list.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute create_time_range
    #   <p>A time range (start and end) for returning a subset of the list of deployments.</p>
    #   @return [Types::TimeRange]
    # @!attribute next_token
    #   <p>An identifier returned from the previous list deployments call. It can be used to
    #               return the next set of deployments in the list.</p>
    #   @return [String]
    class ListDeploymentsInput < Struct.new(
      nil,
      :application_name,
      :deployment_group_name,
      :external_id,
      :include_only_statuses,
      :create_time_range,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListDeployments</code> operation.</p>
    # @!attribute deployments
    #   <p>A list of deployment IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list deployments call to return the next set of deployments in
    #               the list.</p>
    #   @return [String]
    class ListDeploymentsOutput < Struct.new(
      nil,
      :deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListGitHubAccountTokenNames</code> operation.</p>
    # @!attribute next_token
    #   <p>An identifier returned from the previous <code>ListGitHubAccountTokenNames</code>
    #               call. It can be used to return the next set of names in the list. </p>
    #   @return [String]
    class ListGitHubAccountTokenNamesInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListGitHubAccountTokenNames</code> operation.</p>
    # @!attribute token_name_list
    #   <p>A list of names of connections to GitHub accounts.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent <code>ListGitHubAccountTokenNames</code> call to return the next
    #               set of names in the list. </p>
    #   @return [String]
    class ListGitHubAccountTokenNamesOutput < Struct.new(
      nil,
      :token_name_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListOnPremisesInstances</code> operation.</p>
    # @!attribute registration_status
    #   <p>The registration status of the on-premises instances:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Deregistered</code>: Include deregistered on-premises instances in the
    #                       resulting list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Registered</code>: Include registered on-premises instances in the
    #                       resulting list.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tag_filters
    #   <p>The on-premises instance tags that are used to restrict the on-premises instance names
    #               returned.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute next_token
    #   <p>An identifier returned from the previous list on-premises instances call. It can be
    #               used to return the next set of on-premises instances in the list.</p>
    #   @return [String]
    class ListOnPremisesInstancesInput < Struct.new(
      nil,
      :registration_status,
      :tag_filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of the list on-premises instances operation.</p>
    # @!attribute instance_names
    #   <p>The list of matching on-premises instance names.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list on-premises instances call to return the next set of
    #               on-premises instances in the list.</p>
    #   @return [String]
    class ListOnPremisesInstancesOutput < Struct.new(
      nil,
      :instance_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of a CodeDeploy resource. <code>ListTagsForResource</code> returns all the
    #               tags associated with the resource that is identified by the <code>ResourceArn</code>.
    #           </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier returned from the previous <code>ListTagsForResource</code> call. It can
    #               be used to return the next set of applications in the list.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> A list of tags returned by <code>ListTagsForResource</code>. The tags are associated
    #               with the resource identified by the input <code>ResourceArn</code> parameter. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>If a large amount of information is returned, an identifier is also returned. It can
    #               be used in a subsequent list application revisions call to return the next set of
    #               application revisions in the list.</p>
    #   @return [String]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Elastic Load Balancing load balancer or target group used in a
    #             deployment.</p>
    #          <p>You can use load balancers and target groups in combination. For example, if you have
    #             two Classic Load Balancers, and five target groups tied to an Application Load Balancer,
    #             you can specify the two Classic Load Balancers in <code>elbInfoList</code>, and the five
    #             target groups in <code>targetGroupInfoList</code>.</p>
    # @!attribute elb_info_list
    #   <p>An array that contains information about the load balancers to use for load balancing
    #               in a deployment. If you're using Classic Load Balancers, specify those load balancers in
    #               this array. </p>
    #            <note>
    #               <p>You can add up to 10 load balancers to the array.</p>
    #            </note>
    #            <note>
    #               <p>If you're using Application Load Balancers or Network Load Balancers, use the
    #                       <code>targetGroupInfoList</code> array instead of this one.</p>
    #            </note>
    #   @return [Array<Types::ELBInfo>]
    # @!attribute target_group_info_list
    #   <p>An array that contains information about the target groups to use for load balancing
    #               in a deployment. If you're using Application Load Balancers and Network Load Balancers,
    #               specify their associated target groups in this array.</p>
    #            <note>
    #               <p>You can add up to 10 target groups to the array.</p>
    #            </note>
    #            <note>
    #               <p>If you're using Classic Load Balancers, use the <code>elbInfoList</code> array
    #                   instead of this one.</p>
    #            </note>
    #   @return [Array<Types::TargetGroupInfo>]
    # @!attribute target_group_pair_info_list
    #   <p> The target group pair information. This is an array of
    #                   <code>TargeGroupPairInfo</code> objects with a maximum size of one. </p>
    #   @return [Array<Types::TargetGroupPairInfo>]
    class LoadBalancerInfo < Struct.new(
      nil,
      :elb_info_list,
      :target_group_info_list,
      :target_group_pair_info_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the minimum number of healthy instances.</p>
    # @!attribute type
    #   <p>The minimum healthy instance type:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOST_COUNT</code>: The minimum number of healthy instances as an
    #                       absolute value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FLEET_PERCENT</code>: The minimum number of healthy instances as a
    #                       percentage of the total number of instances in the deployment.</p>
    #               </li>
    #            </ul>
    #            <p>In an example of nine instances, if a HOST_COUNT of six is specified, deploy to up to
    #               three instances at a time. The deployment is successful if six or more instances are
    #               deployed to successfully. Otherwise, the deployment fails. If a FLEET_PERCENT of 40 is
    #               specified, deploy to up to five instances at a time. The deployment is successful if
    #               four or more instances are deployed to successfully. Otherwise, the deployment
    #               fails.</p>
    #            <note>
    #               <p>In a call to the <code>GetDeploymentConfig</code>, CodeDeployDefault.OneAtATime
    #                   returns a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This
    #                   means a deployment to only one instance at a time. (You cannot set the type to
    #                   MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with
    #                   CodeDeployDefault.OneAtATime, CodeDeploy attempts to ensure that all
    #                   instances but one are kept in a healthy state during the deployment. Although this
    #                   allows one instance at a time to be taken offline for a new deployment, it also
    #                   means that if the deployment to the last instance fails, the overall deployment is
    #                   still successful.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html">CodeDeploy
    #                   Instance Health</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The minimum healthy instance value.</p>
    #   @return [Integer]
    class MinimumHealthyHosts < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Information about the minimum number of healthy instances per Availability
    #             Zone.</p>
    # @!attribute type
    #   <p>The <code>type</code> associated with the <code>MinimumHealthyHostsPerZone</code>
    #               option.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The <code>value</code> associated with the <code>MinimumHealthyHostsPerZone</code>
    #               option.</p>
    #   @return [Integer]
    class MinimumHealthyHostsPerZone < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Both an user ARN and an IAM session ARN were included in the request.
    #             Use only one ARN type.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class MultipleIamArnsProvidedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about groups of on-premises instance tags.</p>
    # @!attribute on_premises_tag_set_list
    #   <p>A list that contains other lists of on-premises instance tag groups. For an instance
    #               to be included in the deployment group, it must be identified by all of the tag groups
    #               in the list.</p>
    #   @return [Array<Array<Types::TagFilter>>]
    class OnPremisesTagSet < Struct.new(
      nil,
      :on_premises_tag_set_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The API used does not support the deployment.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class OperationNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. Pass this ID to a Lambda function that
    #               validates a deployment lifecycle event. </p>
    #   @return [String]
    # @!attribute lifecycle_event_hook_execution_id
    #   <p> The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is
    #               specified in the <code>hooks</code> section of the AppSpec file. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The result of a Lambda function that validates a deployment lifecycle
    #               event. The values listed in <b>Valid Values</b> are valid for
    #               lifecycle statuses in general; however, only <code>Succeeded</code> and
    #                   <code>Failed</code> can be passed successfully in your API call.</p>
    #   @return [String]
    class PutLifecycleEventHookExecutionStatusInput < Struct.new(
      nil,
      :deployment_id,
      :lifecycle_event_hook_execution_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_event_hook_execution_id
    #   <p>The execution ID of the lifecycle event hook. A hook is specified in the
    #                   <code>hooks</code> section of the deployment's AppSpec file.</p>
    #   @return [String]
    class PutLifecycleEventHookExecutionStatusOutput < Struct.new(
      nil,
      :lifecycle_event_hook_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A revision for an Lambda deployment that is a YAML-formatted or
    #             JSON-formatted string. For Lambda deployments, the revision is the same
    #             as the AppSpec file.</p>
    # @deprecated
    #   RawString and String revision type are deprecated, use AppSpecContent type instead.
    # @!attribute content
    #   <p>The YAML-formatted or JSON-formatted revision string. It includes information about
    #               which Lambda function to update and optional Lambda functions
    #               that validate deployment lifecycle events.</p>
    #   @return [String]
    # @!attribute sha256
    #   <p>The SHA256 hash value of the revision content.</p>
    #   @return [String]
    class RawString < Struct.new(
      nil,
      :content,
      :sha256,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a RegisterApplicationRevision operation.</p>
    # @!attribute application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A comment about the revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>Information about the application revision to register, including type and
    #               location.</p>
    #   @return [Types::RevisionLocation]
    class RegisterApplicationRevisionInput < Struct.new(
      nil,
      :application_name,
      :description,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of the register on-premises instance operation.</p>
    # @!attribute instance_name
    #   <p>The name of the on-premises instance to register.</p>
    #   @return [String]
    # @!attribute iam_session_arn
    #   <p>The ARN of the IAM session to associate with the on-premises
    #               instance.</p>
    #   @return [String]
    # @!attribute iam_user_arn
    #   <p>The ARN of the user to associate with the on-premises instance.</p>
    #   @return [String]
    class RegisterOnPremisesInstanceInput < Struct.new(
      nil,
      :instance_name,
      :iam_session_arn,
      :iam_user_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about deployments related to the specified deployment.</p>
    # @!attribute auto_update_outdated_instances_root_deployment_id
    #   <p>The deployment ID of the root deployment that triggered this deployment.</p>
    #   @return [String]
    # @!attribute auto_update_outdated_instances_deployment_ids
    #   <p>The deployment IDs of 'auto-update outdated instances' deployments triggered by this
    #               deployment.</p>
    #   @return [Array<String>]
    class RelatedDeployments < Struct.new(
      nil,
      :auto_update_outdated_instances_root_deployment_id,
      :auto_update_outdated_instances_deployment_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>RemoveTagsFromOnPremisesInstances</code>
    #             operation.</p>
    # @!attribute tags
    #   <p>The tag key-value pairs to remove from the on-premises instances.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute instance_names
    #   <p>The names of the on-premises instances from which to remove tags.</p>
    #   @return [Array<String>]
    class RemoveTagsFromOnPremisesInstancesInput < Struct.new(
      nil,
      :tags,
      :instance_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The ARN of a resource is required, but was not found. </p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ResourceArnRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be validated.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ResourceValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The named revision does not exist with the user or Amazon Web Services account.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class RevisionDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an application revision.</p>
    # @!attribute revision_location
    #   <p>Information about the location and type of an application revision.</p>
    #   @return [Types::RevisionLocation]
    # @!attribute generic_revision_info
    #   <p>Information about an application revision, including usage details and associated
    #               deployment groups.</p>
    #   @return [Types::GenericRevisionInfo]
    class RevisionInfo < Struct.new(
      nil,
      :revision_location,
      :generic_revision_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the location of an application revision.</p>
    # @!attribute revision_type
    #   <p>The type of application revision:</p>
    #            <ul>
    #               <li>
    #                  <p>S3: An application revision stored in Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>GitHub: An application revision stored in GitHub (EC2/On-premises deployments
    #                       only).</p>
    #               </li>
    #               <li>
    #                  <p>String: A YAML-formatted or JSON-formatted string (Lambda
    #                       deployments only).</p>
    #               </li>
    #               <li>
    #                  <p>AppSpecContent: An <code>AppSpecContent</code> object that contains the
    #                       contents of an AppSpec file for an Lambda or Amazon ECS
    #                       deployment. The content is formatted as JSON or YAML stored as a
    #                       RawString.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_location
    #   <p>Information about the location of a revision stored in Amazon S3. </p>
    #   @return [Types::S3Location]
    # @!attribute git_hub_location
    #   <p>Information about the location of application artifacts stored in GitHub.</p>
    #   @return [Types::GitHubLocation]
    # @!attribute string
    #   <p>Information about the location of an Lambda deployment revision stored
    #               as a RawString.</p>
    #   @return [Types::RawString]
    # @!attribute app_spec_content
    #   <p> The content of an AppSpec file for an Lambda or Amazon ECS
    #               deployment. The content is formatted as JSON or YAML and stored as a RawString. </p>
    #   @return [Types::AppSpecContent]
    class RevisionLocation < Struct.new(
      nil,
      :revision_type,
      :s3_location,
      :git_hub_location,
      :string,
      :app_spec_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The revision ID was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class RevisionRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The role ID was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class RoleRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a deployment rollback.</p>
    # @!attribute rollback_deployment_id
    #   <p>The ID of the deployment rollback.</p>
    #   @return [String]
    # @!attribute rollback_triggering_deployment_id
    #   <p>The deployment ID of the deployment that was underway and triggered a rollback
    #               deployment because it failed or was stopped.</p>
    #   @return [String]
    # @!attribute rollback_message
    #   <p>Information that describes the status of a deployment rollback (for example, whether
    #               the deployment can't be rolled back, is in progress, failed, or succeeded). </p>
    #   @return [String]
    class RollbackInfo < Struct.new(
      nil,
      :rollback_deployment_id,
      :rollback_triggering_deployment_id,
      :rollback_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the location of application artifacts stored in Amazon S3.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket where the application revision is
    #               stored.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name of the Amazon S3 object that represents the bundled artifacts for the
    #               application revision.</p>
    #   @return [String]
    # @!attribute bundle_type
    #   <p>The file type of the application revision. Must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>tar</code>: A tar archive file.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tgz</code>: A compressed tar archive file.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zip</code>: A zip archive file.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>YAML</code>: A YAML-formatted file.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code>: A JSON-formatted file.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version
    #   <p>A specific version of the Amazon S3 object that represents the bundled
    #               artifacts for the application revision.</p>
    #            <p>If the version is not specified, the system uses the most recent version by
    #               default.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The ETag of the Amazon S3 object that represents the bundled artifacts for the
    #               application revision.</p>
    #            <p>If the ETag is not specified as an input parameter, ETag validation of the object is
    #               skipped.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :key,
      :bundle_type,
      :version,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p> The unique ID of a blue/green deployment for which you want to skip the instance
    #               termination wait time. </p>
    #   @return [String]
    class SkipWaitTimeForInstanceTerminationInput < Struct.new(
      nil,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the input of a <code>StopDeployment</code> operation. </p>
    # @!attribute deployment_id
    #   <p> The unique ID of a deployment. </p>
    #   @return [String]
    # @!attribute auto_rollback_enabled
    #   <p> Indicates, when a deployment is stopped, whether instances that have been updated
    #               should be rolled back to the previous version of the application revision. </p>
    #   @return [Boolean]
    class StopDeploymentInput < Struct.new(
      nil,
      :deployment_id,
      :auto_rollback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the output of a <code>StopDeployment</code> operation. </p>
    # @!attribute status
    #   <p>The status of the stop deployment operation:</p>
    #            <ul>
    #               <li>
    #                  <p>Pending: The stop operation is pending.</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded: The stop operation was successful.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>An accompanying status message.</p>
    #   @return [String]
    class StopDeploymentOutput < Struct.new(
      nil,
      :status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tag.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an on-premises instance tag filter.</p>
    # @!attribute key
    #   <p>The on-premises instance tag filter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The on-premises instance tag filter value.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The on-premises instance tag filter type:</p>
    #            <ul>
    #               <li>
    #                  <p>KEY_ONLY: Key only.</p>
    #               </li>
    #               <li>
    #                  <p>VALUE_ONLY: Value only.</p>
    #               </li>
    #               <li>
    #                  <p>KEY_AND_VALUE: Key and value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class TagFilter < Struct.new(
      nil,
      :key,
      :value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum allowed number of tags was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class TagLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag was not specified.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class TagRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of a resource, such as a CodeDeploy application or deployment group. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> A list of tags that <code>TagResource</code> associates with a resource. The resource
    #               is identified by the <code>ResourceArn</code> input parameter. </p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of tag groups included in the tag set list exceeded the maximum allowed
    #             limit of 3.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class TagSetListLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a target group in Elastic Load Balancing to use in a deployment.
    #             Instances are registered as targets in a target group, and traffic is routed to the
    #             target group.</p>
    # @!attribute name
    #   <p>For blue/green deployments, the name of the target group that instances in the
    #               original environment are deregistered from, and instances in the replacement environment
    #               are registered with. For in-place deployments, the name of the target group that
    #               instances are deregistered from, so they are not serving traffic during a deployment,
    #               and then re-registered with after the deployment is complete. </p>
    #   @return [String]
    class TargetGroupInfo < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about two target groups and how traffic is routed during an Amazon ECS deployment. An optional test traffic route can be specified. </p>
    # @!attribute target_groups
    #   <p> One pair of target groups. One is associated with the original task set. The second
    #               is associated with the task set that serves traffic after the deployment is complete.
    #           </p>
    #   @return [Array<Types::TargetGroupInfo>]
    # @!attribute prod_traffic_route
    #   <p> The path used by a load balancer to route production traffic when an Amazon ECS deployment is complete. </p>
    #   @return [Types::TrafficRoute]
    # @!attribute test_traffic_route
    #   <p> An optional path used by a load balancer to route test traffic after an Amazon ECS deployment. Validation can occur while test traffic is served during a
    #               deployment. </p>
    #   @return [Types::TrafficRoute]
    class TargetGroupPairInfo < Struct.new(
      nil,
      :target_groups,
      :prod_traffic_route,
      :test_traffic_route,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the instances to be used in the replacement environment in a
    #             blue/green deployment.</p>
    # @!attribute tag_filters
    #   <p>The tag filter key, type, and value used to identify Amazon EC2 instances in a
    #               replacement environment for a blue/green deployment. Cannot be used in the same call as
    #                   <code>ec2TagSet</code>.</p>
    #   @return [Array<Types::EC2TagFilter>]
    # @!attribute auto_scaling_groups
    #   <p>The names of one or more Auto Scaling groups to identify a replacement
    #               environment for a blue/green deployment.</p>
    #   @return [Array<String>]
    # @!attribute ec2_tag_set
    #   <p>Information about the groups of Amazon EC2 instance tags that an instance must
    #               be identified by in order for it to be included in the replacement environment for a
    #               blue/green deployment. Cannot be used in the same call as
    #               <code>tagFilters</code>.</p>
    #   @return [Types::EC2TagSet]
    class TargetInstances < Struct.new(
      nil,
      :tag_filters,
      :auto_scaling_groups,
      :ec2_tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API function was called too frequently.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration that shifts traffic from one version of a Lambda function
    #             or Amazon ECS task set to another in two increments. The original and target
    #                 Lambda function versions or ECS task sets are specified in the
    #             deployment's AppSpec file.</p>
    # @!attribute canary_percentage
    #   <p>The percentage of traffic to shift in the first increment of a
    #                   <code>TimeBasedCanary</code> deployment.</p>
    #   @return [Integer]
    # @!attribute canary_interval
    #   <p>The number of minutes between the first and second traffic shifts of a
    #                   <code>TimeBasedCanary</code> deployment.</p>
    #   @return [Integer]
    class TimeBasedCanary < Struct.new(
      nil,
      :canary_percentage,
      :canary_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:canary_percentage] = 0 unless options.key?(:canary_percentage)
        options[:canary_interval] = 0 unless options.key?(:canary_interval)
        super
      end
    end

    # <p>A configuration that shifts traffic from one version of a Lambda function
    #             or ECS task set to another in equal increments, with an equal number of minutes between
    #             each increment. The original and target Lambda function versions or ECS task
    #             sets are specified in the deployment's AppSpec file.</p>
    # @!attribute linear_percentage
    #   <p>The percentage of traffic that is shifted at the start of each increment of a
    #                   <code>TimeBasedLinear</code> deployment.</p>
    #   @return [Integer]
    # @!attribute linear_interval
    #   <p>The number of minutes between each incremental traffic shift of a
    #                   <code>TimeBasedLinear</code> deployment.</p>
    #   @return [Integer]
    class TimeBasedLinear < Struct.new(
      nil,
      :linear_percentage,
      :linear_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:linear_percentage] = 0 unless options.key?(:linear_percentage)
        options[:linear_interval] = 0 unless options.key?(:linear_interval)
        super
      end
    end

    # <p>Information about a time range.</p>
    # @!attribute start
    #   <p>The start time of the time range.</p>
    #            <note>
    #               <p>Specify null to leave the start time open-ended.</p>
    #            </note>
    #   @return [Time]
    # @!attribute end
    #   <p>The end time of the time range.</p>
    #            <note>
    #               <p>Specify null to leave the end time open-ended.</p>
    #            </note>
    #   @return [Time]
    class TimeRange < Struct.new(
      nil,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a listener. The listener contains the path used to route traffic
    #             that is received from the load balancer to a target group. </p>
    # @!attribute listener_arns
    #   <p> The Amazon Resource Name (ARN) of one listener. The listener identifies the route
    #               between a target group and a load balancer. This is an array of strings with a maximum
    #               size of one. </p>
    #   @return [Array<String>]
    class TrafficRoute < Struct.new(
      nil,
      :listener_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that specifies how traffic is shifted from one version of a Lambda function to another version during an Lambda deployment,
    #             or from one Amazon ECS task set to another during an Amazon ECS
    #             deployment.</p>
    # @!attribute type
    #   <p>The type of traffic shifting (<code>TimeBasedCanary</code> or
    #                   <code>TimeBasedLinear</code>) used by a deployment configuration.</p>
    #   @return [String]
    # @!attribute time_based_canary
    #   <p>A configuration that shifts traffic from one version of a Lambda function
    #               or ECS task set to another in two increments. The original and target Lambda
    #               function versions or ECS task sets are specified in the deployment's AppSpec
    #               file.</p>
    #   @return [Types::TimeBasedCanary]
    # @!attribute time_based_linear
    #   <p>A configuration that shifts traffic from one version of a Lambda function
    #               or Amazon ECS task set to another in equal increments, with an equal number of
    #               minutes between each increment. The original and target Lambda function
    #               versions or Amazon ECS task sets are specified in the deployment's AppSpec
    #               file.</p>
    #   @return [Types::TimeBasedLinear]
    class TrafficRoutingConfig < Struct.new(
      nil,
      :type,
      :time_based_canary,
      :time_based_linear,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about notification triggers for the deployment group.</p>
    # @!attribute trigger_name
    #   <p>The name of the notification trigger.</p>
    #   @return [String]
    # @!attribute trigger_target_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic through
    #               which notifications about deployment or instance events are sent.</p>
    #   @return [String]
    # @!attribute trigger_events
    #   <p>The event type or types for which notifications are triggered.</p>
    #   @return [Array<String>]
    class TriggerConfig < Struct.new(
      nil,
      :trigger_name,
      :trigger_target_arn,
      :trigger_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum allowed number of triggers was exceeded.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class TriggerTargetsLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A call was submitted that is not supported for the specified deployment type.</p>
    # @!attribute message
    #   <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
    #   @return [String]
    class UnsupportedActionForDeploymentTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) that specifies from which resource to disassociate the
    #               tags with the keys in the <code>TagKeys</code> input parameter. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> A list of keys of <code>Tag</code> objects. The <code>Tag</code> objects identified
    #               by the keys are disassociated from the resource specified by the
    #                   <code>ResourceArn</code> input parameter. </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateApplication</code> operation.</p>
    # @!attribute application_name
    #   <p>The current name of the application you want to change.</p>
    #   @return [String]
    # @!attribute new_application_name
    #   <p>The new name to give the application.</p>
    #   @return [String]
    class UpdateApplicationInput < Struct.new(
      nil,
      :application_name,
      :new_application_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateDeploymentGroup</code> operation.</p>
    # @!attribute application_name
    #   <p>The application name that corresponds to the deployment group to update.</p>
    #   @return [String]
    # @!attribute current_deployment_group_name
    #   <p>The current name of the deployment group.</p>
    #   @return [String]
    # @!attribute new_deployment_group_name
    #   <p>The new name of the deployment group, if you want to change it.</p>
    #   @return [String]
    # @!attribute deployment_config_name
    #   <p>The replacement deployment configuration name to use, if you want to change it.</p>
    #   @return [String]
    # @!attribute ec2_tag_filters
    #   <p>The replacement set of Amazon EC2 tags on which to filter, if you want to
    #               change them. To keep the existing tags, enter their names. To remove tags, do not enter
    #               any tag names.</p>
    #   @return [Array<Types::EC2TagFilter>]
    # @!attribute on_premises_instance_tag_filters
    #   <p>The replacement set of on-premises instance tags on which to filter, if you want to
    #               change them. To keep the existing tags, enter their names. To remove tags, do not enter
    #               any tag names.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute auto_scaling_groups
    #   <p>The replacement list of Auto Scaling groups to be included in the deployment
    #               group, if you want to change them.</p>
    #            <ul>
    #               <li>
    #                  <p>To keep the Auto Scaling groups, enter their names or do not specify this
    #                       parameter. </p>
    #               </li>
    #               <li>
    #                  <p>To remove Auto Scaling groups, specify a non-null empty list of Auto Scaling group names to detach all CodeDeploy-managed Auto Scaling lifecycle hooks. For examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/troubleshooting-auto-scaling.html#troubleshooting-auto-scaling-heartbeat">Amazon EC2 instances in an Amazon EC2 Auto Scaling group fail to
    #                           launch and receive the error "Heartbeat Timeout"</a> in the
    #                               <i>CodeDeploy User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute service_role_arn
    #   <p>A replacement ARN for the service role, if you want to change it.</p>
    #   @return [String]
    # @!attribute trigger_configurations
    #   <p>Information about triggers to change when the deployment group is updated. For
    #               examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html">Edit a Trigger in a
    #                   CodeDeploy Deployment Group</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    #   @return [Array<Types::TriggerConfig>]
    # @!attribute alarm_configuration
    #   <p>Information to add or change about Amazon CloudWatch alarms when the deployment group
    #               is updated.</p>
    #   @return [Types::AlarmConfiguration]
    # @!attribute auto_rollback_configuration
    #   <p>Information for an automatic rollback configuration that is added or changed when a
    #               deployment group is updated.</p>
    #   @return [Types::AutoRollbackConfiguration]
    # @!attribute outdated_instances_strategy
    #   <p>Indicates what happens when new Amazon EC2 instances are launched
    #               mid-deployment and do not receive the deployed application revision.</p>
    #            <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new Amazon EC2 instances.</p>
    #            <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new Amazon EC2 instances. This may result in instances
    #               having different revisions.</p>
    #   @return [String]
    # @!attribute deployment_style
    #   <p>Information about the type of deployment, either in-place or blue/green, you want to
    #               run and whether to route deployment traffic behind a load balancer.</p>
    #   @return [Types::DeploymentStyle]
    # @!attribute blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    #   @return [Types::BlueGreenDeploymentConfiguration]
    # @!attribute load_balancer_info
    #   <p>Information about the load balancer used in a deployment.</p>
    #   @return [Types::LoadBalancerInfo]
    # @!attribute ec2_tag_set
    #   <p>Information about groups of tags applied to on-premises instances. The deployment
    #               group includes only Amazon EC2 instances identified by all the tag
    #               groups.</p>
    #   @return [Types::EC2TagSet]
    # @!attribute ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name
    #               pair using the format <code><clustername>:<servicename></code>. </p>
    #   @return [Array<Types::ECSService>]
    # @!attribute on_premises_tag_set
    #   <p>Information about an on-premises instance tag set. The deployment group includes only
    #               on-premises instances identified by all the tag groups.</p>
    #   @return [Types::OnPremisesTagSet]
    # @!attribute termination_hook_enabled
    #   <p>This parameter only applies if you are using CodeDeploy with Amazon EC2 Auto Scaling. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html">Integrating
    #                   CodeDeploy with Amazon EC2 Auto Scaling</a> in the <i>CodeDeploy User Guide</i>.</p>
    #            <p>Set <code>terminationHookEnabled</code> to <code>true</code> to have CodeDeploy install a termination hook into your Auto Scaling group when you update a
    #               deployment group. When this hook is installed, CodeDeploy will perform
    #               termination deployments.</p>
    #            <p>For information about termination deployments, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable">Enabling termination deployments during Auto Scaling scale-in events</a> in the
    #               <i>CodeDeploy User Guide</i>.</p>
    #            <p>For more information about Auto Scaling scale-in events, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in">Scale in</a> topic in the <i>Amazon EC2 Auto Scaling User
    #                   Guide</i>.</p>
    #   @return [Boolean]
    class UpdateDeploymentGroupInput < Struct.new(
      nil,
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
      :outdated_instances_strategy,
      :deployment_style,
      :blue_green_deployment_configuration,
      :load_balancer_info,
      :ec2_tag_set,
      :ecs_services,
      :on_premises_tag_set,
      :termination_hook_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateDeploymentGroup</code> operation.</p>
    # @!attribute hooks_not_cleaned_up
    #   <p>If the output contains no data, and the corresponding deployment group contained at
    #               least one Auto Scaling group, CodeDeploy successfully removed all
    #               corresponding Auto Scaling lifecycle event hooks from the Amazon Web Services account. If the output contains data, CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the Amazon Web Services account.</p>
    #   @return [Array<Types::AutoScalingGroup>]
    class UpdateDeploymentGroupOutput < Struct.new(
      nil,
      :hooks_not_cleaned_up,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configure the <code>ZonalConfig</code> object if you want CodeDeploy to
    #             deploy your application to one <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-availability-zones">Availability Zone</a> at a time, within an Amazon Web Services Region. By
    #             deploying to one Availability Zone at a time, you can expose your deployment to a
    #             progressively larger audience as confidence in the deployment's performance and
    #             viability grows. If you don't configure the <code>ZonalConfig</code> object, CodeDeploy deploys your application to a random selection of hosts across a
    #             Region.</p>
    #          <p>For more information about the zonal configuration feature, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config">zonal configuration</a> in the <i>CodeDeploy User
    #                 Guide</i>.</p>
    # @!attribute first_zone_monitor_duration_in_seconds
    #   <p>The period of time, in seconds, that CodeDeploy must wait after completing a
    #               deployment to the <i>first</i> Availability Zone. CodeDeploy will
    #               wait this amount of time before starting a deployment to the second Availability Zone.
    #               You might set this option if you want to allow extra bake time for the first
    #               Availability Zone. If you don't specify a value for
    #                   <code>firstZoneMonitorDurationInSeconds</code>, then CodeDeploy uses the
    #                   <code>monitorDurationInSeconds</code> value for the first Availability Zone.</p>
    #            <p>For more information about the zonal configuration feature, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config">zonal configuration</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute monitor_duration_in_seconds
    #   <p>The period of time, in seconds, that CodeDeploy must wait after completing a
    #               deployment to an Availability Zone. CodeDeploy will wait this amount of time
    #               before starting a deployment to the next Availability Zone. Consider adding a monitor
    #               duration to give the deployment some time to prove itself (or 'bake') in one
    #               Availability Zone before it is released in the next zone. If you don't specify a
    #                   <code>monitorDurationInSeconds</code>, CodeDeploy starts deploying to the
    #               next Availability Zone immediately.</p>
    #            <p>For more information about the zonal configuration feature, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config">zonal configuration</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute minimum_healthy_hosts_per_zone
    #   <p>The number or percentage of instances that must remain available per Availability Zone
    #               during a deployment. This option works in conjunction with the
    #                   <code>MinimumHealthyHosts</code> option. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html#minimum-healthy-hosts-az">About the minimum number of healthy hosts per Availability Zone</a> in the
    #                       <i>CodeDeploy User Guide</i>.</p>
    #            <p>If you don't specify the <code>minimumHealthyHostsPerZone</code> option, then CodeDeploy uses a default value of <code>0</code> percent.</p>
    #            <p>For more information about the zonal configuration feature, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config">zonal configuration</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    #   @return [Types::MinimumHealthyHostsPerZone]
    class ZonalConfig < Struct.new(
      nil,
      :first_zone_monitor_duration_in_seconds,
      :monitor_duration_in_seconds,
      :minimum_healthy_hosts_per_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
