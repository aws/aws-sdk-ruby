# frozen_string_literal: true

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
    CustomerNotEntitledException = Shapes::StructureShape.new(name: 'CustomerNotEntitledException')
    DisabledApiException = Shapes::StructureShape.new(name: 'DisabledApiException')
    DuplicateRequestException = Shapes::StructureShape.new(name: 'DuplicateRequestException')
    ExpiredTokenException = Shapes::StructureShape.new(name: 'ExpiredTokenException')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidCustomerIdentifierException = Shapes::StructureShape.new(name: 'InvalidCustomerIdentifierException')
    InvalidEndpointRegionException = Shapes::StructureShape.new(name: 'InvalidEndpointRegionException')
    InvalidProductCodeException = Shapes::StructureShape.new(name: 'InvalidProductCodeException')
    InvalidPublicKeyVersionException = Shapes::StructureShape.new(name: 'InvalidPublicKeyVersionException')
    InvalidRegionException = Shapes::StructureShape.new(name: 'InvalidRegionException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    InvalidUsageDimensionException = Shapes::StructureShape.new(name: 'InvalidUsageDimensionException')
    MeterUsageRequest = Shapes::StructureShape.new(name: 'MeterUsageRequest')
    MeterUsageResult = Shapes::StructureShape.new(name: 'MeterUsageResult')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    Nonce = Shapes::StringShape.new(name: 'Nonce')
    PlatformNotSupportedException = Shapes::StructureShape.new(name: 'PlatformNotSupportedException')
    ProductCode = Shapes::StringShape.new(name: 'ProductCode')
    RegisterUsageRequest = Shapes::StructureShape.new(name: 'RegisterUsageRequest')
    RegisterUsageResult = Shapes::StructureShape.new(name: 'RegisterUsageResult')
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
    VersionInteger = Shapes::IntegerShape.new(name: 'VersionInteger')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    BatchMeterUsageRequest.add_member(:usage_records, Shapes::ShapeRef.new(shape: UsageRecordList, required: true, location_name: "UsageRecords"))
    BatchMeterUsageRequest.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, required: true, location_name: "ProductCode"))
    BatchMeterUsageRequest.struct_class = Types::BatchMeterUsageRequest

    BatchMeterUsageResult.add_member(:results, Shapes::ShapeRef.new(shape: UsageRecordResultList, location_name: "Results"))
    BatchMeterUsageResult.add_member(:unprocessed_records, Shapes::ShapeRef.new(shape: UsageRecordList, location_name: "UnprocessedRecords"))
    BatchMeterUsageResult.struct_class = Types::BatchMeterUsageResult

    CustomerNotEntitledException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    CustomerNotEntitledException.struct_class = Types::CustomerNotEntitledException

    DisabledApiException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    DisabledApiException.struct_class = Types::DisabledApiException

    DuplicateRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    DuplicateRequestException.struct_class = Types::DuplicateRequestException

    ExpiredTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ExpiredTokenException.struct_class = Types::ExpiredTokenException

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidCustomerIdentifierException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidCustomerIdentifierException.struct_class = Types::InvalidCustomerIdentifierException

    InvalidEndpointRegionException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidEndpointRegionException.struct_class = Types::InvalidEndpointRegionException

    InvalidProductCodeException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidProductCodeException.struct_class = Types::InvalidProductCodeException

    InvalidPublicKeyVersionException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidPublicKeyVersionException.struct_class = Types::InvalidPublicKeyVersionException

    InvalidRegionException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRegionException.struct_class = Types::InvalidRegionException

    InvalidTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidTokenException.struct_class = Types::InvalidTokenException

    InvalidUsageDimensionException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidUsageDimensionException.struct_class = Types::InvalidUsageDimensionException

    MeterUsageRequest.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, required: true, location_name: "ProductCode"))
    MeterUsageRequest.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    MeterUsageRequest.add_member(:usage_dimension, Shapes::ShapeRef.new(shape: UsageDimension, required: true, location_name: "UsageDimension"))
    MeterUsageRequest.add_member(:usage_quantity, Shapes::ShapeRef.new(shape: UsageQuantity, location_name: "UsageQuantity"))
    MeterUsageRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    MeterUsageRequest.struct_class = Types::MeterUsageRequest

    MeterUsageResult.add_member(:metering_record_id, Shapes::ShapeRef.new(shape: String, location_name: "MeteringRecordId"))
    MeterUsageResult.struct_class = Types::MeterUsageResult

    PlatformNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    PlatformNotSupportedException.struct_class = Types::PlatformNotSupportedException

    RegisterUsageRequest.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, required: true, location_name: "ProductCode"))
    RegisterUsageRequest.add_member(:public_key_version, Shapes::ShapeRef.new(shape: VersionInteger, required: true, location_name: "PublicKeyVersion"))
    RegisterUsageRequest.add_member(:nonce, Shapes::ShapeRef.new(shape: Nonce, location_name: "Nonce"))
    RegisterUsageRequest.struct_class = Types::RegisterUsageRequest

    RegisterUsageResult.add_member(:public_key_rotation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "PublicKeyRotationTimestamp"))
    RegisterUsageResult.add_member(:signature, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Signature"))
    RegisterUsageResult.struct_class = Types::RegisterUsageResult

    ResolveCustomerRequest.add_member(:registration_token, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RegistrationToken"))
    ResolveCustomerRequest.struct_class = Types::ResolveCustomerRequest

    ResolveCustomerResult.add_member(:customer_identifier, Shapes::ShapeRef.new(shape: CustomerIdentifier, location_name: "CustomerIdentifier"))
    ResolveCustomerResult.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, location_name: "ProductCode"))
    ResolveCustomerResult.struct_class = Types::ResolveCustomerResult

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimestampOutOfBoundsException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    TimestampOutOfBoundsException.struct_class = Types::TimestampOutOfBoundsException

    UsageRecord.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    UsageRecord.add_member(:customer_identifier, Shapes::ShapeRef.new(shape: CustomerIdentifier, required: true, location_name: "CustomerIdentifier"))
    UsageRecord.add_member(:dimension, Shapes::ShapeRef.new(shape: UsageDimension, required: true, location_name: "Dimension"))
    UsageRecord.add_member(:quantity, Shapes::ShapeRef.new(shape: UsageQuantity, location_name: "Quantity"))
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
        "serviceId" => "Marketplace Metering",
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledApiException)
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
        o.errors << Shapes::ShapeRef.new(shape: CustomerNotEntitledException)
      end)

      api.add_operation(:register_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterUsageResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProductCodeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPublicKeyVersionException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: CustomerNotEntitledException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledApiException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledApiException)
      end)
    end

  end
end
