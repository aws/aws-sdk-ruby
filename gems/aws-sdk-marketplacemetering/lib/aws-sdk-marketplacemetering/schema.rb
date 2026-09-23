# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceMetering
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllocatedUsageQuantity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacemetering#AllocatedUsageQuantity", name: "AllocatedUsageQuantity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    BatchMeterUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#BatchMeterUsageRequest", name: "BatchMeterUsageRequest")
    BatchMeterUsageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#BatchMeterUsageResult", name: "BatchMeterUsageResult")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.marketplacemetering#Boolean", name: "Boolean")
    CustomerAWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#CustomerAWSAccountId", name: "CustomerAWSAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9]+$"})
    CustomerIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#CustomerIdentifier", name: "CustomerIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CustomerNotEntitledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#CustomerNotEntitledException", name: "CustomerNotEntitledException", traits: {"smithy.api#error" => "client"})
    DisabledApiException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#DisabledApiException", name: "DisabledApiException", traits: {"smithy.api#error" => "client"})
    DuplicateRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#DuplicateRequestException", name: "DuplicateRequestException", traits: {"smithy.api#error" => "client"})
    ExpiredTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#ExpiredTokenException", name: "ExpiredTokenException", traits: {"smithy.api#error" => "client"})
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "server"})
    InvalidCustomerIdentifierException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidCustomerIdentifierException", name: "InvalidCustomerIdentifierException", traits: {"smithy.api#error" => "client"})
    InvalidEndpointRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidEndpointRegionException", name: "InvalidEndpointRegionException", traits: {"smithy.api#error" => "client"})
    InvalidProductCodeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidProductCodeException", name: "InvalidProductCodeException", traits: {"smithy.api#error" => "client"})
    InvalidPublicKeyVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidPublicKeyVersionException", name: "InvalidPublicKeyVersionException", traits: {"smithy.api#error" => "client"})
    InvalidRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidRegionException", name: "InvalidRegionException", traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidTagException", name: "InvalidTagException", traits: {"smithy.api#error" => "client"})
    InvalidTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidTokenException", name: "InvalidTokenException", traits: {"smithy.api#error" => "client"})
    InvalidUsageAllocationsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidUsageAllocationsException", name: "InvalidUsageAllocationsException", traits: {"smithy.api#error" => "client"})
    InvalidUsageDimensionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#InvalidUsageDimensionException", name: "InvalidUsageDimensionException", traits: {"smithy.api#error" => "client"})
    MeterUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#MeterUsageRequest", name: "MeterUsageRequest")
    MeterUsageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#MeterUsageResult", name: "MeterUsageResult")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    Nonce = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#Nonce", name: "Nonce", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PlatformNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#PlatformNotSupportedException", name: "PlatformNotSupportedException", traits: {"smithy.api#error" => "client"})
    ProductCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#ProductCode", name: "ProductCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9/=:_.@]*$"})
    RegisterUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#RegisterUsageRequest", name: "RegisterUsageRequest")
    RegisterUsageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#RegisterUsageResult", name: "RegisterUsageResult")
    ResolveCustomerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#ResolveCustomerRequest", name: "ResolveCustomerRequest")
    ResolveCustomerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#ResolveCustomerResult", name: "ResolveCustomerResult")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#String", name: "String")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9+ -=._:\\/@]+$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacemetering#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9+ -=._:\\/@]+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.marketplacemetering#Timestamp", name: "Timestamp")
    TimestampOutOfBoundsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#TimestampOutOfBoundsException", name: "TimestampOutOfBoundsException", traits: {"smithy.api#error" => "client"})
    UsageAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#UsageAllocation", name: "UsageAllocation")
    UsageAllocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacemetering#UsageAllocations", name: "UsageAllocations", traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}})
    UsageDimension = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#UsageDimension", name: "UsageDimension", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    UsageQuantity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacemetering#UsageQuantity", name: "UsageQuantity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    UsageRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#UsageRecord", name: "UsageRecord")
    UsageRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacemetering#UsageRecordList", name: "UsageRecordList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    UsageRecordResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacemetering#UsageRecordResult", name: "UsageRecordResult")
    UsageRecordResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacemetering#UsageRecordResultList", name: "UsageRecordResultList")
    UsageRecordResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacemetering#UsageRecordResultStatus", name: "UsageRecordResultStatus")
    VersionInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacemetering#VersionInteger", name: "VersionInteger", traits: {"smithy.api#range" => {"min" => 1}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacemetering#errorMessage", name: "ErrorMessage")

    BatchMeterUsageRequest.add_member(:usage_records, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecordList, name: "UsageRecords", traits: {"smithy.api#required" => {}}))
    BatchMeterUsageRequest.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode, name: "ProductCode", traits: {"smithy.api#required" => {}}))
    BatchMeterUsageRequest.type = Types::BatchMeterUsageRequest
    BatchMeterUsageResult.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecordResultList, name: "Results"))
    BatchMeterUsageResult.add_member(:unprocessed_records, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecordList, name: "UnprocessedRecords"))
    BatchMeterUsageResult.type = Types::BatchMeterUsageResult
    CustomerNotEntitledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    CustomerNotEntitledException.type = Types::CustomerNotEntitledException
    DisabledApiException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DisabledApiException.type = Types::DisabledApiException
    DuplicateRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DuplicateRequestException.type = Types::DuplicateRequestException
    ExpiredTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExpiredTokenException.type = Types::ExpiredTokenException
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidCustomerIdentifierException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidCustomerIdentifierException.type = Types::InvalidCustomerIdentifierException
    InvalidEndpointRegionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidEndpointRegionException.type = Types::InvalidEndpointRegionException
    InvalidProductCodeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidProductCodeException.type = Types::InvalidProductCodeException
    InvalidPublicKeyVersionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidPublicKeyVersionException.type = Types::InvalidPublicKeyVersionException
    InvalidRegionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRegionException.type = Types::InvalidRegionException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidTagException.type = Types::InvalidTagException
    InvalidTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidTokenException.type = Types::InvalidTokenException
    InvalidUsageAllocationsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidUsageAllocationsException.type = Types::InvalidUsageAllocationsException
    InvalidUsageDimensionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidUsageDimensionException.type = Types::InvalidUsageDimensionException
    MeterUsageRequest.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode, name: "ProductCode", traits: {"smithy.api#required" => {}}))
    MeterUsageRequest.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    MeterUsageRequest.add_member(:usage_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageDimension, name: "UsageDimension", traits: {"smithy.api#required" => {}}))
    MeterUsageRequest.add_member(:usage_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageQuantity, name: "UsageQuantity"))
    MeterUsageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun"))
    MeterUsageRequest.add_member(:usage_allocations, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAllocations, name: "UsageAllocations"))
    MeterUsageRequest.type = Types::MeterUsageRequest
    MeterUsageResult.add_member(:metering_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MeteringRecordId"))
    MeterUsageResult.type = Types::MeterUsageResult
    PlatformNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PlatformNotSupportedException.type = Types::PlatformNotSupportedException
    RegisterUsageRequest.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode, name: "ProductCode", traits: {"smithy.api#required" => {}}))
    RegisterUsageRequest.add_member(:public_key_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionInteger, name: "PublicKeyVersion", traits: {"smithy.api#required" => {}}))
    RegisterUsageRequest.add_member(:nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: Nonce, name: "Nonce"))
    RegisterUsageRequest.type = Types::RegisterUsageRequest
    RegisterUsageResult.add_member(:public_key_rotation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "PublicKeyRotationTimestamp"))
    RegisterUsageResult.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Signature"))
    RegisterUsageResult.type = Types::RegisterUsageResult
    ResolveCustomerRequest.add_member(:registration_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RegistrationToken", traits: {"smithy.api#required" => {}}))
    ResolveCustomerRequest.type = Types::ResolveCustomerRequest
    ResolveCustomerResult.add_member(:customer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerIdentifier, name: "CustomerIdentifier"))
    ResolveCustomerResult.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode, name: "ProductCode"))
    ResolveCustomerResult.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAWSAccountId, name: "CustomerAWSAccountId"))
    ResolveCustomerResult.type = Types::ResolveCustomerResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TimestampOutOfBoundsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TimestampOutOfBoundsException.type = Types::TimestampOutOfBoundsException
    UsageAllocation.add_member(:allocated_usage_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedUsageQuantity, name: "AllocatedUsageQuantity", traits: {"smithy.api#required" => {}}))
    UsageAllocation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    UsageAllocation.type = Types::UsageAllocation
    UsageAllocations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAllocation, name: "member"))
    UsageRecord.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#required" => {}}))
    UsageRecord.add_member(:customer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerIdentifier, name: "CustomerIdentifier", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    UsageRecord.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageDimension, name: "Dimension", traits: {"smithy.api#required" => {}}))
    UsageRecord.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageQuantity, name: "Quantity"))
    UsageRecord.add_member(:usage_allocations, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAllocations, name: "UsageAllocations"))
    UsageRecord.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAWSAccountId, name: "CustomerAWSAccountId"))
    UsageRecord.type = Types::UsageRecord
    UsageRecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecord, name: "member"))
    UsageRecordResult.add_member(:usage_record, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecord, name: "UsageRecord"))
    UsageRecordResult.add_member(:metering_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MeteringRecordId"))
    UsageRecordResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecordResultStatus, name: "Status"))
    UsageRecordResult.type = Types::UsageRecordResult
    UsageRecordResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageRecordResult, name: "member"))
    UsageRecordResultStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    UsageRecordResultStatus.add_member(:customer_not_subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "CustomerNotSubscribed"}))
    UsageRecordResultStatus.add_member(:duplicate_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_RECORD", traits: {"smithy.api#enumValue" => "DuplicateRecord"}))

    AWSMPMeteringService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacemetering#AWSMPMeteringService"
      service.name = "AWSMPMeteringService"
      service.version = "2016-01-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Metering", "arnNamespace" => "aws-marketplace", "cloudFormationName" => "MarketplaceMetering", "cloudTrailEventSource" => "marketplacemetering.amazonaws.com", "docId" => "meteringmarketplace-2016-01-14", "endpointPrefix" => "metering.marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWSMarketplace Metering"}
      service.add_operation(:batch_meter_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#BatchMeterUsage"
        operation.name = "BatchMeterUsage"
        operation.input = BatchMeterUsageRequest
        operation.output = BatchMeterUsageResult
        operation.errors << DisabledApiException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidCustomerIdentifierException
        operation.errors << InvalidProductCodeException
        operation.errors << InvalidTagException
        operation.errors << InvalidUsageAllocationsException
        operation.errors << InvalidUsageDimensionException
        operation.errors << ThrottlingException
        operation.errors << TimestampOutOfBoundsException
        operation.traits = {}
      end)
      service.add_operation(:meter_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#MeterUsage"
        operation.name = "MeterUsage"
        operation.input = MeterUsageRequest
        operation.output = MeterUsageResult
        operation.errors << CustomerNotEntitledException
        operation.errors << DuplicateRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidEndpointRegionException
        operation.errors << InvalidProductCodeException
        operation.errors << InvalidTagException
        operation.errors << InvalidUsageAllocationsException
        operation.errors << InvalidUsageDimensionException
        operation.errors << ThrottlingException
        operation.errors << TimestampOutOfBoundsException
        operation.traits = {}
      end)
      service.add_operation(:register_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#RegisterUsage"
        operation.name = "RegisterUsage"
        operation.input = RegisterUsageRequest
        operation.output = RegisterUsageResult
        operation.errors << CustomerNotEntitledException
        operation.errors << DisabledApiException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidProductCodeException
        operation.errors << InvalidPublicKeyVersionException
        operation.errors << InvalidRegionException
        operation.errors << PlatformNotSupportedException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:resolve_customer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#ResolveCustomer"
        operation.name = "ResolveCustomer"
        operation.input = ResolveCustomerRequest
        operation.output = ResolveCustomerResult
        operation.errors << DisabledApiException
        operation.errors << ExpiredTokenException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidTokenException
        operation.errors << ThrottlingException
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
