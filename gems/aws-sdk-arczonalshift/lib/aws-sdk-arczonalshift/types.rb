# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ARCZonalShift
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex structure that lists an autoshift that is currently active
    # for a managed resource and information about the autoshift.
    #
    # For more information, see [How zonal autoshift and practice runs
    # work][1] in the Amazon Route 53 Application Recovery Controller
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html
    #
    # @!attribute [rw] applied_status
    #   The `appliedStatus` field specifies which application traffic shift
    #   is in effect for a resource when there is more than one active
    #   traffic shift. There can be more than one application traffic shift
    #   in progress at the same time - that is, practice run zonal shifts,
    #   customer-initiated zonal shifts, or an autoshift. The
    #   `appliedStatus` field for a shift that is in progress for a resource
    #   can have one of two values: `APPLIED` or `NOT_APPLIED`. The zonal
    #   shift or autoshift that is currently in effect for the resource has
    #   an `appliedStatus` set to `APPLIED`.
    #
    #   The overall principle for precedence is that zonal shifts that you
    #   start as a customer take precedence autoshifts, which take
    #   precedence over practice runs. That is, customer-initiated zonal
    #   shifts &gt; autoshifts &gt; practice run zonal shifts.
    #
    #   For more information, see [How zonal autoshift and practice runs
    #   work][1] in the Amazon Route 53 Application Recovery Controller
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html
    #   @return [String]
    #
    # @!attribute [rw] away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   shifted away from for a resource, when Amazon Web Services starts an
    #   autoshift. Until the autoshift ends, traffic for the resource is
    #   instead directed to other Availability Zones in the Amazon Web
    #   Services Region. An autoshift can end for a resource, for example,
    #   when Amazon Web Services ends the autoshift for the Availability
    #   Zone or when you disable zonal autoshift for the resource.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time (UTC) when the autoshift started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/AutoshiftInResource AWS API Documentation
    #
    class AutoshiftInResource < Struct.new(
      :applied_status,
      :away_from,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an autoshift. Amazon Web Services starts an
    # autoshift to temporarily move traffic for a resource away from an
    # Availability Zone in an Amazon Web Services Region when Amazon Web
    # Services determines that there's an issue in the Availability Zone
    # that could potentially affect customers. You can configure zonal
    # autoshift in Route 53 ARC for managed resources in your Amazon Web
    # Services account in a Region. Supported Amazon Web Services resources
    # are automatically registered with Route 53 ARC.
    #
    # Autoshifts are temporary. When the Availability Zone recovers, Amazon
    # Web Services ends the autoshift, and traffic for the resource is no
    # longer directed to the other Availability Zones in the Region.
    #
    # You can stop an autoshift for a resource by disabling zonal autoshift.
    #
    # @!attribute [rw] away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   shifted away from for a resource when Amazon Web Services starts an
    #   autoshift. Until the autoshift ends, traffic for the resource is
    #   instead directed to other Availability Zones in the Amazon Web
    #   Services Region. An autoshift can end for a resource, for example,
    #   when Amazon Web Services ends the autoshift for the Availability
    #   Zone or when you disable zonal autoshift for the resource.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The time (in UTC) when the autoshift ended.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time (in UTC) when the autoshift started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status for an autoshift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/AutoshiftSummary AWS API Documentation
    #
    class AutoshiftSummary < Struct.new(
      :away_from,
      :end_time,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] zonal_shift_id
    #   The internally-generated identifier of a zonal shift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CancelZonalShiftRequest AWS API Documentation
    #
    class CancelZonalShiftRequest < Struct.new(
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the conflict exception.
    #   @return [String]
    #
    # @!attribute [rw] zonal_shift_id
    #   The zonal shift ID associated with the conflict exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control condition is an alarm that you specify for a practice run.
    # When you configure practice runs with zonal autoshift for a resource,
    # you specify Amazon CloudWatch alarms, which you create in CloudWatch
    # to use with the practice run. The alarms that you specify are an
    # *outcome alarm*, to monitor application health during practice runs
    # and, optionally, a *blocking alarm*, to block practice runs from
    # starting or to interrupt a practice run in progress.
    #
    # Control condition alarms do not apply for autoshifts.
    #
    # For more information, see [ Considerations when you configure zonal
    # autoshift][1] in the Amazon Route 53 Application Recovery Controller
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html
    #
    # @!attribute [rw] alarm_identifier
    #   The Amazon Resource Name (ARN) for an Amazon CloudWatch alarm that
    #   you specify as a control condition for a practice run.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of alarm specified for a practice run. You can only specify
    #   Amazon CloudWatch alarms for practice runs, so the only valid value
    #   is `CLOUDWATCH`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ControlCondition AWS API Documentation
    #
    class ControlCondition < Struct.new(
      :alarm_identifier,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blocked_dates
    #   Optionally, you can block Route 53 ARC from starting practice runs
    #   for a resource on specific calendar dates.
    #
    #   The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you
    #   specify dates, that dates and times for practice runs are in UTC.
    #   Separate multiple blocked dates with spaces.
    #
    #   For example, if you have an application update scheduled to launch
    #   on May 1, 2024, and you don't want practice runs to shift traffic
    #   away at that time, you could set a blocked date for `2024-05-01`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocked_windows
    #   Optionally, you can block Route 53 ARC from starting practice runs
    #   for specific windows of days and times.
    #
    #   The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in
    #   mind, when you specify dates, that dates and times for practice runs
    #   are in UTC. Also, be aware of potential time adjustments that might
    #   be required for daylight saving time differences. Separate multiple
    #   blocked windows with spaces.
    #
    #   For example, say you run business report summaries three days a
    #   week. For this scenario, you might set the following recurring days
    #   and times as blocked windows, for example: `MON-20:30-21:30
    #   WED-20:30-21:30 FRI-20:30-21:30`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocking_alarms
    #   An Amazon CloudWatch alarm that you can specify for zonal autoshift
    #   practice runs. This alarm blocks Route 53 ARC from starting practice
    #   run zonal shifts, and ends a practice run that's in progress, when
    #   the alarm is in an `ALARM` state.
    #   @return [Array<Types::ControlCondition>]
    #
    # @!attribute [rw] outcome_alarms
    #   The *outcome alarm* for practice runs is a required Amazon
    #   CloudWatch alarm that you specify that ends a practice run when the
    #   alarm is in an `ALARM` state.
    #
    #   Configure the alarm to monitor the health of your application when
    #   traffic is shifted away from an Availability Zone during each weekly
    #   practice run. You should configure the alarm to go into an `ALARM`
    #   state if your application is impacted by the zonal shift, and you
    #   want to stop the zonal shift, to let traffic for the resource return
    #   to the Availability Zone.
    #   @return [Array<Types::ControlCondition>]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier of the resource that Amazon Web Services shifts
    #   traffic for with a practice run zonal shift. The identifier is the
    #   Amazon Resource Name (ARN) for the resource.
    #
    #   At this time, supported resources are Network Load Balancers and
    #   Application Load Balancers with cross-zone load balancing turned
    #   off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CreatePracticeRunConfigurationRequest AWS API Documentation
    #
    class CreatePracticeRunConfigurationRequest < Struct.new(
      :blocked_dates,
      :blocked_windows,
      :blocking_alarms,
      :outcome_alarms,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that you configured
    #   the practice run for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource that you configured the practice run for.
    #   @return [String]
    #
    # @!attribute [rw] practice_run_configuration
    #   A practice run configuration for a resource. Configurations include
    #   the outcome alarm that you specify for practice runs, and,
    #   optionally, a blocking alarm and blocking dates and windows.
    #   @return [Types::PracticeRunConfiguration]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The status for zonal autoshift for a resource. When you specify
    #   `ENABLED` for the autoshift status, Amazon Web Services shifts
    #   traffic away from shifts away application resource traffic from an
    #   Availability Zone, on your behalf, when internal telemetry indicates
    #   that there is an Availability Zone impairment that could potentially
    #   impact customers.
    #
    #   When you enable zonal autoshift, you must also configure practice
    #   runs for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CreatePracticeRunConfigurationResponse AWS API Documentation
    #
    class CreatePracticeRunConfigurationResponse < Struct.new(
      :arn,
      :name,
      :practice_run_configuration,
      :zonal_autoshift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that you want to delete the practice
    #   run configuration for. The identifier is the Amazon Resource Name
    #   (ARN) for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/DeletePracticeRunConfigurationRequest AWS API Documentation
    #
    class DeletePracticeRunConfigurationRequest < Struct.new(
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that you deleted the
    #   practice run for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource that you deleted the practice run for.
    #   @return [String]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The status of zonal autoshift for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/DeletePracticeRunConfigurationResponse AWS API Documentation
    #
    class DeletePracticeRunConfigurationResponse < Struct.new(
      :arn,
      :name,
      :zonal_autoshift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetAutoshiftObserverNotificationStatusRequest AWS API Documentation
    #
    class GetAutoshiftObserverNotificationStatusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   The status of autoshift observer notification. If the status is
    #   `ENABLED`, Route 53 ARC includes all autoshift events when you use
    #   the Amazon EventBridge pattern `Autoshift In Progress`. When the
    #   status is `DISABLED`, Route 53 ARC includes only autoshift events
    #   for autoshifts when one or more of your resources is included in the
    #   autoshift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetAutoshiftObserverNotificationStatusResponse AWS API Documentation
    #
    class GetAutoshiftObserverNotificationStatusResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that Amazon Web Services shifts
    #   traffic for. The identifier is the Amazon Resource Name (ARN) for
    #   the resource.
    #
    #   At this time, supported resources are Network Load Balancers and
    #   Application Load Balancers with cross-zone load balancing turned
    #   off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetManagedResourceRequest AWS API Documentation
    #
    class GetManagedResourceRequest < Struct.new(
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applied_weights
    #   A collection of key-value pairs that indicate whether resources are
    #   active in Availability Zones or not. The key name is the
    #   Availability Zone where the resource is deployed. The value is 1 or
    #   0.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] autoshifts
    #   An array of the autoshifts that are active for the resource.
    #   @return [Array<Types::AutoshiftInResource>]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] practice_run_configuration
    #   The practice run configuration for zonal autoshift that's
    #   associated with the resource.
    #   @return [Types::PracticeRunConfiguration]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The status for zonal autoshift for a resource. When the autoshift
    #   status is `ENABLED`, Amazon Web Services shifts traffic for a
    #   resource away from an Availability Zone, on your behalf, when Amazon
    #   Web Services determines that there's an issue in the Availability
    #   Zone that could potentially affect customers.
    #   @return [String]
    #
    # @!attribute [rw] zonal_shifts
    #   The zonal shifts that are currently active for a resource.
    #   @return [Array<Types::ZonalShiftInResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetManagedResourceResponse AWS API Documentation
    #
    class GetManagedResourceResponse < Struct.new(
      :applied_weights,
      :arn,
      :autoshifts,
      :name,
      :practice_run_configuration,
      :zonal_autoshift_status,
      :zonal_shifts)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the autoshift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListAutoshiftsRequest AWS API Documentation
    #
    class ListAutoshiftsRequest < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The items in the response list.
    #   @return [Array<Types::AutoshiftSummary>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListAutoshiftsResponse AWS API Documentation
    #
    class ListAutoshiftsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListManagedResourcesRequest AWS API Documentation
    #
    class ListManagedResourcesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The items in the response list.
    #   @return [Array<Types::ManagedResourceSummary>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListManagedResourcesResponse AWS API Documentation
    #
    class ListManagedResourcesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that you want to list zonal shifts
    #   for. The identifier is the Amazon Resource Name (ARN) for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE**: The zonal shift has been started and active.
    #
    #   * **EXPIRED**: The zonal shift has expired (the expiry time was
    #     exceeded).
    #
    #   * **CANCELED**: The zonal shift was canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListZonalShiftsRequest AWS API Documentation
    #
    class ListZonalShiftsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_identifier,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The items in the response list.
    #   @return [Array<Types::ZonalShiftSummary>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListZonalShiftsResponse AWS API Documentation
    #
    class ListZonalShiftsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex structure for a managed resource in an Amazon Web Services
    # account with information about zonal shifts and autoshifts.
    #
    # A managed resource is a load balancer that has been registered with
    # Route 53 ARC by Elastic Load Balancing. You can start a zonal shift in
    # Route 53 ARC for a managed resource to temporarily move traffic for
    # the resource away from an Availability Zone in an Amazon Web Services
    # Region. You can also configure zonal autoshift for a managed resource.
    #
    # <note markdown="1"> At this time, managed resources are Network Load Balancers and
    # Application Load Balancers with cross-zone load balancing turned off.
    #
    #  </note>
    #
    # @!attribute [rw] applied_weights
    #   A collection of key-value pairs that indicate whether resources are
    #   active in Availability Zones or not. The key name is the
    #   Availability Zone where the resource is deployed. The value is 1 or
    #   0.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the managed resource.
    #   @return [String]
    #
    # @!attribute [rw] autoshifts
    #   An array of the autoshifts that have been completed for a resource.
    #   @return [Array<Types::AutoshiftInResource>]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones that a resource is deployed in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the managed resource.
    #   @return [String]
    #
    # @!attribute [rw] practice_run_status
    #   This status tracks whether a practice run configuration exists for a
    #   resource. When you configure a practice run for a resource so that a
    #   practice run configuration exists, Route 53 ARC sets this value to
    #   `ENABLED`. If a you have not configured a practice run for the
    #   resource, or delete a practice run configuration, Route 53 ARC sets
    #   the value to `DISABLED`.
    #
    #   Route 53 ARC updates this status; you can't set a practice run
    #   status to `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The status of autoshift for a resource. When you configure zonal
    #   autoshift for a resource, you can set the value of the status to
    #   `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] zonal_shifts
    #   An array of the zonal shifts for a resource.
    #   @return [Array<Types::ZonalShiftInResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ManagedResourceSummary AWS API Documentation
    #
    class ManagedResourceSummary < Struct.new(
      :applied_weights,
      :arn,
      :autoshifts,
      :availability_zones,
      :name,
      :practice_run_status,
      :zonal_autoshift_status,
      :zonal_shifts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A practice run configuration for a resource includes the Amazon
    # CloudWatch alarms that you've specified for a practice run, as well
    # as any blocked dates or blocked windows for the practice run. When a
    # resource has a practice run configuration, Route 53 ARC shifts traffic
    # for the resource weekly for practice runs.
    #
    # Practice runs are required for zonal autoshift. The zonal shifts that
    # Route 53 ARC starts for practice runs help you to ensure that shifting
    # away traffic from an Availability Zone during an autoshift is safe for
    # your application.
    #
    # You can update or delete a practice run configuration. Before you
    # delete a practice run configuration, you must disable zonal autoshift
    # for the resource. A practice run configuration is required when zonal
    # autoshift is enabled.
    #
    # @!attribute [rw] blocked_dates
    #   An array of one or more dates that you can specify when Amazon Web
    #   Services does not start practice runs for a resource.
    #
    #   Specify blocked dates, in UTC, in the format `YYYY-MM-DD`, separated
    #   by spaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocked_windows
    #   An array of one or more windows of days and times that you can block
    #   Route 53 ARC from starting practice runs for a resource.
    #
    #   Specify the blocked windows in UTC, using the format
    #   `DAY:HH:MM-DAY:HH:MM`, separated by spaces. For example,
    #   `MON:18:30-MON:19:30 TUE:18:30-TUE:19:30`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocking_alarms
    #   The *blocking alarm* for practice runs is an optional alarm that you
    #   can specify that blocks practice runs when the alarm is in an
    #   `ALARM` state.
    #   @return [Array<Types::ControlCondition>]
    #
    # @!attribute [rw] outcome_alarms
    #   The *outcome alarm* for practice runs is an alarm that you specify
    #   that ends a practice run when the alarm is in an `ALARM` state.
    #   @return [Array<Types::ControlCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/PracticeRunConfiguration AWS API Documentation
    #
    class PracticeRunConfiguration < Struct.new(
      :blocked_dates,
      :blocked_windows,
      :blocking_alarms,
      :outcome_alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input requested a resource that was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   moved away from for a resource when you start a zonal shift. Until
    #   the zonal shift expires or you cancel it, traffic for the resource
    #   is instead moved to other Availability Zones in the Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The length of time that you want a zonal shift to be active, which
    #   Route 53 ARC converts to an expiry time (expiration time). Zonal
    #   shifts are temporary. You can set a zonal shift to be active
    #   initially for up to three days (72 hours).
    #
    #   If you want to still keep traffic away from an Availability Zone,
    #   you can update the zonal shift and set a new expiration. You can
    #   also cancel a zonal shift, before it expires, for example, if
    #   you're ready to restore traffic to the Availability Zone.
    #
    #   To set a length of time for a zonal shift to be active, specify a
    #   whole number, and then one of the following, with no space:
    #
    #   * **A lowercase letter m:** To specify that the value is in minutes.
    #
    #   * **A lowercase letter h:** To specify that the value is in hours.
    #
    #   For example: `20h` means the zonal shift expires in 20 hours. `120m`
    #   means the zonal shift expires in 120 minutes (2 hours).
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that Amazon Web Services shifts
    #   traffic for. The identifier is the Amazon Resource Name (ARN) for
    #   the resource.
    #
    #   At this time, supported resources are Network Load Balancers and
    #   Application Load Balancers with cross-zone load balancing turned
    #   off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/StartZonalShiftRequest AWS API Documentation
    #
    class StartZonalShiftRequest < Struct.new(
      :away_from,
      :comment,
      :expires_in,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status to set for autoshift observer notification. If the status
    #   is `ENABLED`, Route 53 ARC includes all autoshift events when you
    #   use the Amazon EventBridge pattern `Autoshift In Progress`. When the
    #   status is `DISABLED`, Route 53 ARC includes only autoshift events
    #   for autoshifts when one or more of your resources is included in the
    #   autoshift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateAutoshiftObserverNotificationStatusRequest AWS API Documentation
    #
    class UpdateAutoshiftObserverNotificationStatusRequest < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status for autoshift observer notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateAutoshiftObserverNotificationStatusResponse AWS API Documentation
    #
    class UpdateAutoshiftObserverNotificationStatusResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blocked_dates
    #   Add, change, or remove blocked dates for a practice run in zonal
    #   autoshift.
    #
    #   Optionally, you can block practice runs for specific calendar dates.
    #   The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you
    #   specify dates, that dates and times for practice runs are in UTC.
    #   Separate multiple blocked dates with spaces.
    #
    #   For example, if you have an application update scheduled to launch
    #   on May 1, 2024, and you don't want practice runs to shift traffic
    #   away at that time, you could set a blocked date for `2024-05-01`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocked_windows
    #   Add, change, or remove windows of days and times for when you can,
    #   optionally, block Route 53 ARC from starting a practice run for a
    #   resource.
    #
    #   The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in
    #   mind, when you specify dates, that dates and times for practice runs
    #   are in UTC. Also, be aware of potential time adjustments that might
    #   be required for daylight saving time differences. Separate multiple
    #   blocked windows with spaces.
    #
    #   For example, say you run business report summaries three days a
    #   week. For this scenario, you might set the following recurring days
    #   and times as blocked windows, for example: `MON-20:30-21:30
    #   WED-20:30-21:30 FRI-20:30-21:30`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocking_alarms
    #   Add, change, or remove the Amazon CloudWatch alarm that you
    #   optionally specify as the blocking alarm for practice runs.
    #   @return [Array<Types::ControlCondition>]
    #
    # @!attribute [rw] outcome_alarms
    #   Specify a new the Amazon CloudWatch alarm as the outcome alarm for
    #   practice runs.
    #   @return [Array<Types::ControlCondition>]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that you want to update the practice
    #   run configuration for. The identifier is the Amazon Resource Name
    #   (ARN) for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdatePracticeRunConfigurationRequest AWS API Documentation
    #
    class UpdatePracticeRunConfigurationRequest < Struct.new(
      :blocked_dates,
      :blocked_windows,
      :blocking_alarms,
      :outcome_alarms,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that you updated the
    #   practice run for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource that you updated the practice run for.
    #   @return [String]
    #
    # @!attribute [rw] practice_run_configuration
    #   The practice run configuration that was updated.
    #   @return [Types::PracticeRunConfiguration]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The zonal autoshift status for the resource that you updated the
    #   practice run for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdatePracticeRunConfigurationResponse AWS API Documentation
    #
    class UpdatePracticeRunConfigurationResponse < Struct.new(
      :arn,
      :name,
      :practice_run_configuration,
      :zonal_autoshift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that you want to update the zonal
    #   autoshift configuration for. The identifier is the Amazon Resource
    #   Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The zonal autoshift status for the resource that you want to update
    #   the zonal autoshift configuration for. Choose `ENABLED` to authorize
    #   Amazon Web Services to shift away resource traffic for an
    #   application from an Availability Zone during events, on your behalf,
    #   to help reduce time to recovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateZonalAutoshiftConfigurationRequest AWS API Documentation
    #
    class UpdateZonalAutoshiftConfigurationRequest < Struct.new(
      :resource_identifier,
      :zonal_autoshift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that you updated the zonal autoshift
    #   configuration for. The identifier is the Amazon Resource Name (ARN)
    #   for the resource.
    #   @return [String]
    #
    # @!attribute [rw] zonal_autoshift_status
    #   The updated zonal autoshift status for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateZonalAutoshiftConfigurationResponse AWS API Documentation
    #
    class UpdateZonalAutoshiftConfigurationResponse < Struct.new(
      :resource_identifier,
      :zonal_autoshift_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The length of time that you want a zonal shift to be active, which
    #   Route 53 ARC converts to an expiry time (expiration time). Zonal
    #   shifts are temporary. You can set a zonal shift to be active
    #   initially for up to three days (72 hours).
    #
    #   If you want to still keep traffic away from an Availability Zone,
    #   you can update the zonal shift and set a new expiration. You can
    #   also cancel a zonal shift, before it expires, for example, if
    #   you're ready to restore traffic to the Availability Zone.
    #
    #   To set a length of time for a zonal shift to be active, specify a
    #   whole number, and then one of the following, with no space:
    #
    #   * **A lowercase letter m:** To specify that the value is in minutes.
    #
    #   * **A lowercase letter h:** To specify that the value is in hours.
    #
    #   For example: `20h` means the zonal shift expires in 20 hours. `120m`
    #   means the zonal shift expires in 120 minutes (2 hours).
    #   @return [String]
    #
    # @!attribute [rw] zonal_shift_id
    #   The identifier of a zonal shift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateZonalShiftRequest AWS API Documentation
    #
    class UpdateZonalShiftRequest < Struct.new(
      :comment,
      :expires_in,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   moved away from for a resource when you start a zonal shift. Until
    #   the zonal shift expires or you cancel it, traffic for the resource
    #   is instead moved to other Availability Zones in the Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The expiry time (expiration time) for a customer-initiated zonal
    #   shift. A zonal shift is temporary and must be set to expire when you
    #   start the zonal shift. You can initially set a zonal shift to expire
    #   in a maximum of three days (72 hours). However, you can update a
    #   zonal shift to set a new expiration at any time.
    #
    #   When you start a zonal shift, you specify how long you want it to be
    #   active, which Route 53 ARC converts to an expiry time (expiration
    #   time). You can cancel a zonal shift when you're ready to restore
    #   traffic to the Availability Zone, or just wait for it to expire. Or
    #   you can update the zonal shift to specify another length of time to
    #   expire in.
    #   @return [Time]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the resource that Amazon Web Services shifts
    #   traffic for. The identifier is the Amazon Resource Name (ARN) for
    #   the resource.
    #
    #   At this time, supported resources are Network Load Balancers and
    #   Application Load Balancers with cross-zone load balancing turned
    #   off.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time (UTC) when the zonal shift starts.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE:** The zonal shift has been started and active.
    #
    #   * **EXPIRED:** The zonal shift has expired (the expiry time was
    #     exceeded).
    #
    #   * **CANCELED:** The zonal shift was canceled.
    #   @return [String]
    #
    # @!attribute [rw] zonal_shift_id
    #   The identifier of a zonal shift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ZonalShift AWS API Documentation
    #
    class ZonalShift < Struct.new(
      :away_from,
      :comment,
      :expiry_time,
      :resource_identifier,
      :start_time,
      :status,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex structure that lists the zonal shifts for a managed resource
    # and their statuses for the resource.
    #
    # @!attribute [rw] applied_status
    #   The `appliedStatus` field specifies which application traffic shift
    #   is in effect for a resource when there is more than one active
    #   traffic shift. There can be more than one application traffic shift
    #   in progress at the same time - that is, practice run zonal shifts,
    #   customer-initiated zonal shifts, or an autoshift. The
    #   `appliedStatus` field for a shift that is in progress for a resource
    #   can have one of two values: `APPLIED` or `NOT_APPLIED`. The zonal
    #   shift or autoshift that is currently in effect for the resource has
    #   an `appliedStatus` set to `APPLIED`.
    #
    #   The overall principle for precedence is that zonal shifts that you
    #   start as a customer take precedence autoshifts, which take
    #   precedence over practice runs. That is, customer-initiated zonal
    #   shifts &gt; autoshifts &gt; practice run zonal shifts.
    #
    #   For more information, see [How zonal autoshift and practice runs
    #   work][1] in the Amazon Route 53 Application Recovery Controller
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html
    #   @return [String]
    #
    # @!attribute [rw] away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   moved away from for a resource when you start a zonal shift. Until
    #   the zonal shift expires or you cancel it, traffic for the resource
    #   is instead moved to other Availability Zones in the Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter for a customer-initiated zonal shift. Only
    #   the latest comment is retained; no comment history is maintained.
    #   That is, a new comment overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The expiry time (expiration time) for a customer-initiated zonal
    #   shift. A zonal shift is temporary and must be set to expire when you
    #   start the zonal shift. You can initially set a zonal shift to expire
    #   in a maximum of three days (72 hours). However, you can update a
    #   zonal shift to set a new expiration at any time.
    #
    #   When you start a zonal shift, you specify how long you want it to be
    #   active, which Route 53 ARC converts to an expiry time (expiration
    #   time). You can cancel a zonal shift when you're ready to restore
    #   traffic to the Availability Zone, or just wait for it to expire. Or
    #   you can update the zonal shift to specify another length of time to
    #   expire in.
    #   @return [Time]
    #
    # @!attribute [rw] practice_run_outcome
    #   The outcome, or end state, returned for a practice run. The
    #   following values can be returned:
    #
    #   * **PENDING:** Outcome value when a practice run is in progress.
    #
    #   * **SUCCEEDED:** Outcome value when the outcome alarm specified for
    #     the practice run configuration does not go into an `ALARM` state
    #     during the practice run, and the practice run was not interrupted
    #     before it completed the expected 30 minute zonal shift.
    #
    #   * **INTERRUPTED:** Outcome value when the practice run was stopped
    #     before the expected 30 minute zonal shift duration, or there was
    #     another problem with the practice run that created an inconclusive
    #     outcome.
    #
    #   * **FAILED:** Outcome value when the outcome alarm specified for the
    #     practice run configuration goes into an `ALARM` state during the
    #     practice run, and the practice run was not interrupted before it
    #     completed.
    #
    #   For more information about practice run outcomes, see [
    #   Considerations when you configure zonal autoshift][1] in the Amazon
    #   Route 53 Application Recovery Controller Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.configure.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the resource to include in a zonal shift. The
    #   identifier is the Amazon Resource Name (ARN) for the resource.
    #
    #   At this time, you can only start a zonal shift for Network Load
    #   Balancers and Application Load Balancers with cross-zone load
    #   balancing turned off.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time (UTC) when the zonal shift starts.
    #   @return [Time]
    #
    # @!attribute [rw] zonal_shift_id
    #   The identifier of a zonal shift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ZonalShiftInResource AWS API Documentation
    #
    class ZonalShiftInResource < Struct.new(
      :applied_status,
      :away_from,
      :comment,
      :expiry_time,
      :practice_run_outcome,
      :resource_identifier,
      :start_time,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists information about zonal shifts in Amazon Route 53 Application
    # Recovery Controller, including zonal shifts that you start yourself
    # and zonal shifts that Route 53 ARC starts on your behalf for practice
    # runs with zonal autoshift.
    #
    # Zonal shifts are temporary, including customer-initiated zonal shifts
    # and the zonal autoshift practice run zonal shifts that Route 53 ARC
    # starts weekly, on your behalf. A zonal shift that a customer starts
    # can be active for up to three days (72 hours). A practice run zonal
    # shift has a 30 minute duration.
    #
    # @!attribute [rw] away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   moved away from for a resource when you start a zonal shift. Until
    #   the zonal shift expires or you cancel it, traffic for the resource
    #   is instead moved to other Availability Zones in the Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. That is, a
    #   new comment overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The expiry time (expiration time) for a customer-initiated zonal
    #   shift. A zonal shift is temporary and must be set to expire when you
    #   start the zonal shift. You can initially set a zonal shift to expire
    #   in a maximum of three days (72 hours). However, you can update a
    #   zonal shift to set a new expiration at any time.
    #
    #   When you start a zonal shift, you specify how long you want it to be
    #   active, which Route 53 ARC converts to an expiry time (expiration
    #   time). You can cancel a zonal shift when you're ready to restore
    #   traffic to the Availability Zone, or just wait for it to expire. Or
    #   you can update the zonal shift to specify another length of time to
    #   expire in.
    #   @return [Time]
    #
    # @!attribute [rw] practice_run_outcome
    #   The outcome, or end state, of a practice run. The following values
    #   can be returned:
    #
    #   * **PENDING:** Outcome value when the practice run is in progress.
    #
    #   * **SUCCEEDED:** Outcome value when the outcome alarm specified for
    #     the practice run configuration does not go into an `ALARM` state
    #     during the practice run, and the practice run was not interrupted
    #     before it completed.
    #
    #   * **INTERRUPTED:** Outcome value when the practice run did not run
    #     for the expected 30 minutes or there was another problem with the
    #     practice run that created an inconclusive outcome.
    #
    #   * **FAILED:** Outcome value when the outcome alarm specified for the
    #     practice run configuration goes into an `ALARM` state during the
    #     practice run, and the practice run was not interrupted before it
    #     completed.
    #
    #   For more information about practice run outcomes, see [
    #   Considerations when you configure zonal autoshift][1] in the Amazon
    #   Route 53 Application Recovery Controller Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.configure.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the resource to include in a zonal shift. The
    #   identifier is the Amazon Resource Name (ARN) for the resource.
    #
    #   At this time, you can only start a zonal shift for Network Load
    #   Balancers and Application Load Balancers with cross-zone load
    #   balancing turned off.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time (UTC) when the zonal shift starts.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE:** The zonal shift has been started and active.
    #
    #   * **EXPIRED:** The zonal shift has expired (the expiry time was
    #     exceeded).
    #
    #   * **CANCELED:** The zonal shift was canceled.
    #   @return [String]
    #
    # @!attribute [rw] zonal_shift_id
    #   The identifier of a zonal shift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ZonalShiftSummary AWS API Documentation
    #
    class ZonalShiftSummary < Struct.new(
      :away_from,
      :comment,
      :expiry_time,
      :practice_run_outcome,
      :resource_identifier,
      :start_time,
      :status,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

