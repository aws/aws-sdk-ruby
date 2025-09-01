# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationCostProfiler
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DeleteReportDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#DeleteReportDefinitionRequest', name: 'DeleteReportDefinitionRequest')
    DeleteReportDefinitionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#DeleteReportDefinitionResult', name: 'DeleteReportDefinitionResult')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#ErrorMessage', name: 'ErrorMessage')
    Format = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationcostprofiler#Format', name: 'Format')
    GetReportDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#GetReportDefinitionRequest', name: 'GetReportDefinitionRequest')
    GetReportDefinitionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#GetReportDefinitionResult', name: 'GetReportDefinitionResult')
    ImportApplicationUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ImportApplicationUsageRequest', name: 'ImportApplicationUsageRequest')
    ImportApplicationUsageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ImportApplicationUsageResult', name: 'ImportApplicationUsageResult')
    ImportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#ImportId', name: 'ImportId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationcostprofiler#Integer', name: 'Integer', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListReportDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ListReportDefinitionsRequest', name: 'ListReportDefinitionsRequest')
    ListReportDefinitionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ListReportDefinitionsResult', name: 'ListReportDefinitionsResult')
    PutReportDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#PutReportDefinitionRequest', name: 'PutReportDefinitionRequest')
    PutReportDefinitionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#PutReportDefinitionResult', name: 'PutReportDefinitionResult')
    ReportDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ReportDefinition', name: 'ReportDefinition')
    ReportDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationcostprofiler#ReportDefinitionList', name: 'ReportDefinitionList')
    ReportDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#ReportDescription', name: 'ReportDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    ReportFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationcostprofiler#ReportFrequency', name: 'ReportFrequency')
    ReportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#ReportId', name: 'ReportId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]+$"})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)$"})
    S3BucketRegion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationcostprofiler#S3BucketRegion', name: 'S3BucketRegion')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "\\S"})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#S3Location', name: 'S3Location')
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "\\S"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceS3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#SourceS3Location', name: 'SourceS3Location')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationcostprofiler#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationcostprofiler#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    UpdateReportDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#UpdateReportDefinitionRequest', name: 'UpdateReportDefinitionRequest')
    UpdateReportDefinitionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#UpdateReportDefinitionResult', name: 'UpdateReportDefinitionResult')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationcostprofiler#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    DeleteReportDefinitionRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>Required. ID of the report to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReportDefinitionRequest.type = Types::DeleteReportDefinitionRequest
    DeleteReportDefinitionResult.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>ID of the report that was deleted.</p>"}))
    DeleteReportDefinitionResult.type = Types::DeleteReportDefinitionResult
    Format.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    GetReportDefinitionRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>ID of the report to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReportDefinitionRequest.type = Types::GetReportDefinitionRequest
    GetReportDefinitionResult.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>ID of the report retrieved.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.add_member(:report_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDescription, location_name: 'reportDescription', traits: {"smithy.api#documentation" => "<p>Description of the report.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'reportFrequency', traits: {"smithy.api#documentation" => "<p>Cadence used to generate the report.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Format of the generated report.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.add_member(:destination_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'destinationS3Location', traits: {"smithy.api#documentation" => "<p>Amazon Simple Storage Service (Amazon S3) location where the report is uploaded.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Timestamp (milliseconds) when this report definition was created.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>Timestamp (milliseconds) when this report definition was last updated.</p>", "smithy.api#required" => {}}))
    GetReportDefinitionResult.type = Types::GetReportDefinitionResult
    ImportApplicationUsageRequest.add_member(:source_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceS3Location, location_name: 'sourceS3Location', traits: {"smithy.api#documentation" => "<p>Amazon S3 location to import application usage data from.</p>", "smithy.api#required" => {}}))
    ImportApplicationUsageRequest.type = Types::ImportApplicationUsageRequest
    ImportApplicationUsageResult.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportId, location_name: 'importId', traits: {"smithy.api#documentation" => "<p>ID of the import request.</p>", "smithy.api#required" => {}}))
    ImportApplicationUsageResult.type = Types::ImportApplicationUsageResult
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListReportDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token value from a previous call to access the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReportDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListReportDefinitionsRequest.type = Types::ListReportDefinitionsRequest
    ListReportDefinitionsResult.add_member(:report_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDefinitionList, location_name: 'reportDefinitions', traits: {"smithy.api#documentation" => "<p>The retrieved reports.</p>"}))
    ListReportDefinitionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of the next token, if it exists. Null if there are no more results.</p>"}))
    ListReportDefinitionsResult.type = Types::ListReportDefinitionsResult
    PutReportDefinitionRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>Required. ID of the report. You can choose any valid string matching the pattern for the\n      ID.</p>", "smithy.api#required" => {}}))
    PutReportDefinitionRequest.add_member(:report_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDescription, location_name: 'reportDescription', traits: {"smithy.api#documentation" => "<p>Required. Description of the report.</p>", "smithy.api#required" => {}}))
    PutReportDefinitionRequest.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'reportFrequency', traits: {"smithy.api#documentation" => "<p>Required. The cadence to generate the report.</p>", "smithy.api#required" => {}}))
    PutReportDefinitionRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Required. The format to use for the generated report.</p>", "smithy.api#required" => {}}))
    PutReportDefinitionRequest.add_member(:destination_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'destinationS3Location', traits: {"smithy.api#documentation" => "<p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the\n      report.</p>", "smithy.api#required" => {}}))
    PutReportDefinitionRequest.type = Types::PutReportDefinitionRequest
    PutReportDefinitionResult.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>ID of the report.</p>"}))
    PutReportDefinitionResult.type = Types::PutReportDefinitionResult
    ReportDefinition.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The ID of the report.</p>"}))
    ReportDefinition.add_member(:report_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDescription, location_name: 'reportDescription', traits: {"smithy.api#documentation" => "<p>Description of the report</p>"}))
    ReportDefinition.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'reportFrequency', traits: {"smithy.api#documentation" => "<p>The cadence at which the report is generated.</p>"}))
    ReportDefinition.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format used for the generated reports.</p>"}))
    ReportDefinition.add_member(:destination_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'destinationS3Location', traits: {"smithy.api#documentation" => "<p>The location in Amazon Simple Storage Service (Amazon S3) the reports should be saved to.</p>"}))
    ReportDefinition.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Timestamp (milliseconds) when this report definition was created.</p>"}))
    ReportDefinition.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>Timestamp (milliseconds) when this report definition was last updated.</p>"}))
    ReportDefinition.type = Types::ReportDefinition
    ReportDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDefinition)
    ReportFrequency.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    ReportFrequency.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    ReportFrequency.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    S3BucketRegion.add_member(:ap_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_EAST_1', traits: {"smithy.api#enumValue" => "ap-east-1"}))
    S3BucketRegion.add_member(:me_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ME_SOUTH_1', traits: {"smithy.api#enumValue" => "me-south-1"}))
    S3BucketRegion.add_member(:eu_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_SOUTH_1', traits: {"smithy.api#enumValue" => "eu-south-1"}))
    S3BucketRegion.add_member(:af_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AF_SOUTH_1', traits: {"smithy.api#enumValue" => "af-south-1"}))
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>Name of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>Prefix for the location to write to.</p>", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceS3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>Name of the bucket.</p>", "smithy.api#required" => {}}))
    SourceS3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>Key of the object.</p>", "smithy.api#required" => {}}))
    SourceS3Location.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketRegion, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Region of the bucket. Only required for Regions that are disabled by default.\n        For more infomration about Regions that are disabled by default, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable\">\n          Enabling a Region</a> in the <i>AWS General Reference guide</i>.</p>"}))
    SourceS3Location.type = Types::SourceS3Location
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UpdateReportDefinitionRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>Required. ID of the report to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReportDefinitionRequest.add_member(:report_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDescription, location_name: 'reportDescription', traits: {"smithy.api#documentation" => "<p>Required. Description of the report.</p>", "smithy.api#required" => {}}))
    UpdateReportDefinitionRequest.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'reportFrequency', traits: {"smithy.api#documentation" => "<p>Required. The cadence to generate the report.</p>", "smithy.api#required" => {}}))
    UpdateReportDefinitionRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Required. The format to use for the generated report.</p>", "smithy.api#required" => {}}))
    UpdateReportDefinitionRequest.add_member(:destination_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'destinationS3Location', traits: {"smithy.api#documentation" => "<p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the\n      report.</p>", "smithy.api#required" => {}}))
    UpdateReportDefinitionRequest.type = Types::UpdateReportDefinitionRequest
    UpdateReportDefinitionResult.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>ID of the report.</p>"}))
    UpdateReportDefinitionResult.type = Types::UpdateReportDefinitionResult
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    AWSApplicationCostProfiler = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationcostprofiler#AWSApplicationCostProfiler"
      service.name = "AWSApplicationCostProfiler"
      service.version = "2020-09-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ApplicationCostProfiler", "arnNamespace" => "application-cost-profiler", "cloudFormationName" => "ApplicationCostProfiler", "cloudTrailEventSource" => "applicationcostprofiler.amazonaws.com", "docId" => "AWSApplicationCostProfiler-2020-09-10", "endpointPrefix" => "application-cost-profiler"}, "aws.auth#sigv4" => {"name" => "application-cost-profiler"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Application Cost Profiler"}
      service.add_operation(:delete_report_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationcostprofiler#DeleteReportDefinition"
        operation.name = "DeleteReportDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportDefinitionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/reportDefinition/{reportId}", "code" => 200}}
      end)
      service.add_operation(:get_report_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationcostprofiler#GetReportDefinition"
        operation.name = "GetReportDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportDefinitionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reportDefinition/{reportId}", "code" => 200}}
      end)
      service.add_operation(:import_application_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationcostprofiler#ImportApplicationUsage"
        operation.name = "ImportApplicationUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportApplicationUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportApplicationUsageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/importApplicationUsage", "code" => 200}}
      end)
      service.add_operation(:list_report_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationcostprofiler#ListReportDefinitions"
        operation.name = "ListReportDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportDefinitionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reportDefinition", "code" => 200}}
        operation[:paginator] = Paginators::ListReportDefinitions.new
      end)
      service.add_operation(:put_report_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationcostprofiler#PutReportDefinition"
        operation.name = "PutReportDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutReportDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutReportDefinitionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/reportDefinition", "code" => 200}}
      end)
      service.add_operation(:update_report_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationcostprofiler#UpdateReportDefinition"
        operation.name = "UpdateReportDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReportDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReportDefinitionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/reportDefinition/{reportId}", "code" => 200}}
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
