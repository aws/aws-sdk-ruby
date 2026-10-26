# frozen_string_literal: true

# This is generated code!

module Aws::SimpleDBv2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1}})
    ExportArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#ExportArn", name: "ExportArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ExportDataCutoffTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.simpledbv2#ExportDataCutoffTime", name: "ExportDataCutoffTime")
    ExportManifestSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#ExportManifestSummary", name: "ExportManifestSummary", traits: {"smithy.api#length" => {"min" => 1}})
    ExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.simpledbv2#ExportStatus", name: "ExportStatus")
    ExportSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.simpledbv2#ExportSummaries", name: "ExportSummaries", traits: {"smithy.api#length" => {"min" => 0}})
    ExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#ExportSummary", name: "ExportSummary")
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#FailureCode", name: "FailureCode", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    FailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#FailureMessage", name: "FailureMessage", traits: {"smithy.api#length" => {"min" => 1}})
    GetExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#GetExportRequest", name: "GetExportRequest")
    GetExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#GetExportResponse", name: "GetExportResponse")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1}})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ItemsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.simpledbv2#ItemsCount", name: "ItemsCount", traits: {"smithy.api#range" => {"min" => 0}})
    ListExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#ListExportsRequest", name: "ListExportsRequest")
    ListExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#ListExportsResponse", name: "ListExportsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.simpledbv2#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NoSuchDomainException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#NoSuchDomainException", name: "NoSuchDomainException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NoSuchExportException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#NoSuchExportException", name: "NoSuchExportException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NumberExportsLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#NumberExportsLimitExceeded", name: "NumberExportsLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RequestedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.simpledbv2#RequestedAt", name: "RequestedAt")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9A-Z]+[\\.\\-\\w]*[a-z0-9A-Z]+$"})
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 850}})
    S3SseAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.simpledbv2#S3SseAlgorithm", name: "S3SseAlgorithm")
    S3SseKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.simpledbv2#S3SseKmsKeyId", name: "S3SseKmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StartDomainExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#StartDomainExportRequest", name: "StartDomainExportRequest")
    StartDomainExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.simpledbv2#StartDomainExportResponse", name: "StartDomainExportResponse")

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ExportStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummary, name: "member"))
    ExportSummary.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "exportArn", traits: {"smithy.api#required" => {}}))
    ExportSummary.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus", traits: {"smithy.api#required" => {}}))
    ExportSummary.add_member(:requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedAt, name: "requestedAt", traits: {"smithy.api#required" => {}}))
    ExportSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    ExportSummary.type = Types::ExportSummary
    GetExportRequest.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "exportArn", traits: {"smithy.api#required" => {}}))
    GetExportRequest.type = Types::GetExportRequest
    GetExportResponse.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "exportArn", traits: {"smithy.api#required" => {}}))
    GetExportResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    GetExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus", traits: {"smithy.api#required" => {}}))
    GetExportResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    GetExportResponse.add_member(:requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedAt, name: "requestedAt", traits: {"smithy.api#required" => {}}))
    GetExportResponse.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    GetExportResponse.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "s3KeyPrefix"))
    GetExportResponse.add_member(:s3_sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseAlgorithm, name: "s3SseAlgorithm"))
    GetExportResponse.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseKmsKeyId, name: "s3SseKmsKeyId"))
    GetExportResponse.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "s3BucketOwner"))
    GetExportResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "failureCode"))
    GetExportResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    GetExportResponse.add_member(:export_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportManifestSummary, name: "exportManifest"))
    GetExportResponse.add_member(:items_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemsCount, name: "itemsCount"))
    GetExportResponse.add_member(:export_data_cutoff_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataCutoffTime, name: "exportDataCutoffTime"))
    GetExportResponse.type = Types::GetExportResponse
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    ListExportsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    ListExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExportsRequest.type = Types::ListExportsRequest
    ListExportsResponse.add_member(:export_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummaries, name: "exportSummaries", traits: {"smithy.api#required" => {}}))
    ListExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExportsResponse.type = Types::ListExportsResponse
    NoSuchDomainException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    NoSuchDomainException.type = Types::NoSuchDomainException
    NoSuchExportException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    NoSuchExportException.type = Types::NoSuchExportException
    NumberExportsLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    NumberExportsLimitExceeded.type = Types::NumberExportsLimitExceeded
    S3SseAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    S3SseAlgorithm.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    StartDomainExportRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartDomainExportRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    StartDomainExportRequest.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    StartDomainExportRequest.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "s3KeyPrefix"))
    StartDomainExportRequest.add_member(:s3_sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseAlgorithm, name: "s3SseAlgorithm"))
    StartDomainExportRequest.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseKmsKeyId, name: "s3SseKmsKeyId"))
    StartDomainExportRequest.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "s3BucketOwner"))
    StartDomainExportRequest.type = Types::StartDomainExportRequest
    StartDomainExportResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    StartDomainExportResponse.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "exportArn", traits: {"smithy.api#required" => {}}))
    StartDomainExportResponse.add_member(:requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedAt, name: "requestedAt", traits: {"smithy.api#required" => {}}))
    StartDomainExportResponse.type = Types::StartDomainExportResponse

    SimpleDBv2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.simpledbv2#SimpleDBv2"
      service.name = "SimpleDBv2"
      service.version = "2025-09-26"
      service.traits = {"aws.api#service" => {"sdkId" => "SimpleDBv2", "arnNamespace" => "sdb", "cloudFormationName" => "SDB", "endpointPrefix" => "sdb"}, "aws.auth#sigv4" => {"name" => "sdb"}, "aws.endpoints#standardRegionalEndpoints" => {"regionSpecialCases" => {"us-east-1" => [{"endpoint" => "https://sdb.amazonaws.com"}]}}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SimpleDB v2", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-east-1"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sdb.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sdb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sdb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sdb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sdb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAkAAAAGAAAABQAAAAgAAAAHAAAABwX14QQF9eELAAAABgX14QkF9eEKAAAABAAAAAsAAAAKAAAABQX14QYF9eEIAAAABQAAAAwF9eEHAAAABgX14QUF9eEGAAAAAwX14QEAAAAOAAAABQX14QIF9eED"}}
      service.add_operation(:get_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simpledbv2#GetExport"
        operation.name = "GetExport"
        operation.input = GetExportRequest
        operation.output = GetExportResponse
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchExportException
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/GetExport", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetExportFailure", "params" => {"exportArn" => "arn:aws:sdb:us-east-1:123456789012:domain/testDomain/export/3eb4eaed-872b-4e08-b4b6-ff6999a83e01"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.simpledbv2#NoSuchExportException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simpledbv2#ListExports"
        operation.name = "ListExports"
        operation.input = ListExportsRequest
        operation.output = ListExportsResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchDomainException
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/ListExports", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListExportsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListExportsWithInvalidDomain", "params" => {"domainName" => "non-existent-domain-12345"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.simpledbv2#NoSuchDomainException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:start_domain_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simpledbv2#StartDomainExport"
        operation.name = "StartDomainExport"
        operation.input = StartDomainExportRequest
        operation.output = StartDomainExportResponse
        operation.errors << ConflictException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchDomainException
        operation.errors << NumberExportsLimitExceeded
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/StartDomainExport", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "StartDomainExportWithInvalidDomain", "params" => {"domainName" => "non-existent-domain-12345", "s3Bucket" => "test-bucket"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.simpledbv2#NoSuchDomainException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
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
