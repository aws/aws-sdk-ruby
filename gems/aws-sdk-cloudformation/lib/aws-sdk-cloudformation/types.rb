# frozen_string_literal: true

# This is generated code!

module Aws::CloudFormation
  # This module contains the types returned by client operations.
  module Types

    # <p>Structure that contains the results of the account gate function which CloudFormation invokes,
    #    if present, before proceeding with a StackSet operation in an account and Region.</p>
    #          <p>For each account and Region, CloudFormation lets you specify a Lambda function that encapsulates
    #    any requirements that must be met before CloudFormation can proceed with a StackSet operation in that
    #    account and Region. CloudFormation invokes the function each time a StackSet operation is requested
    #    for that account and Region; if the function returns <code>FAILED</code>, CloudFormation cancels the
    #    operation in that account and Region, and sets the StackSet operation result status for that
    #    account and Region to <code>FAILED</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html">Prevent failed StackSets
    #     deployments using target account gates</a> in the
    #    <i>CloudFormation User Guide</i>.</p>
    # @!attribute status
    #   <p>The status of the account gate function.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The account gate function has determined that the account and
    #        Region passes any requirements for a StackSet operation to occur. CloudFormation proceeds with the
    #        stack operation in that account and Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The account gate function has determined that the account and Region
    #        doesn't meet the requirements for a StackSet operation to occur. CloudFormation cancels the
    #        StackSet operation in that account and Region, and sets the StackSet operation result status
    #        for that account and Region to <code>FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>: CloudFormation has skipped calling the account gate function for this
    #        account and Region, for one of the following reasons:</p>
    #                  <ul>
    #                     <li>
    #                        <p>An account gate function hasn't been specified for the account and Region. CloudFormation
    #          proceeds with the StackSet operation in this account and Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>AWSCloudFormationStackSetExecutionRole</code> of the administration account
    #          lacks permissions to invoke the function. CloudFormation proceeds with the StackSet operation in
    #          this account and Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>Either no action is necessary, or no action is possible, on the stack. CloudFormation skips
    #          the StackSet operation in this account and Region.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the account gate status assigned to this account and Region for the StackSet
    #      operation.</p>
    #   @return [String]
    class AccountGateResult < Struct.new(
      nil,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current CloudFormation limits for your account.</p>
    #          <p>CloudFormation has the following limits per account:</p>
    #          <ul>
    #             <li>
    #                <p>Number of concurrent resources</p>
    #             </li>
    #             <li>
    #                <p>Number of stacks</p>
    #             </li>
    #             <li>
    #                <p>Number of stack outputs</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">Understand CloudFormation
    #     quotas</a> in the <i>CloudFormation User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the account limit.</p>
    #            <p>Values: <code>ConcurrentResourcesLimit</code> | <code>StackLimit</code> |
    #       <code>StackOutputsLimit</code>
    #            </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that's associated with the account limit name.</p>
    #   @return [Integer]
    class AccountLimit < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ActivateOrganizationsAccessInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ActivateOrganizationsAccessOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    #   @return [String]
    # @!attribute public_type_arn
    #   <p>The Amazon Resource Name (ARN) of the public extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    #   @return [String]
    # @!attribute type_name_alias
    #   <p>An alias to assign to the public extension in this account and Region. If you specify an
    #         alias for the extension, CloudFormation treats the alias as the extension type name within this
    #         account and Region. You must use the alias to refer to the extension in your templates, API
    #         calls, and CloudFormation console.</p>
    #            <p>An extension alias must be unique within a given account and Region. You can activate the
    #         same public resource multiple times in the same account and Region, using different type name
    #         aliases.</p>
    #   @return [String]
    # @!attribute auto_update
    #   <p>Whether to automatically update the extension in this account and Region when a new
    #           <i>minor</i> version is published by the extension publisher. Major versions
    #         released by the publisher must be manually updated.</p>
    #            <p>The default is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute logging_config
    #   <p>Contains logging configuration information for an extension.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute execution_role_arn
    #   <p>The name of the IAM execution role to use to activate the extension.</p>
    #   @return [String]
    # @!attribute version_bump
    #   <p>Manually updates a previously-activated type to a new major or minor version, if
    #         available. You can also use this parameter to update the value of
    #         <code>AutoUpdate</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MAJOR</code>: CloudFormation updates the extension to the newest major version, if
    #             one is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MINOR</code>: CloudFormation updates the extension to the newest minor version, if
    #             one is available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute major_version
    #   <p>The major version of this extension you want to activate, if multiple major versions are
    #         available. The default is the latest major version. CloudFormation uses the latest available
    #           <i>minor</i> version of the major version selected.</p>
    #            <p>You can specify <code>MajorVersion</code> or <code>VersionBump</code>, but not
    #         both.</p>
    #   @return [Integer]
    class ActivateTypeInput < Struct.new(
      nil,
      :type,
      :public_type_arn,
      :publisher_id,
      :type_name,
      :type_name_alias,
      :auto_update,
      :logging_config,
      :execution_role_arn,
      :version_bump,
      :major_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the activated extension in this account and
    #         Region.</p>
    #   @return [String]
    class ActivateTypeOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource with the name requested already exists.</p>
    # @!attribute message
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether StackSets automatically deploys to Organizations accounts that are
    #    added to a target organization or organizational unit (OU). For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html">Enable or
    #     disable automatic deployments for StackSets in Organizations</a> in the
    #     <i>CloudFormation User Guide</i>.</p>
    # @!attribute enabled
    #   <p>If set to <code>true</code>, StackSets automatically deploys additional stack instances to
    #       Organizations accounts that are added to a target organization or organizational unit
    #      (OU) in the specified Regions. If an account is removed from a target organization or OU,
    #      StackSets deletes stack instances from the account in the specified Regions.</p>
    #   @return [Boolean]
    # @!attribute retain_stacks_on_account_removal
    #   <p>If set to <code>true</code>, stack resources are retained when an account is removed from a
    #      target organization or OU. If set to <code>false</code>, stack resources are deleted. Specify
    #      only if <code>Enabled</code> is set to <code>True</code>.</p>
    #   @return [Boolean]
    class AutoDeployment < Struct.new(
      nil,
      :enabled,
      :retain_stacks_on_account_removal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information concerning an error generated during the setting of configuration data
    #    for a CloudFormation extension.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute type_configuration_identifier
    #   <p>Identifying information for the configuration of a CloudFormation extension.</p>
    #   @return [Types::TypeConfigurationIdentifier]
    class BatchDescribeTypeConfigurationsError < Struct.new(
      nil,
      :error_code,
      :error_message,
      :type_configuration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type_configuration_identifiers
    #   <p>The list of identifiers for the desired extension configurations.</p>
    #   @return [Array<Types::TypeConfigurationIdentifier>]
    class BatchDescribeTypeConfigurationsInput < Struct.new(
      nil,
      :type_configuration_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of information concerning any errors generated during the setting of the specified
    #         configurations.</p>
    #   @return [Array<Types::BatchDescribeTypeConfigurationsError>]
    # @!attribute unprocessed_type_configurations
    #   <p>A list of any of the specified extension configurations that CloudFormation could not process
    #         for any reason.</p>
    #   @return [Array<Types::TypeConfigurationIdentifier>]
    # @!attribute type_configurations
    #   <p>A list of any of the specified extension configurations from the CloudFormation
    #         registry.</p>
    #   @return [Array<Types::TypeConfigurationDetails>]
    class BatchDescribeTypeConfigurationsOutput < Struct.new(
      nil,
      :errors,
      :unprocessed_type_configurations,
      :type_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred during a CloudFormation registry operation.</p>
    # @!attribute message
    #   <p>A message with details about the error that occurred.</p>
    #   @return [String]
    class CFNRegistryException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>CancelUpdateStack</a> action.</p>
    # @!attribute stack_name
    #   <note>
    #               <p>If you don't pass a parameter to <code>StackName</code>, the API returns a response that
    #           describes all resources in the account.</p>
    #               <p>The IAM policy below can be added to IAM policies when you want to limit
    #           resource-level permissions and avoid returning a response when no parameter is sent in the
    #           request:</p>
    #               <p>
    #                  <code>{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny", "Action":
    #             "cloudformation:DescribeStacks", "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }]
    #             }</code>
    #               </p>
    #            </note>
    #            <p>The name or the unique stack ID that's associated with the stack.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to cancel an
    #         update on a stack with the same name. You might retry <code>CancelUpdateStack</code> requests
    #         to ensure that CloudFormation successfully received them.</p>
    #   @return [String]
    class CancelUpdateStackInput < Struct.new(
      nil,
      :stack_name,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Change</code> structure describes the changes CloudFormation will perform if you
    #    execute the change set.</p>
    # @!attribute type
    #   <p>The type of entity that CloudFormation changes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Resource</code> This change is for a resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute hook_invocation_count
    #   <p>Is either <code>null</code>, if no Hooks invoke for the resource, or contains the number
    #      of Hooks that will invoke for the resource.</p>
    #   @return [Integer]
    # @!attribute resource_change
    #   <p>A <code>ResourceChange</code> structure that describes the resource and action that
    #      CloudFormation will perform.</p>
    #   @return [Types::ResourceChange]
    class Change < Struct.new(
      nil,
      :type,
      :hook_invocation_count,
      :resource_change,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the resource, the Hook, and the Hook version to be
    #    invoked.</p>
    # @!attribute invocation_point
    #   <p>The specific point in the provisioning process where the Hook is invoked.</p>
    #   @return [String]
    # @!attribute failure_mode
    #   <p>Specify the Hook failure mode for non-compliant resources in the followings
    #      ways.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code> Stops provisioning resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN</code> Allows provisioning to continue with a warning message.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type_name
    #   <p>The unique name for your Hook. Specifies a three-part namespace for your
    #      Hook, with a recommended pattern of <code>Organization::Service::Hook</code>.</p>
    #            <note>
    #               <p>The following organization namespaces are reserved and can't be used in your Hook
    #       type names:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>Alexa</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AMZN</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ASK</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Custom</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Dev</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>The version ID of the type specified.</p>
    #   @return [String]
    # @!attribute type_configuration_version_id
    #   <p>The version ID of the type configuration.</p>
    #   @return [String]
    # @!attribute target_details
    #   <p>Specifies details about the target that the Hook will run against.</p>
    #   @return [Types::ChangeSetHookTargetDetails]
    class ChangeSetHook < Struct.new(
      nil,
      :invocation_point,
      :failure_mode,
      :type_name,
      :type_version_id,
      :type_configuration_version_id,
      :target_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies <code>RESOURCE</code> type target details for activated Hooks.</p>
    # @!attribute logical_resource_id
    #   <p>The resource's logical ID, which is defined in the stack's template.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of CloudFormation resource, such as <code>AWS::S3::Bucket</code>.</p>
    #   @return [String]
    # @!attribute resource_action
    #   <p>Specifies the action of the resource.</p>
    #   @return [String]
    class ChangeSetHookResourceTargetDetails < Struct.new(
      nil,
      :logical_resource_id,
      :resource_type,
      :resource_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies target details for an activated Hook.</p>
    # @!attribute target_type
    #   <p>The name of the type.</p>
    #   @return [String]
    # @!attribute resource_target_details
    #   <p>Required if <code>TargetType</code> is <code>RESOURCE</code>.</p>
    #   @return [Types::ChangeSetHookResourceTargetDetails]
    class ChangeSetHookTargetDetails < Struct.new(
      nil,
      :target_type,
      :resource_target_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified change set name or ID doesn't exit. To view valid change sets for a stack, use the
    #    <code>ListChangeSets</code> operation.</p>
    # @!attribute message
    #   @return [String]
    class ChangeSetNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and the
    #    stack with which it's associated.</p>
    # @!attribute stack_id
    #   <p>The ID of the stack with which the change set is associated.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack with which the change set is associated.</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>The ID of the change set.</p>
    #   @return [String]
    # @!attribute change_set_name
    #   <p>The name of the change set.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change
    #      set. If you can't execute the change set, the status indicates why. For example, a change set
    #      might be in an <code>UNAVAILABLE</code> state because CloudFormation is still creating it or in an
    #       <code>OBSOLETE</code> state because the stack was already updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of the change set, such as <code>CREATE_PENDING</code>,
    #       <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A description of the change set's status. For example, if your change set is in the
    #       <code>FAILED</code> state, CloudFormation shows the error message.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The start time when the change set was created, in UTC.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Descriptive information about the change set.</p>
    #   @return [String]
    # @!attribute include_nested_stacks
    #   <p>Specifies the current setting of <code>IncludeNestedStacks</code> for the change set.</p>
    #   @return [Boolean]
    # @!attribute parent_change_set_id
    #   <p>The parent change set ID.</p>
    #   @return [String]
    # @!attribute root_change_set_id
    #   <p>The root change set ID.</p>
    #   @return [String]
    # @!attribute import_existing_resources
    #   <p>Indicates if the change set imports resources that already exist.</p>
    #   @return [Boolean]
    class ChangeSetSummary < Struct.new(
      nil,
      :stack_id,
      :stack_name,
      :change_set_id,
      :change_set_name,
      :execution_status,
      :status,
      :status_reason,
      :creation_time,
      :description,
      :include_nested_stacks,
      :parent_change_set_id,
      :root_change_set_id,
      :import_existing_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No more than 5 generated templates can be in an <code>InProgress</code> or <code>Pending</code> status at one
    #    time. This error is also returned if a generated template that is in an <code>InProgress</code> or
    #    <code>Pending</code> status is attempted to be updated or deleted.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentResourcesLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>ContinueUpdateRollback</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique ID of the stack that you want to continue rolling back.</p>
    #            <note>
    #               <p>Don't specify the name of a nested stack (a stack that was created by using the
    #             <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the
    #           parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code>
    #           resource).</p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to roll back the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that's generated from
    #         your user credentials.</p>
    #   @return [String]
    # @!attribute resources_to_skip
    #   <p>A list of the logical IDs of the resources that CloudFormation skips during the continue
    #         update rollback operation. You can specify only resources that are in the
    #           <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources that
    #         are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an update
    #         was canceled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason.</p>
    #            <important>
    #               <p>Specify this property to skip rolling back resources that CloudFormation can't successfully
    #           roll back. We recommend that you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. CloudFormation sets the status of the
    #           specified resources to <code>UPDATE_COMPLETE</code> and continues to roll back the stack.
    #           After the rollback is complete, the state of the skipped resources will be inconsistent with
    #           the state of the resources in the stack template. Before performing another stack update,
    #           you must update the stack or resources to be consistent with each other. If you don't,
    #           subsequent stack updates might fail, and the stack will become unrecoverable.</p>
    #            </important>
    #            <p>Specify the minimum number of resources required to successfully roll back your stack. For
    #         example, a failed resource update might cause dependent resources to fail. In this case, it
    #         might not be necessary to skip the dependent resources.</p>
    #            <p>To skip resources that are part of nested stacks, use the following format:
    #           <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of a
    #         stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the
    #           <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one of
    #         the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
    #           <code>DELETE_FAILED</code>.</p>
    #            <note>
    #               <p>Don't confuse a child stack's name with its corresponding logical ID defined in the
    #           parent stack. For an example of a continue update rollback operation with nested stacks, see
    #             <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks">Continue rolling back from failed nested stack updates</a>.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify this
    #         token if you plan to retry requests so that CloudFormation knows that you're not attempting to
    #         continue the rollback to a stack with the same name. You might retry
    #           <code>ContinueUpdateRollback</code> requests to ensure that CloudFormation successfully received
    #         them.</p>
    #   @return [String]
    class ContinueUpdateRollbackInput < Struct.new(
      nil,
      :stack_name,
      :role_arn,
      :resources_to_skip,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>ContinueUpdateRollback</a> operation.</p>
    class ContinueUpdateRollbackOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>CreateChangeSet</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique ID of the stack for which you are creating a change set. CloudFormation
    #         generates the change set by comparing this stack's information with the information that you
    #         submit, such as a modified template or different parameter input values.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>A structure that contains the body of the revised template, with a minimum length of 1
    #         byte and a maximum length of 51,200 bytes. CloudFormation generates the change set by comparing
    #         this template with the template of the stack that you specified.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #         <code>TemplateURL</code>.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of the file that contains the revised template. The URL must point to a template
    #         (max size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. CloudFormation
    #         generates the change set by comparing this template with the stack that you specified. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static
    #         websites are not supported.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #         <code>TemplateURL</code>.</p>
    #   @return [String]
    # @!attribute use_previous_template
    #   <p>Whether to reuse the template that's associated with the stack to create the change
    #         set.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the change
    #         set. For more information, see the <a>Parameter</a> data type.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account; for example, by creating new IAM users. For those stacks, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">
    #                   AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">
    #                   AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html"> AWS::IAM::ManagedPolicy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">
    #                   AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">
    #                   AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">
    #                   AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this can
    #             include simple actions like find-and-replace operations, all the way to extensive
    #             transformations of entire templates. Because of this, users typically create a change set
    #             from the processed template, so that they can review the changes resulting from the macros
    #             before actually creating the stack. If your stack template contains one or more macros,
    #             and you choose to create a stack directly from the processed template, without first
    #             reviewing the resulting changes in a change set, you must acknowledge this capability.
    #             This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a>
    #             and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <note>
    #                     <p>This capacity doesn't apply to creating change sets, and specifying it when creating
    #               change sets has no effect.</p>
    #                     <p>If you want to create a stack from a stack template that contains macros
    #                 <i>and</i> nested stacks, you must create or update the stack directly
    #               from the template using the <a>CreateStack</a> or <a>UpdateStack</a> action, and specifying this capability.</p>
    #                  </note>
    #                  <p>For more information about macros, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>The template resource types that you have permissions to work with if you execute this
    #         change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #           <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource type that you're updating, the
    #         stack update fails. By default, CloudFormation grants permissions to all resource types. IAM
    #         uses this parameter for condition keys in IAM policies for CloudFormation. For more information,
    #         see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html">Control access with
    #           Identity and Access Management</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes when executing the
    #         change set. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that is generated from
    #         your user credentials.</p>
    #   @return [String]
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    #   @return [Types::RollbackConfiguration]
    # @!attribute notification_ar_ns
    #   <p>The Amazon Resource Names (ARNs) of Amazon SNS topics that CloudFormation associates with the
    #         stack. To remove all associated notification topics, specify an empty list.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these tags to
    #         resources in the stack. You can specify a maximum of 50 tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute change_set_name
    #   <p>The name of the change set. The name must be unique among all change sets that are
    #         associated with the specified stack.</p>
    #            <p>A change set name can contain only alphanumeric, case sensitive characters, and hyphens.
    #         It must start with an alphabetical character and can't exceed 128 characters.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to create
    #         another change set with the same name. You might retry <code>CreateChangeSet</code> requests
    #         to ensure that CloudFormation successfully received them.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description to help you identify this change set.</p>
    #   @return [String]
    # @!attribute change_set_type
    #   <p>The type of change set operation. To create a change set for a new stack, specify
    #           <code>CREATE</code>. To create a change set for an existing stack, specify
    #           <code>UPDATE</code>. To create a change set for an import operation, specify
    #           <code>IMPORT</code>.</p>
    #            <p>If you create a change set for a new stack, CloudFormation creates a stack with a unique stack
    #         ID, but no template or resources. The stack will be in the <code>REVIEW_IN_PROGRESS</code>
    #         state until you execute the change set.</p>
    #            <p>By default, CloudFormation specifies <code>UPDATE</code>. You can't use the
    #           <code>UPDATE</code> type to create a change set for a new stack or the <code>CREATE</code>
    #         type to create a change set for an existing stack.</p>
    #   @return [String]
    # @!attribute resources_to_import
    #   <p>The resources to import into your stack.</p>
    #   @return [Array<Types::ResourceToImport>]
    # @!attribute include_nested_stacks
    #   <p>Creates a change set for the all nested stacks specified in the template. The default
    #         behavior of this action is set to <code>False</code>. To include nested sets in a change set,
    #         specify <code>True</code>.</p>
    #   @return [Boolean]
    # @!attribute on_stack_failure
    #   <p>Determines what action will be taken if stack creation fails. If this parameter is
    #         specified, the <code>DisableRollback</code> parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation must not be specified. This must be one of these
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Deletes the change set if the stack creation fails. This is only
    #             valid when the <code>ChangeSetType</code> parameter is set to <code>CREATE</code>. If the
    #             deletion of the stack fails, the status of the stack is <code>DELETE_FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DO_NOTHING</code> - if the stack creation fails, do nothing. This is equivalent
    #             to specifying <code>true</code> for the <code>DisableRollback</code> parameter to the
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK</code> - if the stack creation fails, roll back the stack. This is
    #             equivalent to specifying <code>false</code> for the <code>DisableRollback</code> parameter
    #             to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation.</p>
    #               </li>
    #            </ul>
    #            <p>For nested stacks, when the <code>OnStackFailure</code> parameter is set to
    #           <code>DELETE</code> for the change set for the parent stack, any failure in a child stack
    #         will cause the parent stack creation to fail and all stacks to be deleted.</p>
    #   @return [String]
    # @!attribute import_existing_resources
    #   <p>Indicates if the change set auto-imports resources that already exist. For more
    #         information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/import-resources-automatically.html">Import Amazon Web Services
    #           resources into a CloudFormation stack automatically</a> in the
    #           <i>CloudFormation User Guide</i>.</p>
    #            <note>
    #               <p>This parameter can only import resources that have custom names in templates. For more
    #           information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-properties-name.html">name
    #             type</a> in the <i>CloudFormation User Guide</i>. To import resources that do not
    #           accept custom names, such as EC2 instances, use the <code>ResourcesToImport</code> parameter
    #           instead.</p>
    #            </note>
    #   @return [Boolean]
    class CreateChangeSetInput < Struct.new(
      nil,
      :stack_name,
      :template_body,
      :template_url,
      :use_previous_template,
      :parameters,
      :capabilities,
      :resource_types,
      :role_arn,
      :rollback_configuration,
      :notification_ar_ns,
      :tags,
      :change_set_name,
      :client_token,
      :description,
      :change_set_type,
      :resources_to_import,
      :include_nested_stacks,
      :on_stack_failure,
      :import_existing_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>CreateChangeSet</a> action.</p>
    # @!attribute id
    #   <p>The Amazon Resource Name (ARN) of the change set.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The unique ID of the stack.</p>
    #   @return [String]
    class CreateChangeSetOutput < Struct.new(
      nil,
      :id,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>An optional list of resources to be included in the generated template.</p>
    #            <p>If no resources are specified,the template will be created without any resources.
    #         Resources can be added to the template using the <code>UpdateGeneratedTemplate</code> API
    #         action.</p>
    #   @return [Array<Types::ResourceDefinition>]
    # @!attribute generated_template_name
    #   <p>The name assigned to the generated template.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>An optional name or ARN of a stack to use as the base stack for the generated
    #         template.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>The configuration details of the generated template, including the
    #           <code>DeletionPolicy</code> and <code>UpdateReplacePolicy</code>.</p>
    #   @return [Types::TemplateConfiguration]
    class CreateGeneratedTemplateInput < Struct.new(
      nil,
      :resources,
      :generated_template_name,
      :stack_name,
      :template_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generated_template_id
    #   <p>The ID of the generated template.</p>
    #   @return [String]
    class CreateGeneratedTemplateOutput < Struct.new(
      nil,
      :generated_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>CreateStack</a> action.</p>
    # @!attribute stack_name
    #   <p>The name that's associated with the stack. The name must be unique in the Region in which
    #         you are creating the stack.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It
    #           must start with an alphabetical character and can't be longer than 128 characters.</p>
    #            </note>
    #   @return [String]
    # @!attribute template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify either <code>TemplateBody</code> or
    #         <code>TemplateURL</code>, but not both.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template (max
    #         size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #           <code>TemplateURL</code> parameter, but not both.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #         For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #         type.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute disable_rollback
    #   <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You
    #         can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not
    #         both.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    #   @return [Types::RollbackConfiguration]
    # @!attribute timeout_in_minutes
    #   <p>The amount of time that can pass before the stack status becomes
    #           <code>CREATE_FAILED</code>; if <code>DisableRollback</code> is not set or is set to
    #           <code>false</code>, the stack will be rolled back.</p>
    #   @return [Integer]
    # @!attribute notification_ar_ns
    #   <p>The Amazon SNS topic ARNs to publish stack related events. You can find your Amazon SNS topic ARNs
    #         using the Amazon SNS console or your Command Line Interface (CLI).</p>
    #   @return [Array<String>]
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account; for example, by creating new IAM users. For those stacks, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html"> AWS::IAM::ManagedPolicy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this can
    #             include simple actions like find-and-replace operations, all the way to extensive
    #             transformations of entire templates. Because of this, users typically create a change set
    #             from the processed template, so that they can review the changes resulting from the macros
    #             before actually creating the stack. If your stack template contains one or more macros,
    #             and you choose to create a stack directly from the processed template, without first
    #             reviewing the resulting changes in a change set, you must acknowledge this capability.
    #             This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a>
    #             and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to create a stack from a stack template that contains macros
    #               <i>and</i> nested stacks, you must create the stack directly from the
    #             template using this capability.</p>
    #                  <important>
    #                     <p>You should only create stacks directly from a stack template that contains macros if
    #               you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for processing stack
    #               templates. Be aware that the Lambda function owner can update the function operation
    #               without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>The template resource types that you have permissions to work with for this create stack
    #         action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #           <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template
    #         resource types: <code>AWS::*</code> (for all Amazon Web Services resources), <code>Custom::*</code> (for all
    #         custom resources), <code>Custom::<i>logical_ID</i>
    #               </code> (for a specific custom resource),
    #           <code>AWS::<i>service_name</i>::*</code> (for all resources of a particular
    #         Amazon Web Services service), and
    #             <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i>
    #               </code> (for a specific Amazon Web Services resource).</p>
    #            <p>If the list of resource types doesn't include a resource that you're creating, the stack
    #         creation fails. By default, CloudFormation grants permissions to all resource types. IAM uses
    #         this parameter for CloudFormation-specific condition keys in IAM policies. For more information,
    #         see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html">Control access with
    #           Identity and Access Management</a>.</p>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to create the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that's generated from
    #         your user credentials.</p>
    #   @return [String]
    # @!attribute on_failure
    #   <p>Determines what action will be taken if stack creation fails. This must be one of:
    #           <code>DO_NOTHING</code>, <code>ROLLBACK</code>, or <code>DELETE</code>. You can specify
    #         either <code>OnFailure</code> or <code>DisableRollback</code>, but not both.</p>
    #            <note>
    #               <p>Although the default setting is <code>ROLLBACK</code>, there is one exception. This
    #           exception occurs when a StackSet attempts to deploy a stack instance and the stack instance
    #           fails to create successfully. In this case, the <code>CreateStack</code> call overrides the
    #           default setting and sets the value of <code>OnFailure</code> to <code>DELETE</code>.</p>
    #            </note>
    #            <p>Default: <code>ROLLBACK</code>
    #            </p>
    #   @return [String]
    # @!attribute stack_policy_body
    #   <p>Structure that contains the stack policy body. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html">Prevent updates to stack resources</a> in the <i>CloudFormation User Guide</i>.
    #         You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    #   @return [String]
    # @!attribute stack_policy_url
    #   <p>Location of a file that contains the stack policy. The URL must point to a policy (maximum
    #         size: 16 KB) located in an S3 bucket in the same Region as the stack. The location for an Amazon S3
    #         bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these tags to the
    #         resources created in the stack. A maximum number of 50 tags can be specified.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you
    #         plan to retry requests so that CloudFormation knows that you're not attempting to create a stack
    #         with the same name. You might retry <code>CreateStack</code> requests to ensure that
    #         CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #         token, which you can use to track operations. For example, if you execute a
    #           <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #           <code>StackEvents</code> generated by that operation will have
    #           <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #         operations that are initiated from the console use the token format
    #           <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #         operation . For example, if you create a stack using the console, each stack event would be
    #         assigned the same token in the following format:
    #           <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #   @return [String]
    # @!attribute enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack. If a user attempts to
    #         delete a stack with termination protection enabled, the operation fails and the stack remains
    #         unchanged. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protect CloudFormation
    #           stacks from being deleted</a> in the <i>CloudFormation User Guide</i>. Termination
    #         protection is deactivated on stacks by default.</p>
    #            <p>For <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #         termination protection is set on the root stack and can't be changed directly on the nested
    #         stack.</p>
    #   @return [Boolean]
    # @!attribute retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    class CreateStackInput < Struct.new(
      nil,
      :stack_name,
      :template_body,
      :template_url,
      :parameters,
      :disable_rollback,
      :rollback_configuration,
      :timeout_in_minutes,
      :notification_ar_ns,
      :capabilities,
      :resource_types,
      :role_arn,
      :on_failure,
      :stack_policy_body,
      :stack_policy_url,
      :tags,
      :client_request_token,
      :enable_termination_protection,
      :retain_except_on_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to create stack instances from.</p>
    #   @return [String]
    # @!attribute accounts
    #   <p>[Self-managed permissions] The account IDs of one or more Amazon Web Services accounts that you want to
    #         create stack instances in the specified Region(s) for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    #   @return [Array<String>]
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which to create stack
    #         instances in the specified Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    #   @return [Types::DeploymentTargets]
    # @!attribute regions
    #   <p>The names of one or more Amazon Web Services Regions where you want to create stack instances using the
    #         specified Amazon Web Services accounts.</p>
    #   @return [Array<String>]
    # @!attribute parameter_overrides
    #   <p>A list of StackSet parameters whose values you want to override in the selected stack
    #         instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #         accounts and Amazon Web Services Regions. When specifying parameters and their values, be aware of how
    #         CloudFormation sets parameter values during stack instance operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify its
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter and
    #             specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify both a
    #             value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the StackSet, specify a
    #             parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property at
    #             all.</p>
    #               </li>
    #            </ul>
    #            <p>During StackSet updates, any parameter values overridden for a stack instance aren't
    #         updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in the
    #         StackSet; to add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
    #         to update the StackSet template.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         might retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    #            <p>Repeating this StackSet operation with a new operation ID retries all stack instances
    #         whose status is <code>OUTDATED</code>.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateStackInstancesInput < Struct.new(
      nil,
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #   @return [String]
    class CreateStackInstancesOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>CreateStack</a> action.</p>
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #   @return [String]
    class CreateStackOutput < Struct.new(
      nil,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description to help you identify the stack refactor.</p>
    #   @return [String]
    # @!attribute enable_stack_creation
    #   <p>Determines if a new stack is created with the refactor.</p>
    #   @return [Boolean]
    # @!attribute resource_mappings
    #   <p>The mappings for the stack resource <code>Source</code> and stack resource
    #           <code>Destination</code>.</p>
    #   @return [Array<Types::ResourceMapping>]
    # @!attribute stack_definitions
    #   <p>The stacks being refactored.</p>
    #   @return [Array<Types::StackDefinition>]
    class CreateStackRefactorInput < Struct.new(
      nil,
      :description,
      :enable_stack_creation,
      :resource_mappings,
      :stack_definitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    class CreateStackRefactorOutput < Struct.new(
      nil,
      :stack_refactor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name to associate with the StackSet. The name must be unique in the Region where you
    #         create your StackSet.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It
    #           must start with an alphabetic character and can't be longer than 128 characters.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the StackSet. You can use the description to identify the StackSet's
    #         purpose or other important information.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #         maximum length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #           <code>TemplateURL</code> parameter, but not both.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template
    #         (maximum size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. S3 static website URLs are
    #         not supported.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #           <code>TemplateURL</code> parameter, but not both.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID you are importing into a new StackSet. Specify the Amazon Resource Name (ARN)
    #         of the stack.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The input parameters for the StackSet template.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your StackSet template contains
    #         certain capabilities in order for CloudFormation to create the StackSet and related stack
    #         instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account; for example, by creating new IAM users. For those StackSets, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your StackSet template references one or more
    #             macros, you must create the StackSet directly from the processed template, without first
    #             reviewing the resulting changes in a change set. To create the StackSet directly, you must
    #             acknowledge this capability. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #                  <important>
    #                     <p>StackSets with service-managed permissions don't currently support the use of macros
    #               in templates. (This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a> and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.) Even if
    #               you specify this capability for a StackSet with service-managed permissions, if you
    #               reference a macro in your template the StackSet operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The key-value pairs to associate with this StackSet and the stacks created from it.
    #         CloudFormation also propagates these tags to supported resources that are created in the stacks. A
    #         maximum number of 50 tags can be specified.</p>
    #            <p>If you specify tags as part of a <code>CreateStackSet</code> action, CloudFormation checks to
    #         see if you have the required IAM permission to tag resources. If you don't, the entire
    #           <code>CreateStackSet</code> action fails with an <code>access denied</code> error, and the
    #         StackSet is not created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use to create this StackSet.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles to control
    #         which users or groups can manage specific StackSets within the same administrator account. For
    #         more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #           self-managed permissions</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <p>Valid only if the permissions model is <code>SELF_MANAGED</code>.</p>
    #   @return [String]
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role to use to create the StackSet. If you do not specify
    #         an execution role, CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code>
    #         role for the StackSet operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to control which
    #         stack resources users and groups can include in their StackSets.</p>
    #            <p>Valid only if the permissions model is <code>SELF_MANAGED</code>.</p>
    #   @return [String]
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for StackSet operations are created. By default,
    #           <code>SELF-MANAGED</code> is specified.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #             execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #               self-managed permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #             IAM roles required to deploy to accounts managed by Organizations. For more
    #             information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html">Activate trusted access for StackSets with Organizations</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute auto_deployment
    #   <p>Describes whether StackSets automatically deploys to Organizations accounts that
    #         are added to the target organization or organizational unit (OU). For more information, see
    #           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html">Enable or disable automatic deployments for StackSets in Organizations</a>
    #         in the <i>CloudFormation User Guide</i>.</p>
    #            <p>Required if the permissions model is <code>SERVICE_MANAGED</code>. (Not used with
    #         self-managed permissions.)</p>
    #   @return [Types::AutoDeployment]
    # @!attribute call_as
    #   <p>Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a StackSet with service-managed permissions while signed in to the management account, specify <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a StackSet with service-managed permissions while signed in to a delegated
    #             administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated admin in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>StackSets with service-managed permissions are created in the management account, including StackSets that are created by delegated administrators.</p>
    #            <p>Valid only if the permissions model is <code>SERVICE_MANAGED</code>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>CreateStackSet</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to create
    #         another StackSet with the same name. You might retry <code>CreateStackSet</code> requests to
    #         ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    #   @return [String]
    # @!attribute managed_execution
    #   <p>Describes whether CloudFormation performs non-conflicting operations concurrently and queues
    #         conflicting operations.</p>
    #   @return [Types::ManagedExecution]
    class CreateStackSetInput < Struct.new(
      nil,
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :stack_id,
      :parameters,
      :capabilities,
      :tags,
      :administration_role_arn,
      :execution_role_name,
      :permission_model,
      :auto_deployment,
      :call_as,
      :client_request_token,
      :managed_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_id
    #   <p>The ID of the StackSet that you're creating.</p>
    #   @return [String]
    class CreateStackSetOutput < Struct.new(
      nil,
      :stack_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource exists, but has been changed.</p>
    # @!attribute message
    #   @return [String]
    class CreatedButModifiedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeactivateOrganizationsAccessInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeactivateOrganizationsAccessOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The type name of the extension in this account and Region. If you specified a type name
    #         alias when enabling the extension, use the type name alias.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the extension in this account and Region.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    class DeactivateTypeInput < Struct.new(
      nil,
      :type_name,
      :type,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeactivateTypeOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>DeleteChangeSet</a> action.</p>
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to delete.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>If you specified the name of a change set to delete, specify the stack name or Amazon
    #         Resource Name (ARN) that's associated with it.</p>
    #   @return [String]
    class DeleteChangeSetInput < Struct.new(
      nil,
      :change_set_name,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>DeleteChangeSet</a> action.</p>
    class DeleteChangeSetOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of a generated template.</p>
    #   @return [String]
    class DeleteGeneratedTemplateInput < Struct.new(
      nil,
      :generated_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>DeleteStack</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack.</p>
    #   @return [String]
    # @!attribute retain_resources
    #   <p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs that
    #         are associated with the resources you want to retain. During deletion, CloudFormation deletes the
    #         stack but doesn't delete the retained resources.</p>
    #            <p>Retaining resources is useful when you can't delete a resource, such as a non-empty S3
    #         bucket, but you want to delete the stack.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to delete the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that's generated from
    #         your user credentials.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you
    #         plan to retry requests so that CloudFormation knows that you're not attempting to delete a stack
    #         with the same name. You might retry <code>DeleteStack</code> requests to ensure that
    #         CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #         token, which you can use to track operations. For example, if you execute a
    #           <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #           <code>StackEvents</code> generated by that operation will have
    #           <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #         operations that are initiated from the console use the token format
    #           <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #         operation . For example, if you create a stack using the console, each stack event would be
    #         assigned the same token in the following format:
    #           <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #   @return [String]
    # @!attribute deletion_mode
    #   <p>Specifies the deletion mode for the stack. Possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code> - Use the standard behavior. Specifying this value is the same
    #             as not specifying this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_DELETE_STACK</code> - Delete the stack if it's stuck in a
    #               <code>DELETE_FAILED</code> state due to resource deletion failure.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteStackInput < Struct.new(
      nil,
      :stack_name,
      :retain_resources,
      :role_arn,
      :client_request_token,
      :deletion_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to delete stack instances for.</p>
    #   @return [String]
    # @!attribute accounts
    #   <p>[Self-managed permissions] The account IDs of the Amazon Web Services accounts that you want to delete
    #         stack instances for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    #   @return [Array<String>]
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts from which to delete
    #         stack instances.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    #   @return [Types::DeploymentTargets]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions where you want to delete StackSet instances.</p>
    #   @return [Array<String>]
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute retain_stacks
    #   <p>Removes the stack instances from the specified StackSet, but doesn't delete the stacks.
    #         You can't reassociate a retained stack or add an existing, saved stack to a new stack
    #         set.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet operation options</a>.</p>
    #   @return [Boolean]
    # @!attribute operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         can retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>Repeating this StackSet operation with a new operation ID retries all stack instances
    #         whose status is <code>OUTDATED</code>.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteStackInstancesInput < Struct.new(
      nil,
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :operation_preferences,
      :retain_stacks,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #   @return [String]
    class DeleteStackInstancesOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you're deleting. You can obtain this value by
    #         running <a>ListStackSets</a>.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteStackSetInput < Struct.new(
      nil,
      :stack_set_name,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStackSetOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Organizations accounts where you want to create, update, or delete
    #    stack instances. You can target either your entire organization or specific accounts using
    #    organizational units (OUs) and account filter options.</p>
    #          <p>CloudFormation doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU
    #    in your organization.</p>
    #          <p>When performing create operations, if you specify both <code>OrganizationalUnitIds</code>
    #    and <code>Accounts</code>, you must also specify the <code>AccountFilterType</code> property.</p>
    # @!attribute accounts
    #   <p>The Amazon Web Services account IDs where you want to perform stack operations. How these accounts are
    #      used depends on the <code>AccountFilterType</code> property.</p>
    #            <p>If you have many account numbers, you can provide those accounts using the
    #       <code>AccountsUrl</code> property instead.</p>
    #   @return [Array<String>]
    # @!attribute accounts_url
    #   <p>The Amazon S3 URL path to a file that contains a list of Amazon Web Services account IDs. The file
    #      format must be either <code>.csv</code> or <code>.txt</code>, and the data can be comma-separated
    #      or new-line-separated. There is currently a 10MB limit for the data (approximately 800,000
    #      accounts).</p>
    #            <p>This property serves the same purpose as <code>Accounts</code> but allows you to specify a
    #      large number of accounts.</p>
    #   @return [String]
    # @!attribute organizational_unit_ids
    #   <p>The organization root ID or organizational unit (OU) IDs where you want to perform stack
    #      operations. CloudFormation will perform operations on accounts within these OUs and their child
    #      OUs.</p>
    #   @return [Array<String>]
    # @!attribute account_filter_type
    #   <p>Refines which accounts will have stack operations performed on them by specifying how to use
    #      the <code>Accounts</code> and <code>OrganizationalUnitIds</code> properties together.</p>
    #            <p>The following values determine how CloudFormation selects target accounts:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INTERSECTION</code>: Performs stack operations only on specific individual accounts
    #        within the selected OUs. Only accounts that are both specified in the <code>Accounts</code>
    #        property and belong to the specified OUs will be targeted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIFFERENCE</code>: Performs stack operations on all accounts in the selected OUs
    #        except for specific accounts listed in the <code>Accounts</code> property. This enables you to
    #        exclude certain accounts within an OU, such as suspended accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNION</code>: Performs stack operations on the specified OUs plus additional
    #        individual accounts listed in the <code>Accounts</code> property. This is the default value if
    #         <code>AccountFilterType</code> is not provided. This lets you target an entire OU and
    #        individual accounts from a different OU in one request. Note that <code>UNION</code> is not
    #        supported for <code>CreateStackInstances</code> operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Performs stack operations on all accounts in the specified
    #        organizational units (OUs).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeploymentTargets < Struct.new(
      nil,
      :accounts,
      :accounts_url,
      :organizational_unit_ids,
      :account_filter_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #         the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    #   @return [String]
    class DeregisterTypeInput < Struct.new(
      nil,
      :arn,
      :type,
      :type_name,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterTypeOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>DescribeAccountLimits</a> action.</p>
    # @!attribute next_token
    #   <p>A string that identifies the next page of limits that you want to retrieve.</p>
    #   @return [String]
    class DescribeAccountLimitsInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>DescribeAccountLimits</a> action.</p>
    # @!attribute account_limits
    #   <p>An account limit structure that contain a list of CloudFormation account limits and their
    #         values.</p>
    #   @return [Array<Types::AccountLimit>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of limits. If
    #         no additional page exists, this value is null.</p>
    #   @return [String]
    class DescribeAccountLimitsOutput < Struct.new(
      nil,
      :account_limits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to describe.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>If you specified the name of a change set, specify the stack name or stack ID (ARN) of the
    #         change set you want to describe.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string, provided by the <code>DescribeChangeSetHooks</code> response output, that
    #         identifies the next page of information that you want to retrieve.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>If specified, lists only the Hooks related to the specified
    #           <code>LogicalResourceId</code>.</p>
    #   @return [String]
    class DescribeChangeSetHooksInput < Struct.new(
      nil,
      :change_set_name,
      :stack_name,
      :next_token,
      :logical_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_set_id
    #   <p>The change set identifier (stack ID).</p>
    #   @return [String]
    # @!attribute change_set_name
    #   <p>The change set name.</p>
    #   @return [String]
    # @!attribute hooks
    #   <p>List of Hook objects.</p>
    #   @return [Array<Types::ChangeSetHook>]
    # @!attribute status
    #   <p>Provides the status of the change set hook.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token, <code>null</code> or empty if no more results.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack identifier (stack ID).</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The stack name.</p>
    #   @return [String]
    class DescribeChangeSetHooksOutput < Struct.new(
      nil,
      :change_set_id,
      :change_set_name,
      :hooks,
      :status,
      :next_token,
      :stack_id,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>DescribeChangeSet</a> action.</p>
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to describe.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>If you specified the name of a change set, specify the stack name or ID (ARN) of the
    #         change set you want to describe.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string (provided by the <a>DescribeChangeSet</a> response output) that
    #         identifies the next page of information that you want to retrieve.</p>
    #   @return [String]
    # @!attribute include_property_values
    #   <p>If <code>true</code>, the returned changes include detailed changes in the property
    #         values.</p>
    #   @return [Boolean]
    class DescribeChangeSetInput < Struct.new(
      nil,
      :change_set_name,
      :stack_name,
      :next_token,
      :include_property_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>DescribeChangeSet</a> action.</p>
    # @!attribute change_set_name
    #   <p>The name of the change set.</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>The Amazon Resource Name (ARN) of the change set.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The Amazon Resource Name (ARN) of the stack that's associated with the change set.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack that's associated with the change set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the change set.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that describes the input parameters and their
    #         values used to create the change set. For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute creation_time
    #   <p>The start time when the change set was created, in UTC.</p>
    #   @return [Time]
    # @!attribute execution_status
    #   <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change
    #         set. If you can't execute the change set, the status indicates why. For example, a change set
    #         might be in an <code>UNAVAILABLE</code> state because CloudFormation is still creating it or in an
    #           <code>OBSOLETE</code> state because the stack was already updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the change set, such as <code>CREATE_PENDING</code>,
    #           <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A description of the change set's status. For example, if your attempt to create a change
    #         set failed, CloudFormation shows the error message.</p>
    #   @return [String]
    # @!attribute notification_ar_ns
    #   <p>The ARNs of the Amazon SNS topics that will be associated with the stack if you execute the
    #         change set.</p>
    #   @return [Array<String>]
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    #   @return [Types::RollbackConfiguration]
    # @!attribute capabilities
    #   <p>If you execute the change set, the list of capabilities that were explicitly acknowledged
    #         when the change set was created.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>If you execute the change set, the tags that will be associated with the stack.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute changes
    #   <p>A list of <code>Change</code> structures that describes the resources CloudFormation changes
    #         if you execute the change set.</p>
    #   @return [Array<Types::Change>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB, a string that identifies the next page of changes. If there is
    #         no additional page, this value is null.</p>
    #   @return [String]
    # @!attribute include_nested_stacks
    #   <p>Verifies if <code>IncludeNestedStacks</code> is set to <code>True</code>.</p>
    #   @return [Boolean]
    # @!attribute parent_change_set_id
    #   <p>Specifies the change set ID of the parent change set in the current nested change set
    #         hierarchy.</p>
    #   @return [String]
    # @!attribute root_change_set_id
    #   <p>Specifies the change set ID of the root change set in the current nested change set
    #         hierarchy.</p>
    #   @return [String]
    # @!attribute on_stack_failure
    #   <p>Determines what action will be taken if stack creation fails. When this parameter is
    #         specified, the <code>DisableRollback</code> parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation must not be specified. This must be one of these
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Deletes the change set if the stack creation fails. This is only
    #             valid when the <code>ChangeSetType</code> parameter is set to <code>CREATE</code>. If the
    #             deletion of the stack fails, the status of the stack is <code>DELETE_FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DO_NOTHING</code> - if the stack creation fails, do nothing. This is equivalent
    #             to specifying <code>true</code> for the <code>DisableRollback</code> parameter to the
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK</code> - if the stack creation fails, roll back the stack. This is
    #             equivalent to specifying <code>false</code> for the <code>DisableRollback</code> parameter
    #             to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute import_existing_resources
    #   <p>Indicates if the change set imports resources that already exist.</p>
    #            <note>
    #               <p>This parameter can only import resources that have <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-properties-name.html">custom
    #             names</a> in templates. To import resources that do not accept custom names, such as
    #           EC2 instances, use the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import.html">resource import</a>
    #           feature instead.</p>
    #            </note>
    #   @return [Boolean]
    class DescribeChangeSetOutput < Struct.new(
      nil,
      :change_set_name,
      :change_set_id,
      :stack_id,
      :stack_name,
      :description,
      :parameters,
      :creation_time,
      :execution_status,
      :status,
      :status_reason,
      :notification_ar_ns,
      :rollback_configuration,
      :capabilities,
      :tags,
      :changes,
      :next_token,
      :include_nested_stacks,
      :parent_change_set_id,
      :root_change_set_id,
      :on_stack_failure,
      :import_existing_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of a generated template.</p>
    #   @return [String]
    class DescribeGeneratedTemplateInput < Struct.new(
      nil,
      :generated_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generated_template_id
    #   <p>The Amazon Resource Name (ARN) of the generated template. The format is
    #           <code>arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}</code>.
    #         For example,
    #             <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:generatedtemplate/<i>2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc</i>
    #               </code>.</p>
    #   @return [String]
    # @!attribute generated_template_name
    #   <p>The name of the generated template.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of objects describing the details of the resources in the template
    #         generation.</p>
    #   @return [Array<Types::ResourceDetail>]
    # @!attribute status
    #   <p>The status of the template generation. Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatePending</code> - the creation of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreateInProgress</code> - the creation of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeletePending</code> - the deletion of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeleteInProgress</code> - the deletion of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdatePending</code> - the update of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdateInProgress</code> - the update of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - the template operation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Complete</code> - the template operation is complete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current template generation status. This will provide more details if a
    #         failure happened.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the generated template was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the generated template was last updated.</p>
    #   @return [Time]
    # @!attribute progress
    #   <p>An object describing the progress of the template generation.</p>
    #   @return [Types::TemplateProgress]
    # @!attribute stack_id
    #   <p>The stack ARN of the base stack if a base stack was provided when generating the
    #         template.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>The configuration details of the generated template, including the
    #           <code>DeletionPolicy</code> and <code>UpdateReplacePolicy</code>.</p>
    #   @return [Types::TemplateConfiguration]
    # @!attribute total_warnings
    #   <p>The number of warnings generated for this template. The warnings are found in the details
    #         of each of the resources in the template.</p>
    #   @return [Integer]
    class DescribeGeneratedTemplateOutput < Struct.new(
      nil,
      :generated_template_id,
      :generated_template_name,
      :resources,
      :status,
      :status_reason,
      :creation_time,
      :last_updated_time,
      :progress,
      :stack_id,
      :template_configuration,
      :total_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeOrganizationsAccessInput < Struct.new(
      nil,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Presents the status of the <code>OrganizationAccess</code>.</p>
    #   @return [String]
    class DescribeOrganizationsAccessOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>If you don't supply a <code>PublisherId</code>, and you have registered as an extension
    #         publisher, <code>DescribePublisher</code> returns information about your own publisher
    #         account.</p>
    #   @return [String]
    class DescribePublisherInput < Struct.new(
      nil,
      :publisher_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute publisher_id
    #   <p>The ID of the extension publisher.</p>
    #   @return [String]
    # @!attribute publisher_status
    #   <p>Whether the publisher is verified. Currently, all registered publishers are
    #         verified.</p>
    #   @return [String]
    # @!attribute identity_provider
    #   <p>The type of account used as the identity provider when registering this publisher with
    #         CloudFormation.</p>
    #   @return [String]
    # @!attribute publisher_profile
    #   <p>The URL to the publisher's profile with the identity provider.</p>
    #   @return [String]
    class DescribePublisherOutput < Struct.new(
      nil,
      :publisher_id,
      :publisher_status,
      :identity_provider,
      :publisher_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    #   @return [String]
    class DescribeResourceScanInput < Struct.new(
      nil,
      :resource_scan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan. The format is
    #           <code>arn:${Partition}:cloudformation:${Region}:${Account}:resourceScan/${Id}</code>. An
    #         example is
    #             <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:resourceScan/<i>f5b490f7-7ed4-428a-aa06-31ff25db0772</i>
    #               </code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the resource scan.</p>
    #            <dl>
    #               <dt>
    #             
    #               IN_PROGRESS
    #             
    #           </dt>
    #               <dd>
    #                  <p>The resource scan is still in progress.</p>
    #               </dd>
    #               <dt>
    #             
    #               COMPLETE
    #             
    #           </dt>
    #               <dd>
    #                  <p>The resource scan is complete.</p>
    #               </dd>
    #               <dt>
    #             
    #               EXPIRED
    #             
    #           </dt>
    #               <dd>
    #                  <p>The resource scan has expired.</p>
    #               </dd>
    #               <dt>
    #             
    #               FAILED
    #             
    #           </dt>
    #               <dd>
    #                  <p>The resource scan has failed.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the resource scan status, providing more information if a failure
    #         happened.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the resource scan was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the resource scan was finished.</p>
    #   @return [Time]
    # @!attribute percentage_completed
    #   <p>The percentage of the resource scan that has been completed.</p>
    #   @return [Float]
    # @!attribute resource_types
    #   <p>The list of resource types for the specified scan. Resource types are only available for
    #         scans with a <code>Status</code> set to <code>COMPLETE</code> or <code>FAILED </code>.</p>
    #   @return [Array<String>]
    # @!attribute resources_scanned
    #   <p>The number of resources that were listed. This is only available for scans with a
    #           <code>Status</code> set to <code>COMPLETE</code>, <code>EXPIRED</code>, or <code>FAILED
    #         </code>.</p>
    #   @return [Integer]
    # @!attribute resources_read
    #   <p>The number of resources that were read. This is only available for scans with a
    #           <code>Status</code> set to <code>COMPLETE</code>, <code>EXPIRED</code>, or
    #           <code>FAILED</code>.</p>
    #            <note>
    #               <p>This field may be 0 if the resource scan failed with a
    #             <code>ResourceScanLimitExceededException</code>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute scan_filters
    #   <p>The scan filters that were used.</p>
    #   @return [Array<Types::ScanFilter>]
    class DescribeResourceScanOutput < Struct.new(
      nil,
      :resource_scan_id,
      :status,
      :status_reason,
      :start_time,
      :end_time,
      :percentage_completed,
      :resource_types,
      :resources_scanned,
      :resources_read,
      :scan_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation
    #         is run. However, the number of drift results CloudFormation retains for any given stack, and for
    #         how long, may vary.</p>
    #   @return [String]
    class DescribeStackDriftDetectionStatusInput < Struct.new(
      nil,
      :stack_drift_detection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The ID of the stack.</p>
    #   @return [String]
    # @!attribute stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation
    #         is run. However, the number of reports CloudFormation retains for any given stack, and for how
    #         long, may vary.</p>
    #   @return [String]
    # @!attribute stack_drift_status
    #   <p>Status of the stack's actual configuration compared to its expected configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from its expected template configuration. A
    #             stack is considered to have drifted if one or more of its resources have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack differs from its
    #             expected template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack's actual configuration matches its expected template
    #             configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: CloudFormation could not run drift detection for a resource in the
    #             stack. See the <code>DetectionStatusReason</code> for details.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute detection_status
    #   <p>The status of the stack drift detection operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DETECTION_COMPLETE</code>: The stack drift detection operation has successfully
    #             completed for all resources in the stack that support drift detection. (Resources that
    #             don't currently support stack detection remain unchecked.)</p>
    #                  <p>If you specified logical resource IDs for CloudFormation to use as a filter for the stack
    #             drift detection operation, only the resources with those logical IDs are checked for
    #             drift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DETECTION_FAILED</code>: The stack drift detection operation has failed for at
    #             least one resource in the stack. Results will be available for resources on which
    #             CloudFormation successfully completed drift detection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DETECTION_IN_PROGRESS</code>: The stack drift detection operation is currently
    #             in progress.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute detection_status_reason
    #   <p>The reason the stack drift detection operation has its current status.</p>
    #   @return [String]
    # @!attribute drifted_stack_resource_count
    #   <p>Total number of stack resources that have drifted. This is NULL until the drift detection
    #         operation reaches a status of <code>DETECTION_COMPLETE</code>. This value will be 0 for stacks
    #         whose drift status is <code>IN_SYNC</code>.</p>
    #   @return [Integer]
    # @!attribute timestamp
    #   <p>Time at which the stack drift detection operation was initiated.</p>
    #   @return [Time]
    class DescribeStackDriftDetectionStatusOutput < Struct.new(
      nil,
      :stack_id,
      :stack_drift_detection_id,
      :stack_drift_status,
      :detection_status,
      :detection_status_reason,
      :drifted_stack_resource_count,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>DescribeStackEvents</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string that identifies the next page of events that you want to retrieve.</p>
    #   @return [String]
    class DescribeStackEventsInput < Struct.new(
      nil,
      :stack_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>DescribeStackEvents</a> action.</p>
    # @!attribute stack_events
    #   <p>A list of <code>StackEvents</code> structures.</p>
    #   @return [Array<Types::StackEvent>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of events. If
    #         no additional page exists, this value is null.</p>
    #   @return [String]
    class DescribeStackEventsOutput < Struct.new(
      nil,
      :stack_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or the unique stack ID of the StackSet that you want to get stack instance
    #         information for.</p>
    #   @return [String]
    # @!attribute stack_instance_account
    #   <p>The ID of an Amazon Web Services account that's associated with this stack instance.</p>
    #   @return [String]
    # @!attribute stack_instance_region
    #   <p>The name of a Region that's associated with this stack instance.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeStackInstanceInput < Struct.new(
      nil,
      :stack_set_name,
      :stack_instance_account,
      :stack_instance_region,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_instance
    #   <p>The stack instance that matches the specified request parameters.</p>
    #   @return [Types::StackInstance]
    class DescribeStackInstanceOutput < Struct.new(
      nil,
      :stack_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    class DescribeStackRefactorInput < Struct.new(
      nil,
      :stack_refactor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description to help you identify the refactor.</p>
    #   @return [String]
    # @!attribute stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute stack_ids
    #   <p>The unique ID for each stack.</p>
    #   @return [Array<String>]
    # @!attribute execution_status
    #   <p>The stack refactor execution operation status that's provided after calling the <a>ExecuteStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute execution_status_reason
    #   <p>A detailed explanation for the stack refactor <code>ExecutionStatus</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The stack refactor operation status that's provided after calling the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A detailed explanation for the stack refactor operation <code>Status</code>.</p>
    #   @return [String]
    class DescribeStackRefactorOutput < Struct.new(
      nil,
      :description,
      :stack_refactor_id,
      :stack_ids,
      :execution_status,
      :execution_status_reason,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for which you want drift information.</p>
    #   @return [String]
    # @!attribute stack_resource_drift_status_filters
    #   <p>The resource drift status values to use as filters for the resource drift results
    #         returned.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template configuration in
    #             that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #             template values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #             template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: CloudFormation could not run drift detection for the
    #             resource.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A string that identifies the next page of stack resource drift results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    class DescribeStackResourceDriftsInput < Struct.new(
      nil,
      :stack_name,
      :stack_resource_drift_status_filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_resource_drifts
    #   <p>Drift information for the resources that have been checked for drift in the specified
    #         stack. This includes actual and expected configuration values for resources where CloudFormation
    #         detects drift.</p>
    #            <p>For a given stack, there will be one <code>StackResourceDrift</code> for each stack
    #         resource that has been checked for drift. Resources that haven't yet been checked for drift
    #         aren't included. Resources that do not currently support drift detection aren't checked, and
    #         so not included. For a list of resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource
    #           type support for imports and drift detection</a>.</p>
    #   @return [Array<Types::StackResourceDrift>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call <code>DescribeStackResourceDrifts</code>
    #         again and assign that token to the request object's <code>NextToken</code> parameter. If the
    #         request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class DescribeStackResourceDriftsOutput < Struct.new(
      nil,
      :stack_resource_drifts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>DescribeStackResource</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    #   @return [String]
    class DescribeStackResourceInput < Struct.new(
      nil,
      :stack_name,
      :logical_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>DescribeStackResource</a> action.</p>
    # @!attribute stack_resource_detail
    #   <p>A <code>StackResourceDetail</code> structure that contains the description of the
    #         specified resource in the specified stack.</p>
    #   @return [Types::StackResourceDetail]
    class DescribeStackResourceOutput < Struct.new(
      nil,
      :stack_resource_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>DescribeStackResources</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Required: Conditional. If you don't specify <code>StackName</code>, you must specify
    #           <code>PhysicalResourceId</code>.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #         supported by CloudFormation.</p>
    #            <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #           <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass the
    #         EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack the
    #         instance belongs to and what other resources are part of the stack.</p>
    #            <p>Required: Conditional. If you don't specify <code>PhysicalResourceId</code>, you must
    #         specify <code>StackName</code>.</p>
    #   @return [String]
    class DescribeStackResourcesInput < Struct.new(
      nil,
      :stack_name,
      :logical_resource_id,
      :physical_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>DescribeStackResources</a> action.</p>
    # @!attribute stack_resources
    #   <p>A list of <code>StackResource</code> structures.</p>
    #   @return [Array<Types::StackResource>]
    class DescribeStackResourcesOutput < Struct.new(
      nil,
      :stack_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet whose description you want.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeStackSetInput < Struct.new(
      nil,
      :stack_set_name,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or the unique stack ID of the StackSet for the stack operation.</p>
    #   @return [String]
    # @!attribute operation_id
    #   <p>The unique ID of the StackSet operation.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeStackSetOperationInput < Struct.new(
      nil,
      :stack_set_name,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_operation
    #   <p>The specified StackSet operation.</p>
    #   @return [Types::StackSetOperation]
    class DescribeStackSetOperationOutput < Struct.new(
      nil,
      :stack_set_operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set
    #   <p>The specified StackSet.</p>
    #   @return [Types::StackSet]
    class DescribeStackSetOutput < Struct.new(
      nil,
      :stack_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>DescribeStacks</a> action.</p>
    # @!attribute stack_name
    #   <note>
    #               <p>If you don't pass a parameter to <code>StackName</code>, the API returns a response
    #           that describes all resources in the account, which can impact performance. This requires
    #             <code>ListStacks</code> and <code>DescribeStacks</code> permissions.</p>
    #               <p>Consider using the <a>ListStacks</a> API if you're not passing a parameter to
    #             <code>StackName</code>.</p>
    #               <p>The IAM policy below can be added to IAM policies when you want to limit
    #           resource-level permissions and avoid returning a response when no parameter is sent in the
    #           request:</p>
    #               <p>{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny", "Action":
    #           "cloudformation:DescribeStacks", "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }]
    #           }</p>
    #            </note>
    #            <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    #   @return [String]
    class DescribeStacksInput < Struct.new(
      nil,
      :stack_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>DescribeStacks</a> action.</p>
    # @!attribute stacks
    #   <p>A list of stack structures.</p>
    #   @return [Array<Types::Stack>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If
    #         no additional page exists, this value is null.</p>
    #   @return [String]
    class DescribeStacksOutput < Struct.new(
      nil,
      :stacks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #         the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    #            <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information
    #         about that specific extension version. Otherwise, it returns information about the default
    #         extension version.</p>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions provided by Amazon Web Services are not assigned a publisher ID.</p>
    #   @return [String]
    # @!attribute public_version_number
    #   <p>The version number of a public third-party extension.</p>
    #   @return [String]
    class DescribeTypeInput < Struct.new(
      nil,
      :type,
      :type_name,
      :arn,
      :version_id,
      :publisher_id,
      :public_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The kind of extension.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>If the extension is a public third-party type you have activated with a type name alias,
    #         CloudFormation returns the type name alias. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a>.</p>
    #   @return [String]
    # @!attribute default_version_id
    #   <p>The ID of the default version of the extension. The default version is used when the
    #         extension version isn't specified.</p>
    #            <p>This applies only to private extensions you have registered in your account. For public
    #         extensions, both those provided by Amazon Web Services and published by third parties, CloudFormation returns
    #           <code>null</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #            <p>To set the default version of an extension, use <a>SetTypeDefaultVersion</a>.</p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>Whether the specified extension version is set as the default version.</p>
    #            <p>This applies only to private extensions you have registered in your account, and
    #         extensions published by Amazon Web Services. For public third-party extensions, whether they are activated
    #         in your account, CloudFormation returns <code>null</code>.</p>
    #   @return [Boolean]
    # @!attribute type_tests_status
    #   <p>The contract test status of the registered extension version. To return the extension test
    #         status of a specific extension version, you must specify <code>VersionId</code>.</p>
    #            <p>This applies only to registered private extension versions. CloudFormation doesn't return this
    #         information for public extensions, whether they are activated in your account.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PASSED</code>: The extension has passed all its contract tests.</p>
    #                  <p>An extension must have a test status of <code>PASSED</code> before it can be
    #             published. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html">Publishing
    #               extensions to make them available for public use</a> in the
    #               <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The extension has failed one or more contract tests.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: Contract tests are currently being performed on the
    #             extension.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_TESTED</code>: Contract tests haven't been performed on the
    #             extension.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type_tests_status_description
    #   <p>The description of the test status. To return the extension test status of a specific
    #         extension version, you must specify <code>VersionId</code>.</p>
    #            <p>This applies only to registered private extension versions. CloudFormation doesn't return this
    #         information for public extensions, whether they are activated in your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the extension.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema that defines the extension.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">Resource type
    #           schema</a> in the <i>CloudFormation Command Line Interface (CLI) User Guide</i> and the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/hooks-userguide/what-is-cloudformation-hooks.html">CloudFormation
    #           Hooks User Guide</a>.</p>
    #   @return [String]
    # @!attribute provisioning_type
    #   <p>For resource type extensions, the provisioning behavior of the resource type. CloudFormation
    #         determines the provisioning type during registration, based on the types of handlers in the
    #         schema handler package submitted.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULLY_MUTABLE</code>: The resource type includes an update handler to process
    #             updates to the type during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMMUTABLE</code>: The resource type doesn't include an update handler, so the
    #             type can't be updated and must instead be replaced during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_PROVISIONABLE</code>: The resource type doesn't include all the following
    #             handlers, and therefore can't actually be provisioned.</p>
    #                  <ul>
    #                     <li>
    #                        <p>create</p>
    #                     </li>
    #                     <li>
    #                        <p>read</p>
    #                     </li>
    #                     <li>
    #                        <p>delete</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deprecated_status
    #   <p>The deprecation status of the extension version.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension is activated or registered and can be used in
    #             CloudFormation operations, dependent on its provisioning behavior and visibility scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension has been deactivated or deregistered and can no
    #             longer be used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #            <p>For public third-party extensions, CloudFormation returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute logging_config
    #   <p>Contains logging configuration information for private extensions. This applies only to
    #         private extensions you have registered in your account. For public extensions, both those
    #         provided by Amazon Web Services and published by third parties, CloudFormation returns <code>null</code>. For
    #         more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute required_activated_types
    #   <p>For extensions that are modules, the public third-party extensions that must be activated
    #         in your account in order for the module itself to be activated.</p>
    #   @return [Array<Types::RequiredActivatedType>]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM execution role used to register the extension.
    #         This applies only to private extensions you have registered in your account. For more
    #         information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #            <p>If the registered extension calls any Amazon Web Services APIs, you must create an <i>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM execution
    #           role</a>
    #               </i> that includes the necessary permissions to call those Amazon Web Services APIs,
    #         and provision that execution role in your account. CloudFormation then assumes that execution role
    #         to provide your extension with the appropriate credentials.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The scope at which the extension is visible and usable in CloudFormation operations.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIVATE</code>: The extension is only visible and usable within the account in
    #             which it is registered. CloudFormation marks any extensions you register as
    #               <code>PRIVATE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUBLIC</code>: The extension is publicly visible and usable within any Amazon Web Services
    #             account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_url
    #   <p>The URL of the source code for the extension.</p>
    #   @return [String]
    # @!attribute documentation_url
    #   <p>The URL of a page providing detailed documentation for this extension.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>When the specified extension version was registered. This applies only to:</p>
    #            <ul>
    #               <li>
    #                  <p>Private extensions you have registered in your account. For more information, see
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Public extensions you have activated in your account with auto-update specified. For
    #             more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute time_created
    #   <p>When the specified private extension version was registered or activated in your
    #         account.</p>
    #   @return [Time]
    # @!attribute configuration_schema
    #   <p>A JSON string that represent the current configuration data for the extension in this
    #         account and Region.</p>
    #            <p>To set the configuration data for an extension, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a>.</p>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>This applies only to public third-party extensions. For private registered extensions, and
    #         extensions provided by Amazon Web Services, CloudFormation returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute original_type_name
    #   <p>For public extensions that have been activated for this account and Region, the type name
    #         of the public extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when enabling the extension in this account
    #         and Region, CloudFormation treats that alias as the extension's type name within the account and
    #         Region, not the type name of the public extension. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias">Use aliases to refer to extensions</a> in the
    #         <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute original_type_arn
    #   <p>For public extensions that have been activated for this account and Region, the Amazon
    #         Resource Name (ARN) of the public extension.</p>
    #   @return [String]
    # @!attribute public_version_number
    #   <p>The version number of a public third-party extension.</p>
    #            <p>This applies only if you specify a public extension you have activated in your account, or
    #         specify a public extension without specifying a version. For all other extensions, CloudFormation
    #         returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute latest_public_version
    #   <p>The latest version of a public extension <i>that is available</i> for
    #         use.</p>
    #            <p>This only applies if you specify a public extension, and you don't specify a version. For
    #         all other requests, CloudFormation returns <code>null</code>.</p>
    #   @return [String]
    # @!attribute is_activated
    #   <p>Whether the extension is activated in the account and Region.</p>
    #            <p>This only applies to public third-party extensions. For all other extensions, CloudFormation
    #         returns <code>null</code>.</p>
    #   @return [Boolean]
    # @!attribute auto_update
    #   <p>Whether CloudFormation automatically updates the extension in this account and Region when a
    #         new <i>minor</i> version is published by the extension publisher. Major versions
    #         released by the publisher must be manually updated. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto">Automatically use new versions of extensions</a> in the
    #           <i>CloudFormation User Guide</i>.</p>
    #   @return [Boolean]
    class DescribeTypeOutput < Struct.new(
      nil,
      :arn,
      :type,
      :type_name,
      :default_version_id,
      :is_default_version,
      :type_tests_status,
      :type_tests_status_description,
      :description,
      :schema,
      :provisioning_type,
      :deprecated_status,
      :logging_config,
      :required_activated_types,
      :execution_role_arn,
      :visibility,
      :source_url,
      :documentation_url,
      :last_updated,
      :time_created,
      :configuration_schema,
      :publisher_id,
      :original_type_name,
      :original_type_arn,
      :public_version_number,
      :latest_public_version,
      :is_activated,
      :auto_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_token
    #   <p>The identifier for this registration request.</p>
    #            <p>This registration token is generated by CloudFormation when you initiate a registration
    #         request using <a>RegisterType</a>.</p>
    #   @return [String]
    class DescribeTypeRegistrationInput < Struct.new(
      nil,
      :registration_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute progress_status
    #   <p>The current status of the extension registration request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the extension registration request.</p>
    #   @return [String]
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension being registered.</p>
    #            <p>For registration requests with a <code>ProgressStatus</code> of other than
    #           <code>COMPLETE</code>, this will be <code>null</code>.</p>
    #   @return [String]
    # @!attribute type_version_arn
    #   <p>The Amazon Resource Name (ARN) of this specific version of the extension being
    #         registered.</p>
    #            <p>For registration requests with a <code>ProgressStatus</code> of other than
    #           <code>COMPLETE</code>, this will be <code>null</code>.</p>
    #   @return [String]
    class DescribeTypeRegistrationOutput < Struct.new(
      nil,
      :progress_status,
      :description,
      :type_arn,
      :type_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for which you want to detect drift.</p>
    #   @return [String]
    # @!attribute logical_resource_ids
    #   <p>The logical names of any resources you want to use as filters.</p>
    #   @return [Array<String>]
    class DetectStackDriftInput < Struct.new(
      nil,
      :stack_name,
      :logical_resource_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation
    #         is run. However, the number of drift results CloudFormation retains for any given stack, and for
    #         how long, may vary.</p>
    #   @return [String]
    class DetectStackDriftOutput < Struct.new(
      nil,
      :stack_drift_detection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack to which the resource belongs.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource for which to return drift information.</p>
    #   @return [String]
    class DetectStackResourceDriftInput < Struct.new(
      nil,
      :stack_name,
      :logical_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_resource_drift
    #   <p>Information about whether the resource's actual configuration has drifted from its
    #         expected template configuration, including actual and expected property values and any
    #         differences detected.</p>
    #   @return [Types::StackResourceDrift]
    class DetectStackResourceDriftOutput < Struct.new(
      nil,
      :stack_resource_drift,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name of the StackSet on which to perform the drift detection operation.</p>
    #   @return [String]
    # @!attribute operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a StackSet operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet operation options</a>.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute operation_id
    #   <p>
    #               <i>The ID of the StackSet operation.</i>
    #            </p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DetectStackSetDriftInput < Struct.new(
      nil,
      :stack_set_name,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the drift detection StackSet operation.</p>
    #            <p>You can use this operation ID with <a>DescribeStackSetOperation</a> to monitor
    #         the progress of the drift detection operation.</p>
    #   @return [String]
    class DetectStackSetDriftOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for an <a>EstimateTemplateCost</a> action.</p>
    # @!attribute template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template that's
    #         located in an Amazon S3 bucket or a Systems Manager document. The location for an Amazon S3 bucket must
    #         start with <code>https://</code>. URLs from S3 static websites are not supported.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters.</p>
    #   @return [Array<Types::Parameter>]
    class EstimateTemplateCostInput < Struct.new(
      nil,
      :template_body,
      :template_url,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>EstimateTemplateCost</a> action.</p>
    # @!attribute url
    #   <p>An Amazon Web Services Simple Monthly Calculator URL with a query string that describes the resources
    #         required to run the template.</p>
    #   @return [String]
    class EstimateTemplateCostOutput < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>ExecuteChangeSet</a> action.</p>
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want use to update the
    #         specified stack.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>If you specified the name of a change set, specify the stack name or Amazon Resource Name
    #         (ARN) that's associated with the change set you want to execute.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to execute a
    #         change set to update a stack with the same name. You might retry <code>ExecuteChangeSet</code>
    #         requests to ensure that CloudFormation successfully received them.</p>
    #   @return [String]
    # @!attribute disable_rollback
    #   <p>Preserves the state of previously provisioned resources when an operation fails. This
    #         parameter can't be specified when the <code>OnStackFailure</code> parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html">CreateChangeSet</a> API operation was specified.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>True</code> - if the stack creation fails, do nothing. This is equivalent to
    #             specifying <code>DO_NOTHING</code> for the <code>OnStackFailure</code> parameter to the
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html">CreateChangeSet</a> API operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>False</code> - if the stack creation fails, roll back the stack. This is
    #             equivalent to specifying <code>ROLLBACK</code> for the <code>OnStackFailure</code>
    #             parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html">CreateChangeSet</a> API operation.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>True</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    class ExecuteChangeSetInput < Struct.new(
      nil,
      :change_set_name,
      :stack_name,
      :client_request_token,
      :disable_rollback,
      :retain_except_on_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>ExecuteChangeSet</a> action.</p>
    class ExecuteChangeSetOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    class ExecuteStackRefactorInput < Struct.new(
      nil,
      :stack_refactor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Export</code> structure describes the exported output values for a stack.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html">Get exported outputs from
    #     a deployed CloudFormation stack</a>.</p>
    # @!attribute exporting_stack_id
    #   <p>The stack that contains the exported output name and value.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of exported output value. Use this name and the <code>Fn::ImportValue</code>
    #      function to import the associated value into other stacks. The name is defined in the
    #       <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the exported output, such as a resource physical ID. This value is defined in
    #      the <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
    #   @return [String]
    class Export < Struct.new(
      nil,
      :exporting_stack_id,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The generated template was not found.</p>
    # @!attribute message
    #   @return [String]
    class GeneratedTemplateNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute format
    #   <p>The language to use to retrieve for the generated template. Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>JSON</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>YAML</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of the generated template. The format is
    #           <code>arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}</code>.
    #         For example,
    #             <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:generatedtemplate/<i>2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc</i>
    #               </code>.</p>
    #   @return [String]
    class GetGeneratedTemplateInput < Struct.new(
      nil,
      :format,
      :generated_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the template generation. Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatePending</code> - the creation of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreateInProgress</code> - the creation of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeletePending</code> - the deletion of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeleteInProgress</code> - the deletion of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdatePending</code> - the update of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdateInProgress</code> - the update of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - the template operation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Complete</code> - the template operation is complete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute template_body
    #   <p>The template body of the generated template, in the language specified by the
    #           <code>Language</code> parameter.</p>
    #   @return [String]
    class GetGeneratedTemplateOutput < Struct.new(
      nil,
      :status,
      :template_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>GetStackPolicy</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or unique stack ID that's associated with the stack whose policy you want to
    #         get.</p>
    #   @return [String]
    class GetStackPolicyInput < Struct.new(
      nil,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>GetStackPolicy</a> action.</p>
    # @!attribute stack_policy_body
    #   <p>Structure that contains the stack policy body. (For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html">Prevent updates to stack resources</a> in the
    #         <i>CloudFormation User Guide</i>.)</p>
    #   @return [String]
    class GetStackPolicyOutput < Struct.new(
      nil,
      :stack_policy_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for a <a>GetTemplate</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of a change set for which CloudFormation returns the
    #         associated template. If you specify a name, you must also specify the
    #         <code>StackName</code>.</p>
    #   @return [String]
    # @!attribute template_stage
    #   <p>For templates that include transforms, the stage of the template that CloudFormation returns.
    #         To get the user-submitted template, specify <code>Original</code>. To get the template after
    #         CloudFormation has processed all transforms, specify <code>Processed</code>.</p>
    #            <p>If the template doesn't include transforms, <code>Original</code> and
    #           <code>Processed</code> return the same template. By default, CloudFormation specifies
    #           <code>Processed</code>.</p>
    #   @return [String]
    class GetTemplateInput < Struct.new(
      nil,
      :stack_name,
      :change_set_name,
      :template_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for <a>GetTemplate</a> action.</p>
    # @!attribute template_body
    #   <p>Structure that contains the template body.</p>
    #            <p>CloudFormation returns the same template that was used when the stack was created.</p>
    #   @return [String]
    # @!attribute stages_available
    #   <p>The stage of the template that you can retrieve. For stacks, the <code>Original</code> and
    #           <code>Processed</code> templates are always available. For change sets, the
    #           <code>Original</code> template is always available. After CloudFormation finishes creating the
    #         change set, the <code>Processed</code> template becomes available.</p>
    #   @return [Array<String>]
    class GetTemplateOutput < Struct.new(
      nil,
      :template_body,
      :stages_available,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>GetTemplateSummary</a> action.</p>
    # @!attribute template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template (max
    #         size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name or the stack ID that's associated with the stack, which aren't always
    #         interchangeable. For running stacks, you can specify either the stack's name or its unique
    #         stack ID. For deleted stack, you must specify the unique stack ID.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    #   @return [String]
    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet from which the stack was created.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute template_summary_config
    #   <p>Specifies options for the <code>GetTemplateSummary</code> API action.</p>
    #   @return [Types::TemplateSummaryConfig]
    class GetTemplateSummaryInput < Struct.new(
      nil,
      :template_body,
      :template_url,
      :stack_name,
      :stack_set_name,
      :call_as,
      :template_summary_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>GetTemplateSummary</a> action.</p>
    # @!attribute parameters
    #   <p>A list of parameter declarations that describe various properties for each
    #         parameter.</p>
    #   @return [Array<Types::ParameterDeclaration>]
    # @!attribute description
    #   <p>The value that's defined in the <code>Description</code> property of the template.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The capabilities found within the template. If your template contains IAM resources, you
    #         must specify the <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> value for
    #         this parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a>
    #         actions with your template; otherwise, those actions return an
    #           <code>InsufficientCapabilities</code> error.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #   @return [Array<String>]
    # @!attribute capabilities_reason
    #   <p>The list of resources that generated the values in the <code>Capabilities</code> response
    #         element.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>A list of all the template resource types that are defined in the template, such as
    #           <code>AWS::EC2::Instance</code>, <code>AWS::Dynamo::Table</code>, and
    #           <code>Custom::MyCustomInstance</code>.</p>
    #   @return [Array<String>]
    # @!attribute version
    #   <p>The Amazon Web Services template format version, which identifies the capabilities of the
    #         template.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The value that's defined for the <code>Metadata</code> property of the template.</p>
    #   @return [String]
    # @!attribute declared_transforms
    #   <p>A list of the transforms that are declared in the template.</p>
    #   @return [Array<String>]
    # @!attribute resource_identifier_summaries
    #   <p>A list of resource identifier summaries that describe the target resources of an import
    #         operation and the properties you can provide during the import to identify the target
    #         resources. For example, <code>BucketName</code> is a possible identifier property for an
    #           <code>AWS::S3::Bucket</code> resource.</p>
    #   @return [Array<Types::ResourceIdentifierSummary>]
    # @!attribute warnings
    #   <p>An object that contains any warnings returned.</p>
    #   @return [Types::Warnings]
    class GetTemplateSummaryOutput < Struct.new(
      nil,
      :parameters,
      :description,
      :capabilities,
      :capabilities_reason,
      :resource_types,
      :version,
      :metadata,
      :declared_transforms,
      :resource_identifier_summaries,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified target doesn't have any requested Hook invocations.</p>
    # @!attribute message
    #   @return [String]
    class HookResultNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Hook invocation, its status, and the reason for its status.</p>
    # @!attribute hook_result_id
    #   <p>The unique identifier for this Hook invocation result.</p>
    #   @return [String]
    # @!attribute invocation_point
    #   <p>The specific point in the provisioning process where the Hook is invoked.</p>
    #   @return [String]
    # @!attribute failure_mode
    #   <p>The failure mode of the invocation.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the Hook that was invoked.</p>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>The version of the Hook that was invoked.</p>
    #   @return [String]
    # @!attribute type_configuration_version_id
    #   <p>The version of the Hook configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Hook invocation. The following statuses are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOOK_IN_PROGRESS</code>: The Hook is currently running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_SUCCEEDED</code>: The Hook completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_FAILED</code>: The Hook completed but failed
    #        validation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_FAILED</code>: The Hook encountered an error during execution.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute hook_status_reason
    #   <p>A description of the Hook results status. For example, if the Hook
    #      result is in a failed state, this may contain additional information for the failed state.</p>
    #   @return [String]
    # @!attribute invoked_at
    #   <p>The timestamp when the Hook was invoked.</p>
    #            <p>Only shown in responses when the request does not specify <code>TargetType</code> and
    #       <code>TargetId</code> filters.</p>
    #   @return [Time]
    # @!attribute target_type
    #   <p>The target type that the Hook was invoked against.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the Hook invocation target.</p>
    #   @return [String]
    # @!attribute type_arn
    #   <p>The ARN of the Hook that was invoked.</p>
    #   @return [String]
    # @!attribute hook_execution_target
    #   <p>The ARN of the target stack or request token of the Cloud Control API operation.</p>
    #            <p>Only shown in responses when the request does not specify <code>TargetType</code> and
    #       <code>TargetId</code> filters.</p>
    #   @return [String]
    class HookResultSummary < Struct.new(
      nil,
      :hook_result_id,
      :invocation_point,
      :failure_mode,
      :type_name,
      :type_version_id,
      :type_configuration_version_id,
      :status,
      :hook_status_reason,
      :invoked_at,
      :target_type,
      :target_id,
      :type_arn,
      :hook_execution_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name of the StackSet. The name must be unique in the Region where you create your
    #         StackSet.</p>
    #   @return [String]
    # @!attribute stack_ids
    #   <p>The IDs of the stacks you are importing into a StackSet. You import up to 10 stacks per
    #         StackSet at a time.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    #   @return [Array<String>]
    # @!attribute stack_ids_url
    #   <p>The Amazon S3 URL which contains list of stack ids to be inputted.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    #   @return [String]
    # @!attribute organizational_unit_ids
    #   <p>The list of OU ID's to which the imported stacks must be mapped as deployment
    #         targets.</p>
    #   @return [Array<String>]
    # @!attribute operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a StackSet operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet operation options</a>.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute operation_id
    #   <p>A unique, user defined, identifier for the StackSet operation.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For service managed StackSets, specify <code>DELEGATED_ADMIN</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ImportStacksToStackSetInput < Struct.new(
      nil,
      :stack_set_name,
      :stack_ids,
      :stack_ids_url,
      :organizational_unit_ids,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for the StackSet operation.</p>
    #   @return [String]
    class ImportStacksToStackSetOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The template contains resources with capabilities that weren't specified in the Capabilities parameter.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientCapabilitiesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified change set can't be used to update the stack. For example, the change set status might be
    #    <code>CREATE_IN_PROGRESS</code>, or the stack status might be <code>UPDATE_IN_PROGRESS</code>.</p>
    # @!attribute message
    #   @return [String]
    class InvalidChangeSetStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified operation isn't valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. CloudFormation doesn't
    #    return this error to users.</p>
    # @!attribute message
    #   @return [String]
    class InvalidStateTransitionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The quota for the resource has already been reached.</p>
    #          <p>For information about resource and stack limitations, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">CloudFormation quotas</a> in the
    #    <i>CloudFormation User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>ListChangeSets</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list change
    #         sets.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string (provided by the <a>ListChangeSets</a> response output) that
    #         identifies the next page of change sets that you want to retrieve.</p>
    #   @return [String]
    class ListChangeSetsInput < Struct.new(
      nil,
      :stack_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the <a>ListChangeSets</a> action.</p>
    # @!attribute summaries
    #   <p>A list of <code>ChangeSetSummary</code> structures that provides the ID and status of each
    #         change set for the specified stack.</p>
    #   @return [Array<Types::ChangeSetSummary>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB, a string that identifies the next page of change sets. If
    #         there is no additional page, this value is <code>null</code>.</p>
    #   @return [String]
    class ListChangeSetsOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A string (provided by the <a>ListExports</a> response output) that identifies
    #         the next page of exported output values that you asked to retrieve.</p>
    #   @return [String]
    class ListExportsInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exports
    #   <p>The output for the <a>ListExports</a> action.</p>
    #   @return [Array<Types::Export>]
    # @!attribute next_token
    #   <p>If the output exceeds 100 exported output values, a string that identifies the next page
    #         of exports. If there is no additional page, this value is null.</p>
    #   @return [String]
    class ListExportsOutput < Struct.new(
      nil,
      :exports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. By default the <code>ListGeneratedTemplates</code> API action
    #         will return at most 50 results in each response. The maximum value is 100.</p>
    #   @return [Integer]
    class ListGeneratedTemplatesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of summaries of the generated templates.</p>
    #   @return [Array<Types::TemplateSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call <code>ListGeneratedTemplates</code> again
    #         and use that value for the <code>NextToken</code> parameter. If the request returns all
    #         results, <code>NextToken</code> is set to an empty string.</p>
    #   @return [String]
    class ListGeneratedTemplatesOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_type
    #   <p>Filters results by target type. Currently, only <code>CHANGE_SET</code> and
    #           <code>CLOUD_CONTROL</code> are supported filter options.</p>
    #            <p>Required when <code>TargetId</code> is specified and cannot be used otherwise.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>Filters results by the unique identifier of the target the Hook was invoked
    #         against.</p>
    #            <p>For change sets, this is the change set ARN. When the target is a Cloud Control API operation, this
    #         value must be the <code>HookRequestToken</code> returned by the Cloud Control API request. For more
    #         information on the <code>HookRequestToken</code>, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_ProgressEvent.html">ProgressEvent</a>.</p>
    #            <p>Required when <code>TargetType</code> is specified and cannot be used otherwise.</p>
    #   @return [String]
    # @!attribute type_arn
    #   <p>Filters results by the ARN of the Hook. Can be used alone or in combination with
    #           <code>Status</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters results by the status of Hook invocations. Can only be used in
    #         combination with <code>TypeArn</code>. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOOK_IN_PROGRESS</code>: The Hook is currently running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_SUCCEEDED</code>: The Hook completed
    #             successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_FAILED</code>: The Hook completed but failed
    #             validation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_FAILED</code>: The Hook encountered an error during
    #             execution.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string that identifies the next page of events that you want to retrieve.</p>
    #   @return [String]
    class ListHookResultsInput < Struct.new(
      nil,
      :target_type,
      :target_id,
      :type_arn,
      :status,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_type
    #   <p>The target type.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the Hook invocation target.</p>
    #   @return [String]
    # @!attribute hook_results
    #   <p>A list of <code>HookResultSummary</code> structures that provides the status and
    #         Hook status reason for each Hook invocation for the specified
    #         target.</p>
    #   @return [Array<Types::HookResultSummary>]
    # @!attribute next_token
    #   <p>Pagination token, <code>null</code> or empty if no more results.</p>
    #   @return [String]
    class ListHookResultsOutput < Struct.new(
      nil,
      :target_type,
      :target_id,
      :hook_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_name
    #   <p>The name of the exported output value. CloudFormation returns the stack names that are
    #         importing this value.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string (provided by the <a>ListImports</a> response output) that identifies
    #         the next page of stacks that are importing the specified exported output value.</p>
    #   @return [String]
    class ListImportsInput < Struct.new(
      nil,
      :export_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute imports
    #   <p>A list of stack names that are importing the specified exported output value.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A string that identifies the next page of exports. If there is no additional page, this
    #         value is null.</p>
    #   @return [String]
    class ListImportsOutput < Struct.new(
      nil,
      :imports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The list of resources for which you want to get the related resources. Up to 100 resources
    #         can be provided.</p>
    #   @return [Array<Types::ScannedResourceIdentifier>]
    # @!attribute next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. By default the <code>ListResourceScanRelatedResources</code> API
    #         action will return up to 100 results in each response. The maximum value is 100.</p>
    #   @return [Integer]
    class ListResourceScanRelatedResourcesInput < Struct.new(
      nil,
      :resource_scan_id,
      :resources,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute related_resources
    #   <p>List of up to <code>MaxResults</code> resources in the specified resource scan related to
    #         the specified resources.</p>
    #   @return [Array<Types::ScannedResource>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call
    #           <code>ListResourceScanRelatedResources</code> again and use that value for the
    #           <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code>
    #         is set to an empty string.</p>
    #   @return [String]
    class ListResourceScanRelatedResourcesOutput < Struct.new(
      nil,
      :related_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>If specified, the returned resources will have the specified resource identifier (or one
    #         of them in the case where the resource has multiple identifiers).</p>
    #   @return [String]
    # @!attribute resource_type_prefix
    #   <p>If specified, the returned resources will be of any of the resource types with the
    #         specified prefix.</p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>If specified, the returned resources will have a matching tag key.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>If specified, the returned resources will have a matching tag value.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. By default the <code>ListResourceScanResources</code> API action
    #         will return at most 100 results in each response. The maximum value is 100.</p>
    #   @return [Integer]
    class ListResourceScanResourcesInput < Struct.new(
      nil,
      :resource_scan_id,
      :resource_identifier,
      :resource_type_prefix,
      :tag_key,
      :tag_value,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>List of up to <code>MaxResults</code> resources in the specified resource scan that match
    #         all of the specified filters.</p>
    #   @return [Array<Types::ScannedResource>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call <code>ListResourceScanResources</code>
    #         again and use that value for the <code>NextToken</code> parameter. If the request returns all
    #         results, <code>NextToken</code> is set to an empty string.</p>
    #   @return [String]
    class ListResourceScanResourcesOutput < Struct.new(
      nil,
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. The default value is 10. The maximum value is 100.</p>
    #   @return [Integer]
    # @!attribute scan_type_filter
    #   <p>The scan type that you want to get summary information about. The default is
    #           <code>FULL</code>.</p>
    #   @return [String]
    class ListResourceScansInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :scan_type_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_scan_summaries
    #   <p>The list of scans returned.</p>
    #   @return [Array<Types::ResourceScanSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call <code>ListResourceScans</code> again and
    #         use that value for the <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to an empty string.</p>
    #   @return [String]
    class ListResourceScansOutput < Struct.new(
      nil,
      :resource_scan_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to list drifted resources for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute stack_instance_resource_drift_statuses
    #   <p>The resource drift status of the stack instance. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template configuration in
    #             that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #             template values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #             template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute stack_instance_account
    #   <p>The name of the Amazon Web Services account that you want to list resource drifts for.</p>
    #   @return [String]
    # @!attribute stack_instance_region
    #   <p>The name of the Region where you want to list resource drifts.</p>
    #   @return [String]
    # @!attribute operation_id
    #   <p>The unique ID of the drift operation.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListStackInstanceResourceDriftsInput < Struct.new(
      nil,
      :stack_set_name,
      :next_token,
      :max_results,
      :stack_instance_resource_drift_statuses,
      :stack_instance_account,
      :stack_instance_region,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackInstanceResourceDriftsSummary</code> structures that contain
    #         information about the specified stack instances.</p>
    #   @return [Array<Types::StackInstanceResourceDriftsSummary>]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackInstanceResourceDriftsOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to list stack instances for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous request didn't return all the remaining results, the response's
    #           <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackInstances</code> again and assign that token to the request
    #         object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #         response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>The filter to apply to stack instances</p>
    #   @return [Array<Types::StackInstanceFilter>]
    # @!attribute stack_instance_account
    #   <p>The name of the Amazon Web Services account that you want to list stack instances for.</p>
    #   @return [String]
    # @!attribute stack_instance_region
    #   <p>The name of the Region where you want to list stack instances.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListStackInstancesInput < Struct.new(
      nil,
      :stack_set_name,
      :next_token,
      :max_results,
      :filters,
      :stack_instance_account,
      :stack_instance_region,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackInstanceSummary</code> structures that contain information about the
    #         specified stack instances.</p>
    #   @return [Array<Types::StackInstanceSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call <code>ListStackInstances</code> again and
    #         assign that token to the request object's <code>NextToken</code> parameter. If the request
    #         returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackInstancesOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    class ListStackRefactorActionsInput < Struct.new(
      nil,
      :stack_refactor_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_refactor_actions
    #   <p>The stack refactor actions.</p>
    #   @return [Array<Types::StackRefactorAction>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackRefactorActionsOutput < Struct.new(
      nil,
      :stack_refactor_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_status_filter
    #   <p>Execution status to use as a filter. Specify one or more execution status codes to list
    #         only stack refactors with the specified execution status codes.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    class ListStackRefactorsInput < Struct.new(
      nil,
      :execution_status_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_refactor_summaries
    #   <p>Provides a summary of a stack refactor, including the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>StackRefactorId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StatusReason</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExecutionStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExecutionStatusReason</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Description</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::StackRefactorSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackRefactorsOutput < Struct.new(
      nil,
      :stack_refactor_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>ListStackResource</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string that identifies the next page of stack resources that you want to
    #         retrieve.</p>
    #   @return [String]
    class ListStackResourcesInput < Struct.new(
      nil,
      :stack_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a <a>ListStackResources</a> action.</p>
    # @!attribute stack_resource_summaries
    #   <p>A list of <code>StackResourceSummary</code> structures.</p>
    #   @return [Array<Types::StackResourceSummary>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB, a string that identifies the next page of stack resources. If
    #         no additional page exists, this value is null.</p>
    #   @return [String]
    class ListStackResourcesOutput < Struct.new(
      nil,
      :stack_resource_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to get automatic deployment targets
    #         for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A string that identifies the next page of deployment targets that you want to
    #         retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute call_as
    #   <p>Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListStackSetAutoDeploymentTargetsInput < Struct.new(
      nil,
      :stack_set_name,
      :next_token,
      :max_results,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of summaries of the deployment targets for the StackSet.</p>
    #   @return [Array<Types::StackSetAutoDeploymentTargetSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListStackSetAutoDeploymentTargets.html">ListStackSetAutoDeploymentTargets</a> again and use that value for the
    #           <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code>
    #         is set to an empty string.</p>
    #   @return [String]
    class ListStackSetAutoDeploymentTargetsOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to get operation results for.</p>
    #   @return [String]
    # @!attribute operation_id
    #   <p>The ID of the StackSet operation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous request didn't return all the remaining results, the response object's
    #           <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackSetOperationResults</code> again and assign that token to the
    #         request object's <code>NextToken</code> parameter. If there are no remaining results, the
    #         previous response object's <code>NextToken</code> parameter is set to
    #         <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>The filter to apply to operation results.</p>
    #   @return [Array<Types::OperationResultFilter>]
    class ListStackSetOperationResultsInput < Struct.new(
      nil,
      :stack_set_name,
      :operation_id,
      :next_token,
      :max_results,
      :call_as,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackSetOperationResultSummary</code> structures that contain information
    #         about the specified operation results, for accounts and Amazon Web Services Regions that are included in the
    #         operation.</p>
    #   @return [Array<Types::StackSetOperationResultSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all results, <code>NextToken</code> is set to a token. To
    #         retrieve the next set of results, call <code>ListOperationResults</code> again and assign that
    #         token to the request object's <code>NextToken</code> parameter. If there are no remaining
    #         results, <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackSetOperationResultsOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to get operation summaries for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackSetOperations</code> again and assign that token to the request
    #         object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #         response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListStackSetOperationsInput < Struct.new(
      nil,
      :stack_set_name,
      :next_token,
      :max_results,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackSetOperationSummary</code> structures that contain summary
    #         information about operations for the specified StackSet.</p>
    #   @return [Array<Types::StackSetOperationSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all results, <code>NextToken</code> is set to a token. To
    #         retrieve the next set of results, call <code>ListOperationResults</code> again and assign that
    #         token to the request object's <code>NextToken</code> parameter. If there are no remaining
    #         results, <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackSetOperationsOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackSets</code> again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the StackSets that you want to get summary information about.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the management account or as a delegated administrator in a member
    #         account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListStackSetsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :status,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackSetSummary</code> structures that contain information about the
    #         user's StackSets.</p>
    #   @return [Array<Types::StackSetSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set
    #         to a token. To retrieve the next set of results, call <code>ListStackInstances</code> again
    #         and assign that token to the request object's <code>NextToken</code> parameter. If the request
    #         returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListStackSetsOutput < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>ListStacks</a> action.</p>
    # @!attribute next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    #   @return [String]
    # @!attribute stack_status_filter
    #   <p>Stack status to use as a filter. Specify one or more stack status codes to list only
    #         stacks with the specified status codes. For a complete list of stack status codes, see the
    #           <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>
    #   @return [Array<String>]
    class ListStacksInput < Struct.new(
      nil,
      :next_token,
      :stack_status_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for <a>ListStacks</a> action.</p>
    # @!attribute stack_summaries
    #   <p>A list of <code>StackSummary</code> structures that contains information about the
    #         specified stacks.</p>
    #   @return [Array<Types::StackSummary>]
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If
    #         no additional page exists, this value is null.</p>
    #   @return [String]
    class ListStacksOutput < Struct.new(
      nil,
      :stack_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute registration_status_filter
    #   <p>The current status of the extension registration request.</p>
    #            <p>The default is <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    class ListTypeRegistrationsInput < Struct.new(
      nil,
      :type,
      :type_name,
      :type_arn,
      :registration_status_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_token_list
    #   <p>A list of extension registration tokens.</p>
    #            <p>Use <a>DescribeTypeRegistration</a> to return detailed information about a type
    #         registration request.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListTypeRegistrationsOutput < Struct.new(
      nil,
      :registration_token_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The kind of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension for which you want version summary information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #         information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute deprecated_status
    #   <p>The deprecation status of the extension versions that you want to get summary information
    #         about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension version is registered and can be used in CloudFormation
    #             operations, dependent on its provisioning behavior and visibility scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension version has been deregistered and can no longer
    #             be used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>LIVE</code>.</p>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions published by Amazon aren't assigned a publisher ID.</p>
    #   @return [String]
    class ListTypeVersionsInput < Struct.new(
      nil,
      :type,
      :type_name,
      :arn,
      :max_results,
      :next_token,
      :deprecated_status,
      :publisher_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type_version_summaries
    #   <p>A list of <code>TypeVersionSummary</code> structures that contain information about the
    #         specified extension's versions.</p>
    #   @return [Array<Types::TypeVersionSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set
    #         to a token. To retrieve the next set of results, call this action again and assign that token
    #         to the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListTypeVersionsOutput < Struct.new(
      nil,
      :type_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute visibility
    #   <p>The scope at which the extensions are visible and usable in CloudFormation operations.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIVATE</code>: Extensions that are visible and usable within this account and
    #             Region. This includes:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Private extensions you have registered in this account and Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>Public extensions that you have activated in this account and Region.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUBLIC</code>: Extensions that are publicly visible and available to be
    #             activated within any Amazon Web Services account. This includes extensions from Amazon Web Services and third-party
    #             publishers.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>PRIVATE</code>.</p>
    #   @return [String]
    # @!attribute provisioning_type
    #   <p>For resource types, the provisioning behavior of the resource type. CloudFormation determines
    #         the provisioning type during registration, based on the types of handlers in the schema
    #         handler package submitted.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULLY_MUTABLE</code>: The resource type includes an update handler to process
    #             updates to the type during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMMUTABLE</code>: The resource type doesn't include an update handler, so the
    #             type can't be updated and must instead be replaced during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_PROVISIONABLE</code>: The resource type doesn't include create, read, and
    #             delete handlers, and therefore can't actually be provisioned.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>FULLY_MUTABLE</code>.</p>
    #   @return [String]
    # @!attribute deprecated_status
    #   <p>The deprecation status of the extension that you want to get summary information
    #         about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension is registered for use in CloudFormation
    #             operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension has been deregistered and can no longer be used
    #             in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The type of extension.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filter criteria to use in determining which extensions to return.</p>
    #            <p>Filters must be compatible with <code>Visibility</code> to return valid results. For
    #         example, specifying <code>AWS_TYPES</code> for <code>Category</code> and <code>PRIVATE</code>
    #         for <code>Visibility</code> returns an empty list of types, but specifying <code>PUBLIC</code>
    #         for <code>Visibility</code> returns the desired list.</p>
    #   @return [Types::TypeFilters]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    class ListTypesInput < Struct.new(
      nil,
      :visibility,
      :provisioning_type,
      :deprecated_status,
      :type,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type_summaries
    #   <p>A list of <code>TypeSummary</code> structures that contain information about the specified
    #         extensions.</p>
    #   @return [Array<Types::TypeSummary>]
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    #   @return [String]
    class ListTypesOutput < Struct.new(
      nil,
      :type_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains logging configuration information for an extension.</p>
    # @!attribute log_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that CloudFormation should assume when sending log
    #      entries to CloudWatch Logs.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The Amazon CloudWatch Logs group to which CloudFormation sends error logging information when invoking the
    #      extension's handlers.</p>
    #   @return [String]
    class LoggingConfig < Struct.new(
      nil,
      :log_role_arn,
      :log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #    conflicting operations.</p>
    # @!attribute active
    #   <p>When <code>true</code>, CloudFormation performs non-conflicting operations concurrently and
    #      queues conflicting operations. After conflicting operations finish, CloudFormation starts queued
    #      operations in request order.</p>
    #            <note>
    #               <p>If there are already running or queued operations, CloudFormation queues all incoming
    #       operations even if they are non-conflicting.</p>
    #               <p>You can't modify your StackSet's execution configuration while there are running or queued
    #       operations for that StackSet.</p>
    #            </note>
    #            <p>When <code>false</code> (default), StackSets performs one operation at a time in request
    #      order.</p>
    #   @return [Boolean]
    class ManagedExecution < Struct.new(
      nil,
      :active,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the module from which the resource was created, if the resource
    #    was created from a module included in the stack template.</p>
    #          <p>For more information about modules, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/modules.html">Create reusable resource configurations
    #     that can be included across templates with CloudFormation modules</a> in the
    #     <i>CloudFormation User Guide</i>.</p>
    # @!attribute type_hierarchy
    #   <p>A concatenated list of the module type or types that contains the resource. Module types are
    #      listed starting with the inner-most nested module, and separated by <code>/</code>.</p>
    #            <p>In the following example, the resource was created from a module of type
    #       <code>AWS::First::Example::MODULE</code>, that's nested inside a parent module of type
    #       <code>AWS::Second::Example::MODULE</code>.</p>
    #            <p>
    #               <code>AWS::First::Example::MODULE/AWS::Second::Example::MODULE</code>
    #            </p>
    #   @return [String]
    # @!attribute logical_id_hierarchy
    #   <p>A concatenated list of the logical IDs of the module or modules that contains the resource.
    #      Modules are listed starting with the inner-most nested module, and separated by
    #      <code>/</code>.</p>
    #            <p>In the following example, the resource was created from a module, <code>moduleA</code>,
    #      that's nested inside a parent module, <code>moduleB</code>.</p>
    #            <p>
    #               <code>moduleA/moduleB</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/module-ref-resources.html">Reference module resources in
    #       CloudFormation templates</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    class ModuleInfo < Struct.new(
      nil,
      :type_hierarchy,
      :logical_id_hierarchy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified name is already in use.</p>
    # @!attribute message
    #   @return [String]
    class NameAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified operation ID already exists.</p>
    # @!attribute message
    #   @return [String]
    class OperationIdAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Another operation is currently in progress for this StackSet. Only one operation can be performed for a stack
    #    set at a given time.</p>
    # @!attribute message
    #   @return [String]
    class OperationInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified ID refers to an operation that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status that operation results are filtered by.</p>
    # @!attribute name
    #   <p>The type of filter to apply.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to filter by.</p>
    #   @return [String]
    class OperationResultFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. CloudFormation doesn't
    #    return this error to users.</p>
    # @!attribute message
    #   @return [String]
    class OperationStatusCheckFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Output data type.</p>
    # @!attribute output_key
    #   <p>The key associated with the output.</p>
    #   @return [String]
    # @!attribute output_value
    #   <p>The value associated with the output.</p>
    #   @return [String]
    # @!attribute description
    #   <p>User defined description associated with the output.</p>
    #   @return [String]
    # @!attribute export_name
    #   <p>The name of the export associated with the output.</p>
    #   @return [String]
    class Output < Struct.new(
      nil,
      :output_key,
      :output_value,
      :description,
      :export_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Parameter data type.</p>
    # @!attribute parameter_key
    #   <p>The key associated with the parameter. If you don't specify a key and value for a particular
    #      parameter, CloudFormation uses the default value that's specified in your template.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The input value associated with the parameter.</p>
    #   @return [String]
    # @!attribute use_previous_value
    #   <p>During a stack update, use the existing parameter value that the stack is using for a given
    #      parameter key. If you specify <code>true</code>, do not specify a parameter value.</p>
    #   @return [Boolean]
    # @!attribute resolved_value
    #   <p>Read-only. The value that corresponds to a Systems Manager parameter key. This field is returned only
    #      for Systems Manager parameter types in the template. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-supplied-parameter-types.html">Specify
    #       existing resources at runtime with CloudFormation-supplied parameter types</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    class Parameter < Struct.new(
      nil,
      :parameter_key,
      :parameter_value,
      :use_previous_value,
      :resolved_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of criteria that CloudFormation uses to validate parameter values. Although other
    #    constraints might be defined in the stack template, CloudFormation returns only the
    #     <code>AllowedValues</code> property.</p>
    # @!attribute allowed_values
    #   <p>A list of values that are permitted for a parameter.</p>
    #   @return [Array<String>]
    class ParameterConstraints < Struct.new(
      nil,
      :allowed_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ParameterDeclaration data type.</p>
    # @!attribute parameter_key
    #   <p>The name that's associated with the parameter.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_type
    #   <p>The type of parameter.</p>
    #   @return [String]
    # @!attribute no_echo
    #   <p>Flag that indicates whether the parameter value is shown as plain text in logs and in the
    #      Amazon Web Services Management Console.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description that's associate with the parameter.</p>
    #   @return [String]
    # @!attribute parameter_constraints
    #   <p>The criteria that CloudFormation uses to validate parameter values.</p>
    #   @return [Types::ParameterConstraints]
    class ParameterDeclaration < Struct.new(
      nil,
      :parameter_key,
      :default_value,
      :parameter_type,
      :no_echo,
      :description,
      :parameter_constraints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses
    #    context key-value pairs in cases where a resource's logical and physical IDs aren't enough to
    #    uniquely identify that resource. Each context key-value pair specifies a resource that contains
    #    the targeted resource.</p>
    # @!attribute key
    #   <p>The resource context key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The resource context value.</p>
    #   @return [String]
    class PhysicalResourceIdContextKeyValuePair < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a resource property whose actual value differs from its expected value, as
    #    defined in the stack template and any values specified as template parameters. These will be
    #    present only for resources whose <code>StackResourceDriftStatus</code> is <code>MODIFIED</code>.
    #    For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect unmanaged
    #     configuration changes to stacks and resources with drift detection</a>.</p>
    # @!attribute property_path
    #   <p>The fully-qualified path to the resource property.</p>
    #   @return [String]
    # @!attribute expected_value
    #   <p>The expected property value of the resource property, as defined in the stack template and
    #      any values specified as template parameters.</p>
    #   @return [String]
    # @!attribute actual_value
    #   <p>The actual property value of the resource property.</p>
    #   @return [String]
    # @!attribute difference_type
    #   <p>The type of property difference.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ADD</code>: A value has been added to a resource property that's an array or list
    #        data type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code>: The property has been removed from the current resource
    #        configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_EQUAL</code>: The current property value differs from its expected value (as
    #        defined in the stack template and any values specified as template parameters).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PropertyDifference < Struct.new(
      nil,
      :property_path,
      :expected_value,
      :actual_value,
      :difference_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute public_version_number
    #   <p>The version number to assign to this version of the extension.</p>
    #            <p>Use the following format, and adhere to semantic versioning when assigning a version
    #         number to your extension:</p>
    #            <p>
    #               <code>MAJOR.MINOR.PATCH</code>
    #            </p>
    #            <p>For more information, see <a href="https://semver.org/">Semantic Versioning
    #           2.0.0</a>.</p>
    #            <p>If you don't specify a version number, CloudFormation increments the version number by one
    #         minor version release.</p>
    #            <p>You cannot specify a version number the first time you publish a type. CloudFormation
    #         automatically sets the first version number to be <code>1.0.0</code>.</p>
    #   @return [String]
    class PublishTypeInput < Struct.new(
      nil,
      :type,
      :arn,
      :type_name,
      :public_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_type_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the public extension upon publication.</p>
    #   @return [String]
    class PublishTypeOutput < Struct.new(
      nil,
      :public_type_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bearer_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    # @!attribute operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    # @!attribute current_operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    # @!attribute resource_model
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    #   @return [String]
    class RecordHandlerProgressInput < Struct.new(
      nil,
      :bearer_token,
      :operation_status,
      :current_operation_status,
      :status_message,
      :error_code,
      :resource_model,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RecordHandlerProgressOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_terms_and_conditions
    #   <p>Whether you accept the <a href="https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf">Terms and Conditions</a> for publishing extensions in the CloudFormation registry. You must
    #         accept the terms and conditions in order to register to publish public extensions to the
    #         CloudFormation registry.</p>
    #            <p>The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute connection_arn
    #   <p>If you are using a Bitbucket or GitHub account for identity verification, the Amazon
    #         Resource Name (ARN) for your connection to that account.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs">Prerequisite: Registering your account to publish CloudFormation extensions</a> in the
    #           <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #   @return [String]
    class RegisterPublisherInput < Struct.new(
      nil,
      :accept_terms_and_conditions,
      :connection_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute publisher_id
    #   <p>The ID assigned this account by CloudFormation for publishing extensions.</p>
    #   @return [String]
    class RegisterPublisherOutput < Struct.new(
      nil,
      :publisher_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The kind of extension.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension being registered.</p>
    #            <p>We suggest that extension names adhere to the following patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>For resource types, <code>company_or_organization::service::type</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For modules, <code>company_or_organization::service::type::MODULE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Hooks, <code>MyCompany::Testing::MyTestHook</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The following organization namespaces are reserved and can't be used in your extension
    #           names:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>Alexa</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AMZN</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Custom</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Dev</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute schema_handler_package
    #   <p>A URL to the S3 bucket that contains the extension project package that contains the
    #         necessary files for the extension you want to register.</p>
    #            <p>For information about generating a schema handler package for the extension you want to
    #         register, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html">submit</a> in
    #         the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #            <note>
    #               <p>The user registering the extension must be able to access the package in the S3 bucket.
    #           That's, the user needs to have <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a> permissions for the schema
    #           handler package. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html">Actions, Resources, and Condition Keys for
    #             Amazon S3</a> in the <i>Identity and Access Management User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute logging_config
    #   <p>Specifies logging configuration information for an extension.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking
    #         the extension.</p>
    #            <p>For CloudFormation to assume the specified execution role, the role must contain a trust
    #         relationship with the CloudFormation service principal
    #           (<code>resources.cloudformation.amazonaws.com</code>). For more information about adding
    #         trust relationships, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy">Modifying a role trust policy</a> in the <i>Identity and Access Management User
    #         Guide</i>.</p>
    #            <p>If your extension calls Amazon Web Services APIs in any of its handlers, you must create an
    #             <i>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
    #             execution role</a>
    #               </i> that includes the necessary permissions to call those
    #         Amazon Web Services APIs, and provision that execution role in your account. When CloudFormation needs to invoke
    #         the resource type handler, CloudFormation assumes this execution role to create a temporary
    #         session token, which it then passes to the resource type handler, thereby supplying your
    #         resource type with the appropriate credentials.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier that acts as an idempotency key for this registration request.
    #         Specifying a client request token prevents CloudFormation from generating more than one version of
    #         an extension from the same registration request, even if the request is submitted multiple
    #         times.</p>
    #   @return [String]
    class RegisterTypeInput < Struct.new(
      nil,
      :type,
      :type_name,
      :schema_handler_package,
      :logging_config,
      :execution_role_arn,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_token
    #   <p>The identifier for this registration request.</p>
    #            <p>Use this registration token when calling <a>DescribeTypeRegistration</a>, which
    #         returns information about the status and IDs of the extension registration.</p>
    #   @return [String]
    class RegisterTypeOutput < Struct.new(
      nil,
      :registration_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For extensions that are modules, a public third-party extension that must be activated in
    #    your account in order for the module itself to be activated.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/module-versioning.html#requirements-for-modules">Requirements for activating third-party public modules</a> in the
    #     <i>CloudFormation User Guide</i>.</p>
    # @!attribute type_name_alias
    #   <p>An alias assigned to the public extension, in this account and Region. If you specify an
    #      alias for the extension, CloudFormation treats the alias as the extension type name within this
    #      account and Region. You must use the alias to refer to the extension in your templates, API
    #      calls, and CloudFormation console.</p>
    #   @return [String]
    # @!attribute original_type_name
    #   <p>The type name of the public extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when enabling the extension in this account
    #      and Region, CloudFormation treats that alias as the extension's type name within the account and
    #      Region, not the type name of the public extension. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias">Use
    #       aliases to refer to extensions</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #   @return [String]
    # @!attribute supported_major_versions
    #   <p>A list of the major versions of the extension type that the macro supports.</p>
    #   @return [Array<Integer>]
    class RequiredActivatedType < Struct.new(
      nil,
      :type_name_alias,
      :original_type_name,
      :publisher_id,
      :supported_major_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ResourceChange</code> structure describes the resource and the action that
    #    CloudFormation will perform on it if you execute this change set.</p>
    # @!attribute policy_action
    #   <p>The action that will be taken on the physical resource when the change set is
    #      executed.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Delete</code> The resource will be deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retain</code> The resource will be retained.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Snapshot</code> The resource will have a snapshot taken.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceAndDelete</code> The resource will be replaced and then deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceAndRetain</code> The resource will be replaced and then retained.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceAndSnapshot</code> The resource will be replaced and then have a snapshot
    #        taken.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute action
    #   <p>The action that CloudFormation takes on the resource, such as <code>Add</code> (adds a new
    #      resource), <code>Modify</code> (changes a resource), <code>Remove</code> (deletes a resource),
    #       <code>Import</code> (imports a resource), or <code>Dynamic</code> (exact action for the resource
    #      can't be determined).</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The resource's logical ID, which is defined in the stack's template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The resource's physical ID (resource name). Resources that you are adding don't have
    #      physical IDs because they haven't been created.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of CloudFormation resource, such as <code>AWS::S3::Bucket</code>.</p>
    #   @return [String]
    # @!attribute replacement
    #   <p>For the <code>Modify</code> action, indicates whether CloudFormation will replace the resource
    #      by creating a new one and deleting the old one. This value depends on the value of the
    #       <code>RequiresRecreation</code> property in the <code>ResourceTargetDefinition</code> structure.
    #      For example, if the <code>RequiresRecreation</code> field is <code>Always</code> and the
    #       <code>Evaluation</code> field is <code>Static</code>, <code>Replacement</code> is
    #       <code>True</code>. If the <code>RequiresRecreation</code> field is <code>Always</code> and the
    #       <code>Evaluation</code> field is <code>Dynamic</code>, <code>Replacement</code> is
    #       <code>Conditional</code>.</p>
    #            <p>If you have multiple changes with different <code>RequiresRecreation</code> values, the
    #       <code>Replacement</code> value depends on the change with the most impact. A
    #       <code>RequiresRecreation</code> value of <code>Always</code> has the most impact, followed by
    #       <code>Conditional</code>, and then <code>Never</code>.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>For the <code>Modify</code> action, indicates which resource attribute is triggering this
    #      update, such as a change in the resource attribute's <code>Metadata</code>,
    #       <code>Properties</code>, or <code>Tags</code>.</p>
    #   @return [Array<String>]
    # @!attribute details
    #   <p>For the <code>Modify</code> action, a list of <code>ResourceChangeDetail</code> structures
    #      that describes the changes that CloudFormation will make to the resource.</p>
    #   @return [Array<Types::ResourceChangeDetail>]
    # @!attribute change_set_id
    #   <p>The change set ID of the nested change set.</p>
    #   @return [String]
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the resource
    #      was created from a module included in the stack template.</p>
    #   @return [Types::ModuleInfo]
    # @!attribute before_context
    #   <p>An encoded JSON string that contains the context of the resource before the change is
    #      executed.</p>
    #   @return [String]
    # @!attribute after_context
    #   <p>An encoded JSON string that contains the context of the resource after the change is
    #      executed.</p>
    #   @return [String]
    class ResourceChange < Struct.new(
      nil,
      :policy_action,
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details,
      :change_set_id,
      :module_info,
      :before_context,
      :after_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For a resource with <code>Modify</code> as the action, the <code>ResourceChange</code>
    #    structure describes the changes CloudFormation will make to that resource.</p>
    # @!attribute target
    #   <p>A <code>ResourceTargetDefinition</code> structure that describes the field that CloudFormation
    #      will change and whether the resource will be recreated.</p>
    #   @return [Types::ResourceTargetDefinition]
    # @!attribute evaluation
    #   <p>Indicates whether CloudFormation can determine the target value, and whether the target value
    #      will change before you execute a change set.</p>
    #            <p>For <code>Static</code> evaluations, CloudFormation can determine that the target value will
    #      change, and its value. For example, if you directly modify the <code>InstanceType</code> property
    #      of an EC2 instance, CloudFormation knows that this property value will change, and its value, so this
    #      is a <code>Static</code> evaluation.</p>
    #            <p>For <code>Dynamic</code> evaluations, can't determine the target value because it depends on
    #      the result of an intrinsic function, such as a <code>Ref</code> or <code>Fn::GetAtt</code>
    #      intrinsic function, when the stack is updated. For example, if your template includes a reference
    #      to a resource that's conditionally recreated, the value of the reference (the physical ID of the
    #      resource) might change, depending on if the resource is recreated. If the resource is recreated,
    #      it will have a new physical ID, so all references to that resource will also be updated.</p>
    #   @return [String]
    # @!attribute change_source
    #   <p>The group to which the <code>CausingEntity</code> value belongs. There are five entity
    #      groups:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResourceReference</code> entities are <code>Ref</code> intrinsic functions that refer to
    #        resources in the template, such as <code>{ "Ref" : "MyEC2InstanceResource" }</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ParameterReference</code> entities are <code>Ref</code> intrinsic functions that get
    #        template parameter values, such as <code>{ "Ref" : "MyPasswordParameter" }</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceAttribute</code> entities are <code>Fn::GetAtt</code> intrinsic functions that
    #        get resource attribute values, such as <code>{ "Fn::GetAtt" : [ "MyEC2InstanceResource",
    #         "PublicDnsName" ] }</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DirectModification</code> entities are changes that are made directly to the
    #        template.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automatic</code> entities are <code>AWS::CloudFormation::Stack</code> resource types,
    #        which are also known as nested stacks. If you made no changes to the
    #         <code>AWS::CloudFormation::Stack</code> resource, CloudFormation sets the
    #         <code>ChangeSource</code> to <code>Automatic</code> because the nested stack's template might
    #        have changed. Changes to a nested stack's template aren't visible to CloudFormation until you run
    #        an update on the parent stack.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute causing_entity
    #   <p>The identity of the entity that triggered this change. This entity is a member of the group
    #      that's specified by the <code>ChangeSource</code> field. For example, if you modified the value
    #      of the <code>KeyPairName</code> parameter, the <code>CausingEntity</code> is the name of the
    #      parameter (<code>KeyPairName</code>).</p>
    #            <p>If the <code>ChangeSource</code> value is <code>DirectModification</code>, no value is given
    #      for <code>CausingEntity</code>.</p>
    #   @return [String]
    class ResourceChangeDetail < Struct.new(
      nil,
      :target,
      :evaluation,
      :change_source,
      :causing_entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource included in a generated template. This data type is used with the
    #     <code>CreateGeneratedTemplate</code> and <code>UpdateGeneratedTemplate</code> API
    #    actions.</p>
    # @!attribute resource_type
    #   <p>The type of the resource, such as <code>AWS::DynamoDB::Table</code>. For the list of
    #      supported resources, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #       support for imports and drift detection</a> in the
    #      <i>CloudFormation User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical resource id for this resource in the generated template.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A list of up to 256 key-value pairs that identifies the scanned resource. The key is the
    #      name of one of the primary identifiers for the resource. (Primary identifiers are specified in
    #      the <code>primaryIdentifier</code> list in the resource schema.) The value is the value of that
    #      primary identifier. For example, for a <code>AWS::DynamoDB::Table</code> resource, the primary
    #      identifiers is <code>TableName</code> so the key-value pair could be <code>"TableName":
    #       "MyDDBTable"</code>. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier">primaryIdentifier</a> in the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class ResourceDefinition < Struct.new(
      nil,
      :resource_type,
      :logical_resource_id,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a resource in a generated template</p>
    # @!attribute resource_type
    #   <p>The type of the resource, such as <code>AWS::DynamoDB::Table</code>. For the list of
    #      supported resources, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #       support for imports and drift detection</a> In the
    #      <i>CloudFormation User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical id for this resource in the final generated template.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A list of up to 256 key-value pairs that identifies the resource in the generated template.
    #      The key is the name of one of the primary identifiers for the resource. (Primary identifiers are
    #      specified in the <code>primaryIdentifier</code> list in the resource schema.) The value is the
    #      value of that primary identifier. For example, for a <code>AWS::DynamoDB::Table</code> resource,
    #      the primary identifiers is <code>TableName</code> so the key-value pair could be
    #       <code>"TableName": "MyDDBTable"</code>. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier">primaryIdentifier</a> in the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_status
    #   <p>Status of the processing of a resource in a generated template.</p>
    #            <dl>
    #               <dt>
    #        
    #         InProgress
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource processing is still in progress.</p>
    #               </dd>
    #               <dt>
    #        
    #         Complete
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource processing is complete.</p>
    #               </dd>
    #               <dt>
    #        
    #         Pending
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource processing is pending.</p>
    #               </dd>
    #               <dt>
    #        
    #         Failed
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource processing has failed.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute resource_status_reason
    #   <p>The reason for the resource detail, providing more information if a failure happened.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The warnings generated for this resource.</p>
    #   @return [Array<Types::WarningDetail>]
    class ResourceDetail < Struct.new(
      nil,
      :resource_type,
      :logical_resource_id,
      :resource_identifier,
      :resource_status,
      :resource_status_reason,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the target resources of a specific type in your import template (for example,
    #       all <code>AWS::S3::Bucket</code> resources) and the properties you can provide during the
    #       import to identify resources of that type.</p>
    # @!attribute resource_type
    #   <p>The template resource type of the target resources, such as
    #         <code>AWS::S3::Bucket</code>.</p>
    #   @return [String]
    # @!attribute logical_resource_ids
    #   <p>The logical IDs of the target resources of the specified <code>ResourceType</code>, as
    #         defined in the import template.</p>
    #   @return [Array<String>]
    # @!attribute resource_identifiers
    #   <p>The resource properties you can provide during the import to identify your target
    #         resources. For example, <code>BucketName</code> is a possible identifier property for
    #           <code>AWS::S3::Bucket</code> resources.</p>
    #   @return [Array<String>]
    class ResourceIdentifierSummary < Struct.new(
      nil,
      :resource_type,
      :logical_resource_ids,
      :resource_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of the resource in a stack template.</p>
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    class ResourceLocation < Struct.new(
      nil,
      :stack_name,
      :logical_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the current source of the resource and the destination of where it will be moved
    #    to.</p>
    # @!attribute source
    #   <p>The source stack <code>StackName</code> and <code>LogicalResourceId</code> for the resource
    #      being refactored.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute destination
    #   <p>The destination stack <code>StackName</code> and <code>LogicalResourceId</code> for the
    #      resource being refactored.</p>
    #   @return [Types::ResourceLocation]
    class ResourceMapping < Struct.new(
      nil,
      :source,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource scan is currently in progress. Only one can be run at a time for an account in a Region.</p>
    # @!attribute message
    #   @return [String]
    class ResourceScanInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on resource scans has been exceeded. Reasons include:</p>
    #          <ul>
    #             <li>
    #                <p>Exceeded the daily quota for resource scans.</p>
    #             </li>
    #             <li>
    #                <p>A resource scan recently failed. You must wait 10 minutes before starting a new resource scan.</p>
    #             </li>
    #             <li>
    #                <p>The last resource scan failed after exceeding 100,000 resources. When this happens, you must wait 24 hours
    #      before starting a new resource scan.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class ResourceScanLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource scan was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceScanNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the resource scan. This is returned by the <code>ListResourceScan</code> API
    #    action.</p>
    # @!attribute resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the resource scan.</p>
    #            <dl>
    #               <dt>
    #        
    #         IN_PROGRESS
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource scan is still in progress.</p>
    #               </dd>
    #               <dt>
    #        
    #         COMPLETE
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource scan is complete.</p>
    #               </dd>
    #               <dt>
    #        
    #         EXPIRED
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource scan has expired.</p>
    #               </dd>
    #               <dt>
    #        
    #         FAILED
    #        
    #       </dt>
    #               <dd>
    #                  <p>The resource scan has failed.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the resource scan status, providing more information if a failure
    #      happened.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the resource scan was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the resource scan was finished.</p>
    #   @return [Time]
    # @!attribute percentage_completed
    #   <p>The percentage of the resource scan that has been completed.</p>
    #   @return [Float]
    # @!attribute scan_type
    #   <p>The scan type that has been completed.</p>
    #   @return [String]
    class ResourceScanSummary < Struct.new(
      nil,
      :resource_scan_id,
      :status,
      :status_reason,
      :start_time,
      :end_time,
      :percentage_completed,
      :scan_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field that CloudFormation will change, such as the name of a resource's property, and
    #    whether the resource will be recreated.</p>
    # @!attribute attribute
    #   <p>Indicates which resource attribute is triggering this update, such as a change in the
    #      resource attribute's <code>Metadata</code>, <code>Properties</code>, or <code>Tags</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>If the <code>Attribute</code> value is <code>Properties</code>, the name of the property.
    #      For all other attributes, the value is null.</p>
    #   @return [String]
    # @!attribute requires_recreation
    #   <p>If the <code>Attribute</code> value is <code>Properties</code>, indicates whether a change
    #      to this property causes the resource to be recreated. The value can be <code>Never</code>,
    #       <code>Always</code>, or <code>Conditionally</code>. To determine the conditions for a
    #       <code>Conditionally</code> recreation, see the update behavior for that property in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The property path of the property.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>The value of the property before the change is executed. Large values can be
    #      truncated.</p>
    #   @return [String]
    # @!attribute after_value
    #   <p>The value of the property after the change is executed. Large values can be
    #      truncated.</p>
    #   @return [String]
    # @!attribute attribute_change_type
    #   <p>The type of change to be made to the property if the change is executed.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Add</code> The item will be added.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Remove</code> The item will be removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Modify</code> The item will be modified.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ResourceTargetDefinition < Struct.new(
      nil,
      :attribute,
      :name,
      :requires_recreation,
      :path,
      :before_value,
      :after_value,
      :attribute_change_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the target resource of an import operation.</p>
    # @!attribute resource_type
    #   <p>The type of resource to import into your stack, such as <code>AWS::S3::Bucket</code>. For a
    #      list of supported resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #       support for imports and drift detection</a> in the
    #      <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical ID of the target resource as specified in the template.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A key-value pair that identifies the target resource. The key is an identifier property (for
    #      example, <code>BucketName</code> for <code>AWS::S3::Bucket</code> resources) and the value is the
    #      actual property value (for example, <code>MyS3Bucket</code>).</p>
    #   @return [Hash<String, String>]
    class ResourceToImport < Struct.new(
      nil,
      :resource_type,
      :logical_resource_id,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains the rollback triggers for CloudFormation to monitor during stack
    #    creation and updating operations, and for the specified monitoring period afterwards.</p>
    #          <p>Rollback triggers enable you to have CloudFormation monitor the state of your application during
    #    stack creation and updating, and to roll back that operation if the application breaches the
    #    threshold of any of the alarms you've specified. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html">Roll back your CloudFormation stack on alarm breach with rollback triggers</a>.</p>
    # @!attribute rollback_triggers
    #   <p>The triggers to monitor during stack creation or update actions.</p>
    #            <p>By default, CloudFormation saves the rollback triggers specified for a stack and applies them to
    #      any subsequent update operations for the stack, unless you specify otherwise. If you do specify
    #      rollback triggers for this parameter, those triggers replace any list of triggers previously
    #      specified for the stack. This means:</p>
    #            <ul>
    #               <li>
    #                  <p>To use the rollback triggers previously specified for this stack, if any, don't specify
    #        this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>To specify new or updated rollback triggers, you must specify <i>all</i> the
    #        triggers that you want used for this stack, even triggers you've specified before (for example,
    #        when creating the stack or during a previous stack update). Any triggers that you don't include
    #        in the updated list of triggers are no longer applied to the stack.</p>
    #               </li>
    #               <li>
    #                  <p>To remove all currently specified triggers, specify an empty list for this
    #        parameter.</p>
    #               </li>
    #            </ul>
    #            <p>If a specified trigger is missing, the entire stack operation fails and is rolled
    #      back.</p>
    #   @return [Array<Types::RollbackTrigger>]
    # @!attribute monitoring_time_in_minutes
    #   <p>The amount of time, in minutes, during which CloudFormation should monitor all the rollback
    #      triggers after the stack creation or update operation deploys all necessary resources.</p>
    #            <p>The default is 0 minutes.</p>
    #            <p>If you specify a monitoring period but don't specify any rollback triggers, CloudFormation still
    #      waits the specified period of time before cleaning up old resources after update operations. You
    #      can use this monitoring period to perform any manual stack validation desired, and manually
    #      cancel the stack creation or update (using <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html">CancelUpdateStack</a>, for example) as necessary.</p>
    #            <p>If you specify 0 for this parameter, CloudFormation still monitors the specified rollback
    #      triggers during stack creation and update operations. Then, for update operations, it begins
    #      disposing of old resources immediately once the operation completes.</p>
    #   @return [Integer]
    class RollbackConfiguration < Struct.new(
      nil,
      :rollback_triggers,
      :monitoring_time_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name that's associated with the stack.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to rollback the
    #         stack.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>RollbackStack</code> request.</p>
    #   @return [String]
    # @!attribute retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    class RollbackStackInput < Struct.new(
      nil,
      :stack_name,
      :role_arn,
      :client_request_token,
      :retain_except_on_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #   @return [String]
    class RollbackStackOutput < Struct.new(
      nil,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rollback trigger CloudFormation monitors during creation and updating of stacks. If any of the
    #    alarms you specify goes to ALARM state during the stack operation or within the specified
    #    monitoring period afterwards, CloudFormation rolls back the entire stack operation.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rollback trigger.</p>
    #            <p>If a specified trigger is missing, the entire stack operation fails and is rolled
    #      back.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The resource type of the rollback trigger. Specify either <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudwatch-alarm.html">AWS::CloudWatch::Alarm</a> or <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudwatch-compositealarm.html">AWS::CloudWatch::CompositeAlarm</a> resource types.</p>
    #   @return [String]
    class RollbackTrigger < Struct.new(
      nil,
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that is used to specify which resource types to scan.</p>
    # @!attribute types
    #   <p>An array of strings where each string represents an Amazon Web Services resource type you want to scan.
    #      Each string defines the resource type using the format
    #       <code>AWS::ServiceName::ResourceType</code>, for example, <code>AWS::DynamoDB::Table</code>. For
    #      the full list of supported resource types, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #       support</a> table in the <i>CloudFormation User Guide</i>.</p>
    #            <p>To scan all resource types within a service, you can use a wildcard, represented by an
    #      asterisk (<code>*</code>). You can place an asterisk at only the end of the string, for example,
    #       <code>AWS::S3::*</code>.</p>
    #   @return [Array<String>]
    class ScanFilter < Struct.new(
      nil,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A scanned resource returned by <code>ListResourceScanResources</code> or
    #     <code>ListResourceScanRelatedResources</code>.</p>
    # @!attribute resource_type
    #   <p>The type of the resource, such as <code>AWS::DynamoDB::Table</code>. For the list of
    #      supported resources, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #       support for imports and drift detection</a> In the
    #      <i>CloudFormation User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A list of up to 256 key-value pairs that identifies for the scanned resource. The key is the
    #      name of one of the primary identifiers for the resource. (Primary identifiers are specified in
    #      the <code>primaryIdentifier</code> list in the resource schema.) The value is the value of that
    #      primary identifier. For example, for a <code>AWS::DynamoDB::Table</code> resource, the primary
    #      identifiers is <code>TableName</code> so the key-value pair could be <code>"TableName":
    #       "MyDDBTable"</code>. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier">primaryIdentifier</a> in the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute managed_by_stack
    #   <p>If <code>true</code>, the resource is managed by a CloudFormation stack.</p>
    #   @return [Boolean]
    class ScannedResource < Struct.new(
      nil,
      :resource_type,
      :resource_identifier,
      :managed_by_stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a scanned resource. This is used with the
    #     <code>ListResourceScanRelatedResources</code> API action.</p>
    # @!attribute resource_type
    #   <p>The type of the resource, such as <code>AWS::DynamoDB::Table</code>. For the list of
    #      supported resources, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #       support for imports and drift detection</a> In the
    #      <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A list of up to 256 key-value pairs that identifies the scanned resource. The key is the
    #      name of one of the primary identifiers for the resource. (Primary identifiers are specified in
    #      the <code>primaryIdentifier</code> list in the resource schema.) The value is the value of that
    #      primary identifier. For example, for a <code>AWS::DynamoDB::Table</code> resource, the primary
    #      identifiers is <code>TableName</code> so the key-value pair could be <code>"TableName":
    #       "MyDDBTable"</code>. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier">primaryIdentifier</a> in the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class ScannedResourceIdentifier < Struct.new(
      nil,
      :resource_type,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>SetStackPolicy</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or unique stack ID that you want to associate a policy with.</p>
    #   @return [String]
    # @!attribute stack_policy_body
    #   <p>Structure that contains the stack policy body. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html">Prevent updates to stack resources</a> in the <i>CloudFormation User Guide</i>.
    #         You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    #   @return [String]
    # @!attribute stack_policy_url
    #   <p>Location of a file that contains the stack policy. The URL must point to a policy (maximum
    #         size: 16 KB) located in an Amazon S3 bucket in the same Amazon Web Services Region as the stack. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    #   @return [String]
    class SetStackPolicyInput < Struct.new(
      nil,
      :stack_name,
      :stack_policy_body,
      :stack_policy_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) for the extension in this account and Region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a> API operation in this account and Region. For private extensions, this
    #         will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a> API
    #         operation in this account and Region.</p>
    #            <p>Do not include the extension versions suffix at the end of the ARN. You can set the
    #         configuration for an extension, but not for a specific extension version.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration data for the extension in this account and Region.</p>
    #            <p>The configuration data must be formatted as JSON and validate against the extension's
    #         schema returned in the <code>Schema</code> response element of <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>.</p>
    #   @return [String]
    # @!attribute configuration_alias
    #   <p>An alias by which to refer to this extension configuration data.</p>
    #            <p>Conditional: Specifying a configuration alias is required when setting a configuration for
    #         a resource type extension.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #           <code>TypeName</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #           <code>TypeName</code>.</p>
    #   @return [String]
    class SetTypeConfigurationInput < Struct.new(
      nil,
      :type_arn,
      :configuration,
      :configuration_alias,
      :type_name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the configuration data in this account and
    #         Region.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #           <code>TypeName</code>.</p>
    #   @return [String]
    class SetTypeConfigurationOutput < Struct.new(
      nil,
      :configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #         information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #         the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    #   @return [String]
    class SetTypeDefaultVersionInput < Struct.new(
      nil,
      :arn,
      :type,
      :type_name,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SetTypeDefaultVersionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the <a>SignalResource</a> action.</p>
    # @!attribute stack_name
    #   <p>The stack name or unique stack ID that includes the resource that you want to
    #         signal.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical ID of the resource that you want to signal. The logical ID is the name of the
    #         resource that given in the template.</p>
    #   @return [String]
    # @!attribute unique_id
    #   <p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the
    #         instance ID that you are signaling as the unique ID. If you send multiple signals to a single
    #         resource (such as signaling a wait condition), each signal requires a different unique
    #         ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the signal, which is either success or failure. A failure signal causes
    #         CloudFormation to immediately fail the stack creation or update.</p>
    #   @return [String]
    class SignalResourceInput < Struct.new(
      nil,
      :stack_name,
      :logical_resource_id,
      :unique_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Stack data type.</p>
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>The unique ID of the change set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-defined description associated with the stack.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute creation_time
    #   <p>The time at which the stack was created.</p>
    #   @return [Time]
    # @!attribute deletion_time
    #   <p>The time the stack was deleted.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the stack was last updated. This field will only be returned if the stack has been
    #      updated at least once.</p>
    #   @return [Time]
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #      operations, and for the specified monitoring period afterwards.</p>
    #   @return [Types::RollbackConfiguration]
    # @!attribute stack_status
    #   <p>Current status of the stack.</p>
    #   @return [String]
    # @!attribute stack_status_reason
    #   <p>Success/failure message associated with the stack status.</p>
    #   @return [String]
    # @!attribute disable_rollback
    #   <p>Boolean to enable or disable rollback on stack creation failures:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: disable rollback.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: enable rollback.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute notification_ar_ns
    #   <p>Amazon SNS topic Amazon Resource Names (ARNs) to which stack related events are published.</p>
    #   @return [Array<String>]
    # @!attribute timeout_in_minutes
    #   <p>The amount of time within which stack creation should complete.</p>
    #   @return [Integer]
    # @!attribute capabilities
    #   <p>The capabilities allowed in the stack.</p>
    #   @return [Array<String>]
    # @!attribute outputs
    #   <p>A list of output structures.</p>
    #   @return [Array<Types::Output>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that's associated with the stack. During a
    #      stack operation, CloudFormation uses this role's credentials to make calls on your behalf.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code>s that specify information about the stack.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute enable_termination_protection
    #   <p>Whether termination protection is enabled for the stack.</p>
    #            <p>For <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #      termination protection is set on the root stack and can't be changed directly on the nested
    #      stack. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protect a CloudFormation
    #       stack from being deleted</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute parent_id
    #   <p>For nested stacks, the stack ID of the direct parent of this stack. For the first level of
    #      nested stacks, the root stack is also the parent stack.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Nested stacks</a> in
    #      the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute root_id
    #   <p>For nested stacks, the stack ID of the top-level stack to which the nested stack ultimately
    #      belongs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Nested stacks</a> in
    #      the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute drift_information
    #   <p>Information about whether a stack's actual configuration differs, or has
    #       <i>drifted</i>, from its expected configuration, as defined in the stack template
    #      and any values specified as template parameters. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect
    #       unmanaged configuration changes to stacks and resources with drift detection</a>.</p>
    #   @return [Types::StackDriftInformation]
    # @!attribute retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation rolls
    #      back. This includes newly created resources marked with a deletion policy of
    #      <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute deletion_mode
    #   <p>Specifies the deletion mode for the stack. Possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code> - Use the standard behavior. Specifying this value is the same as
    #        not specifying this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_DELETE_STACK</code> - Delete the stack if it's stuck in a
    #         <code>DELETE_FAILED</code> state due to resource deletion failure.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute detailed_status
    #   <p>The detailed status of the resource or stack. If <code>CONFIGURATION_COMPLETE</code> is
    #      present, the resource or resource configuration phase has completed and the stabilization of the
    #      resources is in progress. The StackSets <code>CONFIGURATION_COMPLETE</code> when all of the
    #      resources in the stack have reached that event. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html">Understand
    #       CloudFormation stack creation events</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    class Stack < Struct.new(
      nil,
      :stack_id,
      :stack_name,
      :change_set_id,
      :description,
      :parameters,
      :creation_time,
      :deletion_time,
      :last_updated_time,
      :rollback_configuration,
      :stack_status,
      :stack_status_reason,
      :disable_rollback,
      :notification_ar_ns,
      :timeout_in_minutes,
      :capabilities,
      :outputs,
      :role_arn,
      :tags,
      :enable_termination_protection,
      :parent_id,
      :root_id,
      :drift_information,
      :retain_except_on_create,
      :deletion_mode,
      :detailed_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the stack and the template used by the stack.</p>
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The file path for the stack template file.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The desired final state of the stack template.</p>
    #   @return [String]
    class StackDefinition < Struct.new(
      nil,
      :stack_name,
      :template_body,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about whether the stack's actual configuration differs, or has
    #     <i>drifted</i>, from its expected configuration, as defined in the stack template
    #    and any values specified as template parameters. A stack is considered to have drifted if one or
    #    more of its resources have drifted.</p>
    # @!attribute stack_drift_status
    #   <p>Status of the stack's actual configuration compared to its expected template
    #      configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from its expected template configuration. A stack
    #        is considered to have drifted if one or more of its resources have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack differs from its expected
    #        template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack's actual configuration matches its expected template
    #        configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: CloudFormation could not run drift detection for a resource in the
    #        stack.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_check_timestamp
    #   <p>Most recent time when a drift detection operation was initiated on the stack, or any of its
    #      individual resources that support drift detection.</p>
    #   @return [Time]
    class StackDriftInformation < Struct.new(
      nil,
      :stack_drift_status,
      :last_check_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about whether the stack's actual configuration differs, or has
    #     <i>drifted</i>, from its expected configuration, as defined in the stack template
    #    and any values specified as template parameters. A stack is considered to have drifted if one or
    #    more of its resources have drifted.</p>
    # @!attribute stack_drift_status
    #   <p>Status of the stack's actual configuration compared to its expected template
    #      configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from its expected template configuration. A stack
    #        is considered to have drifted if one or more of its resources have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack differs from its expected
    #        template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack's actual configuration matches its expected template
    #        configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: CloudFormation could not run drift detection for a resource in the
    #        stack.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_check_timestamp
    #   <p>Most recent time when a drift detection operation was initiated on the stack, or any of its
    #      individual resources that support drift detection.</p>
    #   @return [Time]
    class StackDriftInformationSummary < Struct.new(
      nil,
      :stack_drift_status,
      :last_check_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The StackEvent data type.</p>
    # @!attribute stack_id
    #   <p>The unique ID name of the instance of the stack.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The unique identifier of this event.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name associated with a stack.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier associated with the physical instance of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>Time the status was updated.</p>
    #   @return [Time]
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #   @return [String]
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #   @return [String]
    # @!attribute resource_properties
    #   <p>BLOB of the properties used to create the resource.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The token passed to the operation that generated this event.</p>
    #            <p>All events triggered by a given stack operation are assigned the same client request token,
    #      which you can use to track operations. For example, if you execute a <code>CreateStack</code>
    #      operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by
    #      that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #      operations that are initiated from the console use the token format
    #       <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #      operation . For example, if you create a stack using the console, each stack event would be
    #      assigned the same token in the following format:
    #       <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #   @return [String]
    # @!attribute hook_type
    #   <p>The name of the Hook.</p>
    #   @return [String]
    # @!attribute hook_status
    #   <p>Provides the status of the change set Hook.</p>
    #   @return [String]
    # @!attribute hook_status_reason
    #   <p>Provides the reason for the Hook status.</p>
    #   @return [String]
    # @!attribute hook_invocation_point
    #   <p>The specific point in the provisioning process where the Hook is invoked.</p>
    #   @return [String]
    # @!attribute hook_invocation_id
    #   <p>The unique identifier of the Hook invocation.</p>
    #   @return [String]
    # @!attribute hook_failure_mode
    #   <p>Specify the Hook failure mode for non-compliant resources in the followings
    #      ways.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code> Stops provisioning resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN</code> Allows provisioning to continue with a warning message.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute detailed_status
    #   <p>An optional field that contains information about the detailed status of the stack
    #      event.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONFIGURATION_COMPLETE</code> - all of the resources in the stack have reached that
    #        event. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html">Understand
    #         CloudFormation stack creation events</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VALIDATION_FAILED</code> - template validation failed because of invalid properties
    #        in the template. The <code>ResourceStatusReason</code> field shows what properties are defined
    #        incorrectly.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StackEvent < Struct.new(
      nil,
      :stack_id,
      :event_id,
      :stack_name,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :timestamp,
      :resource_status,
      :resource_status_reason,
      :resource_properties,
      :client_request_token,
      :hook_type,
      :hook_status,
      :hook_status_reason,
      :hook_invocation_point,
      :hook_invocation_id,
      :hook_failure_mode,
      :detailed_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudFormation stack, in a specific account and Region, that's part of a StackSet operation. A
    #    stack instance is a reference to an attempted or actual stack in a given account within a given
    #    Region. A stack instance can exist without a stack—for example, if the stack couldn't be created
    #    for some reason. A stack instance is associated with only one StackSet. Each stack instance
    #    contains the ID of its associated StackSet, in addition to the ID of the actual stack and the
    #    stack status.</p>
    # @!attribute stack_set_id
    #   <p>The name or unique ID of the StackSet that the stack instance is associated with.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region that the stack instance is associated with.</p>
    #   @return [String]
    # @!attribute account
    #   <p>[Self-managed permissions] The name of the Amazon Web Services account that the stack instance is
    #      associated with.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The ID of the stack instance.</p>
    #   @return [String]
    # @!attribute parameter_overrides
    #   <p>A list of parameters from the StackSet template whose values have been overridden in this
    #      stack instance.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute status
    #   <p>The status of the stack instance, in terms of its synchronization with its associated stack
    #      set.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left
    #        the stack in an unstable state. Stacks in this state are excluded from further
    #         <code>UpdateStackSet</code> operations. You might need to perform a
    #         <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
    #         <code>true</code>, to delete the stack instance, and then delete the stack manually.
    #        <code>INOPERABLE</code> can be returned here when the cause is a failed import. If it's due to
    #        a failed import, the operation can be retried once the failures are fixed. To see if this is
    #        due to a failed import, look at the <code>DetailedStatus</code> member in the
    #         <code>StackInstanceSummary</code> member that is a peer to this <code>Status</code>
    #        member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTDATED</code>: The stack isn't currently up to date with the StackSet
    #        because:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The associated stack failed during a <code>CreateStackSet</code> or
    #           <code>UpdateStackSet</code> operation.</p>
    #                     </li>
    #                     <li>
    #                        <p>The stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code>
    #          operation that failed or was stopped before the stack was created or updated.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CURRENT</code>: The stack is currently up to date with the StackSet.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stack_instance_status
    #   <p>The detailed status of the stack instance.</p>
    #   @return [Types::StackInstanceComprehensiveStatus]
    # @!attribute status_reason
    #   <p>The explanation for the specific status code that's assigned to this stack instance.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that
    #      you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #   @return [String]
    # @!attribute drift_status
    #   <p>Status of the stack instance's actual configuration compared to the expected template and
    #      parameter configuration of the StackSet it belongs to.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from the expected template and parameter
    #        configuration of the StackSet it belongs to. A stack instance is considered to have drifted if
    #        one or more of the resources in the associated stack have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack instance differs from its
    #        expected StackSet configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack instance's actual configuration matches its expected
    #        StackSset configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on the stack
    #      instance. This value will be <code>NULL</code> for any stack instance that drift detection hasn't
    #      yet been performed on.</p>
    #   @return [Time]
    # @!attribute last_operation_id
    #   <p>The last unique ID of a StackSet operation performed on a stack instance.</p>
    #   @return [String]
    class StackInstance < Struct.new(
      nil,
      :stack_set_id,
      :region,
      :account,
      :stack_id,
      :parameter_overrides,
      :status,
      :stack_instance_status,
      :status_reason,
      :organizational_unit_id,
      :drift_status,
      :last_drift_check_timestamp,
      :last_operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed status of the stack instance.</p>
    # @!attribute detailed_status
    #   <ul>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code>: The operation in the specified account and Region has been
    #        canceled. This is either because a user has stopped the StackSet operation, or because the
    #        failure tolerance of the StackSet operation has been exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation in the specified account and Region failed. If the
    #        StackSet operation fails in enough accounts within a Region, the failure tolerance for the
    #        StackSet operation as a whole might be exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED_IMPORT</code>: The import of the stack instance in the specified account and
    #        Region failed and left the stack in an unstable state. Once the issues causing the failure are
    #        fixed, the import operation can be retried. If enough StackSet operations fail in enough
    #        accounts within a Region, the failure tolerance for the StackSet operation as a whole might be
    #        exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left
    #        the stack in an unstable state. Stacks in this state are excluded from further
    #         <code>UpdateStackSet</code> operations. You might need to perform a
    #         <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
    #         <code>true</code>, to delete the stack instance, and then delete the stack manually.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The operation in the specified account and Region has yet to
    #        start.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation in the specified account and Region is currently in
    #        progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED_SUSPENDED_ACCOUNT</code>: The operation in the specified account and Region
    #        has been skipped because the account was suspended at the time of the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation in the specified account and Region completed
    #        successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StackInstanceComprehensiveStatus < Struct.new(
      nil,
      :detailed_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter to apply to stack instances</p>
    # @!attribute name
    #   <p>The type of filter to apply.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The status to filter by.</p>
    #   @return [String]
    class StackInstanceFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified stack instance doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class StackInstanceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure containing summary information about resource drifts for a stack
    #    instance.</p>
    # @!attribute stack_id
    #   <p>The ID of the stack instance.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #      supported by CloudFormation.</p>
    #   @return [String]
    # @!attribute physical_resource_id_context
    #   <p>Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses
    #      context key-value pairs in cases where a resource's logical and physical IDs aren't enough to
    #      uniquely identify that resource. Each context key-value pair specifies a unique resource that
    #      contains the targeted resource.</p>
    #   @return [Array<Types::PhysicalResourceIdContextKeyValuePair>]
    # @!attribute resource_type
    #   <p>Type of resource. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_differences
    #   <p>Status of the actual configuration of the resource compared to its expected configuration.
    #      These will be present only for resources whose <code>StackInstanceResourceDriftStatus</code> is
    #       <code>MODIFIED</code>. </p>
    #   @return [Array<Types::PropertyDifference>]
    # @!attribute stack_resource_drift_status
    #   <p>The drift status of the resource in a stack instance.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template configuration in
    #        that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected template
    #        values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected template
    #        configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute timestamp
    #   <p>Time at which the stack instance drift detection operation was initiated.</p>
    #   @return [Time]
    class StackInstanceResourceDriftsSummary < Struct.new(
      nil,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :physical_resource_id_context,
      :resource_type,
      :property_differences,
      :stack_resource_drift_status,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains summary information about a stack instance.</p>
    # @!attribute stack_set_id
    #   <p>The name or unique ID of the StackSet that the stack instance is associated with.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region that the stack instance is associated with.</p>
    #   @return [String]
    # @!attribute account
    #   <p>[Self-managed permissions] The name of the Amazon Web Services account that the stack instance is
    #      associated with.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The ID of the stack instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the stack instance, in terms of its synchronization with its associated stack
    #      set.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left
    #        the stack in an unstable state. Stacks in this state are excluded from further
    #         <code>UpdateStackSet</code> operations. You might need to perform a
    #         <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
    #         <code>true</code>, to delete the stack instance, and then delete the stack manually.
    #        <code>INOPERABLE</code> can be returned here when the cause is a failed import. If it's due to
    #        a failed import, the operation can be retried once the failures are fixed. To see if this is
    #        due to a failed import, call the <a>DescribeStackInstance</a> API operation, look at
    #        the <code>DetailedStatus</code> member returned in the <code>StackInstanceSummary</code>
    #        member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTDATED</code>: The stack isn't currently up to date with the StackSet
    #        because:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The associated stack failed during a <code>CreateStackSet</code> or
    #           <code>UpdateStackSet</code> operation.</p>
    #                     </li>
    #                     <li>
    #                        <p>The stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code>
    #          operation that failed or was stopped before the stack was created or updated.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CURRENT</code>: The stack is currently up to date with the StackSet.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The explanation for the specific status code assigned to this stack instance.</p>
    #   @return [String]
    # @!attribute stack_instance_status
    #   <p>The detailed status of the stack instance.</p>
    #   @return [Types::StackInstanceComprehensiveStatus]
    # @!attribute organizational_unit_id
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that
    #      you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #   @return [String]
    # @!attribute drift_status
    #   <p>Status of the stack instance's actual configuration compared to the expected template and
    #      parameter configuration of the StackSet it belongs to.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from the expected template and parameter
    #        configuration of the StackSet it belongs to. A stack instance is considered to have drifted if
    #        one or more of the resources in the associated stack have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack instance differs from its
    #        expected StackSet configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack instance's actual configuration matches its expected
    #        StackSet configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on the stack
    #      instance. This value will be <code>NULL</code> for any stack instance that drift detection hasn't
    #      yet been performed on.</p>
    #   @return [Time]
    # @!attribute last_operation_id
    #   <p>The last unique ID of a StackSet operation performed on a stack instance.</p>
    #   @return [String]
    class StackInstanceSummary < Struct.new(
      nil,
      :stack_set_id,
      :region,
      :account,
      :stack_id,
      :status,
      :status_reason,
      :stack_instance_status,
      :organizational_unit_id,
      :drift_status,
      :last_drift_check_timestamp,
      :last_operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified stack ARN doesn't exist or stack doesn't exist corresponding to the ARN in input.</p>
    # @!attribute message
    #   @return [String]
    class StackNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the stack and the action that CloudFormation will perform on it if you execute the
    #    stack refactor.</p>
    # @!attribute action
    #   <p>The action that CloudFormation takes on the stack.</p>
    #   @return [String]
    # @!attribute entity
    #   <p>The type that will be evaluated in the <code>StackRefactorAction</code>. The following are
    #      potential <code>Entity</code> types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Stack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Resource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier associated with the physical instance of the resource.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A key-value pair that identifies the target resource. The key is an identifier property (for
    #      example, <code>BucketName</code> for <code>AWS::S3::Bucket</code> resources) and the value is the
    #      actual property value (for example, <code>MyS3Bucket</code>).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description to help you identify the refactor.</p>
    #   @return [String]
    # @!attribute detection
    #   <p>The detection type is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto: CloudFormation figured out the mapping on its own.</p>
    #               </li>
    #               <li>
    #                  <p>Manual: The customer provided the mapping in the <code>ResourceMapping</code>
    #        parameter.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute detection_reason
    #   <p>The description of the detection type.</p>
    #   @return [String]
    # @!attribute tag_resources
    #   <p>Assigns one or more tags to specified resources.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute untag_resources
    #   <p>Removes one or more tags to specified resources.</p>
    #   @return [Array<String>]
    # @!attribute resource_mapping
    #   <p>The mapping for the stack resource <code>Source</code> and stack resource
    #       <code>Destination</code>.</p>
    #   @return [Types::ResourceMapping]
    class StackRefactorAction < Struct.new(
      nil,
      :action,
      :entity,
      :physical_resource_id,
      :resource_identifier,
      :description,
      :detection,
      :detection_reason,
      :tag_resources,
      :untag_resources,
      :resource_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified stack refactor can't be found.</p>
    # @!attribute message
    #   @return [String]
    class StackRefactorNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a stack refactor operation.</p>
    # @!attribute stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description to help you identify the refactor.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The operation status that's provided after calling the <a>ExecuteStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute execution_status_reason
    #   <p>A detailed explanation for the stack refactor <code>ExecutionStatus</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The stack refactor operation status that's provided after calling the <a>CreateStackRefactor</a> action.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A detailed explanation for the stack refactor <code>Status</code>.</p>
    #   @return [String]
    class StackRefactorSummary < Struct.new(
      nil,
      :stack_refactor_id,
      :description,
      :execution_status,
      :execution_status_reason,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The StackResource data type.</p>
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #      supported by CloudFormation.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>Time the status was updated.</p>
    #   @return [Time]
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #   @return [String]
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>User defined description associated with the resource.</p>
    #   @return [String]
    # @!attribute drift_information
    #   <p>Information about whether the resource's actual configuration differs, or has
    #       <i>drifted</i>, from its expected configuration, as defined in the stack template
    #      and any values specified as template parameters. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect
    #       unmanaged configuration changes to stacks and resources with drift detection</a>.</p>
    #   @return [Types::StackResourceDriftInformation]
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the resource
    #      was created from a module included in the stack template.</p>
    #   @return [Types::ModuleInfo]
    class StackResource < Struct.new(
      nil,
      :stack_name,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :timestamp,
      :resource_status,
      :resource_status_reason,
      :description,
      :drift_information,
      :module_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about the specified stack resource.</p>
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #      supported by CloudFormation.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>Time the status was updated.</p>
    #   @return [Time]
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #   @return [String]
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>User defined description associated with the resource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The content of the <code>Metadata</code> attribute declared for the resource. For more
    #      information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html">Metadata attribute</a>
    #      in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute drift_information
    #   <p>Information about whether the resource's actual configuration differs, or has
    #       <i>drifted</i>, from its expected configuration, as defined in the stack template
    #      and any values specified as template parameters. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect
    #       unmanaged configuration changes to stacks and resources with drift detection</a>.</p>
    #   @return [Types::StackResourceDriftInformation]
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the resource
    #      was created from a module included in the stack template.</p>
    #   @return [Types::ModuleInfo]
    class StackResourceDetail < Struct.new(
      nil,
      :stack_name,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason,
      :description,
      :metadata,
      :drift_information,
      :module_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the drift information for a resource that has been checked for drift. This includes
    #    actual and expected property values for resources in which CloudFormation has detected drift. Only
    #    resource properties explicitly defined in the stack template are checked for drift. For more
    #    information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect unmanaged
    #     configuration changes to stacks and resources with drift detection</a>.</p>
    #          <p>Resources that don't currently support drift detection can't be checked. For a list of
    #    resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource type
    #     support for imports and drift detection</a>.</p>
    #          <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual resources, or
    #     <a>DetectStackDrift</a> to detect drift on all resources in a given stack that
    #    support drift detection.</p>
    # @!attribute stack_id
    #   <p>The ID of the stack.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #      supported by CloudFormation.</p>
    #   @return [String]
    # @!attribute physical_resource_id_context
    #   <p>Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses
    #      context key-value pairs in cases where a resource's logical and physical IDs aren't enough to
    #      uniquely identify that resource. Each context key-value pair specifies a unique resource that
    #      contains the targeted resource.</p>
    #   @return [Array<Types::PhysicalResourceIdContextKeyValuePair>]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute expected_properties
    #   <p>A JSON structure that contains the expected property values of the stack resource, as
    #      defined in the stack template and any values specified as template parameters.</p>
    #            <p>For resources whose <code>StackResourceDriftStatus</code> is <code>DELETED</code>, this
    #      structure will not be present.</p>
    #   @return [String]
    # @!attribute actual_properties
    #   <p>A JSON structure that contains the actual property values of the stack resource.</p>
    #            <p>For resources whose <code>StackResourceDriftStatus</code> is <code>DELETED</code>, this
    #      structure will not be present.</p>
    #   @return [String]
    # @!attribute property_differences
    #   <p>A collection of the resource properties whose actual values differ from their expected
    #      values. These will be present only for resources whose <code>StackResourceDriftStatus</code> is
    #       <code>MODIFIED</code>.</p>
    #   @return [Array<Types::PropertyDifference>]
    # @!attribute stack_resource_drift_status
    #   <p>Status of the resource's actual configuration compared to its expected configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template configuration
    #        because the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected values
    #        (as defined in the stack template and any values specified as template parameters).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected template
    #        configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation does not currently return this value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: CloudFormation could not run drift detection for the resource. See the
    #         <code>DriftStatusReason</code> for details.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute timestamp
    #   <p>Time at which CloudFormation performed drift detection on the stack resource.</p>
    #   @return [Time]
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the resource
    #      was created from a module included in the stack template.</p>
    #   @return [Types::ModuleInfo]
    # @!attribute drift_status_reason
    #   <p>The reason for the drift status. </p>
    #   @return [String]
    class StackResourceDrift < Struct.new(
      nil,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :physical_resource_id_context,
      :resource_type,
      :expected_properties,
      :actual_properties,
      :property_differences,
      :stack_resource_drift_status,
      :timestamp,
      :module_info,
      :drift_status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about whether the resource's actual configuration differs, or has
    #     <i>drifted</i>, from its expected configuration.</p>
    # @!attribute stack_resource_drift_status
    #   <p>Status of the resource's actual configuration compared to its expected configuration</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected configuration in that it has
    #        been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: The resource differs from its expected configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation has not checked if the resource differs from its
    #        expected configuration.</p>
    #                  <p>Any resources that do not currently support drift detection have a status of
    #         <code>NOT_CHECKED</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource
    #         type support for imports and drift detection</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #        configuration.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_check_timestamp
    #   <p>When CloudFormation last checked if the resource had drifted from its expected
    #      configuration.</p>
    #   @return [Time]
    class StackResourceDriftInformation < Struct.new(
      nil,
      :stack_resource_drift_status,
      :last_check_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes information about whether the resource's actual configuration differs, or has
    #     <i>drifted</i>, from its expected configuration.</p>
    # @!attribute stack_resource_drift_status
    #   <p>Status of the resource's actual configuration compared to its expected configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected configuration in that it has
    #        been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: The resource differs from its expected configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the resource differs from its
    #        expected configuration.</p>
    #                  <p>Any resources that don't currently support drift detection have a status of
    #         <code>NOT_CHECKED</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource
    #         type support for imports and drift detection</a>. If you performed an <a>ContinueUpdateRollback</a> operation on a stack, any resources included in
    #         <code>ResourcesToSkip</code> will also have a status of <code>NOT_CHECKED</code>. For more
    #        information about skipping resources during rollback operations, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html">Continue rolling back an update</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #        configuration.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_check_timestamp
    #   <p>When CloudFormation last checked if the resource had drifted from its expected
    #      configuration.</p>
    #   @return [Time]
    class StackResourceDriftInformationSummary < Struct.new(
      nil,
      :stack_resource_drift_status,
      :last_check_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains high-level information about the specified stack resource.</p>
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of the
    #      resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource. (For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>.)</p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>Time the status was updated.</p>
    #   @return [Time]
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #   @return [String]
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #   @return [String]
    # @!attribute drift_information
    #   <p>Information about whether the resource's actual configuration differs, or has
    #       <i>drifted</i>, from its expected configuration, as defined in the stack template
    #      and any values specified as template parameters. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect
    #       unmanaged configuration changes to stacks and resources with drift detection</a>.</p>
    #   @return [Types::StackResourceDriftInformationSummary]
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the resource
    #      was created from a module included in the stack template.</p>
    #   @return [Types::ModuleInfo]
    class StackResourceSummary < Struct.new(
      nil,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason,
      :drift_information,
      :module_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a StackSet. With StackSets, you can provision
    #    stacks across Amazon Web Services accounts and Regions from a single CloudFormation template. Each stack is based
    #    on the same CloudFormation template, but you can customize individual stacks using parameters.</p>
    # @!attribute stack_set_name
    #   <p>The name that's associated with the StackSet.</p>
    #   @return [String]
    # @!attribute stack_set_id
    #   <p>The ID of the StackSet.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the StackSet that you specify when the StackSet is created or
    #      updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the StackSet.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The structure that contains the body of the template that was used to create or update the
    #      StackSet.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of input parameters for a StackSet.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute capabilities
    #   <p>The capabilities that are allowed in the StackSet. Some StackSet templates might include
    #      resources that can affect permissions in your Amazon Web Services account—for example, by creating new
    #      Identity and Access Management (IAM) users. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags that specify information about the StackSet. A maximum number of 50 tags can
    #      be specified.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute stack_set_arn
    #   <p>The Amazon Resource Name (ARN) of the StackSet.</p>
    #   @return [String]
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to create or update the stack
    #      set.</p>
    #            <p>Use customized administrator roles to control which users or groups can manage specific
    #      StackSets within the same administrator account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites for using CloudFormation StackSets</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role used to create or update the StackSet.</p>
    #            <p>Use customized execution roles to control which stack resources users and groups can include
    #      in their StackSets.</p>
    #   @return [String]
    # @!attribute stack_set_drift_detection_details
    #   <p>Detailed information about the drift status of the StackSet.</p>
    #            <p>For StackSets, contains information about the last <i>completed</i> drift
    #      operation performed on the StackSet. Information about drift operations currently in progress
    #      isn't included.</p>
    #   @return [Types::StackSetDriftDetectionDetails]
    # @!attribute auto_deployment
    #   <p>Describes whether StackSets automatically deploys to Organizations accounts that are
    #      added to a target organization or organizational unit (OU). Valid only if the StackSet uses
    #      service-managed permissions.</p>
    #   @return [Types::AutoDeployment]
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for StackSet operations are created.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #        execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #         self-managed permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM
    #        roles required to deploy to accounts managed by Organizations. For more information,
    #        see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html">Activate
    #         trusted access for StackSets with Organizations</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute organizational_unit_ids
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that
    #      you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #   @return [Array<String>]
    # @!attribute managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #      conflicting operations.</p>
    #   @return [Types::ManagedExecution]
    # @!attribute regions
    #   <p>Returns a list of all Amazon Web Services Regions the given StackSet has stack instances deployed in. The
    #      Amazon Web Services Regions list output is in no particular order.</p>
    #   @return [Array<String>]
    class StackSet < Struct.new(
      nil,
      :stack_set_name,
      :stack_set_id,
      :description,
      :status,
      :template_body,
      :parameters,
      :capabilities,
      :tags,
      :stack_set_arn,
      :administration_role_arn,
      :execution_role_name,
      :stack_set_drift_detection_details,
      :auto_deployment,
      :permission_model,
      :organizational_unit_ids,
      :managed_execution,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the targets for the StackSet. Returned by the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListStackSetAutoDeploymentTargets.html">ListStackSetAutoDeploymentTargets</a> API operation.</p>
    # @!attribute organizational_unit_id
    #   <p>The organization root ID or organizational unit (OU) IDs where the StackSet is
    #      targeted.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The list of Regions targeted for this organization or OU.</p>
    #   @return [Array<String>]
    class StackSetAutoDeploymentTargetSummary < Struct.new(
      nil,
      :organizational_unit_id,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the drift status of the StackSet.</p>
    #          <p>For StackSets, contains information about the last <i>completed</i> drift
    #    operation performed on the StackSet. Information about drift operations in-progress isn't
    #    included.</p>
    #          <p>For StackSet operations, includes information about drift operations currently being
    #    performed on the StackSet.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Performing drift detection on
    #     CloudFormation StackSets</a> in the <i>CloudFormation User Guide</i>.</p>
    # @!attribute drift_status
    #   <p>Status of the StackSet's actual configuration compared to its expected template and
    #      parameter configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: One or more of the stack instances belonging to the StackSet differs
    #        from the expected template and parameter configuration. A stack instance is considered to have
    #        drifted if one or more of the resources in the associated stack have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked the StackSet for drift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: All of the stack instances belonging to the StackSet stack match the
    #        expected template and parameter configuration.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute drift_detection_status
    #   <p>The status of the StackSet drift detection operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The drift detection operation completed without failing on any
    #        stack instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The drift detection operation exceeded the specified failure
    #        tolerance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL_SUCCESS</code>: The drift detection operation completed without exceeding
    #        the failure tolerance for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The drift detection operation is currently being
    #        performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The user has canceled the drift detection operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on the StackSet. This
    #      value will be <code>NULL</code> for any StackSet that drift detection hasn't yet been performed
    #      on.</p>
    #   @return [Time]
    # @!attribute total_stack_instances_count
    #   <p>The total number of stack instances belonging to this StackSet.</p>
    #            <p>The total number of stack instances is equal to the total of:</p>
    #            <ul>
    #               <li>
    #                  <p>Stack instances that match the StackSet configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Stack instances that have drifted from the StackSet configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Stack instances where the drift detection operation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>Stack instances currently being checked for drift.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute drifted_stack_instances_count
    #   <p>The number of stack instances that have drifted from the expected template and parameter
    #      configuration of the StackSet. A stack instance is considered to have drifted if one or more of
    #      the resources in the associated stack don't match their expected configuration.</p>
    #   @return [Integer]
    # @!attribute in_sync_stack_instances_count
    #   <p>The number of stack instances which match the expected template and parameter configuration
    #      of the StackSet.</p>
    #   @return [Integer]
    # @!attribute in_progress_stack_instances_count
    #   <p>The number of stack instances that are currently being checked for drift.</p>
    #   @return [Integer]
    # @!attribute failed_stack_instances_count
    #   <p>The number of stack instances for which the drift detection operation failed.</p>
    #   @return [Integer]
    class StackSetDriftDetectionDetails < Struct.new(
      nil,
      :drift_status,
      :drift_detection_status,
      :last_drift_check_timestamp,
      :total_stack_instances_count,
      :drifted_stack_instances_count,
      :in_sync_stack_instances_count,
      :in_progress_stack_instances_count,
      :failed_stack_instances_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't yet delete this StackSet, because it still contains one or more stack instances. Delete all stack
    #    instances from the StackSet before deleting the StackSet.</p>
    # @!attribute message
    #   @return [String]
    class StackSetNotEmptyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified StackSet doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class StackSetNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains information about a StackSet operation.</p>
    # @!attribute operation_id
    #   <p>The unique ID of a StackSet operation.</p>
    #   @return [String]
    # @!attribute stack_set_id
    #   <p>The ID of the StackSet.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The type of StackSet operation: <code>CREATE</code>, <code>UPDATE</code>, or
    #       <code>DELETE</code>. Create and delete operations affect only the specified stack instances that
    #      are associated with the specified StackSet. Update operations affect both the StackSet itself, in
    #      addition to <i>all</i> associated stack instances.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation exceeded the specified failure tolerance. The failure
    #        tolerance value that you've set for an operation is applied for each Region during stack create
    #        and update operations. If the number of failed stacks within a Region exceeds the failure
    #        tolerance, the status of the operation in the Region is set to <code>FAILED</code>. This in
    #        turn sets the status of the operation as a whole to <code>FAILED</code>, and CloudFormation cancels
    #        the operation in any remaining Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUED</code>: [Service-managed permissions] For automatic deployments that require
    #        a sequence of operations, the operation is queued to be performed. For more information, see
    #        the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes">StackSets status codes</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation is currently being performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The user has canceled the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: The operation is in the process of stopping, at user
    #        request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation completed creating or updating all the specified
    #        stacks without exceeding the failure tolerance for the operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operation_preferences
    #   <p>The preferences for how CloudFormation performs this StackSet operation.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute retain_stacks
    #   <p>For StackSet operations of action type <code>DELETE</code>, specifies whether to remove the
    #      stack instances from the specified StackSet, but doesn't delete the stacks. You can't
    #      re-associate a retained stack, or add an existing, saved stack to a new StackSet.</p>
    #   @return [Boolean]
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to perform this StackSet
    #      operation.</p>
    #            <p>Use customized administrator roles to control which users or groups can manage specific
    #      StackSets within the same administrator account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant self-managed
    #       permissions</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role used to create or update the StackSet.</p>
    #            <p>Use customized execution roles to control which stack resources users and groups can include
    #      in their StackSets.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the operation was initiated. Note that the creation times for the stack
    #      set operation might differ from the creation time of the individual stacks themselves. This is
    #      because CloudFormation needs to perform preparatory work for the operation, such as dispatching the
    #      work to the requested Regions, before actually creating the first stacks.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The time at which the StackSet operation ended, across all accounts and Regions specified.
    #      Note that this doesn't necessarily mean that the StackSet operation was successful, or even
    #      attempted, in each account or Region.</p>
    #   @return [Time]
    # @!attribute deployment_targets
    #   <p>The Organizations accounts affected by the stack operation. Valid only if the
    #      StackSet uses service-managed permissions.</p>
    #   @return [Types::DeploymentTargets]
    # @!attribute stack_set_drift_detection_details
    #   <p>Detailed information about the drift status of the StackSet. This includes information about
    #      drift operations currently being performed on the StackSet.</p>
    #            <p>This information will only be present for StackSet operations whose <code>Action</code> type
    #      is <code>DETECT_DRIFT</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Performing drift detection on
    #       CloudFormation StackSets</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [Types::StackSetDriftDetectionDetails]
    # @!attribute status_reason
    #   <p>The status of the operation in details.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Detailed information about the StackSet operation.</p>
    #   @return [Types::StackSetOperationStatusDetails]
    class StackSetOperation < Struct.new(
      nil,
      :operation_id,
      :stack_set_id,
      :action,
      :status,
      :operation_preferences,
      :retain_stacks,
      :administration_role_arn,
      :execution_role_name,
      :creation_timestamp,
      :end_timestamp,
      :deployment_targets,
      :stack_set_drift_detection_details,
      :status_reason,
      :status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user-specified preferences for how CloudFormation performs a StackSet operation.</p>
    #          <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet
    #     operation options</a>.</p>
    #          <note>
    #             <p>
    #                <code>StackSetOperationPreferences</code> don't apply to <code>AutoDeployment</code>, even
    #     if it's enabled.</p>
    #          </note>
    # @!attribute region_concurrency_type
    #   <p>The concurrency type of deploying StackSets operations in Regions, could be in parallel or
    #      one Region at a time.</p>
    #   @return [String]
    # @!attribute region_order
    #   <p>The order of the Regions where you want to perform the stack operation.</p>
    #   @return [Array<String>]
    # @!attribute failure_tolerance_count
    #   <p>The number of accounts per Region this operation can fail in before CloudFormation stops the
    #      operation in that Region. If the operation is stopped in a Region, CloudFormation doesn't attempt the
    #      operation in any subsequent Regions.</p>
    #            <p>You can specify either <code>FailureToleranceCount</code> or
    #       <code>FailureTolerancePercentage</code>, but not both.</p>
    #            <p>By default, <code>0</code> is specified.</p>
    #   @return [Integer]
    # @!attribute failure_tolerance_percentage
    #   <p>The percentage of accounts per Region this stack operation can fail in before CloudFormation
    #      stops the operation in that Region. If the operation is stopped in a Region, CloudFormation doesn't
    #      attempt the operation in any subsequent Regions.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, CloudFormation rounds
    #       <i>down</i> to the next whole number.</p>
    #            <p>You can specify either <code>FailureToleranceCount</code> or
    #       <code>FailureTolerancePercentage</code>, but not both.</p>
    #            <p>By default, <code>0</code> is specified.</p>
    #   @return [Integer]
    # @!attribute max_concurrent_count
    #   <p>The maximum number of accounts in which to perform this operation at one time. This can
    #      depend on the value of <code>FailureToleranceCount</code> depending on your
    #       <code>ConcurrencyMode</code>. <code>MaxConcurrentCount</code> is at most one more than the
    #       <code>FailureToleranceCount</code> if you're using <code>STRICT_FAILURE_TOLERANCE</code>.</p>
    #            <p>Note that this setting lets you specify the <i>maximum</i> for operations. For
    #      large deployments, under certain circumstances the actual number of accounts acted upon
    #      concurrently may be lower due to service throttling.</p>
    #            <p>You can specify either <code>MaxConcurrentCount</code> or
    #       <code>MaxConcurrentPercentage</code>, but not both.</p>
    #            <p>By default, <code>1</code> is specified.</p>
    #   @return [Integer]
    # @!attribute max_concurrent_percentage
    #   <p>The maximum percentage of accounts in which to perform this operation at one time.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, CloudFormation rounds
    #      down to the next whole number. This is true except in cases where rounding down would result is
    #      zero. In this case, CloudFormation sets the number as one instead.</p>
    #            <p>Note that this setting lets you specify the <i>maximum</i> for operations. For
    #      large deployments, under certain circumstances the actual number of accounts acted upon
    #      concurrently may be lower due to service throttling.</p>
    #            <p>You can specify either <code>MaxConcurrentCount</code> or
    #       <code>MaxConcurrentPercentage</code>, but not both.</p>
    #            <p>By default, <code>1</code> is specified.</p>
    #   @return [Integer]
    # @!attribute concurrency_mode
    #   <p>Specifies how the concurrency level behaves during the operation execution.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STRICT_FAILURE_TOLERANCE</code>: This option dynamically lowers the concurrency
    #        level to ensure the number of failed accounts never exceeds the value of
    #         <code>FailureToleranceCount</code> +1. The initial actual concurrency is set to the lower of
    #        either the value of the <code>MaxConcurrentCount</code>, or the value of
    #         <code>FailureToleranceCount</code> +1. The actual concurrency is then reduced proportionally
    #        by the number of failures. This is the default behavior.</p>
    #                  <p>If failure tolerance or Maximum concurrent accounts are set to percentages, the behavior
    #        is similar.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SOFT_FAILURE_TOLERANCE</code>: This option decouples
    #         <code>FailureToleranceCount</code> from the actual concurrency. This allows StackSet
    #        operations to run at the concurrency level set by the <code>MaxConcurrentCount</code> value, or
    #         <code>MaxConcurrentPercentage</code>, regardless of the number of failures.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StackSetOperationPreferences < Struct.new(
      nil,
      :region_concurrency_type,
      :region_order,
      :failure_tolerance_count,
      :failure_tolerance_percentage,
      :max_concurrent_count,
      :max_concurrent_percentage,
      :concurrency_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains information about a specified operation's results for a given
    #    account in a given Region.</p>
    # @!attribute account
    #   <p>[Self-managed permissions] The name of the Amazon Web Services account for this operation result.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region for this operation result.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The result status of the StackSet operation for the given account in the given
    #      Region.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code>: The operation in the specified account and Region has been
    #        canceled. This is either because a user has stopped the StackSet operation, or because the
    #        failure tolerance of the StackSet operation has been exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation in the specified account and Region failed.</p>
    #                  <p>If the StackSet operation fails in enough accounts within a Region, the failure tolerance
    #        for the StackSet operation as a whole might be exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation in the specified account and Region is currently in
    #        progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The operation in the specified account and Region has yet to
    #        start.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation in the specified account and Region completed
    #        successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the assigned result status.</p>
    #   @return [String]
    # @!attribute account_gate_result
    #   <p>The results of the account gate function CloudFormation invokes, if present, before proceeding
    #      with StackSet operations in an account.</p>
    #   @return [Types::AccountGateResult]
    # @!attribute organizational_unit_id
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that
    #      you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #   @return [String]
    class StackSetOperationResultSummary < Struct.new(
      nil,
      :account,
      :region,
      :status,
      :status_reason,
      :account_gate_result,
      :organizational_unit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the StackSet operation.</p>
    # @!attribute failed_stack_instances_count
    #   <p>The number of stack instances for which the StackSet operation failed.</p>
    #   @return [Integer]
    class StackSetOperationStatusDetails < Struct.new(
      nil,
      :failed_stack_instances_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structures that contain summary information about the specified operation.</p>
    # @!attribute operation_id
    #   <p>The unique ID of the StackSet operation.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The type of operation: <code>CREATE</code>, <code>UPDATE</code>, or <code>DELETE</code>.
    #      Create and delete operations affect only the specified stack instances that are associated with
    #      the specified StackSet. Update operations affect both the StackSet itself and
    #       <i>all</i> associated StackSet instances.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The overall status of the operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation exceeded the specified failure tolerance. The failure
    #        tolerance value that you've set for an operation is applied for each Region during stack create
    #        and update operations. If the number of failed stacks within a Region exceeds the failure
    #        tolerance, the status of the operation in the Region is set to <code>FAILED</code>. This in
    #        turn sets the status of the operation as a whole to <code>FAILED</code>, and CloudFormation cancels
    #        the operation in any remaining Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUED</code>: [Service-managed permissions] For automatic deployments that require
    #        a sequence of operations, the operation is queued to be performed. For more information, see
    #        the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes">StackSet status codes</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation is currently being performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The user has canceled the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: The operation is in the process of stopping, at user
    #        request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation completed creating or updating all the specified
    #        stacks without exceeding the failure tolerance for the operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the operation was initiated. Note that the creation times for the StackSet
    #      operation might differ from the creation time of the individual stacks themselves. This is
    #      because CloudFormation needs to perform preparatory work for the operation, such as dispatching the
    #      work to the requested Regions, before actually creating the first stacks.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The time at which the StackSet operation ended, across all accounts and Regions specified.
    #      Note that this doesn't necessarily mean that the StackSet operation was successful, or even
    #      attempted, in each account or Region.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The status of the operation in details.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Detailed information about the StackSet operation.</p>
    #   @return [Types::StackSetOperationStatusDetails]
    # @!attribute operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a StackSet operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet
    #       operation options</a>.</p>
    #   @return [Types::StackSetOperationPreferences]
    class StackSetOperationSummary < Struct.new(
      nil,
      :operation_id,
      :action,
      :status,
      :creation_timestamp,
      :end_timestamp,
      :status_reason,
      :status_details,
      :operation_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structures that contain summary information about the specified StackSet.</p>
    # @!attribute stack_set_name
    #   <p>The name of the StackSet.</p>
    #   @return [String]
    # @!attribute stack_set_id
    #   <p>The ID of the StackSet.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the StackSet that you specify when the StackSet is created or
    #      updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the StackSet.</p>
    #   @return [String]
    # @!attribute auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organizational unit (OU).</p>
    #   @return [Types::AutoDeployment]
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for StackSet operations are created.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #        execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #         self-managed permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM
    #        roles required to deploy to accounts managed by Organizations. For more information,
    #        see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html">Activate
    #         trusted access for StackSets with Organizations</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute drift_status
    #   <p>Status of the StackSet's actual configuration compared to its expected template and
    #      parameter configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: One or more of the stack instances belonging to the StackSet differs
    #        from the expected template and parameter configuration. A stack instance is considered to have
    #        drifted if one or more of the resources in the associated stack have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked the StackSet for drift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: All the stack instances belonging to the StackSet match the expected
    #        template and parameter configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on the StackSet. This
    #      value will be <code>NULL</code> for any StackSet that drift detection hasn't yet been performed
    #      on.</p>
    #   @return [Time]
    # @!attribute managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #      conflicting operations.</p>
    #   @return [Types::ManagedExecution]
    class StackSetSummary < Struct.new(
      nil,
      :stack_set_name,
      :stack_set_id,
      :description,
      :status,
      :auto_deployment,
      :permission_model,
      :drift_status,
      :last_drift_check_timestamp,
      :managed_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The StackSummary Data Type</p>
    # @!attribute stack_id
    #   <p>Unique stack identifier.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>The template description of the template used to create the stack.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the stack was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the stack was last updated. This field will only be returned if the stack has been
    #      updated at least once.</p>
    #   @return [Time]
    # @!attribute deletion_time
    #   <p>The time the stack was deleted.</p>
    #   @return [Time]
    # @!attribute stack_status
    #   <p>The current status of the stack.</p>
    #   @return [String]
    # @!attribute stack_status_reason
    #   <p>Success/Failure message associated with the stack status.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>For nested stacks, the stack ID of the direct parent of this stack. For the first level of
    #      nested stacks, the root stack is also the parent stack.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Nested stacks</a> in
    #      the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute root_id
    #   <p>For nested stacks, the stack ID of the top-level stack to which the nested stack ultimately
    #      belongs.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Nested stacks</a> in
    #      the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute drift_information
    #   <p>Summarizes information about whether a stack's actual configuration differs, or has
    #       <i>drifted</i>, from its expected configuration, as defined in the stack template
    #      and any values specified as template parameters. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect
    #       unmanaged configuration changes to stacks and resources with drift detection</a>.</p>
    #   @return [Types::StackDriftInformationSummary]
    class StackSummary < Struct.new(
      nil,
      :stack_id,
      :stack_name,
      :template_description,
      :creation_time,
      :last_updated_time,
      :deletion_time,
      :stack_status,
      :stack_status_reason,
      :parent_id,
      :root_id,
      :drift_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Another operation has been performed on this StackSet since the specified operation was performed.</p>
    # @!attribute message
    #   @return [String]
    class StaleRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>StartResourceScan</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to start a new
    #         resource scan.</p>
    #   @return [String]
    # @!attribute scan_filters
    #   <p>The scan filters to use.</p>
    #   @return [Array<Types::ScanFilter>]
    class StartResourceScanInput < Struct.new(
      nil,
      :client_request_token,
      :scan_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan. The format is
    #           <code>arn:${Partition}:cloudformation:${Region}:${Account}:resourceScan/${Id}</code>. An
    #         example is
    #             <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:resourceScan/<i>f5b490f7-7ed4-428a-aa06-31ff25db0772</i>
    #               </code>.</p>
    #   @return [String]
    class StartResourceScanOutput < Struct.new(
      nil,
      :resource_scan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to stop the operation for.</p>
    #   @return [String]
    # @!attribute operation_id
    #   <p>The ID of the stack operation.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid only if the
    #      StackSet uses service-managed permissions.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #      self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #        <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #         <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #         delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StopStackSetOperationInput < Struct.new(
      nil,
      :stack_set_name,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopStackSetOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Tag type enables you to specify a key-value pair that can be used to store information
    #    about an CloudFormation stack.</p>
    # @!attribute key
    #   <p>A string used to identify this tag. You can specify a maximum of
    #      128 characters for a tag key. Tags owned by Amazon Web Services have the reserved prefix:
    #      <code>aws:</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A string that contains the value for this tag. You can specify a
    #      maximum of 256 characters for a tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of a generated template.</p>
    # @!attribute deletion_policy
    #   <p>The <code>DeletionPolicy</code> assigned to resources in the generated template. Supported
    #      values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - delete all resources when the stack is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RETAIN</code> - retain all resources when the stack is deleted.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html">DeletionPolicy
    #       attribute</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute update_replace_policy
    #   <p>The <code>UpdateReplacePolicy</code> assigned to resources in the generated template.
    #      Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - delete all resources when the resource is replaced during an update
    #        operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RETAIN</code> - retain all resources when the resource is replaced during an update
    #        operation.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatereplacepolicy.html">UpdateReplacePolicy attribute</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    class TemplateConfiguration < Struct.new(
      nil,
      :deletion_policy,
      :update_replace_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The TemplateParameter data type.</p>
    # @!attribute parameter_key
    #   <p>The name associated with the parameter.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value associated with the parameter.</p>
    #   @return [String]
    # @!attribute no_echo
    #   <p>Flag indicating whether the parameter should be displayed as plain text in logs and
    #      UIs.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>User defined description associated with the parameter.</p>
    #   @return [String]
    class TemplateParameter < Struct.new(
      nil,
      :parameter_key,
      :default_value,
      :no_echo,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the progress of the template generation.</p>
    # @!attribute resources_succeeded
    #   <p>The number of resources that succeeded the template generation.</p>
    #   @return [Integer]
    # @!attribute resources_failed
    #   <p>The number of resources that failed the template generation.</p>
    #   @return [Integer]
    # @!attribute resources_processing
    #   <p>The number of resources that are in-process for the template generation.</p>
    #   @return [Integer]
    # @!attribute resources_pending
    #   <p>The number of resources that are still pending the template generation.</p>
    #   @return [Integer]
    class TemplateProgress < Struct.new(
      nil,
      :resources_succeeded,
      :resources_failed,
      :resources_processing,
      :resources_pending,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a generated template.</p>
    # @!attribute generated_template_id
    #   <p>The Amazon Resource Name (ARN) of the generated template. The format is
    #       <code>arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}</code>. For
    #      example,
    #        <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:generatedtemplate/<i>2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc</i>
    #               </code>.</p>
    #   @return [String]
    # @!attribute generated_template_name
    #   <p>The name of the generated template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the template generation. Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatePending</code> - the creation of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreateInProgress</code> - the creation of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeletePending</code> - the deletion of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeleteInProgress</code> - the deletion of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdatePending</code> - the update of the template is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdateInProgress</code> - the update of the template is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - the template operation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Complete</code> - the template operation is complete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current template generation status. This will provide more details if a
    #      failure happened.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the generated template was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the generated template was last updated.</p>
    #   @return [Time]
    # @!attribute number_of_resources
    #   <p>The number of resources in the generated template. This is a total of resources in pending,
    #      in-progress, completed, and failed states.</p>
    #   @return [Integer]
    class TemplateSummary < Struct.new(
      nil,
      :generated_template_id,
      :generated_template_name,
      :status,
      :status_reason,
      :creation_time,
      :last_updated_time,
      :number_of_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for the <code>GetTemplateSummary</code> API action.</p>
    # @!attribute treat_unrecognized_resource_types_as_warnings
    #   <p>If set to <code>True</code>, any unrecognized resource types generate warnings and not an
    #      error. Any unrecognized resource types are returned in the <code>Warnings</code> output
    #      parameter.</p>
    #   @return [Boolean]
    class TemplateSummaryConfig < Struct.new(
      nil,
      :treat_unrecognized_resource_types_as_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version of the extension to test.</p>
    #            <p>You can specify the version id with either <code>Arn</code>, or with <code>TypeName</code>
    #         and <code>Type</code>.</p>
    #            <p>If you don't specify a version, CloudFormation uses the default version of the extension in
    #         this account and Region for testing.</p>
    #   @return [String]
    # @!attribute log_delivery_bucket
    #   <p>The S3 bucket to which CloudFormation delivers the contract test execution logs.</p>
    #            <p>CloudFormation delivers the logs by the time contract testing has completed and the extension
    #         has been assigned a test type status of <code>PASSED</code> or <code>FAILED</code>.</p>
    #            <p>The user calling <code>TestType</code> must be able to access items in the specified S3
    #         bucket. Specifically, the user needs the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GetObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutObject</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">Actions, Resources, and
    #           Condition Keys for Amazon S3</a> in the <i>Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    class TestTypeInput < Struct.new(
      nil,
      :arn,
      :type,
      :type_name,
      :version_id,
      :log_delivery_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type_version_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #   @return [String]
    class TestTypeOutput < Struct.new(
      nil,
      :type_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A client request token already exists.</p>
    # @!attribute message
    #   @return [String]
    class TokenAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information concerning the specification of a CloudFormation extension in a given
    #    account and Region.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html">Edit configuration data
    #     for extensions in your account</a> in the <i>CloudFormation User Guide</i>.</p>
    # @!attribute arn
    #   <p>The ARN for the configuration data, in this account and Region.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias specified for this configuration, if one was specified when the configuration was
    #      set.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>A JSON string specifying the configuration data for the extension, in this account and
    #      Region.</p>
    #            <p>If a configuration hasn't been set for a specified extension, CloudFormation returns
    #       <code>{}</code>.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>When the configuration data was last updated for this extension.</p>
    #            <p>If a configuration hasn't been set for a specified extension, CloudFormation returns
    #       <code>null</code>.</p>
    #   @return [Time]
    # @!attribute type_arn
    #   <p>The ARN for the extension, in this account and Region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a> API operation in this account and Region. For private extensions, this
    #      will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a> API
    #      operation in this account and Region.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #   @return [String]
    # @!attribute is_default_configuration
    #   <p>Whether this configuration data is the default configuration for the extension.</p>
    #   @return [Boolean]
    class TypeConfigurationDetails < Struct.new(
      nil,
      :arn,
      :alias,
      :configuration,
      :last_updated,
      :type_arn,
      :type_name,
      :is_default_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifying information for the configuration of a CloudFormation extension.</p>
    # @!attribute type_arn
    #   <p>The ARN for the extension, in this account and Region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a> API operation in this account and Region. For private extensions, this
    #      will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a> API
    #      operation in this account and Region.</p>
    #   @return [String]
    # @!attribute type_configuration_alias
    #   <p>The alias specified for this configuration, if one was specified when the configuration was
    #      set.</p>
    #   @return [String]
    # @!attribute type_configuration_arn
    #   <p>The ARN for the configuration, in this account and Region.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of extension.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension type to which this configuration applies.</p>
    #   @return [String]
    class TypeConfigurationIdentifier < Struct.new(
      nil,
      :type_arn,
      :type_configuration_alias,
      :type_configuration_arn,
      :type,
      :type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified extension configuration can't be found.</p>
    # @!attribute message
    #   <p>A message with details about the error that occurred.</p>
    #   @return [String]
    class TypeConfigurationNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter criteria to use in determining which extensions to return.</p>
    # @!attribute category
    #   <p>The category of extensions to return.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REGISTERED</code>: Private extensions that have been registered for this account and
    #        Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATED</code>: Public extensions that have been activated for this account and
    #        Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THIRD_PARTY</code>: Extensions available for use from publishers other than Amazon.
    #        This includes:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Private extensions registered in the account.</p>
    #                     </li>
    #                     <li>
    #                        <p>Public extensions from publishers other than Amazon, whether activated or not.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_TYPES</code>: Extensions available for use from Amazon.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The id of the publisher of the extension.</p>
    #            <p>Extensions published by Amazon aren't assigned a publisher ID. Use the
    #       <code>AWS_TYPES</code> category to specify a list of types published by Amazon.</p>
    #   @return [String]
    # @!attribute type_name_prefix
    #   <p>A prefix to use as a filter for results.</p>
    #   @return [String]
    class TypeFilters < Struct.new(
      nil,
      :category,
      :publisher_id,
      :type_name_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified extension doesn't exist in the CloudFormation registry.</p>
    # @!attribute message
    #   <p>A message with details about the error that occurred.</p>
    #   @return [String]
    class TypeNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about the specified CloudFormation extension.</p>
    # @!attribute type
    #   <p>The kind of extension.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a> API
    #      operation in your account and Region, CloudFormation considers that alias as the type name.</p>
    #   @return [String]
    # @!attribute default_version_id
    #   <p>The ID of the default version of the extension. The default version is used when the
    #      extension version isn't specified.</p>
    #            <p>This applies only to private extensions you have registered in your account. For public
    #      extensions, both those provided by Amazon and published by third parties, CloudFormation returns
    #       <code>null</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #            <p>To set the default version of an extension, use <a>SetTypeDefaultVersion</a>.</p>
    #   @return [String]
    # @!attribute type_arn
    #   <p>The ARN of the extension.</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>When the specified extension version was registered. This applies only to:</p>
    #            <ul>
    #               <li>
    #                  <p>Private extensions you have registered in your account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Public extensions you have activated in your account with auto-update specified. For more
    #        information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a>.</p>
    #               </li>
    #            </ul>
    #            <p>For all other extension types, CloudFormation returns <code>null</code>.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the extension.</p>
    #   @return [String]
    # @!attribute publisher_id
    #   <p>The ID of the extension publisher, if the extension is published by a third party.
    #      Extensions published by Amazon don't return a publisher ID.</p>
    #   @return [String]
    # @!attribute original_type_name
    #   <p>For public extensions that have been activated for this account and Region, the type name of
    #      the public extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when enabling the extension in this account
    #      and Region, CloudFormation treats that alias as the extension's type name within the account and
    #      Region, not the type name of the public extension. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias">Use
    #       aliases to refer to extensions</a> in the <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute public_version_number
    #   <p>For public extensions that have been activated for this account and Region, the version of
    #      the public extension to be used for CloudFormation operations in this account and Region.</p>
    #            <p>How you specified <code>AutoUpdate</code> when enabling the extension affects whether
    #      CloudFormation automatically updates the extension in this account and Region when a new version is
    #      released. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto">Automatically use new versions of extensions</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute latest_public_version
    #   <p>For public extensions that have been activated for this account and Region, the latest
    #      version of the public extension <i>that is available</i>. For any extensions other
    #      than activated third-party extensions, CloudFormation returns <code>null</code>.</p>
    #            <p>How you specified <code>AutoUpdate</code> when enabling the extension affects whether
    #      CloudFormation automatically updates the extension in this account and Region when a new version is
    #      released. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto">Automatically use new versions of extensions</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    # @!attribute publisher_identity
    #   <p>The service used to verify the publisher identity.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html">Publishing extensions to make
    #       them available for public use</a> in the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #   @return [String]
    # @!attribute publisher_name
    #   <p>The publisher name, as defined in the public profile for that publisher in the service used
    #      to verify the publisher identity.</p>
    #   @return [String]
    # @!attribute is_activated
    #   <p>Whether the extension is activated for this account and Region.</p>
    #            <p>This applies only to third-party public extensions. Extensions published by Amazon are
    #      activated by default.</p>
    #   @return [Boolean]
    class TypeSummary < Struct.new(
      nil,
      :type,
      :type_name,
      :default_version_id,
      :type_arn,
      :last_updated,
      :description,
      :publisher_id,
      :original_type_name,
      :public_version_number,
      :latest_public_version,
      :publisher_identity,
      :publisher_name,
      :is_activated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a specific version of a CloudFormation extension.</p>
    # @!attribute type
    #   <p>The kind of extension.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of the
    #      ARN assigned to the extension version when it's registered.</p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>Whether the specified extension version is set as the default version.</p>
    #            <p>This applies only to private extensions you have registered in your account, and extensions
    #      published by Amazon. For public third-party extensions, CloudFormation returns
    #      <code>null</code>.</p>
    #   @return [Boolean]
    # @!attribute arn
    #   <p>The ARN of the extension version.</p>
    #   @return [String]
    # @!attribute time_created
    #   <p>When the version was registered.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the extension version.</p>
    #   @return [String]
    # @!attribute public_version_number
    #   <p>For public extensions that have been activated for this account and Region, the version of
    #      the public extension to be used for CloudFormation operations in this account and Region. For any
    #      extensions other than activated third-party extensions, CloudFormation returns
    #      <code>null</code>.</p>
    #            <p>How you specified <code>AutoUpdate</code> when enabling the extension affects whether
    #      CloudFormation automatically updates the extension in this account and Region when a new version is
    #      released. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto">Automatically use new versions of extensions</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    #   @return [String]
    class TypeVersionSummary < Struct.new(
      nil,
      :type,
      :type_name,
      :version_id,
      :is_default_version,
      :arn,
      :time_created,
      :description,
      :public_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of a generated template.</p>
    #   @return [String]
    # @!attribute new_generated_template_name
    #   <p>An optional new name to assign to the generated template.</p>
    #   @return [String]
    # @!attribute add_resources
    #   <p>An optional list of resources to be added to the generated template.</p>
    #   @return [Array<Types::ResourceDefinition>]
    # @!attribute remove_resources
    #   <p>A list of logical ids for resources to remove from the generated template.</p>
    #   @return [Array<String>]
    # @!attribute refresh_all_resources
    #   <p>If <code>true</code>, update the resource properties in the generated template with their
    #         current live state. This feature is useful when the resource properties in your generated a
    #         template does not reflect the live state of the resource properties. This happens when a user
    #         update the resource properties after generating a template.</p>
    #   @return [Boolean]
    # @!attribute template_configuration
    #   <p>The configuration details of the generated template, including the
    #           <code>DeletionPolicy</code> and <code>UpdateReplacePolicy</code>.</p>
    #   @return [Types::TemplateConfiguration]
    class UpdateGeneratedTemplateInput < Struct.new(
      nil,
      :generated_template_name,
      :new_generated_template_name,
      :add_resources,
      :remove_resources,
      :refresh_all_resources,
      :template_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generated_template_id
    #   <p>The Amazon Resource Name (ARN) of the generated template. The format is
    #           <code>arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}</code>.
    #         For example,
    #             <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:generatedtemplate/<i>2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc</i>
    #               </code>.</p>
    #   @return [String]
    class UpdateGeneratedTemplateOutput < Struct.new(
      nil,
      :generated_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for an <a>UpdateStack</a> action.</p>
    # @!attribute stack_name
    #   <p>The name or unique stack ID of the stack to update.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #           <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template that's
    #         located in an Amazon S3 bucket or a Systems Manager document. The location for an Amazon S3 bucket must
    #         start with <code>https://</code>.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #           <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #   @return [String]
    # @!attribute use_previous_template
    #   <p>Reuse the existing template that is associated with the stack that you are
    #         updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #           <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute stack_policy_during_update_body
    #   <p>Structure that contains the temporary overriding stack policy body. You can specify either
    #         the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code>
    #         parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #         during this update. If you don't specify a stack policy, the current policy that is associated
    #         with the stack will be used.</p>
    #   @return [String]
    # @!attribute stack_policy_during_update_url
    #   <p>Location of a file that contains the temporary overriding stack policy. The URL must point
    #         to a policy (max size: 16KB) located in an S3 bucket in the same Region as the stack. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static
    #         websites are not supported.</p>
    #            <p>You can specify either the <code>StackPolicyDuringUpdateBody</code> or the
    #           <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #         during this update. If you don't specify a stack policy, the current policy that is associated
    #         with the stack will be used.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #         For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #         type.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to update the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account, for example, by creating new IAM users. For those stacks, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">
    #                   AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">
    #                   AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html"> AWS::IAM::ManagedPolicy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">
    #                   AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">
    #                   AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this can
    #             include simple actions like find-and-replace operations, all the way to extensive
    #             transformations of entire templates. Because of this, users typically create a change set
    #             from the processed template, so that they can review the changes resulting from the macros
    #             before actually updating the stack. If your stack template contains one or more macros,
    #             and you choose to update a stack directly from the processed template, without first
    #             reviewing the resulting changes in a change set, you must acknowledge this capability.
    #             This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a>
    #             and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to update a stack from a stack template that contains macros
    #               <i>and</i> nested stacks, you must update the stack directly from the
    #             template using this capability.</p>
    #                  <important>
    #                     <p>You should only update stacks directly from a stack template that contains macros if
    #               you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for processing stack
    #               templates. Be aware that the Lambda function owner can update the function operation
    #               without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>The template resource types that you have permissions to work with for this update stack
    #         action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #           <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource that you're updating, the stack
    #         update fails. By default, CloudFormation grants permissions to all resource types. IAM uses this
    #         parameter for CloudFormation-specific condition keys in IAM policies. For more information, see
    #           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html">Control access with
    #           Identity and Access Management</a>.</p>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to update the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that is generated from
    #         your user credentials.</p>
    #   @return [String]
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    #   @return [Types::RollbackConfiguration]
    # @!attribute stack_policy_body
    #   <p>Structure that contains a new stack policy body. You can specify either the
    #           <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
    #         both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #         you created during a stack update. If you don't specify a stack policy, the current policy
    #         that is associated with the stack is unchanged.</p>
    #   @return [String]
    # @!attribute stack_policy_url
    #   <p>Location of a file that contains the updated stack policy. The URL must point to a policy
    #         (max size: 16KB) located in an S3 bucket in the same Region as the stack. The location for an
    #         Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #         you created during a stack update. If you don't specify a stack policy, the current policy
    #         that is associated with the stack is unchanged.</p>
    #   @return [String]
    # @!attribute notification_ar_ns
    #   <p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that CloudFormation
    #         associates with the stack. Specify an empty list to remove all notification topics.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these tags to
    #         supported resources in the stack. You can specify a maximum number of 50 tags.</p>
    #            <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's tags. If you
    #         specify an empty value, CloudFormation removes all associated tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute disable_rollback
    #   <p>Preserve the state of previously provisioned resources when an operation fails.</p>
    #            <p>Default: <code>False</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you
    #         plan to retry requests so that CloudFormation knows that you're not attempting to update a stack
    #         with the same name. You might retry <code>UpdateStack</code> requests to ensure that
    #         CloudFormation successfully received them.</p>
    #            <p>All events triggered by a given stack operation are assigned the same client request
    #         token, which you can use to track operations. For example, if you execute a
    #           <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #           <code>StackEvents</code> generated by that operation will have
    #           <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #         operations that are initiated from the console use the token format
    #           <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #         operation . For example, if you create a stack using the console, each stack event would be
    #         assigned the same token in the following format:
    #           <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #   @return [String]
    # @!attribute retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    class UpdateStackInput < Struct.new(
      nil,
      :stack_name,
      :template_body,
      :template_url,
      :use_previous_template,
      :stack_policy_during_update_body,
      :stack_policy_during_update_url,
      :parameters,
      :capabilities,
      :resource_types,
      :role_arn,
      :rollback_configuration,
      :stack_policy_body,
      :stack_policy_url,
      :notification_ar_ns,
      :tags,
      :disable_rollback,
      :client_request_token,
      :retain_except_on_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet associated with the stack instances.</p>
    #   @return [String]
    # @!attribute accounts
    #   <p>[Self-managed permissions] The account IDs of one or more Amazon Web Services accounts in which you want
    #         to update parameter values for stack instances. The overridden parameter values will be
    #         applied to all stack instances in the specified accounts and Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    #   @return [Array<String>]
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which you want to
    #         update parameter values for stack instances. If your update targets OUs, the overridden
    #         parameter values only apply to the accounts that are currently in the target OUs and their
    #         child OUs. Accounts added to the target OUs and their child OUs in the future won't use the
    #         overridden values.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    #   @return [Types::DeploymentTargets]
    # @!attribute regions
    #   <p>The names of one or more Amazon Web Services Regions in which you want to update parameter values for
    #         stack instances. The overridden parameter values will be applied to all stack instances in the
    #         specified accounts and Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute parameter_overrides
    #   <p>A list of input parameters whose values you want to update for the specified stack
    #         instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #         accounts and Amazon Web Services Regions. When specifying parameters and their values, be aware of how
    #         CloudFormation sets parameter values during stack instance update operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify its
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter and
    #             specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify both a
    #             value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the StackSet, specify a
    #             parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property at
    #             all.</p>
    #               </li>
    #            </ul>
    #            <p>During StackSet updates, any parameter values overridden for a stack instance aren't
    #         updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in the
    #         StackSet. To add or delete a parameter itself, use <code>UpdateStackSet</code> to update the
    #         StackSet template. If you add a parameter to a template, before you can override the parameter
    #         value specified in the StackSet you must first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
    #         to update all stack instances with the updated template and parameter value specified in the
    #         StackSet. Once a stack instance has been updated with the new parameter, you can then override
    #         the parameter value using <code>UpdateStackInstances</code>.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         might retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    #   @return [String]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateStackInstancesInput < Struct.new(
      nil,
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #   @return [String]
    class UpdateStackInstancesOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for an <a>UpdateStack</a> action.</p>
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #   @return [String]
    class UpdateStackOutput < Struct.new(
      nil,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of updates that you are making.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #         maximum length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #           <code>UsePreviousTemplate</code> to true.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template
    #         (maximum size: 1 MB) that is located in an Amazon S3 bucket or a Systems Manager document. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. S3 static website URLs are
    #         not supported.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #           <code>UsePreviousTemplate</code> to true.</p>
    #   @return [String]
    # @!attribute use_previous_template
    #   <p>Use the existing template that's associated with the StackSet that you're updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #           <code>UsePreviousTemplate</code> to true.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>A list of input parameters for the StackSet template.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to update the StackSet and its associated stack
    #         instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account, for example, by creating new IAM users. For those stacks sets, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your StackSet template references one or more
    #             macros, you must update the StackSet directly from the processed template, without first
    #             reviewing the resulting changes in a change set. To update the StackSet directly, you must
    #             acknowledge this capability. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #                  <important>
    #                     <p>StackSets with service-managed permissions do not currently support the use of
    #               macros in templates. (This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a> and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.) Even if
    #               you specify this capability for a StackSet with service-managed permissions, if you
    #               reference a macro in your template the StackSet operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The key-value pairs to associate with this StackSet and the stacks created from it.
    #         CloudFormation also propagates these tags to supported resources that are created in the stacks.
    #         You can specify a maximum number of 50 tags.</p>
    #            <p>If you specify tags for this parameter, those tags replace any list of tags that are
    #         currently associated with this StackSet. This means:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's
    #             tags.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <i>any</i> tags using this parameter, you must specify
    #               <i>all</i> the tags that you want associated with this StackSet, even tags
    #             you've specified before (for example, when creating the StackSet or during a previous
    #             update of the StackSet.). Any tags that you don't include in the updated list of tags are
    #             removed from the StackSet, and therefore from the stacks and resources as well.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify an empty value, CloudFormation removes all currently associated
    #             tags.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, CloudFormation
    #         checks to see if you have the required IAM permission to tag resources. If you omit tags
    #         that are currently associated with the StackSet from the list of tags you specify, CloudFormation
    #         assumes that you want to remove those tags from the StackSet, and checks to see if you have
    #         permission to untag resources. If you don't have the necessary permission(s), the entire
    #           <code>UpdateStackSet</code> action fails with an <code>access denied</code> error, and the
    #         StackSet is not updated.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    #   @return [Types::StackSetOperationPreferences]
    # @!attribute administration_role_arn
    #   <p>[Self-managed permissions] The Amazon Resource Name (ARN) of the IAM role to use to
    #         update this StackSet.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles to control
    #         which users or groups can manage specific StackSets within the same administrator account. For
    #         more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #           self-managed permissions</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <p>If you specified a customized administrator role when you created the StackSet, you must
    #         specify a customized administrator role, even if it is the same customized administrator role
    #         used with this StackSet previously.</p>
    #   @return [String]
    # @!attribute execution_role_name
    #   <p>[Self-managed permissions] The name of the IAM execution role to use to update the stack
    #         set. If you do not specify an execution role, CloudFormation uses the
    #           <code>AWSCloudFormationStackSetExecutionRole</code> role for the StackSet operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to control which
    #         stack resources users and groups can include in their StackSets.</p>
    #            <p>If you specify a customized execution role, CloudFormation uses that role to update the stack.
    #         If you do not specify a customized execution role, CloudFormation performs the update using the
    #         role previously associated with the StackSet, so long as you have permissions to perform
    #         operations on the StackSet.</p>
    #   @return [String]
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which to update
    #         associated stack instances.</p>
    #            <p>To update all the stack instances associated with this StackSet, do not specify
    #           <code>DeploymentTargets</code> or <code>Regions</code>.</p>
    #            <p>If the StackSet update includes changes to the template (that is, if
    #           <code>TemplateBody</code> or <code>TemplateURL</code> is specified), or the
    #           <code>Parameters</code>, CloudFormation marks all stack instances with a status of
    #           <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and
    #         Amazon Web Services Regions. If the StackSet update doesn't include changes to the template or parameters,
    #         CloudFormation updates the stack instances in the specified accounts and Regions, while leaving
    #         all other stack instances with their existing stack instance status.</p>
    #   @return [Types::DeploymentTargets]
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for StackSet operations are created. You cannot
    #         modify <code>PermissionModel</code> if there are stack instances associated with your stack
    #         set.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #             execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #               self-managed permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #             IAM roles required to deploy to accounts managed by Organizations. For more
    #             information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html">Activate trusted access for StackSets with Organizations</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
    #         For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html">Enable or disable automatic deployments for StackSets in Organizations</a>
    #         in the <i>CloudFormation User Guide</i>.</p>
    #            <p>If you specify <code>AutoDeployment</code>, don't specify <code>DeploymentTargets</code>
    #         or <code>Regions</code>.</p>
    #   @return [Types::AutoDeployment]
    # @!attribute operation_id
    #   <p>The unique ID for this StackSet operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         might retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>If you don't specify an operation ID, CloudFormation generates one
    #         automatically.</p>
    #            <p>Repeating this StackSet operation with a new operation ID retries all stack instances
    #         whose status is <code>OUTDATED</code>.</p>
    #   @return [String]
    # @!attribute accounts
    #   <p>[Self-managed permissions] The accounts in which to update associated stack instances. If
    #         you specify accounts, you must also specify the Amazon Web Services Regions in which to update StackSet
    #         instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this StackSet,
    #         don't specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the StackSet update includes changes to the template (that is, if the
    #           <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #           <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #           <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and
    #         Amazon Web Services Regions. If the StackSet update does not include changes to the template or parameters,
    #         CloudFormation updates the stack instances in the specified accounts and Amazon Web Services Regions, while
    #         leaving all other stack instances with their existing stack instance status.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions in which to update associated stack instances. If you specify Regions,
    #         you must also specify accounts in which to update StackSet instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this StackSet, do
    #         not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the StackSet update includes changes to the template (that is, if the
    #           <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #           <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #           <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and
    #         Regions. If the StackSet update does not include changes to the template or parameters,
    #         CloudFormation updates the stack instances in the specified accounts and Regions, while leaving
    #         all other stack instances with their existing stack instance status.</p>
    #   @return [Array<String>]
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute managed_execution
    #   <p>Describes whether CloudFormation performs non-conflicting operations concurrently and queues
    #         conflicting operations.</p>
    #   @return [Types::ManagedExecution]
    class UpdateStackSetInput < Struct.new(
      nil,
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :use_previous_template,
      :parameters,
      :capabilities,
      :tags,
      :operation_preferences,
      :administration_role_arn,
      :execution_role_name,
      :deployment_targets,
      :permission_model,
      :auto_deployment,
      :operation_id,
      :accounts,
      :regions,
      :call_as,
      :managed_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique ID for this StackSet operation.</p>
    #   @return [String]
    class UpdateStackSetOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack.</p>
    #   @return [Boolean]
    # @!attribute stack_name
    #   <p>The name or unique ID of the stack for which you want to set termination
    #         protection.</p>
    #   @return [String]
    class UpdateTerminationProtectionInput < Struct.new(
      nil,
      :enable_termination_protection,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The unique ID of the stack.</p>
    #   @return [String]
    class UpdateTerminationProtectionOutput < Struct.new(
      nil,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for <a>ValidateTemplate</a> action.</p>
    # @!attribute template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template (max
    #         size: 1 MB) that is located in an Amazon S3 bucket or a Systems Manager document. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    #   @return [String]
    class ValidateTemplateInput < Struct.new(
      nil,
      :template_body,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for <a>ValidateTemplate</a> action.</p>
    # @!attribute parameters
    #   <p>A list of <code>TemplateParameter</code> structures.</p>
    #   @return [Array<Types::TemplateParameter>]
    # @!attribute description
    #   <p>The description found within the template.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The capabilities found within the template. If your template contains IAM resources, you
    #         must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use
    #         the <a>CreateStack</a> or <a>UpdateStack</a> actions with your template;
    #         otherwise, those actions return an InsufficientCapabilities error.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #   @return [Array<String>]
    # @!attribute capabilities_reason
    #   <p>The list of resources that generated the values in the <code>Capabilities</code> response
    #         element.</p>
    #   @return [String]
    # @!attribute declared_transforms
    #   <p>A list of the transforms that are declared in the template.</p>
    #   @return [Array<String>]
    class ValidateTemplateOutput < Struct.new(
      nil,
      :parameters,
      :description,
      :capabilities,
      :capabilities_reason,
      :declared_transforms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The warnings generated for a specific resource for this generated template.</p>
    # @!attribute type
    #   <p>The type of this warning. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/generate-IaC-write-only-properties.html">Resolve
    #       write-only properties</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MUTUALLY_EXCLUSIVE_PROPERTIES</code> - The resource requires mutually-exclusive
    #        write-only properties. The IaC generator selects one set of mutually exclusive properties and
    #        converts the included properties into parameters. The parameter names have a suffix
    #         <code>OneOf</code> and the parameter descriptions indicate that the corresponding property can
    #        be replaced with other exclusive properties.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNSUPPORTED_PROPERTIES</code> - Unsupported properties are present in the resource.
    #        One example of unsupported properties would be a required write-only property that is an array,
    #        because a parameter cannot be an array. Another example is an optional write-only
    #        property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MUTUALLY_EXCLUSIVE_TYPES</code> - One or more required write-only properties are
    #        found in the resource, and the type of that property can be any of several types.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Currently the resource and property reference documentation does not indicate if a property
    #       uses a type of <code>oneOf</code> or <code>anyOf</code>. You need to look at the resource
    #       provider schema.</p>
    #            </note>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties of the resource that are impacted by this warning.</p>
    #   @return [Array<Types::WarningProperty>]
    class WarningDetail < Struct.new(
      nil,
      :type,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specific property that is impacted by a warning.</p>
    # @!attribute property_path
    #   <p>The path of the property. For example, if this is for the <code>S3Bucket</code> member of
    #      the <code>Code</code> property, the property path would be <code>Code/S3Bucket</code>.</p>
    #   @return [String]
    # @!attribute required
    #   <p>If <code>true</code>, the specified property is required.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the property from the resource provider schema.</p>
    #   @return [String]
    class WarningProperty < Struct.new(
      nil,
      :property_path,
      :required,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains any warnings returned by the <code>GetTemplateSummary</code> API action.</p>
    # @!attribute unrecognized_resource_types
    #   <p>A list of all of the unrecognized resource types. This is only returned if the
    #       <code>TemplateSummaryConfig</code> parameter has the
    #       <code>TreatUnrecognizedResourceTypesAsWarning</code> configuration set to
    #      <code>True</code>.</p>
    #   @return [Array<String>]
    class Warnings < Struct.new(
      nil,
      :unrecognized_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
