# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Billing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActiveTimeRange = Shapes::StructureShape.new(name: 'ActiveTimeRange')
    BillingViewArn = Shapes::StringShape.new(name: 'BillingViewArn')
    BillingViewList = Shapes::ListShape.new(name: 'BillingViewList')
    BillingViewListElement = Shapes::StructureShape.new(name: 'BillingViewListElement')
    BillingViewName = Shapes::StringShape.new(name: 'BillingViewName')
    BillingViewType = Shapes::StringShape.new(name: 'BillingViewType')
    BillingViewsMaxResults = Shapes::IntegerShape.new(name: 'BillingViewsMaxResults')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListBillingViewsRequest = Shapes::StructureShape.new(name: 'ListBillingViewsRequest')
    ListBillingViewsResponse = Shapes::StructureShape.new(name: 'ListBillingViewsResponse')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActiveTimeRange.add_member(:active_after_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "activeAfterInclusive"))
    ActiveTimeRange.add_member(:active_before_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "activeBeforeInclusive"))
    ActiveTimeRange.struct_class = Types::ActiveTimeRange

    BillingViewList.member = Shapes::ShapeRef.new(shape: BillingViewListElement)

    BillingViewListElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "arn"))
    BillingViewListElement.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    BillingViewListElement.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    BillingViewListElement.add_member(:billing_view_type, Shapes::ShapeRef.new(shape: BillingViewType, location_name: "billingViewType"))
    BillingViewListElement.struct_class = Types::BillingViewListElement

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListBillingViewsRequest.add_member(:active_time_range, Shapes::ShapeRef.new(shape: ActiveTimeRange, required: true, location_name: "activeTimeRange"))
    ListBillingViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: "maxResults"))
    ListBillingViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListBillingViewsRequest.struct_class = Types::ListBillingViewsRequest

    ListBillingViewsResponse.add_member(:billing_views, Shapes::ShapeRef.new(shape: BillingViewList, required: true, location_name: "billingViews"))
    ListBillingViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListBillingViewsResponse.struct_class = Types::ListBillingViewsResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-07"

      api.metadata = {
        "apiVersion" => "2023-09-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "billing",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Billing",
        "serviceId" => "Billing",
        "signatureVersion" => "v4",
        "signingName" => "billing",
        "targetPrefix" => "AWSBilling",
        "uid" => "billing-2023-09-07",
      }

      api.add_operation(:list_billing_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillingViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillingViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillingViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
