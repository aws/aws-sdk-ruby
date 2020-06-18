# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostandUsageReportService
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSRegion = Shapes::StringShape.new(name: 'AWSRegion')
    AdditionalArtifact = Shapes::StringShape.new(name: 'AdditionalArtifact')
    AdditionalArtifactList = Shapes::ListShape.new(name: 'AdditionalArtifactList')
    CompressionFormat = Shapes::StringShape.new(name: 'CompressionFormat')
    DeleteReportDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteReportDefinitionRequest')
    DeleteReportDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteReportDefinitionResponse')
    DeleteResponseMessage = Shapes::StringShape.new(name: 'DeleteResponseMessage')
    DescribeReportDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeReportDefinitionsRequest')
    DescribeReportDefinitionsResponse = Shapes::StructureShape.new(name: 'DescribeReportDefinitionsResponse')
    DuplicateReportNameException = Shapes::StructureShape.new(name: 'DuplicateReportNameException')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModifyReportDefinitionRequest = Shapes::StructureShape.new(name: 'ModifyReportDefinitionRequest')
    ModifyReportDefinitionResponse = Shapes::StructureShape.new(name: 'ModifyReportDefinitionResponse')
    PutReportDefinitionRequest = Shapes::StructureShape.new(name: 'PutReportDefinitionRequest')
    PutReportDefinitionResponse = Shapes::StructureShape.new(name: 'PutReportDefinitionResponse')
    RefreshClosedReports = Shapes::BooleanShape.new(name: 'RefreshClosedReports')
    ReportDefinition = Shapes::StructureShape.new(name: 'ReportDefinition')
    ReportDefinitionList = Shapes::ListShape.new(name: 'ReportDefinitionList')
    ReportFormat = Shapes::StringShape.new(name: 'ReportFormat')
    ReportLimitReachedException = Shapes::StructureShape.new(name: 'ReportLimitReachedException')
    ReportName = Shapes::StringShape.new(name: 'ReportName')
    ReportVersioning = Shapes::StringShape.new(name: 'ReportVersioning')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    SchemaElement = Shapes::StringShape.new(name: 'SchemaElement')
    SchemaElementList = Shapes::ListShape.new(name: 'SchemaElementList')
    TimeUnit = Shapes::StringShape.new(name: 'TimeUnit')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AdditionalArtifactList.member = Shapes::ShapeRef.new(shape: AdditionalArtifact)

    DeleteReportDefinitionRequest.add_member(:report_name, Shapes::ShapeRef.new(shape: ReportName, location_name: "ReportName"))
    DeleteReportDefinitionRequest.struct_class = Types::DeleteReportDefinitionRequest

    DeleteReportDefinitionResponse.add_member(:response_message, Shapes::ShapeRef.new(shape: DeleteResponseMessage, location_name: "ResponseMessage"))
    DeleteReportDefinitionResponse.struct_class = Types::DeleteReportDefinitionResponse

    DescribeReportDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeReportDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeReportDefinitionsRequest.struct_class = Types::DescribeReportDefinitionsRequest

    DescribeReportDefinitionsResponse.add_member(:report_definitions, Shapes::ShapeRef.new(shape: ReportDefinitionList, location_name: "ReportDefinitions"))
    DescribeReportDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    DescribeReportDefinitionsResponse.struct_class = Types::DescribeReportDefinitionsResponse

    DuplicateReportNameException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DuplicateReportNameException.struct_class = Types::DuplicateReportNameException

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    ModifyReportDefinitionRequest.add_member(:report_name, Shapes::ShapeRef.new(shape: ReportName, required: true, location_name: "ReportName"))
    ModifyReportDefinitionRequest.add_member(:report_definition, Shapes::ShapeRef.new(shape: ReportDefinition, required: true, location_name: "ReportDefinition"))
    ModifyReportDefinitionRequest.struct_class = Types::ModifyReportDefinitionRequest

    ModifyReportDefinitionResponse.struct_class = Types::ModifyReportDefinitionResponse

    PutReportDefinitionRequest.add_member(:report_definition, Shapes::ShapeRef.new(shape: ReportDefinition, required: true, location_name: "ReportDefinition"))
    PutReportDefinitionRequest.struct_class = Types::PutReportDefinitionRequest

    PutReportDefinitionResponse.struct_class = Types::PutReportDefinitionResponse

    ReportDefinition.add_member(:report_name, Shapes::ShapeRef.new(shape: ReportName, required: true, location_name: "ReportName"))
    ReportDefinition.add_member(:time_unit, Shapes::ShapeRef.new(shape: TimeUnit, required: true, location_name: "TimeUnit"))
    ReportDefinition.add_member(:format, Shapes::ShapeRef.new(shape: ReportFormat, required: true, location_name: "Format"))
    ReportDefinition.add_member(:compression, Shapes::ShapeRef.new(shape: CompressionFormat, required: true, location_name: "Compression"))
    ReportDefinition.add_member(:additional_schema_elements, Shapes::ShapeRef.new(shape: SchemaElementList, required: true, location_name: "AdditionalSchemaElements"))
    ReportDefinition.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    ReportDefinition.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3Prefix, required: true, location_name: "S3Prefix"))
    ReportDefinition.add_member(:s3_region, Shapes::ShapeRef.new(shape: AWSRegion, required: true, location_name: "S3Region"))
    ReportDefinition.add_member(:additional_artifacts, Shapes::ShapeRef.new(shape: AdditionalArtifactList, location_name: "AdditionalArtifacts"))
    ReportDefinition.add_member(:refresh_closed_reports, Shapes::ShapeRef.new(shape: RefreshClosedReports, location_name: "RefreshClosedReports"))
    ReportDefinition.add_member(:report_versioning, Shapes::ShapeRef.new(shape: ReportVersioning, location_name: "ReportVersioning"))
    ReportDefinition.struct_class = Types::ReportDefinition

    ReportDefinitionList.member = Shapes::ShapeRef.new(shape: ReportDefinition)

    ReportLimitReachedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ReportLimitReachedException.struct_class = Types::ReportLimitReachedException

    SchemaElementList.member = Shapes::ShapeRef.new(shape: SchemaElement)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-01-06"

      api.metadata = {
        "apiVersion" => "2017-01-06",
        "endpointPrefix" => "cur",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Cost and Usage Report Service",
        "serviceId" => "Cost and Usage Report Service",
        "signatureVersion" => "v4",
        "signingName" => "cur",
        "targetPrefix" => "AWSOrigamiServiceGatewayService",
        "uid" => "cur-2017-01-06",
      }

      api.add_operation(:delete_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReportDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReportDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_report_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReportDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReportDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReportDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:modify_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReportDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyReportDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_report_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutReportDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutReportDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutReportDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateReportNameException)
        o.errors << Shapes::ShapeRef.new(shape: ReportLimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
