# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ControlTower
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object of shape `BaselineOperation`, returning details about the
    # specified `Baseline` operation ID.
    #
    # @!attribute [rw] operation_identifier
    #   The identifier of the specified operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   An enumerated type (`enum`) with possible values of
    #   `ENABLE_BASELINE`, `DISABLE_BASELINE`, `UPDATE_ENABLED_BASELINE`, or
    #   `RESET_ENABLED_BASELINE`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An enumerated type (`enum`) with possible values of `SUCCEEDED`,
    #   `FAILED`, or `IN_PROGRESS`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the operation, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the operation (if applicable), in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   A status message that gives more information about the operation's
    #   status, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/BaselineOperation AWS API Documentation
    #
    class BaselineOperation < Struct.new(
      :operation_identifier,
      :operation_type,
      :status,
      :start_time,
      :end_time,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a summary of information about a `Baseline` object.
    #
    # @!attribute [rw] arn
    #   The full ARN of a Baseline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of a Baseline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A summary description of a Baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/BaselineSummary AWS API Documentation
    #
    class BaselineSummary < Struct.new(
      :arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting the resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An operation performed by the control.
    #
    # @!attribute [rw] operation_type
    #   One of `ENABLE_CONTROL` or `DISABLE_CONTROL`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the operation began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the operation finished.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   One of `IN_PROGRESS`, `SUCEEDED`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the operation result is `FAILED`, this string contains a message
    #   explaining why the operation failed.
    #   @return [String]
    #
    # @!attribute [rw] operation_identifier
    #   The identifier of the specified operation.
    #   @return [String]
    #
    # @!attribute [rw] control_identifier
    #   The `controlIdentifier` of the control for the operation.
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The target upon which the control operation is working.
    #   @return [String]
    #
    # @!attribute [rw] enabled_control_identifier
    #   The `controlIdentifier` of the enabled control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ControlOperation AWS API Documentation
    #
    class ControlOperation < Struct.new(
      :operation_type,
      :start_time,
      :end_time,
      :status,
      :status_message,
      :operation_identifier,
      :control_identifier,
      :target_identifier,
      :enabled_control_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter object that lets you call `ListControlOperations` with a
    # specific filter.
    #
    # @!attribute [rw] control_identifiers
    #   The set of `controlIdentifier` returned by the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_identifiers
    #   The set of `targetIdentifier` objects returned by the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled_control_identifiers
    #   The set `controlIdentifier` of enabled controls selected by the
    #   filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   Lists the status of control operations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] control_operation_types
    #   The set of `ControlOperation` objects returned by the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ControlOperationFilter AWS API Documentation
    #
    class ControlOperationFilter < Struct.new(
      :control_identifiers,
      :target_identifiers,
      :enabled_control_identifiers,
      :statuses,
      :control_operation_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about the specified control operation.
    #
    # @!attribute [rw] operation_type
    #   The type of operation.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which a control operation began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the control operation was completed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the specified control operation.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A speficic message displayed as part of the control status.
    #   @return [String]
    #
    # @!attribute [rw] operation_identifier
    #   The unique identifier of a control operation.
    #   @return [String]
    #
    # @!attribute [rw] control_identifier
    #   The `controlIdentifier` of a control.
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The unique identifier of the target of a control operation.
    #   @return [String]
    #
    # @!attribute [rw] enabled_control_identifier
    #   The `controlIdentifier` of an enabled control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ControlOperationSummary AWS API Documentation
    #
    class ControlOperationSummary < Struct.new(
      :operation_type,
      :start_time,
      :end_time,
      :status,
      :status_message,
      :operation_identifier,
      :control_identifier,
      :target_identifier,
      :enabled_control_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The landing zone version, for example, 3.0.
    #   @return [String]
    #
    # @!attribute [rw] remediation_types
    #   Specifies the types of remediation actions to apply when creating
    #   the landing zone, such as automatic drift correction or compliance
    #   enforcement.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags to be applied to the landing zone.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] manifest
    #   The manifest JSON file is a text file that describes your Amazon Web
    #   Services resources. For examples, review [Launch your landing
    #   zone][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/CreateLandingZoneInput AWS API Documentation
    #
    class CreateLandingZoneInput < Struct.new(
      :version,
      :remediation_types,
      :tags,
      :manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the landing zone resource.
    #   @return [String]
    #
    # @!attribute [rw] operation_identifier
    #   A unique identifier assigned to a `CreateLandingZone` operation. You
    #   can use this identifier as an input of `GetLandingZoneOperation` to
    #   check the operation's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/CreateLandingZoneOutput AWS API Documentation
    #
    class CreateLandingZoneOutput < Struct.new(
      :arn,
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] landing_zone_identifier
    #   The unique identifier of the landing zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DeleteLandingZoneInput AWS API Documentation
    #
    class DeleteLandingZoneInput < Struct.new(
      :landing_zone_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   &gt;A unique identifier assigned to a `DeleteLandingZone` operation.
    #   You can use this identifier as an input parameter of
    #   `GetLandingZoneOperation` to check the operation's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DeleteLandingZoneOutput AWS API Documentation
    #
    class DeleteLandingZoneOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_baseline_identifier
    #   Identifier of the `EnabledBaseline` resource to be deactivated, in
    #   ARN format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableBaselineInput AWS API Documentation
    #
    class DisableBaselineInput < Struct.new(
      :enabled_baseline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID (in UUID format) of the asynchronous `DisableBaseline`
    #   operation. This `operationIdentifier` is used to track status
    #   through calls to the `GetBaselineOperation` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableBaselineOutput AWS API Documentation
    #
    class DisableBaselineOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_identifier
    #   The ARN of the control. Only **Strongly recommended** and
    #   **Elective** controls are permitted, with the exception of the
    #   **Region deny** control. For information on how to find the
    #   `controlIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The ARN of the organizational unit. For information on how to find
    #   the `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] enabled_control_identifier
    #   The ARN of the enabled control to be disabled, which uniquely
    #   identifies the control instance on the target organizational unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableControlInput AWS API Documentation
    #
    class DisableControlInput < Struct.new(
      :control_identifier,
      :target_identifier,
      :enabled_control_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID of the asynchronous operation, which is used to track status.
    #   The operation is available for 90 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableControlOutput AWS API Documentation
    #
    class DisableControlOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The drift summary of the enabled control.
    #
    # Amazon Web Services Control Tower expects the enabled control
    # configuration to include all supported and governed Regions. If the
    # enabled control differs from the expected configuration, it is defined
    # to be in a state of drift. You can repair this drift by resetting the
    # enabled control.
    #
    # @!attribute [rw] drift_status
    #   The drift status of the enabled control.
    #
    #   Valid values:
    #
    #   * `DRIFTED`: The `enabledControl` deployed in this configuration
    #     doesn’t match the configuration that Amazon Web Services Control
    #     Tower expected.
    #
    #   * `IN_SYNC`: The `enabledControl` deployed in this configuration
    #     matches the configuration that Amazon Web Services Control Tower
    #     expected.
    #
    #   * `NOT_CHECKING`: Amazon Web Services Control Tower does not check
    #     drift for this enabled control. Drift is not supported for the
    #     control type.
    #
    #   * `UNKNOWN`: Amazon Web Services Control Tower is not able to check
    #     the drift status for the enabled control.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   An object that categorizes the different types of drift detected for
    #   the enabled control.
    #   @return [Types::EnabledControlDriftTypes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DriftStatusSummary AWS API Documentation
    #
    class DriftStatusSummary < Struct.new(
      :drift_status,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_version
    #   The specific version to be enabled of the specified baseline.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `key-value` objects that specify enablement parameters,
    #   where `key` is a string and `value` is a document of any type.
    #   @return [Array<Types::EnabledBaselineParameter>]
    #
    # @!attribute [rw] baseline_identifier
    #   The ARN of the baseline to be enabled.
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The ARN of the target on which the baseline will be enabled. Only
    #   OUs are supported as targets.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with input to `EnableBaseline`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableBaselineInput AWS API Documentation
    #
    class EnableBaselineInput < Struct.new(
      :baseline_version,
      :parameters,
      :baseline_identifier,
      :target_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID (in UUID format) of the asynchronous `EnableBaseline`
    #   operation. This `operationIdentifier` is used to track status
    #   through calls to the `GetBaselineOperation` API.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the `EnabledBaseline` resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableBaselineOutput AWS API Documentation
    #
    class EnableBaselineOutput < Struct.new(
      :operation_identifier,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_identifier
    #   The ARN of the control. Only **Strongly recommended** and
    #   **Elective** controls are permitted, with the exception of the
    #   **Region deny** control. For information on how to find the
    #   `controlIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The ARN of the organizational unit. For information on how to find
    #   the `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be applied to the `EnabledControl` resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] parameters
    #   A list of input parameter values, which are specified to configure
    #   the control when you enable it.
    #   @return [Array<Types::EnabledControlParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControlInput AWS API Documentation
    #
    class EnableControlInput < Struct.new(
      :control_identifier,
      :target_identifier,
      :tags,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID of the asynchronous operation, which is used to track status.
    #   The operation is available for 90 days.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the `EnabledControl` resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControlOutput AWS API Documentation
    #
    class EnableControlOutput < Struct.new(
      :operation_identifier,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the `EnabledBaseline` resource.
    #
    # @!attribute [rw] arn
    #   The ARN of the `EnabledBaseline` resource.
    #   @return [String]
    #
    # @!attribute [rw] baseline_identifier
    #   The specific `Baseline` enabled as part of the `EnabledBaseline`
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] baseline_version
    #   The enabled version of the `Baseline`.
    #   @return [String]
    #
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled baseline.
    #   @return [Types::EnabledBaselineDriftStatusSummary]
    #
    # @!attribute [rw] target_identifier
    #   The target on which to enable the `Baseline`.
    #   @return [String]
    #
    # @!attribute [rw] parent_identifier
    #   An ARN that represents the parent `EnabledBaseline` at the
    #   Organizational Unit (OU) level, from which the child
    #   `EnabledBaseline` inherits its configuration. The value is returned
    #   by `GetEnabledBaseline`.
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   The deployment summary of an `EnabledControl` or `EnabledBaseline`
    #   resource.
    #   @return [Types::EnablementStatusSummary]
    #
    # @!attribute [rw] parameters
    #   Shows the parameters that are applied when enabling this `Baseline`.
    #   @return [Array<Types::EnabledBaselineParameterSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineDetails AWS API Documentation
    #
    class EnabledBaselineDetails < Struct.new(
      :arn,
      :baseline_identifier,
      :baseline_version,
      :drift_status_summary,
      :target_identifier,
      :parent_identifier,
      :status_summary,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The drift summary of the enabled baseline. Amazon Web Services Control
    # Tower reports inheritance drift when an enabled baseline configuration
    # of a member account is different than the configuration that applies
    # to the OU. Amazon Web Services Control Tower reports this type of
    # drift for a parent or child enabled baseline. One way to repair this
    # drift by resetting the parent enabled baseline, on the OU.
    #
    # For example, you may see this type of drift if you move accounts
    # between OUs, but the accounts are not yet (re-)enrolled.
    #
    # @!attribute [rw] types
    #   The types of drift that can be detected for an enabled baseline.
    #   Amazon Web Services Control Tower detects inheritance drift on
    #   enabled baselines that apply at the OU level.
    #   @return [Types::EnabledBaselineDriftTypes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineDriftStatusSummary AWS API Documentation
    #
    class EnabledBaselineDriftStatusSummary < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The types of drift that can be detected for an enabled baseline.
    #
    # * Amazon Web Services Control Tower detects inheritance drift on the
    #   enabled baselines that target OUs: `AWSControlTowerBaseline` and
    #   `BackupBaseline`.
    #
    # * Amazon Web Services Control Tower does not detect drift on the
    #   baselines that apply to your landing zone: `IdentityCenterBaseline`,
    #   `AuditBaseline`, `LogArchiveBaseline`, `BackupCentralVaultBaseline`,
    #   or `BackupAdminBaseline`. For more information, see [Types of
    #   baselines][1].
    #
    # Baselines enabled on an OU are inherited by its member accounts as
    # child `EnabledBaseline` resources. The baseline on the OU serves as
    # the parent `EnabledBaseline`, which governs the configuration of each
    # child `EnabledBaseline`.
    #
    # If the baseline configuration of a member account in an OU does not
    # match the configuration of the parent OU, the parent and child
    # baseline is in a state of inheritance drift. This drift could occur in
    # the `AWSControlTowerBaseline` or the `BackupBaseline` related to that
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/types-of-baselines.html
    #
    # @!attribute [rw] inheritance
    #   At least one account within the target OU does not match the
    #   baseline configuration defined on that OU. An account is in
    #   inheritance drift when it does not match the configuration of a
    #   parent OU, possibly a new parent OU, if the account is moved.
    #   @return [Types::EnabledBaselineInheritanceDrift]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineDriftTypes AWS API Documentation
    #
    class EnabledBaselineDriftTypes < Struct.new(
      :inheritance)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter applied on the `ListEnabledBaseline` operation. Allowed
    # filters are `baselineIdentifiers` and `targetIdentifiers`. The filter
    # can be applied for either, or both.
    #
    # @!attribute [rw] target_identifiers
    #   Identifiers for the targets of the `Baseline` filter operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] baseline_identifiers
    #   Identifiers for the `Baseline` objects returned as part of the
    #   filter operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_identifiers
    #   An optional filter that sets up a list of `parentIdentifiers` to
    #   filter the results of the `ListEnabledBaseline` output.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   A list of `EnablementStatus` items.
    #   @return [Array<String>]
    #
    # @!attribute [rw] inheritance_drift_statuses
    #   A list of `EnabledBaselineDriftStatus` items for enabled baselines.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineFilter AWS API Documentation
    #
    class EnabledBaselineFilter < Struct.new(
      :target_identifiers,
      :baseline_identifiers,
      :parent_identifiers,
      :statuses,
      :inheritance_drift_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inheritance drift summary for the enabled baseline. Inheritance
    # drift occurs when any accounts in the target OU do not match the
    # baseline configuration defined on that OU.
    #
    # @!attribute [rw] status
    #   The inheritance drift status for enabled baselines.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineInheritanceDrift AWS API Documentation
    #
    class EnabledBaselineInheritanceDrift < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value parameter to an `EnabledBaseline` resource.
    #
    # @!attribute [rw] key
    #   A string denoting the parameter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A low-level `Document` object of any type (for example, a Java
    #   Object).
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineParameter AWS API Documentation
    #
    class EnabledBaselineParameter < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an applied parameter to an `EnabledBaseline` resource.
    #
    # @!attribute [rw] key
    #   A string denoting the parameter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A low-level document object of any type (for example, a Java
    #   Object).
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineParameterSummary AWS API Documentation
    #
    class EnabledBaselineParameterSummary < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a summary of information about an `EnabledBaseline` object.
    #
    # @!attribute [rw] arn
    #   The ARN of the `EnabledBaseline` resource
    #   @return [String]
    #
    # @!attribute [rw] baseline_identifier
    #   The specific baseline that is enabled as part of the
    #   `EnabledBaseline` resource.
    #   @return [String]
    #
    # @!attribute [rw] baseline_version
    #   The enabled version of the baseline.
    #   @return [String]
    #
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled baseline.
    #   @return [Types::EnabledBaselineDriftStatusSummary]
    #
    # @!attribute [rw] target_identifier
    #   The target upon which the baseline is enabled.
    #   @return [String]
    #
    # @!attribute [rw] parent_identifier
    #   An ARN that represents an object returned by `ListEnabledBaseline`,
    #   to describe an enabled baseline.
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   The deployment summary of an `EnabledControl` or `EnabledBaseline`
    #   resource.
    #   @return [Types::EnablementStatusSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledBaselineSummary AWS API Documentation
    #
    class EnabledBaselineSummary < Struct.new(
      :arn,
      :baseline_identifier,
      :baseline_version,
      :drift_status_summary,
      :target_identifier,
      :parent_identifier,
      :status_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the enabled control.
    #
    # @!attribute [rw] arn
    #   The ARN of the enabled control.
    #   @return [String]
    #
    # @!attribute [rw] control_identifier
    #   The control identifier of the enabled control. For information on
    #   how to find the `controlIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The ARN of the organizational unit. For information on how to find
    #   the `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   The deployment summary of the enabled control.
    #   @return [Types::EnablementStatusSummary]
    #
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled control.
    #   @return [Types::DriftStatusSummary]
    #
    # @!attribute [rw] parent_identifier
    #   The ARN of the parent enabled control from which this control
    #   inherits its configuration, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] target_regions
    #   Target Amazon Web Services Regions for the enabled control.
    #   @return [Array<Types::Region>]
    #
    # @!attribute [rw] parameters
    #   Array of `EnabledControlParameter` objects.
    #   @return [Array<Types::EnabledControlParameterSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlDetails AWS API Documentation
    #
    class EnabledControlDetails < Struct.new(
      :arn,
      :control_identifier,
      :target_identifier,
      :status_summary,
      :drift_status_summary,
      :parent_identifier,
      :target_regions,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the various categories of drift that can occur for an enabled
    # control resource.
    #
    # @!attribute [rw] inheritance
    #   Indicates drift related to inheritance configuration between parent
    #   and child controls.
    #   @return [Types::EnabledControlInheritanceDrift]
    #
    # @!attribute [rw] resource
    #   Indicates drift related to the underlying Amazon Web Services
    #   resources managed by the control.
    #   @return [Types::EnabledControlResourceDrift]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlDriftTypes AWS API Documentation
    #
    class EnabledControlDriftTypes < Struct.new(
      :inheritance,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that returns a set of control identifiers, the control
    # status for each control in the set, and the drift status for each
    # control in the set.
    #
    # @!attribute [rw] control_identifiers
    #   The set of `controlIdentifier` returned by the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   A list of `EnablementStatus` items.
    #   @return [Array<String>]
    #
    # @!attribute [rw] drift_statuses
    #   A list of `DriftStatus` items.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_identifiers
    #   Filters enabled controls by their parent control identifiers,
    #   allowing you to find child controls of specific parent controls.
    #   @return [Array<String>]
    #
    # @!attribute [rw] inheritance_drift_statuses
    #   Filters enabled controls by their inheritance drift status, allowing
    #   you to find controls with specific inheritance-related drift
    #   conditions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_drift_statuses
    #   Filters enabled controls by their resource drift status, allowing
    #   you to find controls with specific resource-related drift
    #   conditions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlFilter AWS API Documentation
    #
    class EnabledControlFilter < Struct.new(
      :control_identifiers,
      :statuses,
      :drift_statuses,
      :parent_identifiers,
      :inheritance_drift_statuses,
      :resource_drift_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents drift information related to control inheritance between
    # organizational units.
    #
    # @!attribute [rw] status
    #   The status of inheritance drift for the enabled control, indicating
    #   whether inheritance configuration matches expectations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlInheritanceDrift AWS API Documentation
    #
    class EnabledControlInheritanceDrift < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key/value pair, where `Key` is of type `String` and `Value` is of
    # type `Document`.
    #
    # @!attribute [rw] key
    #   The key of a key/value pair.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a key/value pair.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlParameter AWS API Documentation
    #
    class EnabledControlParameter < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a summary of information about the parameters of an enabled
    # control.
    #
    # @!attribute [rw] key
    #   The key of a key/value pair.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a key/value pair.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlParameterSummary AWS API Documentation
    #
    class EnabledControlParameterSummary < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents drift information related to the underlying Amazon Web
    # Services resources managed by the control.
    #
    # @!attribute [rw] status
    #   The status of resource drift for the enabled control, indicating
    #   whether the underlying resources match the expected configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlResourceDrift AWS API Documentation
    #
    class EnabledControlResourceDrift < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a summary of information about an enabled control.
    #
    # @!attribute [rw] arn
    #   The ARN of the enabled control.
    #   @return [String]
    #
    # @!attribute [rw] control_identifier
    #   The `controlIdentifier` of the enabled control.
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The ARN of the organizational unit.
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   A short description of the status of the enabled control.
    #   @return [Types::EnablementStatusSummary]
    #
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled control.
    #   @return [Types::DriftStatusSummary]
    #
    # @!attribute [rw] parent_identifier
    #   The ARN of the parent enabled control from which this control
    #   inherits its configuration, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlSummary AWS API Documentation
    #
    class EnabledControlSummary < Struct.new(
      :arn,
      :control_identifier,
      :target_identifier,
      :status_summary,
      :drift_status_summary,
      :parent_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment summary of an `EnabledControl` or `EnabledBaseline`
    # resource.
    #
    # @!attribute [rw] status
    #   The deployment status of the enabled resource.
    #
    #   Valid values:
    #
    #   * `SUCCEEDED`: The `EnabledControl` or `EnabledBaseline`
    #     configuration was deployed successfully.
    #
    #   * `UNDER_CHANGE`: The `EnabledControl` or `EnabledBaseline`
    #     configuration is changing.
    #
    #   * `FAILED`: The `EnabledControl` or `EnabledBaseline` configuration
    #     failed to deploy.
    #   @return [String]
    #
    # @!attribute [rw] last_operation_identifier
    #   The last operation identifier for the enabled resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnablementStatusSummary AWS API Documentation
    #
    class EnablementStatusSummary < Struct.new(
      :status,
      :last_operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_identifier
    #   The ARN of the `Baseline` resource to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetBaselineInput AWS API Documentation
    #
    class GetBaselineInput < Struct.new(
      :baseline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The operation ID returned from mutating asynchronous APIs (Enable,
    #   Disable, Update, Reset).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetBaselineOperationInput AWS API Documentation
    #
    class GetBaselineOperationInput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_operation
    #   A `baselineOperation` object that shows information about the
    #   specified operation ID.
    #   @return [Types::BaselineOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetBaselineOperationOutput AWS API Documentation
    #
    class GetBaselineOperationOutput < Struct.new(
      :baseline_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The baseline ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name for the baseline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetBaselineOutput AWS API Documentation
    #
    class GetBaselineOutput < Struct.new(
      :arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID of the asynchronous operation, which is used to track status.
    #   The operation is available for 90 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetControlOperationInput AWS API Documentation
    #
    class GetControlOperationInput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_operation
    #   An operation performed by the control.
    #   @return [Types::ControlOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetControlOperationOutput AWS API Documentation
    #
    class GetControlOperationOutput < Struct.new(
      :control_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_baseline_identifier
    #   Identifier of the `EnabledBaseline` resource to be retrieved, in ARN
    #   format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledBaselineInput AWS API Documentation
    #
    class GetEnabledBaselineInput < Struct.new(
      :enabled_baseline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_baseline_details
    #   Details of the `EnabledBaseline` resource.
    #   @return [Types::EnabledBaselineDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledBaselineOutput AWS API Documentation
    #
    class GetEnabledBaselineOutput < Struct.new(
      :enabled_baseline_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_control_identifier
    #   The `controlIdentifier` of the enabled control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledControlInput AWS API Documentation
    #
    class GetEnabledControlInput < Struct.new(
      :enabled_control_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_control_details
    #   Information about the enabled control.
    #   @return [Types::EnabledControlDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledControlOutput AWS API Documentation
    #
    class GetEnabledControlOutput < Struct.new(
      :enabled_control_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] landing_zone_identifier
    #   The unique identifier of the landing zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZoneInput AWS API Documentation
    #
    class GetLandingZoneInput < Struct.new(
      :landing_zone_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   A unique identifier assigned to a landing zone operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZoneOperationInput AWS API Documentation
    #
    class GetLandingZoneOperationInput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_details
    #   Details about a landing zone operation.
    #   @return [Types::LandingZoneOperationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZoneOperationOutput AWS API Documentation
    #
    class GetLandingZoneOperationOutput < Struct.new(
      :operation_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] landing_zone
    #   Information about the landing zone.
    #   @return [Types::LandingZoneDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZoneOutput AWS API Documentation
    #
    class GetLandingZoneOutput < Struct.new(
      :landing_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during processing of a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the landing zone.
    #
    # @!attribute [rw] version
    #   The landing zone's current deployed version.
    #   @return [String]
    #
    # @!attribute [rw] remediation_types
    #   The types of remediation actions configured for the landing zone,
    #   such as automatic drift correction or compliance enforcement.
    #   @return [Array<String>]
    #
    # @!attribute [rw] arn
    #   The ARN of the landing zone.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The landing zone deployment status. One of `ACTIVE`, `PROCESSING`,
    #   `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] latest_available_version
    #   The latest available version of the landing zone.
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   The drift status of the landing zone.
    #   @return [Types::LandingZoneDriftStatusSummary]
    #
    # @!attribute [rw] manifest
    #   The landing zone manifest JSON text file that specifies the landing
    #   zone configurations.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneDetail AWS API Documentation
    #
    class LandingZoneDetail < Struct.new(
      :version,
      :remediation_types,
      :arn,
      :status,
      :latest_available_version,
      :drift_status,
      :manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # The drift status summary of the landing zone.
    #
    # If the landing zone differs from the expected configuration, it is
    # defined to be in a state of drift. You can repair this drift by
    # resetting the landing zone.
    #
    # @!attribute [rw] status
    #   The drift status of the landing zone.
    #
    #   Valid values:
    #
    #   * `DRIFTED`: The landing zone deployed in this configuration does
    #     not match the configuration that Amazon Web Services Control Tower
    #     expected.
    #
    #   * `IN_SYNC`: The landing zone deployed in this configuration matches
    #     the configuration that Amazon Web Services Control Tower expected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneDriftStatusSummary AWS API Documentation
    #
    class LandingZoneDriftStatusSummary < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a landing zone operation.
    #
    # @!attribute [rw] operation_type
    #   The landing zone operation type.
    #
    #   Valid values:
    #
    #   * `DELETE`: The `DeleteLandingZone` operation.
    #
    #   * `CREATE`: The `CreateLandingZone` operation.
    #
    #   * `UPDATE`: The `UpdateLandingZone` operation.
    #
    #   * `RESET`: The `ResetLandingZone` operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_identifier
    #   The `operationIdentifier` of the landing zone operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Valid values:
    #
    #   * `SUCCEEDED`: The landing zone operation succeeded.
    #
    #   * `IN_PROGRESS`: The landing zone operation is in progress.
    #
    #   * `FAILED`: The landing zone operation failed.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The landing zone operation start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The landing zone operation end time.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   If the operation result is FAILED, this string contains a message
    #   explaining why the operation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneOperationDetail AWS API Documentation
    #
    class LandingZoneOperationDetail < Struct.new(
      :operation_type,
      :operation_identifier,
      :status,
      :start_time,
      :end_time,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter object that lets you call `ListLandingZoneOperations` with a
    # specific filter.
    #
    # @!attribute [rw] types
    #   The set of landing zone operation types selected by the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   The statuses of the set of landing zone operations selected by the
    #   filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneOperationFilter AWS API Documentation
    #
    class LandingZoneOperationFilter < Struct.new(
      :types,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a summary of information about a landing zone operation.
    #
    # @!attribute [rw] operation_type
    #   The type of the landing zone operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_identifier
    #   The `operationIdentifier` of the landing zone operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the landing zone operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneOperationSummary AWS API Documentation
    #
    class LandingZoneOperationSummary < Struct.new(
      :operation_type,
      :operation_identifier,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a summary of information about a landing zone.
    #
    # @!attribute [rw] arn
    #   The ARN of the landing zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneSummary AWS API Documentation
    #
    class LandingZoneSummary < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be shown.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListBaselinesInput AWS API Documentation
    #
    class ListBaselinesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baselines
    #   A list of `Baseline` object details.
    #   @return [Array<Types::BaselineSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListBaselinesOutput AWS API Documentation
    #
    class ListBaselinesOutput < Struct.new(
      :baselines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   An input filter for the `ListControlOperations` API that lets you
    #   select the types of control operations to view.
    #   @return [Types::ControlOperationFilter]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be shown.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListControlOperationsInput AWS API Documentation
    #
    class ListControlOperationsInput < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_operations
    #   Returns a list of output from control operations.
    #   @return [Array<Types::ControlOperationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListControlOperationsOutput AWS API Documentation
    #
    class ListControlOperationsOutput < Struct.new(
      :control_operations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   A filter applied on the `ListEnabledBaseline` operation. Allowed
    #   filters are `baselineIdentifiers` and `targetIdentifiers`. The
    #   filter can be applied for either, or both.
    #   @return [Types::EnabledBaselineFilter]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be shown.
    #   @return [Integer]
    #
    # @!attribute [rw] include_children
    #   A value that can be set to include the child enabled baselines in
    #   responses. The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledBaselinesInput AWS API Documentation
    #
    class ListEnabledBaselinesInput < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :include_children)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_baselines
    #   Retuens a list of summaries of `EnabledBaseline` resources.
    #   @return [Array<Types::EnabledBaselineSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledBaselinesOutput AWS API Documentation
    #
    class ListEnabledBaselinesOutput < Struct.new(
      :enabled_baselines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_identifier
    #   The ARN of the organizational unit. For information on how to find
    #   the `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to continue the list from a previous API call with the
    #   same parameters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   How many results to return per API call.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   An input filter for the `ListEnabledControls` API that lets you
    #   select the types of control operations to view.
    #   @return [Types::EnabledControlFilter]
    #
    # @!attribute [rw] include_children
    #   A boolean value that determines whether to include enabled controls
    #   from child organizational units in the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledControlsInput AWS API Documentation
    #
    class ListEnabledControlsInput < Struct.new(
      :target_identifier,
      :next_token,
      :max_results,
      :filter,
      :include_children)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_controls
    #   Lists the controls enabled by Amazon Web Services Control Tower on
    #   the specified organizational unit and the accounts it contains.
    #   @return [Array<Types::EnabledControlSummary>]
    #
    # @!attribute [rw] next_token
    #   Retrieves the next page of results. If the string is empty, the
    #   response is the end of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledControlsOutput AWS API Documentation
    #
    class ListEnabledControlsOutput < Struct.new(
      :enabled_controls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   An input filter for the `ListLandingZoneOperations` API that lets
    #   you select the types of landing zone operations to view.
    #   @return [Types::LandingZoneOperationFilter]
    #
    # @!attribute [rw] next_token
    #   The token to continue the list from a previous API call with the
    #   same parameters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   How many results to return per API call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZoneOperationsInput AWS API Documentation
    #
    class ListLandingZoneOperationsInput < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] landing_zone_operations
    #   Lists landing zone operations.
    #   @return [Array<Types::LandingZoneOperationSummary>]
    #
    # @!attribute [rw] next_token
    #   Retrieves the next page of results. If the string is empty, the
    #   response is the end of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZoneOperationsOutput AWS API Documentation
    #
    class ListLandingZoneOperationsOutput < Struct.new(
      :landing_zone_operations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to continue the list from a previous API call with the
    #   same parameters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned landing zone ARNs, which is one.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZonesInput AWS API Documentation
    #
    class ListLandingZonesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] landing_zones
    #   The ARN of the landing zone.
    #   @return [Array<Types::LandingZoneSummary>]
    #
    # @!attribute [rw] next_token
    #   Retrieves the next page of results. If the string is empty, the
    #   response is the end of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZonesOutput AWS API Documentation
    #
    class ListLandingZonesOutput < Struct.new(
      :landing_zones,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags, as `key:value` strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Web Services Region in which Amazon Web Services Control
    # Tower expects to find the control deployed.
    #
    # The expected Regions are based on the Regions that are governed by the
    # landing zone. In certain cases, a control is not actually enabled in
    # the Region as expected, such as during drift, or [mixed
    # governance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/region-how.html#mixed-governance
    #
    # @!attribute [rw] name
    #   The Amazon Web Services Region name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/Region AWS API Documentation
    #
    class Region < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_baseline_identifier
    #   Specifies the ID of the `EnabledBaseline` resource to be re-enabled,
    #   in ARN format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetEnabledBaselineInput AWS API Documentation
    #
    class ResetEnabledBaselineInput < Struct.new(
      :enabled_baseline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID (in UUID format) of the asynchronous `ResetEnabledBaseline`
    #   operation. This `operationIdentifier` is used to track status
    #   through calls to the `GetBaselineOperation` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetEnabledBaselineOutput AWS API Documentation
    #
    class ResetEnabledBaselineOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_control_identifier
    #   The ARN of the enabled control to be reset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetEnabledControlInput AWS API Documentation
    #
    class ResetEnabledControlInput < Struct.new(
      :enabled_control_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The operation identifier for this `ResetEnabledControl` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetEnabledControlOutput AWS API Documentation
    #
    class ResetEnabledControlOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] landing_zone_identifier
    #   The unique identifier of the landing zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetLandingZoneInput AWS API Documentation
    #
    class ResetLandingZoneInput < Struct.new(
      :landing_zone_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   A unique identifier assigned to a `ResetLandingZone` operation. You
    #   can use this identifier as an input parameter of
    #   `GetLandingZoneOperation` to check the operation's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetLandingZoneOutput AWS API Documentation
    #
    class ResetLandingZoneOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded. See [Service
    # quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/request-an-increase.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be applied to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The ID of the service that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] baseline_version
    #   Specifies the new `Baseline` version, to which the `EnabledBaseline`
    #   should be updated.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Parameters to apply when making an update.
    #   @return [Array<Types::EnabledBaselineParameter>]
    #
    # @!attribute [rw] enabled_baseline_identifier
    #   Specifies the `EnabledBaseline` resource to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledBaselineInput AWS API Documentation
    #
    class UpdateEnabledBaselineInput < Struct.new(
      :baseline_version,
      :parameters,
      :enabled_baseline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The ID (in UUID format) of the asynchronous `UpdateEnabledBaseline`
    #   operation. This `operationIdentifier` is used to track status
    #   through calls to the `GetBaselineOperation` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledBaselineOutput AWS API Documentation
    #
    class UpdateEnabledBaselineOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   A key/value pair, where `Key` is of type `String` and `Value` is of
    #   type `Document`.
    #   @return [Array<Types::EnabledControlParameter>]
    #
    # @!attribute [rw] enabled_control_identifier
    #   The ARN of the enabled control that will be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledControlInput AWS API Documentation
    #
    class UpdateEnabledControlInput < Struct.new(
      :parameters,
      :enabled_control_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   The operation identifier for this `UpdateEnabledControl` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledControlOutput AWS API Documentation
    #
    class UpdateEnabledControlOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The landing zone version, for example, 3.2.
    #   @return [String]
    #
    # @!attribute [rw] remediation_types
    #   Specifies the types of remediation actions to apply when updating
    #   the landing zone configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] landing_zone_identifier
    #   The unique identifier of the landing zone.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   The manifest file (JSON) is a text file that describes your Amazon
    #   Web Services resources. For an example, review [Launch your landing
    #   zone][1]. The example manifest file contains each of the available
    #   parameters. The schema for the landing zone's JSON manifest file is
    #   not published, by design.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateLandingZoneInput AWS API Documentation
    #
    class UpdateLandingZoneInput < Struct.new(
      :version,
      :remediation_types,
      :landing_zone_identifier,
      :manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_identifier
    #   A unique identifier assigned to a `UpdateLandingZone` operation. You
    #   can use this identifier as an input of `GetLandingZoneOperation` to
    #   check the operation's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateLandingZoneOutput AWS API Documentation
    #
    class UpdateLandingZoneOutput < Struct.new(
      :operation_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

