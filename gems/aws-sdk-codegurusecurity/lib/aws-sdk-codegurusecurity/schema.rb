# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruSecurity
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountFindingsMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#AccountFindingsMetric', name: 'AccountFindingsMetric')
    AnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#AnalysisType', name: 'AnalysisType')
    BatchGetFindingsError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#BatchGetFindingsError', name: 'BatchGetFindingsError')
    BatchGetFindingsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#BatchGetFindingsErrors', name: 'BatchGetFindingsErrors')
    BatchGetFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#BatchGetFindingsRequest', name: 'BatchGetFindingsRequest')
    BatchGetFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#BatchGetFindingsResponse', name: 'BatchGetFindingsResponse')
    CategoriesWithMostFindings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#CategoriesWithMostFindings', name: 'CategoriesWithMostFindings', traits: {"smithy.api#length" => {"max" => 5}})
    CategoryWithFindingNum = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#CategoryWithFindingNum', name: 'CategoryWithFindingNum')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    CodeLine = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#CodeLine', name: 'CodeLine')
    CodeSnippet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#CodeSnippet', name: 'CodeSnippet')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#CreateScanRequest', name: 'CreateScanRequest')
    CreateScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#CreateScanResponse', name: 'CreateScanResponse')
    CreateUploadUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#CreateUploadUrlRequest', name: 'CreateUploadUrlRequest')
    CreateUploadUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#CreateUploadUrlResponse', name: 'CreateUploadUrlResponse')
    DetectorTags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#DetectorTags', name: 'DetectorTags')
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#EncryptionConfig', name: 'EncryptionConfig')
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#ErrorCode', name: 'ErrorCode')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1}})
    FilePath = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#FilePath', name: 'FilePath')
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#Finding', name: 'Finding')
    FindingIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#FindingIdentifier', name: 'FindingIdentifier')
    FindingIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#FindingIdentifiers', name: 'FindingIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    FindingMetricsValuePerSeverity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#FindingMetricsValuePerSeverity', name: 'FindingMetricsValuePerSeverity')
    Findings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#Findings', name: 'Findings')
    FindingsMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#FindingsMetricList', name: 'FindingsMetricList')
    GetAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetAccountConfigurationRequest', name: 'GetAccountConfigurationRequest')
    GetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetAccountConfigurationResponse', name: 'GetAccountConfigurationResponse')
    GetFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetFindingsRequest', name: 'GetFindingsRequest')
    GetFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetFindingsResponse', name: 'GetFindingsResponse')
    GetMetricsSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetMetricsSummaryRequest', name: 'GetMetricsSummaryRequest')
    GetMetricsSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetMetricsSummaryResponse', name: 'GetMetricsSummaryResponse')
    GetScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetScanRequest', name: 'GetScanRequest')
    GetScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#GetScanResponse', name: 'GetScanResponse')
    HeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#HeaderKey', name: 'HeaderKey', traits: {"smithy.api#length" => {"min" => 1}})
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#HeaderValue', name: 'HeaderValue', traits: {"smithy.api#length" => {"min" => 1}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kms:[\\S]+:[\\d]{12}:key\\/(([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})|(mrk-[0-9a-zA-Z]{32}))$"})
    ListFindingsMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ListFindingsMetricsRequest', name: 'ListFindingsMetricsRequest')
    ListFindingsMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ListFindingsMetricsResponse', name: 'ListFindingsMetricsResponse')
    ListScansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ListScansRequest', name: 'ListScansRequest')
    ListScansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ListScansResponse', name: 'ListScansResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MetricsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#MetricsSummary', name: 'MetricsSummary')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#Recommendation', name: 'Recommendation')
    ReferenceUrls = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#ReferenceUrls', name: 'ReferenceUrls')
    RelatedVulnerabilities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#RelatedVulnerabilities', name: 'RelatedVulnerabilities')
    Remediation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#Remediation', name: 'Remediation')
    RequestHeaderMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codegurusecurity#RequestHeaderMap', name: 'RequestHeaderMap', traits: {"smithy.api#sensitive" => {}})
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#Resource', name: 'Resource')
    ResourceId = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.codegurusecurity#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#S3Url', name: 'S3Url', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ScanName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#ScanName', name: 'ScanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[a-zA-Z0-9-_$:.]*$"})
    ScanNameArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#ScanNameArn', name: 'ScanNameArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^arn:aws:codeguru-security:[\\S]+:[\\d]{12}:scans\\/[a-zA-Z0-9-_$:.]*$"})
    ScanNameWithFindingNum = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ScanNameWithFindingNum', name: 'ScanNameWithFindingNum')
    ScanState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#ScanState', name: 'ScanState')
    ScanSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#ScanSummaries', name: 'ScanSummaries')
    ScanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ScanSummary', name: 'ScanSummary')
    ScanType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#ScanType', name: 'ScanType')
    ScansWithMostOpenCriticalFindings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#ScansWithMostOpenCriticalFindings', name: 'ScansWithMostOpenCriticalFindings', traits: {"smithy.api#length" => {"max" => 3}})
    ScansWithMostOpenFindings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#ScansWithMostOpenFindings', name: 'ScansWithMostOpenFindings', traits: {"smithy.api#length" => {"max" => 3}})
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#Severity', name: 'Severity')
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#Status', name: 'Status')
    SuggestedFix = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#SuggestedFix', name: 'SuggestedFix')
    SuggestedFixes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#SuggestedFixes', name: 'SuggestedFixes')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codegurusecurity#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#UpdateAccountConfigurationRequest', name: 'UpdateAccountConfigurationRequest')
    UpdateAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#UpdateAccountConfigurationResponse', name: 'UpdateAccountConfigurationResponse')
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codegurusecurity#Uuid', name: 'Uuid', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codegurusecurity#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codegurusecurity#ValidationExceptionReason', name: 'ValidationExceptionReason')
    Vulnerability = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codegurusecurity#Vulnerability', name: 'Vulnerability')

    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    AccessDeniedException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountFindingsMetric.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'date'))
    AccountFindingsMetric.add_member(:new_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: 'newFindings'))
    AccountFindingsMetric.add_member(:closed_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: 'closedFindings'))
    AccountFindingsMetric.add_member(:open_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: 'openFindings'))
    AccountFindingsMetric.add_member(:mean_time_to_close, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: 'meanTimeToClose'))
    AccountFindingsMetric.type = Types::AccountFindingsMetric
    AnalysisType.add_member(:security, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY', traits: {"smithy.api#enumValue" => "Security"}))
    AnalysisType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "All"}))
    BatchGetFindingsError.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsError.add_member(:finding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'findingId', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsError.type = Types::BatchGetFindingsError
    BatchGetFindingsErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFindingsError)
    BatchGetFindingsRequest.add_member(:finding_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingIdentifiers, location_name: 'findingIdentifiers', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsRequest.type = Types::BatchGetFindingsRequest
    BatchGetFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Findings, location_name: 'findings', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsResponse.add_member(:failed_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFindingsErrors, location_name: 'failedFindings', traits: {"smithy.api#required" => {}}))
    BatchGetFindingsResponse.type = Types::BatchGetFindingsResponse
    CategoriesWithMostFindings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryWithFindingNum)
    CategoryWithFindingNum.add_member(:category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'categoryName'))
    CategoryWithFindingNum.add_member(:finding_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'findingNumber'))
    CategoryWithFindingNum.type = Types::CategoryWithFindingNum
    CodeLine.add_member(:number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'number'))
    CodeLine.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'content'))
    CodeLine.type = Types::CodeLine
    CodeSnippet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeLine)
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateScanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScanRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    CreateScanRequest.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    CreateScanRequest.add_member(:scan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType'))
    CreateScanRequest.add_member(:analysis_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'analysisType'))
    CreateScanRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateScanRequest.type = Types::CreateScanRequest
    CreateScanResponse.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    CreateScanResponse.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'runId', traits: {"smithy.api#required" => {}}))
    CreateScanResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    CreateScanResponse.add_member(:scan_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanState, location_name: 'scanState', traits: {"smithy.api#required" => {}}))
    CreateScanResponse.add_member(:scan_name_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameArn, location_name: 'scanNameArn'))
    CreateScanResponse.type = Types::CreateScanResponse
    CreateUploadUrlRequest.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    CreateUploadUrlRequest.type = Types::CreateUploadUrlRequest
    CreateUploadUrlResponse.add_member(:s3_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 's3Url', traits: {"smithy.api#required" => {}}))
    CreateUploadUrlResponse.add_member(:request_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestHeaderMap, location_name: 'requestHeaders', traits: {"smithy.api#required" => {}}))
    CreateUploadUrlResponse.add_member(:code_artifact_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'codeArtifactId', traits: {"smithy.api#required" => {}}))
    CreateUploadUrlResponse.type = Types::CreateUploadUrlResponse
    DetectorTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    EncryptionConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    EncryptionConfig.type = Types::EncryptionConfig
    ErrorCode.add_member(:duplicate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_IDENTIFIER', traits: {"smithy.api#enumValue" => "DUPLICATE_IDENTIFIER"}))
    ErrorCode.add_member(:item_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITEM_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ITEM_DOES_NOT_EXIST"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ErrorCode.add_member(:invalid_finding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FINDING_ID', traits: {"smithy.api#enumValue" => "INVALID_FINDING_ID"}))
    ErrorCode.add_member(:invalid_scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SCAN_NAME', traits: {"smithy.api#enumValue" => "INVALID_SCAN_NAME"}))
    FilePath.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name'))
    FilePath.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'path'))
    FilePath.add_member(:start_line, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'startLine'))
    FilePath.add_member(:end_line, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'endLine'))
    FilePath.add_member(:code_snippet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSnippet, location_name: 'codeSnippet'))
    FilePath.type = Types::FilePath
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    Finding.add_member(:generator_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'generatorId'))
    Finding.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt'))
    Finding.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'type'))
    Finding.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    Finding.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'resource'))
    Finding.add_member(:vulnerability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Vulnerability, location_name: 'vulnerability'))
    Finding.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity'))
    Finding.add_member(:remediation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Remediation, location_name: 'remediation'))
    Finding.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'title'))
    Finding.add_member(:detector_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorTags, location_name: 'detectorTags'))
    Finding.add_member(:detector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'detectorId'))
    Finding.add_member(:detector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'detectorName'))
    Finding.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ruleId'))
    Finding.type = Types::Finding
    FindingIdentifier.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    FindingIdentifier.add_member(:finding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'findingId', traits: {"smithy.api#required" => {}}))
    FindingIdentifier.type = Types::FindingIdentifier
    FindingIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingIdentifier)
    FindingMetricsValuePerSeverity.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'info'))
    FindingMetricsValuePerSeverity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'low'))
    FindingMetricsValuePerSeverity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'medium'))
    FindingMetricsValuePerSeverity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'high'))
    FindingMetricsValuePerSeverity.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'critical'))
    FindingMetricsValuePerSeverity.type = Types::FindingMetricsValuePerSeverity
    Findings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Finding)
    FindingsMetricList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountFindingsMetric)
    GetAccountConfigurationRequest.type = Types::GetAccountConfigurationRequest
    GetAccountConfigurationResponse.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    GetAccountConfigurationResponse.type = Types::GetAccountConfigurationResponse
    GetFindingsRequest.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetFindingsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    GetFindingsRequest.type = Types::GetFindingsRequest
    GetFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Findings, location_name: 'findings'))
    GetFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetFindingsResponse.type = Types::GetFindingsResponse
    GetMetricsSummaryRequest.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'date', traits: {"smithy.api#httpQuery" => "date", "smithy.api#required" => {}}))
    GetMetricsSummaryRequest.type = Types::GetMetricsSummaryRequest
    GetMetricsSummaryResponse.add_member(:metrics_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsSummary, location_name: 'metricsSummary'))
    GetMetricsSummaryResponse.type = Types::GetMetricsSummaryResponse
    GetScanRequest.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetScanRequest.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'runId', traits: {"smithy.api#httpQuery" => "runId"}))
    GetScanRequest.type = Types::GetScanRequest
    GetScanResponse.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    GetScanResponse.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'runId', traits: {"smithy.api#required" => {}}))
    GetScanResponse.add_member(:scan_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanState, location_name: 'scanState', traits: {"smithy.api#required" => {}}))
    GetScanResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetScanResponse.add_member(:analysis_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'analysisType', traits: {"smithy.api#required" => {}}))
    GetScanResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt'))
    GetScanResponse.add_member(:number_of_revisions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfRevisions'))
    GetScanResponse.add_member(:scan_name_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameArn, location_name: 'scanNameArn'))
    GetScanResponse.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage'))
    GetScanResponse.type = Types::GetScanResponse
    InternalServerException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListFindingsMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFindingsMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListFindingsMetricsRequest.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startDate', traits: {"smithy.api#httpQuery" => "startDate", "smithy.api#required" => {}}))
    ListFindingsMetricsRequest.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endDate', traits: {"smithy.api#httpQuery" => "endDate", "smithy.api#required" => {}}))
    ListFindingsMetricsRequest.type = Types::ListFindingsMetricsRequest
    ListFindingsMetricsResponse.add_member(:findings_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsMetricList, location_name: 'findingsMetrics'))
    ListFindingsMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListFindingsMetricsResponse.type = Types::ListFindingsMetricsResponse
    ListScansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListScansRequest.type = Types::ListScansRequest
    ListScansResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanSummaries, location_name: 'summaries'))
    ListScansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListScansResponse.type = Types::ListScansResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricsSummary.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'date'))
    MetricsSummary.add_member(:open_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingMetricsValuePerSeverity, location_name: 'openFindings'))
    MetricsSummary.add_member(:categories_with_most_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoriesWithMostFindings, location_name: 'categoriesWithMostFindings'))
    MetricsSummary.add_member(:scans_with_most_open_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScansWithMostOpenFindings, location_name: 'scansWithMostOpenFindings'))
    MetricsSummary.add_member(:scans_with_most_open_critical_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScansWithMostOpenCriticalFindings, location_name: 'scansWithMostOpenCriticalFindings'))
    MetricsSummary.type = Types::MetricsSummary
    Recommendation.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'text'))
    Recommendation.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'url'))
    Recommendation.type = Types::Recommendation
    ReferenceUrls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    RelatedVulnerabilities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Remediation.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation, location_name: 'recommendation'))
    Remediation.add_member(:suggested_fixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestedFixes, location_name: 'suggestedFixes'))
    Remediation.type = Types::Remediation
    RequestHeaderMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderKey)
    RequestHeaderMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue)
    Resource.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    Resource.add_member(:sub_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'subResourceId'))
    Resource.type = Types::Resource
    ResourceId.add_member(:code_artifact_id, Types::ResourceId::CodeArtifactId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'codeArtifactId'))
    ResourceId.add_member(:unknown, Types::ResourceId::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceId.type = Types::ResourceId
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScanNameWithFindingNum.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'scanName'))
    ScanNameWithFindingNum.add_member(:finding_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'findingNumber'))
    ScanNameWithFindingNum.type = Types::ScanNameWithFindingNum
    ScanState.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    ScanState.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "Successful"}))
    ScanState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    ScanSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanSummary)
    ScanSummary.add_member(:scan_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanState, location_name: 'scanState', traits: {"smithy.api#required" => {}}))
    ScanSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ScanSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt'))
    ScanSummary.add_member(:scan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanName, location_name: 'scanName', traits: {"smithy.api#required" => {}}))
    ScanSummary.add_member(:run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'runId', traits: {"smithy.api#required" => {}}))
    ScanSummary.add_member(:scan_name_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameArn, location_name: 'scanNameArn'))
    ScanSummary.type = Types::ScanSummary
    ScanType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "Standard"}))
    ScanType.add_member(:express, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPRESS', traits: {"smithy.api#enumValue" => "Express"}))
    ScansWithMostOpenCriticalFindings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameWithFindingNum)
    ScansWithMostOpenFindings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameWithFindingNum)
    Severity.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL', traits: {"smithy.api#enumValue" => "Critical"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "High"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "Medium"}))
    Severity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "Low"}))
    Severity.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "Info"}))
    Status.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "Closed"}))
    Status.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "Open"}))
    Status.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "All"}))
    SuggestedFix.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    SuggestedFix.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'code'))
    SuggestedFix.type = Types::SuggestedFix
    SuggestedFixes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestedFix)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNameArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccountConfigurationRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    UpdateAccountConfigurationRequest.type = Types::UpdateAccountConfigurationRequest
    UpdateAccountConfigurationResponse.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    UpdateAccountConfigurationResponse.type = Types::UpdateAccountConfigurationResponse
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))
    ValidationExceptionReason.add_member(:lambda_code_sha_mismatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_CODE_SHA_MISMATCH', traits: {"smithy.api#enumValue" => "lambdaCodeShaMisMatch"}))
    Vulnerability.add_member(:reference_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceUrls, location_name: 'referenceUrls'))
    Vulnerability.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerabilities, location_name: 'relatedVulnerabilities'))
    Vulnerability.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    Vulnerability.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'filePath'))
    Vulnerability.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'itemCount', traits: {"smithy.api#deprecated" => {"message" => "This shape is not used."}}))
    Vulnerability.type = Types::Vulnerability

    AwsCodeGuruSecurity = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codegurusecurity#AwsCodeGuruSecurity"
      service.name = "AwsCodeGuruSecurity"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeGuru Security", "arnNamespace" => "codeguru-security", "cloudTrailEventSource" => "codeguru-security.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "codeguru-security"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Authorization", "Content-Type", "Credentials", "X-Amz-Date", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "origin" => "*"}, "smithy.api#title" => "Amazon CodeGuru Security"}
      service.add_operation(:batch_get_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#BatchGetFindings"
        operation.name = "BatchGetFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/batchGetFindings"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#CreateScan"
        operation.name = "CreateScan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/scans"}}
      end)
      service.add_operation(:create_upload_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#CreateUploadUrl"
        operation.name = "CreateUploadUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUploadUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUploadUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/uploadUrl"}}
      end)
      service.add_operation(:get_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#GetAccountConfiguration"
        operation.name = "GetAccountConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/accountConfiguration/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#GetFindings"
        operation.name = "GetFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/findings/{scanName}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindings.new
      end)
      service.add_operation(:get_metrics_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#GetMetricsSummary"
        operation.name = "GetMetricsSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricsSummaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricsSummaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/metrics/summary"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#GetScan"
        operation.name = "GetScan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scans/{scanName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_findings_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#ListFindingsMetrics"
        operation.name = "ListFindingsMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsMetricsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsMetricsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/metrics/findings"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFindingsMetrics.new
      end)
      service.add_operation(:list_scans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#ListScans"
        operation.name = "ListScans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScansRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScansResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scans"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScans.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurusecurity#UpdateAccountConfiguration"
        operation.name = "UpdateAccountConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/updateAccountConfiguration"}}
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
