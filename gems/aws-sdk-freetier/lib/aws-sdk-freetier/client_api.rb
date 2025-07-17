# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FreeTier
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountPlanStatus = Shapes::StringShape.new(name: 'AccountPlanStatus')
    AccountPlanType = Shapes::StringShape.new(name: 'AccountPlanType')
    Activities = Shapes::ListShape.new(name: 'Activities')
    ActivityId = Shapes::StringShape.new(name: 'ActivityId')
    ActivityReward = Shapes::UnionShape.new(name: 'ActivityReward')
    ActivityStatus = Shapes::StringShape.new(name: 'ActivityStatus')
    ActivitySummary = Shapes::StructureShape.new(name: 'ActivitySummary')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    FilterActivityStatuses = Shapes::ListShape.new(name: 'FilterActivityStatuses')
    FreeTierUsage = Shapes::StructureShape.new(name: 'FreeTierUsage')
    FreeTierUsages = Shapes::ListShape.new(name: 'FreeTierUsages')
    GenericDouble = Shapes::FloatShape.new(name: 'GenericDouble')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetAccountActivityRequest = Shapes::StructureShape.new(name: 'GetAccountActivityRequest')
    GetAccountActivityResponse = Shapes::StructureShape.new(name: 'GetAccountActivityResponse')
    GetAccountPlanStateRequest = Shapes::StructureShape.new(name: 'GetAccountPlanStateRequest')
    GetAccountPlanStateResponse = Shapes::StructureShape.new(name: 'GetAccountPlanStateResponse')
    GetFreeTierUsageRequest = Shapes::StructureShape.new(name: 'GetFreeTierUsageRequest')
    GetFreeTierUsageResponse = Shapes::StructureShape.new(name: 'GetFreeTierUsageResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListAccountActivitiesRequest = Shapes::StructureShape.new(name: 'ListAccountActivitiesRequest')
    ListAccountActivitiesResponse = Shapes::StructureShape.new(name: 'ListAccountActivitiesResponse')
    MatchOption = Shapes::StringShape.new(name: 'MatchOption')
    MatchOptions = Shapes::ListShape.new(name: 'MatchOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MonetaryAmount = Shapes::StructureShape.new(name: 'MonetaryAmount')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpgradeAccountPlanRequest = Shapes::StructureShape.new(name: 'UpgradeAccountPlanRequest')
    UpgradeAccountPlanResponse = Shapes::StructureShape.new(name: 'UpgradeAccountPlanResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Activities.member = Shapes::ShapeRef.new(shape: ActivitySummary)

    ActivityReward.add_member(:credit, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "credit"))
    ActivityReward.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ActivityReward.add_member_subclass(:credit, Types::ActivityReward::Credit)
    ActivityReward.add_member_subclass(:unknown, Types::ActivityReward::Unknown)
    ActivityReward.struct_class = Types::ActivityReward

    ActivitySummary.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    ActivitySummary.add_member(:title, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "title"))
    ActivitySummary.add_member(:reward, Shapes::ShapeRef.new(shape: ActivityReward, required: true, location_name: "reward"))
    ActivitySummary.add_member(:status, Shapes::ShapeRef.new(shape: ActivityStatus, required: true, location_name: "status"))
    ActivitySummary.struct_class = Types::ActivitySummary

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "Key"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    DimensionValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, required: true, location_name: "MatchOptions"))
    DimensionValues.struct_class = Types::DimensionValues

    Expression.add_member(:or, Shapes::ShapeRef.new(shape: Expressions, location_name: "Or"))
    Expression.add_member(:and, Shapes::ShapeRef.new(shape: Expressions, location_name: "And"))
    Expression.add_member(:not, Shapes::ShapeRef.new(shape: Expression, location_name: "Not"))
    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "Dimensions"))
    Expression.struct_class = Types::Expression

    Expressions.member = Shapes::ShapeRef.new(shape: Expression)

    FilterActivityStatuses.member = Shapes::ShapeRef.new(shape: ActivityStatus)

    FreeTierUsage.add_member(:service, Shapes::ShapeRef.new(shape: GenericString, location_name: "service"))
    FreeTierUsage.add_member(:operation, Shapes::ShapeRef.new(shape: GenericString, location_name: "operation"))
    FreeTierUsage.add_member(:usage_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "usageType"))
    FreeTierUsage.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "region"))
    FreeTierUsage.add_member(:actual_usage_amount, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "actualUsageAmount"))
    FreeTierUsage.add_member(:forecasted_usage_amount, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "forecastedUsageAmount"))
    FreeTierUsage.add_member(:limit, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "limit"))
    FreeTierUsage.add_member(:unit, Shapes::ShapeRef.new(shape: GenericString, location_name: "unit"))
    FreeTierUsage.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "description"))
    FreeTierUsage.add_member(:free_tier_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "freeTierType"))
    FreeTierUsage.struct_class = Types::FreeTierUsage

    FreeTierUsages.member = Shapes::ShapeRef.new(shape: FreeTierUsage)

    GetAccountActivityRequest.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    GetAccountActivityRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    GetAccountActivityRequest.struct_class = Types::GetAccountActivityRequest

    GetAccountActivityResponse.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    GetAccountActivityResponse.add_member(:title, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "title"))
    GetAccountActivityResponse.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "description"))
    GetAccountActivityResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActivityStatus, required: true, location_name: "status"))
    GetAccountActivityResponse.add_member(:instructions_url, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "instructionsUrl"))
    GetAccountActivityResponse.add_member(:reward, Shapes::ShapeRef.new(shape: ActivityReward, required: true, location_name: "reward"))
    GetAccountActivityResponse.add_member(:estimated_time_to_complete_in_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "estimatedTimeToCompleteInMinutes"))
    GetAccountActivityResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "expiresAt"))
    GetAccountActivityResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startedAt"))
    GetAccountActivityResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completedAt"))
    GetAccountActivityResponse.struct_class = Types::GetAccountActivityResponse

    GetAccountPlanStateRequest.struct_class = Types::GetAccountPlanStateRequest

    GetAccountPlanStateResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    GetAccountPlanStateResponse.add_member(:account_plan_type, Shapes::ShapeRef.new(shape: AccountPlanType, required: true, location_name: "accountPlanType"))
    GetAccountPlanStateResponse.add_member(:account_plan_status, Shapes::ShapeRef.new(shape: AccountPlanStatus, required: true, location_name: "accountPlanStatus"))
    GetAccountPlanStateResponse.add_member(:account_plan_remaining_credits, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "accountPlanRemainingCredits"))
    GetAccountPlanStateResponse.add_member(:account_plan_expiration_date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "accountPlanExpirationDate"))
    GetAccountPlanStateResponse.struct_class = Types::GetAccountPlanStateResponse

    GetFreeTierUsageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    GetFreeTierUsageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetFreeTierUsageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    GetFreeTierUsageRequest.struct_class = Types::GetFreeTierUsageRequest

    GetFreeTierUsageResponse.add_member(:free_tier_usages, Shapes::ShapeRef.new(shape: FreeTierUsages, required: true, location_name: "freeTierUsages"))
    GetFreeTierUsageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    GetFreeTierUsageResponse.struct_class = Types::GetFreeTierUsageResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccountActivitiesRequest.add_member(:filter_activity_statuses, Shapes::ShapeRef.new(shape: FilterActivityStatuses, location_name: "filterActivityStatuses"))
    ListAccountActivitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListAccountActivitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAccountActivitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    ListAccountActivitiesRequest.struct_class = Types::ListAccountActivitiesRequest

    ListAccountActivitiesResponse.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, required: true, location_name: "activities"))
    ListAccountActivitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListAccountActivitiesResponse.struct_class = Types::ListAccountActivitiesResponse

    MatchOptions.member = Shapes::ShapeRef.new(shape: MatchOption)

    MonetaryAmount.add_member(:amount, Shapes::ShapeRef.new(shape: GenericDouble, required: true, location_name: "amount"))
    MonetaryAmount.add_member(:unit, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "unit"))
    MonetaryAmount.struct_class = Types::MonetaryAmount

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpgradeAccountPlanRequest.add_member(:account_plan_type, Shapes::ShapeRef.new(shape: AccountPlanType, required: true, location_name: "accountPlanType"))
    UpgradeAccountPlanRequest.struct_class = Types::UpgradeAccountPlanRequest

    UpgradeAccountPlanResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    UpgradeAccountPlanResponse.add_member(:account_plan_type, Shapes::ShapeRef.new(shape: AccountPlanType, required: true, location_name: "accountPlanType"))
    UpgradeAccountPlanResponse.add_member(:account_plan_status, Shapes::ShapeRef.new(shape: AccountPlanStatus, required: true, location_name: "accountPlanStatus"))
    UpgradeAccountPlanResponse.struct_class = Types::UpgradeAccountPlanResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Values.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-07"

      api.metadata = {
        "apiVersion" => "2023-09-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "freetier",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Free Tier",
        "serviceId" => "FreeTier",
        "signatureVersion" => "v4",
        "signingName" => "freetier",
        "targetPrefix" => "AWSFreeTierService",
        "uid" => "freetier-2023-09-07",
      }

      api.add_operation(:get_account_activity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountActivity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountActivityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountActivityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_account_plan_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountPlanState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountPlanStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountPlanStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_free_tier_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFreeTierUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFreeTierUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFreeTierUsageResponse)
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

      api.add_operation(:list_account_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountActivities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountActivitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountActivitiesResponse)
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

      api.add_operation(:upgrade_account_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradeAccountPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpgradeAccountPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: UpgradeAccountPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
