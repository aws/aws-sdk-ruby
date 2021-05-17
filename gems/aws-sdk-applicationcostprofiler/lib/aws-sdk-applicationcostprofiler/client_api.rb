# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationCostProfiler
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    DeleteReportDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteReportDefinitionRequest')
    DeleteReportDefinitionResult = Shapes::StructureShape.new(name: 'DeleteReportDefinitionResult')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Format = Shapes::StringShape.new(name: 'Format')
    GetReportDefinitionRequest = Shapes::StructureShape.new(name: 'GetReportDefinitionRequest')
    GetReportDefinitionResult = Shapes::StructureShape.new(name: 'GetReportDefinitionResult')
    ImportApplicationUsageRequest = Shapes::StructureShape.new(name: 'ImportApplicationUsageRequest')
    ImportApplicationUsageResult = Shapes::StructureShape.new(name: 'ImportApplicationUsageResult')
    ImportId = Shapes::StringShape.new(name: 'ImportId')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListReportDefinitionsRequest = Shapes::StructureShape.new(name: 'ListReportDefinitionsRequest')
    ListReportDefinitionsResult = Shapes::StructureShape.new(name: 'ListReportDefinitionsResult')
    PutReportDefinitionRequest = Shapes::StructureShape.new(name: 'PutReportDefinitionRequest')
    PutReportDefinitionResult = Shapes::StructureShape.new(name: 'PutReportDefinitionResult')
    ReportDefinition = Shapes::StructureShape.new(name: 'ReportDefinition')
    ReportDefinitionList = Shapes::ListShape.new(name: 'ReportDefinitionList')
    ReportDescription = Shapes::StringShape.new(name: 'ReportDescription')
    ReportFrequency = Shapes::StringShape.new(name: 'ReportFrequency')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3BucketRegion = Shapes::StringShape.new(name: 'S3BucketRegion')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourceS3Location = Shapes::StructureShape.new(name: 'SourceS3Location')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UpdateReportDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateReportDefinitionRequest')
    UpdateReportDefinitionResult = Shapes::StructureShape.new(name: 'UpdateReportDefinitionResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    DeleteReportDefinitionRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "uri", location_name: "reportId"))
    DeleteReportDefinitionRequest.struct_class = Types::DeleteReportDefinitionRequest

    DeleteReportDefinitionResult.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    DeleteReportDefinitionResult.struct_class = Types::DeleteReportDefinitionResult

    GetReportDefinitionRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "uri", location_name: "reportId"))
    GetReportDefinitionRequest.struct_class = Types::GetReportDefinitionRequest

    GetReportDefinitionResult.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    GetReportDefinitionResult.add_member(:report_description, Shapes::ShapeRef.new(shape: ReportDescription, required: true, location_name: "reportDescription"))
    GetReportDefinitionResult.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, required: true, location_name: "reportFrequency"))
    GetReportDefinitionResult.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    GetReportDefinitionResult.add_member(:destination_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "destinationS3Location"))
    GetReportDefinitionResult.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetReportDefinitionResult.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdated"))
    GetReportDefinitionResult.struct_class = Types::GetReportDefinitionResult

    ImportApplicationUsageRequest.add_member(:source_s3_location, Shapes::ShapeRef.new(shape: SourceS3Location, required: true, location_name: "sourceS3Location"))
    ImportApplicationUsageRequest.struct_class = Types::ImportApplicationUsageRequest

    ImportApplicationUsageResult.add_member(:import_id, Shapes::ShapeRef.new(shape: ImportId, required: true, location_name: "importId"))
    ImportApplicationUsageResult.struct_class = Types::ImportApplicationUsageResult

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListReportDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListReportDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListReportDefinitionsRequest.struct_class = Types::ListReportDefinitionsRequest

    ListReportDefinitionsResult.add_member(:report_definitions, Shapes::ShapeRef.new(shape: ReportDefinitionList, location_name: "reportDefinitions"))
    ListReportDefinitionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListReportDefinitionsResult.struct_class = Types::ListReportDefinitionsResult

    PutReportDefinitionRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    PutReportDefinitionRequest.add_member(:report_description, Shapes::ShapeRef.new(shape: ReportDescription, required: true, location_name: "reportDescription"))
    PutReportDefinitionRequest.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, required: true, location_name: "reportFrequency"))
    PutReportDefinitionRequest.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    PutReportDefinitionRequest.add_member(:destination_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "destinationS3Location"))
    PutReportDefinitionRequest.struct_class = Types::PutReportDefinitionRequest

    PutReportDefinitionResult.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    PutReportDefinitionResult.struct_class = Types::PutReportDefinitionResult

    ReportDefinition.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    ReportDefinition.add_member(:report_description, Shapes::ShapeRef.new(shape: ReportDescription, location_name: "reportDescription"))
    ReportDefinition.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, location_name: "reportFrequency"))
    ReportDefinition.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    ReportDefinition.add_member(:destination_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "destinationS3Location"))
    ReportDefinition.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ReportDefinition.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ReportDefinition.struct_class = Types::ReportDefinition

    ReportDefinitionList.member = Shapes::ShapeRef.new(shape: ReportDefinition)

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "bucket"))
    S3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, required: true, location_name: "prefix"))
    S3Location.struct_class = Types::S3Location

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceS3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "bucket"))
    SourceS3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "key"))
    SourceS3Location.add_member(:region, Shapes::ShapeRef.new(shape: S3BucketRegion, location_name: "region"))
    SourceS3Location.struct_class = Types::SourceS3Location

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateReportDefinitionRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "uri", location_name: "reportId"))
    UpdateReportDefinitionRequest.add_member(:report_description, Shapes::ShapeRef.new(shape: ReportDescription, required: true, location_name: "reportDescription"))
    UpdateReportDefinitionRequest.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, required: true, location_name: "reportFrequency"))
    UpdateReportDefinitionRequest.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    UpdateReportDefinitionRequest.add_member(:destination_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "destinationS3Location"))
    UpdateReportDefinitionRequest.struct_class = Types::UpdateReportDefinitionRequest

    UpdateReportDefinitionResult.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    UpdateReportDefinitionResult.struct_class = Types::UpdateReportDefinitionResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-09-10"

      api.metadata = {
        "apiVersion" => "2020-09-10",
        "endpointPrefix" => "application-cost-profiler",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Application Cost Profiler",
        "serviceId" => "ApplicationCostProfiler",
        "signatureVersion" => "v4",
        "signingName" => "application-cost-profiler",
        "uid" => "AWSApplicationCostProfiler-2020-09-10",
      }

      api.add_operation(:delete_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReportDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/reportDefinition/{reportId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReportDefinitionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReportDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/reportDefinition/{reportId}"
        o.input = Shapes::ShapeRef.new(shape: GetReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReportDefinitionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_application_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportApplicationUsage"
        o.http_method = "POST"
        o.http_request_uri = "/importApplicationUsage"
        o.input = Shapes::ShapeRef.new(shape: ImportApplicationUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportApplicationUsageResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_report_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReportDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/reportDefinition"
        o.input = Shapes::ShapeRef.new(shape: ListReportDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReportDefinitionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutReportDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/reportDefinition"
        o.input = Shapes::ShapeRef.new(shape: PutReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutReportDefinitionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReportDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/reportDefinition/{reportId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReportDefinitionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
