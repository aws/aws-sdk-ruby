# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Artifact
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptanceType = Shapes::StringShape.new(name: 'AcceptanceType')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetReportMetadataRequest = Shapes::StructureShape.new(name: 'GetReportMetadataRequest')
    GetReportMetadataResponse = Shapes::StructureShape.new(name: 'GetReportMetadataResponse')
    GetReportRequest = Shapes::StructureShape.new(name: 'GetReportRequest')
    GetReportResponse = Shapes::StructureShape.new(name: 'GetReportResponse')
    GetReportResponseDocumentPresignedUrlString = Shapes::StringShape.new(name: 'GetReportResponseDocumentPresignedUrlString')
    GetTermForReportRequest = Shapes::StructureShape.new(name: 'GetTermForReportRequest')
    GetTermForReportResponse = Shapes::StructureShape.new(name: 'GetTermForReportResponse')
    GetTermForReportResponseDocumentPresignedUrlString = Shapes::StringShape.new(name: 'GetTermForReportResponseDocumentPresignedUrlString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListReportsRequest = Shapes::StructureShape.new(name: 'ListReportsRequest')
    ListReportsResponse = Shapes::StructureShape.new(name: 'ListReportsResponse')
    LongStringAttribute = Shapes::StringShape.new(name: 'LongStringAttribute')
    MaxResultsAttribute = Shapes::IntegerShape.new(name: 'MaxResultsAttribute')
    NextTokenAttribute = Shapes::StringShape.new(name: 'NextTokenAttribute')
    NotificationSubscriptionStatus = Shapes::StringShape.new(name: 'NotificationSubscriptionStatus')
    PublishedState = Shapes::StringShape.new(name: 'PublishedState')
    PutAccountSettingsRequest = Shapes::StructureShape.new(name: 'PutAccountSettingsRequest')
    PutAccountSettingsResponse = Shapes::StructureShape.new(name: 'PutAccountSettingsResponse')
    ReportDetail = Shapes::StructureShape.new(name: 'ReportDetail')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    ReportSummary = Shapes::StructureShape.new(name: 'ReportSummary')
    ReportsList = Shapes::ListShape.new(name: 'ReportsList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SequenceNumberAttribute = Shapes::IntegerShape.new(name: 'SequenceNumberAttribute')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShortStringAttribute = Shapes::StringShape.new(name: 'ShortStringAttribute')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampAttribute = Shapes::TimestampShape.new(name: 'TimestampAttribute', timestampFormat: "iso8601")
    UploadState = Shapes::StringShape.new(name: 'UploadState')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VersionAttribute = Shapes::IntegerShape.new(name: 'VersionAttribute')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountSettings.add_member(:notification_subscription_status, Shapes::ShapeRef.new(shape: NotificationSubscriptionStatus, location_name: "notificationSubscriptionStatus"))
    AccountSettings.struct_class = Types::AccountSettings

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetReportMetadataRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    GetReportMetadataRequest.add_member(:report_version, Shapes::ShapeRef.new(shape: VersionAttribute, location: "querystring", location_name: "reportVersion"))
    GetReportMetadataRequest.struct_class = Types::GetReportMetadataRequest

    GetReportMetadataResponse.add_member(:report_details, Shapes::ShapeRef.new(shape: ReportDetail, location_name: "reportDetails"))
    GetReportMetadataResponse.struct_class = Types::GetReportMetadataResponse

    GetReportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    GetReportRequest.add_member(:report_version, Shapes::ShapeRef.new(shape: VersionAttribute, location: "querystring", location_name: "reportVersion"))
    GetReportRequest.add_member(:term_token, Shapes::ShapeRef.new(shape: ShortStringAttribute, required: true, location: "querystring", location_name: "termToken"))
    GetReportRequest.struct_class = Types::GetReportRequest

    GetReportResponse.add_member(:document_presigned_url, Shapes::ShapeRef.new(shape: GetReportResponseDocumentPresignedUrlString, location_name: "documentPresignedUrl"))
    GetReportResponse.struct_class = Types::GetReportResponse

    GetTermForReportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    GetTermForReportRequest.add_member(:report_version, Shapes::ShapeRef.new(shape: VersionAttribute, location: "querystring", location_name: "reportVersion"))
    GetTermForReportRequest.struct_class = Types::GetTermForReportRequest

    GetTermForReportResponse.add_member(:document_presigned_url, Shapes::ShapeRef.new(shape: GetTermForReportResponseDocumentPresignedUrlString, location_name: "documentPresignedUrl"))
    GetTermForReportResponse.add_member(:term_token, Shapes::ShapeRef.new(shape: String, location_name: "termToken"))
    GetTermForReportResponse.struct_class = Types::GetTermForReportResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsAttribute, location: "querystring", location_name: "maxResults"))
    ListReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location: "querystring", location_name: "nextToken"))
    ListReportsRequest.struct_class = Types::ListReportsRequest

    ListReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListReportsResponse.add_member(:reports, Shapes::ShapeRef.new(shape: ReportsList, location_name: "reports"))
    ListReportsResponse.struct_class = Types::ListReportsResponse

    PutAccountSettingsRequest.add_member(:notification_subscription_status, Shapes::ShapeRef.new(shape: NotificationSubscriptionStatus, location_name: "notificationSubscriptionStatus"))
    PutAccountSettingsRequest.struct_class = Types::PutAccountSettingsRequest

    PutAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    PutAccountSettingsResponse.struct_class = Types::PutAccountSettingsResponse

    ReportDetail.add_member(:acceptance_type, Shapes::ShapeRef.new(shape: AcceptanceType, location_name: "acceptanceType"))
    ReportDetail.add_member(:arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    ReportDetail.add_member(:category, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "category"))
    ReportDetail.add_member(:company_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "companyName"))
    ReportDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "createdAt"))
    ReportDetail.add_member(:deleted_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "deletedAt"))
    ReportDetail.add_member(:description, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    ReportDetail.add_member(:id, Shapes::ShapeRef.new(shape: ReportId, location_name: "id"))
    ReportDetail.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "lastModifiedAt"))
    ReportDetail.add_member(:name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "name"))
    ReportDetail.add_member(:period_end, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodEnd"))
    ReportDetail.add_member(:period_start, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodStart"))
    ReportDetail.add_member(:product_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "productName"))
    ReportDetail.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumberAttribute, location_name: "sequenceNumber"))
    ReportDetail.add_member(:series, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "series"))
    ReportDetail.add_member(:state, Shapes::ShapeRef.new(shape: PublishedState, location_name: "state"))
    ReportDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ReportDetail.add_member(:term_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "termArn"))
    ReportDetail.add_member(:upload_state, Shapes::ShapeRef.new(shape: UploadState, location_name: "uploadState"))
    ReportDetail.add_member(:version, Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "version"))
    ReportDetail.struct_class = Types::ReportDetail

    ReportSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    ReportSummary.add_member(:category, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "category"))
    ReportSummary.add_member(:company_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "companyName"))
    ReportSummary.add_member(:description, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    ReportSummary.add_member(:id, Shapes::ShapeRef.new(shape: ReportId, location_name: "id"))
    ReportSummary.add_member(:name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "name"))
    ReportSummary.add_member(:period_end, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodEnd"))
    ReportSummary.add_member(:period_start, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodStart"))
    ReportSummary.add_member(:product_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "productName"))
    ReportSummary.add_member(:series, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "series"))
    ReportSummary.add_member(:state, Shapes::ShapeRef.new(shape: PublishedState, location_name: "state"))
    ReportSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ReportSummary.add_member(:upload_state, Shapes::ShapeRef.new(shape: UploadState, location_name: "uploadState"))
    ReportSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "version"))
    ReportSummary.struct_class = Types::ReportSummary

    ReportsList.member = Shapes::ShapeRef.new(shape: ReportSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "artifact",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Artifact",
        "serviceId" => "Artifact",
        "signatureVersion" => "v4",
        "signingName" => "artifact",
        "uid" => "artifact-2018-05-10",
      }

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/v1/account-settings/get"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReport"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/get"
        o.input = Shapes::ShapeRef.new(shape: GetReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_report_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReportMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/getMetadata"
        o.input = Shapes::ShapeRef.new(shape: GetReportMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReportMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_term_for_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTermForReport"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/getTermForReport"
        o.input = Shapes::ShapeRef.new(shape: GetTermForReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTermForReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReports"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/list"
        o.input = Shapes::ShapeRef.new(shape: ListReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/account-settings/put"
        o.input = Shapes::ShapeRef.new(shape: PutAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
