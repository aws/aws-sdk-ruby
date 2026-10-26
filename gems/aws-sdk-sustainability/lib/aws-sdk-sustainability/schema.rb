# frozen_string_literal: true

# This is generated code!

module Aws::Sustainability
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sustainability#Dimension", name: "Dimension")
    DimensionEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#DimensionEntry", name: "DimensionEntry")
    DimensionEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#DimensionEntryList", name: "DimensionEntryList")
    DimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#DimensionList", name: "DimensionList")
    DimensionListMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sustainability#DimensionListMap", name: "DimensionListMap")
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sustainability#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"max" => 256}})
    DimensionValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#DimensionValueList", name: "DimensionValueList")
    DimensionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sustainability#DimensionsMap", name: "DimensionsMap")
    Emissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#Emissions", name: "Emissions")
    EmissionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sustainability#EmissionsMap", name: "EmissionsMap")
    EmissionsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sustainability#EmissionsType", name: "EmissionsType")
    EmissionsTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#EmissionsTypeList", name: "EmissionsTypeList")
    EmissionsUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sustainability#EmissionsUnit", name: "EmissionsUnit")
    EstimatedCarbonEmissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#EstimatedCarbonEmissions", name: "EstimatedCarbonEmissions")
    EstimatedCarbonEmissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#EstimatedCarbonEmissionsList", name: "EstimatedCarbonEmissionsList")
    EstimatedWaterAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#EstimatedWaterAllocation", name: "EstimatedWaterAllocation")
    EstimatedWaterAllocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#EstimatedWaterAllocationList", name: "EstimatedWaterAllocationList")
    FilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#FilterExpression", name: "FilterExpression")
    GetEstimatedCarbonEmissionsDimensionValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedCarbonEmissionsDimensionValuesRequest", name: "GetEstimatedCarbonEmissionsDimensionValuesRequest")
    GetEstimatedCarbonEmissionsDimensionValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedCarbonEmissionsDimensionValuesResponse", name: "GetEstimatedCarbonEmissionsDimensionValuesResponse")
    GetEstimatedCarbonEmissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedCarbonEmissionsRequest", name: "GetEstimatedCarbonEmissionsRequest")
    GetEstimatedCarbonEmissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedCarbonEmissionsResponse", name: "GetEstimatedCarbonEmissionsResponse")
    GetEstimatedWaterAllocationDimensionValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedWaterAllocationDimensionValuesRequest", name: "GetEstimatedWaterAllocationDimensionValuesRequest")
    GetEstimatedWaterAllocationDimensionValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedWaterAllocationDimensionValuesResponse", name: "GetEstimatedWaterAllocationDimensionValuesResponse")
    GetEstimatedWaterAllocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedWaterAllocationRequest", name: "GetEstimatedWaterAllocationRequest")
    GetEstimatedWaterAllocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GetEstimatedWaterAllocationResponse", name: "GetEstimatedWaterAllocationResponse")
    GranularityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#GranularityConfiguration", name: "GranularityConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sustainability#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    ModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sustainability#ModelVersion", name: "ModelVersion", traits: {"smithy.api#pattern" => "^v(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"})
    Month = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sustainability#Month", name: "Month", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sustainability#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TimeGranularity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sustainability#TimeGranularity", name: "TimeGranularity")
    TimePeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#TimePeriod", name: "TimePeriod")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sustainability#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WaterAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sustainability#WaterAllocation", name: "WaterAllocation")
    WaterAllocationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sustainability#WaterAllocationMap", name: "WaterAllocationMap")
    WaterAllocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sustainability#WaterAllocationType", name: "WaterAllocationType")
    WaterAllocationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sustainability#WaterAllocationTypeList", name: "WaterAllocationTypeList")
    WaterAllocationUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sustainability#WaterAllocationUnit", name: "WaterAllocationUnit")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Dimension.add_member(:usage_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "USAGE_ACCOUNT_ID"}))
    Dimension.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "REGION"}))
    Dimension.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    DimensionEntry.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "Dimension", traits: {"smithy.api#required" => {}}))
    DimensionEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    DimensionEntry.type = Types::DimensionEntry
    DimensionEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionEntry, name: "member"))
    DimensionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DimensionListMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "key"))
    DimensionListMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueList, name: "value"))
    DimensionValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "member"))
    DimensionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "key"))
    DimensionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "value"))
    Emissions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Value", traits: {"smithy.api#required" => {}}))
    Emissions.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: EmissionsUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    Emissions.type = Types::Emissions
    EmissionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EmissionsType, name: "key"))
    EmissionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Emissions, name: "value"))
    EmissionsType.add_member(:total_lbm_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_LBM_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_LBM_CARBON_EMISSIONS"}))
    EmissionsType.add_member(:total_mbm_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_MBM_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_MBM_CARBON_EMISSIONS"}))
    EmissionsType.add_member(:total_scope_1_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SCOPE_1_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_SCOPE_1_CARBON_EMISSIONS"}))
    EmissionsType.add_member(:total_scope_2_lbm_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS"}))
    EmissionsType.add_member(:total_scope_2_mbm_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS"}))
    EmissionsType.add_member(:total_scope_3_lbm_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS"}))
    EmissionsType.add_member(:total_scope_3_mbm_carbon_emissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS", traits: {"smithy.api#enumValue" => "TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS"}))
    EmissionsTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmissionsType, name: "member"))
    EmissionsUnit.add_member(:mt_co2_e, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MT_CO2E", traits: {"smithy.api#enumValue" => "MTCO2e"}))
    EstimatedCarbonEmissions.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    EstimatedCarbonEmissions.add_member(:dimensions_values, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionsMap, name: "DimensionsValues", traits: {"smithy.api#required" => {}}))
    EstimatedCarbonEmissions.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    EstimatedCarbonEmissions.add_member(:emissions_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EmissionsMap, name: "EmissionsValues", traits: {"smithy.api#required" => {}}))
    EstimatedCarbonEmissions.type = Types::EstimatedCarbonEmissions
    EstimatedCarbonEmissionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedCarbonEmissions, name: "member"))
    EstimatedWaterAllocation.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    EstimatedWaterAllocation.add_member(:dimensions_values, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionsMap, name: "DimensionsValues", traits: {"smithy.api#required" => {}}))
    EstimatedWaterAllocation.add_member(:model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelVersion, name: "ModelVersion", traits: {"smithy.api#required" => {}}))
    EstimatedWaterAllocation.add_member(:allocation_values, ::Smithy::Schema::Shapes::MemberShape.new(target: WaterAllocationMap, name: "AllocationValues", traits: {"smithy.api#required" => {}}))
    EstimatedWaterAllocation.type = Types::EstimatedWaterAllocation
    EstimatedWaterAllocationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedWaterAllocation, name: "member"))
    FilterExpression.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionListMap, name: "Dimensions"))
    FilterExpression.type = Types::FilterExpression
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionList, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 1000}))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.type = Types::GetEstimatedCarbonEmissionsDimensionValuesRequest
    GetEstimatedCarbonEmissionsDimensionValuesResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionEntryList, name: "Results"))
    GetEstimatedCarbonEmissionsDimensionValuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedCarbonEmissionsDimensionValuesResponse.type = Types::GetEstimatedCarbonEmissionsDimensionValuesResponse
    GetEstimatedCarbonEmissionsRequest.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    GetEstimatedCarbonEmissionsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionList, name: "GroupBy"))
    GetEstimatedCarbonEmissionsRequest.add_member(:filter_by, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, name: "FilterBy"))
    GetEstimatedCarbonEmissionsRequest.add_member(:emissions_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EmissionsTypeList, name: "EmissionsTypes"))
    GetEstimatedCarbonEmissionsRequest.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeGranularity, name: "Granularity", traits: {"smithy.api#default" => "MONTHLY"}))
    GetEstimatedCarbonEmissionsRequest.add_member(:granularity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GranularityConfiguration, name: "GranularityConfiguration"))
    GetEstimatedCarbonEmissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 1000}))
    GetEstimatedCarbonEmissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedCarbonEmissionsRequest.type = Types::GetEstimatedCarbonEmissionsRequest
    GetEstimatedCarbonEmissionsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedCarbonEmissionsList, name: "Results", traits: {"smithy.api#required" => {}}))
    GetEstimatedCarbonEmissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedCarbonEmissionsResponse.type = Types::GetEstimatedCarbonEmissionsResponse
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionList, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 1000}))
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedWaterAllocationDimensionValuesRequest.type = Types::GetEstimatedWaterAllocationDimensionValuesRequest
    GetEstimatedWaterAllocationDimensionValuesResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionEntryList, name: "Results", traits: {"smithy.api#required" => {}}))
    GetEstimatedWaterAllocationDimensionValuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedWaterAllocationDimensionValuesResponse.type = Types::GetEstimatedWaterAllocationDimensionValuesResponse
    GetEstimatedWaterAllocationRequest.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriod, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    GetEstimatedWaterAllocationRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionList, name: "GroupBy"))
    GetEstimatedWaterAllocationRequest.add_member(:filter_by, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, name: "FilterBy"))
    GetEstimatedWaterAllocationRequest.add_member(:allocation_types, ::Smithy::Schema::Shapes::MemberShape.new(target: WaterAllocationTypeList, name: "AllocationTypes"))
    GetEstimatedWaterAllocationRequest.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeGranularity, name: "Granularity", traits: {"smithy.api#default" => "YEARLY_CALENDAR"}))
    GetEstimatedWaterAllocationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 1000}))
    GetEstimatedWaterAllocationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedWaterAllocationRequest.type = Types::GetEstimatedWaterAllocationRequest
    GetEstimatedWaterAllocationResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedWaterAllocationList, name: "Results", traits: {"smithy.api#required" => {}}))
    GetEstimatedWaterAllocationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetEstimatedWaterAllocationResponse.type = Types::GetEstimatedWaterAllocationResponse
    GranularityConfiguration.add_member(:fiscal_year_start_month, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, name: "FiscalYearStartMonth", traits: {"smithy.api#default" => 1}))
    GranularityConfiguration.type = Types::GranularityConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeGranularity.add_member(:yearly_calendar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARLY_CALENDAR", traits: {"smithy.api#enumValue" => "YEARLY_CALENDAR"}))
    TimeGranularity.add_member(:yearly_fiscal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARLY_FISCAL", traits: {"smithy.api#enumValue" => "YEARLY_FISCAL"}))
    TimeGranularity.add_member(:quarterly_calendar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUARTERLY_CALENDAR", traits: {"smithy.api#enumValue" => "QUARTERLY_CALENDAR"}))
    TimeGranularity.add_member(:quarterly_fiscal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUARTERLY_FISCAL", traits: {"smithy.api#enumValue" => "QUARTERLY_FISCAL"}))
    TimeGranularity.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    TimePeriod.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Start", traits: {"smithy.api#required" => {}}))
    TimePeriod.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "End", traits: {"smithy.api#required" => {}}))
    TimePeriod.type = Types::TimePeriod
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WaterAllocation.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Value", traits: {"smithy.api#required" => {}}))
    WaterAllocation.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: WaterAllocationUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    WaterAllocation.type = Types::WaterAllocation
    WaterAllocationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: WaterAllocationType, name: "key"))
    WaterAllocationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WaterAllocation, name: "value"))
    WaterAllocationType.add_member(:total_water_withdrawals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_WATER_WITHDRAWALS", traits: {"smithy.api#enumValue" => "TOTAL_WATER_WITHDRAWALS"}))
    WaterAllocationTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WaterAllocationType, name: "member"))
    WaterAllocationUnit.add_member(:cubic_meters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUBIC_METERS", traits: {"smithy.api#enumValue" => "m3"}))

    AwsSustainabilityApiService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sustainability#AwsSustainabilityApiService"
      service.name = "AwsSustainabilityApiService"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Sustainability", "arnNamespace" => "sustainability"}, "aws.auth#sigv4" => {"name" => "sustainability"}, "aws.auth#sigv4a" => {"name" => "sustainability"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "aws_recommended", "partitionEndpointSpecialCases" => {"aws" => [{"endpoint" => "https://api.sustainability.{region}.{dualStackDnsSuffix}", "region" => "us-east-1", "dualStack" => true}]}}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4a", "aws.auth#sigv4"], "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Amz-Region-Set"]}, "smithy.api#title" => "AWS Sustainability", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://api.sustainability.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sustainability.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sustainability-fips.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sustainability-fips.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sustainability.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 9, "nodes" => "/////wAAAAH/////AAAAAAAAAAkAAAADAAAAAQAAAAQF9eEIAAAAAgAAAAUF9eEIAAAAAwAAAAgAAAAGAAAABAX14QMAAAAHAAAABQX14QQF9eEHAAAABQX14QUF9eEGAAAAAwX14QEF9eEC"}}
      service.add_operation(:get_estimated_carbon_emissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sustainability#GetEstimatedCarbonEmissions"
        operation.name = "GetEstimatedCarbonEmissions"
        operation.input = GetEstimatedCarbonEmissionsRequest
        operation.output = GetEstimatedCarbonEmissionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/estimated-carbon-emissions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEstimatedCarbonEmissionsSuccess", "params" => {"TimePeriod" => {"Start" => 1735689600, "End" => 1767225599}}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetEstimatedCarbonEmissionsFailure", "params" => {"TimePeriod" => {"Start" => 1767225599, "End" => 1735689600}}, "expect" => {"failure" => {"errorId" => "com.amazonaws.sustainability#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::GetEstimatedCarbonEmissions.new
      end)
      service.add_operation(:get_estimated_carbon_emissions_dimension_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sustainability#GetEstimatedCarbonEmissionsDimensionValues"
        operation.name = "GetEstimatedCarbonEmissionsDimensionValues"
        operation.input = GetEstimatedCarbonEmissionsDimensionValuesRequest
        operation.output = GetEstimatedCarbonEmissionsDimensionValuesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/estimated-carbon-emissions-dimension-values"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEstimatedCarbonEmissionsDimensionValuesSuccess", "params" => {"TimePeriod" => {"Start" => 1735689600, "End" => 1767225599}, "Dimensions" => ["REGION", "SERVICE"]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetEstimatedCarbonEmissionsDimensionValuesFailure", "params" => {"TimePeriod" => {"Start" => 1767225599, "End" => 1735689600}, "Dimensions" => ["REGION", "SERVICE"]}, "expect" => {"failure" => {"errorId" => "com.amazonaws.sustainability#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::GetEstimatedCarbonEmissionsDimensionValues.new
      end)
      service.add_operation(:get_estimated_water_allocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sustainability#GetEstimatedWaterAllocation"
        operation.name = "GetEstimatedWaterAllocation"
        operation.input = GetEstimatedWaterAllocationRequest
        operation.output = GetEstimatedWaterAllocationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/estimated-water-allocation"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEstimatedWaterAllocationSuccess", "params" => {"TimePeriod" => {"Start" => 1735689600, "End" => 1767225600}}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetEstimatedWaterAllocationFailure", "params" => {"TimePeriod" => {"Start" => 1767225600, "End" => 1735689600}}, "expect" => {"failure" => {"errorId" => "com.amazonaws.sustainability#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::GetEstimatedWaterAllocation.new
      end)
      service.add_operation(:get_estimated_water_allocation_dimension_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sustainability#GetEstimatedWaterAllocationDimensionValues"
        operation.name = "GetEstimatedWaterAllocationDimensionValues"
        operation.input = GetEstimatedWaterAllocationDimensionValuesRequest
        operation.output = GetEstimatedWaterAllocationDimensionValuesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/estimated-water-allocation-dimension-values"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEstimatedWaterAllocationDimensionValuesSuccess", "params" => {"TimePeriod" => {"Start" => 1735689600, "End" => 1767225600}, "Dimensions" => ["REGION", "SERVICE"]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetEstimatedWaterAllocationDimensionValuesFailure", "params" => {"TimePeriod" => {"Start" => 1767225600, "End" => 1735689600}, "Dimensions" => ["REGION", "SERVICE"]}, "expect" => {"failure" => {"errorId" => "com.amazonaws.sustainability#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::GetEstimatedWaterAllocationDimensionValues.new
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
