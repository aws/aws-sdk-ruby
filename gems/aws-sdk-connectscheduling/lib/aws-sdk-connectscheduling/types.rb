# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectScheduling
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the identity that performed an action on a time off
    # request: a Connect Customer user or an IAM or AWS STS identity.
    # Exactly one member is set.
    #
    # @note ActorInfo is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ActorInfo corresponding to the set member.
    #
    # @!attribute [rw] connect_user_arn
    #   The ARN of the Connect Customer user who performed the action.
    #   @return [String]
    #
    # @!attribute [rw] aws_identity_arn
    #   The IAM or AWS STS ARN of the identity that performed the action.
    #   Present when that identity is not a Connect Customer user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ActorInfo AWS API Documentation
    #
    class ActorInfo < Struct.new(
      :connect_user_arn,
      :aws_identity_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ConnectUserArn < ActorInfo; end
      class AwsIdentityArn < ActorInfo; end
      class Unknown < ActorInfo; end
    end

    # The request for `ApproveTimeOff`.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Connect Customer instance. This can be the ID
    #   or the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] time_off_id
    #   The unique identifier of the time off request to approve. If the
    #   time off request doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description recorded with the approval. `GetTimeOff` doesn't
    #   return it.
    #   @return [String]
    #
    # @!attribute [rw] rule_failure_action
    #   Controls what happens when a configured rule fails. `REJECT`, the
    #   default, records an `ERROR` and leaves the request `REJECTED`.
    #   `OVERRIDE` records a `WARNING` and approves the request, like the
    #   *Override time off rules* option in the Connect Customer admin
    #   website. `OVERRIDE` never waives `CONFLICTING_TIME_OFF_REQUEST`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ApproveTimeOffRequest AWS API Documentation
    #
    class ApproveTimeOffRequest < Struct.new(
      :instance_id,
      :user_id,
      :time_off_id,
      :description,
      :rule_failure_action)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The response for `ApproveTimeOff`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ApproveTimeOffResponse AWS API Documentation
    #
    class ApproveTimeOffResponse < Aws::EmptyStructure; end

    # The request for `CancelTimeOff`.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Connect Customer instance. This can be the ID
    #   or the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] time_off_id
    #   The unique identifier of the time off request to cancel. If the time
    #   off request doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description recorded with the cancellation. It replaces the
    #   description of the time off request. If you omit it, the request's
    #   description is removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/CancelTimeOffRequest AWS API Documentation
    #
    class CancelTimeOffRequest < Struct.new(
      :instance_id,
      :user_id,
      :time_off_id,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The response for `CancelTimeOff`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/CancelTimeOffResponse AWS API Documentation
    #
    class CancelTimeOffResponse < Aws::EmptyStructure; end

    # The request could not be processed because of a conflict with the
    # current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier or ARN of the resource that is in conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is in conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for `CreateTimeOff`.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Connect Customer instance. This can be the ID
    #   or the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who the time off request is for. This can
    #   be the ID or the ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] shift_activity_id
    #   The identifier of the shift activity that defines the type of time
    #   off being requested. This can be the ID or the ARN of the shift
    #   activity. It must be a time off activity. Activities that aren't
    #   set as *Requestable* are accepted.
    #   @return [String]
    #
    # @!attribute [rw] start_at
    #   The start of the time off window, inclusive. It must be no earlier
    #   than one year before the current date. Connect Customer stores the
    #   value as sent, to the millisecond.
    #   @return [Time]
    #
    # @!attribute [rw] end_at
    #   The end of the time off window, exclusive. It must be after
    #   `StartAt` and no later than 24 months after the current date.
    #   Connect Customer stores the value as sent, to the millisecond.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description recorded on the time off request. If you omit it, the
    #   request has no description.
    #   @return [String]
    #
    # @!attribute [rw] approval_type
    #   Controls who approves the request. `AWAIT_APPROVAL` waits for an
    #   `ApproveTimeOff` or `RejectTimeOff` call. `AUTOMATIC` has Connect
    #   Customer decide the request. For details, see `CreateTimeOff`.
    #   @return [String]
    #
    # @!attribute [rw] rule_failure_action
    #   Controls what happens when a configured rule fails. `REJECT`, the
    #   default, records an `ERROR` and ends the request `REJECTED`, unless
    #   the whole window is in the past. `OVERRIDE` records a `WARNING` and
    #   ends the request `APPROVED`, like the *Override time off rules*
    #   option in the Connect Customer admin website. `OVERRIDE` requires
    #   `AUTOMATIC`. With `AWAIT_APPROVAL`, `OVERRIDE` fails with
    #   `ValidationException`. Set it on `ApproveTimeOff` instead.
    #   `OVERRIDE` never waives `CONFLICTING_TIME_OFF_REQUEST`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If this token matches
    #   a previous request, Connect Customer returns the result of that
    #   request and doesn't create another time off request. If you don't
    #   provide a token, the AWS SDK populates this field. If you reuse a
    #   client token with a different request body, the request fails with
    #   `ValidationException`. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/CreateTimeOffRequest AWS API Documentation
    #
    class CreateTimeOffRequest < Struct.new(
      :instance_id,
      :user_id,
      :shift_activity_id,
      :start_at,
      :end_at,
      :description,
      :approval_type,
      :rule_failure_action,
      :client_token)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The response for `CreateTimeOff`.
    #
    # @!attribute [rw] time_off_id
    #   The identifier of the time off request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/CreateTimeOffResponse AWS API Documentation
    #
    class CreateTimeOffResponse < Struct.new(
      :time_off_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A length of time, expressed as a value and the unit it is counted in.
    #
    # @!attribute [rw] value
    #   The number of units of time. You can use a negative value to report
    #   an overdrawn balance. The value must be within 876,000 hours (100
    #   years) of zero: at most 52,560,000 `MINUTES`, 876,000 `HOURS`, or
    #   36,500 `DAYS`.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit the value is counted in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/Duration AWS API Documentation
    #
    class Duration < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for `GetTimeOff`.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Connect Customer instance. This can be the ID
    #   or the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] time_off_id
    #   The identifier of the time off request. If the time off request
    #   doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/GetTimeOffRequest AWS API Documentation
    #
    class GetTimeOffRequest < Struct.new(
      :instance_id,
      :user_id,
      :time_off_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for `GetTimeOff`.
    #
    # @!attribute [rw] time_off_id
    #   The identifier of the time off request.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user the time off is for.
    #   @return [String]
    #
    # @!attribute [rw] shift_activity_id
    #   The identifier of the shift activity for the time off request.
    #   @return [String]
    #
    # @!attribute [rw] start_at
    #   The start of the time off window, inclusive, as sent to
    #   `CreateTimeOff`.
    #   @return [Time]
    #
    # @!attribute [rw] end_at
    #   The end of the time off window, exclusive, as sent to
    #   `CreateTimeOff`.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the time off request.
    #
    #   * `PENDING`: Connect Customer is processing a change to the request,
    #     which then changes to another status. An edit in the Connect
    #     Customer admin website can also make a request `PENDING`, so an
    #     `APPROVED` request can become `PENDING` and then end `APPROVED` or
    #     `REJECTED`.
    #
    #   * `AWAITING_APPROVAL`: the request is waiting for an
    #     `ApproveTimeOff` or `RejectTimeOff` call.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the time off request. `CreateTimeOff` sets it,
    #   and `CancelTimeOff` replaces or removes it. An edit in the Connect
    #   Customer admin website can also change it. `GetTimeOff` doesn't
    #   return descriptions sent with `ApproveTimeOff` or `RejectTimeOff`.
    #   @return [String]
    #
    # @!attribute [rw] validation_results
    #   Warnings or failures produced while processing the time off request.
    #   @return [Array<Types::TimeOffValidationResult>]
    #
    # @!attribute [rw] created_by
    #   The identity that created the request. Immutable for the life of the
    #   request.
    #   @return [Types::ActorInfo]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the time off request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The identity that made the most recent `ApproveTimeOff`,
    #   `RejectTimeOff`, or `CancelTimeOff` call on the request, or took the
    #   same action in the Connect Customer admin website. Absent until one
    #   of those actions is taken, including after Connect Customer decides
    #   an `AUTOMATIC` request. `UpdatedAt` also changes when a `PENDING`
    #   request changes to another status and for other edits, which don't
    #   set `UpdatedBy`.
    #   @return [Types::ActorInfo]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the time off request was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/GetTimeOffResponse AWS API Documentation
    #
    class GetTimeOffResponse < Struct.new(
      :time_off_id,
      :user_id,
      :shift_activity_id,
      :start_at,
      :end_at,
      :status,
      :description,
      :validation_results,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The request processing failed because of an error or failure with the
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for `PutTimeOffBalance`.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Connect Customer instance. This can be the ID
    #   or the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user whose balance is being updated. This can
    #   be the ID or the ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] shift_activity_id
    #   The identifier of the shift activity that the balance applies to.
    #   This can be the ID or the ARN of the shift activity.
    #   @return [String]
    #
    # @!attribute [rw] balance
    #   The new time off balance for the user and activity. It replaces the
    #   existing balance.
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/PutTimeOffBalanceRequest AWS API Documentation
    #
    class PutTimeOffBalanceRequest < Struct.new(
      :instance_id,
      :user_id,
      :shift_activity_id,
      :balance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for `PutTimeOffBalance`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/PutTimeOffBalanceResponse AWS API Documentation
    #
    class PutTimeOffBalanceResponse < Aws::EmptyStructure; end

    # The request for `RejectTimeOff`.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Connect Customer instance. This can be the ID
    #   or the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] time_off_id
    #   The unique identifier of the time off request to reject. If the time
    #   off request doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description recorded with the rejection, such as the reason.
    #   `GetTimeOff` doesn't return it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/RejectTimeOffRequest AWS API Documentation
    #
    class RejectTimeOffRequest < Struct.new(
      :instance_id,
      :user_id,
      :time_off_id,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The response for `RejectTimeOff`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/RejectTimeOffResponse AWS API Documentation
    #
    class RejectTimeOffResponse < Aws::EmptyStructure; end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier or ARN of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota that would be exceeded, for use with the
    #   Service Quotas API.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier or ARN of the resource whose quota would be exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource whose quota would be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota that was throttled, for use with the Service
    #   Quotas API.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A warning or failure produced while processing the time off request.
    #
    # @!attribute [rw] severity
    #   The severity of the validation result. `WARNING` is a breach of the
    #   configured rules that is not enough to reject the request, either
    #   because of the rules configuration or because the caller sent
    #   `RuleFailureAction` `OVERRIDE`. `ERROR` is a reason the request was
    #   rejected.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The specific reason for the validation result. New values may be
    #   added, so treat an unrecognized value as a generic failure of the
    #   reported severity.
    #
    #   * `INSUFFICIENT_USER_TIME_OFF_BALANCE`: the user's time off balance
    #     for the activity is less than the time this request deducts.
    #     Connect Customer deducts only working time in the window. For
    #     details, see [How the system calculates time off deductions][1] in
    #     the *Connect Customer Administrator Guide*.
    #
    #   * `INSUFFICIENT_GROUP_TIME_OFF_ALLOWANCE`: the time off allowance of
    #     the user's forecast group or demand group for the activity is too
    #     low for this request.
    #
    #   * `INSUFFICIENT_STAFFING_GROUP_TIME_OFF_ALLOWANCE`: the daily time
    #     off allowance of the user's staffing group for the activity is
    #     too low for this request.
    #
    #   * `CONFLICTING_TIME_OFF_REQUEST`: the request overlaps another time
    #     off request for the user that is `APPROVED` or being approved.
    #     Requests in `AWAITING_APPROVAL` don't count. For `CreateTimeOff`
    #     with `AUTOMATIC`, overlapping overtime and voluntary time off also
    #     count.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/upload-timeoff-balance.html#how-system-calculates-time-off-deductions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/TimeOffValidationResult AWS API Documentation
    #
    class TimeOffValidationResult < Struct.new(
      :severity,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the input failed validation. Branch on this value rather
    #   than on the message wording.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The specific input fields that failed validation, when `Reason` is
    #   `FIELD_VALIDATION_FAILED`.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input field that failed validation.
    #
    # @!attribute [rw] name
    #   The path to the field that failed validation, using JSON
    #   pointer-style dotted notation for nested members.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

