# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BCMRecommendedActions
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActionFilter = Shapes::StructureShape.new(name: 'ActionFilter')
    ActionFilterList = Shapes::ListShape.new(name: 'ActionFilterList')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    Context = Shapes::MapShape.new(name: 'Context')
    Feature = Shapes::StringShape.new(name: 'Feature')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRecommendedActionsRequest = Shapes::StructureShape.new(name: 'ListRecommendedActionsRequest')
    ListRecommendedActionsResponse = Shapes::StructureShape.new(name: 'ListRecommendedActionsResponse')
    MatchOption = Shapes::StringShape.new(name: 'MatchOption')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextStep = Shapes::StringShape.new(name: 'NextStep')
    NextSteps = Shapes::ListShape.new(name: 'NextSteps')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    RecommendedAction = Shapes::StructureShape.new(name: 'RecommendedAction')
    RecommendedActions = Shapes::ListShape.new(name: 'RecommendedActions')
    RequestFilter = Shapes::StructureShape.new(name: 'RequestFilter')
    Severity = Shapes::StringShape.new(name: 'Severity')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionFilter.add_member(:key, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "key"))
    ActionFilter.add_member(:match_option, Shapes::ShapeRef.new(shape: MatchOption, required: true, location_name: "matchOption"))
    ActionFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    ActionFilter.struct_class = Types::ActionFilter

    ActionFilterList.member = Shapes::ShapeRef.new(shape: ActionFilter)

    Context.key = Shapes::ShapeRef.new(shape: String)
    Context.value = Shapes::ShapeRef.new(shape: String)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRecommendedActionsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: RequestFilter, location_name: "filter"))
    ListRecommendedActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRecommendedActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedActionsRequest.struct_class = Types::ListRecommendedActionsRequest

    ListRecommendedActionsResponse.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, required: true, location_name: "recommendedActions"))
    ListRecommendedActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedActionsResponse.struct_class = Types::ListRecommendedActionsResponse

    NextSteps.member = Shapes::ShapeRef.new(shape: NextStep)

    RecommendedAction.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    RecommendedAction.add_member(:type, Shapes::ShapeRef.new(shape: ActionType, location_name: "type"))
    RecommendedAction.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    RecommendedAction.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    RecommendedAction.add_member(:feature, Shapes::ShapeRef.new(shape: Feature, location_name: "feature"))
    RecommendedAction.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "context"))
    RecommendedAction.add_member(:next_steps, Shapes::ShapeRef.new(shape: NextSteps, location_name: "nextSteps"))
    RecommendedAction.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdatedTimeStamp"))
    RecommendedAction.struct_class = Types::RecommendedAction

    RecommendedActions.member = Shapes::ShapeRef.new(shape: RecommendedAction)

    RequestFilter.add_member(:actions, Shapes::ShapeRef.new(shape: ActionFilterList, location_name: "actions"))
    RequestFilter.struct_class = Types::RequestFilter

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-11-14"

      api.metadata = {
        "apiVersion" => "2024-11-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bcm-recommended-actions",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Billing and Cost Management Recommended Actions",
        "serviceId" => "BCM Recommended Actions",
        "signatureVersion" => "v4",
        "signingName" => "bcm-recommended-actions",
        "targetPrefix" => "AWSBillingAndCostManagementRecommendedActions",
        "uid" => "bcm-recommended-actions-2024-11-14",
      }

      api.add_operation(:list_recommended_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendedActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendedActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendedActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
