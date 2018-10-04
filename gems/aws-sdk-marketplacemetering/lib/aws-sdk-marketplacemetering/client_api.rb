# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceMetering
  # @api private
  module ClientApi

    include Seahorse::Model

    BatchMeterUsageRequest = Shapes::StructureShape.new(name: 'BatchMeterUsageRequest')
    BatchMeterUsageResult = Shapes::StructureShape.new(name: 'BatchMeterUsageResult')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CustomerIdentifier = Shapes::StringShape.new(name: 'CustomerIdentifier')
    DuplicateRequestException = Shapes::StructureShape.new(name: 'DuplicateRequestException')
    ExpiredTokenException = Shapes::StructureShape.new(name: 'ExpiredTokenException')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidCustomerIdentifierException = Shapes::StructureShape.new(name: 'InvalidCustomerIdentifierException')
    InvalidEndpointRegionException = Shapes::StructureShape.new(name: 'InvalidEndpointRegionException')
    InvalidProductCodeException = Shapes::StructureShape.new(name: 'InvalidProductCodeException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    InvalidUsageDimensionException = Shapes::StructureShape.new(name: 'InvalidUsageDimensionException')
    MeterUsageRequest = Shapes::StructureShape.new(name: 'MeterUsageRequest')
    MeterUsageResult = Shapes::StructureShape.new(name: 'MeterUsageResult')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    ProductCode = Shapes::StringShape.new(name: 'ProductCode')
    ResolveCustomerRequest = Shapes::StructureShape.new(name: 'ResolveCustomerRequest')
    ResolveCustomerResult = Shapes::StructureShape.new(name: 'ResolveCustomerResult')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampOutOfBoundsException = Shapes::StructureShape.new(name: 'TimestampOutOfBoundsException')
    UsageDimension = Shapes::StringShape.new(name: 'UsageDimension')
    UsageQuantity = Shapes::IntegerShape.new(name: 'UsageQuantity')
    UsageRecord = Shapes::StructureShape.new(name: 'UsageRecord')
    UsageRecordList = Shapes::ListShape.new(name: 'UsageRecordList')
    UsageRecordResult = Shapes::StructureShape.new(name: 'UsageRecordResult')
    UsageRecordResultList = Shapes::ListShape.new(name: 'UsageRecordResultList')
    UsageRecordResultStatus = Shapes::StringShape.new(name: 'UsageRecordResultStatus')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    BatchMeterUsageRequest.add_member(:usage_records, Shapes::ShapeRef.new(shape: UsageRecordList, required: true, location_name: "UsageRecords"))
    BatchMeterUsageRequest.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, required: true, location_name: "ProductCode"))
    BatchMeterUsageRequest.struct_class = Types::BatchMeterUsageRequest

    BatchMeterUsageResult.add_member(:results, Shapes::ShapeRef.new(shape: UsageRecordResultList, location_name: "Results"))
    BatchMeterUsageResult.add_member(:unprocessed_records, Shapes::ShapeRef.new(shape: UsageRecordList, location_name: "UnprocessedRecords"))
    BatchMeterUsageResult.struct_class = Types::BatchMeterUsageResult

    MeterUsageRequest.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, required: true, location_name: "ProductCode"))
    MeterUsageRequest.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    MeterUsageRequest.add_member(:usage_dimension, Shapes::ShapeRef.new(shape: UsageDimension, required: true, location_name: "UsageDimension"))
    MeterUsageRequest.add_member(:usage_quantity, Shapes::ShapeRef.new(shape: UsageQuantity, required: true, location_name: "UsageQuantity"))
    MeterUsageRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "DryRun"))
    MeterUsageRequest.struct_class = Types::MeterUsageRequest

    MeterUsageResult.add_member(:metering_record_id, Shapes::ShapeRef.new(shape: String, location_name: "MeteringRecordId"))
    MeterUsageResult.struct_class = Types::MeterUsageResult

    ResolveCustomerRequest.add_member(:registration_token, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RegistrationToken"))
    ResolveCustomerRequest.struct_class = Types::ResolveCustomerRequest

    ResolveCustomerResult.add_member(:customer_identifier, Shapes::ShapeRef.new(shape: CustomerIdentifier, location_name: "CustomerIdentifier"))
    ResolveCustomerResult.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, location_name: "ProductCode"))
    ResolveCustomerResult.struct_class = Types::ResolveCustomerResult

    UsageRecord.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    UsageRecord.add_member(:customer_identifier, Shapes::ShapeRef.new(shape: CustomerIdentifier, required: true, location_name: "CustomerIdentifier"))
    UsageRecord.add_member(:dimension, Shapes::ShapeRef.new(shape: UsageDimension, required: true, location_name: "Dimension"))
    UsageRecord.add_member(:quantity, Shapes::ShapeRef.new(shape: UsageQuantity, required: true, location_name: "Quantity"))
    UsageRecord.struct_class = Types::UsageRecord

    UsageRecordList.member = Shapes::ShapeRef.new(shape: UsageRecord)

    UsageRecordResult.add_member(:usage_record, Shapes::ShapeRef.new(shape: UsageRecord, location_name: "UsageRecord"))
    UsageRecordResult.add_member(:metering_record_id, Shapes::ShapeRef.new(shape: String, location_name: "MeteringRecordId"))
    UsageRecordResult.add_member(:status, Shapes::ShapeRef.new(shape: UsageRecordResultStatus, location_name: "Status"))
    UsageRecordResult.struct_class = Types::UsageRecordResult

    UsageRecordResultList.member = Shapes::ShapeRef.new(shape: UsageRecordResult)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-01-14"

      api.metadata = {
        "apiVersion" => "2016-01-14",
        "endpointPrefix" => "metering.marketplace",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWSMarketplace Metering",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "targetPrefix" => "AWSMPMeteringService",
        "uid" => "meteringmarketplace-2016-01-14",
      }

      api.add_operation(:batch_meter_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchMeterUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchMeterUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchMeterUsageResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProductCodeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUsageDimensionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCustomerIdentifierException)
        o.errors << Shapes::ShapeRef.new(shape: TimestampOutOfBoundsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:meter_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MeterUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MeterUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: MeterUsageResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProductCodeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUsageDimensionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointRegionException)
        o.errors << Shapes::ShapeRef.new(shape: TimestampOutOfBoundsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:resolve_customer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveCustomer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResolveCustomerRequest)
        o.output = Shapes::ShapeRef.new(shape: ResolveCustomerResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end
