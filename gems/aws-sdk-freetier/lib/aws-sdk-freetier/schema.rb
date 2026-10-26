# frozen_string_literal: true

# This is generated code!

module Aws::FreeTier
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.freetier#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountPlanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#AccountPlanStatus", name: "AccountPlanStatus")
    AccountPlanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#AccountPlanType", name: "AccountPlanType")
    Activities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.freetier#Activities", name: "Activities")
    ActivityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.freetier#ActivityId", name: "ActivityId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ActivityReward = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.freetier#ActivityReward", name: "ActivityReward")
    ActivityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#ActivityStatus", name: "ActivityStatus")
    ActivitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#ActivitySummary", name: "ActivitySummary")
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#CurrencyCode", name: "CurrencyCode")
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#Dimension", name: "Dimension")
    DimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#DimensionValues", name: "DimensionValues")
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#Expression", name: "Expression")
    Expressions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.freetier#Expressions", name: "Expressions")
    FilterActivityStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.freetier#FilterActivityStatuses", name: "FilterActivityStatuses")
    FreeTierUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#FreeTierUsage", name: "FreeTierUsage")
    FreeTierUsages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.freetier#FreeTierUsages", name: "FreeTierUsages")
    GenericDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.freetier#GenericDouble", name: "GenericDouble", traits: {"smithy.api#default" => 0})
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.freetier#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    GetAccountActivityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#GetAccountActivityRequest", name: "GetAccountActivityRequest")
    GetAccountActivityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#GetAccountActivityResponse", name: "GetAccountActivityResponse")
    GetAccountPlanStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#GetAccountPlanStateRequest", name: "GetAccountPlanStateRequest")
    GetAccountPlanStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#GetAccountPlanStateResponse", name: "GetAccountPlanStateResponse")
    GetFreeTierUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#GetFreeTierUsageRequest", name: "GetFreeTierUsageRequest")
    GetFreeTierUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#GetFreeTierUsageResponse", name: "GetFreeTierUsageResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#LanguageCode", name: "LanguageCode")
    ListAccountActivitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#ListAccountActivitiesRequest", name: "ListAccountActivitiesRequest")
    ListAccountActivitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#ListAccountActivitiesResponse", name: "ListAccountActivitiesResponse")
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.freetier#MatchOption", name: "MatchOption")
    MatchOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.freetier#MatchOptions", name: "MatchOptions")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.freetier#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 1000}})
    MonetaryAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#MonetaryAmount", name: "MonetaryAmount")
    NextPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.freetier#NextPageToken", name: "NextPageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpgradeAccountPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#UpgradeAccountPlanRequest", name: "UpgradeAccountPlanRequest")
    UpgradeAccountPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#UpgradeAccountPlanResponse", name: "UpgradeAccountPlanResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.freetier#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.freetier#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[ a-zA-Z0-9\\-\\:\\.\\_\\/\\,\\$\\(\\)]*$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.freetier#Values", name: "Values", traits: {"smithy.api#length" => {"min" => 1}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountPlanStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    AccountPlanStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountPlanStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    AccountPlanType.add_member(:free, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE", traits: {"smithy.api#enumValue" => "FREE"}))
    AccountPlanType.add_member(:paid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAID", traits: {"smithy.api#enumValue" => "PAID"}))
    Activities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivitySummary, name: "member"))
    ActivityReward.add_member(:credit, Types::ActivityReward::Credit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryAmount, name: "credit"))
    ActivityReward.add_member(:unknown, Types::ActivityReward::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ActivityReward.type = Types::ActivityReward
    ActivityStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ActivityStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ActivityStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ActivityStatus.add_member(:expiring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRING", traits: {"smithy.api#enumValue" => "EXPIRING"}))
    ActivitySummary.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    ActivitySummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "title", traits: {"smithy.api#required" => {}}))
    ActivitySummary.add_member(:reward, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityReward, name: "reward", traits: {"smithy.api#required" => {}}))
    ActivitySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ActivitySummary.type = Types::ActivitySummary
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    Dimension.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    Dimension.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION", traits: {"smithy.api#enumValue" => "OPERATION"}))
    Dimension.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_TYPE", traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    Dimension.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "REGION"}))
    Dimension.add_member(:free_tier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE_TIER_TYPE", traits: {"smithy.api#enumValue" => "FREE_TIER_TYPE"}))
    Dimension.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCRIPTION", traits: {"smithy.api#enumValue" => "DESCRIPTION"}))
    Dimension.add_member(:usage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_PERCENTAGE", traits: {"smithy.api#enumValue" => "USAGE_PERCENTAGE"}))
    DimensionValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "Key", traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values", traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:match_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOptions, name: "MatchOptions", traits: {"smithy.api#required" => {}}))
    DimensionValues.type = Types::DimensionValues
    Expression.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: Expressions, name: "Or"))
    Expression.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: Expressions, name: "And"))
    Expression.add_member(:not, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Not"))
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValues, name: "Dimensions"))
    Expression.type = Types::Expression
    Expressions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "member"))
    FilterActivityStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStatus, name: "member"))
    FreeTierUsage.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "service"))
    FreeTierUsage.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "operation"))
    FreeTierUsage.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "usageType"))
    FreeTierUsage.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "region"))
    FreeTierUsage.add_member(:actual_usage_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "actualUsageAmount", traits: {"smithy.api#default" => 0}))
    FreeTierUsage.add_member(:forecasted_usage_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "forecastedUsageAmount", traits: {"smithy.api#default" => 0}))
    FreeTierUsage.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "limit", traits: {"smithy.api#default" => 0}))
    FreeTierUsage.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "unit"))
    FreeTierUsage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "description"))
    FreeTierUsage.add_member(:free_tier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "freeTierType"))
    FreeTierUsage.type = Types::FreeTierUsage
    FreeTierUsages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTierUsage, name: "member"))
    GetAccountActivityRequest.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    GetAccountActivityRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "languageCode"))
    GetAccountActivityRequest.type = Types::GetAccountActivityRequest
    GetAccountActivityResponse.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    GetAccountActivityResponse.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "title", traits: {"smithy.api#required" => {}}))
    GetAccountActivityResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "description", traits: {"smithy.api#required" => {}}))
    GetAccountActivityResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetAccountActivityResponse.add_member(:instructions_url, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "instructionsUrl", traits: {"smithy.api#required" => {}}))
    GetAccountActivityResponse.add_member(:reward, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityReward, name: "reward", traits: {"smithy.api#required" => {}}))
    GetAccountActivityResponse.add_member(:estimated_time_to_complete_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "estimatedTimeToCompleteInMinutes"))
    GetAccountActivityResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiresAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetAccountActivityResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetAccountActivityResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "completedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetAccountActivityResponse.type = Types::GetAccountActivityResponse
    GetAccountPlanStateRequest.type = Types::GetAccountPlanStateRequest
    GetAccountPlanStateResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    GetAccountPlanStateResponse.add_member(:account_plan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPlanType, name: "accountPlanType", traits: {"smithy.api#required" => {}}))
    GetAccountPlanStateResponse.add_member(:account_plan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPlanStatus, name: "accountPlanStatus", traits: {"smithy.api#required" => {}}))
    GetAccountPlanStateResponse.add_member(:account_plan_remaining_credits, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryAmount, name: "accountPlanRemainingCredits"))
    GetAccountPlanStateResponse.add_member(:account_plan_expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "accountPlanExpirationDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetAccountPlanStateResponse.type = Types::GetAccountPlanStateResponse
    GetFreeTierUsageRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "filter"))
    GetFreeTierUsageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10}))
    GetFreeTierUsageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    GetFreeTierUsageRequest.type = Types::GetFreeTierUsageRequest
    GetFreeTierUsageResponse.add_member(:free_tier_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTierUsages, name: "freeTierUsages", traits: {"smithy.api#required" => {}}))
    GetFreeTierUsageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    GetFreeTierUsageResponse.type = Types::GetFreeTierUsageResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    LanguageCode.add_member(:en_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_GB", traits: {"smithy.api#enumValue" => "en-GB"}))
    LanguageCode.add_member(:id_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID_ID", traits: {"smithy.api#enumValue" => "id-ID"}))
    LanguageCode.add_member(:de_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE_DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    LanguageCode.add_member(:es_es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES_ES", traits: {"smithy.api#enumValue" => "es-ES"}))
    LanguageCode.add_member(:fr_fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR_FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    LanguageCode.add_member(:ja_jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA_JP", traits: {"smithy.api#enumValue" => "ja-JP"}))
    LanguageCode.add_member(:it_it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT_IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    LanguageCode.add_member(:pt_pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT_PT", traits: {"smithy.api#enumValue" => "pt-PT"}))
    LanguageCode.add_member(:ko_kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO_KR", traits: {"smithy.api#enumValue" => "ko-KR"}))
    LanguageCode.add_member(:zh_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_CN", traits: {"smithy.api#enumValue" => "zh-CN"}))
    LanguageCode.add_member(:zh_tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_TW", traits: {"smithy.api#enumValue" => "zh-TW"}))
    LanguageCode.add_member(:tr_tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TR_TR", traits: {"smithy.api#enumValue" => "tr-TR"}))
    ListAccountActivitiesRequest.add_member(:filter_activity_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterActivityStatuses, name: "filterActivityStatuses"))
    ListAccountActivitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    ListAccountActivitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10}))
    ListAccountActivitiesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "languageCode"))
    ListAccountActivitiesRequest.type = Types::ListAccountActivitiesRequest
    ListAccountActivitiesResponse.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "activities", traits: {"smithy.api#required" => {}}))
    ListAccountActivitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPageToken, name: "nextToken"))
    ListAccountActivitiesResponse.type = Types::ListAccountActivitiesResponse
    MatchOption.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    MatchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    MatchOption.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    MatchOption.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    MatchOption.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    MatchOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOption, name: "member"))
    MonetaryAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDouble, name: "amount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MonetaryAmount.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "unit", traits: {"smithy.api#required" => {}}))
    MonetaryAmount.type = Types::MonetaryAmount
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UpgradeAccountPlanRequest.add_member(:account_plan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPlanType, name: "accountPlanType", traits: {"smithy.api#required" => {}}))
    UpgradeAccountPlanRequest.type = Types::UpgradeAccountPlanRequest
    UpgradeAccountPlanResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    UpgradeAccountPlanResponse.add_member(:account_plan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPlanType, name: "accountPlanType", traits: {"smithy.api#required" => {}}))
    UpgradeAccountPlanResponse.add_member(:account_plan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPlanStatus, name: "accountPlanStatus", traits: {"smithy.api#required" => {}}))
    UpgradeAccountPlanResponse.type = Types::UpgradeAccountPlanResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "member"))

    AWSFreeTierService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.freetier#AWSFreeTierService"
      service.name = "AWSFreeTierService"
      service.version = "2023-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "FreeTier", "endpointPrefix" => "freetier"}, "aws.auth#sigv4" => {"name" => "freetier"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Free Tier", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "aws-cn-global"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier-fips.{Region}.api.aws", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "freetier", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier.cn-northwest-1.api.amazonwebservices.com.cn", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "freetier", "signingRegion" => "cn-northwest-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://freetier.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 12, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAkAAAAGAAAABQX14QUAAAAHAAAABgX14QcAAAAIAAAABwX14QgF9eEKAAAABAAAAAoF9eEEAAAABQX14QMAAAALAAAABwX14QYF9eEJAAAAAwX14QEF9eEC"}}
      service.add_operation(:get_account_activity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.freetier#GetAccountActivity"
        operation.name = "GetAccountActivity"
        operation.input = GetAccountActivityRequest
        operation.output = GetAccountActivityResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetAccountActivitySuccess", "params" => {"activityId" => "d622f48bf4014286a2686ab10cacfb2e", "languageCode" => "en-US"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_account_plan_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.freetier#GetAccountPlanState"
        operation.name = "GetAccountPlanState"
        operation.input = GetAccountPlanStateRequest
        operation.output = GetAccountPlanStateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_free_tier_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.freetier#GetFreeTierUsage"
        operation.name = "GetFreeTierUsage"
        operation.input = GetFreeTierUsageRequest
        operation.output = GetFreeTierUsageResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetFreeTierUsage.new
      end)
      service.add_operation(:list_account_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.freetier#ListAccountActivities"
        operation.name = "ListAccountActivities"
        operation.input = ListAccountActivitiesRequest
        operation.output = ListAccountActivitiesResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListAccountActivitiesSuccess", "params" => {"languageCode" => "en-US"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListAccountActivities.new
      end)
      service.add_operation(:upgrade_account_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.freetier#UpgradeAccountPlan"
        operation.name = "UpgradeAccountPlan"
        operation.input = UpgradeAccountPlanRequest
        operation.output = UpgradeAccountPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
