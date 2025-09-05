# frozen_string_literal: true

# This is generated code!

module Aws::ControlTower
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object of shape <code>BaselineOperation</code>, returning details about the specified <code>Baseline</code> operation ID.</p>
    # @!attribute operation_identifier
    #   <p>The identifier of the specified operation.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>An enumerated type (<code>enum</code>) with possible values of <code>ENABLE_BASELINE</code>, <code>DISABLE_BASELINE</code>, <code>UPDATE_ENABLED_BASELINE</code>, or <code>RESET_ENABLED_BASELINE</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An enumerated type (<code>enum</code>) with possible values of <code>SUCCEEDED</code>, <code>FAILED</code>, or <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the operation, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the operation (if applicable), in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>A status message that gives more information about the operation's status, if applicable.</p>
    #   @return [String]
    class BaselineOperation < Struct.new(
      :operation_identifier,
      :operation_type,
      :status,
      :start_time,
      :end_time,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of information about a <code>Baseline</code> object.</p>
    # @!attribute arn
    #   <p>The full ARN of a Baseline.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of a Baseline.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary description of a Baseline.</p>
    #   @return [String]
    class BaselineSummary < Struct.new(
      :arn,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting the resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation performed by the control.</p>
    # @!attribute operation_type
    #   <p>One of <code>ENABLE_CONTROL</code> or <code>DISABLE_CONTROL</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the operation began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the operation finished.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>One of <code>IN_PROGRESS</code>, <code>SUCEEDED</code>, or <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>If the operation result is <code>FAILED</code>, this string contains a message explaining why the operation failed.</p>
    #   @return [String]
    # @!attribute operation_identifier
    #   <p>The identifier of the specified operation.</p>
    #   @return [String]
    # @!attribute control_identifier
    #   <p>The <code>controlIdentifier</code> of the control for the operation.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The target upon which the control operation is working.</p>
    #   @return [String]
    # @!attribute enabled_control_identifier
    #   <p>The <code>controlIdentifier</code> of the enabled control.</p>
    #   @return [String]
    class ControlOperation < Struct.new(
      :operation_type,
      :start_time,
      :end_time,
      :status,
      :status_message,
      :operation_identifier,
      :control_identifier,
      :target_identifier,
      :enabled_control_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter object that lets you call <code>ListControlOperations</code> with a specific filter.</p>
    # @!attribute control_identifiers
    #   <p>The set of <code>controlIdentifier</code> returned by the filter.</p>
    #   @return [Array<String>]
    # @!attribute target_identifiers
    #   <p>The set of <code>targetIdentifier</code> objects returned by the filter.</p>
    #   @return [Array<String>]
    # @!attribute enabled_control_identifiers
    #   <p>The set <code>controlIdentifier</code> of enabled controls selected by the filter.</p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>Lists the status of control operations.</p>
    #   @return [Array<String>]
    # @!attribute control_operation_types
    #   <p>The set of <code>ControlOperation</code> objects returned by the filter.</p>
    #   @return [Array<String>]
    class ControlOperationFilter < Struct.new(
      :control_identifiers,
      :target_identifiers,
      :enabled_control_identifiers,
      :statuses,
      :control_operation_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about the specified control operation.</p>
    # @!attribute operation_type
    #   <p>The type of operation.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which a control operation began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the control operation was completed.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the specified control operation.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A speficic message displayed as part of the control status.</p>
    #   @return [String]
    # @!attribute operation_identifier
    #   <p>The unique identifier of a control operation.</p>
    #   @return [String]
    # @!attribute control_identifier
    #   <p>The <code>controlIdentifier</code> of a control.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The unique identifier of the target of a control operation.</p>
    #   @return [String]
    # @!attribute enabled_control_identifier
    #   <p>The <code>controlIdentifier</code> of an enabled control.</p>
    #   @return [String]
    class ControlOperationSummary < Struct.new(
      :operation_type,
      :start_time,
      :end_time,
      :status,
      :status_message,
      :operation_identifier,
      :control_identifier,
      :target_identifier,
      :enabled_control_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>The landing zone version, for example, 3.0.</p>
    #   @return [String]
    # @!attribute manifest
    #   <p>The manifest JSON file is a text file that describes your Amazon Web Services resources. For examples, review <a href="https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch">Launch your landing zone</a>. </p>
    #   @return [JSON]
    # @!attribute tags
    #   <p>Tags to be applied to the landing zone. </p>
    #   @return [Hash<String, String>]
    class CreateLandingZoneInput < Struct.new(
      :version,
      :manifest,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the landing zone resource.</p>
    #   @return [String]
    # @!attribute operation_identifier
    #   <p>A unique identifier assigned to a <code>CreateLandingZone</code> operation. You can use this identifier as an input of <code>GetLandingZoneOperation</code> to check the operation's status.</p>
    #   @return [String]
    class CreateLandingZoneOutput < Struct.new(
      :arn,
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    #   @return [String]
    class DeleteLandingZoneInput < Struct.new(
      :landing_zone_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>&gt;A unique identifier assigned to a <code>DeleteLandingZone</code> operation. You can use this identifier as an input parameter of <code>GetLandingZoneOperation</code> to check the operation's status.</p>
    #   @return [String]
    class DeleteLandingZoneOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_baseline_identifier
    #   <p>Identifier of the <code>EnabledBaseline</code> resource to be deactivated, in ARN format.</p>
    #   @return [String]
    class DisableBaselineInput < Struct.new(
      :enabled_baseline_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID (in UUID format) of the asynchronous <code>DisableBaseline</code> operation. This <code>operationIdentifier</code> is used to track status through calls to the <code>GetBaselineOperation</code> API.</p>
    #   @return [String]
    class DisableBaselineOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_identifier
    #   <p>The ARN of the control. Only <b>Strongly recommended</b> and <b>Elective</b> controls are permitted, with the exception of the <b>Region deny</b> control. For information on how to find the <code>controlIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    class DisableControlInput < Struct.new(
      :control_identifier,
      :target_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID of the asynchronous operation, which is used to track status. The operation is available for 90 days.</p>
    #   @return [String]
    class DisableControlOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The drift summary of the enabled control.</p> <p>Amazon Web Services Control Tower expects the enabled control configuration to include all supported and governed Regions. If the enabled control differs from the expected configuration, it is defined to be in a state of drift. You can repair this drift by resetting the enabled control.</p>
    # @!attribute drift_status
    #   <p> The drift status of the enabled control.</p> <p>Valid values:</p> <ul> <li> <p> <code>DRIFTED</code>: The <code>enabledControl</code> deployed in this configuration doesn’t match the configuration that Amazon Web Services Control Tower expected. </p> </li> <li> <p> <code>IN_SYNC</code>: The <code>enabledControl</code> deployed in this configuration matches the configuration that Amazon Web Services Control Tower expected.</p> </li> <li> <p> <code>NOT_CHECKING</code>: Amazon Web Services Control Tower does not check drift for this enabled control. Drift is not supported for the control type.</p> </li> <li> <p> <code>UNKNOWN</code>: Amazon Web Services Control Tower is not able to check the drift status for the enabled control. </p> </li> </ul>
    #   @return [String]
    class DriftStatusSummary < Struct.new(
      :drift_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute baseline_version
    #   <p>The specific version to be enabled of the specified baseline.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <code>key-value</code> objects that specify enablement parameters, where <code>key</code> is a string and <code>value</code> is a document of any type.</p>
    #   @return [Array<Types::EnabledBaselineParameter>]
    # @!attribute baseline_identifier
    #   <p>The ARN of the baseline to be enabled.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with input to <code>EnableBaseline</code>.</p>
    #   @return [Hash<String, String>]
    class EnableBaselineInput < Struct.new(
      :baseline_version,
      :parameters,
      :baseline_identifier,
      :target_identifier,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID (in UUID format) of the asynchronous <code>EnableBaseline</code> operation. This <code>operationIdentifier</code> is used to track status through calls to the <code>GetBaselineOperation</code> API.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the <code>EnabledBaseline</code> resource.</p>
    #   @return [String]
    class EnableBaselineOutput < Struct.new(
      :operation_identifier,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_identifier
    #   <p>The ARN of the control. Only <b>Strongly recommended</b> and <b>Elective</b> controls are permitted, with the exception of the <b>Region deny</b> control. For information on how to find the <code>controlIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to be applied to the <code>EnabledControl</code> resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute parameters
    #   <p>A list of input parameter values, which are specified to configure the control when you enable it.</p>
    #   @return [Array<Types::EnabledControlParameter>]
    class EnableControlInput < Struct.new(
      :control_identifier,
      :target_identifier,
      :tags,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID of the asynchronous operation, which is used to track status. The operation is available for 90 days.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the <code>EnabledControl</code> resource.</p>
    #   @return [String]
    class EnableControlOutput < Struct.new(
      :operation_identifier,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the <code>EnabledBaseline</code> resource.</p>
    # @!attribute arn
    #   <p>The ARN of the <code>EnabledBaseline</code> resource.</p>
    #   @return [String]
    # @!attribute baseline_identifier
    #   <p>The specific <code>Baseline</code> enabled as part of the <code>EnabledBaseline</code> resource.</p>
    #   @return [String]
    # @!attribute baseline_version
    #   <p>The enabled version of the <code>Baseline</code>.</p>
    #   @return [String]
    # @!attribute drift_status_summary
    #   <p>The drift status of the enabled baseline.</p>
    #   @return [Types::EnabledBaselineDriftStatusSummary]
    # @!attribute target_identifier
    #   <p>The target on which to enable the <code>Baseline</code>.</p>
    #   @return [String]
    # @!attribute parent_identifier
    #   <p>An ARN that represents the parent <code>EnabledBaseline</code> at the Organizational Unit (OU) level, from which the child <code>EnabledBaseline</code> inherits its configuration. The value is returned by <code>GetEnabledBaseline</code>.</p>
    #   @return [String]
    # @!attribute status_summary
    #   <p>The deployment summary of an <code>EnabledControl</code> or <code>EnabledBaseline</code> resource.</p>
    #   @return [Types::EnablementStatusSummary]
    # @!attribute parameters
    #   <p>Shows the parameters that are applied when enabling this <code>Baseline</code>.</p>
    #   @return [Array<Types::EnabledBaselineParameterSummary>]
    class EnabledBaselineDetails < Struct.new(
      :arn,
      :baseline_identifier,
      :baseline_version,
      :drift_status_summary,
      :target_identifier,
      :parent_identifier,
      :status_summary,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The drift summary of the enabled baseline. Amazon Web Services Control Tower reports inheritance drift when an enabled baseline configuration of a member account is different than the configuration that applies to the OU. Amazon Web Services Control Tower reports this type of drift for a parent or child enabled baseline. One way to repair this drift by resetting the parent enabled baseline, on the OU.</p> <p>For example, you may see this type of drift if you move accounts between OUs, but the accounts are not yet (re-)enrolled.</p>
    # @!attribute types
    #   <p>The types of drift that can be detected for an enabled baseline. Amazon Web Services Control Tower detects inheritance drift on enabled baselines that apply at the OU level. </p>
    #   @return [Types::EnabledBaselineDriftTypes]
    class EnabledBaselineDriftStatusSummary < Struct.new(
      :types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The types of drift that can be detected for an enabled baseline.</p> <ul> <li> <p> Amazon Web Services Control Tower detects inheritance drift on the enabled baselines that target OUs: <code>AWSControlTowerBaseline</code> and <code>BackupBaseline</code>. </p> </li> <li> <p>Amazon Web Services Control Tower does not detect drift on the baselines that apply to your landing zone: <code>IdentityCenterBaseline</code>, <code>AuditBaseline</code>, <code>LogArchiveBaseline</code>, <code>BackupCentralVaultBaseline</code>, or <code>BackupAdminBaseline</code>. For more information, see <a href="https://docs.aws.amazon.com/controltower/latest/userguide/types-of-baselines.html">Types of baselines</a>.</p> </li> </ul> <p>Baselines enabled on an OU are inherited by its member accounts as child <code>EnabledBaseline</code> resources. The baseline on the OU serves as the parent <code>EnabledBaseline</code>, which governs the configuration of each child <code>EnabledBaseline</code>.</p> <p>If the baseline configuration of a member account in an OU does not match the configuration of the parent OU, the parent and child baseline is in a state of inheritance drift. This drift could occur in the <code>AWSControlTowerBaseline</code> or the <code>BackupBaseline</code> related to that account.</p>
    # @!attribute inheritance
    #   <p>At least one account within the target OU does not match the baseline configuration defined on that OU. An account is in inheritance drift when it does not match the configuration of a parent OU, possibly a new parent OU, if the account is moved. </p>
    #   @return [Types::EnabledBaselineInheritanceDrift]
    class EnabledBaselineDriftTypes < Struct.new(
      :inheritance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter applied on the <code>ListEnabledBaseline</code> operation. Allowed filters are <code>baselineIdentifiers</code> and <code>targetIdentifiers</code>. The filter can be applied for either, or both.</p>
    # @!attribute target_identifiers
    #   <p>Identifiers for the targets of the <code>Baseline</code> filter operation.</p>
    #   @return [Array<String>]
    # @!attribute baseline_identifiers
    #   <p>Identifiers for the <code>Baseline</code> objects returned as part of the filter operation.</p>
    #   @return [Array<String>]
    # @!attribute parent_identifiers
    #   <p>An optional filter that sets up a list of <code>parentIdentifiers</code> to filter the results of the <code>ListEnabledBaseline</code> output.</p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>A list of <code>EnablementStatus</code> items.</p>
    #   @return [Array<String>]
    # @!attribute inheritance_drift_statuses
    #   <p>A list of <code>EnabledBaselineDriftStatus</code> items for enabled baselines.</p>
    #   @return [Array<String>]
    class EnabledBaselineFilter < Struct.new(
      :target_identifiers,
      :baseline_identifiers,
      :parent_identifiers,
      :statuses,
      :inheritance_drift_statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The inheritance drift summary for the enabled baseline. Inheritance drift occurs when any accounts in the target OU do not match the baseline configuration defined on that OU. </p>
    # @!attribute status
    #   <p>The inheritance drift status for enabled baselines.</p>
    #   @return [String]
    class EnabledBaselineInheritanceDrift < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value parameter to an <code>EnabledBaseline</code> resource.</p>
    # @!attribute key
    #   <p>A string denoting the parameter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A low-level <code>Document</code> object of any type (for example, a Java Object).</p>
    #   @return [JSON]
    class EnabledBaselineParameter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of an applied parameter to an <code>EnabledBaseline</code> resource. </p>
    # @!attribute key
    #   <p>A string denoting the parameter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A low-level document object of any type (for example, a Java Object).</p>
    #   @return [JSON]
    class EnabledBaselineParameterSummary < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of information about an <code>EnabledBaseline</code> object.</p>
    # @!attribute arn
    #   <p>The ARN of the <code>EnabledBaseline</code> resource</p>
    #   @return [String]
    # @!attribute baseline_identifier
    #   <p>The specific baseline that is enabled as part of the <code>EnabledBaseline</code> resource.</p>
    #   @return [String]
    # @!attribute baseline_version
    #   <p>The enabled version of the baseline.</p>
    #   @return [String]
    # @!attribute drift_status_summary
    #   <p>The drift status of the enabled baseline.</p>
    #   @return [Types::EnabledBaselineDriftStatusSummary]
    # @!attribute target_identifier
    #   <p>The target upon which the baseline is enabled.</p>
    #   @return [String]
    # @!attribute parent_identifier
    #   <p>An ARN that represents an object returned by <code>ListEnabledBaseline</code>, to describe an enabled baseline.</p>
    #   @return [String]
    # @!attribute status_summary
    #   <p>The deployment summary of an <code>EnabledControl</code> or <code>EnabledBaseline</code> resource.</p>
    #   @return [Types::EnablementStatusSummary]
    class EnabledBaselineSummary < Struct.new(
      :arn,
      :baseline_identifier,
      :baseline_version,
      :drift_status_summary,
      :target_identifier,
      :parent_identifier,
      :status_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the enabled control.</p>
    # @!attribute arn
    #   <p>The ARN of the enabled control.</p>
    #   @return [String]
    # @!attribute control_identifier
    #   <p>The control identifier of the enabled control. For information on how to find the <code>controlIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    # @!attribute target_regions
    #   <p>Target Amazon Web Services Regions for the enabled control.</p>
    #   @return [Array<Types::Region>]
    # @!attribute status_summary
    #   <p>The deployment summary of the enabled control.</p>
    #   @return [Types::EnablementStatusSummary]
    # @!attribute drift_status_summary
    #   <p>The drift status of the enabled control.</p>
    #   @return [Types::DriftStatusSummary]
    # @!attribute parameters
    #   <p>Array of <code>EnabledControlParameter</code> objects.</p>
    #   @return [Array<Types::EnabledControlParameterSummary>]
    class EnabledControlDetails < Struct.new(
      :arn,
      :control_identifier,
      :target_identifier,
      :target_regions,
      :status_summary,
      :drift_status_summary,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that returns a set of control identifiers, the control status for each control in the set, and the drift status for each control in the set.</p>
    # @!attribute control_identifiers
    #   <p>The set of <code>controlIdentifier</code> returned by the filter. </p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>A list of <code>EnablementStatus</code> items.</p>
    #   @return [Array<String>]
    # @!attribute drift_statuses
    #   <p>A list of <code>DriftStatus</code> items.</p>
    #   @return [Array<String>]
    class EnabledControlFilter < Struct.new(
      :control_identifiers,
      :statuses,
      :drift_statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key/value pair, where <code>Key</code> is of type <code>String</code> and <code>Value</code> is of type <code>Document</code>.</p>
    # @!attribute key
    #   <p>The key of a key/value pair.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a key/value pair.</p>
    #   @return [JSON]
    class EnabledControlParameter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of information about the parameters of an enabled control.</p>
    # @!attribute key
    #   <p>The key of a key/value pair.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a key/value pair.</p>
    #   @return [JSON]
    class EnabledControlParameterSummary < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of information about an enabled control.</p>
    # @!attribute control_identifier
    #   <p>The <code>controlIdentifier</code> of the enabled control.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the enabled control.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The ARN of the organizational unit.</p>
    #   @return [String]
    # @!attribute status_summary
    #   <p>A short description of the status of the enabled control.</p>
    #   @return [Types::EnablementStatusSummary]
    # @!attribute drift_status_summary
    #   <p>The drift status of the enabled control.</p>
    #   @return [Types::DriftStatusSummary]
    class EnabledControlSummary < Struct.new(
      :control_identifier,
      :arn,
      :target_identifier,
      :status_summary,
      :drift_status_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The deployment summary of an <code>EnabledControl</code> or <code>EnabledBaseline</code> resource.</p>
    # @!attribute status
    #   <p> The deployment status of the enabled resource.</p> <p>Valid values:</p> <ul> <li> <p> <code>SUCCEEDED</code>: The <code>EnabledControl</code> or <code>EnabledBaseline</code> configuration was deployed successfully.</p> </li> <li> <p> <code>UNDER_CHANGE</code>: The <code>EnabledControl</code> or <code>EnabledBaseline</code> configuration is changing. </p> </li> <li> <p> <code>FAILED</code>: The <code>EnabledControl</code> or <code>EnabledBaseline</code> configuration failed to deploy.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_operation_identifier
    #   <p>The last operation identifier for the enabled resource.</p>
    #   @return [String]
    class EnablementStatusSummary < Struct.new(
      :status,
      :last_operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute baseline_identifier
    #   <p>The ARN of the <code>Baseline</code> resource to be retrieved.</p>
    #   @return [String]
    class GetBaselineInput < Struct.new(
      :baseline_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The operation ID returned from mutating asynchronous APIs (Enable, Disable, Update, Reset).</p>
    #   @return [String]
    class GetBaselineOperationInput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute baseline_operation
    #   <p>A <code>baselineOperation</code> object that shows information about the specified operation ID.</p>
    #   @return [Types::BaselineOperation]
    class GetBaselineOperationOutput < Struct.new(
      :baseline_operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The baseline ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-friendly name for the baseline.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the baseline.</p>
    #   @return [String]
    class GetBaselineOutput < Struct.new(
      :arn,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID of the asynchronous operation, which is used to track status. The operation is available for 90 days.</p>
    #   @return [String]
    class GetControlOperationInput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_operation
    #   <p>An operation performed by the control.</p>
    #   @return [Types::ControlOperation]
    class GetControlOperationOutput < Struct.new(
      :control_operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_baseline_identifier
    #   <p>Identifier of the <code>EnabledBaseline</code> resource to be retrieved, in ARN format.</p>
    #   @return [String]
    class GetEnabledBaselineInput < Struct.new(
      :enabled_baseline_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_baseline_details
    #   <p>Details of the <code>EnabledBaseline</code> resource.</p>
    #   @return [Types::EnabledBaselineDetails]
    class GetEnabledBaselineOutput < Struct.new(
      :enabled_baseline_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_control_identifier
    #   <p>The <code>controlIdentifier</code> of the enabled control.</p>
    #   @return [String]
    class GetEnabledControlInput < Struct.new(
      :enabled_control_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_control_details
    #   <p>Information about the enabled control.</p>
    #   @return [Types::EnabledControlDetails]
    class GetEnabledControlOutput < Struct.new(
      :enabled_control_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    #   @return [String]
    class GetLandingZoneInput < Struct.new(
      :landing_zone_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>A unique identifier assigned to a landing zone operation.</p>
    #   @return [String]
    class GetLandingZoneOperationInput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_details
    #   <p>Details about a landing zone operation.</p>
    #   @return [Types::LandingZoneOperationDetail]
    class GetLandingZoneOperationOutput < Struct.new(
      :operation_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute landing_zone
    #   <p>Information about the landing zone.</p>
    #   @return [Types::LandingZoneDetail]
    class GetLandingZoneOutput < Struct.new(
      :landing_zone,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during processing of a request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the landing zone.</p>
    # @!attribute version
    #   <p>The landing zone's current deployed version.</p>
    #   @return [String]
    # @!attribute manifest
    #   <p>The landing zone manifest JSON text file that specifies the landing zone configurations. </p>
    #   @return [JSON]
    # @!attribute arn
    #   <p>The ARN of the landing zone.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The landing zone deployment status. One of <code>ACTIVE</code>, <code>PROCESSING</code>, <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute latest_available_version
    #   <p>The latest available version of the landing zone.</p>
    #   @return [String]
    # @!attribute drift_status
    #   <p>The drift status of the landing zone.</p>
    #   @return [Types::LandingZoneDriftStatusSummary]
    class LandingZoneDetail < Struct.new(
      :version,
      :manifest,
      :arn,
      :status,
      :latest_available_version,
      :drift_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The drift status summary of the landing zone. </p> <p>If the landing zone differs from the expected configuration, it is defined to be in a state of drift. You can repair this drift by resetting the landing zone.</p>
    # @!attribute status
    #   <p>The drift status of the landing zone. </p> <p>Valid values:</p> <ul> <li> <p> <code>DRIFTED</code>: The landing zone deployed in this configuration does not match the configuration that Amazon Web Services Control Tower expected. </p> </li> <li> <p> <code>IN_SYNC</code>: The landing zone deployed in this configuration matches the configuration that Amazon Web Services Control Tower expected. </p> </li> </ul>
    #   @return [String]
    class LandingZoneDriftStatusSummary < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a landing zone operation.</p>
    # @!attribute operation_type
    #   <p>The landing zone operation type. </p> <p>Valid values:</p> <ul> <li> <p> <code>DELETE</code>: The <code>DeleteLandingZone</code> operation. </p> </li> <li> <p> <code>CREATE</code>: The <code>CreateLandingZone</code> operation. </p> </li> <li> <p> <code>UPDATE</code>: The <code>UpdateLandingZone</code> operation. </p> </li> <li> <p> <code>RESET</code>: The <code>ResetLandingZone</code> operation. </p> </li> </ul>
    #   @return [String]
    # @!attribute operation_identifier
    #   <p>The <code>operationIdentifier</code> of the landing zone operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Valid values:</p> <ul> <li> <p> <code>SUCCEEDED</code>: The landing zone operation succeeded. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The landing zone operation is in progress. </p> </li> <li> <p> <code>FAILED</code>: The landing zone operation failed. </p> </li> </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The landing zone operation start time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The landing zone operation end time.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>If the operation result is FAILED, this string contains a message explaining why the operation failed.</p>
    #   @return [String]
    class LandingZoneOperationDetail < Struct.new(
      :operation_type,
      :operation_identifier,
      :status,
      :start_time,
      :end_time,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter object that lets you call <code>ListLandingZoneOperations</code> with a specific filter.</p>
    # @!attribute types
    #   <p>The set of landing zone operation types selected by the filter.</p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>The statuses of the set of landing zone operations selected by the filter.</p>
    #   @return [Array<String>]
    class LandingZoneOperationFilter < Struct.new(
      :types,
      :statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of information about a landing zone operation.</p>
    # @!attribute operation_type
    #   <p>The type of the landing zone operation.</p>
    #   @return [String]
    # @!attribute operation_identifier
    #   <p>The <code>operationIdentifier</code> of the landing zone operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the landing zone operation.</p>
    #   @return [String]
    class LandingZoneOperationSummary < Struct.new(
      :operation_type,
      :operation_identifier,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a summary of information about a landing zone.</p>
    # @!attribute arn
    #   <p>The ARN of the landing zone.</p>
    #   @return [String]
    class LandingZoneSummary < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be shown.</p>
    #   @return [Integer]
    class ListBaselinesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute baselines
    #   <p>A list of <code>Baseline</code> object details.</p>
    #   @return [Array<Types::BaselineSummary>]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    class ListBaselinesOutput < Struct.new(
      :baselines,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>An input filter for the <code>ListControlOperations</code> API that lets you select the types of control operations to view.</p>
    #   @return [Types::ControlOperationFilter]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be shown.</p>
    #   @return [Integer]
    class ListControlOperationsInput < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_operations
    #   <p>Returns a list of output from control operations. </p>
    #   @return [Array<Types::ControlOperationSummary>]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    class ListControlOperationsOutput < Struct.new(
      :control_operations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A filter applied on the <code>ListEnabledBaseline</code> operation. Allowed filters are <code>baselineIdentifiers</code> and <code>targetIdentifiers</code>. The filter can be applied for either, or both.</p>
    #   @return [Types::EnabledBaselineFilter]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be shown.</p>
    #   @return [Integer]
    # @!attribute include_children
    #   <p>A value that can be set to include the child enabled baselines in responses. The default value is false.</p>
    #   @return [Boolean]
    class ListEnabledBaselinesInput < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :include_children,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_baselines
    #   <p>Retuens a list of summaries of <code>EnabledBaseline</code> resources.</p>
    #   @return [Array<Types::EnabledBaselineSummary>]
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #   @return [String]
    class ListEnabledBaselinesOutput < Struct.new(
      :enabled_baselines,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_identifier
    #   <p>The ARN of the organizational unit. For information on how to find the <code>targetIdentifier</code>, see <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html">the overview page</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to continue the list from a previous API call with the same parameters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>How many results to return per API call.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>An input filter for the <code>ListEnabledControls</code> API that lets you select the types of control operations to view.</p>
    #   @return [Types::EnabledControlFilter]
    class ListEnabledControlsInput < Struct.new(
      :target_identifier,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_controls
    #   <p>Lists the controls enabled by Amazon Web Services Control Tower on the specified organizational unit and the accounts it contains.</p>
    #   @return [Array<Types::EnabledControlSummary>]
    # @!attribute next_token
    #   <p>Retrieves the next page of results. If the string is empty, the response is the end of the results.</p>
    #   @return [String]
    class ListEnabledControlsOutput < Struct.new(
      :enabled_controls,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>An input filter for the <code>ListLandingZoneOperations</code> API that lets you select the types of landing zone operations to view.</p>
    #   @return [Types::LandingZoneOperationFilter]
    # @!attribute next_token
    #   <p>The token to continue the list from a previous API call with the same parameters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>How many results to return per API call.</p>
    #   @return [Integer]
    class ListLandingZoneOperationsInput < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute landing_zone_operations
    #   <p>Lists landing zone operations.</p>
    #   @return [Array<Types::LandingZoneOperationSummary>]
    # @!attribute next_token
    #   <p>Retrieves the next page of results. If the string is empty, the response is the end of the results.</p>
    #   @return [String]
    class ListLandingZoneOperationsOutput < Struct.new(
      :landing_zone_operations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to continue the list from a previous API call with the same parameters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of returned landing zone ARNs, which is one.</p>
    #   @return [Integer]
    class ListLandingZonesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute landing_zones
    #   <p>The ARN of the landing zone.</p>
    #   @return [Array<Types::LandingZoneSummary>]
    # @!attribute next_token
    #   <p>Retrieves the next page of results. If the string is empty, the response is the end of the results.</p>
    #   @return [String]
    class ListLandingZonesOutput < Struct.new(
      :landing_zones,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags, as <code>key:value</code> strings.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon Web Services Region in which Amazon Web Services Control Tower expects to find the control deployed. </p> <p>The expected Regions are based on the Regions that are governed by the landing zone. In certain cases, a control is not actually enabled in the Region as expected, such as during drift, or <a href="https://docs.aws.amazon.com/controltower/latest/userguide/region-how.html#mixed-governance">mixed governance</a>.</p>
    # @!attribute name
    #   <p>The Amazon Web Services Region name.</p>
    #   @return [String]
    class Region < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_baseline_identifier
    #   <p>Specifies the ID of the <code>EnabledBaseline</code> resource to be re-enabled, in ARN format.</p>
    #   @return [String]
    class ResetEnabledBaselineInput < Struct.new(
      :enabled_baseline_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID (in UUID format) of the asynchronous <code>ResetEnabledBaseline</code> operation. This <code>operationIdentifier</code> is used to track status through calls to the <code>GetBaselineOperation</code> API.</p>
    #   @return [String]
    class ResetEnabledBaselineOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_control_identifier
    #   <p>The ARN of the enabled control to be reset.</p>
    #   @return [String]
    class ResetEnabledControlInput < Struct.new(
      :enabled_control_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p> The operation identifier for this <code>ResetEnabledControl</code> operation. </p>
    #   @return [String]
    class ResetEnabledControlOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    #   @return [String]
    class ResetLandingZoneInput < Struct.new(
      :landing_zone_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>A unique identifier assigned to a <code>ResetLandingZone</code> operation. You can use this identifier as an input parameter of <code>GetLandingZoneOperation</code> to check the operation's status.</p>
    #   @return [String]
    class ResetLandingZoneOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded. The limit is 100 concurrent operations.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to be applied to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The ID of the service that is associated with the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute baseline_version
    #   <p>Specifies the new <code>Baseline</code> version, to which the <code>EnabledBaseline</code> should be updated.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Parameters to apply when making an update.</p>
    #   @return [Array<Types::EnabledBaselineParameter>]
    # @!attribute enabled_baseline_identifier
    #   <p>Specifies the <code>EnabledBaseline</code> resource to be updated.</p>
    #   @return [String]
    class UpdateEnabledBaselineInput < Struct.new(
      :baseline_version,
      :parameters,
      :enabled_baseline_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>The ID (in UUID format) of the asynchronous <code>UpdateEnabledBaseline</code> operation. This <code>operationIdentifier</code> is used to track status through calls to the <code>GetBaselineOperation</code> API.</p>
    #   @return [String]
    class UpdateEnabledBaselineOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameters
    #   <p>A key/value pair, where <code>Key</code> is of type <code>String</code> and <code>Value</code> is of type <code>Document</code>.</p>
    #   @return [Array<Types::EnabledControlParameter>]
    # @!attribute enabled_control_identifier
    #   <p> The ARN of the enabled control that will be updated. </p>
    #   @return [String]
    class UpdateEnabledControlInput < Struct.new(
      :parameters,
      :enabled_control_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p> The operation identifier for this <code>UpdateEnabledControl</code> operation. </p>
    #   @return [String]
    class UpdateEnabledControlOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>The landing zone version, for example, 3.2.</p>
    #   @return [String]
    # @!attribute manifest
    #   <p>The manifest file (JSON) is a text file that describes your Amazon Web Services resources. For an example, review <a href="https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch">Launch your landing zone</a>. The example manifest file contains each of the available parameters. The schema for the landing zone's JSON manifest file is not published, by design.</p>
    #   @return [JSON]
    # @!attribute landing_zone_identifier
    #   <p>The unique identifier of the landing zone.</p>
    #   @return [String]
    class UpdateLandingZoneInput < Struct.new(
      :version,
      :manifest,
      :landing_zone_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_identifier
    #   <p>A unique identifier assigned to a <code>UpdateLandingZone</code> operation. You can use this identifier as an input of <code>GetLandingZoneOperation</code> to check the operation's status.</p>
    #   @return [String]
    class UpdateLandingZoneOutput < Struct.new(
      :operation_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
