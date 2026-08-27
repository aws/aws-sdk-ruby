# frozen_string_literal: true

# This is generated code!

module Aws::Inspector2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Account", name: "Account")
    AccountAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AccountAggregation", name: "AccountAggregation")
    AccountAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AccountAggregationResponse", name: "AccountAggregationResponse")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AccountIdFilterList", name: "AccountIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AccountIdSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AccountIdSet", name: "AccountIdSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#uniqueItems" => {}})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AccountList", name: "AccountList")
    AccountSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AccountSortBy", name: "AccountSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    AccountState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AccountState", name: "AccountState")
    AccountStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AccountStateList", name: "AccountStateList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AggCounts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#AggCounts", name: "AggCounts", traits: {"smithy.api#default" => 0})
    AggregationFindingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AggregationFindingType", name: "AggregationFindingType", traits: {"smithy.api#enum" => [{"value" => "NETWORK_REACHABILITY", "name" => "NETWORK_REACHABILITY"}, {"value" => "PACKAGE_VULNERABILITY", "name" => "PACKAGE_VULNERABILITY"}, {"value" => "CODE_VULNERABILITY", "name" => "CODE_VULNERABILITY"}]})
    AggregationRequest = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#AggregationRequest", name: "AggregationRequest")
    AggregationResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AggregationResourceType", name: "AggregationResourceType", traits: {"smithy.api#enum" => [{"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER_IMAGE", "name" => "AWS_ECR_CONTAINER_IMAGE"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    AggregationResponse = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#AggregationResponse", name: "AggregationResponse")
    AggregationResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AggregationResponseList", name: "AggregationResponseList")
    AggregationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AggregationType", name: "AggregationType", traits: {"smithy.api#enum" => [{"value" => "FINDING_TYPE", "name" => "FINDING_TYPE"}, {"value" => "PACKAGE", "name" => "PACKAGE"}, {"value" => "TITLE", "name" => "TITLE"}, {"value" => "REPOSITORY", "name" => "REPOSITORY"}, {"value" => "AMI", "name" => "AMI"}, {"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER", "name" => "AWS_ECR_CONTAINER"}, {"value" => "IMAGE_LAYER", "name" => "IMAGE_LAYER"}, {"value" => "ACCOUNT", "name" => "ACCOUNT"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "LAMBDA_LAYER", "name" => "LAMBDA_LAYER"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    AmiAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AmiAggregation", name: "AmiAggregation")
    AmiAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AmiAggregationResponse", name: "AmiAggregationResponse")
    AmiId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AmiId", name: "AmiId", traits: {"smithy.api#pattern" => "^ami-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    AmiSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AmiSortBy", name: "AmiSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}, {"value" => "AFFECTED_INSTANCES", "name" => "AFFECTED_INSTANCES"}]})
    Architecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Architecture", name: "Architecture", traits: {"smithy.api#enum" => [{"value" => "X86_64", "name" => "X86_64"}, {"value" => "ARM64", "name" => "ARM64"}]})
    ArchitectureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ArchitectureList", name: "ArchitectureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AssociateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AssociateConfigurationRequest", name: "AssociateConfigurationRequest")
    AssociateConfigurationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AssociateConfigurationRequestList", name: "AssociateConfigurationRequestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    AssociateMemberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AssociateMemberInput", name: "AssociateMemberInput")
    AssociateMemberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AssociateMemberOutput", name: "AssociateMemberOutput")
    AssociationResultStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#AssociationResultStatusCode", name: "AssociationResultStatusCode")
    AssociationResultStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AssociationResultStatusMessage", name: "AssociationResultStatusMessage", traits: {"smithy.api#length" => {"min" => 1}})
    AtigData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AtigData", name: "AtigData")
    AuthorizationUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AuthorizationUrl", name: "AuthorizationUrl", traits: {"smithy.api#sensitive" => {}})
    AutoEnable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AutoEnable", name: "AutoEnable")
    AwsEc2InstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEc2InstanceDetails", name: "AwsEc2InstanceDetails")
    AwsEcrContainerAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEcrContainerAggregation", name: "AwsEcrContainerAggregation")
    AwsEcrContainerAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEcrContainerAggregationResponse", name: "AwsEcrContainerAggregationResponse")
    AwsEcrContainerImageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEcrContainerImageDetails", name: "AwsEcrContainerImageDetails")
    AwsEcrContainerSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#AwsEcrContainerSortBy", name: "AwsEcrContainerSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    AwsEcsMetadataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEcsMetadataDetails", name: "AwsEcsMetadataDetails")
    AwsEksMetadataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEksMetadataDetails", name: "AwsEksMetadataDetails")
    AwsEksWorkloadInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsEksWorkloadInfo", name: "AwsEksWorkloadInfo")
    AwsEksWorkloadInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#AwsEksWorkloadInfoList", name: "AwsEksWorkloadInfoList", traits: {"smithy.api#length" => {"max" => 100}})
    AwsLambdaFunctionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#AwsLambdaFunctionDetails", name: "AwsLambdaFunctionDetails")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchAssociateCodeSecurityScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchAssociateCodeSecurityScanConfigurationRequest", name: "BatchAssociateCodeSecurityScanConfigurationRequest")
    BatchAssociateCodeSecurityScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchAssociateCodeSecurityScanConfigurationResponse", name: "BatchAssociateCodeSecurityScanConfigurationResponse")
    BatchDisassociateCodeSecurityScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchDisassociateCodeSecurityScanConfigurationRequest", name: "BatchDisassociateCodeSecurityScanConfigurationRequest")
    BatchDisassociateCodeSecurityScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchDisassociateCodeSecurityScanConfigurationResponse", name: "BatchDisassociateCodeSecurityScanConfigurationResponse")
    BatchGetAccountStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetAccountStatusInput", name: "BatchGetAccountStatusInput")
    BatchGetAccountStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetAccountStatusOutput", name: "BatchGetAccountStatusOutput")
    BatchGetCodeSnippetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetCodeSnippetRequest", name: "BatchGetCodeSnippetRequest")
    BatchGetCodeSnippetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetCodeSnippetResponse", name: "BatchGetCodeSnippetResponse")
    BatchGetFindingDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetFindingDetailsRequest", name: "BatchGetFindingDetailsRequest")
    BatchGetFindingDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetFindingDetailsResponse", name: "BatchGetFindingDetailsResponse")
    BatchGetFreeTrialInfoInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetFreeTrialInfoInput", name: "BatchGetFreeTrialInfoInput")
    BatchGetFreeTrialInfoOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetFreeTrialInfoOutput", name: "BatchGetFreeTrialInfoOutput")
    BatchGetMemberEc2DeepInspectionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetMemberEc2DeepInspectionStatusRequest", name: "BatchGetMemberEc2DeepInspectionStatusRequest")
    BatchGetMemberEc2DeepInspectionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchGetMemberEc2DeepInspectionStatusResponse", name: "BatchGetMemberEc2DeepInspectionStatusResponse")
    BatchUpdateMemberEc2DeepInspectionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchUpdateMemberEc2DeepInspectionStatusRequest", name: "BatchUpdateMemberEc2DeepInspectionStatusRequest")
    BatchUpdateMemberEc2DeepInspectionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#BatchUpdateMemberEc2DeepInspectionStatusResponse", name: "BatchUpdateMemberEc2DeepInspectionStatusResponse")
    BenchmarkProfile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#BenchmarkProfile", name: "BenchmarkProfile", traits: {"smithy.api#length" => {"max" => 128}})
    BenchmarkVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#BenchmarkVersion", name: "BenchmarkVersion", traits: {"smithy.api#length" => {"max" => 8}})
    CancelFindingsReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CancelFindingsReportInput", name: "CancelFindingsReportInput")
    CancelFindingsReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CancelFindingsReportOutput", name: "CancelFindingsReportOutput")
    CancelSbomExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CancelSbomExportRequest", name: "CancelSbomExportRequest")
    CancelSbomExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CancelSbomExportResponse", name: "CancelSbomExportResponse")
    CheckCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#CheckCount", name: "CheckCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 65536}})
    CheckIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CheckIdFilterList", name: "CheckIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisAccountIdList", name: "CisAccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#uniqueItems" => {}})
    CisCheckAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisCheckAggregation", name: "CisCheckAggregation")
    CisCheckAggregationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisCheckAggregationList", name: "CisCheckAggregationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CisDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisDateFilter", name: "CisDateFilter")
    CisFindingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CisFindingArn", name: "CisFindingArn", traits: {"smithy.api#pattern" => "^arn:aws(-gov|-cn)?:inspector2:[-.a-z0-9]{0,20}:\\d{12}:owner/\\d{12}/cis-finding/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    CisFindingArnFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisFindingArnFilterList", name: "CisFindingArnFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisFindingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisFindingStatus", name: "CisFindingStatus")
    CisFindingStatusComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisFindingStatusComparison", name: "CisFindingStatusComparison")
    CisFindingStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisFindingStatusFilter", name: "CisFindingStatusFilter")
    CisFindingStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisFindingStatusFilterList", name: "CisFindingStatusFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CisNumberFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisNumberFilter", name: "CisNumberFilter")
    CisNumberFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisNumberFilterList", name: "CisNumberFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CisOwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CisOwnerId", name: "CisOwnerId", traits: {"smithy.api#pattern" => "^\\d{12}|o-[a-z0-9]{10,32}$"})
    CisReportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisReportFormat", name: "CisReportFormat")
    CisReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisReportStatus", name: "CisReportStatus")
    CisResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisResultStatus", name: "CisResultStatus")
    CisResultStatusComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisResultStatusComparison", name: "CisResultStatusComparison")
    CisResultStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisResultStatusFilter", name: "CisResultStatusFilter")
    CisResultStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisResultStatusFilterList", name: "CisResultStatusFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisRuleDetails = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.inspector2#CisRuleDetails", name: "CisRuleDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    CisRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisRuleStatus", name: "CisRuleStatus")
    CisScan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScan", name: "CisScan")
    CisScanArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CisScanArn", name: "CisScanArn", traits: {"smithy.api#pattern" => "^arn:aws(-us-gov|-cn)?:inspector2:[-.a-z0-9]{0,20}:\\d{12}:owner/(\\d{12}|o-[a-z0-9]{10,32})/cis-scan/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    CisScanArnFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanArnFilterList", name: "CisScanArnFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScanConfiguration", name: "CisScanConfiguration")
    CisScanConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CisScanConfigurationArn", name: "CisScanConfigurationArn", traits: {"smithy.api#pattern" => "^arn:aws(-us-gov|-cn)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-[0-9]{1}:[0-9]{12}:owner/(o-[a-z0-9]+|[0-9]{12})/cis-configuration/[0-9a-fA-F-]+$"})
    CisScanConfigurationArnFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanConfigurationArnFilterList", name: "CisScanConfigurationArnFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisScanConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanConfigurationList", name: "CisScanConfigurationList", traits: {"smithy.api#length" => {"max" => 100}})
    CisScanConfigurationsSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisScanConfigurationsSortBy", name: "CisScanConfigurationsSortBy")
    CisScanDateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanDateFilterList", name: "CisScanDateFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CisScanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanList", name: "CisScanList", traits: {"smithy.api#length" => {"max" => 50}})
    CisScanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CisScanName", name: "CisScanName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    CisScanNameFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanNameFilterList", name: "CisScanNameFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisScanResultDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScanResultDetails", name: "CisScanResultDetails")
    CisScanResultDetailsFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScanResultDetailsFilterCriteria", name: "CisScanResultDetailsFilterCriteria")
    CisScanResultDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanResultDetailsList", name: "CisScanResultDetailsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CisScanResultDetailsSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisScanResultDetailsSortBy", name: "CisScanResultDetailsSortBy")
    CisScanResultsAggregatedByChecksFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScanResultsAggregatedByChecksFilterCriteria", name: "CisScanResultsAggregatedByChecksFilterCriteria")
    CisScanResultsAggregatedByChecksSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisScanResultsAggregatedByChecksSortBy", name: "CisScanResultsAggregatedByChecksSortBy")
    CisScanResultsAggregatedByTargetResourceFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScanResultsAggregatedByTargetResourceFilterCriteria", name: "CisScanResultsAggregatedByTargetResourceFilterCriteria")
    CisScanResultsAggregatedByTargetResourceSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisScanResultsAggregatedByTargetResourceSortBy", name: "CisScanResultsAggregatedByTargetResourceSortBy")
    CisScanResultsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#CisScanResultsMaxResults", name: "CisScanResultsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    CisScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisScanStatus", name: "CisScanStatus")
    CisScanStatusComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisScanStatusComparison", name: "CisScanStatusComparison")
    CisScanStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisScanStatusFilter", name: "CisScanStatusFilter")
    CisScanStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScanStatusFilterList", name: "CisScanStatusFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CisScheduledByFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisScheduledByFilterList", name: "CisScheduledByFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisSecurityLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisSecurityLevel", name: "CisSecurityLevel")
    CisSecurityLevelComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisSecurityLevelComparison", name: "CisSecurityLevelComparison")
    CisSecurityLevelFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisSecurityLevelFilter", name: "CisSecurityLevelFilter")
    CisSecurityLevelFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisSecurityLevelFilterList", name: "CisSecurityLevelFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisSessionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisSessionMessage", name: "CisSessionMessage")
    CisSessionMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisSessionMessages", name: "CisSessionMessages", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CisSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisSortOrder", name: "CisSortOrder")
    CisStringComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisStringComparison", name: "CisStringComparison")
    CisStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisStringFilter", name: "CisStringFilter")
    CisTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.inspector2#CisTagMap", name: "CisTagMap")
    CisTargetResourceAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisTargetResourceAggregation", name: "CisTargetResourceAggregation")
    CisTargetResourceAggregationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CisTargetResourceAggregationList", name: "CisTargetResourceAggregationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CisTargetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisTargetStatus", name: "CisTargetStatus")
    CisTargetStatusComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisTargetStatusComparison", name: "CisTargetStatusComparison")
    CisTargetStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisTargetStatusFilter", name: "CisTargetStatusFilter")
    CisTargetStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CisTargetStatusReason", name: "CisTargetStatusReason")
    CisTargetStatusReasonFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisTargetStatusReasonFilter", name: "CisTargetStatusReasonFilter")
    CisTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisTargets", name: "CisTargets")
    CisaAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CisaAction", name: "CisaAction", traits: {"smithy.api#length" => {"min" => 0}})
    CisaData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CisaData", name: "CisaData")
    CisaDateAdded = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#CisaDateAdded", name: "CisaDateAdded")
    CisaDateDue = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#CisaDateDue", name: "CisaDateDue")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ClusterDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ClusterDetails", name: "ClusterDetails")
    ClusterDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ClusterDetailsList", name: "ClusterDetailsList")
    ClusterForImageFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ClusterForImageFilterCriteria", name: "ClusterForImageFilterCriteria")
    ClusterInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ClusterInformation", name: "ClusterInformation")
    ClusterInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ClusterInformationList", name: "ClusterInformationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ClusterMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#ClusterMetadata", name: "ClusterMetadata")
    CodeFilePath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeFilePath", name: "CodeFilePath")
    CodeLine = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeLine", name: "CodeLine")
    CodeLineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CodeLineList", name: "CodeLineList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CodeRepositoryAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeRepositoryAggregation", name: "CodeRepositoryAggregation")
    CodeRepositoryAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeRepositoryAggregationResponse", name: "CodeRepositoryAggregationResponse")
    CodeRepositoryDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeRepositoryDetails", name: "CodeRepositoryDetails")
    CodeRepositoryIntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeRepositoryIntegrationArn", name: "CodeRepositoryIntegrationArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration\\/[a-f0-9-]{36}$"})
    CodeRepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeRepositoryMetadata", name: "CodeRepositoryMetadata")
    CodeRepositoryOnDemandScan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeRepositoryOnDemandScan", name: "CodeRepositoryOnDemandScan")
    CodeRepositoryProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeRepositoryProjectName", name: "CodeRepositoryProjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CodeRepositoryProviderType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeRepositoryProviderType", name: "CodeRepositoryProviderType", traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITLAB_SELF_MANAGED", "name" => "GITLAB_SELF_MANAGED"}]})
    CodeRepositorySortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeRepositorySortBy", name: "CodeRepositorySortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    CodeScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#CodeScanStatus", name: "CodeScanStatus")
    CodeSecurityClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeSecurityClientToken", name: "CodeSecurityClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    CodeSecurityIntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeSecurityIntegrationArn", name: "CodeSecurityIntegrationArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration/[a-f0-9-]{36}$"})
    CodeSecurityIntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeSecurityIntegrationSummary", name: "CodeSecurityIntegrationSummary")
    CodeSecurityResource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#CodeSecurityResource", name: "CodeSecurityResource")
    CodeSecurityScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeSecurityScanConfiguration", name: "CodeSecurityScanConfiguration")
    CodeSecurityScanConfigurationAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CodeSecurityScanConfigurationAssociationSummaries", name: "CodeSecurityScanConfigurationAssociationSummaries")
    CodeSecurityScanConfigurationAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeSecurityScanConfigurationAssociationSummary", name: "CodeSecurityScanConfigurationAssociationSummary")
    CodeSecurityScanConfigurationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CodeSecurityScanConfigurationSummaries", name: "CodeSecurityScanConfigurationSummaries")
    CodeSecurityScanConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeSecurityScanConfigurationSummary", name: "CodeSecurityScanConfigurationSummary")
    CodeSecurityUuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeSecurityUuid", name: "CodeSecurityUuid", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    CodeSnippetError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeSnippetError", name: "CodeSnippetError")
    CodeSnippetErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CodeSnippetErrorCode", name: "CodeSnippetErrorCode", traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "CODE_SNIPPET_NOT_FOUND", "name" => "CODE_SNIPPET_NOT_FOUND"}, {"value" => "INVALID_INPUT", "name" => "INVALID_INPUT"}]})
    CodeSnippetErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CodeSnippetErrorList", name: "CodeSnippetErrorList")
    CodeSnippetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeSnippetResult", name: "CodeSnippetResult")
    CodeSnippetResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CodeSnippetResultList", name: "CodeSnippetResultList")
    CodeVulnerabilityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CodeVulnerabilityDetails", name: "CodeVulnerabilityDetails")
    CommitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CommitId", name: "CommitId", traits: {"smithy.api#length" => {"max" => 40}, "smithy.api#pattern" => "^([a-f0-9]{40})$"})
    Component = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Component", name: "Component")
    ComponentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ComponentArn", name: "ComponentArn")
    ComponentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ComponentType", name: "ComponentType")
    ComputePlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ComputePlatform", name: "ComputePlatform")
    ConfigurationLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#ConfigurationLevel", name: "ConfigurationLevel")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousIntegrationScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ContinuousIntegrationScanConfiguration", name: "ContinuousIntegrationScanConfiguration")
    ContinuousIntegrationScanEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#ContinuousIntegrationScanEvent", name: "ContinuousIntegrationScanEvent")
    ContinuousIntegrationScanSupportedEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ContinuousIntegrationScanSupportedEvents", name: "ContinuousIntegrationScanSupportedEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Counts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Counts", name: "Counts")
    CountsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CountsList", name: "CountsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CoverageDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CoverageDateFilter", name: "CoverageDateFilter")
    CoverageDateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CoverageDateFilterList", name: "CoverageDateFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CoverageFilterCriteria", name: "CoverageFilterCriteria")
    CoverageMapComparison = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CoverageMapComparison", name: "CoverageMapComparison", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    CoverageMapFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CoverageMapFilter", name: "CoverageMapFilter")
    CoverageMapFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CoverageMapFilterList", name: "CoverageMapFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageNumberFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CoverageNumberFilter", name: "CoverageNumberFilter")
    CoverageNumberFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CoverageNumberFilterList", name: "CoverageNumberFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CoverageResourceType", name: "CoverageResourceType", traits: {"smithy.api#enum" => [{"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER_IMAGE", "name" => "AWS_ECR_CONTAINER_IMAGE"}, {"value" => "AWS_ECR_REPOSITORY", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    CoverageStringComparison = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CoverageStringComparison", name: "CoverageStringComparison", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}]})
    CoverageStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CoverageStringFilter", name: "CoverageStringFilter")
    CoverageStringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CoverageStringFilterList", name: "CoverageStringFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageStringInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CoverageStringInput", name: "CoverageStringInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    CoveredResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CoveredResource", name: "CoveredResource")
    CoveredResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CoveredResources", name: "CoveredResources")
    CreateCisScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCisScanConfigurationRequest", name: "CreateCisScanConfigurationRequest")
    CreateCisScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCisScanConfigurationResponse", name: "CreateCisScanConfigurationResponse")
    CreateCisTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCisTargets", name: "CreateCisTargets")
    CreateCodeSecurityIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCodeSecurityIntegrationRequest", name: "CreateCodeSecurityIntegrationRequest")
    CreateCodeSecurityIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCodeSecurityIntegrationResponse", name: "CreateCodeSecurityIntegrationResponse")
    CreateCodeSecurityScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCodeSecurityScanConfigurationRequest", name: "CreateCodeSecurityScanConfigurationRequest")
    CreateCodeSecurityScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateCodeSecurityScanConfigurationResponse", name: "CreateCodeSecurityScanConfigurationResponse")
    CreateFilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateFilterInput", name: "CreateFilterInput")
    CreateFilterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateFilterOutput", name: "CreateFilterOutput")
    CreateFindingsReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateFindingsReportInput", name: "CreateFindingsReportInput")
    CreateFindingsReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateFindingsReportOutput", name: "CreateFindingsReportOutput")
    CreateGitLabSelfManagedIntegrationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateGitLabSelfManagedIntegrationDetail", name: "CreateGitLabSelfManagedIntegrationDetail")
    CreateIntegrationDetail = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#CreateIntegrationDetail", name: "CreateIntegrationDetail")
    CreateSbomExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateSbomExportRequest", name: "CreateSbomExportRequest")
    CreateSbomExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CreateSbomExportResponse", name: "CreateSbomExportResponse")
    Currency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Currency", name: "Currency", traits: {"smithy.api#enum" => [{"name" => "USD", "value" => "USD"}]})
    Cvss2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Cvss2", name: "Cvss2")
    Cvss3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Cvss3", name: "Cvss3")
    Cvss4 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Cvss4", name: "Cvss4")
    CvssBaseScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.inspector2#CvssBaseScore", name: "CvssBaseScore", traits: {"smithy.api#default" => 0})
    CvssScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CvssScore", name: "CvssScore")
    CvssScoreAdjustment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CvssScoreAdjustment", name: "CvssScoreAdjustment")
    CvssScoreAdjustmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CvssScoreAdjustmentList", name: "CvssScoreAdjustmentList")
    CvssScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#CvssScoreDetails", name: "CvssScoreDetails")
    CvssScoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CvssScoreList", name: "CvssScoreList")
    CvssScoringVector = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#CvssScoringVector", name: "CvssScoringVector", traits: {"smithy.api#length" => {"min" => 0}})
    Cwe = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Cwe", name: "Cwe", traits: {"smithy.api#length" => {"min" => 0}})
    CweList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#CweList", name: "CweList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Cwes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#Cwes", name: "Cwes", traits: {"smithy.api#length" => {"min" => 0}})
    DailySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DailySchedule", name: "DailySchedule")
    DateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DateFilter", name: "DateFilter")
    DateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DateFilterList", name: "DateFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DateTimeTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#DateTimeTimestamp", name: "DateTimeTimestamp")
    Day = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#Day", name: "Day")
    DaysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DaysList", name: "DaysList", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#uniqueItems" => {}})
    DelegatedAdmin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DelegatedAdmin", name: "DelegatedAdmin")
    DelegatedAdminAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DelegatedAdminAccount", name: "DelegatedAdminAccount")
    DelegatedAdminAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DelegatedAdminAccountList", name: "DelegatedAdminAccountList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    DelegatedAdminStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#DelegatedAdminStatus", name: "DelegatedAdminStatus", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLE_IN_PROGRESS", "name" => "DISABLE_IN_PROGRESS"}]})
    DeleteCisScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteCisScanConfigurationRequest", name: "DeleteCisScanConfigurationRequest")
    DeleteCisScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteCisScanConfigurationResponse", name: "DeleteCisScanConfigurationResponse")
    DeleteCodeSecurityIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteCodeSecurityIntegrationRequest", name: "DeleteCodeSecurityIntegrationRequest")
    DeleteCodeSecurityIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteCodeSecurityIntegrationResponse", name: "DeleteCodeSecurityIntegrationResponse")
    DeleteCodeSecurityScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteCodeSecurityScanConfigurationRequest", name: "DeleteCodeSecurityScanConfigurationRequest")
    DeleteCodeSecurityScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteCodeSecurityScanConfigurationResponse", name: "DeleteCodeSecurityScanConfigurationResponse")
    DeleteFilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteFilterInput", name: "DeleteFilterInput")
    DeleteFilterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DeleteFilterOutput", name: "DeleteFilterOutput")
    DescribeOrganizationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DescribeOrganizationConfigurationInput", name: "DescribeOrganizationConfigurationInput")
    DescribeOrganizationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DescribeOrganizationConfigurationOutput", name: "DescribeOrganizationConfigurationOutput")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Destination", name: "Destination")
    DetectionPlatforms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DetectionPlatforms", name: "DetectionPlatforms", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DetectorTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DetectorTagList", name: "DetectorTagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DisableDelegatedAdminAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisableDelegatedAdminAccountInput", name: "DisableDelegatedAdminAccountInput")
    DisableDelegatedAdminAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisableDelegatedAdminAccountOutput", name: "DisableDelegatedAdminAccountOutput")
    DisableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisableInput", name: "DisableInput")
    DisableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisableOutput", name: "DisableOutput")
    DisableResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DisableResourceTypeList", name: "DisableResourceTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    DisassociateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisassociateConfigurationRequest", name: "DisassociateConfigurationRequest")
    DisassociateConfigurationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#DisassociateConfigurationRequestList", name: "DisassociateConfigurationRequestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DisassociateMemberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisassociateMemberInput", name: "DisassociateMemberInput")
    DisassociateMemberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#DisassociateMemberOutput", name: "DisassociateMemberOutput")
    Ec2Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Ec2Configuration", name: "Ec2Configuration")
    Ec2ConfigurationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Ec2ConfigurationState", name: "Ec2ConfigurationState")
    Ec2DeepInspectionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Ec2DeepInspectionStatus", name: "Ec2DeepInspectionStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVATED", "name" => "ACTIVATED"}, {"value" => "DEACTIVATED", "name" => "DEACTIVATED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    Ec2InstanceAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Ec2InstanceAggregation", name: "Ec2InstanceAggregation")
    Ec2InstanceAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Ec2InstanceAggregationResponse", name: "Ec2InstanceAggregationResponse")
    Ec2InstanceSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Ec2InstanceSortBy", name: "Ec2InstanceSortBy", traits: {"smithy.api#enum" => [{"value" => "NETWORK_FINDINGS", "name" => "NETWORK_FINDINGS"}, {"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    Ec2Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Ec2Metadata", name: "Ec2Metadata")
    Ec2Platform = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Ec2Platform", name: "Ec2Platform", traits: {"smithy.api#enum" => [{"value" => "WINDOWS", "name" => "WINDOWS"}, {"value" => "LINUX", "name" => "LINUX"}, {"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "MACOS", "name" => "MACOS"}]})
    Ec2ScanMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Ec2ScanMode", name: "Ec2ScanMode", traits: {"smithy.api#enum" => [{"value" => "EC2_SSM_AGENT_BASED", "name" => "EC2_SSM_AGENT_BASED"}, {"value" => "EC2_HYBRID", "name" => "EC2_HYBRID"}]})
    Ec2ScanModeState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Ec2ScanModeState", name: "Ec2ScanModeState")
    Ec2ScanModeStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Ec2ScanModeStatus", name: "Ec2ScanModeStatus", traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "PENDING", "name" => "PENDING"}]})
    EcrConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EcrConfiguration", name: "EcrConfiguration")
    EcrConfigurationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EcrConfigurationState", name: "EcrConfigurationState")
    EcrContainerImageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EcrContainerImageMetadata", name: "EcrContainerImageMetadata")
    EcrPullDateRescanDuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EcrPullDateRescanDuration", name: "EcrPullDateRescanDuration", traits: {"smithy.api#enum" => [{"value" => "DAYS_14", "name" => "DAYS_14"}, {"value" => "DAYS_30", "name" => "DAYS_30"}, {"value" => "DAYS_60", "name" => "DAYS_60"}, {"value" => "DAYS_90", "name" => "DAYS_90"}, {"value" => "DAYS_180", "name" => "DAYS_180"}]})
    EcrPullDateRescanMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EcrPullDateRescanMode", name: "EcrPullDateRescanMode", traits: {"smithy.api#enum" => [{"value" => "LAST_PULL_DATE", "name" => "LAST_PULL_DATE"}, {"value" => "LAST_IN_USE_AT", "name" => "LAST_IN_USE_AT"}]})
    EcrRepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EcrRepositoryMetadata", name: "EcrRepositoryMetadata")
    EcrRescanDuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EcrRescanDuration", name: "EcrRescanDuration", traits: {"smithy.api#enum" => [{"value" => "LIFETIME", "name" => "LIFETIME"}, {"value" => "DAYS_30", "name" => "DAYS_30"}, {"value" => "DAYS_180", "name" => "DAYS_180"}, {"value" => "DAYS_14", "name" => "DAYS_14"}, {"value" => "DAYS_60", "name" => "DAYS_60"}, {"value" => "DAYS_90", "name" => "DAYS_90"}]})
    EcrRescanDurationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EcrRescanDurationState", name: "EcrRescanDurationState")
    EcrRescanDurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EcrRescanDurationStatus", name: "EcrRescanDurationStatus", traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    EcrScanFrequency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EcrScanFrequency", name: "EcrScanFrequency", traits: {"smithy.api#enum" => [{"value" => "MANUAL", "name" => "MANUAL"}, {"value" => "SCAN_ON_PUSH", "name" => "SCAN_ON_PUSH"}, {"value" => "CONTINUOUS_SCAN", "name" => "CONTINUOUS_SCAN"}]})
    EnableDelegatedAdminAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EnableDelegatedAdminAccountInput", name: "EnableDelegatedAdminAccountInput")
    EnableDelegatedAdminAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EnableDelegatedAdminAccountOutput", name: "EnableDelegatedAdminAccountOutput")
    EnableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EnableInput", name: "EnableInput")
    EnableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EnableOutput", name: "EnableOutput")
    EnableResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#EnableResourceTypeList", name: "EnableResourceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Epss = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Epss", name: "Epss")
    EpssDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#EpssDetails", name: "EpssDetails")
    EpssScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.inspector2#EpssScore", name: "EpssScore", traits: {"smithy.api#default" => 0})
    EpssScoreValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.inspector2#EpssScoreValue", name: "EpssScoreValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ErrorCode", name: "ErrorCode", traits: {"smithy.api#enum" => [{"value" => "ALREADY_ENABLED", "name" => "ALREADY_ENABLED"}, {"value" => "ENABLE_IN_PROGRESS", "name" => "ENABLE_IN_PROGRESS"}, {"value" => "DISABLE_IN_PROGRESS", "name" => "DISABLE_IN_PROGRESS"}, {"value" => "SUSPEND_IN_PROGRESS", "name" => "SUSPEND_IN_PROGRESS"}, {"value" => "RESOURCE_NOT_FOUND", "name" => "RESOURCE_NOT_FOUND"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "SSM_UNAVAILABLE", "name" => "SSM_UNAVAILABLE"}, {"value" => "SSM_THROTTLED", "name" => "SSM_THROTTLED"}, {"value" => "EVENTBRIDGE_UNAVAILABLE", "name" => "EVENTBRIDGE_UNAVAILABLE"}, {"value" => "EVENTBRIDGE_THROTTLED", "name" => "EVENTBRIDGE_THROTTLED"}, {"value" => "RESOURCE_SCAN_NOT_DISABLED", "name" => "RESOURCE_SCAN_NOT_DISABLED"}, {"value" => "DISASSOCIATE_ALL_MEMBERS", "name" => "DISASSOCIATE_ALL_MEMBERS"}, {"value" => "ACCOUNT_IS_ISOLATED", "name" => "ACCOUNT_IS_ISOLATED"}, {"value" => "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "name" => "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED"}, {"value" => "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED", "name" => "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"}]})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ErrorMessage", name: "ErrorMessage")
    Evidence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Evidence", name: "Evidence")
    EvidenceDetail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EvidenceDetail", name: "EvidenceDetail", traits: {"smithy.api#length" => {"min" => 0}})
    EvidenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#EvidenceList", name: "EvidenceList")
    EvidenceRule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EvidenceRule", name: "EvidenceRule", traits: {"smithy.api#length" => {"min" => 0}})
    EvidenceSeverity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#EvidenceSeverity", name: "EvidenceSeverity", traits: {"smithy.api#length" => {"min" => 0}})
    ExecutionRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ExecutionRoleArn", name: "ExecutionRoleArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    ExploitAvailable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ExploitAvailable", name: "ExploitAvailable", traits: {"smithy.api#enum" => [{"value" => "YES", "name" => "YES"}, {"value" => "NO", "name" => "NO"}]})
    ExploitObserved = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ExploitObserved", name: "ExploitObserved")
    ExploitabilityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ExploitabilityDetails", name: "ExploitabilityDetails")
    ExternalReportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ExternalReportStatus", name: "ExternalReportStatus", traits: {"smithy.api#enum" => [{"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    FailedAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FailedAccount", name: "FailedAccount")
    FailedAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FailedAccountList", name: "FailedAccountList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FailedAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FailedAssociationResult", name: "FailedAssociationResult")
    FailedAssociationResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FailedAssociationResultList", name: "FailedAssociationResultList")
    FailedMemberAccountEc2DeepInspectionStatusState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FailedMemberAccountEc2DeepInspectionStatusState", name: "FailedMemberAccountEc2DeepInspectionStatusState")
    FailedMemberAccountEc2DeepInspectionStatusStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FailedMemberAccountEc2DeepInspectionStatusStateList", name: "FailedMemberAccountEc2DeepInspectionStatusStateList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FilePath", name: "FilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Filter", name: "Filter")
    FilterAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FilterAction", name: "FilterAction", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "SUPPRESS", "name" => "SUPPRESS"}]})
    FilterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FilterArn", name: "FilterArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FilterArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FilterArnList", name: "FilterArnList")
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FilterCriteria", name: "FilterCriteria")
    FilterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FilterDescription", name: "FilterDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FilterList", name: "FilterList")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FilterReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FilterReason", name: "FilterReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Finding", name: "Finding")
    FindingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingArn", name: "FindingArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:finding/[a-f0-9]{32}$"})
    FindingArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FindingArnList", name: "FindingArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FindingArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FindingArns", name: "FindingArns")
    FindingDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingDescription", name: "FindingDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FindingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FindingDetail", name: "FindingDetail")
    FindingDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FindingDetails", name: "FindingDetails", traits: {"smithy.api#length" => {"min" => 0}})
    FindingDetailsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FindingDetailsError", name: "FindingDetailsError")
    FindingDetailsErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingDetailsErrorCode", name: "FindingDetailsErrorCode", traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "FINDING_DETAILS_NOT_FOUND", "name" => "FINDING_DETAILS_NOT_FOUND"}, {"value" => "INVALID_INPUT", "name" => "INVALID_INPUT"}]})
    FindingDetailsErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FindingDetailsErrorList", name: "FindingDetailsErrorList")
    FindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FindingList", name: "FindingList", traits: {"smithy.api#length" => {"max" => 25}})
    FindingStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingStatus", name: "FindingStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "SUPPRESSED", "name" => "SUPPRESSED"}, {"value" => "CLOSED", "name" => "CLOSED"}]})
    FindingTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingTitle", name: "FindingTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FindingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingType", name: "FindingType", traits: {"smithy.api#enum" => [{"value" => "NETWORK_REACHABILITY", "name" => "NETWORK_REACHABILITY"}, {"value" => "PACKAGE_VULNERABILITY", "name" => "PACKAGE_VULNERABILITY"}, {"value" => "CODE_VULNERABILITY", "name" => "CODE_VULNERABILITY"}]})
    FindingTypeAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FindingTypeAggregation", name: "FindingTypeAggregation")
    FindingTypeAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FindingTypeAggregationResponse", name: "FindingTypeAggregationResponse")
    FindingTypeSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FindingTypeSortBy", name: "FindingTypeSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    FirstSeen = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#FirstSeen", name: "FirstSeen")
    FixAvailable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FixAvailable", name: "FixAvailable", traits: {"smithy.api#enum" => [{"value" => "YES", "name" => "YES"}, {"value" => "NO", "name" => "NO"}, {"value" => "PARTIAL", "name" => "PARTIAL"}]})
    FreeTrialAccountInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FreeTrialAccountInfo", name: "FreeTrialAccountInfo")
    FreeTrialAccountInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FreeTrialAccountInfoList", name: "FreeTrialAccountInfoList")
    FreeTrialInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FreeTrialInfo", name: "FreeTrialInfo")
    FreeTrialInfoError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#FreeTrialInfoError", name: "FreeTrialInfoError")
    FreeTrialInfoErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FreeTrialInfoErrorCode", name: "FreeTrialInfoErrorCode", traits: {"smithy.api#enum" => [{"name" => "ACCESS_DENIED", "value" => "ACCESS_DENIED"}, {"name" => "INTERNAL_ERROR", "value" => "INTERNAL_ERROR"}]})
    FreeTrialInfoErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FreeTrialInfoErrorList", name: "FreeTrialInfoErrorList")
    FreeTrialInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#FreeTrialInfoList", name: "FreeTrialInfoList")
    FreeTrialStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FreeTrialStatus", name: "FreeTrialStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "INACTIVE", "value" => "INACTIVE"}]})
    FreeTrialType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FreeTrialType", name: "FreeTrialType", traits: {"smithy.api#enum" => [{"name" => "EC2", "value" => "EC2"}, {"name" => "ECR", "value" => "ECR"}, {"name" => "LAMBDA", "value" => "LAMBDA"}, {"name" => "LAMBDA_CODE", "value" => "LAMBDA_CODE"}, {"name" => "CODE_REPOSITORY", "value" => "CODE_REPOSITORY"}]})
    FrequencyExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FrequencyExpression", name: "FrequencyExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#FunctionName", name: "FunctionName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    GetCisScanReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCisScanReportRequest", name: "GetCisScanReportRequest")
    GetCisScanReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCisScanReportResponse", name: "GetCisScanReportResponse")
    GetCisScanResultDetailsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#GetCisScanResultDetailsMaxResults", name: "GetCisScanResultDetailsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    GetCisScanResultDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCisScanResultDetailsRequest", name: "GetCisScanResultDetailsRequest")
    GetCisScanResultDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCisScanResultDetailsResponse", name: "GetCisScanResultDetailsResponse")
    GetClustersForImageNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#GetClustersForImageNextToken", name: "GetClustersForImageNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    GetClustersForImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetClustersForImageRequest", name: "GetClustersForImageRequest")
    GetClustersForImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetClustersForImageResponse", name: "GetClustersForImageResponse")
    GetCodeSecurityIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCodeSecurityIntegrationRequest", name: "GetCodeSecurityIntegrationRequest")
    GetCodeSecurityIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCodeSecurityIntegrationResponse", name: "GetCodeSecurityIntegrationResponse")
    GetCodeSecurityScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCodeSecurityScanConfigurationRequest", name: "GetCodeSecurityScanConfigurationRequest")
    GetCodeSecurityScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCodeSecurityScanConfigurationResponse", name: "GetCodeSecurityScanConfigurationResponse")
    GetCodeSecurityScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCodeSecurityScanRequest", name: "GetCodeSecurityScanRequest")
    GetCodeSecurityScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetCodeSecurityScanResponse", name: "GetCodeSecurityScanResponse")
    GetConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetConfigurationInput", name: "GetConfigurationInput")
    GetConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetConfigurationOutput", name: "GetConfigurationOutput")
    GetDelegatedAdminAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetDelegatedAdminAccountInput", name: "GetDelegatedAdminAccountInput")
    GetDelegatedAdminAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetDelegatedAdminAccountOutput", name: "GetDelegatedAdminAccountOutput")
    GetEc2DeepInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetEc2DeepInspectionConfigurationRequest", name: "GetEc2DeepInspectionConfigurationRequest")
    GetEc2DeepInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetEc2DeepInspectionConfigurationResponse", name: "GetEc2DeepInspectionConfigurationResponse")
    GetEncryptionKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetEncryptionKeyRequest", name: "GetEncryptionKeyRequest")
    GetEncryptionKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetEncryptionKeyResponse", name: "GetEncryptionKeyResponse")
    GetFindingsReportStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetFindingsReportStatusInput", name: "GetFindingsReportStatusInput")
    GetFindingsReportStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetFindingsReportStatusOutput", name: "GetFindingsReportStatusOutput")
    GetMemberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetMemberInput", name: "GetMemberInput")
    GetMemberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetMemberOutput", name: "GetMemberOutput")
    GetSbomExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetSbomExportRequest", name: "GetSbomExportRequest")
    GetSbomExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#GetSbomExportResponse", name: "GetSbomExportResponse")
    GitHubAuthCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#GitHubAuthCode", name: "GitHubAuthCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    GitHubInstallationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#GitHubInstallationId", name: "GitHubInstallationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GitLabAccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#GitLabAccessToken", name: "GitLabAccessToken", traits: {"smithy.api#sensitive" => {}})
    GitLabAuthCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#GitLabAuthCode", name: "GitLabAuthCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    GroupKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#GroupKey", name: "GroupKey", traits: {"smithy.api#enum" => [{"value" => "SCAN_STATUS_CODE", "name" => "SCAN_STATUS_CODE"}, {"value" => "SCAN_STATUS_REASON", "name" => "SCAN_STATUS_REASON"}, {"value" => "ACCOUNT_ID", "name" => "ACCOUNT_ID"}, {"value" => "RESOURCE_TYPE", "name" => "RESOURCE_TYPE"}, {"value" => "ECR_REPOSITORY_NAME", "name" => "ECR_REPOSITORY_NAME"}]})
    ImageHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ImageHash", name: "ImageHash", traits: {"smithy.api#length" => {"min" => 71, "max" => 71}, "smithy.api#pattern" => "^sha256:[a-z0-9]{64}$"})
    ImageLayerAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ImageLayerAggregation", name: "ImageLayerAggregation")
    ImageLayerAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ImageLayerAggregationResponse", name: "ImageLayerAggregationResponse")
    ImageLayerSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ImageLayerSortBy", name: "ImageLayerSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    ImageTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ImageTagList", name: "ImageTagList")
    InspectorScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#InspectorScoreDetails", name: "InspectorScoreDetails")
    InstanceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#InstanceUrl", name: "InstanceUrl", traits: {"smithy.api#pattern" => "^https://[-a-zA-Z0-9()@:%_+.~#?&//=]{1,1024}$", "smithy.api#sensitive" => {}})
    IntegrationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#IntegrationName", name: "IntegrationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-zA-Z0-9-_$:.]*$"})
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#IntegrationStatus", name: "IntegrationStatus")
    IntegrationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#IntegrationSummaries", name: "IntegrationSummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#uniqueItems" => {}})
    IntegrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#IntegrationType", name: "IntegrationType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpV4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#IpV4Address", name: "IpV4Address", traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"})
    IpV4AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#IpV4AddressList", name: "IpV4AddressList")
    IpV6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#IpV6Address", name: "IpV6Address", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}})
    IpV6AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#IpV6AddressList", name: "IpV6AddressList")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#pattern" => "^arn:aws(-(us-gov|cn))?:kms:([a-z0-9][-.a-z0-9]{0,62})?:[0-9]{12}?:key/(([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})|(mrk-[0-9a-zA-Z]{32}))$"})
    LambdaFunctionAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#LambdaFunctionAggregation", name: "LambdaFunctionAggregation")
    LambdaFunctionAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#LambdaFunctionAggregationResponse", name: "LambdaFunctionAggregationResponse")
    LambdaFunctionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#LambdaFunctionMetadata", name: "LambdaFunctionMetadata")
    LambdaFunctionSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#LambdaFunctionSortBy", name: "LambdaFunctionSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    LambdaLayerAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#LambdaLayerAggregation", name: "LambdaLayerAggregation")
    LambdaLayerAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#LambdaLayerAggregationResponse", name: "LambdaLayerAggregationResponse")
    LambdaLayerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#LambdaLayerArn", name: "LambdaLayerArn", traits: {"smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+$"})
    LambdaLayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#LambdaLayerList", name: "LambdaLayerList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LambdaLayerSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#LambdaLayerSortBy", name: "LambdaLayerSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    LambdaVpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#LambdaVpcConfig", name: "LambdaVpcConfig")
    LastSeen = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#LastSeen", name: "LastSeen")
    LayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#LayerList", name: "LayerList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ListAccountPermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListAccountPermissionsInput", name: "ListAccountPermissionsInput")
    ListAccountPermissionsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListAccountPermissionsMaxResults", name: "ListAccountPermissionsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}})
    ListAccountPermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListAccountPermissionsOutput", name: "ListAccountPermissionsOutput")
    ListCisScanConfigurationsFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanConfigurationsFilterCriteria", name: "ListCisScanConfigurationsFilterCriteria")
    ListCisScanConfigurationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListCisScanConfigurationsMaxResults", name: "ListCisScanConfigurationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCisScanConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanConfigurationsRequest", name: "ListCisScanConfigurationsRequest")
    ListCisScanConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanConfigurationsResponse", name: "ListCisScanConfigurationsResponse")
    ListCisScanResultsAggregatedByChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanResultsAggregatedByChecksRequest", name: "ListCisScanResultsAggregatedByChecksRequest")
    ListCisScanResultsAggregatedByChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanResultsAggregatedByChecksResponse", name: "ListCisScanResultsAggregatedByChecksResponse")
    ListCisScanResultsAggregatedByTargetResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanResultsAggregatedByTargetResourceRequest", name: "ListCisScanResultsAggregatedByTargetResourceRequest")
    ListCisScanResultsAggregatedByTargetResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScanResultsAggregatedByTargetResourceResponse", name: "ListCisScanResultsAggregatedByTargetResourceResponse")
    ListCisScansDetailLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#ListCisScansDetailLevel", name: "ListCisScansDetailLevel")
    ListCisScansFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScansFilterCriteria", name: "ListCisScansFilterCriteria")
    ListCisScansMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListCisScansMaxResults", name: "ListCisScansMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCisScansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScansRequest", name: "ListCisScansRequest")
    ListCisScansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCisScansResponse", name: "ListCisScansResponse")
    ListCisScansSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#ListCisScansSortBy", name: "ListCisScansSortBy")
    ListCodeSecurityIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCodeSecurityIntegrationsRequest", name: "ListCodeSecurityIntegrationsRequest")
    ListCodeSecurityIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCodeSecurityIntegrationsResponse", name: "ListCodeSecurityIntegrationsResponse")
    ListCodeSecurityScanConfigurationAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCodeSecurityScanConfigurationAssociationsRequest", name: "ListCodeSecurityScanConfigurationAssociationsRequest")
    ListCodeSecurityScanConfigurationAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCodeSecurityScanConfigurationAssociationsResponse", name: "ListCodeSecurityScanConfigurationAssociationsResponse")
    ListCodeSecurityScanConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCodeSecurityScanConfigurationsRequest", name: "ListCodeSecurityScanConfigurationsRequest")
    ListCodeSecurityScanConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCodeSecurityScanConfigurationsResponse", name: "ListCodeSecurityScanConfigurationsResponse")
    ListCoverageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCoverageInput", name: "ListCoverageInput")
    ListCoverageMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListCoverageMaxResults", name: "ListCoverageMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListCoverageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCoverageOutput", name: "ListCoverageOutput")
    ListCoverageStatisticsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCoverageStatisticsInput", name: "ListCoverageStatisticsInput")
    ListCoverageStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListCoverageStatisticsOutput", name: "ListCoverageStatisticsOutput")
    ListDelegatedAdminAccountsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListDelegatedAdminAccountsInput", name: "ListDelegatedAdminAccountsInput")
    ListDelegatedAdminAccountsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListDelegatedAdminAccountsOutput", name: "ListDelegatedAdminAccountsOutput")
    ListDelegatedAdminMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListDelegatedAdminMaxResults", name: "ListDelegatedAdminMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListFilterMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListFilterMaxResults", name: "ListFilterMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFiltersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListFiltersInput", name: "ListFiltersInput")
    ListFiltersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListFiltersOutput", name: "ListFiltersOutput")
    ListFindingAggregationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListFindingAggregationsInput", name: "ListFindingAggregationsInput")
    ListFindingAggregationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListFindingAggregationsMaxResults", name: "ListFindingAggregationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFindingAggregationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListFindingAggregationsOutput", name: "ListFindingAggregationsOutput")
    ListFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListFindingsInput", name: "ListFindingsInput")
    ListFindingsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListFindingsMaxResults", name: "ListFindingsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListFindingsOutput", name: "ListFindingsOutput")
    ListMembersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListMembersInput", name: "ListMembersInput")
    ListMembersMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListMembersMaxResults", name: "ListMembersMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListMembersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListMembersOutput", name: "ListMembersOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListUsageTotalsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListUsageTotalsInput", name: "ListUsageTotalsInput")
    ListUsageTotalsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#ListUsageTotalsMaxResults", name: "ListUsageTotalsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListUsageTotalsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ListUsageTotalsNextToken", name: "ListUsageTotalsNextToken", traits: {"smithy.api#length" => {"min" => 1}})
    ListUsageTotalsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ListUsageTotalsOutput", name: "ListUsageTotalsOutput")
    MapComparison = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#MapComparison", name: "MapComparison", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    MapFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#MapFilter", name: "MapFilter")
    MapFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#MapFilterList", name: "MapFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#MapKey", name: "MapKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#MapValue", name: "MapValue", traits: {"smithy.api#length" => {"max" => 256}})
    Member = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Member", name: "Member")
    MemberAccountEc2DeepInspectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatus", name: "MemberAccountEc2DeepInspectionStatus")
    MemberAccountEc2DeepInspectionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatusList", name: "MemberAccountEc2DeepInspectionStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MemberAccountEc2DeepInspectionStatusState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatusState", name: "MemberAccountEc2DeepInspectionStatusState")
    MemberAccountEc2DeepInspectionStatusStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatusStateList", name: "MemberAccountEc2DeepInspectionStatusStateList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#MemberList", name: "MemberList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MeteringAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#MeteringAccountId", name: "MeteringAccountId", traits: {"smithy.api#pattern" => "[0-9]{12}"})
    MeteringAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#MeteringAccountIdList", name: "MeteringAccountIdList")
    MonthlyCostEstimate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.inspector2#MonthlyCostEstimate", name: "MonthlyCostEstimate", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MonthlySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#MonthlySchedule", name: "MonthlySchedule")
    NetworkPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#NetworkPath", name: "NetworkPath")
    NetworkProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#NetworkProtocol", name: "NetworkProtocol", traits: {"smithy.api#enum" => [{"value" => "TCP", "name" => "TCP"}, {"value" => "UDP", "name" => "UDP"}]})
    NetworkReachabilityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#NetworkReachabilityDetails", name: "NetworkReachabilityDetails")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"max" => 1000000}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    NonEmptyStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#NonEmptyStringList", name: "NonEmptyStringList")
    NumberFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#NumberFilter", name: "NumberFilter")
    NumberFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#NumberFilterList", name: "NumberFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OneAccountIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#OneAccountIdFilterList", name: "OneAccountIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    OneTimeSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#OneTimeSchedule", name: "OneTimeSchedule")
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Operation", name: "Operation", traits: {"smithy.api#enum" => [{"value" => "ENABLE_SCANNING", "name" => "ENABLE_SCANNING"}, {"value" => "DISABLE_SCANNING", "name" => "DISABLE_SCANNING"}, {"value" => "ENABLE_REPOSITORY", "name" => "ENABLE_REPOSITORY"}, {"value" => "DISABLE_REPOSITORY", "name" => "DISABLE_REPOSITORY"}]})
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#OwnerId", name: "OwnerId", traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "(^\\d{12}$)|(^o-[a-z0-9]{10,32}$)"})
    PackageAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PackageAggregation", name: "PackageAggregation")
    PackageAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PackageAggregationResponse", name: "PackageAggregationResponse")
    PackageArchitecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageArchitecture", name: "PackageArchitecture", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PackageEpoch = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#PackageEpoch", name: "PackageEpoch", traits: {"smithy.api#default" => 0})
    PackageFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PackageFilter", name: "PackageFilter")
    PackageFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#PackageFilterList", name: "PackageFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PackageManager = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageManager", name: "PackageManager", traits: {"smithy.api#enum" => [{"value" => "BUNDLER", "name" => "BUNDLER"}, {"value" => "CARGO", "name" => "CARGO"}, {"value" => "COMPOSER", "name" => "COMPOSER"}, {"value" => "NPM", "name" => "NPM"}, {"value" => "NUGET", "name" => "NUGET"}, {"value" => "PIPENV", "name" => "PIPENV"}, {"value" => "POETRY", "name" => "POETRY"}, {"value" => "YARN", "name" => "YARN"}, {"value" => "GOBINARY", "name" => "GOBINARY"}, {"value" => "GOMOD", "name" => "GOMOD"}, {"value" => "JAR", "name" => "JAR"}, {"value" => "OS", "name" => "OS"}, {"value" => "PIP", "name" => "PIP"}, {"value" => "PYTHONPKG", "name" => "PYTHONPKG"}, {"value" => "NODEPKG", "name" => "NODEPKG"}, {"value" => "POM", "name" => "POM"}, {"value" => "GEMSPEC", "name" => "GEMSPEC"}, {"value" => "DOTNET_CORE", "name" => "DOTNET_CORE"}]})
    PackageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageName", name: "PackageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PackageRelease = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageRelease", name: "PackageRelease", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PackageSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageSortBy", name: "PackageSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    PackageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageType", name: "PackageType", traits: {"smithy.api#enum" => [{"value" => "IMAGE", "name" => "IMAGE"}, {"value" => "ZIP", "name" => "ZIP"}]})
    PackageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PackageVersion", name: "PackageVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PackageVulnerabilityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PackageVulnerabilityDetails", name: "PackageVulnerabilityDetails")
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Path", name: "Path", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^(?:/(?:\\.[-\\w]+|[-\\w]+(?:\\.[-\\w]+)?))+/?$"})
    PathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#PathList", name: "PathList", traits: {"smithy.api#length" => {"max" => 5}})
    PeriodicScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PeriodicScanConfiguration", name: "PeriodicScanConfiguration")
    PeriodicScanFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#PeriodicScanFrequency", name: "PeriodicScanFrequency")
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Permission", name: "Permission")
    Permissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#Permissions", name: "Permissions", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Platform = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Platform", name: "Platform", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PlatformFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#PlatformFilterList", name: "PlatformFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PlatformVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#PlatformVersion", name: "PlatformVersion", traits: {"smithy.api#length" => {"max" => 8}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    PortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PortRange", name: "PortRange")
    PortRangeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#PortRangeFilter", name: "PortRangeFilter")
    PortRangeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#PortRangeFilterList", name: "PortRangeFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Product = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Product", name: "Product", traits: {"smithy.api#length" => {"max" => 32}})
    ProjectCodeSecurityScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ProjectCodeSecurityScanConfiguration", name: "ProjectCodeSecurityScanConfiguration")
    ProjectContinuousIntegrationScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ProjectContinuousIntegrationScanConfiguration", name: "ProjectContinuousIntegrationScanConfiguration")
    ProjectContinuousIntegrationScanConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ProjectContinuousIntegrationScanConfigurationList", name: "ProjectContinuousIntegrationScanConfigurationList")
    ProjectId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ProjectId", name: "ProjectId", traits: {"smithy.api#pattern" => "^project-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ProjectPeriodicScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ProjectPeriodicScanConfiguration", name: "ProjectPeriodicScanConfiguration")
    ProjectPeriodicScanConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ProjectPeriodicScanConfigurationList", name: "ProjectPeriodicScanConfigurationList")
    ProjectSelectionScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#ProjectSelectionScope", name: "ProjectSelectionScope")
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Reason", name: "Reason", traits: {"smithy.api#length" => {"max" => 1024}})
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Recommendation", name: "Recommendation")
    ReferenceUrls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ReferenceUrls", name: "ReferenceUrls", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RelatedVulnerabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#RelatedVulnerabilities", name: "RelatedVulnerabilities", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RelatedVulnerability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#RelatedVulnerability", name: "RelatedVulnerability", traits: {"smithy.api#length" => {"min" => 0}})
    RelationshipStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#RelationshipStatus", name: "RelationshipStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "INVITED", "name" => "INVITED"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "REMOVED", "name" => "REMOVED"}, {"value" => "RESIGNED", "name" => "RESIGNED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "EMAIL_VERIFICATION_IN_PROGRESS", "name" => "EMAIL_VERIFICATION_IN_PROGRESS"}, {"value" => "EMAIL_VERIFICATION_FAILED", "name" => "EMAIL_VERIFICATION_FAILED"}, {"value" => "REGION_DISABLED", "name" => "REGION_DISABLED"}, {"value" => "ACCOUNT_SUSPENDED", "name" => "ACCOUNT_SUSPENDED"}, {"value" => "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER", "name" => "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"}]})
    Remediation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Remediation", name: "Remediation")
    ReportFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ReportFormat", name: "ReportFormat", traits: {"smithy.api#enum" => [{"value" => "CSV", "name" => "CSV"}, {"value" => "JSON", "name" => "JSON"}]})
    ReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ReportId", name: "ReportId", traits: {"smithy.api#pattern" => "\\b[a-f0-9]{8}\\b-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-\\b[a-f0-9]{12}\\b"})
    ReportTargetAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ReportTargetAccounts", name: "ReportTargetAccounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ReportingErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ReportingErrorCode", name: "ReportingErrorCode", traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "INVALID_PERMISSIONS", "name" => "INVALID_PERMISSIONS"}, {"value" => "NO_FINDINGS_FOUND", "name" => "NO_FINDINGS_FOUND"}, {"value" => "BUCKET_NOT_FOUND", "name" => "BUCKET_NOT_FOUND"}, {"value" => "INCOMPATIBLE_BUCKET_REGION", "name" => "INCOMPATIBLE_BUCKET_REGION"}, {"value" => "MALFORMED_KMS_KEY", "name" => "MALFORMED_KMS_KEY"}]})
    RepositoryAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#RepositoryAggregation", name: "RepositoryAggregation")
    RepositoryAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#RepositoryAggregationResponse", name: "RepositoryAggregationResponse")
    RepositorySortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#RepositorySortBy", name: "RepositorySortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}, {"value" => "AFFECTED_IMAGES", "name" => "AFFECTED_IMAGES"}]})
    ResetEncryptionKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResetEncryptionKeyRequest", name: "ResetEncryptionKeyRequest")
    ResetEncryptionKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResetEncryptionKeyResponse", name: "ResetEncryptionKeyResponse")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Resource", name: "Resource")
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceDetails", name: "ResourceDetails")
    ResourceFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceFilterCriteria", name: "ResourceFilterCriteria")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 10, "max" => 341}, "smithy.api#pattern" => "(^arn:.*:ecr:.*:\\d{12}:repository\\/(?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*(\\/sha256:[a-z0-9]{64})?$)|(^i-([a-z0-9]{8}|[a-z0-9]{17}|\\\\*)$|(^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$)|(^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration\\/[a-f0-9-]{36}\\/project-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$))"})
    ResourceIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ResourceIdFilterList", name: "ResourceIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ResourceList", name: "ResourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceMapComparison = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ResourceMapComparison", name: "ResourceMapComparison", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    ResourceMapFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceMapFilter", name: "ResourceMapFilter")
    ResourceMapFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ResourceMapFilterList", name: "ResourceMapFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceScanMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceScanMetadata", name: "ResourceScanMetadata")
    ResourceScanType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ResourceScanType", name: "ResourceScanType", traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "ECR", "name" => "ECR"}, {"value" => "LAMBDA", "name" => "LAMBDA"}, {"value" => "LAMBDA_CODE", "name" => "LAMBDA_CODE"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    ResourceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceState", name: "ResourceState")
    ResourceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceStatus", name: "ResourceStatus")
    ResourceStringComparison = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ResourceStringComparison", name: "ResourceStringComparison", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}]})
    ResourceStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ResourceStringFilter", name: "ResourceStringFilter")
    ResourceStringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ResourceStringFilterList", name: "ResourceStringFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceStringInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ResourceStringInput", name: "ResourceStringInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceTagFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ResourceTagFilterList", name: "ResourceTagFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER_IMAGE", "name" => "AWS_ECR_CONTAINER_IMAGE"}, {"value" => "AWS_ECR_REPOSITORY", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    RiskScore = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.inspector2#RiskScore", name: "RiskScore")
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#RuleId", name: "RuleId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RuleSetCategories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#RuleSetCategories", name: "RuleSetCategories", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    RuleSetCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#RuleSetCategory", name: "RuleSetCategory")
    Runtime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Runtime", name: "Runtime", traits: {"smithy.api#enum" => [{"value" => "NODEJS", "name" => "NODEJS"}, {"value" => "NODEJS_12_X", "name" => "NODEJS_12_X"}, {"value" => "NODEJS_14_X", "name" => "NODEJS_14_X"}, {"value" => "NODEJS_16_X", "name" => "NODEJS_16_X"}, {"value" => "JAVA_8", "name" => "JAVA_8"}, {"value" => "JAVA_8_AL2", "name" => "JAVA_8_AL2"}, {"value" => "JAVA_11", "name" => "JAVA_11"}, {"value" => "PYTHON_3_7", "name" => "PYTHON_3_7"}, {"value" => "PYTHON_3_8", "name" => "PYTHON_3_8"}, {"value" => "PYTHON_3_9", "name" => "PYTHON_3_9"}, {"value" => "UNSUPPORTED", "name" => "UNSUPPORTED"}, {"value" => "NODEJS_18_X", "name" => "NODEJS_18_X"}, {"value" => "GO_1_X", "name" => "GO_1_X"}, {"value" => "JAVA_17", "name" => "JAVA_17"}, {"value" => "PYTHON_3_10", "name" => "PYTHON_3_10"}, {"value" => "PYTHON_3_11", "name" => "PYTHON_3_11"}, {"value" => "DOTNETCORE_3_1", "name" => "DOTNETCORE_3_1"}, {"value" => "DOTNET_6", "name" => "DOTNET_6"}, {"value" => "DOTNET_7", "name" => "DOTNET_7"}, {"value" => "RUBY_2_7", "name" => "RUBY_2_7"}, {"value" => "RUBY_3_2", "name" => "RUBY_3_2"}]})
    SbomReportFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#SbomReportFormat", name: "SbomReportFormat", traits: {"smithy.api#enum" => [{"value" => "CYCLONEDX_1_4", "name" => "CYCLONEDX_1_4"}, {"value" => "SPDX_2_3", "name" => "SPDX_2_3"}]})
    ScanConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ScanConfigurationArn", name: "ScanConfigurationArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:owner/(\\d{12}|o-[a-z0-9]{10,32})/codesecurity-configuration/[a-f0-9-]{36}$"})
    ScanConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ScanConfigurationName", name: "ScanConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-zA-Z0-9-_$:.]*$"})
    ScanMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ScanMode", name: "ScanMode", traits: {"smithy.api#enum" => [{"value" => "EC2_SSM_AGENT_BASED", "name" => "EC2_SSM_AGENT_BASED"}, {"value" => "EC2_AGENTLESS", "name" => "EC2_AGENTLESS"}]})
    ScanStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ScanStatus", name: "ScanStatus")
    ScanStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ScanStatusCode", name: "ScanStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    ScanStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ScanStatusReason", name: "ScanStatusReason", traits: {"smithy.api#enum" => [{"value" => "PENDING_INITIAL_SCAN", "name" => "PENDING_INITIAL_SCAN"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "UNMANAGED_EC2_INSTANCE", "name" => "UNMANAGED_EC2_INSTANCE"}, {"value" => "UNSUPPORTED_OS", "name" => "UNSUPPORTED_OS"}, {"value" => "SCAN_ELIGIBILITY_EXPIRED", "name" => "SCAN_ELIGIBILITY_EXPIRED"}, {"value" => "RESOURCE_TERMINATED", "name" => "RESOURCE_TERMINATED"}, {"value" => "SUCCESSFUL", "name" => "SUCCESSFUL"}, {"value" => "NO_RESOURCES_FOUND", "name" => "NO_RESOURCES_FOUND"}, {"value" => "IMAGE_SIZE_EXCEEDED", "name" => "IMAGE_SIZE_EXCEEDED"}, {"value" => "SCAN_FREQUENCY_MANUAL", "name" => "SCAN_FREQUENCY_MANUAL"}, {"value" => "SCAN_FREQUENCY_SCAN_ON_PUSH", "name" => "SCAN_FREQUENCY_SCAN_ON_PUSH"}, {"value" => "EC2_INSTANCE_STOPPED", "name" => "EC2_INSTANCE_STOPPED"}, {"value" => "PENDING_DISABLE", "name" => "PENDING_DISABLE"}, {"value" => "NO_INVENTORY", "name" => "NO_INVENTORY"}, {"value" => "STALE_INVENTORY", "name" => "STALE_INVENTORY"}, {"value" => "EXCLUDED_BY_TAG", "name" => "EXCLUDED_BY_TAG"}, {"value" => "UNSUPPORTED_RUNTIME", "name" => "UNSUPPORTED_RUNTIME"}, {"value" => "UNSUPPORTED_MEDIA_TYPE", "name" => "UNSUPPORTED_MEDIA_TYPE"}, {"value" => "UNSUPPORTED_CONFIG_FILE", "name" => "UNSUPPORTED_CONFIG_FILE"}, {"value" => "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED", "name" => "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED"}, {"value" => "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED", "name" => "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED"}, {"value" => "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED", "name" => "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED"}, {"value" => "DEEP_INSPECTION_NO_INVENTORY", "name" => "DEEP_INSPECTION_NO_INVENTORY"}, {"value" => "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED", "name" => "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED"}, {"value" => "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED", "name" => "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED"}, {"value" => "PENDING_REVIVAL_SCAN", "name" => "PENDING_REVIVAL_SCAN"}, {"value" => "INTEGRATION_CONNECTION_LOST", "name" => "INTEGRATION_CONNECTION_LOST"}, {"value" => "ACCESS_DENIED_TO_ENCRYPTION_KEY", "name" => "ACCESS_DENIED_TO_ENCRYPTION_KEY"}, {"value" => "UNSUPPORTED_LANGUAGE", "name" => "UNSUPPORTED_LANGUAGE"}, {"value" => "NO_SCAN_CONFIGURATION_ASSOCIATED", "name" => "NO_SCAN_CONFIGURATION_ASSOCIATED"}, {"value" => "SCAN_IN_PROGRESS", "name" => "SCAN_IN_PROGRESS"}]})
    ScanType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ScanType", name: "ScanType", traits: {"smithy.api#enum" => [{"value" => "NETWORK", "name" => "NETWORK"}, {"value" => "PACKAGE", "name" => "PACKAGE"}, {"value" => "CODE", "name" => "CODE"}]})
    Schedule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#Schedule", name: "Schedule")
    ScopeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ScopeSettings", name: "ScopeSettings")
    SearchVulnerabilitiesFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SearchVulnerabilitiesFilterCriteria", name: "SearchVulnerabilitiesFilterCriteria")
    SearchVulnerabilitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SearchVulnerabilitiesRequest", name: "SearchVulnerabilitiesRequest")
    SearchVulnerabilitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SearchVulnerabilitiesResponse", name: "SearchVulnerabilitiesResponse")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^sg-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#SecurityGroupIdList", name: "SecurityGroupIdList", traits: {"smithy.api#length" => {"max" => 5}})
    SendCisSessionHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SendCisSessionHealthRequest", name: "SendCisSessionHealthRequest")
    SendCisSessionHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SendCisSessionHealthResponse", name: "SendCisSessionHealthResponse")
    SendCisSessionTelemetryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SendCisSessionTelemetryRequest", name: "SendCisSessionTelemetryRequest")
    SendCisSessionTelemetryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SendCisSessionTelemetryResponse", name: "SendCisSessionTelemetryResponse")
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Service", name: "Service", traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "ECR", "name" => "ECR"}, {"value" => "LAMBDA", "name" => "LAMBDA"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Severity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Severity", name: "Severity", traits: {"smithy.api#enum" => [{"value" => "INFORMATIONAL", "name" => "INFORMATIONAL"}, {"value" => "LOW", "name" => "LOW"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "UNTRIAGED", "name" => "UNTRIAGED"}]})
    SeverityCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SeverityCounts", name: "SeverityCounts")
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SortCriteria", name: "SortCriteria")
    SortField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#SortField", name: "SortField", traits: {"smithy.api#enum" => [{"value" => "AWS_ACCOUNT_ID", "name" => "AWS_ACCOUNT_ID"}, {"value" => "FINDING_TYPE", "name" => "FINDING_TYPE"}, {"value" => "SEVERITY", "name" => "SEVERITY"}, {"value" => "FIRST_OBSERVED_AT", "name" => "FIRST_OBSERVED_AT"}, {"value" => "LAST_OBSERVED_AT", "name" => "LAST_OBSERVED_AT"}, {"value" => "FINDING_STATUS", "name" => "FINDING_STATUS"}, {"value" => "RESOURCE_TYPE", "name" => "RESOURCE_TYPE"}, {"value" => "ECR_IMAGE_PUSHED_AT", "name" => "ECR_IMAGE_PUSHED_AT"}, {"value" => "ECR_IMAGE_REPOSITORY_NAME", "name" => "ECR_IMAGE_REPOSITORY_NAME"}, {"value" => "ECR_IMAGE_REGISTRY", "name" => "ECR_IMAGE_REGISTRY"}, {"value" => "NETWORK_PROTOCOL", "name" => "NETWORK_PROTOCOL"}, {"value" => "COMPONENT_TYPE", "name" => "COMPONENT_TYPE"}, {"value" => "VULNERABILITY_ID", "name" => "VULNERABILITY_ID"}, {"value" => "VULNERABILITY_SOURCE", "name" => "VULNERABILITY_SOURCE"}, {"value" => "INSPECTOR_SCORE", "name" => "INSPECTOR_SCORE"}, {"value" => "VENDOR_SEVERITY", "name" => "VENDOR_SEVERITY"}, {"value" => "EPSS_SCORE", "name" => "EPSS_SCORE"}]})
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#SortOrder", name: "SortOrder", traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    SourceLayerHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#SourceLayerHash", name: "SourceLayerHash", traits: {"smithy.api#length" => {"min" => 71, "max" => 71}, "smithy.api#pattern" => "^sha256:[a-z0-9]{64}$"})
    StartCisSessionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StartCisSessionMessage", name: "StartCisSessionMessage")
    StartCisSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StartCisSessionRequest", name: "StartCisSessionRequest")
    StartCisSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StartCisSessionResponse", name: "StartCisSessionResponse")
    StartCodeSecurityScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StartCodeSecurityScanRequest", name: "StartCodeSecurityScanRequest")
    StartCodeSecurityScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StartCodeSecurityScanResponse", name: "StartCodeSecurityScanResponse")
    State = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#State", name: "State")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Status", name: "Status", traits: {"smithy.api#enum" => [{"value" => "ENABLING", "name" => "ENABLING"}, {"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLING", "name" => "DISABLING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "SUSPENDING", "name" => "SUSPENDING"}, {"value" => "SUSPENDED", "name" => "SUSPENDED"}]})
    StatusCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StatusCounts", name: "StatusCounts")
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Step", name: "Step")
    StepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#StepList", name: "StepList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    StopCisMessageProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StopCisMessageProgress", name: "StopCisMessageProgress")
    StopCisSessionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StopCisSessionMessage", name: "StopCisSessionMessage")
    StopCisSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StopCisSessionRequest", name: "StopCisSessionRequest")
    StopCisSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StopCisSessionResponse", name: "StopCisSessionResponse")
    StopCisSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#StopCisSessionStatus", name: "StopCisSessionStatus")
    StringComparison = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#StringComparison", name: "StringComparison", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}]})
    StringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#StringFilter", name: "StringFilter")
    StringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#StringFilterList", name: "StringFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StringInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#StringInput", name: "StringInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#StringList", name: "StringList")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#SubnetId", name: "SubnetId", traits: {"smithy.api#pattern" => "^subnet-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#SubnetIdList", name: "SubnetIdList", traits: {"smithy.api#length" => {"max" => 16}})
    SuccessfulAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SuccessfulAssociationResult", name: "SuccessfulAssociationResult")
    SuccessfulAssociationResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#SuccessfulAssociationResultList", name: "SuccessfulAssociationResultList")
    SuggestedFix = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#SuggestedFix", name: "SuggestedFix")
    SuggestedFixes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#SuggestedFixes", name: "SuggestedFixes", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagComparison = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspector2#TagComparison", name: "TagComparison")
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#TagFilter", name: "TagFilter")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TagList", name: "TagList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.inspector2#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#TagResourceOutput", name: "TagResourceOutput")
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TagValueList", name: "TagValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Target", name: "Target", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#TargetAccount", name: "TargetAccount", traits: {"smithy.api#pattern" => "^\\d{12}|ALL_ACCOUNTS|SELF$"})
    TargetAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TargetAccountList", name: "TargetAccountList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#uniqueItems" => {}})
    TargetResourceTags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.inspector2#TargetResourceTags", name: "TargetResourceTags", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TargetResourceTagsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#TargetResourceTagsKey", name: "TargetResourceTagsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"})
    TargetResourceTagsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#TargetResourceTagsValue", name: "TargetResourceTagsValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TargetStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TargetStatusFilterList", name: "TargetStatusFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TargetStatusReasonFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TargetStatusReasonFilterList", name: "TargetStatusReasonFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Targets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#Targets", name: "Targets", traits: {"smithy.api#length" => {"min" => 0}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Time = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Time", name: "Time")
    TimeOfDay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#TimeOfDay", name: "TimeOfDay", traits: {"smithy.api#pattern" => "^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$"})
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Timezone", name: "Timezone", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TitleAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#TitleAggregation", name: "TitleAggregation")
    TitleAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#TitleAggregationResponse", name: "TitleAggregationResponse")
    TitleFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#TitleFilterList", name: "TitleFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TitleSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#TitleSortBy", name: "TitleSortBy", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    Tool = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Tool", name: "Tool", traits: {"smithy.api#length" => {"min" => 0}})
    Tools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#Tools", name: "Tools")
    Ttp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Ttp", name: "Ttp", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    Ttps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#Ttps", name: "Ttps", traits: {"smithy.api#length" => {"min" => 0}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateCisScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCisScanConfigurationRequest", name: "UpdateCisScanConfigurationRequest")
    UpdateCisScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCisScanConfigurationResponse", name: "UpdateCisScanConfigurationResponse")
    UpdateCisTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCisTargets", name: "UpdateCisTargets")
    UpdateCodeSecurityIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCodeSecurityIntegrationRequest", name: "UpdateCodeSecurityIntegrationRequest")
    UpdateCodeSecurityIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCodeSecurityIntegrationResponse", name: "UpdateCodeSecurityIntegrationResponse")
    UpdateCodeSecurityScanConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCodeSecurityScanConfigurationRequest", name: "UpdateCodeSecurityScanConfigurationRequest")
    UpdateCodeSecurityScanConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateCodeSecurityScanConfigurationResponse", name: "UpdateCodeSecurityScanConfigurationResponse")
    UpdateConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateConfigurationInput", name: "UpdateConfigurationInput")
    UpdateConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateConfigurationOutput", name: "UpdateConfigurationOutput")
    UpdateEc2DeepInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateEc2DeepInspectionConfigurationRequest", name: "UpdateEc2DeepInspectionConfigurationRequest")
    UpdateEc2DeepInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateEc2DeepInspectionConfigurationResponse", name: "UpdateEc2DeepInspectionConfigurationResponse")
    UpdateEncryptionKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateEncryptionKeyRequest", name: "UpdateEncryptionKeyRequest")
    UpdateEncryptionKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateEncryptionKeyResponse", name: "UpdateEncryptionKeyResponse")
    UpdateFilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateFilterInput", name: "UpdateFilterInput")
    UpdateFilterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateFilterOutput", name: "UpdateFilterOutput")
    UpdateGitHubIntegrationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateGitHubIntegrationDetail", name: "UpdateGitHubIntegrationDetail")
    UpdateGitLabSelfManagedIntegrationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateGitLabSelfManagedIntegrationDetail", name: "UpdateGitLabSelfManagedIntegrationDetail")
    UpdateIntegrationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.inspector2#UpdateIntegrationDetails", name: "UpdateIntegrationDetails")
    UpdateOrgEc2DeepInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateOrgEc2DeepInspectionConfigurationRequest", name: "UpdateOrgEc2DeepInspectionConfigurationRequest")
    UpdateOrgEc2DeepInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateOrgEc2DeepInspectionConfigurationResponse", name: "UpdateOrgEc2DeepInspectionConfigurationResponse")
    UpdateOrganizationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateOrganizationConfigurationInput", name: "UpdateOrganizationConfigurationInput")
    UpdateOrganizationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UpdateOrganizationConfigurationOutput", name: "UpdateOrganizationConfigurationOutput")
    Usage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Usage", name: "Usage")
    UsageAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#UsageAccountId", name: "UsageAccountId", traits: {"smithy.api#pattern" => "[0-9]{12}"})
    UsageAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#UsageAccountIdList", name: "UsageAccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 7000}})
    UsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#UsageList", name: "UsageList")
    UsageTotal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#UsageTotal", name: "UsageTotal")
    UsageTotalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#UsageTotalList", name: "UsageTotalList")
    UsageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#UsageType", name: "UsageType", traits: {"smithy.api#enum" => [{"name" => "EC2_INSTANCE_HOURS", "value" => "EC2_INSTANCE_HOURS"}, {"name" => "ECR_INITIAL_SCAN", "value" => "ECR_INITIAL_SCAN"}, {"name" => "ECR_RESCAN", "value" => "ECR_RESCAN"}, {"name" => "LAMBDA_FUNCTION_HOURS", "value" => "LAMBDA_FUNCTION_HOURS"}, {"name" => "LAMBDA_FUNCTION_CODE_HOURS", "value" => "LAMBDA_FUNCTION_CODE_HOURS"}, {"name" => "CODE_REPOSITORY_SAST", "value" => "CODE_REPOSITORY_SAST"}, {"name" => "CODE_REPOSITORY_IAC", "value" => "CODE_REPOSITORY_IAC"}, {"name" => "CODE_REPOSITORY_SCA", "value" => "CODE_REPOSITORY_SCA"}, {"name" => "EC2_AGENTLESS_INSTANCE_HOURS", "value" => "EC2_AGENTLESS_INSTANCE_HOURS"}]})
    UsageValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.inspector2#UsageValue", name: "UsageValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#ValidationExceptionFields", name: "ValidationExceptionFields")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}]})
    Vendor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Vendor", name: "Vendor", traits: {"smithy.api#length" => {"max" => 16}})
    VendorCreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#VendorCreatedAt", name: "VendorCreatedAt")
    VendorSeverity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VendorSeverity", name: "VendorSeverity", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VendorUpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.inspector2#VendorUpdatedAt", name: "VendorUpdatedAt")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#Version", name: "Version", traits: {"smithy.api#pattern" => "^\\$LATEST|[0-9]+$"})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VpcId", name: "VpcId", traits: {"smithy.api#pattern" => "^vpc-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    VulnId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnId", name: "VulnId", traits: {"smithy.api#pattern" => "^CVE-[12][0-9]{3}-[0-9]{1,10}$"})
    VulnIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#VulnIdList", name: "VulnIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Vulnerabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#Vulnerabilities", name: "Vulnerabilities", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Vulnerability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#Vulnerability", name: "Vulnerability")
    VulnerabilityDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnerabilityDescription", name: "VulnerabilityDescription")
    VulnerabilityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnerabilityId", name: "VulnerabilityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    VulnerabilityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#VulnerabilityIdList", name: "VulnerabilityIdList")
    VulnerabilityReferenceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnerabilityReferenceUrl", name: "VulnerabilityReferenceUrl", traits: {"smithy.api#length" => {"min" => 0}})
    VulnerabilityReferenceUrls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#VulnerabilityReferenceUrls", name: "VulnerabilityReferenceUrls", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    VulnerabilitySource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnerabilitySource", name: "VulnerabilitySource", traits: {"smithy.api#enum" => [{"value" => "NVD", "name" => "NVD"}]})
    VulnerabilitySourceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnerabilitySourceUrl", name: "VulnerabilitySourceUrl", traits: {"smithy.api#length" => {"min" => 0}})
    VulnerablePackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#VulnerablePackage", name: "VulnerablePackage")
    VulnerablePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspector2#VulnerablePackageList", name: "VulnerablePackageList")
    VulnerablePackageRemediation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.inspector2#VulnerablePackageRemediation", name: "VulnerablePackageRemediation", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    WeeklySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspector2#WeeklySchedule", name: "WeeklySchedule")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    Account.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    Account.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "resourceStatus", traits: {"smithy.api#required" => {}}))
    Account.type = Types::Account
    AccountAggregation.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationFindingType, name: "findingType"))
    AccountAggregation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationResourceType, name: "resourceType"))
    AccountAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    AccountAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSortBy, name: "sortBy"))
    AccountAggregation.type = Types::AccountAggregation
    AccountAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AccountAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    AccountAggregationResponse.add_member(:exploit_available_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "exploitAvailableCount"))
    AccountAggregationResponse.add_member(:fix_available_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "fixAvailableCount"))
    AccountAggregationResponse.type = Types::AccountAggregationResponse
    AccountIdFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    AccountIdSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    AccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member")
    AccountState.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AccountState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    AccountState.add_member(:resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceState, name: "resourceState", traits: {"smithy.api#required" => {}}))
    AccountState.type = Types::AccountState
    AccountStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountState, name: "member")
    AggregationRequest.add_member(:account_aggregation, Types::AggregationRequest::AccountAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregation, name: "accountAggregation"))
    AggregationRequest.add_member(:ami_aggregation, Types::AggregationRequest::AmiAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiAggregation, name: "amiAggregation"))
    AggregationRequest.add_member(:aws_ecr_container_aggregation, Types::AggregationRequest::AwsEcrContainerAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEcrContainerAggregation, name: "awsEcrContainerAggregation"))
    AggregationRequest.add_member(:ec2_instance_aggregation, Types::AggregationRequest::Ec2InstanceAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceAggregation, name: "ec2InstanceAggregation"))
    AggregationRequest.add_member(:finding_type_aggregation, Types::AggregationRequest::FindingTypeAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingTypeAggregation, name: "findingTypeAggregation"))
    AggregationRequest.add_member(:image_layer_aggregation, Types::AggregationRequest::ImageLayerAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLayerAggregation, name: "imageLayerAggregation"))
    AggregationRequest.add_member(:package_aggregation, Types::AggregationRequest::PackageAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageAggregation, name: "packageAggregation"))
    AggregationRequest.add_member(:repository_aggregation, Types::AggregationRequest::RepositoryAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAggregation, name: "repositoryAggregation"))
    AggregationRequest.add_member(:title_aggregation, Types::AggregationRequest::TitleAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: TitleAggregation, name: "titleAggregation"))
    AggregationRequest.add_member(:lambda_layer_aggregation, Types::AggregationRequest::LambdaLayerAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerAggregation, name: "lambdaLayerAggregation"))
    AggregationRequest.add_member(:lambda_function_aggregation, Types::AggregationRequest::LambdaFunctionAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAggregation, name: "lambdaFunctionAggregation"))
    AggregationRequest.add_member(:code_repository_aggregation, Types::AggregationRequest::CodeRepositoryAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryAggregation, name: "codeRepositoryAggregation"))
    AggregationRequest.add_member(:unknown, Types::AggregationRequest::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AggregationRequest.type = Types::AggregationRequest
    AggregationResponse.add_member(:account_aggregation, Types::AggregationResponse::AccountAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregationResponse, name: "accountAggregation"))
    AggregationResponse.add_member(:ami_aggregation, Types::AggregationResponse::AmiAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiAggregationResponse, name: "amiAggregation"))
    AggregationResponse.add_member(:aws_ecr_container_aggregation, Types::AggregationResponse::AwsEcrContainerAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEcrContainerAggregationResponse, name: "awsEcrContainerAggregation"))
    AggregationResponse.add_member(:ec2_instance_aggregation, Types::AggregationResponse::Ec2InstanceAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceAggregationResponse, name: "ec2InstanceAggregation"))
    AggregationResponse.add_member(:finding_type_aggregation, Types::AggregationResponse::FindingTypeAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingTypeAggregationResponse, name: "findingTypeAggregation"))
    AggregationResponse.add_member(:image_layer_aggregation, Types::AggregationResponse::ImageLayerAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLayerAggregationResponse, name: "imageLayerAggregation"))
    AggregationResponse.add_member(:package_aggregation, Types::AggregationResponse::PackageAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageAggregationResponse, name: "packageAggregation"))
    AggregationResponse.add_member(:repository_aggregation, Types::AggregationResponse::RepositoryAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAggregationResponse, name: "repositoryAggregation"))
    AggregationResponse.add_member(:title_aggregation, Types::AggregationResponse::TitleAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: TitleAggregationResponse, name: "titleAggregation"))
    AggregationResponse.add_member(:lambda_layer_aggregation, Types::AggregationResponse::LambdaLayerAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerAggregationResponse, name: "lambdaLayerAggregation"))
    AggregationResponse.add_member(:lambda_function_aggregation, Types::AggregationResponse::LambdaFunctionAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAggregationResponse, name: "lambdaFunctionAggregation"))
    AggregationResponse.add_member(:code_repository_aggregation, Types::AggregationResponse::CodeRepositoryAggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryAggregationResponse, name: "codeRepositoryAggregation"))
    AggregationResponse.add_member(:unknown, Types::AggregationResponse::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AggregationResponse.type = Types::AggregationResponse
    AggregationResponseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationResponse, name: "member")
    AmiAggregation.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "amis"))
    AmiAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    AmiAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiSortBy, name: "sortBy"))
    AmiAggregation.type = Types::AmiAggregation
    AmiAggregationResponse.add_member(:ami, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "ami", traits: {"smithy.api#required" => {}}))
    AmiAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AmiAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    AmiAggregationResponse.add_member(:affected_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "affectedInstances"))
    AmiAggregationResponse.type = Types::AmiAggregationResponse
    ArchitectureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "member")
    AssociateConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    AssociateConfigurationRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource", traits: {"smithy.api#required" => {}}))
    AssociateConfigurationRequest.type = Types::AssociateConfigurationRequest
    AssociateConfigurationRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateConfigurationRequest, name: "member")
    AssociateMemberInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AssociateMemberInput.type = Types::AssociateMemberInput
    AssociateMemberOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AssociateMemberOutput.type = Types::AssociateMemberOutput
    AssociationResultStatusCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AssociationResultStatusCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AssociationResultStatusCode.add_member(:scan_configuration_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_CONFIGURATION_NOT_FOUND", traits: {"smithy.api#enumValue" => "SCAN_CONFIGURATION_NOT_FOUND"}))
    AssociationResultStatusCode.add_member(:invalid_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INPUT", traits: {"smithy.api#enumValue" => "INVALID_INPUT"}))
    AssociationResultStatusCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    AssociationResultStatusCode.add_member(:quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    AtigData.add_member(:first_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstSeen, name: "firstSeen"))
    AtigData.add_member(:last_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSeen, name: "lastSeen"))
    AtigData.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "targets"))
    AtigData.add_member(:ttps, ::Smithy::Schema::Shapes::MemberShape.new(target: Ttps, name: "ttps"))
    AtigData.type = Types::AtigData
    AutoEnable.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ec2", traits: {"smithy.api#required" => {}}))
    AutoEnable.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ecr", traits: {"smithy.api#required" => {}}))
    AutoEnable.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "lambda"))
    AutoEnable.add_member(:lambda_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "lambdaCode"))
    AutoEnable.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "codeRepository"))
    AutoEnable.type = Types::AutoEnable
    AwsEc2InstanceDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "type"))
    AwsEc2InstanceDetails.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageId"))
    AwsEc2InstanceDetails.add_member(:ip_v4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4AddressList, name: "ipV4Addresses"))
    AwsEc2InstanceDetails.add_member(:ip_v6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV6AddressList, name: "ipV6Addresses"))
    AwsEc2InstanceDetails.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "keyName"))
    AwsEc2InstanceDetails.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "iamInstanceProfileArn"))
    AwsEc2InstanceDetails.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "vpcId"))
    AwsEc2InstanceDetails.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "subnetId"))
    AwsEc2InstanceDetails.add_member(:launched_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "launchedAt"))
    AwsEc2InstanceDetails.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    AwsEc2InstanceDetails.type = Types::AwsEc2InstanceDetails
    AwsEcrContainerAggregation.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceIds"))
    AwsEcrContainerAggregation.add_member(:image_shas, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "imageShas"))
    AwsEcrContainerAggregation.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "repositories"))
    AwsEcrContainerAggregation.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "architectures"))
    AwsEcrContainerAggregation.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "imageTags"))
    AwsEcrContainerAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    AwsEcrContainerAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEcrContainerSortBy, name: "sortBy"))
    AwsEcrContainerAggregation.add_member(:last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "lastInUseAt"))
    AwsEcrContainerAggregation.add_member(:in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilterList, name: "inUseCount"))
    AwsEcrContainerAggregation.type = Types::AwsEcrContainerAggregation
    AwsEcrContainerAggregationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    AwsEcrContainerAggregationResponse.add_member(:image_sha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "imageSha"))
    AwsEcrContainerAggregationResponse.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "repository"))
    AwsEcrContainerAggregationResponse.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "architecture"))
    AwsEcrContainerAggregationResponse.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "imageTags"))
    AwsEcrContainerAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AwsEcrContainerAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    AwsEcrContainerAggregationResponse.add_member(:last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastInUseAt"))
    AwsEcrContainerAggregationResponse.add_member(:in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "inUseCount"))
    AwsEcrContainerAggregationResponse.type = Types::AwsEcrContainerAggregationResponse
    AwsEcrContainerImageDetails.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    AwsEcrContainerImageDetails.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagList, name: "imageTags"))
    AwsEcrContainerImageDetails.add_member(:pushed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "pushedAt"))
    AwsEcrContainerImageDetails.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "author"))
    AwsEcrContainerImageDetails.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "architecture"))
    AwsEcrContainerImageDetails.add_member(:image_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageHash, name: "imageHash", traits: {"smithy.api#required" => {}}))
    AwsEcrContainerImageDetails.add_member(:registry, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "registry", traits: {"smithy.api#required" => {}}))
    AwsEcrContainerImageDetails.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    AwsEcrContainerImageDetails.add_member(:last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastInUseAt"))
    AwsEcrContainerImageDetails.add_member(:in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "inUseCount"))
    AwsEcrContainerImageDetails.type = Types::AwsEcrContainerImageDetails
    AwsEcsMetadataDetails.add_member(:details_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "detailsGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsEcsMetadataDetails.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskDefinitionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    AwsEcsMetadataDetails.type = Types::AwsEcsMetadataDetails
    AwsEksMetadataDetails.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    AwsEksMetadataDetails.add_member(:workload_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEksWorkloadInfoList, name: "workloadInfoList"))
    AwsEksMetadataDetails.type = Types::AwsEksMetadataDetails
    AwsEksWorkloadInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsEksWorkloadInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsEksWorkloadInfo.type = Types::AwsEksWorkloadInfo
    AwsEksWorkloadInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEksWorkloadInfo, name: "member")
    AwsLambdaFunctionDetails.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "runtime", traits: {"smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "codeSha256", traits: {"smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerList, name: "layers"))
    AwsLambdaFunctionDetails.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaVpcConfig, name: "vpcConfig"))
    AwsLambdaFunctionDetails.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "packageType"))
    AwsLambdaFunctionDetails.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitectureList, name: "architectures"))
    AwsLambdaFunctionDetails.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedAt"))
    AwsLambdaFunctionDetails.type = Types::AwsLambdaFunctionDetails
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    BatchAssociateCodeSecurityScanConfigurationRequest.add_member(:associate_configuration_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateConfigurationRequestList, name: "associateConfigurationRequests", traits: {"smithy.api#required" => {}}))
    BatchAssociateCodeSecurityScanConfigurationRequest.type = Types::BatchAssociateCodeSecurityScanConfigurationRequest
    BatchAssociateCodeSecurityScanConfigurationResponse.add_member(:failed_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAssociationResultList, name: "failedAssociations"))
    BatchAssociateCodeSecurityScanConfigurationResponse.add_member(:successful_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulAssociationResultList, name: "successfulAssociations"))
    BatchAssociateCodeSecurityScanConfigurationResponse.type = Types::BatchAssociateCodeSecurityScanConfigurationResponse
    BatchDisassociateCodeSecurityScanConfigurationRequest.add_member(:disassociate_configuration_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateConfigurationRequestList, name: "disassociateConfigurationRequests", traits: {"smithy.api#required" => {}}))
    BatchDisassociateCodeSecurityScanConfigurationRequest.type = Types::BatchDisassociateCodeSecurityScanConfigurationRequest
    BatchDisassociateCodeSecurityScanConfigurationResponse.add_member(:failed_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAssociationResultList, name: "failedAssociations"))
    BatchDisassociateCodeSecurityScanConfigurationResponse.add_member(:successful_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulAssociationResultList, name: "successfulAssociations"))
    BatchDisassociateCodeSecurityScanConfigurationResponse.type = Types::BatchDisassociateCodeSecurityScanConfigurationResponse
    BatchGetAccountStatusInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdSet, name: "accountIds"))
    BatchGetAccountStatusInput.type = Types::BatchGetAccountStatusInput
    BatchGetAccountStatusOutput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStateList, name: "accounts", traits: {"smithy.api#required" => {}}))
    BatchGetAccountStatusOutput.add_member(:failed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAccountList, name: "failedAccounts"))
    BatchGetAccountStatusOutput.type = Types::BatchGetAccountStatusOutput
    BatchGetCodeSnippetRequest.add_member(:finding_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArns, name: "findingArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchGetCodeSnippetRequest.type = Types::BatchGetCodeSnippetRequest
    BatchGetCodeSnippetResponse.add_member(:code_snippet_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSnippetResultList, name: "codeSnippetResults"))
    BatchGetCodeSnippetResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSnippetErrorList, name: "errors"))
    BatchGetCodeSnippetResponse.type = Types::BatchGetCodeSnippetResponse
    BatchGetFindingDetailsRequest.add_member(:finding_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArnList, name: "findingArns", traits: {"smithy.api#required" => {}}))
    BatchGetFindingDetailsRequest.type = Types::BatchGetFindingDetailsRequest
    BatchGetFindingDetailsResponse.add_member(:finding_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetails, name: "findingDetails"))
    BatchGetFindingDetailsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetailsErrorList, name: "errors"))
    BatchGetFindingDetailsResponse.type = Types::BatchGetFindingDetailsResponse
    BatchGetFreeTrialInfoInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteringAccountIdList, name: "accountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    BatchGetFreeTrialInfoInput.type = Types::BatchGetFreeTrialInfoInput
    BatchGetFreeTrialInfoOutput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialAccountInfoList, name: "accounts", traits: {"smithy.api#required" => {}}))
    BatchGetFreeTrialInfoOutput.add_member(:failed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialInfoErrorList, name: "failedAccounts", traits: {"smithy.api#required" => {}}))
    BatchGetFreeTrialInfoOutput.type = Types::BatchGetFreeTrialInfoOutput
    BatchGetMemberEc2DeepInspectionStatusRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdSet, name: "accountIds"))
    BatchGetMemberEc2DeepInspectionStatusRequest.type = Types::BatchGetMemberEc2DeepInspectionStatusRequest
    BatchGetMemberEc2DeepInspectionStatusResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountEc2DeepInspectionStatusStateList, name: "accountIds"))
    BatchGetMemberEc2DeepInspectionStatusResponse.add_member(:failed_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedMemberAccountEc2DeepInspectionStatusStateList, name: "failedAccountIds"))
    BatchGetMemberEc2DeepInspectionStatusResponse.type = Types::BatchGetMemberEc2DeepInspectionStatusResponse
    BatchUpdateMemberEc2DeepInspectionStatusRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountEc2DeepInspectionStatusList, name: "accountIds", traits: {"smithy.api#required" => {}}))
    BatchUpdateMemberEc2DeepInspectionStatusRequest.type = Types::BatchUpdateMemberEc2DeepInspectionStatusRequest
    BatchUpdateMemberEc2DeepInspectionStatusResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountEc2DeepInspectionStatusStateList, name: "accountIds"))
    BatchUpdateMemberEc2DeepInspectionStatusResponse.add_member(:failed_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedMemberAccountEc2DeepInspectionStatusStateList, name: "failedAccountIds"))
    BatchUpdateMemberEc2DeepInspectionStatusResponse.type = Types::BatchUpdateMemberEc2DeepInspectionStatusResponse
    CancelFindingsReportInput.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#required" => {}}))
    CancelFindingsReportInput.type = Types::CancelFindingsReportInput
    CancelFindingsReportOutput.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#required" => {}}))
    CancelFindingsReportOutput.type = Types::CancelFindingsReportOutput
    CancelSbomExportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#required" => {}}))
    CancelSbomExportRequest.type = Types::CancelSbomExportRequest
    CancelSbomExportResponse.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId"))
    CancelSbomExportResponse.type = Types::CancelSbomExportResponse
    CheckIdFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    CisAccountIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    CisCheckAggregation.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    CisCheckAggregation.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "checkId"))
    CisCheckAggregation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CisCheckAggregation.add_member(:check_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "checkDescription"))
    CisCheckAggregation.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "level"))
    CisCheckAggregation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    CisCheckAggregation.add_member(:status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCounts, name: "statusCounts"))
    CisCheckAggregation.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "platform"))
    CisCheckAggregation.type = Types::CisCheckAggregation
    CisCheckAggregationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisCheckAggregation, name: "member")
    CisDateFilter.add_member(:earliest_scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "earliestScanStartTime"))
    CisDateFilter.add_member(:latest_scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "latestScanStartTime"))
    CisDateFilter.type = Types::CisDateFilter
    CisFindingArnFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    CisFindingStatus.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    CisFindingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CisFindingStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    CisFindingStatusComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisFindingStatusFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingStatusComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisFindingStatusFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingStatus, name: "value", traits: {"smithy.api#required" => {}}))
    CisFindingStatusFilter.type = Types::CisFindingStatusFilter
    CisFindingStatusFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingStatusFilter, name: "member")
    CisNumberFilter.add_member(:upper_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "upperInclusive"))
    CisNumberFilter.add_member(:lower_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lowerInclusive"))
    CisNumberFilter.type = Types::CisNumberFilter
    CisNumberFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisNumberFilter, name: "member")
    CisReportFormat.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    CisReportFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    CisReportStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CisReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CisReportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CisResultStatus.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    CisResultStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CisResultStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    CisResultStatusComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisResultStatusFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisResultStatusComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisResultStatusFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CisResultStatus, name: "value", traits: {"smithy.api#required" => {}}))
    CisResultStatusFilter.type = Types::CisResultStatusFilter
    CisResultStatusFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisResultStatusFilter, name: "member")
    CisRuleStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CisRuleStatus.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    CisRuleStatus.add_member(:not_evaluated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EVALUATED", traits: {"smithy.api#enumValue" => "NOT_EVALUATED"}))
    CisRuleStatus.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    CisRuleStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CisRuleStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    CisRuleStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    CisScan.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    CisScan.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    CisScan.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanStatus, name: "status"))
    CisScan.add_member(:scan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanName, name: "scanName"))
    CisScan.add_member(:scan_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "scanDate"))
    CisScan.add_member(:failed_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "failedChecks"))
    CisScan.add_member(:total_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalChecks"))
    CisScan.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargets, name: "targets"))
    CisScan.add_member(:scheduled_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledBy"))
    CisScan.add_member(:security_level, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "securityLevel"))
    CisScan.type = Types::CisScan
    CisScanArnFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    CisScanConfiguration.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    CisScanConfiguration.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CisOwnerId, name: "ownerId"))
    CisScanConfiguration.add_member(:scan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanName, name: "scanName"))
    CisScanConfiguration.add_member(:security_level, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "securityLevel"))
    CisScanConfiguration.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    CisScanConfiguration.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargets, name: "targets"))
    CisScanConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTagMap, name: "tags"))
    CisScanConfiguration.type = Types::CisScanConfiguration
    CisScanConfigurationArnFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    CisScanConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfiguration, name: "member")
    CisScanConfigurationsSortBy.add_member(:scan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_NAME", traits: {"smithy.api#enumValue" => "SCAN_NAME"}))
    CisScanConfigurationsSortBy.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_CONFIGURATION_ARN", traits: {"smithy.api#enumValue" => "SCAN_CONFIGURATION_ARN"}))
    CisScanDateFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisDateFilter, name: "member")
    CisScanList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisScan, name: "member")
    CisScanNameFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    CisScanResultDetails.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    CisScanResultDetails.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    CisScanResultDetails.add_member(:target_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "targetResourceId"))
    CisScanResultDetails.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "platform"))
    CisScanResultDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingStatus, name: "status"))
    CisScanResultDetails.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CisScanResultDetails.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "checkId"))
    CisScanResultDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CisScanResultDetails.add_member(:check_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "checkDescription"))
    CisScanResultDetails.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "remediation"))
    CisScanResultDetails.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "level"))
    CisScanResultDetails.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingArn, name: "findingArn"))
    CisScanResultDetails.type = Types::CisScanResultDetails
    CisScanResultDetailsFilterCriteria.add_member(:finding_status_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingStatusFilterList, name: "findingStatusFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:check_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckIdFilterList, name: "checkIdFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:title_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TitleFilterList, name: "titleFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:security_level_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevelFilterList, name: "securityLevelFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:finding_arn_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisFindingArnFilterList, name: "findingArnFilters"))
    CisScanResultDetailsFilterCriteria.type = Types::CisScanResultDetailsFilterCriteria
    CisScanResultDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultDetails, name: "member")
    CisScanResultDetailsSortBy.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHECK_ID", traits: {"smithy.api#enumValue" => "CHECK_ID"}))
    CisScanResultDetailsSortBy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:account_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OneAccountIdFilterList, name: "accountIdFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:check_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckIdFilterList, name: "checkIdFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:title_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TitleFilterList, name: "titleFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:platform_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformFilterList, name: "platformFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:failed_resources_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisNumberFilterList, name: "failedResourcesFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:security_level_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevelFilterList, name: "securityLevelFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.type = Types::CisScanResultsAggregatedByChecksFilterCriteria
    CisScanResultsAggregatedByChecksSortBy.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHECK_ID", traits: {"smithy.api#enumValue" => "CHECK_ID"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TITLE", traits: {"smithy.api#enumValue" => "TITLE"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM", traits: {"smithy.api#enumValue" => "PLATFORM"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:failed_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_COUNTS", traits: {"smithy.api#enumValue" => "FAILED_COUNTS"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:security_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_LEVEL", traits: {"smithy.api#enumValue" => "SECURITY_LEVEL"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:account_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdFilterList, name: "accountIdFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:status_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisResultStatusFilterList, name: "statusFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:check_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckIdFilterList, name: "checkIdFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_resource_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdFilterList, name: "targetResourceIdFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_resource_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagFilterList, name: "targetResourceTagFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:platform_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformFilterList, name: "platformFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_status_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatusFilterList, name: "targetStatusFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_status_reason_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatusReasonFilterList, name: "targetStatusReasonFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:failed_checks_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisNumberFilterList, name: "failedChecksFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.type = Types::CisScanResultsAggregatedByTargetResourceFilterCriteria
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ID", traits: {"smithy.api#enumValue" => "RESOURCE_ID"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:failed_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_COUNTS", traits: {"smithy.api#enumValue" => "FAILED_COUNTS"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM", traits: {"smithy.api#enumValue" => "PLATFORM"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_STATUS", traits: {"smithy.api#enumValue" => "TARGET_STATUS"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:target_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_STATUS_REASON", traits: {"smithy.api#enumValue" => "TARGET_STATUS_REASON"}))
    CisScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CisScanStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CisScanStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CisScanStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CisScanStatusComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisScanStatusFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanStatusComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisScanStatusFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanStatus, name: "value", traits: {"smithy.api#required" => {}}))
    CisScanStatusFilter.type = Types::CisScanStatusFilter
    CisScanStatusFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanStatusFilter, name: "member")
    CisScheduledByFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    CisSecurityLevel.add_member(:level_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEVEL_1", traits: {"smithy.api#enumValue" => "LEVEL_1"}))
    CisSecurityLevel.add_member(:level_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEVEL_2", traits: {"smithy.api#enumValue" => "LEVEL_2"}))
    CisSecurityLevelComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisSecurityLevelFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevelComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisSecurityLevelFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "value", traits: {"smithy.api#required" => {}}))
    CisSecurityLevelFilter.type = Types::CisSecurityLevelFilter
    CisSecurityLevelFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevelFilter, name: "member")
    CisSessionMessage.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    CisSessionMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CisRuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CisSessionMessage.add_member(:cis_rule_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CisRuleDetails, name: "cisRuleDetails", traits: {"smithy.api#required" => {}}))
    CisSessionMessage.type = Types::CisSessionMessage
    CisSessionMessages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisSessionMessage, name: "member")
    CisSortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    CisSortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    CisStringComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisStringComparison.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFIX", traits: {"smithy.api#enumValue" => "PREFIX"}))
    CisStringComparison.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    CisStringFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisStringFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#required" => {}}))
    CisStringFilter.type = Types::CisStringFilter
    CisTagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MapKey, name: "key")
    CisTagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MapValue, name: "value")
    CisTargetResourceAggregation.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    CisTargetResourceAggregation.add_member(:target_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "targetResourceId"))
    CisTargetResourceAggregation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    CisTargetResourceAggregation.add_member(:target_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTags, name: "targetResourceTags"))
    CisTargetResourceAggregation.add_member(:status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCounts, name: "statusCounts"))
    CisTargetResourceAggregation.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "platform"))
    CisTargetResourceAggregation.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatus, name: "targetStatus"))
    CisTargetResourceAggregation.add_member(:target_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatusReason, name: "targetStatusReason"))
    CisTargetResourceAggregation.type = Types::CisTargetResourceAggregation
    CisTargetResourceAggregationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetResourceAggregation, name: "member")
    CisTargetStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    CisTargetStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CisTargetStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CisTargetStatusComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisTargetStatusFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatusComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisTargetStatusFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatus, name: "value", traits: {"smithy.api#required" => {}}))
    CisTargetStatusFilter.type = Types::CisTargetStatusFilter
    CisTargetStatusReason.add_member(:scan_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_IN_PROGRESS", traits: {"smithy.api#enumValue" => "SCAN_IN_PROGRESS"}))
    CisTargetStatusReason.add_member(:unsupported_os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_OS", traits: {"smithy.api#enumValue" => "UNSUPPORTED_OS"}))
    CisTargetStatusReason.add_member(:ssm_unmanaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSM_UNMANAGED", traits: {"smithy.api#enumValue" => "SSM_UNMANAGED"}))
    CisTargetStatusReasonFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatusComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CisTargetStatusReasonFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatusReason, name: "value", traits: {"smithy.api#required" => {}}))
    CisTargetStatusReasonFilter.type = Types::CisTargetStatusReasonFilter
    CisTargets.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CisAccountIdList, name: "accountIds"))
    CisTargets.add_member(:target_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTags, name: "targetResourceTags"))
    CisTargets.type = Types::CisTargets
    CisaData.add_member(:date_added, ::Smithy::Schema::Shapes::MemberShape.new(target: CisaDateAdded, name: "dateAdded"))
    CisaData.add_member(:date_due, ::Smithy::Schema::Shapes::MemberShape.new(target: CisaDateDue, name: "dateDue"))
    CisaData.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: CisaAction, name: "action"))
    CisaData.type = Types::CisaData
    ClusterDetails.add_member(:last_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastInUse", traits: {"smithy.api#required" => {}}))
    ClusterDetails.add_member(:running_unit_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "runningUnitCount"))
    ClusterDetails.add_member(:stopped_unit_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "stoppedUnitCount"))
    ClusterDetails.add_member(:cluster_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMetadata, name: "clusterMetadata", traits: {"smithy.api#required" => {}}))
    ClusterDetails.type = Types::ClusterDetails
    ClusterDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDetails, name: "member")
    ClusterForImageFilterCriteria.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#pattern" => "^arn:.*:ecr:.*:\\d{12}:repository\\/(?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*(\\/sha256:[a-z0-9]{64})?$", "smithy.api#required" => {}}))
    ClusterForImageFilterCriteria.type = Types::ClusterForImageFilterCriteria
    ClusterInformation.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(?:-[a-z0-9-]+)?:(?:ecs|eks):[a-z0-9-]+:[0-9]{12}:cluster/[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    ClusterInformation.add_member(:cluster_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDetailsList, name: "clusterDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    ClusterInformation.type = Types::ClusterInformation
    ClusterInformationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterInformation, name: "member")
    ClusterMetadata.add_member(:aws_ecs_metadata_details, Types::ClusterMetadata::AwsEcsMetadataDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEcsMetadataDetails, name: "awsEcsMetadataDetails"))
    ClusterMetadata.add_member(:aws_eks_metadata_details, Types::ClusterMetadata::AwsEksMetadataDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEksMetadataDetails, name: "awsEksMetadataDetails"))
    ClusterMetadata.add_member(:unknown, Types::ClusterMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ClusterMetadata.type = Types::ClusterMetadata
    CodeFilePath.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fileName", traits: {"smithy.api#required" => {}}))
    CodeFilePath.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "filePath", traits: {"smithy.api#required" => {}}))
    CodeFilePath.add_member(:start_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "startLine", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CodeFilePath.add_member(:end_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "endLine", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CodeFilePath.type = Types::CodeFilePath
    CodeLine.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "content", traits: {"smithy.api#length" => {"min" => 0, "max" => 240}, "smithy.api#required" => {}}))
    CodeLine.add_member(:line_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lineNumber", traits: {"smithy.api#required" => {}}))
    CodeLine.type = Types::CodeLine
    CodeLineList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLine, name: "member")
    CodeRepositoryAggregation.add_member(:project_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "projectNames"))
    CodeRepositoryAggregation.add_member(:provider_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "providerTypes"))
    CodeRepositoryAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    CodeRepositoryAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositorySortBy, name: "sortBy"))
    CodeRepositoryAggregation.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceIds"))
    CodeRepositoryAggregation.type = Types::CodeRepositoryAggregation
    CodeRepositoryAggregationResponse.add_member(:project_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectNames", traits: {"smithy.api#required" => {}}))
    CodeRepositoryAggregationResponse.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerType"))
    CodeRepositoryAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    CodeRepositoryAggregationResponse.add_member(:exploit_available_active_findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "exploitAvailableActiveFindingsCount"))
    CodeRepositoryAggregationResponse.add_member(:fix_available_active_findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "fixAvailableActiveFindingsCount"))
    CodeRepositoryAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId"))
    CodeRepositoryAggregationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    CodeRepositoryAggregationResponse.type = Types::CodeRepositoryAggregationResponse
    CodeRepositoryDetails.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryProjectName, name: "projectName"))
    CodeRepositoryDetails.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryIntegrationArn, name: "integrationArn"))
    CodeRepositoryDetails.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryProviderType, name: "providerType"))
    CodeRepositoryDetails.type = Types::CodeRepositoryDetails
    CodeRepositoryMetadata.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#required" => {}}))
    CodeRepositoryMetadata.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryIntegrationArn, name: "integrationArn"))
    CodeRepositoryMetadata.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#required" => {}}))
    CodeRepositoryMetadata.add_member(:provider_type_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerTypeVisibility", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#required" => {}}))
    CodeRepositoryMetadata.add_member(:last_scanned_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "lastScannedCommitId"))
    CodeRepositoryMetadata.add_member(:scan_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCodeSecurityScanConfiguration, name: "scanConfiguration"))
    CodeRepositoryMetadata.add_member(:on_demand_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryOnDemandScan, name: "onDemandScan"))
    CodeRepositoryMetadata.type = Types::CodeRepositoryMetadata
    CodeRepositoryOnDemandScan.add_member(:last_scanned_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "lastScannedCommitId"))
    CodeRepositoryOnDemandScan.add_member(:last_scan_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastScanAt"))
    CodeRepositoryOnDemandScan.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatus, name: "scanStatus"))
    CodeRepositoryOnDemandScan.type = Types::CodeRepositoryOnDemandScan
    CodeScanStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CodeScanStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    CodeScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CodeScanStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    CodeSecurityIntegrationSummary.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "name", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:created_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdOn", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:last_update_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdateOn", traits: {"smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CodeSecurityIntegrationSummary.type = Types::CodeSecurityIntegrationSummary
    CodeSecurityResource.add_member(:project_id, Types::CodeSecurityResource::ProjectId, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectId, name: "projectId"))
    CodeSecurityResource.add_member(:unknown, Types::CodeSecurityResource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CodeSecurityResource.type = Types::CodeSecurityResource
    CodeSecurityScanConfiguration.add_member(:periodic_scan_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PeriodicScanConfiguration, name: "periodicScanConfiguration"))
    CodeSecurityScanConfiguration.add_member(:continuous_integration_scan_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousIntegrationScanConfiguration, name: "continuousIntegrationScanConfiguration"))
    CodeSecurityScanConfiguration.add_member(:rule_set_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetCategories, name: "ruleSetCategories", traits: {"smithy.api#required" => {}}))
    CodeSecurityScanConfiguration.type = Types::CodeSecurityScanConfiguration
    CodeSecurityScanConfigurationAssociationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfigurationAssociationSummary, name: "member")
    CodeSecurityScanConfigurationAssociationSummary.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource"))
    CodeSecurityScanConfigurationAssociationSummary.type = Types::CodeSecurityScanConfigurationAssociationSummary
    CodeSecurityScanConfigurationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfigurationSummary, name: "member")
    CodeSecurityScanConfigurationSummary.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationName, name: "name", traits: {"smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:periodic_scan_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: PeriodicScanFrequency, name: "periodicScanFrequency"))
    CodeSecurityScanConfigurationSummary.add_member(:frequency_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FrequencyExpression, name: "frequencyExpression"))
    CodeSecurityScanConfigurationSummary.add_member(:continuous_integration_scan_supported_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousIntegrationScanSupportedEvents, name: "continuousIntegrationScanSupportedEvents"))
    CodeSecurityScanConfigurationSummary.add_member(:rule_set_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetCategories, name: "ruleSetCategories", traits: {"smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:scope_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSettings, name: "scopeSettings"))
    CodeSecurityScanConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CodeSecurityScanConfigurationSummary.type = Types::CodeSecurityScanConfigurationSummary
    CodeSnippetError.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "findingArn", traits: {"smithy.api#required" => {}}))
    CodeSnippetError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSnippetErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    CodeSnippetError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    CodeSnippetError.type = Types::CodeSnippetError
    CodeSnippetErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSnippetError, name: "member")
    CodeSnippetResult.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "findingArn"))
    CodeSnippetResult.add_member(:start_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "startLine"))
    CodeSnippetResult.add_member(:end_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "endLine"))
    CodeSnippetResult.add_member(:code_snippet, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLineList, name: "codeSnippet"))
    CodeSnippetResult.add_member(:suggested_fixes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedFixes, name: "suggestedFixes"))
    CodeSnippetResult.type = Types::CodeSnippetResult
    CodeSnippetResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSnippetResult, name: "member")
    CodeVulnerabilityDetails.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeFilePath, name: "filePath", traits: {"smithy.api#required" => {}}))
    CodeVulnerabilityDetails.add_member(:detector_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorTagList, name: "detectorTags"))
    CodeVulnerabilityDetails.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceUrls, name: "referenceUrls"))
    CodeVulnerabilityDetails.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ruleId"))
    CodeVulnerabilityDetails.add_member(:source_lambda_layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerArn, name: "sourceLambdaLayerArn"))
    CodeVulnerabilityDetails.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "detectorId", traits: {"smithy.api#required" => {}}))
    CodeVulnerabilityDetails.add_member(:detector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "detectorName", traits: {"smithy.api#required" => {}}))
    CodeVulnerabilityDetails.add_member(:cwes, ::Smithy::Schema::Shapes::MemberShape.new(target: CweList, name: "cwes", traits: {"smithy.api#required" => {}}))
    CodeVulnerabilityDetails.type = Types::CodeVulnerabilityDetails
    ComputePlatform.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: Vendor, name: "vendor"))
    ComputePlatform.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: Product, name: "product"))
    ComputePlatform.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformVersion, name: "version"))
    ComputePlatform.type = Types::ComputePlatform
    ConfigurationLevel.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ConfigurationLevel.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContinuousIntegrationScanConfiguration.add_member(:supported_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousIntegrationScanSupportedEvents, name: "supportedEvents", traits: {"smithy.api#required" => {}}))
    ContinuousIntegrationScanConfiguration.type = Types::ContinuousIntegrationScanConfiguration
    ContinuousIntegrationScanEvent.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST", traits: {"smithy.api#enumValue" => "PULL_REQUEST"}))
    ContinuousIntegrationScanEvent.add_member(:push, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUSH", traits: {"smithy.api#enumValue" => "PUSH"}))
    ContinuousIntegrationScanSupportedEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousIntegrationScanEvent, name: "member")
    Counts.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: AggCounts, name: "count", traits: {"smithy.api#default" => 0}))
    Counts.add_member(:group_key, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupKey, name: "groupKey"))
    Counts.type = Types::Counts
    CountsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Counts, name: "member")
    CoverageDateFilter.add_member(:start_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "startInclusive"))
    CoverageDateFilter.add_member(:end_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "endInclusive"))
    CoverageDateFilter.type = Types::CoverageDateFilter
    CoverageDateFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageDateFilter, name: "member")
    CoverageFilterCriteria.add_member(:scan_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "scanStatusCode"))
    CoverageFilterCriteria.add_member(:scan_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "scanStatusReason"))
    CoverageFilterCriteria.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "accountId"))
    CoverageFilterCriteria.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "resourceId"))
    CoverageFilterCriteria.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "resourceType"))
    CoverageFilterCriteria.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "scanType"))
    CoverageFilterCriteria.add_member(:ecr_repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "ecrRepositoryName"))
    CoverageFilterCriteria.add_member(:ecr_image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "ecrImageTags"))
    CoverageFilterCriteria.add_member(:ec2_instance_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageMapFilterList, name: "ec2InstanceTags"))
    CoverageFilterCriteria.add_member(:lambda_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "lambdaFunctionName"))
    CoverageFilterCriteria.add_member(:lambda_function_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageMapFilterList, name: "lambdaFunctionTags"))
    CoverageFilterCriteria.add_member(:lambda_function_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "lambdaFunctionRuntime"))
    CoverageFilterCriteria.add_member(:last_scanned_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageDateFilterList, name: "lastScannedAt"))
    CoverageFilterCriteria.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "scanMode"))
    CoverageFilterCriteria.add_member(:image_pulled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageDateFilterList, name: "imagePulledAt"))
    CoverageFilterCriteria.add_member(:ecr_image_last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageDateFilterList, name: "ecrImageLastInUseAt"))
    CoverageFilterCriteria.add_member(:ecr_image_in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageNumberFilterList, name: "ecrImageInUseCount"))
    CoverageFilterCriteria.add_member(:code_repository_project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "codeRepositoryProjectName"))
    CoverageFilterCriteria.add_member(:code_repository_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "codeRepositoryProviderType"))
    CoverageFilterCriteria.add_member(:code_repository_provider_type_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "codeRepositoryProviderTypeVisibility"))
    CoverageFilterCriteria.add_member(:last_scanned_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilterList, name: "lastScannedCommitId"))
    CoverageFilterCriteria.type = Types::CoverageFilterCriteria
    CoverageMapFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageMapComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CoverageMapFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key", traits: {"smithy.api#required" => {}}))
    CoverageMapFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    CoverageMapFilter.type = Types::CoverageMapFilter
    CoverageMapFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageMapFilter, name: "member")
    CoverageNumberFilter.add_member(:upper_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "upperInclusive"))
    CoverageNumberFilter.add_member(:lower_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lowerInclusive"))
    CoverageNumberFilter.type = Types::CoverageNumberFilter
    CoverageNumberFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageNumberFilter, name: "member")
    CoverageStringFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    CoverageStringFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringInput, name: "value", traits: {"smithy.api#required" => {}}))
    CoverageStringFilter.type = Types::CoverageStringFilter
    CoverageStringFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStringFilter, name: "member")
    CoveredResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    CoveredResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    CoveredResource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    CoveredResource.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "scanType", traits: {"smithy.api#required" => {}}))
    CoveredResource.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatus, name: "scanStatus"))
    CoveredResource.add_member(:resource_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanMetadata, name: "resourceMetadata"))
    CoveredResource.add_member(:last_scanned_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastScannedAt"))
    CoveredResource.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "scanMode"))
    CoveredResource.type = Types::CoveredResource
    CoveredResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CoveredResource, name: "member")
    CreateCisScanConfigurationRequest.add_member(:scan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanName, name: "scanName", traits: {"smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:security_level, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "securityLevel", traits: {"smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule", traits: {"smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateCisTargets, name: "targets", traits: {"smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTagMap, name: "tags"))
    CreateCisScanConfigurationRequest.type = Types::CreateCisScanConfigurationRequest
    CreateCisScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn"))
    CreateCisScanConfigurationResponse.type = Types::CreateCisScanConfigurationResponse
    CreateCisTargets.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountList, name: "accountIds", traits: {"smithy.api#required" => {}}))
    CreateCisTargets.add_member(:target_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTags, name: "targetResourceTags", traits: {"smithy.api#required" => {}}))
    CreateCisTargets.type = Types::CreateCisTargets
    CreateCodeSecurityIntegrationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateIntegrationDetail, name: "details"))
    CreateCodeSecurityIntegrationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateCodeSecurityIntegrationRequest.type = Types::CreateCodeSecurityIntegrationRequest
    CreateCodeSecurityIntegrationResponse.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationResponse.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationUrl, name: "authorizationUrl"))
    CreateCodeSecurityIntegrationResponse.type = Types::CreateCodeSecurityIntegrationResponse
    CreateCodeSecurityScanConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationLevel, name: "level", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:scope_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSettings, name: "scopeSettings"))
    CreateCodeSecurityScanConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateCodeSecurityScanConfigurationRequest.type = Types::CreateCodeSecurityScanConfigurationRequest
    CreateCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationResponse.type = Types::CreateCodeSecurityScanConfigurationResponse
    CreateFilterInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "action", traits: {"smithy.api#required" => {}}))
    CreateFilterInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDescription, name: "description"))
    CreateFilterInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "filterCriteria", traits: {"smithy.api#required" => {}}))
    CreateFilterInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFilterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateFilterInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterReason, name: "reason"))
    CreateFilterInput.type = Types::CreateFilterInput
    CreateFilterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateFilterOutput.type = Types::CreateFilterOutput
    CreateFindingsReportInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "filterCriteria"))
    CreateFindingsReportInput.add_member(:report_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFormat, name: "reportFormat", traits: {"smithy.api#required" => {}}))
    CreateFindingsReportInput.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "s3Destination", traits: {"smithy.api#required" => {}}))
    CreateFindingsReportInput.type = Types::CreateFindingsReportInput
    CreateFindingsReportOutput.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId"))
    CreateFindingsReportOutput.type = Types::CreateFindingsReportOutput
    CreateGitLabSelfManagedIntegrationDetail.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    CreateGitLabSelfManagedIntegrationDetail.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabAccessToken, name: "accessToken", traits: {"smithy.api#required" => {}}))
    CreateGitLabSelfManagedIntegrationDetail.type = Types::CreateGitLabSelfManagedIntegrationDetail
    CreateIntegrationDetail.add_member(:gitlab_self_managed, Types::CreateIntegrationDetail::GitlabSelfManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateGitLabSelfManagedIntegrationDetail, name: "gitlabSelfManaged"))
    CreateIntegrationDetail.add_member(:unknown, Types::CreateIntegrationDetail::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CreateIntegrationDetail.type = Types::CreateIntegrationDetail
    CreateSbomExportRequest.add_member(:resource_filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilterCriteria, name: "resourceFilterCriteria"))
    CreateSbomExportRequest.add_member(:report_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SbomReportFormat, name: "reportFormat", traits: {"smithy.api#required" => {}}))
    CreateSbomExportRequest.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "s3Destination", traits: {"smithy.api#required" => {}}))
    CreateSbomExportRequest.type = Types::CreateSbomExportRequest
    CreateSbomExportResponse.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId"))
    CreateSbomExportResponse.type = Types::CreateSbomExportResponse
    Cvss2.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssBaseScore, name: "baseScore", traits: {"smithy.api#default" => 0}))
    Cvss2.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoringVector, name: "scoringVector"))
    Cvss2.type = Types::Cvss2
    Cvss3.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssBaseScore, name: "baseScore", traits: {"smithy.api#default" => 0}))
    Cvss3.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoringVector, name: "scoringVector"))
    Cvss3.type = Types::Cvss3
    Cvss4.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssBaseScore, name: "baseScore", traits: {"smithy.api#default" => 0}))
    Cvss4.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoringVector, name: "scoringVector"))
    Cvss4.type = Types::Cvss4
    CvssScore.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "baseScore", traits: {"smithy.api#required" => {}}))
    CvssScore.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scoringVector", traits: {"smithy.api#required" => {}}))
    CvssScore.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "version", traits: {"smithy.api#required" => {}}))
    CvssScore.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "source", traits: {"smithy.api#required" => {}}))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "metric", traits: {"smithy.api#required" => {}}))
    CvssScoreAdjustment.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason", traits: {"smithy.api#required" => {}}))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustment, name: "member")
    CvssScoreDetails.add_member(:score_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scoreSource", traits: {"smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:cvss_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "cvssSource"))
    CvssScoreDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "version", traits: {"smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "score", traits: {"smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scoringVector", traits: {"smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustmentList, name: "adjustments"))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScore, name: "member")
    CweList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    Cwes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Cwe, name: "member")
    DailySchedule.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime", traits: {"smithy.api#required" => {}}))
    DailySchedule.type = Types::DailySchedule
    DateFilter.add_member(:start_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startInclusive"))
    DateFilter.add_member(:end_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endInclusive"))
    DateFilter.type = Types::DateFilter
    DateFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilter, name: "member")
    Day.add_member(:sun, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUN", traits: {"smithy.api#enumValue" => "SUN"}))
    Day.add_member(:mon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MON", traits: {"smithy.api#enumValue" => "MON"}))
    Day.add_member(:tue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUE", traits: {"smithy.api#enumValue" => "TUE"}))
    Day.add_member(:wed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WED", traits: {"smithy.api#enumValue" => "WED"}))
    Day.add_member(:thu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THU", traits: {"smithy.api#enumValue" => "THU"}))
    Day.add_member(:fri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRI", traits: {"smithy.api#enumValue" => "FRI"}))
    Day.add_member(:sat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAT", traits: {"smithy.api#enumValue" => "SAT"}))
    DaysList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Day, name: "member")
    DelegatedAdmin.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    DelegatedAdmin.add_member(:relationship_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipStatus, name: "relationshipStatus"))
    DelegatedAdmin.type = Types::DelegatedAdmin
    DelegatedAdminAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    DelegatedAdminAccount.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedAdminStatus, name: "status"))
    DelegatedAdminAccount.type = Types::DelegatedAdminAccount
    DelegatedAdminAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedAdminAccount, name: "member")
    DeleteCisScanConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteCisScanConfigurationRequest.type = Types::DeleteCisScanConfigurationRequest
    DeleteCisScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteCisScanConfigurationResponse.type = Types::DeleteCisScanConfigurationResponse
    DeleteCodeSecurityIntegrationRequest.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    DeleteCodeSecurityIntegrationRequest.type = Types::DeleteCodeSecurityIntegrationRequest
    DeleteCodeSecurityIntegrationResponse.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn"))
    DeleteCodeSecurityIntegrationResponse.type = Types::DeleteCodeSecurityIntegrationResponse
    DeleteCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteCodeSecurityScanConfigurationRequest.type = Types::DeleteCodeSecurityScanConfigurationRequest
    DeleteCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn"))
    DeleteCodeSecurityScanConfigurationResponse.type = Types::DeleteCodeSecurityScanConfigurationResponse
    DeleteFilterInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteFilterInput.type = Types::DeleteFilterInput
    DeleteFilterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteFilterOutput.type = Types::DeleteFilterOutput
    DescribeOrganizationConfigurationInput.type = Types::DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoEnable, name: "autoEnable"))
    DescribeOrganizationConfigurationOutput.add_member(:max_account_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "maxAccountLimitReached"))
    DescribeOrganizationConfigurationOutput.type = Types::DescribeOrganizationConfigurationOutput
    Destination.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucketName", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "keyPrefix"))
    Destination.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyArn", traits: {"smithy.api#required" => {}}))
    Destination.type = Types::Destination
    DetectionPlatforms.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    DetectorTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    DisableDelegatedAdminAccountInput.add_member(:delegated_admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "delegatedAdminAccountId", traits: {"smithy.api#required" => {}}))
    DisableDelegatedAdminAccountInput.type = Types::DisableDelegatedAdminAccountInput
    DisableDelegatedAdminAccountOutput.add_member(:delegated_admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "delegatedAdminAccountId", traits: {"smithy.api#required" => {}}))
    DisableDelegatedAdminAccountOutput.type = Types::DisableDelegatedAdminAccountOutput
    DisableInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdSet, name: "accountIds"))
    DisableInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableResourceTypeList, name: "resourceTypes"))
    DisableInput.type = Types::DisableInput
    DisableOutput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "accounts", traits: {"smithy.api#required" => {}}))
    DisableOutput.add_member(:failed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAccountList, name: "failedAccounts"))
    DisableOutput.type = Types::DisableOutput
    DisableResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanType, name: "member")
    DisassociateConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    DisassociateConfigurationRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource", traits: {"smithy.api#required" => {}}))
    DisassociateConfigurationRequest.type = Types::DisassociateConfigurationRequest
    DisassociateConfigurationRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateConfigurationRequest, name: "member")
    DisassociateMemberInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    DisassociateMemberInput.type = Types::DisassociateMemberInput
    DisassociateMemberOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    DisassociateMemberOutput.type = Types::DisassociateMemberOutput
    Ec2Configuration.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ScanMode, name: "scanMode", traits: {"smithy.api#required" => {}}))
    Ec2Configuration.type = Types::Ec2Configuration
    Ec2ConfigurationState.add_member(:scan_mode_state, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ScanModeState, name: "scanModeState"))
    Ec2ConfigurationState.type = Types::Ec2ConfigurationState
    Ec2InstanceAggregation.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "amis"))
    Ec2InstanceAggregation.add_member(:operating_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "operatingSystems"))
    Ec2InstanceAggregation.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "instanceIds"))
    Ec2InstanceAggregation.add_member(:instance_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapFilterList, name: "instanceTags"))
    Ec2InstanceAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    Ec2InstanceAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceSortBy, name: "sortBy"))
    Ec2InstanceAggregation.type = Types::Ec2InstanceAggregation
    Ec2InstanceAggregationResponse.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "instanceId", traits: {"smithy.api#required" => {}}))
    Ec2InstanceAggregationResponse.add_member(:ami, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "ami"))
    Ec2InstanceAggregationResponse.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystem"))
    Ec2InstanceAggregationResponse.add_member(:instance_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "instanceTags"))
    Ec2InstanceAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId"))
    Ec2InstanceAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    Ec2InstanceAggregationResponse.add_member(:network_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "networkFindings"))
    Ec2InstanceAggregationResponse.type = Types::Ec2InstanceAggregationResponse
    Ec2Metadata.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Ec2Metadata.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "amiId"))
    Ec2Metadata.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Platform, name: "platform"))
    Ec2Metadata.type = Types::Ec2Metadata
    Ec2ScanModeState.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ScanMode, name: "scanMode"))
    Ec2ScanModeState.add_member(:scan_mode_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ScanModeStatus, name: "scanModeStatus"))
    Ec2ScanModeState.type = Types::Ec2ScanModeState
    EcrConfiguration.add_member(:rescan_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRescanDuration, name: "rescanDuration", traits: {"smithy.api#required" => {}}))
    EcrConfiguration.add_member(:pull_date_rescan_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrPullDateRescanDuration, name: "pullDateRescanDuration"))
    EcrConfiguration.add_member(:pull_date_rescan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrPullDateRescanMode, name: "pullDateRescanMode"))
    EcrConfiguration.type = Types::EcrConfiguration
    EcrConfigurationState.add_member(:rescan_duration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRescanDurationState, name: "rescanDurationState"))
    EcrConfigurationState.type = Types::EcrConfigurationState
    EcrContainerImageMetadata.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    EcrContainerImageMetadata.add_member(:image_pulled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "imagePulledAt"))
    EcrContainerImageMetadata.add_member(:last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastInUseAt"))
    EcrContainerImageMetadata.add_member(:in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "inUseCount"))
    EcrContainerImageMetadata.type = Types::EcrContainerImageMetadata
    EcrRepositoryMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    EcrRepositoryMetadata.add_member(:scan_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrScanFrequency, name: "scanFrequency"))
    EcrRepositoryMetadata.type = Types::EcrRepositoryMetadata
    EcrRescanDurationState.add_member(:rescan_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRescanDuration, name: "rescanDuration"))
    EcrRescanDurationState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRescanDurationStatus, name: "status"))
    EcrRescanDurationState.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "updatedAt"))
    EcrRescanDurationState.add_member(:pull_date_rescan_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrPullDateRescanDuration, name: "pullDateRescanDuration"))
    EcrRescanDurationState.add_member(:pull_date_rescan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrPullDateRescanMode, name: "pullDateRescanMode"))
    EcrRescanDurationState.type = Types::EcrRescanDurationState
    EnableDelegatedAdminAccountInput.add_member(:delegated_admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "delegatedAdminAccountId", traits: {"smithy.api#required" => {}}))
    EnableDelegatedAdminAccountInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    EnableDelegatedAdminAccountInput.type = Types::EnableDelegatedAdminAccountInput
    EnableDelegatedAdminAccountOutput.add_member(:delegated_admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "delegatedAdminAccountId", traits: {"smithy.api#required" => {}}))
    EnableDelegatedAdminAccountOutput.type = Types::EnableDelegatedAdminAccountOutput
    EnableInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdSet, name: "accountIds"))
    EnableInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableResourceTypeList, name: "resourceTypes", traits: {"smithy.api#required" => {}}))
    EnableInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    EnableInput.type = Types::EnableInput
    EnableOutput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "accounts", traits: {"smithy.api#required" => {}}))
    EnableOutput.add_member(:failed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAccountList, name: "failedAccounts"))
    EnableOutput.type = Types::EnableOutput
    EnableResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScanType, name: "member")
    Epss.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: EpssScore, name: "score", traits: {"smithy.api#default" => 0}))
    Epss.type = Types::Epss
    EpssDetails.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: EpssScoreValue, name: "score", traits: {"smithy.api#default" => 0}))
    EpssDetails.type = Types::EpssDetails
    Evidence.add_member(:evidence_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: EvidenceRule, name: "evidenceRule"))
    Evidence.add_member(:evidence_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: EvidenceDetail, name: "evidenceDetail"))
    Evidence.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: EvidenceSeverity, name: "severity"))
    Evidence.type = Types::Evidence
    EvidenceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Evidence, name: "member")
    ExploitObserved.add_member(:last_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSeen, name: "lastSeen"))
    ExploitObserved.add_member(:first_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstSeen, name: "firstSeen"))
    ExploitObserved.type = Types::ExploitObserved
    ExploitabilityDetails.add_member(:last_known_exploit_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastKnownExploitAt"))
    ExploitabilityDetails.type = Types::ExploitabilityDetails
    FailedAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    FailedAccount.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    FailedAccount.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "resourceStatus"))
    FailedAccount.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    FailedAccount.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    FailedAccount.type = Types::FailedAccount
    FailedAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAccount, name: "member")
    FailedAssociationResult.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn"))
    FailedAssociationResult.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource"))
    FailedAssociationResult.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationResultStatusCode, name: "statusCode"))
    FailedAssociationResult.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationResultStatusMessage, name: "statusMessage"))
    FailedAssociationResult.type = Types::FailedAssociationResult
    FailedAssociationResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAssociationResult, name: "member")
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:ec2_scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "ec2ScanStatus"))
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage"))
    FailedMemberAccountEc2DeepInspectionStatusState.type = Types::FailedMemberAccountEc2DeepInspectionStatusState
    FailedMemberAccountEc2DeepInspectionStatusStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedMemberAccountEc2DeepInspectionStatusState, name: "member")
    Filter.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "criteria", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "action", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDescription, name: "description"))
    Filter.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterReason, name: "reason"))
    Filter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Filter.type = Types::Filter
    FilterArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "member")
    FilterCriteria.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "findingArn"))
    FilterCriteria.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "awsAccountId"))
    FilterCriteria.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "findingType"))
    FilterCriteria.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "severity"))
    FilterCriteria.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "firstObservedAt"))
    FilterCriteria.add_member(:last_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "lastObservedAt"))
    FilterCriteria.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "updatedAt"))
    FilterCriteria.add_member(:finding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "findingStatus"))
    FilterCriteria.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "title"))
    FilterCriteria.add_member(:inspector_score, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilterList, name: "inspectorScore"))
    FilterCriteria.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceType"))
    FilterCriteria.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceId"))
    FilterCriteria.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapFilterList, name: "resourceTags"))
    FilterCriteria.add_member(:ec2_instance_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ec2InstanceImageId"))
    FilterCriteria.add_member(:ec2_instance_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ec2InstanceVpcId"))
    FilterCriteria.add_member(:ec2_instance_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ec2InstanceSubnetId"))
    FilterCriteria.add_member(:ecr_image_pushed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "ecrImagePushedAt"))
    FilterCriteria.add_member(:ecr_image_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ecrImageArchitecture"))
    FilterCriteria.add_member(:ecr_image_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ecrImageRegistry"))
    FilterCriteria.add_member(:ecr_image_repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ecrImageRepositoryName"))
    FilterCriteria.add_member(:ecr_image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ecrImageTags"))
    FilterCriteria.add_member(:ecr_image_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "ecrImageHash"))
    FilterCriteria.add_member(:ecr_image_last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "ecrImageLastInUseAt"))
    FilterCriteria.add_member(:ecr_image_in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilterList, name: "ecrImageInUseCount"))
    FilterCriteria.add_member(:port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeFilterList, name: "portRange"))
    FilterCriteria.add_member(:network_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "networkProtocol"))
    FilterCriteria.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "componentId"))
    FilterCriteria.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "componentType"))
    FilterCriteria.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "vulnerabilityId"))
    FilterCriteria.add_member(:vulnerability_source, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "vulnerabilitySource"))
    FilterCriteria.add_member(:vendor_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "vendorSeverity"))
    FilterCriteria.add_member(:vulnerable_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFilterList, name: "vulnerablePackages"))
    FilterCriteria.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "relatedVulnerabilities"))
    FilterCriteria.add_member(:fix_available, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "fixAvailable"))
    FilterCriteria.add_member(:lambda_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "lambdaFunctionName"))
    FilterCriteria.add_member(:lambda_function_layers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "lambdaFunctionLayers"))
    FilterCriteria.add_member(:lambda_function_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "lambdaFunctionRuntime"))
    FilterCriteria.add_member(:lambda_function_last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilterList, name: "lambdaFunctionLastModifiedAt"))
    FilterCriteria.add_member(:lambda_function_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "lambdaFunctionExecutionRoleArn"))
    FilterCriteria.add_member(:exploit_available, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "exploitAvailable"))
    FilterCriteria.add_member(:code_vulnerability_detector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "codeVulnerabilityDetectorName"))
    FilterCriteria.add_member(:code_vulnerability_detector_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "codeVulnerabilityDetectorTags"))
    FilterCriteria.add_member(:code_vulnerability_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "codeVulnerabilityFilePath"))
    FilterCriteria.add_member(:epss_score, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilterList, name: "epssScore"))
    FilterCriteria.add_member(:code_repository_project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "codeRepositoryProjectName"))
    FilterCriteria.add_member(:code_repository_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "codeRepositoryProviderType"))
    FilterCriteria.type = Types::FilterCriteria
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    Finding.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "findingArn", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "awsAccountId", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingType, name: "type", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDescription, name: "description", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingTitle, name: "title"))
    Finding.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: Remediation, name: "remediation", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "severity", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "firstObservedAt", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:last_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastObservedAt", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "updatedAt"))
    Finding.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:inspector_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "inspectorScore"))
    Finding.add_member(:inspector_score_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectorScoreDetails, name: "inspectorScoreDetails"))
    Finding.add_member(:network_reachability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkReachabilityDetails, name: "networkReachabilityDetails"))
    Finding.add_member(:package_vulnerability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVulnerabilityDetails, name: "packageVulnerabilityDetails"))
    Finding.add_member(:fix_available, ::Smithy::Schema::Shapes::MemberShape.new(target: FixAvailable, name: "fixAvailable"))
    Finding.add_member(:exploit_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ExploitAvailable, name: "exploitAvailable"))
    Finding.add_member(:exploitability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExploitabilityDetails, name: "exploitabilityDetails"))
    Finding.add_member(:code_vulnerability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeVulnerabilityDetails, name: "codeVulnerabilityDetails"))
    Finding.add_member(:epss, ::Smithy::Schema::Shapes::MemberShape.new(target: EpssDetails, name: "epss"))
    Finding.type = Types::Finding
    FindingArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "member")
    FindingArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "member")
    FindingDetail.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "findingArn"))
    FindingDetail.add_member(:cisa_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CisaData, name: "cisaData"))
    FindingDetail.add_member(:risk_score, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskScore, name: "riskScore"))
    FindingDetail.add_member(:evidences, ::Smithy::Schema::Shapes::MemberShape.new(target: EvidenceList, name: "evidences"))
    FindingDetail.add_member(:ttps, ::Smithy::Schema::Shapes::MemberShape.new(target: Ttps, name: "ttps"))
    FindingDetail.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: Tools, name: "tools"))
    FindingDetail.add_member(:exploit_observed, ::Smithy::Schema::Shapes::MemberShape.new(target: ExploitObserved, name: "exploitObserved"))
    FindingDetail.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityReferenceUrls, name: "referenceUrls"))
    FindingDetail.add_member(:cwes, ::Smithy::Schema::Shapes::MemberShape.new(target: Cwes, name: "cwes"))
    FindingDetail.add_member(:epss_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "epssScore"))
    FindingDetail.type = Types::FindingDetail
    FindingDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetail, name: "member")
    FindingDetailsError.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "findingArn", traits: {"smithy.api#required" => {}}))
    FindingDetailsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetailsErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    FindingDetailsError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    FindingDetailsError.type = Types::FindingDetailsError
    FindingDetailsErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetailsError, name: "member")
    FindingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "member")
    FindingTypeAggregation.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationFindingType, name: "findingType"))
    FindingTypeAggregation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationResourceType, name: "resourceType"))
    FindingTypeAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    FindingTypeAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingTypeSortBy, name: "sortBy"))
    FindingTypeAggregation.type = Types::FindingTypeAggregation
    FindingTypeAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    FindingTypeAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    FindingTypeAggregationResponse.add_member(:exploit_available_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "exploitAvailableCount"))
    FindingTypeAggregationResponse.add_member(:fix_available_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "fixAvailableCount"))
    FindingTypeAggregationResponse.type = Types::FindingTypeAggregationResponse
    FreeTrialAccountInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteringAccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    FreeTrialAccountInfo.add_member(:free_trial_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialInfoList, name: "freeTrialInfo", traits: {"smithy.api#required" => {}}))
    FreeTrialAccountInfo.type = Types::FreeTrialAccountInfo
    FreeTrialAccountInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialAccountInfo, name: "member")
    FreeTrialInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialType, name: "type", traits: {"smithy.api#required" => {}}))
    FreeTrialInfo.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "start", traits: {"smithy.api#required" => {}}))
    FreeTrialInfo.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "end", traits: {"smithy.api#required" => {}}))
    FreeTrialInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FreeTrialInfo.type = Types::FreeTrialInfo
    FreeTrialInfoError.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteringAccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    FreeTrialInfoError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialInfoErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    FreeTrialInfoError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    FreeTrialInfoError.type = Types::FreeTrialInfoError
    FreeTrialInfoErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialInfoError, name: "member")
    FreeTrialInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialInfo, name: "member")
    GetCisScanReportRequest.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    GetCisScanReportRequest.add_member(:target_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportTargetAccounts, name: "targetAccounts"))
    GetCisScanReportRequest.add_member(:report_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CisReportFormat, name: "reportFormat", traits: {"smithy.api#default" => "PDF"}))
    GetCisScanReportRequest.type = Types::GetCisScanReportRequest
    GetCisScanReportResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    GetCisScanReportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CisReportStatus, name: "status"))
    GetCisScanReportResponse.type = Types::GetCisScanReportResponse
    GetCisScanResultDetailsRequest.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    GetCisScanResultDetailsRequest.add_member(:target_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "targetResourceId", traits: {"smithy.api#required" => {}}))
    GetCisScanResultDetailsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    GetCisScanResultDetailsRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultDetailsFilterCriteria, name: "filterCriteria"))
    GetCisScanResultDetailsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultDetailsSortBy, name: "sortBy", traits: {"smithy.api#default" => "CHECK_ID"}))
    GetCisScanResultDetailsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSortOrder, name: "sortOrder"))
    GetCisScanResultDetailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCisScanResultDetailsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetCisScanResultDetailsMaxResults, name: "maxResults", traits: {"smithy.api#default" => 300}))
    GetCisScanResultDetailsRequest.type = Types::GetCisScanResultDetailsRequest
    GetCisScanResultDetailsResponse.add_member(:scan_result_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultDetailsList, name: "scanResultDetails"))
    GetCisScanResultDetailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCisScanResultDetailsResponse.type = Types::GetCisScanResultDetailsResponse
    GetClustersForImageRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterForImageFilterCriteria, name: "filter", traits: {"smithy.api#required" => {}}))
    GetClustersForImageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetClustersForImageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GetClustersForImageNextToken, name: "nextToken"))
    GetClustersForImageRequest.type = Types::GetClustersForImageRequest
    GetClustersForImageResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterInformationList, name: "cluster", traits: {"smithy.api#required" => {}}))
    GetClustersForImageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GetClustersForImageNextToken, name: "nextToken"))
    GetClustersForImageResponse.type = Types::GetClustersForImageResponse
    GetCodeSecurityIntegrationRequest.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetCodeSecurityIntegrationRequest.type = Types::GetCodeSecurityIntegrationRequest
    GetCodeSecurityIntegrationResponse.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "name", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:created_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdOn", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:last_update_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdateOn", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetCodeSecurityIntegrationResponse.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationUrl, name: "authorizationUrl"))
    GetCodeSecurityIntegrationResponse.type = Types::GetCodeSecurityIntegrationResponse
    GetCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityScanConfigurationRequest.type = Types::GetCodeSecurityScanConfigurationRequest
    GetCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn"))
    GetCodeSecurityScanConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationName, name: "name"))
    GetCodeSecurityScanConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfiguration, name: "configuration"))
    GetCodeSecurityScanConfigurationResponse.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationLevel, name: "level"))
    GetCodeSecurityScanConfigurationResponse.add_member(:scope_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSettings, name: "scopeSettings"))
    GetCodeSecurityScanConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetCodeSecurityScanConfigurationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedAt"))
    GetCodeSecurityScanConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetCodeSecurityScanConfigurationResponse.type = Types::GetCodeSecurityScanConfigurationResponse
    GetCodeSecurityScanRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityScanRequest.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityUuid, name: "scanId", traits: {"smithy.api#required" => {}}))
    GetCodeSecurityScanRequest.type = Types::GetCodeSecurityScanRequest
    GetCodeSecurityScanResponse.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityUuid, name: "scanId"))
    GetCodeSecurityScanResponse.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource"))
    GetCodeSecurityScanResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId"))
    GetCodeSecurityScanResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeScanStatus, name: "status"))
    GetCodeSecurityScanResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    GetCodeSecurityScanResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetCodeSecurityScanResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetCodeSecurityScanResponse.add_member(:last_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastCommitId"))
    GetCodeSecurityScanResponse.type = Types::GetCodeSecurityScanResponse
    GetConfigurationInput.type = Types::GetConfigurationInput
    GetConfigurationOutput.add_member(:ecr_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrConfigurationState, name: "ecrConfiguration"))
    GetConfigurationOutput.add_member(:ec2_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ConfigurationState, name: "ec2Configuration"))
    GetConfigurationOutput.type = Types::GetConfigurationOutput
    GetDelegatedAdminAccountInput.type = Types::GetDelegatedAdminAccountInput
    GetDelegatedAdminAccountOutput.add_member(:delegated_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedAdmin, name: "delegatedAdmin"))
    GetDelegatedAdminAccountOutput.type = Types::GetDelegatedAdminAccountOutput
    GetEc2DeepInspectionConfigurationRequest.type = Types::GetEc2DeepInspectionConfigurationRequest
    GetEc2DeepInspectionConfigurationResponse.add_member(:package_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "packagePaths"))
    GetEc2DeepInspectionConfigurationResponse.add_member(:org_package_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "orgPackagePaths"))
    GetEc2DeepInspectionConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2DeepInspectionStatus, name: "status"))
    GetEc2DeepInspectionConfigurationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage"))
    GetEc2DeepInspectionConfigurationResponse.type = Types::GetEc2DeepInspectionConfigurationResponse
    GetEncryptionKeyRequest.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "scanType", traits: {"smithy.api#httpQuery" => "scanType", "smithy.api#required" => {}}))
    GetEncryptionKeyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetEncryptionKeyRequest.type = Types::GetEncryptionKeyRequest
    GetEncryptionKeyResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    GetEncryptionKeyResponse.type = Types::GetEncryptionKeyResponse
    GetFindingsReportStatusInput.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId"))
    GetFindingsReportStatusInput.type = Types::GetFindingsReportStatusInput
    GetFindingsReportStatusOutput.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId"))
    GetFindingsReportStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalReportStatus, name: "status"))
    GetFindingsReportStatusOutput.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportingErrorCode, name: "errorCode"))
    GetFindingsReportStatusOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    GetFindingsReportStatusOutput.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "destination"))
    GetFindingsReportStatusOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "filterCriteria"))
    GetFindingsReportStatusOutput.type = Types::GetFindingsReportStatusOutput
    GetMemberInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    GetMemberInput.type = Types::GetMemberInput
    GetMemberOutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Member, name: "member"))
    GetMemberOutput.type = Types::GetMemberOutput
    GetSbomExportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#required" => {}}))
    GetSbomExportRequest.type = Types::GetSbomExportRequest
    GetSbomExportResponse.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId"))
    GetSbomExportResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: SbomReportFormat, name: "format"))
    GetSbomExportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalReportStatus, name: "status"))
    GetSbomExportResponse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportingErrorCode, name: "errorCode"))
    GetSbomExportResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage"))
    GetSbomExportResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "s3Destination"))
    GetSbomExportResponse.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilterCriteria, name: "filterCriteria"))
    GetSbomExportResponse.type = Types::GetSbomExportResponse
    ImageLayerAggregation.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "repositories"))
    ImageLayerAggregation.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceIds"))
    ImageLayerAggregation.add_member(:layer_hashes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "layerHashes"))
    ImageLayerAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ImageLayerAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLayerSortBy, name: "sortBy"))
    ImageLayerAggregation.type = Types::ImageLayerAggregation
    ImageLayerAggregationResponse.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "repository", traits: {"smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:layer_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "layerHash", traits: {"smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    ImageLayerAggregationResponse.type = Types::ImageLayerAggregationResponse
    ImageTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    InspectorScoreDetails.add_member(:adjusted_cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreDetails, name: "adjustedCvss"))
    InspectorScoreDetails.type = Types::InspectorScoreDetails
    IntegrationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    IntegrationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    IntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IntegrationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    IntegrationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    IntegrationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationSummary, name: "member")
    IntegrationType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GITLAB_SELF_MANAGED"}))
    IntegrationType.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpV4AddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4Address, name: "member")
    IpV6AddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpV6Address, name: "member")
    LambdaFunctionAggregation.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceIds"))
    LambdaFunctionAggregation.add_member(:function_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "functionNames"))
    LambdaFunctionAggregation.add_member(:runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "runtimes"))
    LambdaFunctionAggregation.add_member(:function_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapFilterList, name: "functionTags"))
    LambdaFunctionAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    LambdaFunctionAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionSortBy, name: "sortBy"))
    LambdaFunctionAggregation.type = Types::LambdaFunctionAggregation
    LambdaFunctionAggregationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    LambdaFunctionAggregationResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "functionName"))
    LambdaFunctionAggregationResponse.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "runtime"))
    LambdaFunctionAggregationResponse.add_member(:lambda_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "lambdaTags"))
    LambdaFunctionAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    LambdaFunctionAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    LambdaFunctionAggregationResponse.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "lastModifiedAt"))
    LambdaFunctionAggregationResponse.type = Types::LambdaFunctionAggregationResponse
    LambdaFunctionMetadata.add_member(:function_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "functionTags"))
    LambdaFunctionMetadata.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerList, name: "layers"))
    LambdaFunctionMetadata.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "functionName"))
    LambdaFunctionMetadata.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "runtime"))
    LambdaFunctionMetadata.type = Types::LambdaFunctionMetadata
    LambdaLayerAggregation.add_member(:function_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "functionNames"))
    LambdaLayerAggregation.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "resourceIds"))
    LambdaLayerAggregation.add_member(:layer_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "layerArns"))
    LambdaLayerAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    LambdaLayerAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerSortBy, name: "sortBy"))
    LambdaLayerAggregation.type = Types::LambdaLayerAggregation
    LambdaLayerAggregationResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "functionName", traits: {"smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "layerArn", traits: {"smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    LambdaLayerAggregationResponse.type = Types::LambdaLayerAggregationResponse
    LambdaLayerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    LambdaVpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    LambdaVpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    LambdaVpcConfig.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    LambdaVpcConfig.type = Types::LambdaVpcConfig
    LayerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerArn, name: "member")
    ListAccountPermissionsInput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service"))
    ListAccountPermissionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccountPermissionsMaxResults, name: "maxResults"))
    ListAccountPermissionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccountPermissionsInput.type = Types::ListAccountPermissionsInput
    ListAccountPermissionsOutput.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: Permissions, name: "permissions", traits: {"smithy.api#required" => {}}))
    ListAccountPermissionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccountPermissionsOutput.type = Types::ListAccountPermissionsOutput
    ListCisScanConfigurationsFilterCriteria.add_member(:scan_name_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanNameFilterList, name: "scanNameFilters"))
    ListCisScanConfigurationsFilterCriteria.add_member(:target_resource_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagFilterList, name: "targetResourceTagFilters"))
    ListCisScanConfigurationsFilterCriteria.add_member(:scan_configuration_arn_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArnFilterList, name: "scanConfigurationArnFilters"))
    ListCisScanConfigurationsFilterCriteria.type = Types::ListCisScanConfigurationsFilterCriteria
    ListCisScanConfigurationsRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCisScanConfigurationsFilterCriteria, name: "filterCriteria"))
    ListCisScanConfigurationsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationsSortBy, name: "sortBy", traits: {"smithy.api#default" => "SCAN_NAME"}))
    ListCisScanConfigurationsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSortOrder, name: "sortOrder"))
    ListCisScanConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScanConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCisScanConfigurationsMaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListCisScanConfigurationsRequest.type = Types::ListCisScanConfigurationsRequest
    ListCisScanConfigurationsResponse.add_member(:scan_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationList, name: "scanConfigurations"))
    ListCisScanConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScanConfigurationsResponse.type = Types::ListCisScanConfigurationsResponse
    ListCisScanResultsAggregatedByChecksRequest.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultsAggregatedByChecksFilterCriteria, name: "filterCriteria"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultsAggregatedByChecksSortBy, name: "sortBy", traits: {"smithy.api#default" => "FAILED_COUNTS"}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSortOrder, name: "sortOrder"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultsMaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListCisScanResultsAggregatedByChecksRequest.type = Types::ListCisScanResultsAggregatedByChecksRequest
    ListCisScanResultsAggregatedByChecksResponse.add_member(:check_aggregations, ::Smithy::Schema::Shapes::MemberShape.new(target: CisCheckAggregationList, name: "checkAggregations"))
    ListCisScanResultsAggregatedByChecksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScanResultsAggregatedByChecksResponse.type = Types::ListCisScanResultsAggregatedByChecksResponse
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:scan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArn, name: "scanArn", traits: {"smithy.api#required" => {}}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultsAggregatedByTargetResourceFilterCriteria, name: "filterCriteria"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultsAggregatedByTargetResourceSortBy, name: "sortBy", traits: {"smithy.api#default" => "FAILED_COUNTS"}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSortOrder, name: "sortOrder"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanResultsMaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListCisScanResultsAggregatedByTargetResourceRequest.type = Types::ListCisScanResultsAggregatedByTargetResourceRequest
    ListCisScanResultsAggregatedByTargetResourceResponse.add_member(:target_resource_aggregations, ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetResourceAggregationList, name: "targetResourceAggregations"))
    ListCisScanResultsAggregatedByTargetResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScanResultsAggregatedByTargetResourceResponse.type = Types::ListCisScanResultsAggregatedByTargetResourceResponse
    ListCisScansDetailLevel.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ListCisScansDetailLevel.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER", traits: {"smithy.api#enumValue" => "MEMBER"}))
    ListCisScansFilterCriteria.add_member(:scan_name_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanNameFilterList, name: "scanNameFilters"))
    ListCisScansFilterCriteria.add_member(:target_resource_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagFilterList, name: "targetResourceTagFilters"))
    ListCisScansFilterCriteria.add_member(:target_resource_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdFilterList, name: "targetResourceIdFilters"))
    ListCisScansFilterCriteria.add_member(:scan_status_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanStatusFilterList, name: "scanStatusFilters"))
    ListCisScansFilterCriteria.add_member(:scan_at_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanDateFilterList, name: "scanAtFilters"))
    ListCisScansFilterCriteria.add_member(:scan_configuration_arn_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArnFilterList, name: "scanConfigurationArnFilters"))
    ListCisScansFilterCriteria.add_member(:scan_arn_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanArnFilterList, name: "scanArnFilters"))
    ListCisScansFilterCriteria.add_member(:scheduled_by_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScheduledByFilterList, name: "scheduledByFilters"))
    ListCisScansFilterCriteria.add_member(:failed_checks_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CisNumberFilterList, name: "failedChecksFilters"))
    ListCisScansFilterCriteria.add_member(:target_account_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdFilterList, name: "targetAccountIdFilters"))
    ListCisScansFilterCriteria.type = Types::ListCisScansFilterCriteria
    ListCisScansRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCisScansFilterCriteria, name: "filterCriteria"))
    ListCisScansRequest.add_member(:detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCisScansDetailLevel, name: "detailLevel"))
    ListCisScansRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCisScansSortBy, name: "sortBy", traits: {"smithy.api#default" => "SCAN_START_DATE"}))
    ListCisScansRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSortOrder, name: "sortOrder"))
    ListCisScansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCisScansMaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListCisScansRequest.type = Types::ListCisScansRequest
    ListCisScansResponse.add_member(:scans, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanList, name: "scans"))
    ListCisScansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCisScansResponse.type = Types::ListCisScansResponse
    ListCisScansSortBy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ListCisScansSortBy.add_member(:scheduled_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED_BY", traits: {"smithy.api#enumValue" => "SCHEDULED_BY"}))
    ListCisScansSortBy.add_member(:scan_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_START_DATE", traits: {"smithy.api#enumValue" => "SCAN_START_DATE"}))
    ListCisScansSortBy.add_member(:failed_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_CHECKS", traits: {"smithy.api#enumValue" => "FAILED_CHECKS"}))
    ListCodeSecurityIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCodeSecurityIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCodeSecurityIntegrationsRequest.type = Types::ListCodeSecurityIntegrationsRequest
    ListCodeSecurityIntegrationsResponse.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummaries, name: "integrations"))
    ListCodeSecurityIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCodeSecurityIntegrationsResponse.type = Types::ListCodeSecurityIntegrationsResponse
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCodeSecurityScanConfigurationAssociationsRequest.type = Types::ListCodeSecurityScanConfigurationAssociationsRequest
    ListCodeSecurityScanConfigurationAssociationsResponse.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfigurationAssociationSummaries, name: "associations"))
    ListCodeSecurityScanConfigurationAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeSecurityScanConfigurationAssociationsResponse.type = Types::ListCodeSecurityScanConfigurationAssociationsResponse
    ListCodeSecurityScanConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCodeSecurityScanConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCodeSecurityScanConfigurationsRequest.type = Types::ListCodeSecurityScanConfigurationsRequest
    ListCodeSecurityScanConfigurationsResponse.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfigurationSummaries, name: "configurations"))
    ListCodeSecurityScanConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeSecurityScanConfigurationsResponse.type = Types::ListCodeSecurityScanConfigurationsResponse
    ListCoverageInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCoverageMaxResults, name: "maxResults"))
    ListCoverageInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCoverageInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriteria, name: "filterCriteria"))
    ListCoverageInput.type = Types::ListCoverageInput
    ListCoverageOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCoverageOutput.add_member(:covered_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CoveredResources, name: "coveredResources"))
    ListCoverageOutput.type = Types::ListCoverageOutput
    ListCoverageStatisticsInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriteria, name: "filterCriteria"))
    ListCoverageStatisticsInput.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupKey, name: "groupBy"))
    ListCoverageStatisticsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCoverageStatisticsInput.type = Types::ListCoverageStatisticsInput
    ListCoverageStatisticsOutput.add_member(:counts_by_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CountsList, name: "countsByGroup"))
    ListCoverageStatisticsOutput.add_member(:total_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "totalCounts", traits: {"smithy.api#required" => {}}))
    ListCoverageStatisticsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCoverageStatisticsOutput.type = Types::ListCoverageStatisticsOutput
    ListDelegatedAdminAccountsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDelegatedAdminMaxResults, name: "maxResults"))
    ListDelegatedAdminAccountsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDelegatedAdminAccountsInput.type = Types::ListDelegatedAdminAccountsInput
    ListDelegatedAdminAccountsOutput.add_member(:delegated_admin_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedAdminAccountList, name: "delegatedAdminAccounts"))
    ListDelegatedAdminAccountsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDelegatedAdminAccountsOutput.type = Types::ListDelegatedAdminAccountsOutput
    ListFiltersInput.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArnList, name: "arns"))
    ListFiltersInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "action"))
    ListFiltersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFiltersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFilterMaxResults, name: "maxResults"))
    ListFiltersInput.type = Types::ListFiltersInput
    ListFiltersOutput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters", traits: {"smithy.api#required" => {}}))
    ListFiltersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFiltersOutput.type = Types::ListFiltersOutput
    ListFindingAggregationsInput.add_member(:aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationType, name: "aggregationType", traits: {"smithy.api#required" => {}}))
    ListFindingAggregationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFindingAggregationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFindingAggregationsMaxResults, name: "maxResults"))
    ListFindingAggregationsInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "accountIds"))
    ListFindingAggregationsInput.add_member(:aggregation_request, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationRequest, name: "aggregationRequest"))
    ListFindingAggregationsInput.type = Types::ListFindingAggregationsInput
    ListFindingAggregationsOutput.add_member(:aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationType, name: "aggregationType", traits: {"smithy.api#required" => {}}))
    ListFindingAggregationsOutput.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationResponseList, name: "responses"))
    ListFindingAggregationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFindingAggregationsOutput.type = Types::ListFindingAggregationsOutput
    ListFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFindingsMaxResults, name: "maxResults"))
    ListFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFindingsInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "filterCriteria"))
    ListFindingsInput.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "sortCriteria"))
    ListFindingsInput.type = Types::ListFindingsInput
    ListFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingList, name: "findings"))
    ListFindingsOutput.type = Types::ListFindingsOutput
    ListMembersInput.add_member(:only_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "onlyAssociated"))
    ListMembersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMembersMaxResults, name: "maxResults"))
    ListMembersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMembersInput.type = Types::ListMembersInput
    ListMembersOutput.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberList, name: "members"))
    ListMembersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMembersOutput.type = Types::ListMembersOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListUsageTotalsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListUsageTotalsMaxResults, name: "maxResults"))
    ListUsageTotalsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListUsageTotalsNextToken, name: "nextToken"))
    ListUsageTotalsInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAccountIdList, name: "accountIds"))
    ListUsageTotalsInput.type = Types::ListUsageTotalsInput
    ListUsageTotalsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListUsageTotalsNextToken, name: "nextToken"))
    ListUsageTotalsOutput.add_member(:totals, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTotalList, name: "totals"))
    ListUsageTotalsOutput.type = Types::ListUsageTotalsOutput
    MapFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: MapComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    MapFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MapKey, name: "key", traits: {"smithy.api#required" => {}}))
    MapFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MapValue, name: "value"))
    MapFilter.type = Types::MapFilter
    MapFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MapFilter, name: "member")
    Member.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    Member.add_member(:relationship_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipStatus, name: "relationshipStatus"))
    Member.add_member(:delegated_admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "delegatedAdminAccountId"))
    Member.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "updatedAt"))
    Member.type = Types::Member
    MemberAccountEc2DeepInspectionStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    MemberAccountEc2DeepInspectionStatus.add_member(:activate_deep_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "activateDeepInspection", traits: {"smithy.api#required" => {}}))
    MemberAccountEc2DeepInspectionStatus.type = Types::MemberAccountEc2DeepInspectionStatus
    MemberAccountEc2DeepInspectionStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountEc2DeepInspectionStatus, name: "member")
    MemberAccountEc2DeepInspectionStatusState.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    MemberAccountEc2DeepInspectionStatusState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2DeepInspectionStatus, name: "status"))
    MemberAccountEc2DeepInspectionStatusState.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage"))
    MemberAccountEc2DeepInspectionStatusState.type = Types::MemberAccountEc2DeepInspectionStatusState
    MemberAccountEc2DeepInspectionStatusStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountEc2DeepInspectionStatusState, name: "member")
    MemberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Member, name: "member")
    MeteringAccountIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MeteringAccountId, name: "member")
    MonthlySchedule.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime", traits: {"smithy.api#required" => {}}))
    MonthlySchedule.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: Day, name: "day", traits: {"smithy.api#required" => {}}))
    MonthlySchedule.type = Types::MonthlySchedule
    NetworkPath.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepList, name: "steps"))
    NetworkPath.type = Types::NetworkPath
    NetworkReachabilityDetails.add_member(:open_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "openPortRange", traits: {"smithy.api#required" => {}}))
    NetworkReachabilityDetails.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    NetworkReachabilityDetails.add_member(:network_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkPath, name: "networkPath", traits: {"smithy.api#required" => {}}))
    NetworkReachabilityDetails.type = Types::NetworkReachabilityDetails
    NonEmptyStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    NumberFilter.add_member(:upper_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "upperInclusive"))
    NumberFilter.add_member(:lower_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "lowerInclusive"))
    NumberFilter.type = Types::NumberFilter
    NumberFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilter, name: "member")
    OneAccountIdFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    OneTimeSchedule.type = Types::OneTimeSchedule
    PackageAggregation.add_member(:package_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "packageNames"))
    PackageAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    PackageAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageSortBy, name: "sortBy"))
    PackageAggregation.type = Types::PackageAggregation
    PackageAggregationResponse.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "packageName", traits: {"smithy.api#required" => {}}))
    PackageAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    PackageAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    PackageAggregationResponse.type = Types::PackageAggregationResponse
    PackageFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "name"))
    PackageFilter.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "version"))
    PackageFilter.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilter, name: "epoch"))
    PackageFilter.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "release"))
    PackageFilter.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "architecture"))
    PackageFilter.add_member(:source_layer_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "sourceLayerHash"))
    PackageFilter.add_member(:source_lambda_layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "sourceLambdaLayerArn"))
    PackageFilter.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "filePath"))
    PackageFilter.type = Types::PackageFilter
    PackageFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFilter, name: "member")
    PackageVulnerabilityDetails.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId, name: "vulnerabilityId", traits: {"smithy.api#required" => {}}))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackageList, name: "vulnerablePackages"))
    PackageVulnerabilityDetails.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "source", traits: {"smithy.api#required" => {}}))
    PackageVulnerabilityDetails.add_member(:cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreList, name: "cvss"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityIdList, name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, name: "referenceUrls"))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    PathList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "member")
    PeriodicScanConfiguration.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: PeriodicScanFrequency, name: "frequency"))
    PeriodicScanConfiguration.add_member(:frequency_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FrequencyExpression, name: "frequencyExpression"))
    PeriodicScanConfiguration.type = Types::PeriodicScanConfiguration
    PeriodicScanFrequency.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "WEEKLY"}))
    PeriodicScanFrequency.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    PeriodicScanFrequency.add_member(:never, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEVER", traits: {"smithy.api#enumValue" => "NEVER"}))
    Permission.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    Permission.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "operation", traits: {"smithy.api#required" => {}}))
    Permission.type = Types::Permission
    Permissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "member")
    PlatformFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    PortRange.add_member(:begin, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "begin", traits: {"smithy.api#required" => {}}))
    PortRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "end", traits: {"smithy.api#required" => {}}))
    PortRange.type = Types::PortRange
    PortRangeFilter.add_member(:begin_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "beginInclusive"))
    PortRangeFilter.add_member(:end_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "endInclusive"))
    PortRangeFilter.type = Types::PortRangeFilter
    PortRangeFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeFilter, name: "member")
    ProjectCodeSecurityScanConfiguration.add_member(:periodic_scan_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectPeriodicScanConfigurationList, name: "periodicScanConfigurations"))
    ProjectCodeSecurityScanConfiguration.add_member(:continuous_integration_scan_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectContinuousIntegrationScanConfigurationList, name: "continuousIntegrationScanConfigurations"))
    ProjectCodeSecurityScanConfiguration.type = Types::ProjectCodeSecurityScanConfiguration
    ProjectContinuousIntegrationScanConfiguration.add_member(:supported_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousIntegrationScanEvent, name: "supportedEvent"))
    ProjectContinuousIntegrationScanConfiguration.add_member(:rule_set_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetCategories, name: "ruleSetCategories"))
    ProjectContinuousIntegrationScanConfiguration.type = Types::ProjectContinuousIntegrationScanConfiguration
    ProjectContinuousIntegrationScanConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectContinuousIntegrationScanConfiguration, name: "member")
    ProjectPeriodicScanConfiguration.add_member(:frequency_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FrequencyExpression, name: "frequencyExpression"))
    ProjectPeriodicScanConfiguration.add_member(:rule_set_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetCategories, name: "ruleSetCategories"))
    ProjectPeriodicScanConfiguration.type = Types::ProjectPeriodicScanConfiguration
    ProjectPeriodicScanConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectPeriodicScanConfiguration, name: "member")
    ProjectSelectionScope.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Recommendation.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "text"))
    Recommendation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Url"))
    Recommendation.type = Types::Recommendation
    ReferenceUrls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    RelatedVulnerabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedVulnerability, name: "member")
    Remediation.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "recommendation"))
    Remediation.type = Types::Remediation
    ReportTargetAccounts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    RepositoryAggregation.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "repositories"))
    RepositoryAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    RepositoryAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySortBy, name: "sortBy"))
    RepositoryAggregation.type = Types::RepositoryAggregation
    RepositoryAggregationResponse.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "repository", traits: {"smithy.api#required" => {}}))
    RepositoryAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    RepositoryAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    RepositoryAggregationResponse.add_member(:affected_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "affectedImages"))
    RepositoryAggregationResponse.type = Types::RepositoryAggregationResponse
    ResetEncryptionKeyRequest.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "scanType", traits: {"smithy.api#required" => {}}))
    ResetEncryptionKeyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResetEncryptionKeyRequest.type = Types::ResetEncryptionKeyRequest
    ResetEncryptionKeyResponse.type = Types::ResetEncryptionKeyResponse
    Resource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "type", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:partition, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "partition"))
    Resource.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "region"))
    Resource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Resource.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "details"))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:aws_ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEc2InstanceDetails, name: "awsEc2Instance"))
    ResourceDetails.add_member(:aws_ecr_container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEcrContainerImageDetails, name: "awsEcrContainerImage"))
    ResourceDetails.add_member(:aws_lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsLambdaFunctionDetails, name: "awsLambdaFunction"))
    ResourceDetails.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryDetails, name: "codeRepository"))
    ResourceDetails.type = Types::ResourceDetails
    ResourceFilterCriteria.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilterList, name: "accountId"))
    ResourceFilterCriteria.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilterList, name: "resourceId"))
    ResourceFilterCriteria.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilterList, name: "resourceType"))
    ResourceFilterCriteria.add_member(:ecr_repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilterList, name: "ecrRepositoryName"))
    ResourceFilterCriteria.add_member(:lambda_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilterList, name: "lambdaFunctionName"))
    ResourceFilterCriteria.add_member(:ecr_image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilterList, name: "ecrImageTags"))
    ResourceFilterCriteria.add_member(:ec2_instance_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapFilterList, name: "ec2InstanceTags"))
    ResourceFilterCriteria.add_member(:lambda_function_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapFilterList, name: "lambdaFunctionTags"))
    ResourceFilterCriteria.type = Types::ResourceFilterCriteria
    ResourceIdFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    ResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member")
    ResourceMapFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    ResourceMapFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key", traits: {"smithy.api#required" => {}}))
    ResourceMapFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    ResourceMapFilter.type = Types::ResourceMapFilter
    ResourceMapFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapFilter, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceScanMetadata.add_member(:ecr_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRepositoryMetadata, name: "ecrRepository"))
    ResourceScanMetadata.add_member(:ecr_image, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrContainerImageMetadata, name: "ecrImage"))
    ResourceScanMetadata.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Metadata, name: "ec2"))
    ResourceScanMetadata.add_member(:lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMetadata, name: "lambdaFunction"))
    ResourceScanMetadata.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRepositoryMetadata, name: "codeRepository"))
    ResourceScanMetadata.type = Types::ResourceScanMetadata
    ResourceState.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "ec2", traits: {"smithy.api#required" => {}}))
    ResourceState.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "ecr", traits: {"smithy.api#required" => {}}))
    ResourceState.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "lambda"))
    ResourceState.add_member(:lambda_code, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "lambdaCode"))
    ResourceState.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "codeRepository"))
    ResourceState.type = Types::ResourceState
    ResourceStatus.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "ec2", traits: {"smithy.api#required" => {}}))
    ResourceStatus.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "ecr", traits: {"smithy.api#required" => {}}))
    ResourceStatus.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "lambda"))
    ResourceStatus.add_member(:lambda_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "lambdaCode"))
    ResourceStatus.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "codeRepository"))
    ResourceStatus.type = Types::ResourceStatus
    ResourceStringFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    ResourceStringFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringInput, name: "value", traits: {"smithy.api#required" => {}}))
    ResourceStringFilter.type = Types::ResourceStringFilter
    ResourceStringFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStringFilter, name: "member")
    ResourceTagFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "member")
    RuleSetCategories.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetCategory, name: "member")
    RuleSetCategory.add_member(:sast, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAST", traits: {"smithy.api#enumValue" => "SAST"}))
    RuleSetCategory.add_member(:iac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAC", traits: {"smithy.api#enumValue" => "IAC"}))
    RuleSetCategory.add_member(:sca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCA", traits: {"smithy.api#enumValue" => "SCA"}))
    ScanStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatusCode, name: "statusCode", traits: {"smithy.api#required" => {}}))
    ScanStatus.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatusReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ScanStatus.type = Types::ScanStatus
    Schedule.add_member(:one_time, Types::Schedule::OneTime, ::Smithy::Schema::Shapes::MemberShape.new(target: OneTimeSchedule, name: "oneTime"))
    Schedule.add_member(:daily, Types::Schedule::Daily, ::Smithy::Schema::Shapes::MemberShape.new(target: DailySchedule, name: "daily"))
    Schedule.add_member(:weekly, Types::Schedule::Weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklySchedule, name: "weekly"))
    Schedule.add_member(:monthly, Types::Schedule::Monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlySchedule, name: "monthly"))
    Schedule.add_member(:unknown, Types::Schedule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Schedule.type = Types::Schedule
    ScopeSettings.add_member(:project_selection_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSelectionScope, name: "projectSelectionScope"))
    ScopeSettings.type = Types::ScopeSettings
    SearchVulnerabilitiesFilterCriteria.add_member(:vulnerability_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnIdList, name: "vulnerabilityIds", traits: {"smithy.api#required" => {}}))
    SearchVulnerabilitiesFilterCriteria.type = Types::SearchVulnerabilitiesFilterCriteria
    SearchVulnerabilitiesRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchVulnerabilitiesFilterCriteria, name: "filterCriteria", traits: {"smithy.api#required" => {}}))
    SearchVulnerabilitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchVulnerabilitiesRequest.type = Types::SearchVulnerabilitiesRequest
    SearchVulnerabilitiesResponse.add_member(:vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Vulnerabilities, name: "vulnerabilities", traits: {"smithy.api#required" => {}}))
    SearchVulnerabilitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchVulnerabilitiesResponse.type = Types::SearchVulnerabilitiesResponse
    SecurityGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member")
    SendCisSessionHealthRequest.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "scanJobId", traits: {"smithy.api#required" => {}}))
    SendCisSessionHealthRequest.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    SendCisSessionHealthRequest.type = Types::SendCisSessionHealthRequest
    SendCisSessionHealthResponse.type = Types::SendCisSessionHealthResponse
    SendCisSessionTelemetryRequest.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "scanJobId", traits: {"smithy.api#required" => {}}))
    SendCisSessionTelemetryRequest.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    SendCisSessionTelemetryRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSessionMessages, name: "messages", traits: {"smithy.api#required" => {}}))
    SendCisSessionTelemetryRequest.type = Types::SendCisSessionTelemetryRequest
    SendCisSessionTelemetryResponse.type = Types::SendCisSessionTelemetryResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SeverityCounts.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "all"))
    SeverityCounts.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "medium"))
    SeverityCounts.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "high"))
    SeverityCounts.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "critical"))
    SeverityCounts.type = Types::SeverityCounts
    SortCriteria.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: SortField, name: "field", traits: {"smithy.api#required" => {}}))
    SortCriteria.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    SortCriteria.type = Types::SortCriteria
    StartCisSessionMessage.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    StartCisSessionMessage.type = Types::StartCisSessionMessage
    StartCisSessionRequest.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "scanJobId", traits: {"smithy.api#required" => {}}))
    StartCisSessionRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StartCisSessionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    StartCisSessionRequest.type = Types::StartCisSessionRequest
    StartCisSessionResponse.type = Types::StartCisSessionResponse
    StartCodeSecurityScanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartCodeSecurityScanRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource", traits: {"smithy.api#required" => {}}))
    StartCodeSecurityScanRequest.type = Types::StartCodeSecurityScanRequest
    StartCodeSecurityScanResponse.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityUuid, name: "scanId"))
    StartCodeSecurityScanResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeScanStatus, name: "status"))
    StartCodeSecurityScanResponse.type = Types::StartCodeSecurityScanResponse
    State.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    State.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    State.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    State.type = Types::State
    StatusCounts.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "failed"))
    StatusCounts.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "skipped"))
    StatusCounts.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "passed"))
    StatusCounts.type = Types::StatusCounts
    Step.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "componentId", traits: {"smithy.api#required" => {}}))
    Step.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "componentType", traits: {"smithy.api#required" => {}}))
    Step.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentArn, name: "componentArn"))
    Step.type = Types::Step
    StepList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Step, name: "member")
    StopCisMessageProgress.add_member(:total_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "totalChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:successful_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "successfulChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:failed_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "failedChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:not_evaluated_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "notEvaluatedChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:unknown_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "unknownChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:not_applicable_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "notApplicableChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:informational_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "informationalChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.add_member(:error_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCount, name: "errorChecks", traits: {"smithy.api#default" => 0}))
    StopCisMessageProgress.type = Types::StopCisMessageProgress
    StopCisSessionMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StopCisSessionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StopCisSessionMessage.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "reason"))
    StopCisSessionMessage.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: StopCisMessageProgress, name: "progress", traits: {"smithy.api#required" => {}}))
    StopCisSessionMessage.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    StopCisSessionMessage.add_member(:benchmark_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BenchmarkVersion, name: "benchmarkVersion"))
    StopCisSessionMessage.add_member(:benchmark_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: BenchmarkProfile, name: "benchmarkProfile"))
    StopCisSessionMessage.type = Types::StopCisSessionMessage
    StopCisSessionRequest.add_member(:scan_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "scanJobId", traits: {"smithy.api#required" => {}}))
    StopCisSessionRequest.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    StopCisSessionRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StopCisSessionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    StopCisSessionRequest.type = Types::StopCisSessionRequest
    StopCisSessionResponse.type = Types::StopCisSessionResponse
    StopCisSessionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    StopCisSessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StopCisSessionStatus.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    StopCisSessionStatus.add_member(:unsupported_os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_OS", traits: {"smithy.api#enumValue" => "UNSUPPORTED_OS"}))
    StringFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: StringComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    StringFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringInput, name: "value", traits: {"smithy.api#required" => {}}))
    StringFilter.type = Types::StringFilter
    StringFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "member")
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    SubnetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member")
    SuccessfulAssociationResult.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn"))
    SuccessfulAssociationResult.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityResource, name: "resource"))
    SuccessfulAssociationResult.type = Types::SuccessfulAssociationResult
    SuccessfulAssociationResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulAssociationResult, name: "member")
    SuggestedFix.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    SuggestedFix.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}}))
    SuggestedFix.type = Types::SuggestedFix
    SuggestedFixes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedFix, name: "member")
    TagComparison.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    TagFilter.add_member(:comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: TagComparison, name: "comparison", traits: {"smithy.api#required" => {}}))
    TagFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key", traits: {"smithy.api#required" => {}}))
    TagFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    TagFilter.type = Types::TagFilter
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MapKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MapValue, name: "value")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTagsValue, name: "member")
    TargetAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccount, name: "member")
    TargetResourceTags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTagsKey, name: "key")
    TargetResourceTags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "value")
    TargetStatusFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatusFilter, name: "member")
    TargetStatusReasonFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisTargetStatusReasonFilter, name: "member")
    Targets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Time.add_member(:time_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, name: "timeOfDay", traits: {"smithy.api#required" => {}}))
    Time.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "timezone", traits: {"smithy.api#required" => {}}))
    Time.type = Types::Time
    TitleAggregation.add_member(:titles, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "titles"))
    TitleAggregation.add_member(:vulnerability_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterList, name: "vulnerabilityIds"))
    TitleAggregation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationResourceType, name: "resourceType"))
    TitleAggregation.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    TitleAggregation.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TitleSortBy, name: "sortBy"))
    TitleAggregation.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationFindingType, name: "findingType"))
    TitleAggregation.type = Types::TitleAggregation
    TitleAggregationResponse.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "title", traits: {"smithy.api#required" => {}}))
    TitleAggregationResponse.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vulnerabilityId"))
    TitleAggregationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    TitleAggregationResponse.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    TitleAggregationResponse.type = Types::TitleAggregationResponse
    TitleFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CisStringFilter, name: "member")
    Tools.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tool, name: "member")
    Ttps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ttp, name: "member")
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCisScanConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateCisScanConfigurationRequest.add_member(:scan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanName, name: "scanName"))
    UpdateCisScanConfigurationRequest.add_member(:security_level, ::Smithy::Schema::Shapes::MemberShape.new(target: CisSecurityLevel, name: "securityLevel"))
    UpdateCisScanConfigurationRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    UpdateCisScanConfigurationRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCisTargets, name: "targets"))
    UpdateCisScanConfigurationRequest.type = Types::UpdateCisScanConfigurationRequest
    UpdateCisScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CisScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateCisScanConfigurationResponse.type = Types::UpdateCisScanConfigurationResponse
    UpdateCisTargets.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountList, name: "accountIds"))
    UpdateCisTargets.add_member(:target_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTags, name: "targetResourceTags"))
    UpdateCisTargets.type = Types::UpdateCisTargets
    UpdateCodeSecurityIntegrationRequest.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateIntegrationDetails, name: "details", traits: {"smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationRequest.type = Types::UpdateCodeSecurityIntegrationRequest
    UpdateCodeSecurityIntegrationResponse.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityIntegrationArn, name: "integrationArn", traits: {"smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationResponse.type = Types::UpdateCodeSecurityIntegrationResponse
    UpdateCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateCodeSecurityScanConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSecurityScanConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    UpdateCodeSecurityScanConfigurationRequest.type = Types::UpdateCodeSecurityScanConfigurationRequest
    UpdateCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationArn, name: "scanConfigurationArn"))
    UpdateCodeSecurityScanConfigurationResponse.type = Types::UpdateCodeSecurityScanConfigurationResponse
    UpdateConfigurationInput.add_member(:ecr_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrConfiguration, name: "ecrConfiguration"))
    UpdateConfigurationInput.add_member(:ec2_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Configuration, name: "ec2Configuration"))
    UpdateConfigurationInput.type = Types::UpdateConfigurationInput
    UpdateConfigurationOutput.type = Types::UpdateConfigurationOutput
    UpdateEc2DeepInspectionConfigurationRequest.add_member(:activate_deep_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "activateDeepInspection"))
    UpdateEc2DeepInspectionConfigurationRequest.add_member(:package_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "packagePaths"))
    UpdateEc2DeepInspectionConfigurationRequest.type = Types::UpdateEc2DeepInspectionConfigurationRequest
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:package_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "packagePaths"))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:org_package_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "orgPackagePaths"))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2DeepInspectionStatus, name: "status"))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage"))
    UpdateEc2DeepInspectionConfigurationResponse.type = Types::UpdateEc2DeepInspectionConfigurationResponse
    UpdateEncryptionKeyRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    UpdateEncryptionKeyRequest.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "scanType", traits: {"smithy.api#required" => {}}))
    UpdateEncryptionKeyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    UpdateEncryptionKeyRequest.type = Types::UpdateEncryptionKeyRequest
    UpdateEncryptionKeyResponse.type = Types::UpdateEncryptionKeyResponse
    UpdateFilterInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "action"))
    UpdateFilterInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDescription, name: "description"))
    UpdateFilterInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "filterCriteria"))
    UpdateFilterInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name"))
    UpdateFilterInput.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "filterArn", traits: {"smithy.api#required" => {}}))
    UpdateFilterInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterReason, name: "reason"))
    UpdateFilterInput.type = Types::UpdateFilterInput
    UpdateFilterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateFilterOutput.type = Types::UpdateFilterOutput
    UpdateGitHubIntegrationDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubAuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    UpdateGitHubIntegrationDetail.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubInstallationId, name: "installationId", traits: {"smithy.api#required" => {}}))
    UpdateGitHubIntegrationDetail.type = Types::UpdateGitHubIntegrationDetail
    UpdateGitLabSelfManagedIntegrationDetail.add_member(:auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabAuthCode, name: "authCode", traits: {"smithy.api#required" => {}}))
    UpdateGitLabSelfManagedIntegrationDetail.type = Types::UpdateGitLabSelfManagedIntegrationDetail
    UpdateIntegrationDetails.add_member(:gitlab_self_managed, Types::UpdateIntegrationDetails::GitlabSelfManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateGitLabSelfManagedIntegrationDetail, name: "gitlabSelfManaged"))
    UpdateIntegrationDetails.add_member(:github, Types::UpdateIntegrationDetails::Github, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateGitHubIntegrationDetail, name: "github"))
    UpdateIntegrationDetails.add_member(:unknown, Types::UpdateIntegrationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpdateIntegrationDetails.type = Types::UpdateIntegrationDetails
    UpdateOrgEc2DeepInspectionConfigurationRequest.add_member(:org_package_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "orgPackagePaths", traits: {"smithy.api#required" => {}}))
    UpdateOrgEc2DeepInspectionConfigurationRequest.type = Types::UpdateOrgEc2DeepInspectionConfigurationRequest
    UpdateOrgEc2DeepInspectionConfigurationResponse.type = Types::UpdateOrgEc2DeepInspectionConfigurationResponse
    UpdateOrganizationConfigurationInput.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoEnable, name: "autoEnable", traits: {"smithy.api#required" => {}}))
    UpdateOrganizationConfigurationInput.type = Types::UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoEnable, name: "autoEnable", traits: {"smithy.api#required" => {}}))
    UpdateOrganizationConfigurationOutput.type = Types::UpdateOrganizationConfigurationOutput
    Usage.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageType, name: "type"))
    Usage.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageValue, name: "total", traits: {"smithy.api#default" => 0}))
    Usage.add_member(:estimated_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyCostEstimate, name: "estimatedMonthlyCost", traits: {"smithy.api#default" => 0}))
    Usage.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    Usage.type = Types::Usage
    UsageAccountIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAccountId, name: "member")
    UsageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Usage, name: "member")
    UsageTotal.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteringAccountId, name: "accountId"))
    UsageTotal.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageList, name: "usage"))
    UsageTotal.type = Types::UsageTotal
    UsageTotalList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTotal, name: "member")
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFields, name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")
    VulnIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VulnId, name: "member")
    Vulnerabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Vulnerability, name: "member")
    Vulnerability.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id", traits: {"smithy.api#required" => {}}))
    Vulnerability.add_member(:cwes, ::Smithy::Schema::Shapes::MemberShape.new(target: Cwes, name: "cwes"))
    Vulnerability.add_member(:cisa_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CisaData, name: "cisaData"))
    Vulnerability.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilitySource, name: "source"))
    Vulnerability.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityDescription, name: "description"))
    Vulnerability.add_member(:atig_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AtigData, name: "atigData"))
    Vulnerability.add_member(:vendor_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorSeverity, name: "vendorSeverity"))
    Vulnerability.add_member(:cvss4, ::Smithy::Schema::Shapes::MemberShape.new(target: Cvss4, name: "cvss4"))
    Vulnerability.add_member(:cvss3, ::Smithy::Schema::Shapes::MemberShape.new(target: Cvss3, name: "cvss3"))
    Vulnerability.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedVulnerabilities, name: "relatedVulnerabilities"))
    Vulnerability.add_member(:cvss2, ::Smithy::Schema::Shapes::MemberShape.new(target: Cvss2, name: "cvss2"))
    Vulnerability.add_member(:vendor_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorCreatedAt, name: "vendorCreatedAt"))
    Vulnerability.add_member(:vendor_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorUpdatedAt, name: "vendorUpdatedAt"))
    Vulnerability.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilitySourceUrl, name: "sourceUrl"))
    Vulnerability.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityReferenceUrls, name: "referenceUrls"))
    Vulnerability.add_member(:exploit_observed, ::Smithy::Schema::Shapes::MemberShape.new(target: ExploitObserved, name: "exploitObserved"))
    Vulnerability.add_member(:detection_platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionPlatforms, name: "detectionPlatforms"))
    Vulnerability.add_member(:epss, ::Smithy::Schema::Shapes::MemberShape.new(target: Epss, name: "epss"))
    Vulnerability.type = Types::Vulnerability
    VulnerabilityIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId, name: "member")
    VulnerabilityReferenceUrls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityReferenceUrl, name: "member")
    VulnerablePackage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "name", traits: {"smithy.api#required" => {}}))
    VulnerablePackage.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version", traits: {"smithy.api#required" => {}}))
    VulnerablePackage.add_member(:source_layer_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLayerHash, name: "sourceLayerHash"))
    VulnerablePackage.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageEpoch, name: "epoch", traits: {"smithy.api#default" => 0}))
    VulnerablePackage.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageRelease, name: "release"))
    VulnerablePackage.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageArchitecture, name: "arch"))
    VulnerablePackage.add_member(:package_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageManager, name: "packageManager"))
    VulnerablePackage.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, name: "filePath"))
    VulnerablePackage.add_member(:fixed_in_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "fixedInVersion"))
    VulnerablePackage.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackageRemediation, name: "remediation"))
    VulnerablePackage.add_member(:source_lambda_layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLayerArn, name: "sourceLambdaLayerArn"))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackage, name: "member")
    WeeklySchedule.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime", traits: {"smithy.api#required" => {}}))
    WeeklySchedule.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysList, name: "days", traits: {"smithy.api#required" => {}}))
    WeeklySchedule.type = Types::WeeklySchedule

    Inspector2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.inspector2#Inspector2"
      service.name = "Inspector2"
      service.version = "2020-06-08"
      service.traits = {"aws.api#service" => {"sdkId" => "Inspector2", "arnNamespace" => "inspector2", "cloudTrailEventSource" => "inspector2.amazon.aws", "cloudFormationName" => "Inspector2"}, "aws.auth#sigv4" => {"name" => "inspector2"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*"]}, "smithy.api#title" => "Inspector2"}
      service.add_operation(:associate_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#AssociateMember"
        operation.name = "AssociateMember"
        operation.input = AssociateMemberInput
        operation.output = AssociateMemberOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/associate"}}
      end)
      service.add_operation(:batch_associate_code_security_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchAssociateCodeSecurityScanConfiguration"
        operation.name = "BatchAssociateCodeSecurityScanConfiguration"
        operation.input = BatchAssociateCodeSecurityScanConfigurationRequest
        operation.output = BatchAssociateCodeSecurityScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/batch/associate"}}
      end)
      service.add_operation(:batch_disassociate_code_security_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchDisassociateCodeSecurityScanConfiguration"
        operation.name = "BatchDisassociateCodeSecurityScanConfiguration"
        operation.input = BatchDisassociateCodeSecurityScanConfigurationRequest
        operation.output = BatchDisassociateCodeSecurityScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/batch/disassociate"}}
      end)
      service.add_operation(:batch_get_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetAccountStatus"
        operation.name = "BatchGetAccountStatus"
        operation.input = BatchGetAccountStatusInput
        operation.output = BatchGetAccountStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/status/batch/get"}}
      end)
      service.add_operation(:batch_get_code_snippet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetCodeSnippet"
        operation.name = "BatchGetCodeSnippet"
        operation.input = BatchGetCodeSnippetRequest
        operation.output = BatchGetCodeSnippetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesnippet/batchget"}}
      end)
      service.add_operation(:batch_get_finding_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetFindingDetails"
        operation.name = "BatchGetFindingDetails"
        operation.input = BatchGetFindingDetailsRequest
        operation.output = BatchGetFindingDetailsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/findings/details/batch/get"}}
      end)
      service.add_operation(:batch_get_free_trial_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetFreeTrialInfo"
        operation.name = "BatchGetFreeTrialInfo"
        operation.input = BatchGetFreeTrialInfoInput
        operation.output = BatchGetFreeTrialInfoOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/freetrialinfo/batchget"}}
      end)
      service.add_operation(:batch_get_member_ec2_deep_inspection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetMemberEc2DeepInspectionStatus"
        operation.name = "BatchGetMemberEc2DeepInspectionStatus"
        operation.input = BatchGetMemberEc2DeepInspectionStatusRequest
        operation.output = BatchGetMemberEc2DeepInspectionStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionstatus/member/batch/get"}}
      end)
      service.add_operation(:batch_update_member_ec2_deep_inspection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchUpdateMemberEc2DeepInspectionStatus"
        operation.name = "BatchUpdateMemberEc2DeepInspectionStatus"
        operation.input = BatchUpdateMemberEc2DeepInspectionStatusRequest
        operation.output = BatchUpdateMemberEc2DeepInspectionStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionstatus/member/batch/update"}}
      end)
      service.add_operation(:cancel_findings_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CancelFindingsReport"
        operation.name = "CancelFindingsReport"
        operation.input = CancelFindingsReportInput
        operation.output = CancelFindingsReportOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reporting/cancel"}}
      end)
      service.add_operation(:cancel_sbom_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CancelSbomExport"
        operation.name = "CancelSbomExport"
        operation.input = CancelSbomExportRequest
        operation.output = CancelSbomExportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sbomexport/cancel"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cis_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateCisScanConfiguration"
        operation.name = "CreateCisScanConfiguration"
        operation.input = CreateCisScanConfigurationRequest
        operation.output = CreateCisScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/create"}}
      end)
      service.add_operation(:create_code_security_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateCodeSecurityIntegration"
        operation.name = "CreateCodeSecurityIntegration"
        operation.input = CreateCodeSecurityIntegrationRequest
        operation.output = CreateCodeSecurityIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/create"}}
      end)
      service.add_operation(:create_code_security_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateCodeSecurityScanConfiguration"
        operation.name = "CreateCodeSecurityScanConfiguration"
        operation.input = CreateCodeSecurityScanConfigurationRequest
        operation.output = CreateCodeSecurityScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/create"}}
      end)
      service.add_operation(:create_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateFilter"
        operation.name = "CreateFilter"
        operation.input = CreateFilterInput
        operation.output = CreateFilterOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/create"}}
      end)
      service.add_operation(:create_findings_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateFindingsReport"
        operation.name = "CreateFindingsReport"
        operation.input = CreateFindingsReportInput
        operation.output = CreateFindingsReportOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reporting/create"}}
      end)
      service.add_operation(:create_sbom_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateSbomExport"
        operation.name = "CreateSbomExport"
        operation.input = CreateSbomExportRequest
        operation.output = CreateSbomExportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sbomexport/create"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cis_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteCisScanConfiguration"
        operation.name = "DeleteCisScanConfiguration"
        operation.input = DeleteCisScanConfigurationRequest
        operation.output = DeleteCisScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/delete"}}
      end)
      service.add_operation(:delete_code_security_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteCodeSecurityIntegration"
        operation.name = "DeleteCodeSecurityIntegration"
        operation.input = DeleteCodeSecurityIntegrationRequest
        operation.output = DeleteCodeSecurityIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/delete"}}
      end)
      service.add_operation(:delete_code_security_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteCodeSecurityScanConfiguration"
        operation.name = "DeleteCodeSecurityScanConfiguration"
        operation.input = DeleteCodeSecurityScanConfigurationRequest
        operation.output = DeleteCodeSecurityScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/delete"}}
      end)
      service.add_operation(:delete_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteFilter"
        operation.name = "DeleteFilter"
        operation.input = DeleteFilterInput
        operation.output = DeleteFilterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/delete"}}
      end)
      service.add_operation(:describe_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = DescribeOrganizationConfigurationInput
        operation.output = DescribeOrganizationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/organizationconfiguration/describe"}}
      end)
      service.add_operation(:disable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#Disable"
        operation.name = "Disable"
        operation.input = DisableInput
        operation.output = DisableOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/disable"}}
      end)
      service.add_operation(:disable_delegated_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DisableDelegatedAdminAccount"
        operation.name = "DisableDelegatedAdminAccount"
        operation.input = DisableDelegatedAdminAccountInput
        operation.output = DisableDelegatedAdminAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/disable"}}
      end)
      service.add_operation(:disassociate_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DisassociateMember"
        operation.name = "DisassociateMember"
        operation.input = DisassociateMemberInput
        operation.output = DisassociateMemberOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/disassociate"}}
      end)
      service.add_operation(:enable, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#Enable"
        operation.name = "Enable"
        operation.input = EnableInput
        operation.output = EnableOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/enable"}}
      end)
      service.add_operation(:enable_delegated_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#EnableDelegatedAdminAccount"
        operation.name = "EnableDelegatedAdminAccount"
        operation.input = EnableDelegatedAdminAccountInput
        operation.output = EnableDelegatedAdminAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/enable"}}
      end)
      service.add_operation(:get_cis_scan_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCisScanReport"
        operation.name = "GetCisScanReport"
        operation.input = GetCisScanReportRequest
        operation.output = GetCisScanReportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan/report/get"}}
      end)
      service.add_operation(:get_cis_scan_result_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCisScanResultDetails"
        operation.name = "GetCisScanResultDetails"
        operation.input = GetCisScanResultDetailsRequest
        operation.output = GetCisScanResultDetailsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-result/details/get"}}
        operation[:paginator] = Paginators::GetCisScanResultDetails.new
      end)
      service.add_operation(:get_clusters_for_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetClustersForImage"
        operation.name = "GetClustersForImage"
        operation.input = GetClustersForImageRequest
        operation.output = GetClustersForImageResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/get"}}
        operation[:paginator] = Paginators::GetClustersForImage.new
      end)
      service.add_operation(:get_code_security_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCodeSecurityIntegration"
        operation.name = "GetCodeSecurityIntegration"
        operation.input = GetCodeSecurityIntegrationRequest
        operation.output = GetCodeSecurityIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/get"}}
      end)
      service.add_operation(:get_code_security_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCodeSecurityScan"
        operation.name = "GetCodeSecurityScan"
        operation.input = GetCodeSecurityScanRequest
        operation.output = GetCodeSecurityScanResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_code_security_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCodeSecurityScanConfiguration"
        operation.name = "GetCodeSecurityScanConfiguration"
        operation.input = GetCodeSecurityScanConfigurationRequest
        operation.output = GetCodeSecurityScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/get"}}
      end)
      service.add_operation(:get_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = GetConfigurationInput
        operation.output = GetConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuration/get"}}
      end)
      service.add_operation(:get_delegated_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetDelegatedAdminAccount"
        operation.name = "GetDelegatedAdminAccount"
        operation.input = GetDelegatedAdminAccountInput
        operation.output = GetDelegatedAdminAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/get"}}
      end)
      service.add_operation(:get_ec2_deep_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetEc2DeepInspectionConfiguration"
        operation.name = "GetEc2DeepInspectionConfiguration"
        operation.input = GetEc2DeepInspectionConfigurationRequest
        operation.output = GetEc2DeepInspectionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionconfiguration/get"}}
      end)
      service.add_operation(:get_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetEncryptionKey"
        operation.name = "GetEncryptionKey"
        operation.input = GetEncryptionKeyRequest
        operation.output = GetEncryptionKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/encryptionkey/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_findings_report_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetFindingsReportStatus"
        operation.name = "GetFindingsReportStatus"
        operation.input = GetFindingsReportStatusInput
        operation.output = GetFindingsReportStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reporting/status/get"}}
      end)
      service.add_operation(:get_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetMember"
        operation.name = "GetMember"
        operation.input = GetMemberInput
        operation.output = GetMemberOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/get"}}
      end)
      service.add_operation(:get_sbom_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetSbomExport"
        operation.name = "GetSbomExport"
        operation.input = GetSbomExportRequest
        operation.output = GetSbomExportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sbomexport/get"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_account_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListAccountPermissions"
        operation.name = "ListAccountPermissions"
        operation.input = ListAccountPermissionsInput
        operation.output = ListAccountPermissionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/accountpermissions/list"}}
        operation[:paginator] = Paginators::ListAccountPermissions.new
      end)
      service.add_operation(:list_cis_scan_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScanConfigurations"
        operation.name = "ListCisScanConfigurations"
        operation.input = ListCisScanConfigurationsRequest
        operation.output = ListCisScanConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/list"}}
        operation[:paginator] = Paginators::ListCisScanConfigurations.new
      end)
      service.add_operation(:list_cis_scan_results_aggregated_by_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScanResultsAggregatedByChecks"
        operation.name = "ListCisScanResultsAggregatedByChecks"
        operation.input = ListCisScanResultsAggregatedByChecksRequest
        operation.output = ListCisScanResultsAggregatedByChecksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-result/check/list"}}
        operation[:paginator] = Paginators::ListCisScanResultsAggregatedByChecks.new
      end)
      service.add_operation(:list_cis_scan_results_aggregated_by_target_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScanResultsAggregatedByTargetResource"
        operation.name = "ListCisScanResultsAggregatedByTargetResource"
        operation.input = ListCisScanResultsAggregatedByTargetResourceRequest
        operation.output = ListCisScanResultsAggregatedByTargetResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-result/resource/list"}}
        operation[:paginator] = Paginators::ListCisScanResultsAggregatedByTargetResource.new
      end)
      service.add_operation(:list_cis_scans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScans"
        operation.name = "ListCisScans"
        operation.input = ListCisScansRequest
        operation.output = ListCisScansResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan/list"}}
        operation[:paginator] = Paginators::ListCisScans.new
      end)
      service.add_operation(:list_code_security_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCodeSecurityIntegrations"
        operation.name = "ListCodeSecurityIntegrations"
        operation.input = ListCodeSecurityIntegrationsRequest
        operation.output = ListCodeSecurityIntegrationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/list"}}
      end)
      service.add_operation(:list_code_security_scan_configuration_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCodeSecurityScanConfigurationAssociations"
        operation.name = "ListCodeSecurityScanConfigurationAssociations"
        operation.input = ListCodeSecurityScanConfigurationAssociationsRequest
        operation.output = ListCodeSecurityScanConfigurationAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/associations/list"}}
      end)
      service.add_operation(:list_code_security_scan_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCodeSecurityScanConfigurations"
        operation.name = "ListCodeSecurityScanConfigurations"
        operation.input = ListCodeSecurityScanConfigurationsRequest
        operation.output = ListCodeSecurityScanConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/list"}}
      end)
      service.add_operation(:list_coverage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCoverage"
        operation.name = "ListCoverage"
        operation.input = ListCoverageInput
        operation.output = ListCoverageOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/coverage/list"}}
        operation[:paginator] = Paginators::ListCoverage.new
      end)
      service.add_operation(:list_coverage_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCoverageStatistics"
        operation.name = "ListCoverageStatistics"
        operation.input = ListCoverageStatisticsInput
        operation.output = ListCoverageStatisticsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/coverage/statistics/list"}}
        operation[:paginator] = Paginators::ListCoverageStatistics.new
      end)
      service.add_operation(:list_delegated_admin_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListDelegatedAdminAccounts"
        operation.name = "ListDelegatedAdminAccounts"
        operation.input = ListDelegatedAdminAccountsInput
        operation.output = ListDelegatedAdminAccountsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/list"}}
        operation[:paginator] = Paginators::ListDelegatedAdminAccounts.new
      end)
      service.add_operation(:list_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListFilters"
        operation.name = "ListFilters"
        operation.input = ListFiltersInput
        operation.output = ListFiltersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/list"}}
        operation[:paginator] = Paginators::ListFilters.new
      end)
      service.add_operation(:list_finding_aggregations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListFindingAggregations"
        operation.name = "ListFindingAggregations"
        operation.input = ListFindingAggregationsInput
        operation.output = ListFindingAggregationsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/findings/aggregation/list"}}
        operation[:paginator] = Paginators::ListFindingAggregations.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListFindings"
        operation.name = "ListFindings"
        operation.input = ListFindingsInput
        operation.output = ListFindingsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/findings/list"}}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListMembers"
        operation.name = "ListMembers"
        operation.input = ListMembersInput
        operation.output = ListMembersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/list"}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_usage_totals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListUsageTotals"
        operation.name = "ListUsageTotals"
        operation.input = ListUsageTotalsInput
        operation.output = ListUsageTotalsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/usage/list"}}
        operation[:paginator] = Paginators::ListUsageTotals.new
      end)
      service.add_operation(:reset_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ResetEncryptionKey"
        operation.name = "ResetEncryptionKey"
        operation.input = ResetEncryptionKeyRequest
        operation.output = ResetEncryptionKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/encryptionkey/reset"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_vulnerabilities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#SearchVulnerabilities"
        operation.name = "SearchVulnerabilities"
        operation.input = SearchVulnerabilitiesRequest
        operation.output = SearchVulnerabilitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/vulnerabilities/search"}}
        operation[:paginator] = Paginators::SearchVulnerabilities.new
      end)
      service.add_operation(:send_cis_session_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#SendCisSessionHealth"
        operation.name = "SendCisSessionHealth"
        operation.input = SendCisSessionHealthRequest
        operation.output = SendCisSessionHealthResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/health/send"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_cis_session_telemetry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#SendCisSessionTelemetry"
        operation.name = "SendCisSessionTelemetry"
        operation.input = SendCisSessionTelemetryRequest
        operation.output = SendCisSessionTelemetryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/telemetry/send"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_cis_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#StartCisSession"
        operation.name = "StartCisSession"
        operation.input = StartCisSessionRequest
        operation.output = StartCisSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_code_security_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#StartCodeSecurityScan"
        operation.name = "StartCodeSecurityScan"
        operation.input = StartCodeSecurityScanRequest
        operation.output = StartCodeSecurityScanResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan/start"}}
      end)
      service.add_operation(:stop_cis_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#StopCisSession"
        operation.name = "StopCisSession"
        operation.input = StopCisSessionRequest
        operation.output = StopCisSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}}
      end)
      service.add_operation(:update_cis_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateCisScanConfiguration"
        operation.name = "UpdateCisScanConfiguration"
        operation.input = UpdateCisScanConfigurationRequest
        operation.output = UpdateCisScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/update"}}
      end)
      service.add_operation(:update_code_security_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateCodeSecurityIntegration"
        operation.name = "UpdateCodeSecurityIntegration"
        operation.input = UpdateCodeSecurityIntegrationRequest
        operation.output = UpdateCodeSecurityIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/update"}}
      end)
      service.add_operation(:update_code_security_scan_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateCodeSecurityScanConfiguration"
        operation.name = "UpdateCodeSecurityScanConfiguration"
        operation.input = UpdateCodeSecurityScanConfigurationRequest
        operation.output = UpdateCodeSecurityScanConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/update"}}
      end)
      service.add_operation(:update_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateConfiguration"
        operation.name = "UpdateConfiguration"
        operation.input = UpdateConfigurationInput
        operation.output = UpdateConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuration/update"}}
      end)
      service.add_operation(:update_ec2_deep_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateEc2DeepInspectionConfiguration"
        operation.name = "UpdateEc2DeepInspectionConfiguration"
        operation.input = UpdateEc2DeepInspectionConfigurationRequest
        operation.output = UpdateEc2DeepInspectionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionconfiguration/update"}}
      end)
      service.add_operation(:update_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateEncryptionKey"
        operation.name = "UpdateEncryptionKey"
        operation.input = UpdateEncryptionKeyRequest
        operation.output = UpdateEncryptionKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/encryptionkey/update"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateFilter"
        operation.name = "UpdateFilter"
        operation.input = UpdateFilterInput
        operation.output = UpdateFilterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/update"}}
      end)
      service.add_operation(:update_org_ec2_deep_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateOrgEc2DeepInspectionConfiguration"
        operation.name = "UpdateOrgEc2DeepInspectionConfiguration"
        operation.input = UpdateOrgEc2DeepInspectionConfigurationRequest
        operation.output = UpdateOrgEc2DeepInspectionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionconfiguration/org/update"}}
      end)
      service.add_operation(:update_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = UpdateOrganizationConfigurationInput
        operation.output = UpdateOrganizationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/organizationconfiguration/update"}}
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
