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

    # @!attribute [rw] resource_identifier
    #   The identifier for the resource to include in a zonal shift. The
    #   identifier is the Amazon Resource Name (ARN) for the resource.
    #
    #   At this time, you can only start a zonal shift for Network Load
    #   Balancers and Application Load Balancers with cross-zone load
    #   balancing turned off.
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
    # @!attribute [rw] name
    #   The name of the resource.
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
      :name,
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
    # @!attribute [rw] status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE**: The zonal shift is started and active.
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

    # A complex structure for a managed resource in an account.
    #
    # A managed resource is a Network Load Balancer or Application Load
    # Balancer that has been registered with Route 53 ARC by Elastic Load
    # Balancing. You can start a zonal shift in Route 53 ARC for a managed
    # resource to temporarily move traffic for the resource away from an
    # Availability Zone in an AWS Region.
    #
    # <note markdown="1"> At this time, you can only start a zonal shift for Network Load
    # Balancers and Application Load Balancers with cross-zone load
    # balancing turned off.
    #
    #  </note>
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the managed resource.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones that a resource is deployed in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the managed resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ManagedResourceSummary AWS API Documentation
    #
    class ManagedResourceSummary < Struct.new(
      :arn,
      :availability_zones,
      :name)
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
    #   The Availability Zone that traffic is moved away from for a resource
    #   when you start a zonal shift. Until the zonal shift expires or you
    #   cancel it, traffic for the resource is instead moved to other
    #   Availability Zones in the AWS Region.
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
    #        <ul> <li> <p> <b>A lowercase letter m:</b> To specify that the value is in minutes.</p> </li> <li> <p> <b>A lowercase letter h:</b> To specify that the value is in hours.</p> </li> </ul> <p>For example: <code>20h</code> means the zonal shift expires in 20 hours. <code>120m</code> means the zonal shift expires in 120 minutes (2 hours).</p>
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

    # The input fails to satisfy the constraints specified by an AWS
    # service.
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
    #   The Availability Zone that traffic is moved away from for a resource
    #   when you start a zonal shift. Until the zonal shift expires or you
    #   cancel it, traffic for the resource is instead moved to other
    #   Availability Zones in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The expiry time (expiration time) for the zonal shift. A zonal shift
    #   is temporary and must be set to expire when you start the zonal
    #   shift. You can initially set a zonal shift to expire in a maximum of
    #   three days (72 hours). However, you can update a zonal shift to set
    #   a new expiration at any time.
    #
    #   When you start a zonal shift, you specify how long you want it to be
    #   active, which Route 53 ARC converts to an expiry time (expiration
    #   time). You can cancel a zonal shift, for example, if you're ready
    #   to restore traffic to the Availability Zone. Or you can update the
    #   zonal shift to specify another length of time to expire in.
    #   @return [Time]
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
    #   The time (UTC) when the zonal shift is started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE:** The zonal shift is started and active.
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
    #   An `appliedStatus` for a zonal shift for a resource can have one of
    #   two values: `APPLIED` or `NOT_APPLIED`.
    #   @return [String]
    #
    # @!attribute [rw] away_from
    #   The Availability Zone that traffic is moved away from for a resource
    #   when you start a zonal shift. Until the zonal shift expires or you
    #   cancel it, traffic for the resource is instead moved to other
    #   Availability Zones in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. That is, a
    #   new comment overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The expiry time (expiration time) for the zonal shift. A zonal shift
    #   is temporary and must be set to expire when you start the zonal
    #   shift. You can initially set a zonal shift to expire in a maximum of
    #   three days (72 hours). However, you can update a zonal shift to set
    #   a new expiration at any time.
    #
    #   When you start a zonal shift, you specify how long you want it to be
    #   active, which Route 53 ARC converts to an expiry time (expiration
    #   time). You can cancel a zonal shift, for example, if you're ready
    #   to restore traffic to the Availability Zone. Or you can update the
    #   zonal shift to specify another length of time to expire in.
    #   @return [Time]
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
    #   The time (UTC) when the zonal shift is started.
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
      :resource_identifier,
      :start_time,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You start a zonal shift to temporarily move load balancer traffic away
    # from an Availability Zone in a AWS Region. A zonal shift helps your
    # application recover immediately, for example, from a developer's bad
    # code deployment or from an AWS infrastructure failure in a single
    # Availability Zone. You can start a zonal shift in Route 53 ARC only
    # for managed resources in your account in an AWS Region. Supported AWS
    # resources are automatically registered with Route 53 ARC.
    #
    # Zonal shifts are temporary. A zonal shift can be active for up to
    # three days (72 hours).
    #
    # When you start a zonal shift, you specify how long you want it to be
    # active, which Amazon Route 53 Application Recovery Controller converts
    # to an expiry time (expiration time). You can cancel a zonal shift, for
    # example, if you're ready to restore traffic to the Availability Zone.
    # Or you can extend the zonal shift by updating the expiration so the
    # zonal shift is active longer.
    #
    # @!attribute [rw] away_from
    #   The Availability Zone that traffic is moved away from for a resource
    #   when you start a zonal shift. Until the zonal shift expires or you
    #   cancel it, traffic for the resource is instead moved to other
    #   Availability Zones in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. That is, a
    #   new comment overwrites any existing comment string.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The expiry time (expiration time) for the zonal shift. A zonal shift
    #   is temporary and must be set to expire when you start the zonal
    #   shift. You can initially set a zonal shift to expire in a maximum of
    #   three days (72 hours). However, you can update a zonal shift to set
    #   a new expiration at any time.
    #
    #   When you start a zonal shift, you specify how long you want it to be
    #   active, which Route 53 ARC converts to an expiry time (expiration
    #   time). You can cancel a zonal shift, for example, if you're ready
    #   to restore traffic to the Availability Zone. Or you can update the
    #   zonal shift to specify another length of time to expire in.
    #   @return [Time]
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
    #   The time (UTC) when the zonal shift is started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE:** The zonal shift is started and active.
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
      :resource_identifier,
      :start_time,
      :status,
      :zonal_shift_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
