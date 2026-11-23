# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AbuseSignal
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CorrelationId = Shapes::StringShape.new(name: 'CorrelationId')
    CreateAbuseReportRequest = Shapes::StructureShape.new(name: 'CreateAbuseReportRequest')
    CreateAbuseReportResponse = Shapes::StructureShape.new(name: 'CreateAbuseReportResponse')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    GetAbuseReportStatusRequest = Shapes::StructureShape.new(name: 'GetAbuseReportStatusRequest')
    GetAbuseReportStatusResponse = Shapes::StructureShape.new(name: 'GetAbuseReportStatusResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAbuseReportStatusesRequest = Shapes::StructureShape.new(name: 'ListAbuseReportStatusesRequest')
    ListAbuseReportStatusesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAbuseReportStatusesRequestMaxResultsInteger')
    ListAbuseReportStatusesResponse = Shapes::StructureShape.new(name: 'ListAbuseReportStatusesResponse')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    ReportData = Shapes::UnionShape.new(name: 'ReportData')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    ReportStatusList = Shapes::ListShape.new(name: 'ReportStatusList')
    ReportStatusListItem = Shapes::StructureShape.new(name: 'ReportStatusListItem')
    ReportSubmissionStatus = Shapes::StringShape.new(name: 'ReportSubmissionStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    SubmissionRequirement = Shapes::StructureShape.new(name: 'SubmissionRequirement')
    SubmissionRequirementException = Shapes::StructureShape.new(name: 'SubmissionRequirementException')
    SubmissionRequirementList = Shapes::ListShape.new(name: 'SubmissionRequirementList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAbuseReportRequest.add_member(:report, Shapes::ShapeRef.new(shape: ReportData, required: true, location_name: "report"))
    CreateAbuseReportRequest.add_member(:correlation_id, Shapes::ShapeRef.new(shape: CorrelationId, location_name: "correlationId"))
    CreateAbuseReportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateAbuseReportRequest.struct_class = Types::CreateAbuseReportRequest

    CreateAbuseReportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    CreateAbuseReportResponse.add_member(:correlation_id, Shapes::ShapeRef.new(shape: CorrelationId, location_name: "correlationId"))
    CreateAbuseReportResponse.struct_class = Types::CreateAbuseReportResponse

    GetAbuseReportStatusRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "uri", location_name: "reportId"))
    GetAbuseReportStatusRequest.struct_class = Types::GetAbuseReportStatusRequest

    GetAbuseReportStatusResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    GetAbuseReportStatusResponse.add_member(:correlation_id, Shapes::ShapeRef.new(shape: CorrelationId, location_name: "correlationId"))
    GetAbuseReportStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReportSubmissionStatus, required: true, location_name: "status"))
    GetAbuseReportStatusResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    GetAbuseReportStatusResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "reasonCode"))
    GetAbuseReportStatusResponse.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    GetAbuseReportStatusResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetAbuseReportStatusResponse.struct_class = Types::GetAbuseReportStatusResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAbuseReportStatusesRequest.add_member(:correlation_id, Shapes::ShapeRef.new(shape: CorrelationId, location: "querystring", location_name: "correlationId"))
    ListAbuseReportStatusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAbuseReportStatusesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAbuseReportStatusesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAbuseReportStatusesRequest.struct_class = Types::ListAbuseReportStatusesRequest

    ListAbuseReportStatusesResponse.add_member(:reports, Shapes::ShapeRef.new(shape: ReportStatusList, required: true, location_name: "reports"))
    ListAbuseReportStatusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAbuseReportStatusesResponse.struct_class = Types::ListAbuseReportStatusesResponse

    ReportData.add_member(:xarf, Shapes::ShapeRef.new(shape: Document, location_name: "xarf"))
    ReportData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReportData.add_member_subclass(:xarf, Types::ReportData::Xarf)
    ReportData.add_member_subclass(:unknown, Types::ReportData::Unknown)
    ReportData.struct_class = Types::ReportData

    ReportStatusList.member = Shapes::ShapeRef.new(shape: ReportStatusListItem)

    ReportStatusListItem.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    ReportStatusListItem.add_member(:correlation_id, Shapes::ShapeRef.new(shape: CorrelationId, location_name: "correlationId"))
    ReportStatusListItem.add_member(:status, Shapes::ShapeRef.new(shape: ReportSubmissionStatus, required: true, location_name: "status"))
    ReportStatusListItem.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    ReportStatusListItem.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "reasonCode"))
    ReportStatusListItem.struct_class = Types::ReportStatusListItem

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SubmissionRequirement.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    SubmissionRequirement.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    SubmissionRequirement.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SubmissionRequirement.struct_class = Types::SubmissionRequirement

    SubmissionRequirementException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SubmissionRequirementException.add_member(:unmet_requirements, Shapes::ShapeRef.new(shape: SubmissionRequirementList, location_name: "unmetRequirements"))
    SubmissionRequirementException.struct_class = Types::SubmissionRequirementException

    SubmissionRequirementList.member = Shapes::ShapeRef.new(shape: SubmissionRequirement)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-01-12"

      api.metadata = {
        "apiVersion" => "2026-01-12",
        "auth" => ["aws.auth#sigv4", "aws.auth#sigv4a"],
        "endpointPrefix" => "abuse",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Abuse Signal API",
        "serviceId" => "Abuse Signal",
        "signatureVersion" => "v4",
        "signingName" => "abuse",
        "targetPrefix" => "AbuseReportApi",
        "uid" => "abuse-signal-2026-01-12",
      }

      api.add_operation(:create_abuse_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAbuseReport"
        o.http_method = "POST"
        o.http_request_uri = "/v1/abuse"
        o.input = Shapes::ShapeRef.new(shape: CreateAbuseReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAbuseReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: SubmissionRequirementException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_abuse_report_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAbuseReportStatus"
        o.http_method = "GET"
        o.http_request_uri = "/v1/abuse/{reportId}"
        o.input = Shapes::ShapeRef.new(shape: GetAbuseReportStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAbuseReportStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_abuse_report_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAbuseReportStatuses"
        o.http_method = "GET"
        o.http_request_uri = "/v1/abusestatuses"
        o.input = Shapes::ShapeRef.new(shape: ListAbuseReportStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAbuseReportStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
