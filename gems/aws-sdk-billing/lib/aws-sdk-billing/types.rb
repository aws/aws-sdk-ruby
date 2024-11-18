# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Billing
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time range with a start and end time.
    #
    # @!attribute [rw] active_after_inclusive
    #   The inclusive time range start date.
    #   @return [Time]
    #
    # @!attribute [rw] active_before_inclusive
    #   The inclusive time range end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ActiveTimeRange AWS API Documentation
    #
    class ActiveTimeRange < Struct.new(
      :active_after_inclusive,
      :active_before_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a billing view.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A list of names of the Billing view.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The list of owners of the Billing view.
    #   @return [String]
    #
    # @!attribute [rw] billing_view_type
    #   The type of billing view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewListElement AWS API Documentation
    #
    class BillingViewListElement < Struct.new(
      :arn,
      :name,
      :owner_account_id,
      :billing_view_type)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The request processing failed because of an unknown error, exception,
    # or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_time_range
    #   The time range for the billing views listed. `PRIMARY` billing view
    #   is always listed. `BILLING_GROUP` billing views are listed for time
    #   ranges when the associated billing group resource in Billing
    #   Conductor is active. The time range must be within one calendar
    #   month.
    #   @return [Types::ActiveTimeRange]
    #
    # @!attribute [rw] max_results
    #   The maximum number of billing views to retrieve. Default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that is used on subsequent calls to list
    #   billing views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViewsRequest AWS API Documentation
    #
    class ListBillingViewsRequest < Struct.new(
      :active_time_range,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_views
    #   A list of `BillingViewListElement` retrieved.
    #   @return [Array<Types::BillingViewListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use on subsequent calls to list billing
    #   views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViewsResponse AWS API Documentation
    #
    class ListBillingViewsResponse < Struct.new(
      :billing_views,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
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
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field's information of a request that resulted in an exception.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

