# frozen_string_literal: true

# This is generated code!

module Aws::BCMRecommendedActions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "BCMRecommendedActionsAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bcmrecommendedactions#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    ActionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#ActionFilter', name: 'ActionFilter')
    ActionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bcmrecommendedactions#ActionFilterList', name: 'ActionFilterList')
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bcmrecommendedactions#ActionType', name: 'ActionType')
    Context = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bcmrecommendedactions#Context', name: 'Context')
    Feature = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bcmrecommendedactions#Feature', name: 'Feature')
    FilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bcmrecommendedactions#FilterName', name: 'FilterName')
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bcmrecommendedactions#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "[\\S\\s]*"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bcmrecommendedactions#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 1}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "BCMRecommendedActionsInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRecommendedActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#ListRecommendedActionsRequest', name: 'ListRecommendedActionsRequest')
    ListRecommendedActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#ListRecommendedActionsResponse', name: 'ListRecommendedActionsResponse')
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bcmrecommendedactions#MatchOption', name: 'MatchOption')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bcmrecommendedactions#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextStep = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bcmrecommendedactions#NextStep', name: 'NextStep')
    NextSteps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bcmrecommendedactions#NextSteps', name: 'NextSteps')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bcmrecommendedactions#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    RecommendedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#RecommendedAction', name: 'RecommendedAction')
    RecommendedActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bcmrecommendedactions#RecommendedActions', name: 'RecommendedActions')
    RequestFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#RequestFilter', name: 'RequestFilter')
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bcmrecommendedactions#Severity', name: 'Severity')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "BCMRecommendedActionsThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "BCMRecommendedActionsValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bcmrecommendedactions#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bcmrecommendedactions#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bcmrecommendedactions#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionFilter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'key', traits: {"smithy.api#required" => {}}))
    ActionFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: 'matchOption', traits: {"smithy.api#required" => {}}))
    ActionFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'values', traits: {"smithy.api#required" => {}}))
    ActionFilter.type = Types::ActionFilter
    ActionFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFilter)
    ActionType.add_member(:add_alternate_billing_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD_ALTERNATE_BILLING_CONTACT', traits: {"smithy.api#enumValue" => "ADD_ALTERNATE_BILLING_CONTACT"}))
    ActionType.add_member(:create_anomaly_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_ANOMALY_MONITOR', traits: {"smithy.api#enumValue" => "CREATE_ANOMALY_MONITOR"}))
    ActionType.add_member(:create_budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_BUDGET', traits: {"smithy.api#enumValue" => "CREATE_BUDGET"}))
    ActionType.add_member(:enable_cost_optimization_hub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_COST_OPTIMIZATION_HUB', traits: {"smithy.api#enumValue" => "ENABLE_COST_OPTIMIZATION_HUB"}))
    ActionType.add_member(:migrate_to_granular_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIGRATE_TO_GRANULAR_PERMISSIONS', traits: {"smithy.api#enumValue" => "MIGRATE_TO_GRANULAR_PERMISSIONS"}))
    ActionType.add_member(:payments_due, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENTS_DUE', traits: {"smithy.api#enumValue" => "PAYMENTS_DUE"}))
    ActionType.add_member(:payments_past_due, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENTS_PAST_DUE', traits: {"smithy.api#enumValue" => "PAYMENTS_PAST_DUE"}))
    ActionType.add_member(:review_anomalies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_ANOMALIES', traits: {"smithy.api#enumValue" => "REVIEW_ANOMALIES"}))
    ActionType.add_member(:review_budget_alerts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_BUDGET_ALERTS', traits: {"smithy.api#enumValue" => "REVIEW_BUDGET_ALERTS"}))
    ActionType.add_member(:review_budgets_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_BUDGETS_EXCEEDED', traits: {"smithy.api#enumValue" => "REVIEW_BUDGETS_EXCEEDED"}))
    ActionType.add_member(:review_expiring_ri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_EXPIRING_RI', traits: {"smithy.api#enumValue" => "REVIEW_EXPIRING_RI"}))
    ActionType.add_member(:review_expiring_sp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_EXPIRING_SP', traits: {"smithy.api#enumValue" => "REVIEW_EXPIRING_SP"}))
    ActionType.add_member(:review_freetier_usage_alerts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_FREETIER_USAGE_ALERTS', traits: {"smithy.api#enumValue" => "REVIEW_FREETIER_USAGE_ALERTS"}))
    ActionType.add_member(:review_savings_opportunity_recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVIEW_SAVINGS_OPPORTUNITY_RECOMMENDATIONS', traits: {"smithy.api#enumValue" => "REVIEW_SAVINGS_OPPORTUNITY_RECOMMENDATIONS"}))
    ActionType.add_member(:update_expired_payment_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_EXPIRED_PAYMENT_METHOD', traits: {"smithy.api#enumValue" => "UPDATE_EXPIRED_PAYMENT_METHOD"}))
    ActionType.add_member(:update_invalid_payment_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_INVALID_PAYMENT_METHOD', traits: {"smithy.api#enumValue" => "UPDATE_INVALID_PAYMENT_METHOD"}))
    ActionType.add_member(:update_tax_exemption_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_TAX_EXEMPTION_CERTIFICATE', traits: {"smithy.api#enumValue" => "UPDATE_TAX_EXEMPTION_CERTIFICATE"}))
    ActionType.add_member(:update_tax_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_TAX_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "UPDATE_TAX_REGISTRATION_NUMBER"}))
    Context.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Context.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Feature.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    Feature.add_member(:budgets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUDGETS', traits: {"smithy.api#enumValue" => "BUDGETS"}))
    Feature.add_member(:cost_anomaly_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COST_ANOMALY_DETECTION', traits: {"smithy.api#enumValue" => "COST_ANOMALY_DETECTION"}))
    Feature.add_member(:cost_optimization_hub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COST_OPTIMIZATION_HUB', traits: {"smithy.api#enumValue" => "COST_OPTIMIZATION_HUB"}))
    Feature.add_member(:free_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREE_TIER', traits: {"smithy.api#enumValue" => "FREE_TIER"}))
    Feature.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    Feature.add_member(:payments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENTS', traits: {"smithy.api#enumValue" => "PAYMENTS"}))
    Feature.add_member(:reservations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVATIONS', traits: {"smithy.api#enumValue" => "RESERVATIONS"}))
    Feature.add_member(:savings_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS_PLANS', traits: {"smithy.api#enumValue" => "SAVINGS_PLANS"}))
    Feature.add_member(:tax_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_SETTINGS', traits: {"smithy.api#enumValue" => "TAX_SETTINGS"}))
    FilterName.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEATURE', traits: {"smithy.api#enumValue" => "FEATURE"}))
    FilterName.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVERITY', traits: {"smithy.api#enumValue" => "SEVERITY"}))
    FilterName.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TYPE', traits: {"smithy.api#enumValue" => "TYPE"}))
    FilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListRecommendedActionsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFilter, location_name: 'filter'))
    ListRecommendedActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListRecommendedActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListRecommendedActionsRequest.type = Types::ListRecommendedActionsRequest
    ListRecommendedActionsResponse.add_member(:recommended_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActions, location_name: 'recommendedActions', traits: {"smithy.api#required" => {}}))
    ListRecommendedActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListRecommendedActionsResponse.type = Types::ListRecommendedActionsResponse
    MatchOption.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    MatchOption.add_member(:not_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    NextSteps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextStep)
    RecommendedAction.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    RecommendedAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'type'))
    RecommendedAction.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId'))
    RecommendedAction.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity'))
    RecommendedAction.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Feature, location_name: 'feature'))
    RecommendedAction.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context'))
    RecommendedAction.add_member(:next_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextSteps, location_name: 'nextSteps'))
    RecommendedAction.add_member(:last_updated_time_stamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'lastUpdatedTimeStamp'))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedAction)
    RequestFilter.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFilterList, location_name: 'actions'))
    RequestFilter.type = Types::RequestFilter
    Severity.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    Severity.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "WARNING"}))
    Severity.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL', traits: {"smithy.api#enumValue" => "CRITICAL"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    AWSBillingAndCostManagementRecommendedActions = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bcmrecommendedactions#AWSBillingAndCostManagementRecommendedActions"
      service.name = "AWSBillingAndCostManagementRecommendedActions"
      service.version = "2024-11-14"
      service.traits = {"aws.api#service" => {"sdkId" => "BCM Recommended Actions", "arnNamespace" => "bcm-recommended-actions", "endpointPrefix" => "bcm-recommended-actions", "docId" => "bcm-recommended-actions-2024-11-14"}, "aws.auth#sigv4" => {"name" => "bcm-recommended-actions"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Billing and Cost Management Recommended Actions"}
      service.add_operation(:list_recommended_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmrecommendedactions#ListRecommendedActions"
        operation.name = "ListRecommendedActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendedActionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendedActionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListRecommendedActionsSuccess", "params" => {"maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListRecommendedActions.new
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
