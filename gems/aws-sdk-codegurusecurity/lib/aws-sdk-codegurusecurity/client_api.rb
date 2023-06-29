# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruSecurity
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountFindingsMetric = Shapes::StructureShape.new(name: 'AccountFindingsMetric')
    AnalysisType = Shapes::StringShape.new(name: 'AnalysisType')
    BatchGetFindingsError = Shapes::StructureShape.new(name: 'BatchGetFindingsError')
    BatchGetFindingsErrors = Shapes::ListShape.new(name: 'BatchGetFindingsErrors')
    BatchGetFindingsRequest = Shapes::StructureShape.new(name: 'BatchGetFindingsRequest')
    BatchGetFindingsResponse = Shapes::StructureShape.new(name: 'BatchGetFindingsResponse')
    CategoriesWithMostFindings = Shapes::ListShape.new(name: 'CategoriesWithMostFindings')
    CategoryWithFindingNum = Shapes::StructureShape.new(name: 'CategoryWithFindingNum')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CodeLine = Shapes::StructureShape.new(name: 'CodeLine')
    CodeSnippet = Shapes::ListShape.new(name: 'CodeSnippet')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateScanRequest = Shapes::StructureShape.new(name: 'CreateScanRequest')
    CreateScanResponse = Shapes::StructureShape.new(name: 'CreateScanResponse')
    CreateUploadUrlRequest = Shapes::StructureShape.new(name: 'CreateUploadUrlRequest')
    CreateUploadUrlResponse = Shapes::StructureShape.new(name: 'CreateUploadUrlResponse')
    DetectorTags = Shapes::ListShape.new(name: 'DetectorTags')
    Double = Shapes::FloatShape.new(name: 'Double')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    FilePath = Shapes::StructureShape.new(name: 'FilePath')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingIdentifier = Shapes::StructureShape.new(name: 'FindingIdentifier')
    FindingIdentifiers = Shapes::ListShape.new(name: 'FindingIdentifiers')
    FindingMetricsValuePerSeverity = Shapes::StructureShape.new(name: 'FindingMetricsValuePerSeverity')
    Findings = Shapes::ListShape.new(name: 'Findings')
    FindingsMetricList = Shapes::ListShape.new(name: 'FindingsMetricList')
    GetAccountConfigurationRequest = Shapes::StructureShape.new(name: 'GetAccountConfigurationRequest')
    GetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'GetAccountConfigurationResponse')
    GetFindingsRequest = Shapes::StructureShape.new(name: 'GetFindingsRequest')
    GetFindingsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetFindingsRequestMaxResultsInteger')
    GetFindingsResponse = Shapes::StructureShape.new(name: 'GetFindingsResponse')
    GetMetricsSummaryRequest = Shapes::StructureShape.new(name: 'GetMetricsSummaryRequest')
    GetMetricsSummaryResponse = Shapes::StructureShape.new(name: 'GetMetricsSummaryResponse')
    GetScanRequest = Shapes::StructureShape.new(name: 'GetScanRequest')
    GetScanResponse = Shapes::StructureShape.new(name: 'GetScanResponse')
    HeaderKey = Shapes::StringShape.new(name: 'HeaderKey')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListFindingsMetricsRequest = Shapes::StructureShape.new(name: 'ListFindingsMetricsRequest')
    ListFindingsMetricsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFindingsMetricsRequestMaxResultsInteger')
    ListFindingsMetricsResponse = Shapes::StructureShape.new(name: 'ListFindingsMetricsResponse')
    ListScansRequest = Shapes::StructureShape.new(name: 'ListScansRequest')
    ListScansRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListScansRequestMaxResultsInteger')
    ListScansResponse = Shapes::StructureShape.new(name: 'ListScansResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MetricsSummary = Shapes::StructureShape.new(name: 'MetricsSummary')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    ReferenceUrls = Shapes::ListShape.new(name: 'ReferenceUrls')
    RelatedVulnerabilities = Shapes::ListShape.new(name: 'RelatedVulnerabilities')
    Remediation = Shapes::StructureShape.new(name: 'Remediation')
    RequestHeaderMap = Shapes::MapShape.new(name: 'RequestHeaderMap')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceId = Shapes::UnionShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    ScanName = Shapes::StringShape.new(name: 'ScanName')
    ScanNameArn = Shapes::StringShape.new(name: 'ScanNameArn')
    ScanNameWithFindingNum = Shapes::StructureShape.new(name: 'ScanNameWithFindingNum')
    ScanState = Shapes::StringShape.new(name: 'ScanState')
    ScanSummaries = Shapes::ListShape.new(name: 'ScanSummaries')
    ScanSummary = Shapes::StructureShape.new(name: 'ScanSummary')
    ScanType = Shapes::StringShape.new(name: 'ScanType')
    ScansWithMostOpenCriticalFindings = Shapes::ListShape.new(name: 'ScansWithMostOpenCriticalFindings')
    ScansWithMostOpenFindings = Shapes::ListShape.new(name: 'ScansWithMostOpenFindings')
    Severity = Shapes::StringShape.new(name: 'Severity')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    SuggestedFix = Shapes::StructureShape.new(name: 'SuggestedFix')
    SuggestedFixes = Shapes::ListShape.new(name: 'SuggestedFixes')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccountConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAccountConfigurationRequest')
    UpdateAccountConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAccountConfigurationResponse')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Vulnerability = Shapes::StructureShape.new(name: 'Vulnerability')

    AccessDeniedException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    AccessDeniedException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountFindingsMetric.add_member(:closed_findings, Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: "closedFindings"))
    AccountFindingsMetric.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "date"))
    AccountFindingsMetric.add_member(:mean_time_to_close, Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: "meanTimeToClose"))
    AccountFindingsMetric.add_member(:new_findings, Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: "newFindings"))
    AccountFindingsMetric.add_member(:open_findings, Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: "openFindings"))
    AccountFindingsMetric.struct_class = Types::AccountFindingsMetric

    BatchGetFindingsError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    BatchGetFindingsError.add_member(:finding_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "findingId"))
    BatchGetFindingsError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetFindingsError.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location_name: "scanName"))
    BatchGetFindingsError.struct_class = Types::BatchGetFindingsError

    BatchGetFindingsErrors.member = Shapes::ShapeRef.new(shape: BatchGetFindingsError)

    BatchGetFindingsRequest.add_member(:finding_identifiers, Shapes::ShapeRef.new(shape: FindingIdentifiers, required: true, location_name: "findingIdentifiers"))
    BatchGetFindingsRequest.struct_class = Types::BatchGetFindingsRequest

    BatchGetFindingsResponse.add_member(:failed_findings, Shapes::ShapeRef.new(shape: BatchGetFindingsErrors, required: true, location_name: "failedFindings"))
    BatchGetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: Findings, required: true, location_name: "findings"))
    BatchGetFindingsResponse.struct_class = Types::BatchGetFindingsResponse

    CategoriesWithMostFindings.member = Shapes::ShapeRef.new(shape: CategoryWithFindingNum)

    CategoryWithFindingNum.add_member(:category_name, Shapes::ShapeRef.new(shape: String, location_name: "categoryName"))
    CategoryWithFindingNum.add_member(:finding_number, Shapes::ShapeRef.new(shape: Integer, location_name: "findingNumber"))
    CategoryWithFindingNum.struct_class = Types::CategoryWithFindingNum

    CodeLine.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    CodeLine.add_member(:number, Shapes::ShapeRef.new(shape: Integer, location_name: "number"))
    CodeLine.struct_class = Types::CodeLine

    CodeSnippet.member = Shapes::ShapeRef.new(shape: CodeLine)

    ConflictException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateScanRequest.add_member(:analysis_type, Shapes::ShapeRef.new(shape: AnalysisType, location_name: "analysisType"))
    CreateScanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateScanRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    CreateScanRequest.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location_name: "scanName"))
    CreateScanRequest.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, location_name: "scanType"))
    CreateScanRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScanRequest.struct_class = Types::CreateScanRequest

    CreateScanResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    CreateScanResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "runId"))
    CreateScanResponse.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location_name: "scanName"))
    CreateScanResponse.add_member(:scan_name_arn, Shapes::ShapeRef.new(shape: ScanNameArn, location_name: "scanNameArn"))
    CreateScanResponse.add_member(:scan_state, Shapes::ShapeRef.new(shape: ScanState, required: true, location_name: "scanState"))
    CreateScanResponse.struct_class = Types::CreateScanResponse

    CreateUploadUrlRequest.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location_name: "scanName"))
    CreateUploadUrlRequest.struct_class = Types::CreateUploadUrlRequest

    CreateUploadUrlResponse.add_member(:code_artifact_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "codeArtifactId"))
    CreateUploadUrlResponse.add_member(:request_headers, Shapes::ShapeRef.new(shape: RequestHeaderMap, required: true, location_name: "requestHeaders"))
    CreateUploadUrlResponse.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "s3Url"))
    CreateUploadUrlResponse.struct_class = Types::CreateUploadUrlResponse

    DetectorTags.member = Shapes::ShapeRef.new(shape: String)

    EncryptionConfig.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    FilePath.add_member(:code_snippet, Shapes::ShapeRef.new(shape: CodeSnippet, location_name: "codeSnippet"))
    FilePath.add_member(:end_line, Shapes::ShapeRef.new(shape: Integer, location_name: "endLine"))
    FilePath.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    FilePath.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    FilePath.add_member(:start_line, Shapes::ShapeRef.new(shape: Integer, location_name: "startLine"))
    FilePath.struct_class = Types::FilePath

    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Finding.add_member(:detector_id, Shapes::ShapeRef.new(shape: String, location_name: "detectorId"))
    Finding.add_member(:detector_name, Shapes::ShapeRef.new(shape: String, location_name: "detectorName"))
    Finding.add_member(:detector_tags, Shapes::ShapeRef.new(shape: DetectorTags, location_name: "detectorTags"))
    Finding.add_member(:generator_id, Shapes::ShapeRef.new(shape: String, location_name: "generatorId"))
    Finding.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Finding.add_member(:remediation, Shapes::ShapeRef.new(shape: Remediation, location_name: "remediation"))
    Finding.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "resource"))
    Finding.add_member(:rule_id, Shapes::ShapeRef.new(shape: String, location_name: "ruleId"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    Finding.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    Finding.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    Finding.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Finding.add_member(:vulnerability, Shapes::ShapeRef.new(shape: Vulnerability, location_name: "vulnerability"))
    Finding.struct_class = Types::Finding

    FindingIdentifier.add_member(:finding_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "findingId"))
    FindingIdentifier.add_member(:scan_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "scanName"))
    FindingIdentifier.struct_class = Types::FindingIdentifier

    FindingIdentifiers.member = Shapes::ShapeRef.new(shape: FindingIdentifier)

    FindingMetricsValuePerSeverity.add_member(:critical, Shapes::ShapeRef.new(shape: Double, location_name: "critical"))
    FindingMetricsValuePerSeverity.add_member(:high, Shapes::ShapeRef.new(shape: Double, location_name: "high"))
    FindingMetricsValuePerSeverity.add_member(:info, Shapes::ShapeRef.new(shape: Double, location_name: "info"))
    FindingMetricsValuePerSeverity.add_member(:low, Shapes::ShapeRef.new(shape: Double, location_name: "low"))
    FindingMetricsValuePerSeverity.add_member(:medium, Shapes::ShapeRef.new(shape: Double, location_name: "medium"))
    FindingMetricsValuePerSeverity.struct_class = Types::FindingMetricsValuePerSeverity

    Findings.member = Shapes::ShapeRef.new(shape: Finding)

    FindingsMetricList.member = Shapes::ShapeRef.new(shape: AccountFindingsMetric)

    GetAccountConfigurationRequest.struct_class = Types::GetAccountConfigurationRequest

    GetAccountConfigurationResponse.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "encryptionConfig"))
    GetAccountConfigurationResponse.struct_class = Types::GetAccountConfigurationResponse

    GetFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetFindingsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    GetFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetFindingsRequest.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location: "uri", location_name: "scanName"))
    GetFindingsRequest.add_member(:status, Shapes::ShapeRef.new(shape: Status, location: "querystring", location_name: "status"))
    GetFindingsRequest.struct_class = Types::GetFindingsRequest

    GetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: Findings, location_name: "findings"))
    GetFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetFindingsResponse.struct_class = Types::GetFindingsResponse

    GetMetricsSummaryRequest.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "date"))
    GetMetricsSummaryRequest.struct_class = Types::GetMetricsSummaryRequest

    GetMetricsSummaryResponse.add_member(:metrics_summary, Shapes::ShapeRef.new(shape: MetricsSummary, location_name: "metricsSummary"))
    GetMetricsSummaryResponse.struct_class = Types::GetMetricsSummaryResponse

    GetScanRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: Uuid, location: "querystring", location_name: "runId"))
    GetScanRequest.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location: "uri", location_name: "scanName"))
    GetScanRequest.struct_class = Types::GetScanRequest

    GetScanResponse.add_member(:analysis_type, Shapes::ShapeRef.new(shape: AnalysisType, required: true, location_name: "analysisType"))
    GetScanResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetScanResponse.add_member(:number_of_revisions, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfRevisions"))
    GetScanResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "runId"))
    GetScanResponse.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location_name: "scanName"))
    GetScanResponse.add_member(:scan_name_arn, Shapes::ShapeRef.new(shape: ScanNameArn, location_name: "scanNameArn"))
    GetScanResponse.add_member(:scan_state, Shapes::ShapeRef.new(shape: ScanState, required: true, location_name: "scanState"))
    GetScanResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetScanResponse.struct_class = Types::GetScanResponse

    InternalServerException.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListFindingsMetricsRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endDate"))
    ListFindingsMetricsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFindingsMetricsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListFindingsMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFindingsMetricsRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startDate"))
    ListFindingsMetricsRequest.struct_class = Types::ListFindingsMetricsRequest

    ListFindingsMetricsResponse.add_member(:findings_metrics, Shapes::ShapeRef.new(shape: FindingsMetricList, location_name: "findingsMetrics"))
    ListFindingsMetricsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsMetricsResponse.struct_class = Types::ListFindingsMetricsResponse

    ListScansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListScansRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListScansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListScansRequest.struct_class = Types::ListScansRequest

    ListScansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScansResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: ScanSummaries, location_name: "summaries"))
    ListScansResponse.struct_class = Types::ListScansResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ScanNameArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MetricsSummary.add_member(:categories_with_most_findings, Shapes::ShapeRef.new(shape: CategoriesWithMostFindings, location_name: "categoriesWithMostFindings"))
    MetricsSummary.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "date"))
    MetricsSummary.add_member(:open_findings, Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: "openFindings"))
    MetricsSummary.add_member(:scans_with_most_open_critical_findings, Shapes::ShapeRef.new(shape: ScansWithMostOpenCriticalFindings, location_name: "scansWithMostOpenCriticalFindings"))
    MetricsSummary.add_member(:scans_with_most_open_findings, Shapes::ShapeRef.new(shape: ScansWithMostOpenFindings, location_name: "scansWithMostOpenFindings"))
    MetricsSummary.struct_class = Types::MetricsSummary

    Recommendation.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    Recommendation.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    Recommendation.struct_class = Types::Recommendation

    ReferenceUrls.member = Shapes::ShapeRef.new(shape: String)

    RelatedVulnerabilities.member = Shapes::ShapeRef.new(shape: String)

    Remediation.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, location_name: "recommendation"))
    Remediation.add_member(:suggested_fixes, Shapes::ShapeRef.new(shape: SuggestedFixes, location_name: "suggestedFixes"))
    Remediation.struct_class = Types::Remediation

    RequestHeaderMap.key = Shapes::ShapeRef.new(shape: HeaderKey)
    RequestHeaderMap.value = Shapes::ShapeRef.new(shape: HeaderValue)

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Resource.add_member(:sub_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "subResourceId"))
    Resource.struct_class = Types::Resource

    ResourceId.add_member(:code_artifact_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "codeArtifactId"))
    ResourceId.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceId.add_member_subclass(:code_artifact_id, Types::ResourceId::CodeArtifactId)
    ResourceId.add_member_subclass(:unknown, Types::ResourceId::Unknown)
    ResourceId.struct_class = Types::ResourceId

    ResourceNotFoundException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScanNameWithFindingNum.add_member(:finding_number, Shapes::ShapeRef.new(shape: Integer, location_name: "findingNumber"))
    ScanNameWithFindingNum.add_member(:scan_name, Shapes::ShapeRef.new(shape: String, location_name: "scanName"))
    ScanNameWithFindingNum.struct_class = Types::ScanNameWithFindingNum

    ScanSummaries.member = Shapes::ShapeRef.new(shape: ScanSummary)

    ScanSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ScanSummary.add_member(:run_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "runId"))
    ScanSummary.add_member(:scan_name, Shapes::ShapeRef.new(shape: ScanName, required: true, location_name: "scanName"))
    ScanSummary.add_member(:scan_name_arn, Shapes::ShapeRef.new(shape: ScanNameArn, location_name: "scanNameArn"))
    ScanSummary.add_member(:scan_state, Shapes::ShapeRef.new(shape: ScanState, required: true, location_name: "scanState"))
    ScanSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ScanSummary.struct_class = Types::ScanSummary

    ScansWithMostOpenCriticalFindings.member = Shapes::ShapeRef.new(shape: ScanNameWithFindingNum)

    ScansWithMostOpenFindings.member = Shapes::ShapeRef.new(shape: ScanNameWithFindingNum)

    SuggestedFix.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    SuggestedFix.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SuggestedFix.struct_class = Types::SuggestedFix

    SuggestedFixes.member = Shapes::ShapeRef.new(shape: SuggestedFix)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ScanNameArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ScanNameArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccountConfigurationRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "encryptionConfig"))
    UpdateAccountConfigurationRequest.struct_class = Types::UpdateAccountConfigurationRequest

    UpdateAccountConfigurationResponse.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "encryptionConfig"))
    UpdateAccountConfigurationResponse.struct_class = Types::UpdateAccountConfigurationResponse

    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Vulnerability.add_member(:file_path, Shapes::ShapeRef.new(shape: FilePath, location_name: "filePath"))
    Vulnerability.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Vulnerability.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "itemCount"))
    Vulnerability.add_member(:reference_urls, Shapes::ShapeRef.new(shape: ReferenceUrls, location_name: "referenceUrls"))
    Vulnerability.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: RelatedVulnerabilities, location_name: "relatedVulnerabilities"))
    Vulnerability.struct_class = Types::Vulnerability


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "codeguru-security",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CodeGuru Security",
        "serviceId" => "CodeGuru Security",
        "signatureVersion" => "v4",
        "signingName" => "codeguru-security",
        "uid" => "codeguru-security-2018-05-10",
      }

      api.add_operation(:batch_get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/batchGetFindings"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScan"
        o.http_method = "POST"
        o.http_request_uri = "/scans"
        o.input = Shapes::ShapeRef.new(shape: CreateScanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_upload_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUploadUrl"
        o.http_method = "POST"
        o.http_request_uri = "/uploadUrl"
        o.input = Shapes::ShapeRef.new(shape: CreateUploadUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUploadUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/accountConfiguration/get"
        o.input = Shapes::ShapeRef.new(shape: GetAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindings"
        o.http_method = "GET"
        o.http_request_uri = "/findings/{scanName}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_metrics_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricsSummary"
        o.http_method = "GET"
        o.http_request_uri = "/metrics/summary"
        o.input = Shapes::ShapeRef.new(shape: GetMetricsSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMetricsSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScan"
        o.http_method = "GET"
        o.http_request_uri = "/scans/{scanName}"
        o.input = Shapes::ShapeRef.new(shape: GetScanRequest)
        o.output = Shapes::ShapeRef.new(shape: GetScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_findings_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindingsMetrics"
        o.http_method = "GET"
        o.http_request_uri = "/metrics/findings"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsMetricsResponse)
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

      api.add_operation(:list_scans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScans"
        o.http_method = "GET"
        o.http_request_uri = "/scans"
        o.input = Shapes::ShapeRef.new(shape: ListScansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScansResponse)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/updateAccountConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
