# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceMetering
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllocatedUsageQuantity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplacemetering#AllocatedUsageQuantity', name: 'AllocatedUsageQuantity', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    BatchMeterUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#BatchMeterUsageRequest', name: 'BatchMeterUsageRequest')
    BatchMeterUsageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#BatchMeterUsageResult', name: 'BatchMeterUsageResult')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.marketplacemetering#Boolean', name: 'Boolean')
    CustomerAWSAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#CustomerAWSAccountId', name: 'CustomerAWSAccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9]+$"})
    CustomerIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#CustomerIdentifier', name: 'CustomerIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CustomerNotEntitledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#CustomerNotEntitledException', name: 'CustomerNotEntitledException', traits: {"smithy.api#error" => "client"})
    DisabledApiException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#DisabledApiException', name: 'DisabledApiException', traits: {"smithy.api#error" => "client"})
    DuplicateRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#DuplicateRequestException', name: 'DuplicateRequestException', traits: {"smithy.api#error" => "client"})
    ExpiredTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#ExpiredTokenException', name: 'ExpiredTokenException', traits: {"smithy.api#error" => "client"})
    InternalServiceErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "server"})
    InvalidCustomerIdentifierException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidCustomerIdentifierException', name: 'InvalidCustomerIdentifierException', traits: {"smithy.api#error" => "client"})
    InvalidEndpointRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidEndpointRegionException', name: 'InvalidEndpointRegionException', traits: {"smithy.api#error" => "client"})
    InvalidProductCodeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidProductCodeException', name: 'InvalidProductCodeException', traits: {"smithy.api#error" => "client"})
    InvalidPublicKeyVersionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidPublicKeyVersionException', name: 'InvalidPublicKeyVersionException', traits: {"smithy.api#error" => "client"})
    InvalidRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidRegionException', name: 'InvalidRegionException', traits: {"smithy.api#error" => "client"})
    InvalidTagException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidTagException', name: 'InvalidTagException', traits: {"smithy.api#error" => "client"})
    InvalidTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidTokenException', name: 'InvalidTokenException', traits: {"smithy.api#error" => "client"})
    InvalidUsageAllocationsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidUsageAllocationsException', name: 'InvalidUsageAllocationsException', traits: {"smithy.api#error" => "client"})
    InvalidUsageDimensionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#InvalidUsageDimensionException', name: 'InvalidUsageDimensionException', traits: {"smithy.api#error" => "client"})
    MeterUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#MeterUsageRequest', name: 'MeterUsageRequest')
    MeterUsageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#MeterUsageResult', name: 'MeterUsageResult')
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    Nonce = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#Nonce', name: 'Nonce', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PlatformNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#PlatformNotSupportedException', name: 'PlatformNotSupportedException', traits: {"smithy.api#error" => "client"})
    ProductCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#ProductCode', name: 'ProductCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9/=:_.@]*$"})
    RegisterUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#RegisterUsageRequest', name: 'RegisterUsageRequest')
    RegisterUsageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#RegisterUsageResult', name: 'RegisterUsageResult')
    ResolveCustomerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#ResolveCustomerRequest', name: 'ResolveCustomerRequest')
    ResolveCustomerResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#ResolveCustomerResult', name: 'ResolveCustomerResult')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#String', name: 'String')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9+ -=._:\\/@]+$"})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacemetering#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9+ -=._:\\/@]+$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.marketplacemetering#Timestamp', name: 'Timestamp')
    TimestampOutOfBoundsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#TimestampOutOfBoundsException', name: 'TimestampOutOfBoundsException', traits: {"smithy.api#error" => "client"})
    UsageAllocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#UsageAllocation', name: 'UsageAllocation')
    UsageAllocations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacemetering#UsageAllocations', name: 'UsageAllocations', traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}})
    UsageDimension = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#UsageDimension', name: 'UsageDimension', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    UsageQuantity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplacemetering#UsageQuantity', name: 'UsageQuantity', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    UsageRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#UsageRecord', name: 'UsageRecord')
    UsageRecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacemetering#UsageRecordList', name: 'UsageRecordList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    UsageRecordResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacemetering#UsageRecordResult', name: 'UsageRecordResult')
    UsageRecordResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacemetering#UsageRecordResultList', name: 'UsageRecordResultList')
    UsageRecordResultStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacemetering#UsageRecordResultStatus', name: 'UsageRecordResultStatus')
    VersionInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplacemetering#VersionInteger', name: 'VersionInteger', traits: {"smithy.api#range" => {"min" => 1}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacemetering#errorMessage', name: 'ErrorMessage')

    BatchMeterUsageRequest.add_member(:usage_records, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecordList, location_name: 'UsageRecords', traits: {"smithy.api#documentation" => "<p>The set of <code>UsageRecords</code> to submit. <code>BatchMeterUsage</code> accepts\n            up to 25 <code>UsageRecords</code> at a time.</p>", "smithy.api#required" => {}}))
    BatchMeterUsageRequest.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code should\n            be the same as the one used during the publishing of a new product.</p>", "smithy.api#required" => {}}))
    BatchMeterUsageRequest.type = Types::BatchMeterUsageRequest
    BatchMeterUsageResult.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecordResultList, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>Contains all <code>UsageRecords</code> processed by <code>BatchMeterUsage</code>.\n            These records were either honored by Amazon Web Services Marketplace Metering Service or were invalid. Invalid\n            records should be fixed before being resubmitted.</p>"}))
    BatchMeterUsageResult.add_member(:unprocessed_records, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecordList, location_name: 'UnprocessedRecords', traits: {"smithy.api#documentation" => "<p>Contains all <code>UsageRecords</code> that were not processed by\n                <code>BatchMeterUsage</code>. This is a list of <code>UsageRecords</code>. You can\n            retry the failed request by making another <code>BatchMeterUsage</code> call with this\n            list as input in the <code>BatchMeterUsageRequest</code>.</p>"}))
    BatchMeterUsageResult.type = Types::BatchMeterUsageResult
    CustomerNotEntitledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CustomerNotEntitledException.type = Types::CustomerNotEntitledException
    DisabledApiException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DisabledApiException.type = Types::DisabledApiException
    DuplicateRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DuplicateRequestException.type = Types::DuplicateRequestException
    ExpiredTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ExpiredTokenException.type = Types::ExpiredTokenException
    InternalServiceErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidCustomerIdentifierException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidCustomerIdentifierException.type = Types::InvalidCustomerIdentifierException
    InvalidEndpointRegionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidEndpointRegionException.type = Types::InvalidEndpointRegionException
    InvalidProductCodeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidProductCodeException.type = Types::InvalidProductCodeException
    InvalidPublicKeyVersionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidPublicKeyVersionException.type = Types::InvalidPublicKeyVersionException
    InvalidRegionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidRegionException.type = Types::InvalidRegionException
    InvalidTagException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTagException.type = Types::InvalidTagException
    InvalidTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTokenException.type = Types::InvalidTokenException
    InvalidUsageAllocationsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidUsageAllocationsException.type = Types::InvalidUsageAllocationsException
    InvalidUsageDimensionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidUsageDimensionException.type = Types::InvalidUsageDimensionException
    MeterUsageRequest.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code\n            should be the same as the one used during the publishing of a new product.</p>", "smithy.api#required" => {}}))
    MeterUsageRequest.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>Timestamp, in UTC, for which the usage is being reported. Your application can meter\n            usage for up to six hours in the past. Make sure the <code>timestamp</code> value is not\n            before the start of the software usage.</p>", "smithy.api#required" => {}}))
    MeterUsageRequest.add_member(:usage_dimension, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageDimension, location_name: 'UsageDimension', traits: {"smithy.api#documentation" => "<p>It will be one of the fcp dimension name provided during the publishing of the\n            product.</p>", "smithy.api#required" => {}}))
    MeterUsageRequest.add_member(:usage_quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantity, location_name: 'UsageQuantity', traits: {"smithy.api#documentation" => "<p>Consumption value for the hour. Defaults to <code>0</code> if not specified.</p>"}))
    MeterUsageRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DryRun', traits: {"smithy.api#documentation" => "<p>Checks whether you have the permissions required for the action, but does not make the\n            request. If you have the permissions, the request returns <code>DryRunOperation</code>;\n            otherwise, it returns <code>UnauthorizedException</code>. Defaults to <code>false</code>\n            if not specified.</p>"}))
    MeterUsageRequest.add_member(:usage_allocations, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAllocations, location_name: 'UsageAllocations', traits: {"smithy.api#documentation" => "<p>The set of <code>UsageAllocations</code> to submit.</p>\n         <p>The sum of all <code>UsageAllocation</code> quantities must equal the\n                <code>UsageQuantity</code> of the <code>MeterUsage</code> request, and each\n                <code>UsageAllocation</code> must have a unique set of tags (include no\n            tags).</p>"}))
    MeterUsageRequest.type = Types::MeterUsageRequest
    MeterUsageResult.add_member(:metering_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MeteringRecordId', traits: {"smithy.api#documentation" => "<p>Metering record id.</p>"}))
    MeterUsageResult.type = Types::MeterUsageResult
    PlatformNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    PlatformNotSupportedException.type = Types::PlatformNotSupportedException
    RegisterUsageRequest.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code should\n            be the same as the one used during the publishing of a new product.</p>", "smithy.api#required" => {}}))
    RegisterUsageRequest.add_member(:public_key_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionInteger, location_name: 'PublicKeyVersion', traits: {"smithy.api#documentation" => "<p>Public Key Version provided by Amazon Web Services Marketplace</p>", "smithy.api#required" => {}}))
    RegisterUsageRequest.add_member(:nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'Nonce', traits: {"smithy.api#documentation" => "<p>(Optional) To scope down the registration to a specific running software instance and\n            guard against replay attacks.</p>"}))
    RegisterUsageRequest.type = Types::RegisterUsageRequest
    RegisterUsageResult.add_member(:public_key_rotation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'PublicKeyRotationTimestamp', traits: {"smithy.api#documentation" => "<p>(Optional) Only included when public key version has expired</p>"}))
    RegisterUsageResult.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Signature', traits: {"smithy.api#documentation" => "<p>JWT Token</p>"}))
    RegisterUsageResult.type = Types::RegisterUsageResult
    ResolveCustomerRequest.add_member(:registration_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RegistrationToken', traits: {"smithy.api#documentation" => "<p>When a buyer visits your website during the registration process, the buyer submits a\n            registration token through the browser. The registration token is resolved to obtain a\n                <code>CustomerIdentifier</code> along with the <code>CustomerAWSAccountId</code> and\n                <code>ProductCode</code>.</p>", "smithy.api#required" => {}}))
    ResolveCustomerRequest.type = Types::ResolveCustomerRequest
    ResolveCustomerResult.add_member(:customer_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerIdentifier, location_name: 'CustomerIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>CustomerIdentifier</code> is used to identify an individual customer in your\n            application. Calls to <code>BatchMeterUsage</code> require\n                <code>CustomerIdentifiers</code> for each <code>UsageRecord</code>.</p>"}))
    ResolveCustomerResult.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>The product code is returned to confirm that the buyer is registering for your\n            product. Subsequent <code>BatchMeterUsage</code> calls should be made using this product\n            code.</p>"}))
    ResolveCustomerResult.add_member(:customer_aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAWSAccountId, location_name: 'CustomerAWSAccountId', traits: {"smithy.api#documentation" => "<p>The <code>CustomerAWSAccountId</code> provides the Amazon Web Services account ID associated with\n            the <code>CustomerIdentifier</code> for the individual customer.</p>"}))
    ResolveCustomerResult.type = Types::ResolveCustomerResult
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that makes up a <code>tag</code>. A <code>key</code> is a\n            label that acts like a category for the specific tag values.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that makes up a <code>tag</code>. A <code>value</code>\n            acts as a descriptor within a tag category (key). The value can be empty or null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TimestampOutOfBoundsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TimestampOutOfBoundsException.type = Types::TimestampOutOfBoundsException
    UsageAllocation.add_member(:allocated_usage_quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatedUsageQuantity, location_name: 'AllocatedUsageQuantity', traits: {"smithy.api#documentation" => "<p>The total quantity allocated to this bucket of usage.</p>", "smithy.api#required" => {}}))
    UsageAllocation.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The set of tags that define the bucket of usage. For the bucket of items with no tags,\n            this parameter can be left out.</p>"}))
    UsageAllocation.type = Types::UsageAllocation
    UsageAllocations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAllocation)
    UsageRecord.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>Timestamp, in UTC, for which the usage is being reported.</p>\n         <p>Your application can meter usage for up to one hour in the past. Make sure the\n                <code>timestamp</code> value is not before the start of the software usage.</p>", "smithy.api#required" => {}}))
    UsageRecord.add_member(:customer_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerIdentifier, location_name: 'CustomerIdentifier', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#documentation" => "<p>The <code>CustomerIdentifier</code> is obtained through the\n                <code>ResolveCustomer</code> operation and represents an individual buyer in your\n            application.</p>"}))
    UsageRecord.add_member(:dimension, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageDimension, location_name: 'Dimension', traits: {"smithy.api#documentation" => "<p>During the process of registering a product on Amazon Web Services Marketplace, dimensions are specified.\n            These represent different units of value in your application.</p>", "smithy.api#required" => {}}))
    UsageRecord.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantity, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The quantity of usage consumed by the customer for the given dimension and time.\n            Defaults to <code>0</code> if not specified.</p>"}))
    UsageRecord.add_member(:usage_allocations, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAllocations, location_name: 'UsageAllocations', traits: {"smithy.api#documentation" => "<p>The set of <code>UsageAllocations</code> to submit. The sum of all\n                <code>UsageAllocation</code> quantities must equal the Quantity of the\n                <code>UsageRecord</code>.</p>"}))
    UsageRecord.add_member(:customer_aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAWSAccountId, location_name: 'CustomerAWSAccountId', traits: {"smithy.api#documentation" => "<p>\n            The <code>CustomerAWSAccountID</code> parameter specifies the AWS account ID of the buyer.\n        </p>"}))
    UsageRecord.type = Types::UsageRecord
    UsageRecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecord)
    UsageRecordResult.add_member(:usage_record, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecord, location_name: 'UsageRecord', traits: {"smithy.api#documentation" => "<p>The <code>UsageRecord</code> that was part of the <code>BatchMeterUsage</code>\n            request.</p>"}))
    UsageRecordResult.add_member(:metering_record_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MeteringRecordId', traits: {"smithy.api#documentation" => "<p>The <code>MeteringRecordId</code> is a unique identifier for this metering\n            event.</p>"}))
    UsageRecordResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecordResultStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The <code>UsageRecordResult</code>\n            <code>Status</code> indicates the status of an individual <code>UsageRecord</code>\n            processed by <code>BatchMeterUsage</code>.</p>\n         <ul>\n            <li>\n               <p>\n                  <i>Success</i>- The <code>UsageRecord</code> was accepted and\n                    honored by <code>BatchMeterUsage</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <i>CustomerNotSubscribed</i>- The <code>CustomerIdentifier</code>\n                    specified is not able to use your product. The <code>UsageRecord</code> was not\n                    honored. There are three causes for this result:</p>\n               <ul>\n                  <li>\n                     <p>The customer identifier is invalid.</p>\n                  </li>\n                  <li>\n                     <p>The customer identifier provided in the metering record does not have\n                            an active agreement or subscription with this product. Future\n                                <code>UsageRecords</code> for this customer will fail until the\n                            customer subscribes to your product.</p>\n                  </li>\n                  <li>\n                     <p>The customer's Amazon Web Services account was suspended.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <i>DuplicateRecord</i>- Indicates that the\n                        <code>UsageRecord</code> was invalid and not honored. A previously metered\n                        <code>UsageRecord</code> had the same customer, dimension, and time, but a\n                    different quantity.</p>\n            </li>\n         </ul>"}))
    UsageRecordResult.type = Types::UsageRecordResult
    UsageRecordResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecordResult)
    UsageRecordResultStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "Success"}))
    UsageRecordResultStatus.add_member(:customer_not_subscribed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_NOT_SUBSCRIBED', traits: {"smithy.api#enumValue" => "CustomerNotSubscribed"}))
    UsageRecordResultStatus.add_member(:duplicate_record, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_RECORD', traits: {"smithy.api#enumValue" => "DuplicateRecord"}))

    AWSMPMeteringService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacemetering#AWSMPMeteringService"
      service.name = "AWSMPMeteringService"
      service.version = "2016-01-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Metering", "arnNamespace" => "aws-marketplace", "cloudFormationName" => "MarketplaceMetering", "cloudTrailEventSource" => "marketplacemetering.amazonaws.com", "docId" => "meteringmarketplace-2016-01-14", "endpointPrefix" => "metering.marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWSMarketplace Metering"}
      service.add_operation(:batch_meter_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#BatchMeterUsage"
        operation.name = "BatchMeterUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchMeterUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchMeterUsageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledApiException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCustomerIdentifierException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidProductCodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageAllocationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageDimensionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampOutOfBoundsException)
        operation.traits = {}
      end)
      service.add_operation(:meter_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#MeterUsage"
        operation.name = "MeterUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MeterUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MeterUsageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerNotEntitledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidProductCodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageAllocationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageDimensionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampOutOfBoundsException)
        operation.traits = {}
      end)
      service.add_operation(:register_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#RegisterUsage"
        operation.name = "RegisterUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterUsageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerNotEntitledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledApiException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidProductCodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPublicKeyVersionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:resolve_customer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacemetering#ResolveCustomer"
        operation.name = "ResolveCustomer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveCustomerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveCustomerResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledApiException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
