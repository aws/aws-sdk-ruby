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
    # @!attribute [rw] end_time
    #   The time that the operation finished.
    #   @return [Time]
    #
    # @!attribute [rw] operation_type
    #   One of `ENABLE_CONTROL` or `DISABLE_CONTROL`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the operation began.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ControlOperation AWS API Documentation
    #
    class ControlOperation < Struct.new(
      :end_time,
      :operation_type,
      :start_time,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] tags
    #   Tags to be applied to the landing zone.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   The landing zone version, for example, 3.0.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/CreateLandingZoneInput AWS API Documentation
    #
    class CreateLandingZoneInput < Struct.new(
      :manifest,
      :tags,
      :version)
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

    # @!attribute [rw] control_identifier
    #   The ARN of the control. Only **Strongly recommended** and
    #   **Elective** controls are permitted, with the exception of the
    #   **landing zone Region deny** control. For information on how to find
    #   the `controlIdentifier`, see [the overview page][1].
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableControlInput AWS API Documentation
    #
    class DisableControlInput < Struct.new(
      :control_identifier,
      :target_identifier)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DriftStatusSummary AWS API Documentation
    #
    class DriftStatusSummary < Struct.new(
      :drift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_identifier
    #   The ARN of the control. Only **Strongly recommended** and
    #   **Elective** controls are permitted, with the exception of the
    #   **landing zone Region deny** control. For information on how to find
    #   the `controlIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An array of `EnabledControlParameter` objects
    #   @return [Array<Types::EnabledControlParameter>]
    #
    # @!attribute [rw] tags
    #   Tags to be applied to the `EnabledControl` resource.
    #   @return [Hash<String,String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControlInput AWS API Documentation
    #
    class EnableControlInput < Struct.new(
      :control_identifier,
      :parameters,
      :tags,
      :target_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the `EnabledControl` resource.
    #   @return [String]
    #
    # @!attribute [rw] operation_identifier
    #   The ID of the asynchronous operation, which is used to track status.
    #   The operation is available for 90 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControlOutput AWS API Documentation
    #
    class EnableControlOutput < Struct.new(
      :arn,
      :operation_identifier)
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
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled control.
    #   @return [Types::DriftStatusSummary]
    #
    # @!attribute [rw] parameters
    #   Array of `EnabledControlParameter` objects.
    #   @return [Array<Types::EnabledControlParameterSummary>]
    #
    # @!attribute [rw] status_summary
    #   The deployment summary of the enabled control.
    #   @return [Types::EnablementStatusSummary]
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
    # @!attribute [rw] target_regions
    #   Target Amazon Web Services Regions for the enabled control.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlDetails AWS API Documentation
    #
    class EnabledControlDetails < Struct.new(
      :arn,
      :control_identifier,
      :drift_status_summary,
      :parameters,
      :status_summary,
      :target_identifier,
      :target_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of parameters that configure the behavior of the enabled
    # control. A key/value pair, where `Key` is of type `String` and `Value`
    # is of type `Document`.
    #
    # @!attribute [rw] key
    #   The key of a key/value pair. It is of type `string`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a key/value pair. It can be of type `array` `string`,
    #   `number`, `object`, or `boolean`.
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
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled control.
    #   @return [Types::DriftStatusSummary]
    #
    # @!attribute [rw] status_summary
    #   A short description of the status of the enabled control.
    #   @return [Types::EnablementStatusSummary]
    #
    # @!attribute [rw] target_identifier
    #   The ARN of the organizational unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlSummary AWS API Documentation
    #
    class EnabledControlSummary < Struct.new(
      :arn,
      :control_identifier,
      :drift_status_summary,
      :status_summary,
      :target_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment summary of the enabled control.
    #
    # @!attribute [rw] last_operation_identifier
    #   The last operation identifier for the enabled control.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The deployment status of the enabled control.
    #
    #   Valid values:
    #
    #   * `SUCCEEDED`: The `enabledControl` configuration was deployed
    #     successfully.
    #
    #   * `UNDER_CHANGE`: The `enabledControl` configuration is changing.
    #
    #   * `FAILED`: The `enabledControl` configuration failed to deploy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnablementStatusSummary AWS API Documentation
    #
    class EnablementStatusSummary < Struct.new(
      :last_operation_identifier,
      :status)
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
    # @!attribute [rw] arn
    #   The ARN of the landing zone.
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   The drift status of the landing zone.
    #   @return [Types::LandingZoneDriftStatusSummary]
    #
    # @!attribute [rw] latest_available_version
    #   The latest available version of the landing zone.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   The landing zone manifest JSON text file that specifies the landing
    #   zone configurations.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The landing zone deployment status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The landing zone's current deployed version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneDetail AWS API Documentation
    #
    class LandingZoneDetail < Struct.new(
      :arn,
      :drift_status,
      :latest_available_version,
      :manifest,
      :status,
      :version)
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
    # @!attribute [rw] end_time
    #   The landing zone operation end time.
    #   @return [Time]
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
    # @!attribute [rw] start_time
    #   The landing zone operation start time.
    #   @return [Time]
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
    # @!attribute [rw] status_message
    #   If the operation result is FAILED, this string contains a message
    #   explaining why the operation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/LandingZoneOperationDetail AWS API Documentation
    #
    class LandingZoneOperationDetail < Struct.new(
      :end_time,
      :operation_type,
      :start_time,
      :status,
      :status_message)
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

    # @!attribute [rw] max_results
    #   How many results to return per API call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to continue the list from a previous API call with the
    #   same parameters.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledControlsInput AWS API Documentation
    #
    class ListEnabledControlsInput < Struct.new(
      :max_results,
      :next_token,
      :target_identifier)
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

    # @!attribute [rw] max_results
    #   The maximum number of returned landing zone ARNs, which is one.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to continue the list from a previous API call with the
    #   same parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZonesInput AWS API Documentation
    #
    class ListLandingZonesInput < Struct.new(
      :max_results,
      :next_token)
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

    # The request would cause a service quota to be exceeded. The limit is
    # 10 concurrent operations.
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
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The ID of the service that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
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

    # @!attribute [rw] enabled_control_identifier
    #   The ARN of the enabled control that will be updated.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key/value pair, where `Key` is of type `String` and `Value` is of
    #   type `Document`.
    #   @return [Array<Types::EnabledControlParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledControlInput AWS API Documentation
    #
    class UpdateEnabledControlInput < Struct.new(
      :enabled_control_identifier,
      :parameters)
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

    # @!attribute [rw] landing_zone_identifier
    #   The unique identifier of the landing zone.
    #   @return [String]
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
    # @!attribute [rw] version
    #   The landing zone version, for example, 3.2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateLandingZoneInput AWS API Documentation
    #
    class UpdateLandingZoneInput < Struct.new(
      :landing_zone_identifier,
      :manifest,
      :version)
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
