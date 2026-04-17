# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SimpleDBv2
  # @api private
  module ClientApi

    include Seahorse::Model

    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    ExportArn = Shapes::StringShape.new(name: 'ExportArn')
    ExportDataCutoffTime = Shapes::TimestampShape.new(name: 'ExportDataCutoffTime')
    ExportManifestSummary = Shapes::StringShape.new(name: 'ExportManifestSummary')
    ExportStatus = Shapes::StringShape.new(name: 'ExportStatus')
    ExportSummaries = Shapes::ListShape.new(name: 'ExportSummaries')
    ExportSummary = Shapes::StructureShape.new(name: 'ExportSummary')
    FailureCode = Shapes::StringShape.new(name: 'FailureCode')
    FailureMessage = Shapes::StringShape.new(name: 'FailureMessage')
    GetExportRequest = Shapes::StructureShape.new(name: 'GetExportRequest')
    GetExportResponse = Shapes::StructureShape.new(name: 'GetExportResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    ItemsCount = Shapes::IntegerShape.new(name: 'ItemsCount')
    ListExportsRequest = Shapes::StructureShape.new(name: 'ListExportsRequest')
    ListExportsResponse = Shapes::StructureShape.new(name: 'ListExportsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoSuchDomainException = Shapes::StructureShape.new(name: 'NoSuchDomainException')
    NoSuchExportException = Shapes::StructureShape.new(name: 'NoSuchExportException')
    NumberExportsLimitExceeded = Shapes::StructureShape.new(name: 'NumberExportsLimitExceeded')
    RequestedAt = Shapes::TimestampShape.new(name: 'RequestedAt')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3SseAlgorithm = Shapes::StringShape.new(name: 'S3SseAlgorithm')
    S3SseKmsKeyId = Shapes::StringShape.new(name: 'S3SseKmsKeyId')
    StartDomainExportRequest = Shapes::StructureShape.new(name: 'StartDomainExportRequest')
    StartDomainExportResponse = Shapes::StructureShape.new(name: 'StartDomainExportResponse')
    String = Shapes::StringShape.new(name: 'String')

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ExportSummaries.member = Shapes::ShapeRef.new(shape: ExportSummary)

    ExportSummary.add_member(:export_arn, Shapes::ShapeRef.new(shape: ExportArn, required: true, location_name: "exportArn"))
    ExportSummary.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, required: true, location_name: "exportStatus"))
    ExportSummary.add_member(:requested_at, Shapes::ShapeRef.new(shape: RequestedAt, required: true, location_name: "requestedAt"))
    ExportSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    ExportSummary.struct_class = Types::ExportSummary

    GetExportRequest.add_member(:export_arn, Shapes::ShapeRef.new(shape: ExportArn, required: true, location_name: "exportArn"))
    GetExportRequest.struct_class = Types::GetExportRequest

    GetExportResponse.add_member(:export_arn, Shapes::ShapeRef.new(shape: ExportArn, required: true, location_name: "exportArn"))
    GetExportResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "clientToken"))
    GetExportResponse.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, required: true, location_name: "exportStatus"))
    GetExportResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GetExportResponse.add_member(:requested_at, Shapes::ShapeRef.new(shape: RequestedAt, required: true, location_name: "requestedAt"))
    GetExportResponse.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    GetExportResponse.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "s3KeyPrefix"))
    GetExportResponse.add_member(:s3_sse_algorithm, Shapes::ShapeRef.new(shape: S3SseAlgorithm, location_name: "s3SseAlgorithm"))
    GetExportResponse.add_member(:s3_sse_kms_key_id, Shapes::ShapeRef.new(shape: S3SseKmsKeyId, location_name: "s3SseKmsKeyId"))
    GetExportResponse.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "s3BucketOwner"))
    GetExportResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "failureCode"))
    GetExportResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: FailureMessage, location_name: "failureMessage"))
    GetExportResponse.add_member(:export_manifest, Shapes::ShapeRef.new(shape: ExportManifestSummary, location_name: "exportManifest"))
    GetExportResponse.add_member(:items_count, Shapes::ShapeRef.new(shape: ItemsCount, location_name: "itemsCount"))
    GetExportResponse.add_member(:export_data_cutoff_time, Shapes::ShapeRef.new(shape: ExportDataCutoffTime, location_name: "exportDataCutoffTime"))
    GetExportResponse.struct_class = Types::GetExportResponse

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    ListExportsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    ListExportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExportsRequest.struct_class = Types::ListExportsRequest

    ListExportsResponse.add_member(:export_summaries, Shapes::ShapeRef.new(shape: ExportSummaries, required: true, location_name: "exportSummaries"))
    ListExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExportsResponse.struct_class = Types::ListExportsResponse

    NoSuchDomainException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    NoSuchDomainException.struct_class = Types::NoSuchDomainException

    NoSuchExportException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    NoSuchExportException.struct_class = Types::NoSuchExportException

    NumberExportsLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    NumberExportsLimitExceeded.struct_class = Types::NumberExportsLimitExceeded

    StartDomainExportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartDomainExportRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    StartDomainExportRequest.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    StartDomainExportRequest.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "s3KeyPrefix"))
    StartDomainExportRequest.add_member(:s3_sse_algorithm, Shapes::ShapeRef.new(shape: S3SseAlgorithm, location_name: "s3SseAlgorithm"))
    StartDomainExportRequest.add_member(:s3_sse_kms_key_id, Shapes::ShapeRef.new(shape: S3SseKmsKeyId, location_name: "s3SseKmsKeyId"))
    StartDomainExportRequest.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "s3BucketOwner"))
    StartDomainExportRequest.struct_class = Types::StartDomainExportRequest

    StartDomainExportResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "clientToken"))
    StartDomainExportResponse.add_member(:export_arn, Shapes::ShapeRef.new(shape: ExportArn, required: true, location_name: "exportArn"))
    StartDomainExportResponse.add_member(:requested_at, Shapes::ShapeRef.new(shape: RequestedAt, required: true, location_name: "requestedAt"))
    StartDomainExportResponse.struct_class = Types::StartDomainExportResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-09-26"

      api.metadata = {
        "apiVersion" => "2025-09-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "sdb",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon SimpleDB v2",
        "serviceId" => "SimpleDBv2",
        "signatureVersion" => "v4",
        "signingName" => "sdb",
        "uid" => "simpledbv2-2025-09-26",
      }

      api.add_operation(:get_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExport"
        o.http_method = "POST"
        o.http_request_uri = "/v2/GetExport"
        o.input = Shapes::ShapeRef.new(shape: GetExportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchExportException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:list_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExports"
        o.http_method = "POST"
        o.http_request_uri = "/v2/ListExports"
        o.input = Shapes::ShapeRef.new(shape: ListExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomainException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_domain_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDomainExport"
        o.http_method = "POST"
        o.http_request_uri = "/v2/StartDomainExport"
        o.input = Shapes::ShapeRef.new(shape: StartDomainExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDomainExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NumberExportsLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomainException)
      end)
    end

  end
end
