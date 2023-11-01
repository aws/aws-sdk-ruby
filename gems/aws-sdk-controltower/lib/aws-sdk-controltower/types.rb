# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ControlTower
  module Types

    # User does not have sufficient access to perform this action.
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

    # Updating or deleting a resource can cause an inconsistent state.
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
    # AWS Control Tower expects the enabled control configuration to include
    # all supported and governed Regions. If the enabled control differs
    # from the expected configuration, it is defined to be in a state of
    # drift. You can repair this drift by resetting the enabled control.
    #
    # @!attribute [rw] drift_status
    #   The drift status of the enabled control.
    #
    #   Valid values:
    #
    #   * `DRIFTED`: The `enabledControl` deployed in this configuration
    #     doesn’t match the configuration that AWS Control Tower expected.
    #
    #   * `IN_SYNC`: The `enabledControl` deployed in this configuration
    #     matches the configuration that AWS Control Tower expected.
    #
    #   * `NOT_CHECKING`: AWS Control Tower does not check drift for this
    #     enabled control. Drift is not supported for the control type.
    #
    #   * `UNKNOWN`: AWS Control Tower is not able to check the drift status
    #     for the enabled control.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControlInput AWS API Documentation
    #
    class EnableControlInput < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControlOutput AWS API Documentation
    #
    class EnableControlOutput < Struct.new(
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
    #   Target AWS Regions for the enabled control.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnabledControlDetails AWS API Documentation
    #
    class EnabledControlDetails < Struct.new(
      :arn,
      :control_identifier,
      :drift_status_summary,
      :status_summary,
      :target_identifier,
      :target_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of enabled controls.
    #
    # @!attribute [rw] arn
    #   The ARN of the enabled control.
    #   @return [String]
    #
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
    # @!attribute [rw] drift_status_summary
    #   The drift status of the enabled control.
    #   @return [Types::DriftStatusSummary]
    #
    # @!attribute [rw] status_summary
    #   <zonbook />
    #
    #   <xhtml />
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
    #   The ARN of the enabled control.
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

    # Unexpected error during processing of request.
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
    #   Lists the controls enabled by AWS Control Tower on the specified
    #   organizational unit and the accounts it contains.
    #   @return [Array<Types::EnabledControlSummary>]
    #
    # @!attribute [rw] next_token
    #   Retrieves the next page of results. If the string is empty, the
    #   current response is the end of the results.
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

    # An AWS Region in which AWS Control Tower expects to find the control
    # deployed.
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
    #   The AWS Region name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/Region AWS API Documentation
    #
    class Region < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
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

    # Request would cause a service quota to be exceeded. The limit is 10
    # concurrent operations.
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

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
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

    # The input fails to satisfy the constraints specified by an AWS
    # service.
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
