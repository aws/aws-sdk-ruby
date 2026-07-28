# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Sustainability
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionEntry = Shapes::StructureShape.new(name: 'DimensionEntry')
    DimensionEntryList = Shapes::ListShape.new(name: 'DimensionEntryList')
    DimensionList = Shapes::ListShape.new(name: 'DimensionList')
    DimensionListMap = Shapes::MapShape.new(name: 'DimensionListMap')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    DimensionValueList = Shapes::ListShape.new(name: 'DimensionValueList')
    DimensionsMap = Shapes::MapShape.new(name: 'DimensionsMap')
    Double = Shapes::FloatShape.new(name: 'Double')
    Emissions = Shapes::StructureShape.new(name: 'Emissions')
    EmissionsMap = Shapes::MapShape.new(name: 'EmissionsMap')
    EmissionsType = Shapes::StringShape.new(name: 'EmissionsType')
    EmissionsTypeList = Shapes::ListShape.new(name: 'EmissionsTypeList')
    EmissionsUnit = Shapes::StringShape.new(name: 'EmissionsUnit')
    EstimatedCarbonEmissions = Shapes::StructureShape.new(name: 'EstimatedCarbonEmissions')
    EstimatedCarbonEmissionsList = Shapes::ListShape.new(name: 'EstimatedCarbonEmissionsList')
    EstimatedWaterAllocation = Shapes::StructureShape.new(name: 'EstimatedWaterAllocation')
    EstimatedWaterAllocationList = Shapes::ListShape.new(name: 'EstimatedWaterAllocationList')
    FilterExpression = Shapes::StructureShape.new(name: 'FilterExpression')
    GetEstimatedCarbonEmissionsDimensionValuesRequest = Shapes::StructureShape.new(name: 'GetEstimatedCarbonEmissionsDimensionValuesRequest')
    GetEstimatedCarbonEmissionsDimensionValuesResponse = Shapes::StructureShape.new(name: 'GetEstimatedCarbonEmissionsDimensionValuesResponse')
    GetEstimatedCarbonEmissionsRequest = Shapes::StructureShape.new(name: 'GetEstimatedCarbonEmissionsRequest')
    GetEstimatedCarbonEmissionsResponse = Shapes::StructureShape.new(name: 'GetEstimatedCarbonEmissionsResponse')
    GetEstimatedWaterAllocationDimensionValuesRequest = Shapes::StructureShape.new(name: 'GetEstimatedWaterAllocationDimensionValuesRequest')
    GetEstimatedWaterAllocationDimensionValuesResponse = Shapes::StructureShape.new(name: 'GetEstimatedWaterAllocationDimensionValuesResponse')
    GetEstimatedWaterAllocationRequest = Shapes::StructureShape.new(name: 'GetEstimatedWaterAllocationRequest')
    GetEstimatedWaterAllocationResponse = Shapes::StructureShape.new(name: 'GetEstimatedWaterAllocationResponse')
    GranularityConfiguration = Shapes::StructureShape.new(name: 'GranularityConfiguration')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModelVersion = Shapes::StringShape.new(name: 'ModelVersion')
    Month = Shapes::IntegerShape.new(name: 'Month')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeGranularity = Shapes::StringShape.new(name: 'TimeGranularity')
    TimePeriod = Shapes::StructureShape.new(name: 'TimePeriod')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WaterAllocation = Shapes::StructureShape.new(name: 'WaterAllocation')
    WaterAllocationMap = Shapes::MapShape.new(name: 'WaterAllocationMap')
    WaterAllocationType = Shapes::StringShape.new(name: 'WaterAllocationType')
    WaterAllocationTypeList = Shapes::ListShape.new(name: 'WaterAllocationTypeList')
    WaterAllocationUnit = Shapes::StringShape.new(name: 'WaterAllocationUnit')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    DimensionEntry.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "Dimension"))
    DimensionEntry.add_member(:value, Shapes::ShapeRef.new(shape: DimensionValue, required: true, location_name: "Value"))
    DimensionEntry.struct_class = Types::DimensionEntry

    DimensionEntryList.member = Shapes::ShapeRef.new(shape: DimensionEntry)

    DimensionList.member = Shapes::ShapeRef.new(shape: Dimension)

    DimensionListMap.key = Shapes::ShapeRef.new(shape: Dimension)
    DimensionListMap.value = Shapes::ShapeRef.new(shape: DimensionValueList)

    DimensionValueList.member = Shapes::ShapeRef.new(shape: DimensionValue)

    DimensionsMap.key = Shapes::ShapeRef.new(shape: Dimension)
    DimensionsMap.value = Shapes::ShapeRef.new(shape: DimensionValue)

    Emissions.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    Emissions.add_member(:unit, Shapes::ShapeRef.new(shape: EmissionsUnit, required: true, location_name: "Unit"))
    Emissions.struct_class = Types::Emissions

    EmissionsMap.key = Shapes::ShapeRef.new(shape: EmissionsType)
    EmissionsMap.value = Shapes::ShapeRef.new(shape: Emissions)

    EmissionsTypeList.member = Shapes::ShapeRef.new(shape: EmissionsType)

    EstimatedCarbonEmissions.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, required: true, location_name: "TimePeriod"))
    EstimatedCarbonEmissions.add_member(:dimensions_values, Shapes::ShapeRef.new(shape: DimensionsMap, required: true, location_name: "DimensionsValues"))
    EstimatedCarbonEmissions.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location_name: "ModelVersion"))
    EstimatedCarbonEmissions.add_member(:emissions_values, Shapes::ShapeRef.new(shape: EmissionsMap, required: true, location_name: "EmissionsValues"))
    EstimatedCarbonEmissions.struct_class = Types::EstimatedCarbonEmissions

    EstimatedCarbonEmissionsList.member = Shapes::ShapeRef.new(shape: EstimatedCarbonEmissions)

    EstimatedWaterAllocation.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, required: true, location_name: "TimePeriod"))
    EstimatedWaterAllocation.add_member(:dimensions_values, Shapes::ShapeRef.new(shape: DimensionsMap, required: true, location_name: "DimensionsValues"))
    EstimatedWaterAllocation.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, required: true, location_name: "ModelVersion"))
    EstimatedWaterAllocation.add_member(:allocation_values, Shapes::ShapeRef.new(shape: WaterAllocationMap, required: true, location_name: "AllocationValues"))
    EstimatedWaterAllocation.struct_class = Types::EstimatedWaterAllocation

    EstimatedWaterAllocationList.member = Shapes::ShapeRef.new(shape: EstimatedWaterAllocation)

    FilterExpression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionListMap, location_name: "Dimensions"))
    FilterExpression.struct_class = Types::FilterExpression

    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, required: true, location_name: "TimePeriod"))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionList, required: true, location_name: "Dimensions"))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedCarbonEmissionsDimensionValuesRequest.struct_class = Types::GetEstimatedCarbonEmissionsDimensionValuesRequest

    GetEstimatedCarbonEmissionsDimensionValuesResponse.add_member(:results, Shapes::ShapeRef.new(shape: DimensionEntryList, location_name: "Results"))
    GetEstimatedCarbonEmissionsDimensionValuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedCarbonEmissionsDimensionValuesResponse.struct_class = Types::GetEstimatedCarbonEmissionsDimensionValuesResponse

    GetEstimatedCarbonEmissionsRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, required: true, location_name: "TimePeriod"))
    GetEstimatedCarbonEmissionsRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionList, location_name: "GroupBy"))
    GetEstimatedCarbonEmissionsRequest.add_member(:filter_by, Shapes::ShapeRef.new(shape: FilterExpression, location_name: "FilterBy"))
    GetEstimatedCarbonEmissionsRequest.add_member(:emissions_types, Shapes::ShapeRef.new(shape: EmissionsTypeList, location_name: "EmissionsTypes"))
    GetEstimatedCarbonEmissionsRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "Granularity"))
    GetEstimatedCarbonEmissionsRequest.add_member(:granularity_configuration, Shapes::ShapeRef.new(shape: GranularityConfiguration, location_name: "GranularityConfiguration"))
    GetEstimatedCarbonEmissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEstimatedCarbonEmissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedCarbonEmissionsRequest.struct_class = Types::GetEstimatedCarbonEmissionsRequest

    GetEstimatedCarbonEmissionsResponse.add_member(:results, Shapes::ShapeRef.new(shape: EstimatedCarbonEmissionsList, required: true, location_name: "Results"))
    GetEstimatedCarbonEmissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedCarbonEmissionsResponse.struct_class = Types::GetEstimatedCarbonEmissionsResponse

    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, required: true, location_name: "TimePeriod"))
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionList, required: true, location_name: "Dimensions"))
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEstimatedWaterAllocationDimensionValuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedWaterAllocationDimensionValuesRequest.struct_class = Types::GetEstimatedWaterAllocationDimensionValuesRequest

    GetEstimatedWaterAllocationDimensionValuesResponse.add_member(:results, Shapes::ShapeRef.new(shape: DimensionEntryList, required: true, location_name: "Results"))
    GetEstimatedWaterAllocationDimensionValuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedWaterAllocationDimensionValuesResponse.struct_class = Types::GetEstimatedWaterAllocationDimensionValuesResponse

    GetEstimatedWaterAllocationRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: TimePeriod, required: true, location_name: "TimePeriod"))
    GetEstimatedWaterAllocationRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionList, location_name: "GroupBy"))
    GetEstimatedWaterAllocationRequest.add_member(:filter_by, Shapes::ShapeRef.new(shape: FilterExpression, location_name: "FilterBy"))
    GetEstimatedWaterAllocationRequest.add_member(:allocation_types, Shapes::ShapeRef.new(shape: WaterAllocationTypeList, location_name: "AllocationTypes"))
    GetEstimatedWaterAllocationRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "Granularity"))
    GetEstimatedWaterAllocationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEstimatedWaterAllocationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedWaterAllocationRequest.struct_class = Types::GetEstimatedWaterAllocationRequest

    GetEstimatedWaterAllocationResponse.add_member(:results, Shapes::ShapeRef.new(shape: EstimatedWaterAllocationList, required: true, location_name: "Results"))
    GetEstimatedWaterAllocationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEstimatedWaterAllocationResponse.struct_class = Types::GetEstimatedWaterAllocationResponse

    GranularityConfiguration.add_member(:fiscal_year_start_month, Shapes::ShapeRef.new(shape: Month, location_name: "FiscalYearStartMonth"))
    GranularityConfiguration.struct_class = Types::GranularityConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimePeriod.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Start"))
    TimePeriod.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "End"))
    TimePeriod.struct_class = Types::TimePeriod

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WaterAllocation.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    WaterAllocation.add_member(:unit, Shapes::ShapeRef.new(shape: WaterAllocationUnit, required: true, location_name: "Unit"))
    WaterAllocation.struct_class = Types::WaterAllocation

    WaterAllocationMap.key = Shapes::ShapeRef.new(shape: WaterAllocationType)
    WaterAllocationMap.value = Shapes::ShapeRef.new(shape: WaterAllocation)

    WaterAllocationTypeList.member = Shapes::ShapeRef.new(shape: WaterAllocationType)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4a", "aws.auth#sigv4"],
        "endpointPrefix" => "sustainability",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Sustainability",
        "serviceId" => "Sustainability",
        "signatureVersion" => "v4",
        "signingName" => "sustainability",
        "uid" => "sustainability-2018-05-10",
      }

      api.add_operation(:get_estimated_carbon_emissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEstimatedCarbonEmissions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/estimated-carbon-emissions"
        o.input = Shapes::ShapeRef.new(shape: GetEstimatedCarbonEmissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEstimatedCarbonEmissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_estimated_carbon_emissions_dimension_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEstimatedCarbonEmissionsDimensionValues"
        o.http_method = "POST"
        o.http_request_uri = "/v1/estimated-carbon-emissions-dimension-values"
        o.input = Shapes::ShapeRef.new(shape: GetEstimatedCarbonEmissionsDimensionValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEstimatedCarbonEmissionsDimensionValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_estimated_water_allocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEstimatedWaterAllocation"
        o.http_method = "POST"
        o.http_request_uri = "/v1/estimated-water-allocation"
        o.input = Shapes::ShapeRef.new(shape: GetEstimatedWaterAllocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEstimatedWaterAllocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_estimated_water_allocation_dimension_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEstimatedWaterAllocationDimensionValues"
        o.http_method = "POST"
        o.http_request_uri = "/v1/estimated-water-allocation-dimension-values"
        o.input = Shapes::ShapeRef.new(shape: GetEstimatedWaterAllocationDimensionValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEstimatedWaterAllocationDimensionValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
