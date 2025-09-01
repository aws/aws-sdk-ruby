# frozen_string_literal: true

# This is generated code!

module Aws::Inspector2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Account', name: 'Account')
    AccountAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AccountAggregation', name: 'AccountAggregation')
    AccountAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AccountAggregationResponse', name: 'AccountAggregationResponse')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AccountIdFilterList', name: 'AccountIdFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AccountIdSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AccountIdSet', name: 'AccountIdSet', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#uniqueItems" => {}})
    AccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AccountList', name: 'AccountList')
    AccountSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AccountSortBy', name: 'AccountSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    AccountState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AccountState', name: 'AccountState')
    AccountStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AccountStateList', name: 'AccountStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AggCounts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#AggCounts', name: 'AggCounts', traits: {"smithy.api#default" => 0})
    AggregationFindingType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AggregationFindingType', name: 'AggregationFindingType', traits: {"smithy.api#enum" => [{"value" => "NETWORK_REACHABILITY", "name" => "NETWORK_REACHABILITY"}, {"value" => "PACKAGE_VULNERABILITY", "name" => "PACKAGE_VULNERABILITY"}, {"value" => "CODE_VULNERABILITY", "name" => "CODE_VULNERABILITY"}]})
    AggregationRequest = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#AggregationRequest', name: 'AggregationRequest')
    AggregationResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AggregationResourceType', name: 'AggregationResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER_IMAGE", "name" => "AWS_ECR_CONTAINER_IMAGE"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    AggregationResponse = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#AggregationResponse', name: 'AggregationResponse')
    AggregationResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AggregationResponseList', name: 'AggregationResponseList')
    AggregationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AggregationType', name: 'AggregationType', traits: {"smithy.api#enum" => [{"value" => "FINDING_TYPE", "name" => "FINDING_TYPE"}, {"value" => "PACKAGE", "name" => "PACKAGE"}, {"value" => "TITLE", "name" => "TITLE"}, {"value" => "REPOSITORY", "name" => "REPOSITORY"}, {"value" => "AMI", "name" => "AMI"}, {"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER", "name" => "AWS_ECR_CONTAINER"}, {"value" => "IMAGE_LAYER", "name" => "IMAGE_LAYER"}, {"value" => "ACCOUNT", "name" => "ACCOUNT"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "LAMBDA_LAYER", "name" => "LAMBDA_LAYER"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    AmiAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AmiAggregation', name: 'AmiAggregation')
    AmiAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AmiAggregationResponse', name: 'AmiAggregationResponse')
    AmiId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AmiId', name: 'AmiId', traits: {"smithy.api#pattern" => "^ami-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    AmiSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AmiSortBy', name: 'AmiSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}, {"value" => "AFFECTED_INSTANCES", "name" => "AFFECTED_INSTANCES"}]})
    Architecture = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Architecture', name: 'Architecture', traits: {"smithy.api#enum" => [{"value" => "X86_64", "name" => "X86_64"}, {"value" => "ARM64", "name" => "ARM64"}]})
    ArchitectureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ArchitectureList', name: 'ArchitectureList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AssociateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AssociateConfigurationRequest', name: 'AssociateConfigurationRequest')
    AssociateConfigurationRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AssociateConfigurationRequestList', name: 'AssociateConfigurationRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    AssociateMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AssociateMemberInput', name: 'AssociateMemberInput')
    AssociateMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AssociateMemberOutput', name: 'AssociateMemberOutput')
    AssociationResultStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#AssociationResultStatusCode', name: 'AssociationResultStatusCode')
    AssociationResultStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AssociationResultStatusMessage', name: 'AssociationResultStatusMessage', traits: {"smithy.api#length" => {"min" => 1}})
    AtigData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AtigData', name: 'AtigData')
    AuthorizationUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AuthorizationUrl', name: 'AuthorizationUrl', traits: {"smithy.api#sensitive" => {}})
    AutoEnable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AutoEnable', name: 'AutoEnable')
    AwsEc2InstanceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEc2InstanceDetails', name: 'AwsEc2InstanceDetails')
    AwsEcrContainerAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEcrContainerAggregation', name: 'AwsEcrContainerAggregation')
    AwsEcrContainerAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEcrContainerAggregationResponse', name: 'AwsEcrContainerAggregationResponse')
    AwsEcrContainerImageDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEcrContainerImageDetails', name: 'AwsEcrContainerImageDetails')
    AwsEcrContainerSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#AwsEcrContainerSortBy', name: 'AwsEcrContainerSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    AwsEcsMetadataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEcsMetadataDetails', name: 'AwsEcsMetadataDetails')
    AwsEksMetadataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEksMetadataDetails', name: 'AwsEksMetadataDetails')
    AwsEksWorkloadInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsEksWorkloadInfo', name: 'AwsEksWorkloadInfo')
    AwsEksWorkloadInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#AwsEksWorkloadInfoList', name: 'AwsEksWorkloadInfoList', traits: {"smithy.api#length" => {"max" => 100}})
    AwsLambdaFunctionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#AwsLambdaFunctionDetails', name: 'AwsLambdaFunctionDetails')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchAssociateCodeSecurityScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchAssociateCodeSecurityScanConfigurationRequest', name: 'BatchAssociateCodeSecurityScanConfigurationRequest')
    BatchAssociateCodeSecurityScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchAssociateCodeSecurityScanConfigurationResponse', name: 'BatchAssociateCodeSecurityScanConfigurationResponse')
    BatchDisassociateCodeSecurityScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchDisassociateCodeSecurityScanConfigurationRequest', name: 'BatchDisassociateCodeSecurityScanConfigurationRequest')
    BatchDisassociateCodeSecurityScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchDisassociateCodeSecurityScanConfigurationResponse', name: 'BatchDisassociateCodeSecurityScanConfigurationResponse')
    BatchGetAccountStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetAccountStatusInput', name: 'BatchGetAccountStatusInput')
    BatchGetAccountStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetAccountStatusOutput', name: 'BatchGetAccountStatusOutput')
    BatchGetCodeSnippetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetCodeSnippetRequest', name: 'BatchGetCodeSnippetRequest')
    BatchGetCodeSnippetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetCodeSnippetResponse', name: 'BatchGetCodeSnippetResponse')
    BatchGetFindingDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetFindingDetailsRequest', name: 'BatchGetFindingDetailsRequest')
    BatchGetFindingDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetFindingDetailsResponse', name: 'BatchGetFindingDetailsResponse')
    BatchGetFreeTrialInfoInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetFreeTrialInfoInput', name: 'BatchGetFreeTrialInfoInput')
    BatchGetFreeTrialInfoOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetFreeTrialInfoOutput', name: 'BatchGetFreeTrialInfoOutput')
    BatchGetMemberEc2DeepInspectionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetMemberEc2DeepInspectionStatusRequest', name: 'BatchGetMemberEc2DeepInspectionStatusRequest')
    BatchGetMemberEc2DeepInspectionStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchGetMemberEc2DeepInspectionStatusResponse', name: 'BatchGetMemberEc2DeepInspectionStatusResponse')
    BatchUpdateMemberEc2DeepInspectionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchUpdateMemberEc2DeepInspectionStatusRequest', name: 'BatchUpdateMemberEc2DeepInspectionStatusRequest')
    BatchUpdateMemberEc2DeepInspectionStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#BatchUpdateMemberEc2DeepInspectionStatusResponse', name: 'BatchUpdateMemberEc2DeepInspectionStatusResponse')
    BenchmarkProfile = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#BenchmarkProfile', name: 'BenchmarkProfile', traits: {"smithy.api#length" => {"max" => 128}})
    BenchmarkVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#BenchmarkVersion', name: 'BenchmarkVersion', traits: {"smithy.api#length" => {"max" => 8}})
    CancelFindingsReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CancelFindingsReportInput', name: 'CancelFindingsReportInput')
    CancelFindingsReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CancelFindingsReportOutput', name: 'CancelFindingsReportOutput')
    CancelSbomExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CancelSbomExportRequest', name: 'CancelSbomExportRequest')
    CancelSbomExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CancelSbomExportResponse', name: 'CancelSbomExportResponse')
    CheckCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#CheckCount', name: 'CheckCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 65536}})
    CheckIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CheckIdFilterList', name: 'CheckIdFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisAccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisAccountIdList', name: 'CisAccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#uniqueItems" => {}})
    CisCheckAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisCheckAggregation', name: 'CisCheckAggregation')
    CisCheckAggregationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisCheckAggregationList', name: 'CisCheckAggregationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CisDateFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisDateFilter', name: 'CisDateFilter')
    CisFindingArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CisFindingArn', name: 'CisFindingArn', traits: {"smithy.api#pattern" => "^arn:aws(-gov|-cn)?:inspector2:[-.a-z0-9]{0,20}:\\d{12}:owner/\\d{12}/cis-finding/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    CisFindingArnFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisFindingArnFilterList', name: 'CisFindingArnFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisFindingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisFindingStatus', name: 'CisFindingStatus')
    CisFindingStatusComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisFindingStatusComparison', name: 'CisFindingStatusComparison')
    CisFindingStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisFindingStatusFilter', name: 'CisFindingStatusFilter')
    CisFindingStatusFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisFindingStatusFilterList', name: 'CisFindingStatusFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CisNumberFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisNumberFilter', name: 'CisNumberFilter')
    CisNumberFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisNumberFilterList', name: 'CisNumberFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CisOwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CisOwnerId', name: 'CisOwnerId', traits: {"smithy.api#pattern" => "^\\d{12}|o-[a-z0-9]{10,32}$"})
    CisReportFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisReportFormat', name: 'CisReportFormat')
    CisReportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisReportStatus', name: 'CisReportStatus')
    CisResultStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisResultStatus', name: 'CisResultStatus')
    CisResultStatusComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisResultStatusComparison', name: 'CisResultStatusComparison')
    CisResultStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisResultStatusFilter', name: 'CisResultStatusFilter')
    CisResultStatusFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisResultStatusFilterList', name: 'CisResultStatusFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisRuleDetails = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.inspector2#CisRuleDetails', name: 'CisRuleDetails', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    CisRuleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisRuleStatus', name: 'CisRuleStatus')
    CisScan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScan', name: 'CisScan')
    CisScanArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CisScanArn', name: 'CisScanArn', traits: {"smithy.api#pattern" => "^arn:aws(-us-gov|-cn)?:inspector2:[-.a-z0-9]{0,20}:\\d{12}:owner/(\\d{12}|o-[a-z0-9]{10,32})/cis-scan/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    CisScanArnFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanArnFilterList', name: 'CisScanArnFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScanConfiguration', name: 'CisScanConfiguration')
    CisScanConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CisScanConfigurationArn', name: 'CisScanConfigurationArn', traits: {"smithy.api#pattern" => "^arn:aws(-us-gov|-cn)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-[0-9]{1}:[0-9]{12}:owner/(o-[a-z0-9]+|[0-9]{12})/cis-configuration/[0-9a-fA-F-]+$"})
    CisScanConfigurationArnFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanConfigurationArnFilterList', name: 'CisScanConfigurationArnFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisScanConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanConfigurationList', name: 'CisScanConfigurationList', traits: {"smithy.api#length" => {"max" => 100}})
    CisScanConfigurationsSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisScanConfigurationsSortBy', name: 'CisScanConfigurationsSortBy')
    CisScanDateFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanDateFilterList', name: 'CisScanDateFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CisScanList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanList', name: 'CisScanList', traits: {"smithy.api#length" => {"max" => 50}})
    CisScanName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CisScanName', name: 'CisScanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    CisScanNameFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanNameFilterList', name: 'CisScanNameFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisScanResultDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScanResultDetails', name: 'CisScanResultDetails')
    CisScanResultDetailsFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScanResultDetailsFilterCriteria', name: 'CisScanResultDetailsFilterCriteria')
    CisScanResultDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanResultDetailsList', name: 'CisScanResultDetailsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CisScanResultDetailsSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisScanResultDetailsSortBy', name: 'CisScanResultDetailsSortBy')
    CisScanResultsAggregatedByChecksFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScanResultsAggregatedByChecksFilterCriteria', name: 'CisScanResultsAggregatedByChecksFilterCriteria')
    CisScanResultsAggregatedByChecksSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisScanResultsAggregatedByChecksSortBy', name: 'CisScanResultsAggregatedByChecksSortBy')
    CisScanResultsAggregatedByTargetResourceFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScanResultsAggregatedByTargetResourceFilterCriteria', name: 'CisScanResultsAggregatedByTargetResourceFilterCriteria')
    CisScanResultsAggregatedByTargetResourceSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisScanResultsAggregatedByTargetResourceSortBy', name: 'CisScanResultsAggregatedByTargetResourceSortBy')
    CisScanResultsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#CisScanResultsMaxResults', name: 'CisScanResultsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    CisScanStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisScanStatus', name: 'CisScanStatus')
    CisScanStatusComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisScanStatusComparison', name: 'CisScanStatusComparison')
    CisScanStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisScanStatusFilter', name: 'CisScanStatusFilter')
    CisScanStatusFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScanStatusFilterList', name: 'CisScanStatusFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CisScheduledByFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisScheduledByFilterList', name: 'CisScheduledByFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisSecurityLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisSecurityLevel', name: 'CisSecurityLevel')
    CisSecurityLevelComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisSecurityLevelComparison', name: 'CisSecurityLevelComparison')
    CisSecurityLevelFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisSecurityLevelFilter', name: 'CisSecurityLevelFilter')
    CisSecurityLevelFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisSecurityLevelFilterList', name: 'CisSecurityLevelFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CisSessionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisSessionMessage', name: 'CisSessionMessage')
    CisSessionMessages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisSessionMessages', name: 'CisSessionMessages', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CisSortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisSortOrder', name: 'CisSortOrder')
    CisStringComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisStringComparison', name: 'CisStringComparison')
    CisStringFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisStringFilter', name: 'CisStringFilter')
    CisTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector2#CisTagMap', name: 'CisTagMap')
    CisTargetResourceAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisTargetResourceAggregation', name: 'CisTargetResourceAggregation')
    CisTargetResourceAggregationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CisTargetResourceAggregationList', name: 'CisTargetResourceAggregationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CisTargetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisTargetStatus', name: 'CisTargetStatus')
    CisTargetStatusComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisTargetStatusComparison', name: 'CisTargetStatusComparison')
    CisTargetStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisTargetStatusFilter', name: 'CisTargetStatusFilter')
    CisTargetStatusReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CisTargetStatusReason', name: 'CisTargetStatusReason')
    CisTargetStatusReasonFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisTargetStatusReasonFilter', name: 'CisTargetStatusReasonFilter')
    CisTargets = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisTargets', name: 'CisTargets')
    CisaAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CisaAction', name: 'CisaAction', traits: {"smithy.api#length" => {"min" => 0}})
    CisaData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CisaData', name: 'CisaData')
    CisaDateAdded = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#CisaDateAdded', name: 'CisaDateAdded')
    CisaDateDue = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#CisaDateDue', name: 'CisaDateDue')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ClusterDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ClusterDetails', name: 'ClusterDetails')
    ClusterDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ClusterDetailsList', name: 'ClusterDetailsList')
    ClusterForImageFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ClusterForImageFilterCriteria', name: 'ClusterForImageFilterCriteria')
    ClusterInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ClusterInformation', name: 'ClusterInformation')
    ClusterInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ClusterInformationList', name: 'ClusterInformationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ClusterMetadata = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#ClusterMetadata', name: 'ClusterMetadata')
    CodeFilePath = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeFilePath', name: 'CodeFilePath')
    CodeLine = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeLine', name: 'CodeLine')
    CodeLineList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CodeLineList', name: 'CodeLineList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CodeRepositoryAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryAggregation', name: 'CodeRepositoryAggregation')
    CodeRepositoryAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryAggregationResponse', name: 'CodeRepositoryAggregationResponse')
    CodeRepositoryDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryDetails', name: 'CodeRepositoryDetails')
    CodeRepositoryIntegrationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryIntegrationArn', name: 'CodeRepositoryIntegrationArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration\\/[a-f0-9-]{36}$"})
    CodeRepositoryMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryMetadata', name: 'CodeRepositoryMetadata')
    CodeRepositoryOnDemandScan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryOnDemandScan', name: 'CodeRepositoryOnDemandScan')
    CodeRepositoryProjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryProjectName', name: 'CodeRepositoryProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CodeRepositoryProviderType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeRepositoryProviderType', name: 'CodeRepositoryProviderType', traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITLAB_SELF_MANAGED", "name" => "GITLAB_SELF_MANAGED"}]})
    CodeRepositorySortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeRepositorySortBy', name: 'CodeRepositorySortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    CodeScanStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#CodeScanStatus', name: 'CodeScanStatus')
    CodeSecurityClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeSecurityClientToken', name: 'CodeSecurityClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    CodeSecurityIntegrationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeSecurityIntegrationArn', name: 'CodeSecurityIntegrationArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration/[a-f0-9-]{36}$"})
    CodeSecurityIntegrationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeSecurityIntegrationSummary', name: 'CodeSecurityIntegrationSummary')
    CodeSecurityResource = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#CodeSecurityResource', name: 'CodeSecurityResource')
    CodeSecurityScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeSecurityScanConfiguration', name: 'CodeSecurityScanConfiguration')
    CodeSecurityScanConfigurationAssociationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CodeSecurityScanConfigurationAssociationSummaries', name: 'CodeSecurityScanConfigurationAssociationSummaries')
    CodeSecurityScanConfigurationAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeSecurityScanConfigurationAssociationSummary', name: 'CodeSecurityScanConfigurationAssociationSummary')
    CodeSecurityScanConfigurationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CodeSecurityScanConfigurationSummaries', name: 'CodeSecurityScanConfigurationSummaries')
    CodeSecurityScanConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeSecurityScanConfigurationSummary', name: 'CodeSecurityScanConfigurationSummary')
    CodeSecurityUuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeSecurityUuid', name: 'CodeSecurityUuid', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    CodeSnippetError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeSnippetError', name: 'CodeSnippetError')
    CodeSnippetErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CodeSnippetErrorCode', name: 'CodeSnippetErrorCode', traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "CODE_SNIPPET_NOT_FOUND", "name" => "CODE_SNIPPET_NOT_FOUND"}, {"value" => "INVALID_INPUT", "name" => "INVALID_INPUT"}]})
    CodeSnippetErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CodeSnippetErrorList', name: 'CodeSnippetErrorList')
    CodeSnippetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeSnippetResult', name: 'CodeSnippetResult')
    CodeSnippetResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CodeSnippetResultList', name: 'CodeSnippetResultList')
    CodeVulnerabilityDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CodeVulnerabilityDetails', name: 'CodeVulnerabilityDetails')
    CommitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CommitId', name: 'CommitId', traits: {"smithy.api#length" => {"max" => 40}, "smithy.api#pattern" => "^([a-f0-9]{40})$"})
    Component = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Component', name: 'Component')
    ComponentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ComponentArn', name: 'ComponentArn')
    ComponentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ComponentType', name: 'ComponentType')
    ComputePlatform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ComputePlatform', name: 'ComputePlatform')
    ConfigurationLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#ConfigurationLevel', name: 'ConfigurationLevel')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousIntegrationScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ContinuousIntegrationScanConfiguration', name: 'ContinuousIntegrationScanConfiguration')
    ContinuousIntegrationScanEvent = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#ContinuousIntegrationScanEvent', name: 'ContinuousIntegrationScanEvent')
    ContinuousIntegrationScanSupportedEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ContinuousIntegrationScanSupportedEvents', name: 'ContinuousIntegrationScanSupportedEvents', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Counts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Counts', name: 'Counts')
    CountsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CountsList', name: 'CountsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CoverageDateFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CoverageDateFilter', name: 'CoverageDateFilter')
    CoverageDateFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CoverageDateFilterList', name: 'CoverageDateFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CoverageFilterCriteria', name: 'CoverageFilterCriteria')
    CoverageMapComparison = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CoverageMapComparison', name: 'CoverageMapComparison', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    CoverageMapFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CoverageMapFilter', name: 'CoverageMapFilter')
    CoverageMapFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CoverageMapFilterList', name: 'CoverageMapFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageNumberFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CoverageNumberFilter', name: 'CoverageNumberFilter')
    CoverageNumberFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CoverageNumberFilterList', name: 'CoverageNumberFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CoverageResourceType', name: 'CoverageResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER_IMAGE", "name" => "AWS_ECR_CONTAINER_IMAGE"}, {"value" => "AWS_ECR_REPOSITORY", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    CoverageStringComparison = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CoverageStringComparison', name: 'CoverageStringComparison', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}]})
    CoverageStringFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CoverageStringFilter', name: 'CoverageStringFilter')
    CoverageStringFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CoverageStringFilterList', name: 'CoverageStringFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CoverageStringInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CoverageStringInput', name: 'CoverageStringInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    CoveredResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CoveredResource', name: 'CoveredResource')
    CoveredResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CoveredResources', name: 'CoveredResources')
    CreateCisScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCisScanConfigurationRequest', name: 'CreateCisScanConfigurationRequest')
    CreateCisScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCisScanConfigurationResponse', name: 'CreateCisScanConfigurationResponse')
    CreateCisTargets = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCisTargets', name: 'CreateCisTargets')
    CreateCodeSecurityIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCodeSecurityIntegrationRequest', name: 'CreateCodeSecurityIntegrationRequest')
    CreateCodeSecurityIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCodeSecurityIntegrationResponse', name: 'CreateCodeSecurityIntegrationResponse')
    CreateCodeSecurityScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCodeSecurityScanConfigurationRequest', name: 'CreateCodeSecurityScanConfigurationRequest')
    CreateCodeSecurityScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateCodeSecurityScanConfigurationResponse', name: 'CreateCodeSecurityScanConfigurationResponse')
    CreateFilterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateFilterInput', name: 'CreateFilterInput')
    CreateFilterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateFilterOutput', name: 'CreateFilterOutput')
    CreateFindingsReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateFindingsReportInput', name: 'CreateFindingsReportInput')
    CreateFindingsReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateFindingsReportOutput', name: 'CreateFindingsReportOutput')
    CreateGitLabSelfManagedIntegrationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateGitLabSelfManagedIntegrationDetail', name: 'CreateGitLabSelfManagedIntegrationDetail')
    CreateIntegrationDetail = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#CreateIntegrationDetail', name: 'CreateIntegrationDetail')
    CreateSbomExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateSbomExportRequest', name: 'CreateSbomExportRequest')
    CreateSbomExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CreateSbomExportResponse', name: 'CreateSbomExportResponse')
    Currency = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Currency', name: 'Currency', traits: {"smithy.api#enum" => [{"name" => "USD", "value" => "USD"}]})
    Cvss2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Cvss2', name: 'Cvss2')
    Cvss3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Cvss3', name: 'Cvss3')
    Cvss4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Cvss4', name: 'Cvss4')
    CvssBaseScore = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector2#CvssBaseScore', name: 'CvssBaseScore', traits: {"smithy.api#default" => 0})
    CvssScore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CvssScore', name: 'CvssScore')
    CvssScoreAdjustment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CvssScoreAdjustment', name: 'CvssScoreAdjustment')
    CvssScoreAdjustmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CvssScoreAdjustmentList', name: 'CvssScoreAdjustmentList')
    CvssScoreDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#CvssScoreDetails', name: 'CvssScoreDetails')
    CvssScoreList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CvssScoreList', name: 'CvssScoreList')
    CvssScoringVector = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#CvssScoringVector', name: 'CvssScoringVector', traits: {"smithy.api#length" => {"min" => 0}})
    Cwe = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Cwe', name: 'Cwe', traits: {"smithy.api#length" => {"min" => 0}})
    CweList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#CweList', name: 'CweList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Cwes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#Cwes', name: 'Cwes', traits: {"smithy.api#length" => {"min" => 0}})
    DailySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DailySchedule', name: 'DailySchedule')
    DateFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DateFilter', name: 'DateFilter')
    DateFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DateFilterList', name: 'DateFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DateTimeTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#DateTimeTimestamp', name: 'DateTimeTimestamp')
    Day = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#Day', name: 'Day')
    DaysList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DaysList', name: 'DaysList', traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#uniqueItems" => {}})
    DelegatedAdmin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DelegatedAdmin', name: 'DelegatedAdmin')
    DelegatedAdminAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DelegatedAdminAccount', name: 'DelegatedAdminAccount')
    DelegatedAdminAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DelegatedAdminAccountList', name: 'DelegatedAdminAccountList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    DelegatedAdminStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#DelegatedAdminStatus', name: 'DelegatedAdminStatus', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLE_IN_PROGRESS", "name" => "DISABLE_IN_PROGRESS"}]})
    DeleteCisScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteCisScanConfigurationRequest', name: 'DeleteCisScanConfigurationRequest')
    DeleteCisScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteCisScanConfigurationResponse', name: 'DeleteCisScanConfigurationResponse')
    DeleteCodeSecurityIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteCodeSecurityIntegrationRequest', name: 'DeleteCodeSecurityIntegrationRequest')
    DeleteCodeSecurityIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteCodeSecurityIntegrationResponse', name: 'DeleteCodeSecurityIntegrationResponse')
    DeleteCodeSecurityScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteCodeSecurityScanConfigurationRequest', name: 'DeleteCodeSecurityScanConfigurationRequest')
    DeleteCodeSecurityScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteCodeSecurityScanConfigurationResponse', name: 'DeleteCodeSecurityScanConfigurationResponse')
    DeleteFilterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteFilterInput', name: 'DeleteFilterInput')
    DeleteFilterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DeleteFilterOutput', name: 'DeleteFilterOutput')
    DescribeOrganizationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DescribeOrganizationConfigurationInput', name: 'DescribeOrganizationConfigurationInput')
    DescribeOrganizationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DescribeOrganizationConfigurationOutput', name: 'DescribeOrganizationConfigurationOutput')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Destination', name: 'Destination')
    DetectionPlatforms = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DetectionPlatforms', name: 'DetectionPlatforms', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DetectorTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DetectorTagList', name: 'DetectorTagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DisableDelegatedAdminAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisableDelegatedAdminAccountInput', name: 'DisableDelegatedAdminAccountInput')
    DisableDelegatedAdminAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisableDelegatedAdminAccountOutput', name: 'DisableDelegatedAdminAccountOutput')
    DisableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisableInput', name: 'DisableInput')
    DisableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisableOutput', name: 'DisableOutput')
    DisableResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DisableResourceTypeList', name: 'DisableResourceTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    DisassociateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisassociateConfigurationRequest', name: 'DisassociateConfigurationRequest')
    DisassociateConfigurationRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#DisassociateConfigurationRequestList', name: 'DisassociateConfigurationRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DisassociateMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisassociateMemberInput', name: 'DisassociateMemberInput')
    DisassociateMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#DisassociateMemberOutput', name: 'DisassociateMemberOutput')
    Ec2Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Ec2Configuration', name: 'Ec2Configuration')
    Ec2ConfigurationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Ec2ConfigurationState', name: 'Ec2ConfigurationState')
    Ec2DeepInspectionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Ec2DeepInspectionStatus', name: 'Ec2DeepInspectionStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVATED", "name" => "ACTIVATED"}, {"value" => "DEACTIVATED", "name" => "DEACTIVATED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    Ec2InstanceAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Ec2InstanceAggregation', name: 'Ec2InstanceAggregation')
    Ec2InstanceAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Ec2InstanceAggregationResponse', name: 'Ec2InstanceAggregationResponse')
    Ec2InstanceSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Ec2InstanceSortBy', name: 'Ec2InstanceSortBy', traits: {"smithy.api#enum" => [{"value" => "NETWORK_FINDINGS", "name" => "NETWORK_FINDINGS"}, {"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    Ec2Metadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Ec2Metadata', name: 'Ec2Metadata')
    Ec2Platform = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Ec2Platform', name: 'Ec2Platform', traits: {"smithy.api#enum" => [{"value" => "WINDOWS", "name" => "WINDOWS"}, {"value" => "LINUX", "name" => "LINUX"}, {"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "MACOS", "name" => "MACOS"}]})
    Ec2ScanMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Ec2ScanMode', name: 'Ec2ScanMode', traits: {"smithy.api#enum" => [{"value" => "EC2_SSM_AGENT_BASED", "name" => "EC2_SSM_AGENT_BASED"}, {"value" => "EC2_HYBRID", "name" => "EC2_HYBRID"}]})
    Ec2ScanModeState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Ec2ScanModeState', name: 'Ec2ScanModeState')
    Ec2ScanModeStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Ec2ScanModeStatus', name: 'Ec2ScanModeStatus', traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "PENDING", "name" => "PENDING"}]})
    EcrConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EcrConfiguration', name: 'EcrConfiguration')
    EcrConfigurationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EcrConfigurationState', name: 'EcrConfigurationState')
    EcrContainerImageMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EcrContainerImageMetadata', name: 'EcrContainerImageMetadata')
    EcrPullDateRescanDuration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EcrPullDateRescanDuration', name: 'EcrPullDateRescanDuration', traits: {"smithy.api#enum" => [{"value" => "DAYS_14", "name" => "DAYS_14"}, {"value" => "DAYS_30", "name" => "DAYS_30"}, {"value" => "DAYS_60", "name" => "DAYS_60"}, {"value" => "DAYS_90", "name" => "DAYS_90"}, {"value" => "DAYS_180", "name" => "DAYS_180"}]})
    EcrPullDateRescanMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EcrPullDateRescanMode', name: 'EcrPullDateRescanMode', traits: {"smithy.api#enum" => [{"value" => "LAST_PULL_DATE", "name" => "LAST_PULL_DATE"}, {"value" => "LAST_IN_USE_AT", "name" => "LAST_IN_USE_AT"}]})
    EcrRepositoryMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EcrRepositoryMetadata', name: 'EcrRepositoryMetadata')
    EcrRescanDuration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EcrRescanDuration', name: 'EcrRescanDuration', traits: {"smithy.api#enum" => [{"value" => "LIFETIME", "name" => "LIFETIME"}, {"value" => "DAYS_30", "name" => "DAYS_30"}, {"value" => "DAYS_180", "name" => "DAYS_180"}, {"value" => "DAYS_14", "name" => "DAYS_14"}, {"value" => "DAYS_60", "name" => "DAYS_60"}, {"value" => "DAYS_90", "name" => "DAYS_90"}]})
    EcrRescanDurationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EcrRescanDurationState', name: 'EcrRescanDurationState')
    EcrRescanDurationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EcrRescanDurationStatus', name: 'EcrRescanDurationStatus', traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    EcrScanFrequency = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EcrScanFrequency', name: 'EcrScanFrequency', traits: {"smithy.api#enum" => [{"value" => "MANUAL", "name" => "MANUAL"}, {"value" => "SCAN_ON_PUSH", "name" => "SCAN_ON_PUSH"}, {"value" => "CONTINUOUS_SCAN", "name" => "CONTINUOUS_SCAN"}]})
    EnableDelegatedAdminAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EnableDelegatedAdminAccountInput', name: 'EnableDelegatedAdminAccountInput')
    EnableDelegatedAdminAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EnableDelegatedAdminAccountOutput', name: 'EnableDelegatedAdminAccountOutput')
    EnableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EnableInput', name: 'EnableInput')
    EnableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EnableOutput', name: 'EnableOutput')
    EnableResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#EnableResourceTypeList', name: 'EnableResourceTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Epss = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Epss', name: 'Epss')
    EpssDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#EpssDetails', name: 'EpssDetails')
    EpssScore = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector2#EpssScore', name: 'EpssScore', traits: {"smithy.api#default" => 0})
    EpssScoreValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector2#EpssScoreValue', name: 'EpssScoreValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#enum" => [{"value" => "ALREADY_ENABLED", "name" => "ALREADY_ENABLED"}, {"value" => "ENABLE_IN_PROGRESS", "name" => "ENABLE_IN_PROGRESS"}, {"value" => "DISABLE_IN_PROGRESS", "name" => "DISABLE_IN_PROGRESS"}, {"value" => "SUSPEND_IN_PROGRESS", "name" => "SUSPEND_IN_PROGRESS"}, {"value" => "RESOURCE_NOT_FOUND", "name" => "RESOURCE_NOT_FOUND"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "SSM_UNAVAILABLE", "name" => "SSM_UNAVAILABLE"}, {"value" => "SSM_THROTTLED", "name" => "SSM_THROTTLED"}, {"value" => "EVENTBRIDGE_UNAVAILABLE", "name" => "EVENTBRIDGE_UNAVAILABLE"}, {"value" => "EVENTBRIDGE_THROTTLED", "name" => "EVENTBRIDGE_THROTTLED"}, {"value" => "RESOURCE_SCAN_NOT_DISABLED", "name" => "RESOURCE_SCAN_NOT_DISABLED"}, {"value" => "DISASSOCIATE_ALL_MEMBERS", "name" => "DISASSOCIATE_ALL_MEMBERS"}, {"value" => "ACCOUNT_IS_ISOLATED", "name" => "ACCOUNT_IS_ISOLATED"}, {"value" => "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "name" => "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED"}, {"value" => "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED", "name" => "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"}]})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ErrorMessage', name: 'ErrorMessage')
    Evidence = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Evidence', name: 'Evidence')
    EvidenceDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EvidenceDetail', name: 'EvidenceDetail', traits: {"smithy.api#length" => {"min" => 0}})
    EvidenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#EvidenceList', name: 'EvidenceList')
    EvidenceRule = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EvidenceRule', name: 'EvidenceRule', traits: {"smithy.api#length" => {"min" => 0}})
    EvidenceSeverity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#EvidenceSeverity', name: 'EvidenceSeverity', traits: {"smithy.api#length" => {"min" => 0}})
    ExecutionRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ExecutionRoleArn', name: 'ExecutionRoleArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    ExploitAvailable = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ExploitAvailable', name: 'ExploitAvailable', traits: {"smithy.api#enum" => [{"value" => "YES", "name" => "YES"}, {"value" => "NO", "name" => "NO"}]})
    ExploitObserved = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ExploitObserved', name: 'ExploitObserved')
    ExploitabilityDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ExploitabilityDetails', name: 'ExploitabilityDetails')
    ExternalReportStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ExternalReportStatus', name: 'ExternalReportStatus', traits: {"smithy.api#enum" => [{"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    FailedAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FailedAccount', name: 'FailedAccount')
    FailedAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FailedAccountList', name: 'FailedAccountList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FailedAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FailedAssociationResult', name: 'FailedAssociationResult')
    FailedAssociationResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FailedAssociationResultList', name: 'FailedAssociationResultList')
    FailedMemberAccountEc2DeepInspectionStatusState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FailedMemberAccountEc2DeepInspectionStatusState', name: 'FailedMemberAccountEc2DeepInspectionStatusState')
    FailedMemberAccountEc2DeepInspectionStatusStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FailedMemberAccountEc2DeepInspectionStatusStateList', name: 'FailedMemberAccountEc2DeepInspectionStatusStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FilePath', name: 'FilePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Filter', name: 'Filter')
    FilterAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FilterAction', name: 'FilterAction', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "SUPPRESS", "name" => "SUPPRESS"}]})
    FilterArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FilterArn', name: 'FilterArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FilterArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FilterArnList', name: 'FilterArnList')
    FilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FilterCriteria', name: 'FilterCriteria')
    FilterDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FilterDescription', name: 'FilterDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FilterList', name: 'FilterList')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FilterReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FilterReason', name: 'FilterReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Finding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Finding', name: 'Finding')
    FindingArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingArn', name: 'FindingArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:finding/[a-f0-9]{32}$"})
    FindingArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FindingArnList', name: 'FindingArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FindingArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FindingArns', name: 'FindingArns')
    FindingDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingDescription', name: 'FindingDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FindingDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FindingDetail', name: 'FindingDetail')
    FindingDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FindingDetails', name: 'FindingDetails', traits: {"smithy.api#length" => {"min" => 0}})
    FindingDetailsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FindingDetailsError', name: 'FindingDetailsError')
    FindingDetailsErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingDetailsErrorCode', name: 'FindingDetailsErrorCode', traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "FINDING_DETAILS_NOT_FOUND", "name" => "FINDING_DETAILS_NOT_FOUND"}, {"value" => "INVALID_INPUT", "name" => "INVALID_INPUT"}]})
    FindingDetailsErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FindingDetailsErrorList', name: 'FindingDetailsErrorList')
    FindingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FindingList', name: 'FindingList', traits: {"smithy.api#length" => {"max" => 25}})
    FindingStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingStatus', name: 'FindingStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "SUPPRESSED", "name" => "SUPPRESSED"}, {"value" => "CLOSED", "name" => "CLOSED"}]})
    FindingTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingTitle', name: 'FindingTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FindingType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingType', name: 'FindingType', traits: {"smithy.api#enum" => [{"value" => "NETWORK_REACHABILITY", "name" => "NETWORK_REACHABILITY"}, {"value" => "PACKAGE_VULNERABILITY", "name" => "PACKAGE_VULNERABILITY"}, {"value" => "CODE_VULNERABILITY", "name" => "CODE_VULNERABILITY"}]})
    FindingTypeAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FindingTypeAggregation', name: 'FindingTypeAggregation')
    FindingTypeAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FindingTypeAggregationResponse', name: 'FindingTypeAggregationResponse')
    FindingTypeSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FindingTypeSortBy', name: 'FindingTypeSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    FirstSeen = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#FirstSeen', name: 'FirstSeen')
    FixAvailable = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FixAvailable', name: 'FixAvailable', traits: {"smithy.api#enum" => [{"value" => "YES", "name" => "YES"}, {"value" => "NO", "name" => "NO"}, {"value" => "PARTIAL", "name" => "PARTIAL"}]})
    FreeTrialAccountInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FreeTrialAccountInfo', name: 'FreeTrialAccountInfo')
    FreeTrialAccountInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FreeTrialAccountInfoList', name: 'FreeTrialAccountInfoList')
    FreeTrialInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FreeTrialInfo', name: 'FreeTrialInfo')
    FreeTrialInfoError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#FreeTrialInfoError', name: 'FreeTrialInfoError')
    FreeTrialInfoErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FreeTrialInfoErrorCode', name: 'FreeTrialInfoErrorCode', traits: {"smithy.api#enum" => [{"name" => "ACCESS_DENIED", "value" => "ACCESS_DENIED"}, {"name" => "INTERNAL_ERROR", "value" => "INTERNAL_ERROR"}]})
    FreeTrialInfoErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FreeTrialInfoErrorList', name: 'FreeTrialInfoErrorList')
    FreeTrialInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#FreeTrialInfoList', name: 'FreeTrialInfoList')
    FreeTrialStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FreeTrialStatus', name: 'FreeTrialStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "INACTIVE", "value" => "INACTIVE"}]})
    FreeTrialType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FreeTrialType', name: 'FreeTrialType', traits: {"smithy.api#enum" => [{"name" => "EC2", "value" => "EC2"}, {"name" => "ECR", "value" => "ECR"}, {"name" => "LAMBDA", "value" => "LAMBDA"}, {"name" => "LAMBDA_CODE", "value" => "LAMBDA_CODE"}, {"name" => "CODE_REPOSITORY", "value" => "CODE_REPOSITORY"}]})
    FrequencyExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FrequencyExpression', name: 'FrequencyExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FunctionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#FunctionName', name: 'FunctionName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    GetCisScanReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCisScanReportRequest', name: 'GetCisScanReportRequest')
    GetCisScanReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCisScanReportResponse', name: 'GetCisScanReportResponse')
    GetCisScanResultDetailsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#GetCisScanResultDetailsMaxResults', name: 'GetCisScanResultDetailsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    GetCisScanResultDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCisScanResultDetailsRequest', name: 'GetCisScanResultDetailsRequest')
    GetCisScanResultDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCisScanResultDetailsResponse', name: 'GetCisScanResultDetailsResponse')
    GetClustersForImageNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#GetClustersForImageNextToken', name: 'GetClustersForImageNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    GetClustersForImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetClustersForImageRequest', name: 'GetClustersForImageRequest')
    GetClustersForImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetClustersForImageResponse', name: 'GetClustersForImageResponse')
    GetCodeSecurityIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCodeSecurityIntegrationRequest', name: 'GetCodeSecurityIntegrationRequest')
    GetCodeSecurityIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCodeSecurityIntegrationResponse', name: 'GetCodeSecurityIntegrationResponse')
    GetCodeSecurityScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCodeSecurityScanConfigurationRequest', name: 'GetCodeSecurityScanConfigurationRequest')
    GetCodeSecurityScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCodeSecurityScanConfigurationResponse', name: 'GetCodeSecurityScanConfigurationResponse')
    GetCodeSecurityScanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCodeSecurityScanRequest', name: 'GetCodeSecurityScanRequest')
    GetCodeSecurityScanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetCodeSecurityScanResponse', name: 'GetCodeSecurityScanResponse')
    GetConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetConfigurationInput', name: 'GetConfigurationInput')
    GetConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetConfigurationOutput', name: 'GetConfigurationOutput')
    GetDelegatedAdminAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetDelegatedAdminAccountInput', name: 'GetDelegatedAdminAccountInput')
    GetDelegatedAdminAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetDelegatedAdminAccountOutput', name: 'GetDelegatedAdminAccountOutput')
    GetEc2DeepInspectionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetEc2DeepInspectionConfigurationRequest', name: 'GetEc2DeepInspectionConfigurationRequest')
    GetEc2DeepInspectionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetEc2DeepInspectionConfigurationResponse', name: 'GetEc2DeepInspectionConfigurationResponse')
    GetEncryptionKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetEncryptionKeyRequest', name: 'GetEncryptionKeyRequest')
    GetEncryptionKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetEncryptionKeyResponse', name: 'GetEncryptionKeyResponse')
    GetFindingsReportStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetFindingsReportStatusInput', name: 'GetFindingsReportStatusInput')
    GetFindingsReportStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetFindingsReportStatusOutput', name: 'GetFindingsReportStatusOutput')
    GetMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetMemberInput', name: 'GetMemberInput')
    GetMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetMemberOutput', name: 'GetMemberOutput')
    GetSbomExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetSbomExportRequest', name: 'GetSbomExportRequest')
    GetSbomExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#GetSbomExportResponse', name: 'GetSbomExportResponse')
    GitHubAuthCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#GitHubAuthCode', name: 'GitHubAuthCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    GitHubInstallationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#GitHubInstallationId', name: 'GitHubInstallationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GitLabAccessToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#GitLabAccessToken', name: 'GitLabAccessToken', traits: {"smithy.api#sensitive" => {}})
    GitLabAuthCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#GitLabAuthCode', name: 'GitLabAuthCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    GroupKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#GroupKey', name: 'GroupKey', traits: {"smithy.api#enum" => [{"value" => "SCAN_STATUS_CODE", "name" => "SCAN_STATUS_CODE"}, {"value" => "SCAN_STATUS_REASON", "name" => "SCAN_STATUS_REASON"}, {"value" => "ACCOUNT_ID", "name" => "ACCOUNT_ID"}, {"value" => "RESOURCE_TYPE", "name" => "RESOURCE_TYPE"}, {"value" => "ECR_REPOSITORY_NAME", "name" => "ECR_REPOSITORY_NAME"}]})
    ImageHash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ImageHash', name: 'ImageHash', traits: {"smithy.api#length" => {"min" => 71, "max" => 71}, "smithy.api#pattern" => "^sha256:[a-z0-9]{64}$"})
    ImageLayerAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ImageLayerAggregation', name: 'ImageLayerAggregation')
    ImageLayerAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ImageLayerAggregationResponse', name: 'ImageLayerAggregationResponse')
    ImageLayerSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ImageLayerSortBy', name: 'ImageLayerSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    ImageTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ImageTagList', name: 'ImageTagList')
    InspectorScoreDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#InspectorScoreDetails', name: 'InspectorScoreDetails')
    InstanceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#InstanceUrl', name: 'InstanceUrl', traits: {"smithy.api#pattern" => "^https://[-a-zA-Z0-9()@:%_+.~#?&//=]{1,1024}$", "smithy.api#sensitive" => {}})
    IntegrationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#IntegrationName', name: 'IntegrationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-zA-Z0-9-_$:.]*$"})
    IntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#IntegrationStatus', name: 'IntegrationStatus')
    IntegrationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#IntegrationSummaries', name: 'IntegrationSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#uniqueItems" => {}})
    IntegrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#IntegrationType', name: 'IntegrationType')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpV4Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#IpV4Address', name: 'IpV4Address', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"})
    IpV4AddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#IpV4AddressList', name: 'IpV4AddressList')
    IpV6Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#IpV6Address', name: 'IpV6Address', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}})
    IpV6AddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#IpV6AddressList', name: 'IpV6AddressList')
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#pattern" => "^arn:aws(-(us-gov|cn))?:kms:([a-z0-9][-.a-z0-9]{0,62})?:[0-9]{12}?:key/(([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})|(mrk-[0-9a-zA-Z]{32}))$"})
    LambdaFunctionAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#LambdaFunctionAggregation', name: 'LambdaFunctionAggregation')
    LambdaFunctionAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#LambdaFunctionAggregationResponse', name: 'LambdaFunctionAggregationResponse')
    LambdaFunctionMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#LambdaFunctionMetadata', name: 'LambdaFunctionMetadata')
    LambdaFunctionSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#LambdaFunctionSortBy', name: 'LambdaFunctionSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    LambdaLayerAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#LambdaLayerAggregation', name: 'LambdaLayerAggregation')
    LambdaLayerAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#LambdaLayerAggregationResponse', name: 'LambdaLayerAggregationResponse')
    LambdaLayerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#LambdaLayerArn', name: 'LambdaLayerArn', traits: {"smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+$"})
    LambdaLayerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#LambdaLayerList', name: 'LambdaLayerList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LambdaLayerSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#LambdaLayerSortBy', name: 'LambdaLayerSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    LambdaVpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#LambdaVpcConfig', name: 'LambdaVpcConfig')
    LastSeen = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#LastSeen', name: 'LastSeen')
    LayerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#LayerList', name: 'LayerList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ListAccountPermissionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListAccountPermissionsInput', name: 'ListAccountPermissionsInput')
    ListAccountPermissionsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListAccountPermissionsMaxResults', name: 'ListAccountPermissionsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}})
    ListAccountPermissionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListAccountPermissionsOutput', name: 'ListAccountPermissionsOutput')
    ListCisScanConfigurationsFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanConfigurationsFilterCriteria', name: 'ListCisScanConfigurationsFilterCriteria')
    ListCisScanConfigurationsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListCisScanConfigurationsMaxResults', name: 'ListCisScanConfigurationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCisScanConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanConfigurationsRequest', name: 'ListCisScanConfigurationsRequest')
    ListCisScanConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanConfigurationsResponse', name: 'ListCisScanConfigurationsResponse')
    ListCisScanResultsAggregatedByChecksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanResultsAggregatedByChecksRequest', name: 'ListCisScanResultsAggregatedByChecksRequest')
    ListCisScanResultsAggregatedByChecksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanResultsAggregatedByChecksResponse', name: 'ListCisScanResultsAggregatedByChecksResponse')
    ListCisScanResultsAggregatedByTargetResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanResultsAggregatedByTargetResourceRequest', name: 'ListCisScanResultsAggregatedByTargetResourceRequest')
    ListCisScanResultsAggregatedByTargetResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScanResultsAggregatedByTargetResourceResponse', name: 'ListCisScanResultsAggregatedByTargetResourceResponse')
    ListCisScansDetailLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#ListCisScansDetailLevel', name: 'ListCisScansDetailLevel')
    ListCisScansFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScansFilterCriteria', name: 'ListCisScansFilterCriteria')
    ListCisScansMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListCisScansMaxResults', name: 'ListCisScansMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCisScansRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScansRequest', name: 'ListCisScansRequest')
    ListCisScansResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCisScansResponse', name: 'ListCisScansResponse')
    ListCisScansSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#ListCisScansSortBy', name: 'ListCisScansSortBy')
    ListCodeSecurityIntegrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCodeSecurityIntegrationsRequest', name: 'ListCodeSecurityIntegrationsRequest')
    ListCodeSecurityIntegrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCodeSecurityIntegrationsResponse', name: 'ListCodeSecurityIntegrationsResponse')
    ListCodeSecurityScanConfigurationAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCodeSecurityScanConfigurationAssociationsRequest', name: 'ListCodeSecurityScanConfigurationAssociationsRequest')
    ListCodeSecurityScanConfigurationAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCodeSecurityScanConfigurationAssociationsResponse', name: 'ListCodeSecurityScanConfigurationAssociationsResponse')
    ListCodeSecurityScanConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCodeSecurityScanConfigurationsRequest', name: 'ListCodeSecurityScanConfigurationsRequest')
    ListCodeSecurityScanConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCodeSecurityScanConfigurationsResponse', name: 'ListCodeSecurityScanConfigurationsResponse')
    ListCoverageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCoverageInput', name: 'ListCoverageInput')
    ListCoverageMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListCoverageMaxResults', name: 'ListCoverageMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListCoverageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCoverageOutput', name: 'ListCoverageOutput')
    ListCoverageStatisticsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCoverageStatisticsInput', name: 'ListCoverageStatisticsInput')
    ListCoverageStatisticsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListCoverageStatisticsOutput', name: 'ListCoverageStatisticsOutput')
    ListDelegatedAdminAccountsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListDelegatedAdminAccountsInput', name: 'ListDelegatedAdminAccountsInput')
    ListDelegatedAdminAccountsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListDelegatedAdminAccountsOutput', name: 'ListDelegatedAdminAccountsOutput')
    ListDelegatedAdminMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListDelegatedAdminMaxResults', name: 'ListDelegatedAdminMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListFilterMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListFilterMaxResults', name: 'ListFilterMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFiltersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListFiltersInput', name: 'ListFiltersInput')
    ListFiltersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListFiltersOutput', name: 'ListFiltersOutput')
    ListFindingAggregationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListFindingAggregationsInput', name: 'ListFindingAggregationsInput')
    ListFindingAggregationsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListFindingAggregationsMaxResults', name: 'ListFindingAggregationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFindingAggregationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListFindingAggregationsOutput', name: 'ListFindingAggregationsOutput')
    ListFindingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListFindingsInput', name: 'ListFindingsInput')
    ListFindingsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListFindingsMaxResults', name: 'ListFindingsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFindingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListFindingsOutput', name: 'ListFindingsOutput')
    ListMembersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListMembersInput', name: 'ListMembersInput')
    ListMembersMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListMembersMaxResults', name: 'ListMembersMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListMembersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListMembersOutput', name: 'ListMembersOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListUsageTotalsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListUsageTotalsInput', name: 'ListUsageTotalsInput')
    ListUsageTotalsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#ListUsageTotalsMaxResults', name: 'ListUsageTotalsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListUsageTotalsNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ListUsageTotalsNextToken', name: 'ListUsageTotalsNextToken', traits: {"smithy.api#length" => {"min" => 1}})
    ListUsageTotalsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ListUsageTotalsOutput', name: 'ListUsageTotalsOutput')
    MapComparison = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#MapComparison', name: 'MapComparison', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    MapFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#MapFilter', name: 'MapFilter')
    MapFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#MapFilterList', name: 'MapFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MapKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#MapKey', name: 'MapKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MapValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#MapValue', name: 'MapValue', traits: {"smithy.api#length" => {"max" => 256}})
    Member = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Member', name: 'Member')
    MemberAccountEc2DeepInspectionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatus', name: 'MemberAccountEc2DeepInspectionStatus')
    MemberAccountEc2DeepInspectionStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatusList', name: 'MemberAccountEc2DeepInspectionStatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MemberAccountEc2DeepInspectionStatusState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatusState', name: 'MemberAccountEc2DeepInspectionStatusState')
    MemberAccountEc2DeepInspectionStatusStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#MemberAccountEc2DeepInspectionStatusStateList', name: 'MemberAccountEc2DeepInspectionStatusStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#MemberList', name: 'MemberList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MeteringAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#MeteringAccountId', name: 'MeteringAccountId', traits: {"smithy.api#pattern" => "[0-9]{12}"})
    MeteringAccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#MeteringAccountIdList', name: 'MeteringAccountIdList')
    MonthlyCostEstimate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector2#MonthlyCostEstimate', name: 'MonthlyCostEstimate', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MonthlySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#MonthlySchedule', name: 'MonthlySchedule')
    NetworkPath = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#NetworkPath', name: 'NetworkPath')
    NetworkProtocol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#NetworkProtocol', name: 'NetworkProtocol', traits: {"smithy.api#enum" => [{"value" => "TCP", "name" => "TCP"}, {"value" => "UDP", "name" => "UDP"}]})
    NetworkReachabilityDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#NetworkReachabilityDetails', name: 'NetworkReachabilityDetails')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"max" => 1000000}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1}})
    NonEmptyStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#NonEmptyStringList', name: 'NonEmptyStringList')
    NumberFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#NumberFilter', name: 'NumberFilter')
    NumberFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#NumberFilterList', name: 'NumberFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OneAccountIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#OneAccountIdFilterList', name: 'OneAccountIdFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    OneTimeSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#OneTimeSchedule', name: 'OneTimeSchedule')
    Operation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Operation', name: 'Operation', traits: {"smithy.api#enum" => [{"value" => "ENABLE_SCANNING", "name" => "ENABLE_SCANNING"}, {"value" => "DISABLE_SCANNING", "name" => "DISABLE_SCANNING"}, {"value" => "ENABLE_REPOSITORY", "name" => "ENABLE_REPOSITORY"}, {"value" => "DISABLE_REPOSITORY", "name" => "DISABLE_REPOSITORY"}]})
    OwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "(^\\d{12}$)|(^o-[a-z0-9]{10,32}$)"})
    PackageAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PackageAggregation', name: 'PackageAggregation')
    PackageAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PackageAggregationResponse', name: 'PackageAggregationResponse')
    PackageArchitecture = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageArchitecture', name: 'PackageArchitecture', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PackageEpoch = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#PackageEpoch', name: 'PackageEpoch', traits: {"smithy.api#default" => 0})
    PackageFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PackageFilter', name: 'PackageFilter')
    PackageFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#PackageFilterList', name: 'PackageFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PackageManager = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageManager', name: 'PackageManager', traits: {"smithy.api#enum" => [{"value" => "BUNDLER", "name" => "BUNDLER"}, {"value" => "CARGO", "name" => "CARGO"}, {"value" => "COMPOSER", "name" => "COMPOSER"}, {"value" => "NPM", "name" => "NPM"}, {"value" => "NUGET", "name" => "NUGET"}, {"value" => "PIPENV", "name" => "PIPENV"}, {"value" => "POETRY", "name" => "POETRY"}, {"value" => "YARN", "name" => "YARN"}, {"value" => "GOBINARY", "name" => "GOBINARY"}, {"value" => "GOMOD", "name" => "GOMOD"}, {"value" => "JAR", "name" => "JAR"}, {"value" => "OS", "name" => "OS"}, {"value" => "PIP", "name" => "PIP"}, {"value" => "PYTHONPKG", "name" => "PYTHONPKG"}, {"value" => "NODEPKG", "name" => "NODEPKG"}, {"value" => "POM", "name" => "POM"}, {"value" => "GEMSPEC", "name" => "GEMSPEC"}, {"value" => "DOTNET_CORE", "name" => "DOTNET_CORE"}]})
    PackageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageName', name: 'PackageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PackageRelease = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageRelease', name: 'PackageRelease', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PackageSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageSortBy', name: 'PackageSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    PackageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageType', name: 'PackageType', traits: {"smithy.api#enum" => [{"value" => "IMAGE", "name" => "IMAGE"}, {"value" => "ZIP", "name" => "ZIP"}]})
    PackageVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PackageVersion', name: 'PackageVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PackageVulnerabilityDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PackageVulnerabilityDetails', name: 'PackageVulnerabilityDetails')
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^(?:/(?:\\.[-\\w]+|[-\\w]+(?:\\.[-\\w]+)?))+/?$"})
    PathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#PathList', name: 'PathList', traits: {"smithy.api#length" => {"max" => 5}})
    PeriodicScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PeriodicScanConfiguration', name: 'PeriodicScanConfiguration')
    PeriodicScanFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#PeriodicScanFrequency', name: 'PeriodicScanFrequency')
    Permission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Permission', name: 'Permission')
    Permissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#Permissions', name: 'Permissions', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Platform = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Platform', name: 'Platform', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PlatformFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#PlatformFilterList', name: 'PlatformFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PlatformVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#PlatformVersion', name: 'PlatformVersion', traits: {"smithy.api#length" => {"max" => 8}})
    Port = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    PortRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PortRange', name: 'PortRange')
    PortRangeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#PortRangeFilter', name: 'PortRangeFilter')
    PortRangeFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#PortRangeFilterList', name: 'PortRangeFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Product = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Product', name: 'Product', traits: {"smithy.api#length" => {"max" => 32}})
    ProjectCodeSecurityScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ProjectCodeSecurityScanConfiguration', name: 'ProjectCodeSecurityScanConfiguration')
    ProjectContinuousIntegrationScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ProjectContinuousIntegrationScanConfiguration', name: 'ProjectContinuousIntegrationScanConfiguration')
    ProjectContinuousIntegrationScanConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ProjectContinuousIntegrationScanConfigurationList', name: 'ProjectContinuousIntegrationScanConfigurationList')
    ProjectId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ProjectId', name: 'ProjectId', traits: {"smithy.api#pattern" => "^project-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ProjectPeriodicScanConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ProjectPeriodicScanConfiguration', name: 'ProjectPeriodicScanConfiguration')
    ProjectPeriodicScanConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ProjectPeriodicScanConfigurationList', name: 'ProjectPeriodicScanConfigurationList')
    ProjectSelectionScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#ProjectSelectionScope', name: 'ProjectSelectionScope')
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Reason', name: 'Reason', traits: {"smithy.api#length" => {"max" => 1024}})
    Recommendation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Recommendation', name: 'Recommendation')
    ReferenceUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ReferenceUrls', name: 'ReferenceUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RelatedVulnerabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#RelatedVulnerabilities', name: 'RelatedVulnerabilities', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RelatedVulnerability = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#RelatedVulnerability', name: 'RelatedVulnerability', traits: {"smithy.api#length" => {"min" => 0}})
    RelationshipStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#RelationshipStatus', name: 'RelationshipStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "INVITED", "name" => "INVITED"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "REMOVED", "name" => "REMOVED"}, {"value" => "RESIGNED", "name" => "RESIGNED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "EMAIL_VERIFICATION_IN_PROGRESS", "name" => "EMAIL_VERIFICATION_IN_PROGRESS"}, {"value" => "EMAIL_VERIFICATION_FAILED", "name" => "EMAIL_VERIFICATION_FAILED"}, {"value" => "REGION_DISABLED", "name" => "REGION_DISABLED"}, {"value" => "ACCOUNT_SUSPENDED", "name" => "ACCOUNT_SUSPENDED"}, {"value" => "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER", "name" => "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"}]})
    Remediation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Remediation', name: 'Remediation')
    ReportFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ReportFormat', name: 'ReportFormat', traits: {"smithy.api#enum" => [{"value" => "CSV", "name" => "CSV"}, {"value" => "JSON", "name" => "JSON"}]})
    ReportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ReportId', name: 'ReportId', traits: {"smithy.api#pattern" => "\\b[a-f0-9]{8}\\b-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-\\b[a-f0-9]{12}\\b"})
    ReportTargetAccounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ReportTargetAccounts', name: 'ReportTargetAccounts', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ReportingErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ReportingErrorCode', name: 'ReportingErrorCode', traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "INVALID_PERMISSIONS", "name" => "INVALID_PERMISSIONS"}, {"value" => "NO_FINDINGS_FOUND", "name" => "NO_FINDINGS_FOUND"}, {"value" => "BUCKET_NOT_FOUND", "name" => "BUCKET_NOT_FOUND"}, {"value" => "INCOMPATIBLE_BUCKET_REGION", "name" => "INCOMPATIBLE_BUCKET_REGION"}, {"value" => "MALFORMED_KMS_KEY", "name" => "MALFORMED_KMS_KEY"}]})
    RepositoryAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#RepositoryAggregation', name: 'RepositoryAggregation')
    RepositoryAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#RepositoryAggregationResponse', name: 'RepositoryAggregationResponse')
    RepositorySortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#RepositorySortBy', name: 'RepositorySortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}, {"value" => "AFFECTED_IMAGES", "name" => "AFFECTED_IMAGES"}]})
    ResetEncryptionKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResetEncryptionKeyRequest', name: 'ResetEncryptionKeyRequest')
    ResetEncryptionKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResetEncryptionKeyResponse', name: 'ResetEncryptionKeyResponse')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Resource', name: 'Resource')
    ResourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceDetails', name: 'ResourceDetails')
    ResourceFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceFilterCriteria', name: 'ResourceFilterCriteria')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 10, "max" => 341}, "smithy.api#pattern" => "(^arn:.*:ecr:.*:\\d{12}:repository\\/(?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*(\\/sha256:[a-z0-9]{64})?$)|(^i-([a-z0-9]{8}|[a-z0-9]{17}|\\\\*)$|(^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$)|(^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration\\/[a-f0-9-]{36}\\/project-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$))"})
    ResourceIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ResourceIdFilterList', name: 'ResourceIdFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ResourceList', name: 'ResourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceMapComparison = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ResourceMapComparison', name: 'ResourceMapComparison', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    ResourceMapFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceMapFilter', name: 'ResourceMapFilter')
    ResourceMapFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ResourceMapFilterList', name: 'ResourceMapFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceScanMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceScanMetadata', name: 'ResourceScanMetadata')
    ResourceScanType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ResourceScanType', name: 'ResourceScanType', traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "ECR", "name" => "ECR"}, {"value" => "LAMBDA", "name" => "LAMBDA"}, {"value" => "LAMBDA_CODE", "name" => "LAMBDA_CODE"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    ResourceState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceState', name: 'ResourceState')
    ResourceStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceStatus', name: 'ResourceStatus')
    ResourceStringComparison = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ResourceStringComparison', name: 'ResourceStringComparison', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}]})
    ResourceStringFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ResourceStringFilter', name: 'ResourceStringFilter')
    ResourceStringFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ResourceStringFilterList', name: 'ResourceStringFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceStringInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ResourceStringInput', name: 'ResourceStringInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceTagFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ResourceTagFilterList', name: 'ResourceTagFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS_EC2_INSTANCE", "name" => "AWS_EC2_INSTANCE"}, {"value" => "AWS_ECR_CONTAINER_IMAGE", "name" => "AWS_ECR_CONTAINER_IMAGE"}, {"value" => "AWS_ECR_REPOSITORY", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS_LAMBDA_FUNCTION", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "CODE_REPOSITORY", "name" => "CODE_REPOSITORY"}]})
    RiskScore = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector2#RiskScore', name: 'RiskScore')
    RuleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#RuleId', name: 'RuleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RuleSetCategories = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#RuleSetCategories', name: 'RuleSetCategories', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    RuleSetCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#RuleSetCategory', name: 'RuleSetCategory')
    Runtime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Runtime', name: 'Runtime', traits: {"smithy.api#enum" => [{"value" => "NODEJS", "name" => "NODEJS"}, {"value" => "NODEJS_12_X", "name" => "NODEJS_12_X"}, {"value" => "NODEJS_14_X", "name" => "NODEJS_14_X"}, {"value" => "NODEJS_16_X", "name" => "NODEJS_16_X"}, {"value" => "JAVA_8", "name" => "JAVA_8"}, {"value" => "JAVA_8_AL2", "name" => "JAVA_8_AL2"}, {"value" => "JAVA_11", "name" => "JAVA_11"}, {"value" => "PYTHON_3_7", "name" => "PYTHON_3_7"}, {"value" => "PYTHON_3_8", "name" => "PYTHON_3_8"}, {"value" => "PYTHON_3_9", "name" => "PYTHON_3_9"}, {"value" => "UNSUPPORTED", "name" => "UNSUPPORTED"}, {"value" => "NODEJS_18_X", "name" => "NODEJS_18_X"}, {"value" => "GO_1_X", "name" => "GO_1_X"}, {"value" => "JAVA_17", "name" => "JAVA_17"}, {"value" => "PYTHON_3_10", "name" => "PYTHON_3_10"}, {"value" => "PYTHON_3_11", "name" => "PYTHON_3_11"}, {"value" => "DOTNETCORE_3_1", "name" => "DOTNETCORE_3_1"}, {"value" => "DOTNET_6", "name" => "DOTNET_6"}, {"value" => "DOTNET_7", "name" => "DOTNET_7"}, {"value" => "RUBY_2_7", "name" => "RUBY_2_7"}, {"value" => "RUBY_3_2", "name" => "RUBY_3_2"}]})
    SbomReportFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#SbomReportFormat', name: 'SbomReportFormat', traits: {"smithy.api#enum" => [{"value" => "CYCLONEDX_1_4", "name" => "CYCLONEDX_1_4"}, {"value" => "SPDX_2_3", "name" => "SPDX_2_3"}]})
    ScanConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ScanConfigurationArn', name: 'ScanConfigurationArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:owner/(\\d{12}|o-[a-z0-9]{10,32})/codesecurity-configuration/[a-f0-9-]{36}$"})
    ScanConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ScanConfigurationName', name: 'ScanConfigurationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-zA-Z0-9-_$:.]*$"})
    ScanMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ScanMode', name: 'ScanMode', traits: {"smithy.api#enum" => [{"value" => "EC2_SSM_AGENT_BASED", "name" => "EC2_SSM_AGENT_BASED"}, {"value" => "EC2_AGENTLESS", "name" => "EC2_AGENTLESS"}]})
    ScanStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ScanStatus', name: 'ScanStatus')
    ScanStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ScanStatusCode', name: 'ScanStatusCode', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    ScanStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ScanStatusReason', name: 'ScanStatusReason', traits: {"smithy.api#enum" => [{"value" => "PENDING_INITIAL_SCAN", "name" => "PENDING_INITIAL_SCAN"}, {"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "UNMANAGED_EC2_INSTANCE", "name" => "UNMANAGED_EC2_INSTANCE"}, {"value" => "UNSUPPORTED_OS", "name" => "UNSUPPORTED_OS"}, {"value" => "SCAN_ELIGIBILITY_EXPIRED", "name" => "SCAN_ELIGIBILITY_EXPIRED"}, {"value" => "RESOURCE_TERMINATED", "name" => "RESOURCE_TERMINATED"}, {"value" => "SUCCESSFUL", "name" => "SUCCESSFUL"}, {"value" => "NO_RESOURCES_FOUND", "name" => "NO_RESOURCES_FOUND"}, {"value" => "IMAGE_SIZE_EXCEEDED", "name" => "IMAGE_SIZE_EXCEEDED"}, {"value" => "SCAN_FREQUENCY_MANUAL", "name" => "SCAN_FREQUENCY_MANUAL"}, {"value" => "SCAN_FREQUENCY_SCAN_ON_PUSH", "name" => "SCAN_FREQUENCY_SCAN_ON_PUSH"}, {"value" => "EC2_INSTANCE_STOPPED", "name" => "EC2_INSTANCE_STOPPED"}, {"value" => "PENDING_DISABLE", "name" => "PENDING_DISABLE"}, {"value" => "NO_INVENTORY", "name" => "NO_INVENTORY"}, {"value" => "STALE_INVENTORY", "name" => "STALE_INVENTORY"}, {"value" => "EXCLUDED_BY_TAG", "name" => "EXCLUDED_BY_TAG"}, {"value" => "UNSUPPORTED_RUNTIME", "name" => "UNSUPPORTED_RUNTIME"}, {"value" => "UNSUPPORTED_MEDIA_TYPE", "name" => "UNSUPPORTED_MEDIA_TYPE"}, {"value" => "UNSUPPORTED_CONFIG_FILE", "name" => "UNSUPPORTED_CONFIG_FILE"}, {"value" => "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED", "name" => "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED"}, {"value" => "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED", "name" => "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED"}, {"value" => "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED", "name" => "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED"}, {"value" => "DEEP_INSPECTION_NO_INVENTORY", "name" => "DEEP_INSPECTION_NO_INVENTORY"}, {"value" => "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED", "name" => "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED"}, {"value" => "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED", "name" => "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED"}, {"value" => "PENDING_REVIVAL_SCAN", "name" => "PENDING_REVIVAL_SCAN"}, {"value" => "INTEGRATION_CONNECTION_LOST", "name" => "INTEGRATION_CONNECTION_LOST"}, {"value" => "ACCESS_DENIED_TO_ENCRYPTION_KEY", "name" => "ACCESS_DENIED_TO_ENCRYPTION_KEY"}, {"value" => "UNSUPPORTED_LANGUAGE", "name" => "UNSUPPORTED_LANGUAGE"}, {"value" => "NO_SCAN_CONFIGURATION_ASSOCIATED", "name" => "NO_SCAN_CONFIGURATION_ASSOCIATED"}, {"value" => "SCAN_IN_PROGRESS", "name" => "SCAN_IN_PROGRESS"}]})
    ScanType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ScanType', name: 'ScanType', traits: {"smithy.api#enum" => [{"value" => "NETWORK", "name" => "NETWORK"}, {"value" => "PACKAGE", "name" => "PACKAGE"}, {"value" => "CODE", "name" => "CODE"}]})
    Schedule = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#Schedule', name: 'Schedule')
    ScopeSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ScopeSettings', name: 'ScopeSettings')
    SearchVulnerabilitiesFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SearchVulnerabilitiesFilterCriteria', name: 'SearchVulnerabilitiesFilterCriteria')
    SearchVulnerabilitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SearchVulnerabilitiesRequest', name: 'SearchVulnerabilitiesRequest')
    SearchVulnerabilitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SearchVulnerabilitiesResponse', name: 'SearchVulnerabilitiesResponse')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#SecurityGroupIdList', name: 'SecurityGroupIdList', traits: {"smithy.api#length" => {"max" => 5}})
    SendCisSessionHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SendCisSessionHealthRequest', name: 'SendCisSessionHealthRequest')
    SendCisSessionHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SendCisSessionHealthResponse', name: 'SendCisSessionHealthResponse')
    SendCisSessionTelemetryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SendCisSessionTelemetryRequest', name: 'SendCisSessionTelemetryRequest')
    SendCisSessionTelemetryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SendCisSessionTelemetryResponse', name: 'SendCisSessionTelemetryResponse')
    Service = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Service', name: 'Service', traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "ECR", "name" => "ECR"}, {"value" => "LAMBDA", "name" => "LAMBDA"}]})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Severity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Severity', name: 'Severity', traits: {"smithy.api#enum" => [{"value" => "INFORMATIONAL", "name" => "INFORMATIONAL"}, {"value" => "LOW", "name" => "LOW"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "UNTRIAGED", "name" => "UNTRIAGED"}]})
    SeverityCounts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SeverityCounts', name: 'SeverityCounts')
    SortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SortCriteria', name: 'SortCriteria')
    SortField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#SortField', name: 'SortField', traits: {"smithy.api#enum" => [{"value" => "AWS_ACCOUNT_ID", "name" => "AWS_ACCOUNT_ID"}, {"value" => "FINDING_TYPE", "name" => "FINDING_TYPE"}, {"value" => "SEVERITY", "name" => "SEVERITY"}, {"value" => "FIRST_OBSERVED_AT", "name" => "FIRST_OBSERVED_AT"}, {"value" => "LAST_OBSERVED_AT", "name" => "LAST_OBSERVED_AT"}, {"value" => "FINDING_STATUS", "name" => "FINDING_STATUS"}, {"value" => "RESOURCE_TYPE", "name" => "RESOURCE_TYPE"}, {"value" => "ECR_IMAGE_PUSHED_AT", "name" => "ECR_IMAGE_PUSHED_AT"}, {"value" => "ECR_IMAGE_REPOSITORY_NAME", "name" => "ECR_IMAGE_REPOSITORY_NAME"}, {"value" => "ECR_IMAGE_REGISTRY", "name" => "ECR_IMAGE_REGISTRY"}, {"value" => "NETWORK_PROTOCOL", "name" => "NETWORK_PROTOCOL"}, {"value" => "COMPONENT_TYPE", "name" => "COMPONENT_TYPE"}, {"value" => "VULNERABILITY_ID", "name" => "VULNERABILITY_ID"}, {"value" => "VULNERABILITY_SOURCE", "name" => "VULNERABILITY_SOURCE"}, {"value" => "INSPECTOR_SCORE", "name" => "INSPECTOR_SCORE"}, {"value" => "VENDOR_SEVERITY", "name" => "VENDOR_SEVERITY"}, {"value" => "EPSS_SCORE", "name" => "EPSS_SCORE"}]})
    SortOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    SourceLayerHash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#SourceLayerHash', name: 'SourceLayerHash', traits: {"smithy.api#length" => {"min" => 71, "max" => 71}, "smithy.api#pattern" => "^sha256:[a-z0-9]{64}$"})
    StartCisSessionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StartCisSessionMessage', name: 'StartCisSessionMessage')
    StartCisSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StartCisSessionRequest', name: 'StartCisSessionRequest')
    StartCisSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StartCisSessionResponse', name: 'StartCisSessionResponse')
    StartCodeSecurityScanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StartCodeSecurityScanRequest', name: 'StartCodeSecurityScanRequest')
    StartCodeSecurityScanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StartCodeSecurityScanResponse', name: 'StartCodeSecurityScanResponse')
    State = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#State', name: 'State')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "ENABLING", "name" => "ENABLING"}, {"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLING", "name" => "DISABLING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "SUSPENDING", "name" => "SUSPENDING"}, {"value" => "SUSPENDED", "name" => "SUSPENDED"}]})
    StatusCounts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StatusCounts', name: 'StatusCounts')
    Step = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Step', name: 'Step')
    StepList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#StepList', name: 'StepList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    StopCisMessageProgress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StopCisMessageProgress', name: 'StopCisMessageProgress')
    StopCisSessionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StopCisSessionMessage', name: 'StopCisSessionMessage')
    StopCisSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StopCisSessionRequest', name: 'StopCisSessionRequest')
    StopCisSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StopCisSessionResponse', name: 'StopCisSessionResponse')
    StopCisSessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#StopCisSessionStatus', name: 'StopCisSessionStatus')
    StringComparison = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#StringComparison', name: 'StringComparison', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}]})
    StringFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#StringFilter', name: 'StringFilter')
    StringFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#StringFilterList', name: 'StringFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StringInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#StringInput', name: 'StringInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#StringList', name: 'StringList')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#SubnetIdList', name: 'SubnetIdList', traits: {"smithy.api#length" => {"max" => 16}})
    SuccessfulAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SuccessfulAssociationResult', name: 'SuccessfulAssociationResult')
    SuccessfulAssociationResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#SuccessfulAssociationResultList', name: 'SuccessfulAssociationResultList')
    SuggestedFix = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#SuggestedFix', name: 'SuggestedFix')
    SuggestedFixes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#SuggestedFixes', name: 'SuggestedFixes', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagComparison = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector2#TagComparison', name: 'TagComparison')
    TagFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#TagFilter', name: 'TagFilter')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TagList', name: 'TagList')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector2#TagMap', name: 'TagMap')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#TagResourceOutput', name: 'TagResourceOutput')
    TagValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TagValueList', name: 'TagValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Target = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Target', name: 'Target', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#TargetAccount', name: 'TargetAccount', traits: {"smithy.api#pattern" => "^\\d{12}|ALL_ACCOUNTS|SELF$"})
    TargetAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TargetAccountList', name: 'TargetAccountList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#uniqueItems" => {}})
    TargetResourceTags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector2#TargetResourceTags', name: 'TargetResourceTags', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TargetResourceTagsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#TargetResourceTagsKey', name: 'TargetResourceTagsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$"})
    TargetResourceTagsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#TargetResourceTagsValue', name: 'TargetResourceTagsValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TargetStatusFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TargetStatusFilterList', name: 'TargetStatusFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TargetStatusReasonFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TargetStatusReasonFilterList', name: 'TargetStatusReasonFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Targets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#Targets', name: 'Targets', traits: {"smithy.api#length" => {"min" => 0}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Time = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Time', name: 'Time')
    TimeOfDay = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#TimeOfDay', name: 'TimeOfDay', traits: {"smithy.api#pattern" => "^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$"})
    Timezone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Timezone', name: 'Timezone', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TitleAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#TitleAggregation', name: 'TitleAggregation')
    TitleAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#TitleAggregationResponse', name: 'TitleAggregationResponse')
    TitleFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#TitleFilterList', name: 'TitleFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TitleSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#TitleSortBy', name: 'TitleSortBy', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "HIGH", "name" => "HIGH"}, {"value" => "ALL", "name" => "ALL"}]})
    Tool = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Tool', name: 'Tool', traits: {"smithy.api#length" => {"min" => 0}})
    Tools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#Tools', name: 'Tools')
    Ttp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Ttp', name: 'Ttp', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    Ttps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#Ttps', name: 'Ttps', traits: {"smithy.api#length" => {"min" => 0}})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateCisScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCisScanConfigurationRequest', name: 'UpdateCisScanConfigurationRequest')
    UpdateCisScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCisScanConfigurationResponse', name: 'UpdateCisScanConfigurationResponse')
    UpdateCisTargets = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCisTargets', name: 'UpdateCisTargets')
    UpdateCodeSecurityIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCodeSecurityIntegrationRequest', name: 'UpdateCodeSecurityIntegrationRequest')
    UpdateCodeSecurityIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCodeSecurityIntegrationResponse', name: 'UpdateCodeSecurityIntegrationResponse')
    UpdateCodeSecurityScanConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCodeSecurityScanConfigurationRequest', name: 'UpdateCodeSecurityScanConfigurationRequest')
    UpdateCodeSecurityScanConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateCodeSecurityScanConfigurationResponse', name: 'UpdateCodeSecurityScanConfigurationResponse')
    UpdateConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateConfigurationInput', name: 'UpdateConfigurationInput')
    UpdateConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateConfigurationOutput', name: 'UpdateConfigurationOutput')
    UpdateEc2DeepInspectionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateEc2DeepInspectionConfigurationRequest', name: 'UpdateEc2DeepInspectionConfigurationRequest')
    UpdateEc2DeepInspectionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateEc2DeepInspectionConfigurationResponse', name: 'UpdateEc2DeepInspectionConfigurationResponse')
    UpdateEncryptionKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateEncryptionKeyRequest', name: 'UpdateEncryptionKeyRequest')
    UpdateEncryptionKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateEncryptionKeyResponse', name: 'UpdateEncryptionKeyResponse')
    UpdateFilterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateFilterInput', name: 'UpdateFilterInput')
    UpdateFilterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateFilterOutput', name: 'UpdateFilterOutput')
    UpdateGitHubIntegrationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateGitHubIntegrationDetail', name: 'UpdateGitHubIntegrationDetail')
    UpdateGitLabSelfManagedIntegrationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateGitLabSelfManagedIntegrationDetail', name: 'UpdateGitLabSelfManagedIntegrationDetail')
    UpdateIntegrationDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.inspector2#UpdateIntegrationDetails', name: 'UpdateIntegrationDetails')
    UpdateOrgEc2DeepInspectionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateOrgEc2DeepInspectionConfigurationRequest', name: 'UpdateOrgEc2DeepInspectionConfigurationRequest')
    UpdateOrgEc2DeepInspectionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateOrgEc2DeepInspectionConfigurationResponse', name: 'UpdateOrgEc2DeepInspectionConfigurationResponse')
    UpdateOrganizationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateOrganizationConfigurationInput', name: 'UpdateOrganizationConfigurationInput')
    UpdateOrganizationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UpdateOrganizationConfigurationOutput', name: 'UpdateOrganizationConfigurationOutput')
    Usage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Usage', name: 'Usage')
    UsageAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#UsageAccountId', name: 'UsageAccountId', traits: {"smithy.api#pattern" => "[0-9]{12}"})
    UsageAccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#UsageAccountIdList', name: 'UsageAccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 7000}})
    UsageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#UsageList', name: 'UsageList')
    UsageTotal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#UsageTotal', name: 'UsageTotal')
    UsageTotalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#UsageTotalList', name: 'UsageTotalList')
    UsageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#UsageType', name: 'UsageType', traits: {"smithy.api#enum" => [{"name" => "EC2_INSTANCE_HOURS", "value" => "EC2_INSTANCE_HOURS"}, {"name" => "ECR_INITIAL_SCAN", "value" => "ECR_INITIAL_SCAN"}, {"name" => "ECR_RESCAN", "value" => "ECR_RESCAN"}, {"name" => "LAMBDA_FUNCTION_HOURS", "value" => "LAMBDA_FUNCTION_HOURS"}, {"name" => "LAMBDA_FUNCTION_CODE_HOURS", "value" => "LAMBDA_FUNCTION_CODE_HOURS"}, {"name" => "CODE_REPOSITORY_SAST", "value" => "CODE_REPOSITORY_SAST"}, {"name" => "CODE_REPOSITORY_IAC", "value" => "CODE_REPOSITORY_IAC"}, {"name" => "CODE_REPOSITORY_SCA", "value" => "CODE_REPOSITORY_SCA"}, {"name" => "EC2_AGENTLESS_INSTANCE_HOURS", "value" => "EC2_AGENTLESS_INSTANCE_HOURS"}]})
    UsageValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector2#UsageValue', name: 'UsageValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#ValidationExceptionFields', name: 'ValidationExceptionFields')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}]})
    Vendor = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Vendor', name: 'Vendor', traits: {"smithy.api#length" => {"max" => 16}})
    VendorCreatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#VendorCreatedAt', name: 'VendorCreatedAt')
    VendorSeverity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VendorSeverity', name: 'VendorSeverity', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VendorUpdatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector2#VendorUpdatedAt', name: 'VendorUpdatedAt')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#Version', name: 'Version', traits: {"smithy.api#pattern" => "^\\$LATEST|[0-9]+$"})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-([a-z0-9]{8}|[a-z0-9]{17}|\\*)$"})
    VulnId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnId', name: 'VulnId', traits: {"smithy.api#pattern" => "^CVE-[12][0-9]{3}-[0-9]{1,10}$"})
    VulnIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#VulnIdList', name: 'VulnIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Vulnerabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#Vulnerabilities', name: 'Vulnerabilities', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Vulnerability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#Vulnerability', name: 'Vulnerability')
    VulnerabilityDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnerabilityDescription', name: 'VulnerabilityDescription')
    VulnerabilityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnerabilityId', name: 'VulnerabilityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    VulnerabilityIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#VulnerabilityIdList', name: 'VulnerabilityIdList')
    VulnerabilityReferenceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnerabilityReferenceUrl', name: 'VulnerabilityReferenceUrl', traits: {"smithy.api#length" => {"min" => 0}})
    VulnerabilityReferenceUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#VulnerabilityReferenceUrls', name: 'VulnerabilityReferenceUrls', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    VulnerabilitySource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnerabilitySource', name: 'VulnerabilitySource', traits: {"smithy.api#enum" => [{"value" => "NVD", "name" => "NVD"}]})
    VulnerabilitySourceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnerabilitySourceUrl', name: 'VulnerabilitySourceUrl', traits: {"smithy.api#length" => {"min" => 0}})
    VulnerablePackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#VulnerablePackage', name: 'VulnerablePackage')
    VulnerablePackageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector2#VulnerablePackageList', name: 'VulnerablePackageList')
    VulnerablePackageRemediation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector2#VulnerablePackageRemediation', name: 'VulnerablePackageRemediation', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    WeeklySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector2#WeeklySchedule', name: 'WeeklySchedule')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    Account.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector for the account.</p>", "smithy.api#required" => {}}))
    Account.add_member(:resource_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: 'resourceStatus', traits: {"smithy.api#documentation" => "<p>Details of the status of Amazon Inspector scans by resource type.</p>", "smithy.api#required" => {}}))
    Account.type = Types::Account
    AccountAggregation.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationFindingType, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>The type of finding.</p>"}))
    AccountAggregation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    AccountAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order (ascending or descending).</p>"}))
    AccountAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort by.</p>"}))
    AccountAggregation.type = Types::AccountAggregation
    AccountAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>"}))
    AccountAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>The number of findings by severity.</p>"}))
    AccountAggregationResponse.add_member(:exploit_available_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'exploitAvailableCount', traits: {"smithy.api#documentation" => "<p> The number of findings that have an exploit available. </p>"}))
    AccountAggregationResponse.add_member(:fix_available_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'fixAvailableCount', traits: {"smithy.api#documentation" => "<p> Details about the number of fixes. </p>"}))
    AccountAggregationResponse.type = Types::AccountAggregationResponse
    AccountIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    AccountIdSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Account)
    AccountState.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    AccountState.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'state', traits: {"smithy.api#documentation" => "<p>An object detailing the status of Amazon Inspector for the account.</p>", "smithy.api#required" => {}}))
    AccountState.add_member(:resource_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceState, location_name: 'resourceState', traits: {"smithy.api#documentation" => "<p>An object detailing which resources Amazon Inspector is enabled to scan for the account.</p>", "smithy.api#required" => {}}))
    AccountState.type = Types::AccountState
    AccountStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountState)
    AggregationRequest.add_member(:account_aggregation, Types::AggregationRequest::AccountAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAggregation, location_name: 'accountAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on Amazon Web Services account\n         IDs.</p>"}))
    AggregationRequest.add_member(:ami_aggregation, Types::AggregationRequest::AmiAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiAggregation, location_name: 'amiAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on Amazon Machine\n         Images (AMIs).</p>"}))
    AggregationRequest.add_member(:aws_ecr_container_aggregation, Types::AggregationRequest::AwsEcrContainerAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcrContainerAggregation, location_name: 'awsEcrContainerAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on Amazon ECR container\n         images.</p>"}))
    AggregationRequest.add_member(:ec2_instance_aggregation, Types::AggregationRequest::Ec2InstanceAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceAggregation, location_name: 'ec2InstanceAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on Amazon EC2\n         instances.</p>"}))
    AggregationRequest.add_member(:finding_type_aggregation, Types::AggregationRequest::FindingTypeAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingTypeAggregation, location_name: 'findingTypeAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on finding\n         types.</p>"}))
    AggregationRequest.add_member(:image_layer_aggregation, Types::AggregationRequest::ImageLayerAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageLayerAggregation, location_name: 'imageLayerAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on container image\n         layers.</p>"}))
    AggregationRequest.add_member(:package_aggregation, Types::AggregationRequest::PackageAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAggregation, location_name: 'packageAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on operating system\n         package type.</p>"}))
    AggregationRequest.add_member(:repository_aggregation, Types::AggregationRequest::RepositoryAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryAggregation, location_name: 'repositoryAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on Amazon ECR\n         repositories.</p>"}))
    AggregationRequest.add_member(:title_aggregation, Types::AggregationRequest::TitleAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: TitleAggregation, location_name: 'titleAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on finding\n         title.</p>"}))
    AggregationRequest.add_member(:lambda_layer_aggregation, Types::AggregationRequest::LambdaLayerAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerAggregation, location_name: 'lambdaLayerAggregation', traits: {"smithy.api#documentation" => "<p>Returns an object with findings aggregated by Amazon Web Services Lambda layer.</p>"}))
    AggregationRequest.add_member(:lambda_function_aggregation, Types::AggregationRequest::LambdaFunctionAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAggregation, location_name: 'lambdaFunctionAggregation', traits: {"smithy.api#documentation" => "<p>Returns an object with findings aggregated by Amazon Web Services Lambda function.</p>"}))
    AggregationRequest.add_member(:code_repository_aggregation, Types::AggregationRequest::CodeRepositoryAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryAggregation, location_name: 'codeRepositoryAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation request based on code\n         repositories.</p>"}))
    AggregationRequest.add_member(:unknown, Types::AggregationRequest::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AggregationRequest.type = Types::AggregationRequest
    AggregationResponse.add_member(:account_aggregation, Types::AggregationResponse::AccountAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAggregationResponse, location_name: 'accountAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on Amazon Web Services account\n         IDs.</p>"}))
    AggregationResponse.add_member(:ami_aggregation, Types::AggregationResponse::AmiAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiAggregationResponse, location_name: 'amiAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on Amazon Machine\n         Images (AMIs).</p>"}))
    AggregationResponse.add_member(:aws_ecr_container_aggregation, Types::AggregationResponse::AwsEcrContainerAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcrContainerAggregationResponse, location_name: 'awsEcrContainerAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on Amazon ECR container\n         images.</p>"}))
    AggregationResponse.add_member(:ec2_instance_aggregation, Types::AggregationResponse::Ec2InstanceAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceAggregationResponse, location_name: 'ec2InstanceAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on Amazon EC2\n         instances.</p>"}))
    AggregationResponse.add_member(:finding_type_aggregation, Types::AggregationResponse::FindingTypeAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingTypeAggregationResponse, location_name: 'findingTypeAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on finding\n         types.</p>"}))
    AggregationResponse.add_member(:image_layer_aggregation, Types::AggregationResponse::ImageLayerAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageLayerAggregationResponse, location_name: 'imageLayerAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on container image\n         layers.</p>"}))
    AggregationResponse.add_member(:package_aggregation, Types::AggregationResponse::PackageAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageAggregationResponse, location_name: 'packageAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on operating system\n         package type.</p>"}))
    AggregationResponse.add_member(:repository_aggregation, Types::AggregationResponse::RepositoryAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryAggregationResponse, location_name: 'repositoryAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on Amazon ECR\n         repositories.</p>"}))
    AggregationResponse.add_member(:title_aggregation, Types::AggregationResponse::TitleAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: TitleAggregationResponse, location_name: 'titleAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on finding\n         title.</p>"}))
    AggregationResponse.add_member(:lambda_layer_aggregation, Types::AggregationResponse::LambdaLayerAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerAggregationResponse, location_name: 'lambdaLayerAggregation', traits: {"smithy.api#documentation" => "<p>An aggregation of findings by Amazon Web Services Lambda layer.</p>"}))
    AggregationResponse.add_member(:lambda_function_aggregation, Types::AggregationResponse::LambdaFunctionAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAggregationResponse, location_name: 'lambdaFunctionAggregation', traits: {"smithy.api#documentation" => "<p>An aggregation of findings by Amazon Web Services Lambda function.</p>"}))
    AggregationResponse.add_member(:code_repository_aggregation, Types::AggregationResponse::CodeRepositoryAggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryAggregationResponse, location_name: 'codeRepositoryAggregation', traits: {"smithy.api#documentation" => "<p>An object that contains details about an aggregation response based on code\n         repositories.</p>"}))
    AggregationResponse.add_member(:unknown, Types::AggregationResponse::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AggregationResponse.type = Types::AggregationResponse
    AggregationResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationResponse)
    AmiAggregation.add_member(:amis, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'amis', traits: {"smithy.api#documentation" => "<p>The IDs of AMIs to aggregate findings for.</p>"}))
    AmiAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    AmiAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    AmiAggregation.type = Types::AmiAggregation
    AmiAggregationResponse.add_member(:ami, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'ami', traits: {"smithy.api#documentation" => "<p>The ID of the AMI that findings were aggregated for.</p>", "smithy.api#required" => {}}))
    AmiAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the AMI.</p>"}))
    AmiAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that contains the count of matched findings per severity.</p>"}))
    AmiAggregationResponse.add_member(:affected_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'affectedInstances', traits: {"smithy.api#documentation" => "<p>The IDs of Amazon EC2 instances using this AMI.</p>"}))
    AmiAggregationResponse.type = Types::AmiAggregationResponse
    ArchitectureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture)
    AssociateConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration.</p>", "smithy.api#required" => {}}))
    AssociateConfigurationRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource', traits: {"smithy.api#required" => {}}))
    AssociateConfigurationRequest.type = Types::AssociateConfigurationRequest
    AssociateConfigurationRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConfigurationRequest)
    AssociateMemberInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the member account to be associated.</p>", "smithy.api#required" => {}}))
    AssociateMemberInput.type = Types::AssociateMemberInput
    AssociateMemberOutput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the successfully associated member account.</p>", "smithy.api#required" => {}}))
    AssociateMemberOutput.type = Types::AssociateMemberOutput
    AssociationResultStatusCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AssociationResultStatusCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AssociationResultStatusCode.add_member(:scan_configuration_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_CONFIGURATION_NOT_FOUND', traits: {"smithy.api#enumValue" => "SCAN_CONFIGURATION_NOT_FOUND"}))
    AssociationResultStatusCode.add_member(:invalid_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_INPUT', traits: {"smithy.api#enumValue" => "INVALID_INPUT"}))
    AssociationResultStatusCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    AssociationResultStatusCode.add_member(:quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    AtigData.add_member(:first_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstSeen, location_name: 'firstSeen', traits: {"smithy.api#documentation" => "<p>The date and time this vulnerability was first observed.</p>"}))
    AtigData.add_member(:last_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSeen, location_name: 'lastSeen', traits: {"smithy.api#documentation" => "<p>The date and time this vulnerability was last observed.</p>"}))
    AtigData.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: Targets, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The commercial sectors this vulnerability targets.</p>"}))
    AtigData.add_member(:ttps, Smithy::Schema::Shapes::ShapeRef.new(shape: Ttps, location_name: 'ttps', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://attack.mitre.org/\">MITRE ATT&amp;CK</a> tactics, techniques,\n         and procedures (TTPs) associated with vulnerability.</p>"}))
    AtigData.type = Types::AtigData
    AutoEnable.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ec2', traits: {"smithy.api#documentation" => "<p>Represents whether Amazon EC2 scans are automatically enabled for new members of your Amazon Inspector\n         organization.</p>", "smithy.api#required" => {}}))
    AutoEnable.add_member(:ecr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ecr', traits: {"smithy.api#documentation" => "<p>Represents whether Amazon ECR scans are automatically enabled for new members of your Amazon Inspector\n         organization.</p>", "smithy.api#required" => {}}))
    AutoEnable.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p>Represents whether Amazon Web Services Lambda standard scans are automatically enabled\n         for new members of your Amazon Inspector organization. </p>"}))
    AutoEnable.add_member(:lambda_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'lambdaCode', traits: {"smithy.api#documentation" => "<p>Represents whether Lambda code scans are automatically enabled for new members of your\n         Amazon Inspector organization. </p>"}))
    AutoEnable.add_member(:code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'codeRepository', traits: {"smithy.api#documentation" => "<p>Represents whether code repository scans are automatically enabled for new members of\n         your Amazon Inspector organization.</p>"}))
    AutoEnable.type = Types::AutoEnable
    AwsEc2InstanceDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'imageId', traits: {"smithy.api#documentation" => "<p>The image ID of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:ip_v4_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4AddressList, location_name: 'ipV4Addresses', traits: {"smithy.api#documentation" => "<p>The IPv4 addresses of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:ip_v6_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpV6AddressList, location_name: 'ipV6Addresses', traits: {"smithy.api#documentation" => "<p>The IPv6 addresses of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>The name of the key pair used to launch the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:iam_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'iamInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The IAM instance profile ARN of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'subnetId', traits: {"smithy.api#documentation" => "<p>The subnet ID of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.add_member(:launched_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'launchedAt', traits: {"smithy.api#documentation" => "<p>The date and time the Amazon EC2 instance was launched at.</p>"}))
    AwsEc2InstanceDetails.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform of the Amazon EC2 instance.</p>"}))
    AwsEc2InstanceDetails.type = Types::AwsEc2InstanceDetails
    AwsEcrContainerAggregation.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceIds', traits: {"smithy.api#documentation" => "<p>The container resource IDs.</p>"}))
    AwsEcrContainerAggregation.add_member(:image_shas, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'imageShas', traits: {"smithy.api#documentation" => "<p>The image SHA values.</p>"}))
    AwsEcrContainerAggregation.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>The container repositories.</p>"}))
    AwsEcrContainerAggregation.add_member(:architectures, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'architectures', traits: {"smithy.api#documentation" => "<p>The architecture of the containers.</p>"}))
    AwsEcrContainerAggregation.add_member(:image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'imageTags', traits: {"smithy.api#documentation" => "<p>The image tags.</p>"}))
    AwsEcrContainerAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order (ascending or descending).</p>"}))
    AwsEcrContainerAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcrContainerSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort by.</p>"}))
    AwsEcrContainerAggregation.add_member(:last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'lastInUseAt', traits: {"smithy.api#documentation" => "<p>The last time an Amazon ECR image was used in an Amazon ECS task or\n            Amazon EKS pod.</p>"}))
    AwsEcrContainerAggregation.add_member(:in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberFilterList, location_name: 'inUseCount', traits: {"smithy.api#documentation" => "<p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>"}))
    AwsEcrContainerAggregation.type = Types::AwsEcrContainerAggregation
    AwsEcrContainerAggregationResponse.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID of the container.</p>", "smithy.api#required" => {}}))
    AwsEcrContainerAggregationResponse.add_member(:image_sha, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'imageSha', traits: {"smithy.api#documentation" => "<p>The SHA value of the container image.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The container repository.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The architecture of the container.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'imageTags', traits: {"smithy.api#documentation" => "<p>The container image stags.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the account that owns the container.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>The number of finding by severity.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastInUseAt', traits: {"smithy.api#documentation" => "<p>The last time an Amazon ECR image was used in an Amazon ECS task or\n            Amazon EKS pod.</p>"}))
    AwsEcrContainerAggregationResponse.add_member(:in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'inUseCount', traits: {"smithy.api#documentation" => "<p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>"}))
    AwsEcrContainerAggregationResponse.type = Types::AwsEcrContainerAggregationResponse
    AwsEcrContainerImageDetails.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository the Amazon ECR container image resides in.</p>", "smithy.api#required" => {}}))
    AwsEcrContainerImageDetails.add_member(:image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagList, location_name: 'imageTags', traits: {"smithy.api#documentation" => "<p>The image tags attached to the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:pushed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'pushedAt', traits: {"smithy.api#documentation" => "<p>The date and time the Amazon ECR container image was pushed.</p>"}))
    AwsEcrContainerImageDetails.add_member(:author, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'author', traits: {"smithy.api#documentation" => "<p>The image author of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The architecture of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:image_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageHash, location_name: 'imageHash', traits: {"smithy.api#documentation" => "<p>The image hash of the Amazon ECR container image.</p>", "smithy.api#required" => {}}))
    AwsEcrContainerImageDetails.add_member(:registry, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'registry', traits: {"smithy.api#documentation" => "<p>The registry for the Amazon ECR container image.</p>", "smithy.api#required" => {}}))
    AwsEcrContainerImageDetails.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastInUseAt', traits: {"smithy.api#documentation" => "<p>The last time an Amazon ECR image was used in an Amazon ECS task or\n            Amazon EKS pod.</p>"}))
    AwsEcrContainerImageDetails.add_member(:in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'inUseCount', traits: {"smithy.api#documentation" => "<p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>"}))
    AwsEcrContainerImageDetails.type = Types::AwsEcrContainerImageDetails
    AwsEcsMetadataDetails.add_member(:details_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'detailsGroup', traits: {"smithy.api#documentation" => "<p>The details group information for a task in a cluster.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsEcsMetadataDetails.add_member(:task_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskDefinitionArn', traits: {"smithy.api#documentation" => "<p>The task definition ARN.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    AwsEcsMetadataDetails.type = Types::AwsEcsMetadataDetails
    AwsEksMetadataDetails.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace for an Amazon EKS cluster.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}}))
    AwsEksMetadataDetails.add_member(:workload_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEksWorkloadInfoList, location_name: 'workloadInfoList', traits: {"smithy.api#documentation" => "<p>The list of workloads.</p>"}))
    AwsEksMetadataDetails.type = Types::AwsEksMetadataDetails
    AwsEksWorkloadInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the workload.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsEksWorkloadInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workload type.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsEksWorkloadInfo.type = Types::AwsEksWorkloadInfo
    AwsEksWorkloadInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEksWorkloadInfo)
    AwsLambdaFunctionDetails.add_member(:function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'functionName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services Lambda function.</p>", "smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Runtime, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>The runtime environment for the Amazon Web Services Lambda function.</p>", "smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:code_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'codeSha256', traits: {"smithy.api#documentation" => "<p>The SHA256 hash of the Amazon Web Services Lambda function's deployment package.</p>", "smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the Amazon Web Services Lambda function.</p>", "smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function's execution role.</p>", "smithy.api#required" => {}}))
    AwsLambdaFunctionDetails.add_member(:layers, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerList, location_name: 'layers', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\"> layers</a>. A\n         Lambda function can have up to five layers.</p>"}))
    AwsLambdaFunctionDetails.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaVpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function's networking configuration.</p>"}))
    AwsLambdaFunctionDetails.add_member(:package_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageType, location_name: 'packageType', traits: {"smithy.api#documentation" => "<p>The type of deployment package. Set to <code>Image</code> for container image and set\n            <code>Zip</code> for .zip file archive.</p>"}))
    AwsLambdaFunctionDetails.add_member(:architectures, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchitectureList, location_name: 'architectures', traits: {"smithy.api#documentation" => "<p>The instruction set architecture that the Amazon Web Services Lambda function supports.\n         Architecture is a string array with one of the valid values. The default architecture value\n         is <code>x86_64</code>.</p>"}))
    AwsLambdaFunctionDetails.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that a user last updated the configuration, in <a href=\"https://www.iso.org/iso-8601-date-and-time-format.html\">ISO 8601\n         format</a>\n         </p>"}))
    AwsLambdaFunctionDetails.type = Types::AwsLambdaFunctionDetails
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    BatchAssociateCodeSecurityScanConfigurationRequest.add_member(:associate_configuration_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConfigurationRequestList, location_name: 'associateConfigurationRequests', traits: {"smithy.api#documentation" => "<p>A list of code repositories to associate with the specified scan configuration.</p>", "smithy.api#required" => {}}))
    BatchAssociateCodeSecurityScanConfigurationRequest.type = Types::BatchAssociateCodeSecurityScanConfigurationRequest
    BatchAssociateCodeSecurityScanConfigurationResponse.add_member(:failed_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAssociationResultList, location_name: 'failedAssociations', traits: {"smithy.api#documentation" => "<p>Details of any code repositories that failed to be associated with the scan\n         configuration.</p>"}))
    BatchAssociateCodeSecurityScanConfigurationResponse.add_member(:successful_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulAssociationResultList, location_name: 'successfulAssociations', traits: {"smithy.api#documentation" => "<p>Details of code repositories that were successfully associated with the scan\n         configuration.</p>"}))
    BatchAssociateCodeSecurityScanConfigurationResponse.type = Types::BatchAssociateCodeSecurityScanConfigurationResponse
    BatchDisassociateCodeSecurityScanConfigurationRequest.add_member(:disassociate_configuration_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConfigurationRequestList, location_name: 'disassociateConfigurationRequests', traits: {"smithy.api#documentation" => "<p>A list of code repositories to disassociate from the specified scan\n         configuration.</p>", "smithy.api#required" => {}}))
    BatchDisassociateCodeSecurityScanConfigurationRequest.type = Types::BatchDisassociateCodeSecurityScanConfigurationRequest
    BatchDisassociateCodeSecurityScanConfigurationResponse.add_member(:failed_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAssociationResultList, location_name: 'failedAssociations', traits: {"smithy.api#documentation" => "<p>Details of any code repositories that failed to be disassociated from the scan\n         configuration.</p>"}))
    BatchDisassociateCodeSecurityScanConfigurationResponse.add_member(:successful_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulAssociationResultList, location_name: 'successfulAssociations', traits: {"smithy.api#documentation" => "<p>Details of code repositories that were successfully disassociated from the scan\n         configuration.</p>"}))
    BatchDisassociateCodeSecurityScanConfigurationResponse.type = Types::BatchDisassociateCodeSecurityScanConfigurationResponse
    BatchGetAccountStatusInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdSet, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The 12-digit Amazon Web Services account IDs of the accounts to retrieve Amazon Inspector status for.</p>"}))
    BatchGetAccountStatusInput.type = Types::BatchGetAccountStatusInput
    BatchGetAccountStatusOutput.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStateList, location_name: 'accounts', traits: {"smithy.api#documentation" => "<p>An array of objects that provide details on the status of Amazon Inspector for each of the\n         requested accounts.</p>", "smithy.api#required" => {}}))
    BatchGetAccountStatusOutput.add_member(:failed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAccountList, location_name: 'failedAccounts', traits: {"smithy.api#documentation" => "<p>An array of objects detailing any accounts that failed to enable Amazon Inspector and why.</p>"}))
    BatchGetAccountStatusOutput.type = Types::BatchGetAccountStatusOutput
    BatchGetCodeSnippetRequest.add_member(:finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArns, location_name: 'findingArns', traits: {"smithy.api#documentation" => "<p>An array of finding ARNs for the findings you want to retrieve code snippets\n         from.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchGetCodeSnippetRequest.type = Types::BatchGetCodeSnippetRequest
    BatchGetCodeSnippetResponse.add_member(:code_snippet_results, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSnippetResultList, location_name: 'codeSnippetResults', traits: {"smithy.api#documentation" => "<p>The retrieved code snippets associated with the provided finding ARNs.</p>"}))
    BatchGetCodeSnippetResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSnippetErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Any errors Amazon Inspector encountered while trying to retrieve the requested code\n         snippets.</p>"}))
    BatchGetCodeSnippetResponse.type = Types::BatchGetCodeSnippetResponse
    BatchGetFindingDetailsRequest.add_member(:finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArnList, location_name: 'findingArns', traits: {"smithy.api#documentation" => "<p>A list of finding ARNs.</p>", "smithy.api#required" => {}}))
    BatchGetFindingDetailsRequest.type = Types::BatchGetFindingDetailsRequest
    BatchGetFindingDetailsResponse.add_member(:finding_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetails, location_name: 'findingDetails', traits: {"smithy.api#documentation" => "<p>A finding's vulnerability details.</p>"}))
    BatchGetFindingDetailsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetailsErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Error information for findings that details could not be returned for.</p>"}))
    BatchGetFindingDetailsResponse.type = Types::BatchGetFindingDetailsResponse
    BatchGetFreeTrialInfoInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteringAccountIdList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The account IDs to get free trial status for.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    BatchGetFreeTrialInfoInput.type = Types::BatchGetFreeTrialInfoInput
    BatchGetFreeTrialInfoOutput.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialAccountInfoList, location_name: 'accounts', traits: {"smithy.api#documentation" => "<p>An array of objects that provide Amazon Inspector free trial details for each of the requested\n         accounts. </p>", "smithy.api#required" => {}}))
    BatchGetFreeTrialInfoOutput.add_member(:failed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialInfoErrorList, location_name: 'failedAccounts', traits: {"smithy.api#documentation" => "<p>An array of objects detailing any accounts that free trial data could not be returned\n         for.</p>", "smithy.api#required" => {}}))
    BatchGetFreeTrialInfoOutput.type = Types::BatchGetFreeTrialInfoOutput
    BatchGetMemberEc2DeepInspectionStatusRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdSet, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The unique identifiers for the Amazon Web Services accounts to retrieve Amazon Inspector deep inspection\n         activation status for. </p>"}))
    BatchGetMemberEc2DeepInspectionStatusRequest.type = Types::BatchGetMemberEc2DeepInspectionStatusRequest
    BatchGetMemberEc2DeepInspectionStatusResponse.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusStateList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>An array of objects that provide details on the activation status of Amazon Inspector deep\n         inspection for each of the requested accounts. </p>"}))
    BatchGetMemberEc2DeepInspectionStatusResponse.add_member(:failed_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedMemberAccountEc2DeepInspectionStatusStateList, location_name: 'failedAccountIds', traits: {"smithy.api#documentation" => "<p>An array of objects that provide details on any accounts that failed to activate Amazon Inspector\n         deep inspection and why. </p>"}))
    BatchGetMemberEc2DeepInspectionStatusResponse.type = Types::BatchGetMemberEc2DeepInspectionStatusResponse
    BatchUpdateMemberEc2DeepInspectionStatusRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The unique identifiers for the Amazon Web Services accounts to change Amazon Inspector deep inspection status\n         for.</p>", "smithy.api#required" => {}}))
    BatchUpdateMemberEc2DeepInspectionStatusRequest.type = Types::BatchUpdateMemberEc2DeepInspectionStatusRequest
    BatchUpdateMemberEc2DeepInspectionStatusResponse.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusStateList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>An array of objects that provide details for each of the accounts that Amazon Inspector deep\n         inspection status was successfully changed for. </p>"}))
    BatchUpdateMemberEc2DeepInspectionStatusResponse.add_member(:failed_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedMemberAccountEc2DeepInspectionStatusStateList, location_name: 'failedAccountIds', traits: {"smithy.api#documentation" => "<p>An array of objects that provide details for each of the accounts that Amazon Inspector deep\n         inspection status could not be successfully changed for. </p>"}))
    BatchUpdateMemberEc2DeepInspectionStatusResponse.type = Types::BatchUpdateMemberEc2DeepInspectionStatusResponse
    CancelFindingsReportInput.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The ID of the report to be canceled.</p>", "smithy.api#required" => {}}))
    CancelFindingsReportInput.type = Types::CancelFindingsReportInput
    CancelFindingsReportOutput.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The ID of the canceled report.</p>", "smithy.api#required" => {}}))
    CancelFindingsReportOutput.type = Types::CancelFindingsReportOutput
    CancelSbomExportRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The report ID of the SBOM export to cancel.</p>", "smithy.api#required" => {}}))
    CancelSbomExportRequest.type = Types::CancelSbomExportRequest
    CancelSbomExportResponse.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The report ID of the canceled SBOM export.</p>"}))
    CancelSbomExportResponse.type = Types::CancelSbomExportResponse
    CheckIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    CisAccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    CisCheckAggregation.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The scan ARN for the CIS check scan ARN.</p>", "smithy.api#required" => {}}))
    CisCheckAggregation.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The check ID for the CIS check.</p>"}))
    CisCheckAggregation.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The CIS check title.</p>"}))
    CisCheckAggregation.add_member(:check_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checkDescription', traits: {"smithy.api#documentation" => "<p>The description for the CIS check.</p>"}))
    CisCheckAggregation.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The CIS check level.</p>"}))
    CisCheckAggregation.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account ID for the CIS check.</p>"}))
    CisCheckAggregation.add_member(:status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCounts, location_name: 'statusCounts', traits: {"smithy.api#documentation" => "<p>The CIS check status counts.</p>"}))
    CisCheckAggregation.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The CIS check platform.</p>"}))
    CisCheckAggregation.type = Types::CisCheckAggregation
    CisCheckAggregationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisCheckAggregation)
    CisDateFilter.add_member(:earliest_scan_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'earliestScanStartTime', traits: {"smithy.api#documentation" => "<p>The CIS date filter's earliest scan start time.</p>"}))
    CisDateFilter.add_member(:latest_scan_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'latestScanStartTime', traits: {"smithy.api#documentation" => "<p>The CIS date filter's latest scan start time.</p>"}))
    CisDateFilter.type = Types::CisDateFilter
    CisFindingArnFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    CisFindingStatus.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CisFindingStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CisFindingStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    CisFindingStatusComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisFindingStatusFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingStatusComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The comparison value of the CIS finding status filter.</p>", "smithy.api#required" => {}}))
    CisFindingStatusFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingStatus, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the CIS finding status filter.</p>", "smithy.api#required" => {}}))
    CisFindingStatusFilter.type = Types::CisFindingStatusFilter
    CisFindingStatusFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingStatusFilter)
    CisNumberFilter.add_member(:upper_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'upperInclusive', traits: {"smithy.api#documentation" => "<p>The CIS number filter's upper inclusive.</p>"}))
    CisNumberFilter.add_member(:lower_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'lowerInclusive', traits: {"smithy.api#documentation" => "<p>The CIS number filter's lower inclusive.</p>"}))
    CisNumberFilter.type = Types::CisNumberFilter
    CisNumberFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisNumberFilter)
    CisReportFormat.add_member(:pdf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "PDF"}))
    CisReportFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    CisReportStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CisReportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CisReportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CisResultStatus.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CisResultStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CisResultStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    CisResultStatusComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisResultStatusFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisResultStatusComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The comparison value of the CIS result status filter.</p>", "smithy.api#required" => {}}))
    CisResultStatusFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CisResultStatus, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the CIS result status filter.</p>", "smithy.api#required" => {}}))
    CisResultStatusFilter.type = Types::CisResultStatusFilter
    CisResultStatusFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisResultStatusFilter)
    CisRuleStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CisRuleStatus.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CisRuleStatus.add_member(:not_evaluated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EVALUATED', traits: {"smithy.api#enumValue" => "NOT_EVALUATED"}))
    CisRuleStatus.add_member(:informational, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFORMATIONAL', traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    CisRuleStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CisRuleStatus.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    CisRuleStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CisScan.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The CIS scan's ARN.</p>", "smithy.api#required" => {}}))
    CisScan.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The CIS scan's configuration ARN.</p>", "smithy.api#required" => {}}))
    CisScan.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The CIS scan's status.</p>"}))
    CisScan.add_member(:scan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanName, location_name: 'scanName', traits: {"smithy.api#documentation" => "<p>The the name of the scan configuration that's associated with this scan.</p>"}))
    CisScan.add_member(:scan_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'scanDate', traits: {"smithy.api#documentation" => "<p>The CIS scan's date.</p>"}))
    CisScan.add_member(:failed_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'failedChecks', traits: {"smithy.api#documentation" => "<p>The CIS scan's failed checks.</p>"}))
    CisScan.add_member(:total_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalChecks', traits: {"smithy.api#documentation" => "<p>The CIS scan's total checks.</p>"}))
    CisScan.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargets, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The CIS scan's targets.</p>"}))
    CisScan.add_member(:scheduled_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'scheduledBy', traits: {"smithy.api#documentation" => "<p>The account or organization that schedules the CIS scan.</p>"}))
    CisScan.add_member(:security_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'securityLevel', traits: {"smithy.api#documentation" => "<p> The security level for the CIS scan. Security level refers to the Benchmark levels that\n         CIS assigns to a profile. </p>"}))
    CisScan.type = Types::CisScan
    CisScanArnFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    CisScanConfiguration.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration's scan configuration ARN.</p>", "smithy.api#required" => {}}))
    CisScanConfiguration.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CisOwnerId, location_name: 'ownerId', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration's owner ID.</p>"}))
    CisScanConfiguration.add_member(:scan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanName, location_name: 'scanName', traits: {"smithy.api#documentation" => "<p>The name of the CIS scan configuration.</p>"}))
    CisScanConfiguration.add_member(:security_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'securityLevel', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration's security level.</p>"}))
    CisScanConfiguration.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration's schedule.</p>"}))
    CisScanConfiguration.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargets, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration's targets.</p>"}))
    CisScanConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration's tags.</p>"}))
    CisScanConfiguration.type = Types::CisScanConfiguration
    CisScanConfigurationArnFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    CisScanConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfiguration)
    CisScanConfigurationsSortBy.add_member(:scan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_NAME', traits: {"smithy.api#enumValue" => "SCAN_NAME"}))
    CisScanConfigurationsSortBy.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_CONFIGURATION_ARN', traits: {"smithy.api#enumValue" => "SCAN_CONFIGURATION_ARN"}))
    CisScanDateFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisDateFilter)
    CisScanList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisScan)
    CisScanNameFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    CisScanResultDetails.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' scan ARN.</p>", "smithy.api#required" => {}}))
    CisScanResultDetails.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' account ID.</p>"}))
    CisScanResultDetails.add_member(:target_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'targetResourceId', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' target resource ID.</p>"}))
    CisScanResultDetails.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' platform.</p>"}))
    CisScanResultDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' status.</p>"}))
    CisScanResultDetails.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' status reason.</p>"}))
    CisScanResultDetails.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' check ID.</p>"}))
    CisScanResultDetails.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' title.</p>"}))
    CisScanResultDetails.add_member(:check_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checkDescription', traits: {"smithy.api#documentation" => "<p>The account ID that's associated with the CIS scan result details.</p>"}))
    CisScanResultDetails.add_member(:remediation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'remediation', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' remediation.</p>"}))
    CisScanResultDetails.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' level.</p>"}))
    CisScanResultDetails.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The CIS scan result details' finding ARN.</p>"}))
    CisScanResultDetails.type = Types::CisScanResultDetails
    CisScanResultDetailsFilterCriteria.add_member(:finding_status_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingStatusFilterList, location_name: 'findingStatusFilters', traits: {"smithy.api#documentation" => "<p>The criteria's finding status filters.</p>"}))
    CisScanResultDetailsFilterCriteria.add_member(:check_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckIdFilterList, location_name: 'checkIdFilters', traits: {"smithy.api#documentation" => "<p>The criteria's check ID filters.</p>"}))
    CisScanResultDetailsFilterCriteria.add_member(:title_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TitleFilterList, location_name: 'titleFilters', traits: {"smithy.api#documentation" => "<p>The criteria's title filters.</p>"}))
    CisScanResultDetailsFilterCriteria.add_member(:security_level_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevelFilterList, location_name: 'securityLevelFilters', traits: {"smithy.api#documentation" => "<p> The criteria's security level filters. . Security level refers to the Benchmark levels\n         that CIS assigns to a profile. </p>"}))
    CisScanResultDetailsFilterCriteria.add_member(:finding_arn_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisFindingArnFilterList, location_name: 'findingArnFilters', traits: {"smithy.api#documentation" => "<p>The criteria's finding ARN filters.</p>"}))
    CisScanResultDetailsFilterCriteria.type = Types::CisScanResultDetailsFilterCriteria
    CisScanResultDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultDetails)
    CisScanResultDetailsSortBy.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECK_ID', traits: {"smithy.api#enumValue" => "CHECK_ID"}))
    CisScanResultDetailsSortBy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:account_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: OneAccountIdFilterList, location_name: 'accountIdFilters', traits: {"smithy.api#documentation" => "<p>The criteria's account ID filters.</p>"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:check_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckIdFilterList, location_name: 'checkIdFilters', traits: {"smithy.api#documentation" => "<p>The criteria's check ID filters.</p>"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:title_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TitleFilterList, location_name: 'titleFilters', traits: {"smithy.api#documentation" => "<p>The criteria's title filters.</p>"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:platform_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilterList, location_name: 'platformFilters', traits: {"smithy.api#documentation" => "<p>The criteria's platform filters.</p>"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:failed_resources_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisNumberFilterList, location_name: 'failedResourcesFilters', traits: {"smithy.api#documentation" => "<p>The criteria's failed resources filters.</p>"}))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:security_level_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevelFilterList, location_name: 'securityLevelFilters', traits: {"smithy.api#documentation" => "<p>The criteria's security level filters.</p>"}))
    CisScanResultsAggregatedByChecksFilterCriteria.type = Types::CisScanResultsAggregatedByChecksFilterCriteria
    CisScanResultsAggregatedByChecksSortBy.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECK_ID', traits: {"smithy.api#enumValue" => "CHECK_ID"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TITLE', traits: {"smithy.api#enumValue" => "TITLE"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:failed_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_COUNTS', traits: {"smithy.api#enumValue" => "FAILED_COUNTS"}))
    CisScanResultsAggregatedByChecksSortBy.add_member(:security_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_LEVEL', traits: {"smithy.api#enumValue" => "SECURITY_LEVEL"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:account_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: 'accountIdFilters', traits: {"smithy.api#documentation" => "<p>The criteria's account ID filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:status_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisResultStatusFilterList, location_name: 'statusFilters', traits: {"smithy.api#documentation" => "<p>The criteria's status filter.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:check_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckIdFilterList, location_name: 'checkIdFilters', traits: {"smithy.api#documentation" => "<p>The criteria's check ID filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_resource_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdFilterList, location_name: 'targetResourceIdFilters', traits: {"smithy.api#documentation" => "<p>The criteria's target resource ID filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_resource_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagFilterList, location_name: 'targetResourceTagFilters', traits: {"smithy.api#documentation" => "<p>The criteria's target resource tag filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:platform_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilterList, location_name: 'platformFilters', traits: {"smithy.api#documentation" => "<p>The criteria's platform filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_status_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatusFilterList, location_name: 'targetStatusFilters', traits: {"smithy.api#documentation" => "<p>The criteria's target status filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_status_reason_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatusReasonFilterList, location_name: 'targetStatusReasonFilters', traits: {"smithy.api#documentation" => "<p>The criteria's target status reason filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:failed_checks_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisNumberFilterList, location_name: 'failedChecksFilters', traits: {"smithy.api#documentation" => "<p>The criteria's failed checks filters.</p>"}))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.type = Types::CisScanResultsAggregatedByTargetResourceFilterCriteria
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ID', traits: {"smithy.api#enumValue" => "RESOURCE_ID"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:failed_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_COUNTS', traits: {"smithy.api#enumValue" => "FAILED_COUNTS"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_STATUS', traits: {"smithy.api#enumValue" => "TARGET_STATUS"}))
    CisScanResultsAggregatedByTargetResourceSortBy.add_member(:target_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_STATUS_REASON', traits: {"smithy.api#enumValue" => "TARGET_STATUS_REASON"}))
    CisScanStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CisScanStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CisScanStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CisScanStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CisScanStatusComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisScanStatusFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanStatusComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The filter comparison value.</p>", "smithy.api#required" => {}}))
    CisScanStatusFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanStatus, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The filter value.</p>", "smithy.api#required" => {}}))
    CisScanStatusFilter.type = Types::CisScanStatusFilter
    CisScanStatusFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanStatusFilter)
    CisScheduledByFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    CisSecurityLevel.add_member(:level_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEVEL_1', traits: {"smithy.api#enumValue" => "LEVEL_1"}))
    CisSecurityLevel.add_member(:level_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEVEL_2', traits: {"smithy.api#enumValue" => "LEVEL_2"}))
    CisSecurityLevelComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisSecurityLevelFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevelComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The CIS security filter comparison value.</p>", "smithy.api#required" => {}}))
    CisSecurityLevelFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The CIS security filter value.</p>", "smithy.api#required" => {}}))
    CisSecurityLevelFilter.type = Types::CisSecurityLevelFilter
    CisSecurityLevelFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevelFilter)
    CisSessionMessage.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleId, location_name: 'ruleId', traits: {"smithy.api#documentation" => "<p>The rule ID for the CIS session message.</p>", "smithy.api#required" => {}}))
    CisSessionMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CisRuleStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the CIS session message.</p>", "smithy.api#required" => {}}))
    CisSessionMessage.add_member(:cis_rule_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CisRuleDetails, location_name: 'cisRuleDetails', traits: {"smithy.api#documentation" => "<p>The CIS rule details for the CIS session message.</p>", "smithy.api#required" => {}}))
    CisSessionMessage.type = Types::CisSessionMessage
    CisSessionMessages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisSessionMessage)
    CisSortOrder.add_member(:asc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    CisSortOrder.add_member(:desc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    CisStringComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisStringComparison.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFIX', traits: {"smithy.api#enumValue" => "PREFIX"}))
    CisStringComparison.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    CisStringFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The comparison value of the CIS string filter.</p>", "smithy.api#required" => {}}))
    CisStringFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the CIS string filter.</p>", "smithy.api#required" => {}}))
    CisStringFilter.type = Types::CisStringFilter
    CisTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MapKey)
    CisTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MapValue)
    CisTargetResourceAggregation.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The scan ARN for the CIS target resource.</p>", "smithy.api#required" => {}}))
    CisTargetResourceAggregation.add_member(:target_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'targetResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the target resource.</p>"}))
    CisTargetResourceAggregation.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account ID for the CIS target resource.</p>"}))
    CisTargetResourceAggregation.add_member(:target_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: 'targetResourceTags', traits: {"smithy.api#documentation" => "<p>The tag for the target resource.</p>"}))
    CisTargetResourceAggregation.add_member(:status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCounts, location_name: 'statusCounts', traits: {"smithy.api#documentation" => "<p>The target resource status counts.</p>"}))
    CisTargetResourceAggregation.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform for the CIS target resource.</p>"}))
    CisTargetResourceAggregation.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatus, location_name: 'targetStatus', traits: {"smithy.api#documentation" => "<p>The status of the target resource.</p>"}))
    CisTargetResourceAggregation.add_member(:target_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatusReason, location_name: 'targetStatusReason', traits: {"smithy.api#documentation" => "<p>The reason for the target resource.</p>"}))
    CisTargetResourceAggregation.type = Types::CisTargetResourceAggregation
    CisTargetResourceAggregationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetResourceAggregation)
    CisTargetStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    CisTargetStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CisTargetStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CisTargetStatusComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    CisTargetStatusFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatusComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The comparison value of the CIS target status filter.</p>", "smithy.api#required" => {}}))
    CisTargetStatusFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatus, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the CIS target status filter.</p>", "smithy.api#required" => {}}))
    CisTargetStatusFilter.type = Types::CisTargetStatusFilter
    CisTargetStatusReason.add_member(:scan_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_IN_PROGRESS', traits: {"smithy.api#enumValue" => "SCAN_IN_PROGRESS"}))
    CisTargetStatusReason.add_member(:unsupported_os, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OS', traits: {"smithy.api#enumValue" => "UNSUPPORTED_OS"}))
    CisTargetStatusReason.add_member(:ssm_unmanaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM_UNMANAGED', traits: {"smithy.api#enumValue" => "SSM_UNMANAGED"}))
    CisTargetStatusReasonFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatusComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The comparison value of the CIS target status reason filter.</p>", "smithy.api#required" => {}}))
    CisTargetStatusReasonFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatusReason, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the CIS target status reason filter.</p>", "smithy.api#required" => {}}))
    CisTargetStatusReasonFilter.type = Types::CisTargetStatusReasonFilter
    CisTargets.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: CisAccountIdList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The CIS target account ids.</p>"}))
    CisTargets.add_member(:target_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: 'targetResourceTags', traits: {"smithy.api#documentation" => "<p>The CIS target resource tags.</p>"}))
    CisTargets.type = Types::CisTargets
    CisaData.add_member(:date_added, Smithy::Schema::Shapes::ShapeRef.new(shape: CisaDateAdded, location_name: 'dateAdded', traits: {"smithy.api#documentation" => "<p>The date and time CISA added this vulnerability to their catalogue.</p>"}))
    CisaData.add_member(:date_due, Smithy::Schema::Shapes::ShapeRef.new(shape: CisaDateDue, location_name: 'dateDue', traits: {"smithy.api#documentation" => "<p>The date and time CISA expects a fix to have been provided vulnerability.</p>"}))
    CisaData.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: CisaAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The remediation action recommended by CISA for this vulnerability.</p>"}))
    CisaData.type = Types::CisaData
    ClusterDetails.add_member(:last_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastInUse', traits: {"smithy.api#documentation" => "<p>The last timestamp when Amazon Inspector recorded the image in use in the task or pod\n         in the cluster.</p>", "smithy.api#required" => {}}))
    ClusterDetails.add_member(:running_unit_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'runningUnitCount', traits: {"smithy.api#documentation" => "<p>The number of tasks or pods where an image was running on the cluster.</p>"}))
    ClusterDetails.add_member(:stopped_unit_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'stoppedUnitCount', traits: {"smithy.api#documentation" => "<p>The number of tasks or pods where an image was stopped on the cluster in the last 24\n         hours.</p>"}))
    ClusterDetails.add_member(:cluster_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMetadata, location_name: 'clusterMetadata', traits: {"smithy.api#required" => {}}))
    ClusterDetails.type = Types::ClusterDetails
    ClusterDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDetails)
    ClusterForImageFilterCriteria.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource Id to be used in the filter criteria.</p>", "smithy.api#pattern" => "^arn:.*:ecr:.*:\\d{12}:repository\\/(?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*(\\/sha256:[a-z0-9]{64})?$", "smithy.api#required" => {}}))
    ClusterForImageFilterCriteria.type = Types::ClusterForImageFilterCriteria
    ClusterInformation.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The cluster ARN.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(?:-[a-z0-9-]+)?:(?:ecs|eks):[a-z0-9-]+:[0-9]{12}:cluster/[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    ClusterInformation.add_member(:cluster_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDetailsList, location_name: 'clusterDetails', traits: {"smithy.api#documentation" => "<p>Details about the cluster.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}}))
    ClusterInformation.type = Types::ClusterInformation
    ClusterInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterInformation)
    ClusterMetadata.add_member(:aws_ecs_metadata_details, Types::ClusterMetadata::AwsEcsMetadataDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcsMetadataDetails, location_name: 'awsEcsMetadataDetails', traits: {"smithy.api#documentation" => "<p>The details for an Amazon ECS cluster in the cluster metadata.</p>"}))
    ClusterMetadata.add_member(:aws_eks_metadata_details, Types::ClusterMetadata::AwsEksMetadataDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEksMetadataDetails, location_name: 'awsEksMetadataDetails', traits: {"smithy.api#documentation" => "<p>The details for an Amazon EKS cluster in the cluster metadata.</p>"}))
    ClusterMetadata.add_member(:unknown, Types::ClusterMetadata::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ClusterMetadata.type = Types::ClusterMetadata
    CodeFilePath.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'fileName', traits: {"smithy.api#documentation" => "<p>The name of the file the code vulnerability was found in.</p>", "smithy.api#required" => {}}))
    CodeFilePath.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The file path to the code that a vulnerability was found in.</p>", "smithy.api#required" => {}}))
    CodeFilePath.add_member(:start_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'startLine', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The line number of the first line of code that a vulnerability was found in.</p>", "smithy.api#required" => {}}))
    CodeFilePath.add_member(:end_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'endLine', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The line number of the last line of code that a vulnerability was found in.</p>", "smithy.api#required" => {}}))
    CodeFilePath.type = Types::CodeFilePath
    CodeLine.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of a line of code</p>", "smithy.api#length" => {"min" => 0, "max" => 240}, "smithy.api#required" => {}}))
    CodeLine.add_member(:line_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'lineNumber', traits: {"smithy.api#documentation" => "<p>The line number that a section of code is located at.</p>", "smithy.api#required" => {}}))
    CodeLine.type = Types::CodeLine
    CodeLineList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeLine)
    CodeRepositoryAggregation.add_member(:project_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'projectNames', traits: {"smithy.api#documentation" => "<p>The project names to include in the aggregation results.</p>"}))
    CodeRepositoryAggregation.add_member(:provider_types, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'providerTypes', traits: {"smithy.api#documentation" => "<p>The repository provider types to include in the aggregation results.</p>"}))
    CodeRepositoryAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by (ascending or descending) in the code repository\n         aggregation.</p>"}))
    CodeRepositoryAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositorySortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by in the code repository aggregation.</p>"}))
    CodeRepositoryAggregation.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceIds', traits: {"smithy.api#documentation" => "<p>The resource IDs to include in the aggregation results.</p>"}))
    CodeRepositoryAggregation.type = Types::CodeRepositoryAggregation
    CodeRepositoryAggregationResponse.add_member(:project_names, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'projectNames', traits: {"smithy.api#documentation" => "<p>The names of the projects associated with the code repository.</p>", "smithy.api#required" => {}}))
    CodeRepositoryAggregationResponse.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'providerType', traits: {"smithy.api#documentation" => "<p>The type of repository provider for the code repository.</p>"}))
    CodeRepositoryAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts'))
    CodeRepositoryAggregationResponse.add_member(:exploit_available_active_findings_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'exploitAvailableActiveFindingsCount', traits: {"smithy.api#documentation" => "<p>The number of active findings that have an exploit available for the code\n         repository.</p>"}))
    CodeRepositoryAggregationResponse.add_member(:fix_available_active_findings_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'fixAvailableActiveFindingsCount', traits: {"smithy.api#documentation" => "<p>The number of active findings that have a fix available for the code repository.</p>"}))
    CodeRepositoryAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the code repository.</p>"}))
    CodeRepositoryAggregationResponse.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID of the code repository.</p>"}))
    CodeRepositoryAggregationResponse.type = Types::CodeRepositoryAggregationResponse
    CodeRepositoryDetails.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryProjectName, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the code repository.</p>"}))
    CodeRepositoryDetails.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration associated with the\n         repository.</p>"}))
    CodeRepositoryDetails.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryProviderType, location_name: 'providerType', traits: {"smithy.api#documentation" => "<p>The type of repository provider (such as GitHub, GitLab, etc.).</p>"}))
    CodeRepositoryDetails.type = Types::CodeRepositoryDetails
    CodeRepositoryMetadata.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the code repository.</p>", "smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#required" => {}}))
    CodeRepositoryMetadata.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration associated with the\n         repository.</p>"}))
    CodeRepositoryMetadata.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'providerType', traits: {"smithy.api#documentation" => "<p>The type of repository provider (such as GitHub, GitLab, etc.).</p>", "smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#required" => {}}))
    CodeRepositoryMetadata.add_member(:provider_type_visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'providerTypeVisibility', traits: {"smithy.api#documentation" => "<p>The visibility setting of the repository (public or private).</p>", "smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#required" => {}}))
    CodeRepositoryMetadata.add_member(:last_scanned_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'lastScannedCommitId', traits: {"smithy.api#documentation" => "<p>The ID of the last commit that was scanned in the repository.</p>"}))
    CodeRepositoryMetadata.add_member(:scan_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCodeSecurityScanConfiguration, location_name: 'scanConfiguration', traits: {"smithy.api#documentation" => "<p>The scan configuration settings applied to the code repository.</p>"}))
    CodeRepositoryMetadata.add_member(:on_demand_scan, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryOnDemandScan, location_name: 'onDemandScan', traits: {"smithy.api#documentation" => "<p>Information about on-demand scans performed on the repository.</p>"}))
    CodeRepositoryMetadata.type = Types::CodeRepositoryMetadata
    CodeRepositoryOnDemandScan.add_member(:last_scanned_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'lastScannedCommitId', traits: {"smithy.api#documentation" => "<p>The ID of the last commit that was scanned during an on-demand scan.</p>"}))
    CodeRepositoryOnDemandScan.add_member(:last_scan_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastScanAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the last on-demand scan was performed.</p>"}))
    CodeRepositoryOnDemandScan.add_member(:scan_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatus, location_name: 'scanStatus'))
    CodeRepositoryOnDemandScan.type = Types::CodeRepositoryOnDemandScan
    CodeScanStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CodeScanStatus.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    CodeScanStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CodeScanStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    CodeSecurityIntegrationSummary.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the code security integration.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of repository provider for the integration.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the code security integration.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the current status of the code security integration.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:created_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdOn', traits: {"smithy.api#documentation" => "<p>The timestamp when the code security integration was created.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:last_update_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdateOn', traits: {"smithy.api#documentation" => "<p>The timestamp when the code security integration was last updated.</p>", "smithy.api#required" => {}}))
    CodeSecurityIntegrationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the code security integration.</p>"}))
    CodeSecurityIntegrationSummary.type = Types::CodeSecurityIntegrationSummary
    CodeSecurityResource.add_member(:project_id, Types::CodeSecurityResource::ProjectId, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectId, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the project in the code repository.</p>"}))
    CodeSecurityResource.add_member(:unknown, Types::CodeSecurityResource::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    CodeSecurityResource.type = Types::CodeSecurityResource
    CodeSecurityScanConfiguration.add_member(:periodic_scan_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodicScanConfiguration, location_name: 'periodicScanConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings for periodic scans that run on a scheduled basis.</p>"}))
    CodeSecurityScanConfiguration.add_member(:continuous_integration_scan_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousIntegrationScanConfiguration, location_name: 'continuousIntegrationScanConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings for continuous integration scans that run automatically when code\n         changes are made.</p>"}))
    CodeSecurityScanConfiguration.add_member(:rule_set_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetCategories, location_name: 'ruleSetCategories', traits: {"smithy.api#documentation" => "<p>The categories of security rules to be applied during the scan.</p>", "smithy.api#required" => {}}))
    CodeSecurityScanConfiguration.type = Types::CodeSecurityScanConfiguration
    CodeSecurityScanConfigurationAssociationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationAssociationSummary)
    CodeSecurityScanConfigurationAssociationSummary.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource'))
    CodeSecurityScanConfigurationAssociationSummary.type = Types::CodeSecurityScanConfigurationAssociationSummary
    CodeSecurityScanConfigurationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationSummary)
    CodeSecurityScanConfigurationSummary.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration.</p>", "smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the scan configuration.</p>", "smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'ownerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the scan configuration.</p>", "smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:periodic_scan_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodicScanFrequency, location_name: 'periodicScanFrequency', traits: {"smithy.api#documentation" => "<p>The frequency at which periodic scans are performed.</p>"}))
    CodeSecurityScanConfigurationSummary.add_member(:frequency_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FrequencyExpression, location_name: 'frequencyExpression', traits: {"smithy.api#documentation" => "<p>The schedule expression for periodic scans, in cron format.</p>"}))
    CodeSecurityScanConfigurationSummary.add_member(:continuous_integration_scan_supported_events, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousIntegrationScanSupportedEvents, location_name: 'continuousIntegrationScanSupportedEvents', traits: {"smithy.api#documentation" => "<p>The repository events that trigger continuous integration scans.</p>"}))
    CodeSecurityScanConfigurationSummary.add_member(:rule_set_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetCategories, location_name: 'ruleSetCategories', traits: {"smithy.api#documentation" => "<p>The categories of security rules applied during the scan.</p>", "smithy.api#required" => {}}))
    CodeSecurityScanConfigurationSummary.add_member(:scope_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeSettings, location_name: 'scopeSettings', traits: {"smithy.api#documentation" => "<p>The scope settings that define which repositories will be scanned. If the\n            <code>ScopeSetting</code> parameter is <code>ALL</code> the scan configuration applies\n         to all existing and future projects imported into Amazon Inspector.</p>"}))
    CodeSecurityScanConfigurationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the scan configuration.</p>"}))
    CodeSecurityScanConfigurationSummary.type = Types::CodeSecurityScanConfigurationSummary
    CodeSnippetError.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The ARN of the finding that a code snippet couldn't be retrieved for.</p>", "smithy.api#required" => {}}))
    CodeSnippetError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSnippetErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code for the error that prevented a code snippet from being retrieved.</p>", "smithy.api#required" => {}}))
    CodeSnippetError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message received when Amazon Inspector failed to retrieve a code snippet.</p>", "smithy.api#required" => {}}))
    CodeSnippetError.type = Types::CodeSnippetError
    CodeSnippetErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSnippetError)
    CodeSnippetResult.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The ARN of a finding that the code snippet is associated with.</p>"}))
    CodeSnippetResult.add_member(:start_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'startLine', traits: {"smithy.api#documentation" => "<p>The line number of the first line of a code snippet.</p>"}))
    CodeSnippetResult.add_member(:end_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'endLine', traits: {"smithy.api#documentation" => "<p>The line number of the last line of a code snippet.</p>"}))
    CodeSnippetResult.add_member(:code_snippet, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeLineList, location_name: 'codeSnippet', traits: {"smithy.api#documentation" => "<p>Contains information on the retrieved code snippet.</p>"}))
    CodeSnippetResult.add_member(:suggested_fixes, Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestedFixes, location_name: 'suggestedFixes', traits: {"smithy.api#documentation" => "<p>Details of a suggested code fix.</p>"}))
    CodeSnippetResult.type = Types::CodeSnippetResult
    CodeSnippetResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSnippetResult)
    CodeVulnerabilityDetails.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeFilePath, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>Contains information on where the code vulnerability is located in your code.</p>", "smithy.api#required" => {}}))
    CodeVulnerabilityDetails.add_member(:detector_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorTagList, location_name: 'detectorTags', traits: {"smithy.api#documentation" => "<p>The detector tag associated with the vulnerability. Detector tags group related\n         vulnerabilities by common themes or tactics. For a list of available tags by programming\n         language, see <a href=\"https://docs.aws.amazon.com/codeguru/detector-library/java/tags/\">Java\n            tags</a>, or <a href=\"https://docs.aws.amazon.com/codeguru/detector-library/python/tags/\">Python tags</a>. </p>"}))
    CodeVulnerabilityDetails.add_member(:reference_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceUrls, location_name: 'referenceUrls', traits: {"smithy.api#documentation" => "<p>A URL containing supporting documentation about the code vulnerability detected.</p>"}))
    CodeVulnerabilityDetails.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ruleId', traits: {"smithy.api#documentation" => "<p>The identifier for a rule that was used to detect the code vulnerability.</p>"}))
    CodeVulnerabilityDetails.add_member(:source_lambda_layer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerArn, location_name: 'sourceLambdaLayerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda layer that the code vulnerability was\n         detected in.</p>"}))
    CodeVulnerabilityDetails.add_member(:detector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'detectorId', traits: {"smithy.api#documentation" => "<p>The ID for the Amazon CodeGuru detector associated with the finding. For more\n         information on detectors see <a href=\"https://docs.aws.amazon.com/codeguru/detector-library\">Amazon CodeGuru Detector Library</a>.</p>", "smithy.api#required" => {}}))
    CodeVulnerabilityDetails.add_member(:detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'detectorName', traits: {"smithy.api#documentation" => "<p>The name of the detector used to identify the code vulnerability. For more information\n         on detectors see <a href=\"https://docs.aws.amazon.com/codeguru/detector-library\">CodeGuru\n            Detector Library</a>.</p>", "smithy.api#required" => {}}))
    CodeVulnerabilityDetails.add_member(:cwes, Smithy::Schema::Shapes::ShapeRef.new(shape: CweList, location_name: 'cwes', traits: {"smithy.api#documentation" => "<p>The Common Weakness Enumeration (CWE) item associated with the detected\n         vulnerability.</p>", "smithy.api#required" => {}}))
    CodeVulnerabilityDetails.type = Types::CodeVulnerabilityDetails
    ComputePlatform.add_member(:vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: Vendor, location_name: 'vendor', traits: {"smithy.api#documentation" => "<p>The compute platform vendor.</p>"}))
    ComputePlatform.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Product, location_name: 'product', traits: {"smithy.api#documentation" => "<p>The compute platform product.</p>"}))
    ComputePlatform.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The compute platform version.</p>"}))
    ComputePlatform.type = Types::ComputePlatform
    ConfigurationLevel.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ConfigurationLevel.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "The ID of the conflicting resource.", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "The type of the conflicting resource.", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContinuousIntegrationScanConfiguration.add_member(:supported_events, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousIntegrationScanSupportedEvents, location_name: 'supportedEvents', traits: {"smithy.api#documentation" => "<p>The repository events that trigger continuous integration scans, such as pull requests\n         or commits.</p>", "smithy.api#required" => {}}))
    ContinuousIntegrationScanConfiguration.type = Types::ContinuousIntegrationScanConfiguration
    ContinuousIntegrationScanEvent.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST', traits: {"smithy.api#enumValue" => "PULL_REQUEST"}))
    ContinuousIntegrationScanEvent.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    ContinuousIntegrationScanSupportedEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousIntegrationScanEvent)
    Counts.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: AggCounts, location_name: 'count', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of resources.</p>"}))
    Counts.add_member(:group_key, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupKey, location_name: 'groupKey', traits: {"smithy.api#documentation" => "<p>The key associated with this group</p>"}))
    Counts.type = Types::Counts
    CountsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Counts)
    CoverageDateFilter.add_member(:start_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'startInclusive', traits: {"smithy.api#documentation" => "<p>A timestamp representing the start of the time period to filter results by.</p>"}))
    CoverageDateFilter.add_member(:end_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'endInclusive', traits: {"smithy.api#documentation" => "<p>A timestamp representing the end of the time period to filter results by.</p>"}))
    CoverageDateFilter.type = Types::CoverageDateFilter
    CoverageDateFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageDateFilter)
    CoverageFilterCriteria.add_member(:scan_status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'scanStatusCode', traits: {"smithy.api#documentation" => "<p>The scan status code to filter on. Valid values are: <code>ValidationException</code>,\n            <code>InternalServerException</code>, <code>ResourceNotFoundException</code>,\n            <code>BadRequestException</code>, and <code>ThrottlingException</code>.</p>"}))
    CoverageFilterCriteria.add_member(:scan_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'scanStatusReason', traits: {"smithy.api#documentation" => "<p>The scan status reason to filter on.</p>"}))
    CoverageFilterCriteria.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>An array of Amazon Web Services account IDs to return coverage statistics for.</p>"}))
    CoverageFilterCriteria.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>An array of Amazon Web Services resource IDs to return coverage statistics for.</p>"}))
    CoverageFilterCriteria.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>An array of Amazon Web Services resource types to return coverage statistics for. The values can be\n            <code>AWS_EC2_INSTANCE</code>, <code>AWS_LAMBDA_FUNCTION</code>,\n            <code>AWS_ECR_CONTAINER_IMAGE</code>, <code>AWS_ECR_REPOSITORY</code> or\n            <code>AWS_ACCOUNT</code>.</p>"}))
    CoverageFilterCriteria.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>An array of Amazon Inspector scan types to return coverage statistics for.</p>"}))
    CoverageFilterCriteria.add_member(:ecr_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'ecrRepositoryName', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository name to filter on.</p>"}))
    CoverageFilterCriteria.add_member(:ecr_image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'ecrImageTags', traits: {"smithy.api#documentation" => "<p>The Amazon ECR image tags to filter on.</p>"}))
    CoverageFilterCriteria.add_member(:ec2_instance_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageMapFilterList, location_name: 'ec2InstanceTags', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance tags to filter on.</p>"}))
    CoverageFilterCriteria.add_member(:lambda_function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'lambdaFunctionName', traits: {"smithy.api#documentation" => "<p>Returns coverage statistics for Amazon Web Services Lambda functions filtered by function\n         names.</p>"}))
    CoverageFilterCriteria.add_member(:lambda_function_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageMapFilterList, location_name: 'lambdaFunctionTags', traits: {"smithy.api#documentation" => "<p>Returns coverage statistics for Amazon Web Services Lambda functions filtered by\n         tag.</p>"}))
    CoverageFilterCriteria.add_member(:lambda_function_runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'lambdaFunctionRuntime', traits: {"smithy.api#documentation" => "<p>Returns coverage statistics for Amazon Web Services Lambda functions filtered by\n         runtime.</p>"}))
    CoverageFilterCriteria.add_member(:last_scanned_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageDateFilterList, location_name: 'lastScannedAt', traits: {"smithy.api#documentation" => "<p>Filters Amazon Web Services resources based on whether Amazon Inspector has checked them for vulnerabilities\n         within the specified time range.</p>"}))
    CoverageFilterCriteria.add_member(:scan_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'scanMode', traits: {"smithy.api#documentation" => "<p>The filter to search for Amazon EC2 instance coverage by scan mode. Valid values are\n            <code>EC2_SSM_AGENT_BASED</code> and <code>EC2_AGENTLESS</code>.</p>"}))
    CoverageFilterCriteria.add_member(:image_pulled_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageDateFilterList, location_name: 'imagePulledAt', traits: {"smithy.api#documentation" => "<p>The date an image was last pulled at.</p>"}))
    CoverageFilterCriteria.add_member(:ecr_image_last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageDateFilterList, location_name: 'ecrImageLastInUseAt', traits: {"smithy.api#documentation" => "<p>The Amazon ECR image that was last in use.</p>"}))
    CoverageFilterCriteria.add_member(:ecr_image_in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageNumberFilterList, location_name: 'ecrImageInUseCount', traits: {"smithy.api#documentation" => "<p>The number of Amazon ECR images in use.</p>"}))
    CoverageFilterCriteria.add_member(:code_repository_project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'codeRepositoryProjectName', traits: {"smithy.api#documentation" => "<p>Filter criteria for code repositories based on project name.</p>"}))
    CoverageFilterCriteria.add_member(:code_repository_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'codeRepositoryProviderType', traits: {"smithy.api#documentation" => "<p>Filter criteria for code repositories based on provider type (such as GitHub, GitLab,\n         etc.).</p>"}))
    CoverageFilterCriteria.add_member(:code_repository_provider_type_visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'codeRepositoryProviderTypeVisibility', traits: {"smithy.api#documentation" => "<p>Filter criteria for code repositories based on visibility setting (public or\n         private).</p>"}))
    CoverageFilterCriteria.add_member(:last_scanned_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: 'lastScannedCommitId', traits: {"smithy.api#documentation" => "<p>Filter criteria for code repositories based on the ID of the last scanned commit.</p>"}))
    CoverageFilterCriteria.type = Types::CoverageFilterCriteria
    CoverageMapFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageMapComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The operator to compare coverage on.</p>", "smithy.api#required" => {}}))
    CoverageMapFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key associated with the coverage map filter.</p>", "smithy.api#required" => {}}))
    CoverageMapFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value associated with the coverage map filter.</p>"}))
    CoverageMapFilter.type = Types::CoverageMapFilter
    CoverageMapFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageMapFilter)
    CoverageNumberFilter.add_member(:upper_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'upperInclusive', traits: {"smithy.api#documentation" => "<p>The upper inclusive for the coverage number.&gt;</p>"}))
    CoverageNumberFilter.add_member(:lower_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'lowerInclusive', traits: {"smithy.api#documentation" => "<p>The lower inclusive for the coverage number.</p>"}))
    CoverageNumberFilter.type = Types::CoverageNumberFilter
    CoverageNumberFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageNumberFilter)
    CoverageStringFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The operator to compare strings on.</p>", "smithy.api#required" => {}}))
    CoverageStringFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringInput, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value to compare strings on.</p>", "smithy.api#required" => {}}))
    CoverageStringFilter.type = Types::CoverageStringFilter
    CoverageStringFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageStringFilter)
    CoveredResource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the covered resource.</p>", "smithy.api#required" => {}}))
    CoveredResource.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the covered resource.</p>", "smithy.api#required" => {}}))
    CoveredResource.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the covered resource.</p>", "smithy.api#required" => {}}))
    CoveredResource.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector scan type covering the resource.</p>", "smithy.api#required" => {}}))
    CoveredResource.add_member(:scan_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatus, location_name: 'scanStatus', traits: {"smithy.api#documentation" => "<p>The status of the scan covering the resource.</p>"}))
    CoveredResource.add_member(:resource_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceScanMetadata, location_name: 'resourceMetadata', traits: {"smithy.api#documentation" => "<p>An object that contains details about the metadata.</p>"}))
    CoveredResource.add_member(:last_scanned_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastScannedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was last checked for vulnerabilities.</p>"}))
    CoveredResource.add_member(:scan_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanMode, location_name: 'scanMode', traits: {"smithy.api#documentation" => "<p>The scan method that is applied to the instance.</p>"}))
    CoveredResource.type = Types::CoveredResource
    CoveredResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoveredResource)
    CreateCisScanConfigurationRequest.add_member(:scan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanName, location_name: 'scanName', traits: {"smithy.api#documentation" => "<p>The scan name for the CIS scan configuration.</p>", "smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:security_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'securityLevel', traits: {"smithy.api#documentation" => "<p> The security level for the CIS scan configuration. Security level refers to the\n         Benchmark levels that CIS assigns to a profile. </p>", "smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule for the CIS scan configuration.</p>", "smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCisTargets, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the CIS scan configuration.</p>", "smithy.api#required" => {}}))
    CreateCisScanConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the CIS scan configuration.</p>"}))
    CreateCisScanConfigurationRequest.type = Types::CreateCisScanConfigurationRequest
    CreateCisScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The scan configuration ARN for the CIS scan configuration.</p>"}))
    CreateCisScanConfigurationResponse.type = Types::CreateCisScanConfigurationResponse
    CreateCisTargets.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The CIS target account ids.</p>", "smithy.api#required" => {}}))
    CreateCisTargets.add_member(:target_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: 'targetResourceTags', traits: {"smithy.api#documentation" => "<p>The CIS target resource tags.</p>", "smithy.api#required" => {}}))
    CreateCisTargets.type = Types::CreateCisTargets
    CreateCodeSecurityIntegrationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the code security integration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of repository provider for the integration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationRequest.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationDetail, location_name: 'details', traits: {"smithy.api#documentation" => "<p>The integration details specific to the repository provider type.</p>"}))
    CreateCodeSecurityIntegrationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the code security integration.</p>"}))
    CreateCodeSecurityIntegrationRequest.type = Types::CreateCodeSecurityIntegrationRequest
    CreateCodeSecurityIntegrationResponse.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created code security integration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the code security integration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityIntegrationResponse.add_member(:authorization_url, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationUrl, location_name: 'authorizationUrl', traits: {"smithy.api#documentation" => "<p>The URL used to authorize the integration with the repository provider.</p>"}))
    CreateCodeSecurityIntegrationResponse.type = Types::CreateCodeSecurityIntegrationResponse
    CreateCodeSecurityScanConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the scan configuration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The security level for the scan configuration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the code security scan.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:scope_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeSettings, location_name: 'scopeSettings', traits: {"smithy.api#documentation" => "<p>The scope settings that define which repositories will be scanned. Include this\n         parameter to create a default scan configuration. Otherwise Amazon Inspector creates a general scan\n         configuration. </p>\n         <p>A default scan configuration automatically applies to all existing and future projects\n         imported into Amazon Inspector. Use the <code>BatchAssociateCodeSecurityScanConfiguration</code>\n         operation to associate a general scan configuration with projects.</p>"}))
    CreateCodeSecurityScanConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the scan configuration.</p>"}))
    CreateCodeSecurityScanConfigurationRequest.type = Types::CreateCodeSecurityScanConfigurationRequest
    CreateCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created scan configuration.</p>", "smithy.api#required" => {}}))
    CreateCodeSecurityScanConfigurationResponse.type = Types::CreateCodeSecurityScanConfigurationResponse
    CreateFilterInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Defines the action that is to be applied to the findings that match the filter.</p>", "smithy.api#required" => {}}))
    CreateFilterInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the filter.</p>"}))
    CreateFilterInput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>Defines the criteria to be used in the filter for querying findings.</p>", "smithy.api#required" => {}}))
    CreateFilterInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters\n         include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not\n         allowed.</p>", "smithy.api#required" => {}}))
    CreateFilterInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags for the filter.</p>"}))
    CreateFilterInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for creating the filter.</p>"}))
    CreateFilterInput.type = Types::CreateFilterInput
    CreateFilterOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the successfully created filter.</p>", "smithy.api#required" => {}}))
    CreateFilterOutput.type = Types::CreateFilterOutput
    CreateFindingsReportInput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The filter criteria to apply to the results of the finding report.</p>"}))
    CreateFindingsReportInput.add_member(:report_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFormat, location_name: 'reportFormat', traits: {"smithy.api#documentation" => "<p>The format to generate the report in.</p>", "smithy.api#required" => {}}))
    CreateFindingsReportInput.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>The Amazon S3 export destination for the report.</p>", "smithy.api#required" => {}}))
    CreateFindingsReportInput.type = Types::CreateFindingsReportInput
    CreateFindingsReportOutput.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The ID of the report.</p>"}))
    CreateFindingsReportOutput.type = Types::CreateFindingsReportOutput
    CreateGitLabSelfManagedIntegrationDetail.add_member(:instance_url, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceUrl, location_name: 'instanceUrl', traits: {"smithy.api#documentation" => "<p>The URL of the self-managed GitLab instance.</p>", "smithy.api#required" => {}}))
    CreateGitLabSelfManagedIntegrationDetail.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GitLabAccessToken, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The personal access token used to authenticate with the self-managed GitLab\n         instance.</p>", "smithy.api#required" => {}}))
    CreateGitLabSelfManagedIntegrationDetail.type = Types::CreateGitLabSelfManagedIntegrationDetail
    CreateIntegrationDetail.add_member(:gitlab_self_managed, Types::CreateIntegrationDetail::GitlabSelfManaged, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGitLabSelfManagedIntegrationDetail, location_name: 'gitlabSelfManaged', traits: {"smithy.api#documentation" => "<p>Details specific to creating an integration with a self-managed GitLab instance.</p>"}))
    CreateIntegrationDetail.add_member(:unknown, Types::CreateIntegrationDetail::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    CreateIntegrationDetail.type = Types::CreateIntegrationDetail
    CreateSbomExportRequest.add_member(:resource_filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilterCriteria, location_name: 'resourceFilterCriteria', traits: {"smithy.api#documentation" => "<p>The resource filter criteria for the software bill of materials (SBOM) report.</p>"}))
    CreateSbomExportRequest.add_member(:report_format, Smithy::Schema::Shapes::ShapeRef.new(shape: SbomReportFormat, location_name: 'reportFormat', traits: {"smithy.api#documentation" => "<p>The output format for the software bill of materials (SBOM) report.</p>", "smithy.api#required" => {}}))
    CreateSbomExportRequest.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>Contains details of the Amazon S3 bucket and KMS key used to export findings.</p>", "smithy.api#required" => {}}))
    CreateSbomExportRequest.type = Types::CreateSbomExportRequest
    CreateSbomExportResponse.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The report ID for the software bill of materials (SBOM) report.</p>"}))
    CreateSbomExportResponse.type = Types::CreateSbomExportResponse
    Cvss2.add_member(:base_score, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssBaseScore, location_name: 'baseScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The CVSS v2 base score for the vulnerability.</p>"}))
    Cvss2.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoringVector, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The scoring vector associated with the CVSS v2 score.</p>"}))
    Cvss2.type = Types::Cvss2
    Cvss3.add_member(:base_score, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssBaseScore, location_name: 'baseScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The CVSS v3 base score for the vulnerability.</p>"}))
    Cvss3.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoringVector, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The scoring vector associated with the CVSS v3 score.</p>"}))
    Cvss3.type = Types::Cvss3
    Cvss4.add_member(:base_score, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssBaseScore, location_name: 'baseScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The base CVSS v4 score for the vulnerability finding, which rates the severity of the vulnerability on a scale from 0 to 10.</p>"}))
    Cvss4.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoringVector, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The CVSS v4 scoring vector, which contains the metrics and measurements that were used to calculate the base score.</p>"}))
    Cvss4.type = Types::Cvss4
    CvssScore.add_member(:base_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'baseScore', traits: {"smithy.api#documentation" => "<p>The base CVSS score used for the finding.</p>", "smithy.api#required" => {}}))
    CvssScore.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The vector string of the CVSS score.</p>", "smithy.api#required" => {}}))
    CvssScore.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of CVSS used for the score.</p>", "smithy.api#required" => {}}))
    CvssScore.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the CVSS score.</p>", "smithy.api#required" => {}}))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'metric', traits: {"smithy.api#documentation" => "<p>The metric used to adjust the CVSS score.</p>", "smithy.api#required" => {}}))
    CvssScoreAdjustment.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason the CVSS score has been adjustment.</p>", "smithy.api#required" => {}}))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreAdjustment)
    CvssScoreDetails.add_member(:score_source, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'scoreSource', traits: {"smithy.api#documentation" => "<p>The source for the CVSS score.</p>", "smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:cvss_source, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'cvssSource', traits: {"smithy.api#documentation" => "<p>The source of the CVSS data.</p>"}))
    CvssScoreDetails.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The CVSS version used in scoring.</p>", "smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'score', traits: {"smithy.api#documentation" => "<p>The CVSS score.</p>", "smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The vector for the CVSS score.</p>", "smithy.api#required" => {}}))
    CvssScoreDetails.add_member(:adjustments, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreAdjustmentList, location_name: 'adjustments', traits: {"smithy.api#documentation" => "<p>An object that contains details about adjustment Amazon Inspector made to the CVSS score.</p>"}))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScore)
    CweList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Cwes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cwe)
    DailySchedule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The schedule start time.</p>", "smithy.api#required" => {}}))
    DailySchedule.type = Types::DailySchedule
    DateFilter.add_member(:start_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startInclusive', traits: {"smithy.api#documentation" => "<p>A timestamp representing the start of the time period filtered on.</p>"}))
    DateFilter.add_member(:end_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endInclusive', traits: {"smithy.api#documentation" => "<p>A timestamp representing the end of the time period filtered on.</p>"}))
    DateFilter.type = Types::DateFilter
    DateFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilter)
    Day.add_member(:sun, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUN', traits: {"smithy.api#enumValue" => "SUN"}))
    Day.add_member(:mon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MON', traits: {"smithy.api#enumValue" => "MON"}))
    Day.add_member(:tue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUE', traits: {"smithy.api#enumValue" => "TUE"}))
    Day.add_member(:wed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WED', traits: {"smithy.api#enumValue" => "WED"}))
    Day.add_member(:thu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THU', traits: {"smithy.api#enumValue" => "THU"}))
    Day.add_member(:fri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRI', traits: {"smithy.api#enumValue" => "FRI"}))
    Day.add_member(:sat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAT', traits: {"smithy.api#enumValue" => "SAT"}))
    DaysList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Day)
    DelegatedAdmin.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for your organization.</p>"}))
    DelegatedAdmin.add_member(:relationship_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#documentation" => "<p>The status of the Amazon Inspector delegated administrator.</p>"}))
    DelegatedAdmin.type = Types::DelegatedAdmin
    DelegatedAdminAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for your organization.</p>"}))
    DelegatedAdminAccount.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdminStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Amazon Inspector delegated administrator.</p>"}))
    DelegatedAdminAccount.type = Types::DelegatedAdminAccount
    DelegatedAdminAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdminAccount)
    DeleteCisScanConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CIS scan configuration.</p>", "smithy.api#required" => {}}))
    DeleteCisScanConfigurationRequest.type = Types::DeleteCisScanConfigurationRequest
    DeleteCisScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CIS scan configuration.</p>", "smithy.api#required" => {}}))
    DeleteCisScanConfigurationResponse.type = Types::DeleteCisScanConfigurationResponse
    DeleteCodeSecurityIntegrationRequest.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration to delete.</p>", "smithy.api#required" => {}}))
    DeleteCodeSecurityIntegrationRequest.type = Types::DeleteCodeSecurityIntegrationRequest
    DeleteCodeSecurityIntegrationResponse.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted code security integration.</p>"}))
    DeleteCodeSecurityIntegrationResponse.type = Types::DeleteCodeSecurityIntegrationResponse
    DeleteCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration to delete.</p>", "smithy.api#required" => {}}))
    DeleteCodeSecurityScanConfigurationRequest.type = Types::DeleteCodeSecurityScanConfigurationRequest
    DeleteCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted scan configuration.</p>"}))
    DeleteCodeSecurityScanConfigurationResponse.type = Types::DeleteCodeSecurityScanConfigurationResponse
    DeleteFilterInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the filter to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteFilterInput.type = Types::DeleteFilterInput
    DeleteFilterOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the filter that has been deleted.</p>", "smithy.api#required" => {}}))
    DeleteFilterOutput.type = Types::DeleteFilterOutput
    DescribeOrganizationConfigurationInput.type = Types::DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput.add_member(:auto_enable, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnable, location_name: 'autoEnable', traits: {"smithy.api#documentation" => "<p>The scan types are automatically enabled for new members of your organization.</p>"}))
    DescribeOrganizationConfigurationOutput.add_member(:max_account_limit_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'maxAccountLimitReached', traits: {"smithy.api#documentation" => "<p>Represents whether your organization has reached the maximum Amazon Web Services account limit for\n         Amazon Inspector.</p>"}))
    DescribeOrganizationConfigurationOutput.type = Types::DescribeOrganizationConfigurationOutput
    Destination.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket to export findings to.</p>", "smithy.api#required" => {}}))
    Destination.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix that the findings will be written under.</p>"}))
    Destination.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key used to encrypt data when exporting findings.</p>", "smithy.api#required" => {}}))
    Destination.type = Types::Destination
    DetectionPlatforms.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    DetectorTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    DisableDelegatedAdminAccountInput.add_member(:delegated_admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the current Amazon Inspector delegated administrator.</p>", "smithy.api#required" => {}}))
    DisableDelegatedAdminAccountInput.type = Types::DisableDelegatedAdminAccountInput
    DisableDelegatedAdminAccountOutput.add_member(:delegated_admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the successfully disabled delegated administrator.</p>", "smithy.api#required" => {}}))
    DisableDelegatedAdminAccountOutput.type = Types::DisableDelegatedAdminAccountOutput
    DisableInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdSet, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>An array of account IDs you want to disable Amazon Inspector scans for.</p>"}))
    DisableInput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: DisableResourceTypeList, location_name: 'resourceTypes', traits: {"smithy.api#documentation" => "<p>The resource scan types you want to disable.</p>"}))
    DisableInput.type = Types::DisableInput
    DisableOutput.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'accounts', traits: {"smithy.api#documentation" => "<p>Information on the accounts that have had Amazon Inspector scans successfully disabled. Details are\n         provided for each account.</p>", "smithy.api#required" => {}}))
    DisableOutput.add_member(:failed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAccountList, location_name: 'failedAccounts', traits: {"smithy.api#documentation" => "<p>Information on any accounts for which Amazon Inspector scans could not be disabled. Details are\n         provided for each account.</p>"}))
    DisableOutput.type = Types::DisableOutput
    DisableResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceScanType)
    DisassociateConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration to disassociate from a code\n         repository.</p>", "smithy.api#required" => {}}))
    DisassociateConfigurationRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource', traits: {"smithy.api#required" => {}}))
    DisassociateConfigurationRequest.type = Types::DisassociateConfigurationRequest
    DisassociateConfigurationRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConfigurationRequest)
    DisassociateMemberInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the member account to disassociate.</p>", "smithy.api#required" => {}}))
    DisassociateMemberInput.type = Types::DisassociateMemberInput
    DisassociateMemberOutput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the successfully disassociated member.</p>", "smithy.api#required" => {}}))
    DisassociateMemberOutput.type = Types::DisassociateMemberOutput
    Ec2Configuration.add_member(:scan_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ScanMode, location_name: 'scanMode', traits: {"smithy.api#documentation" => "<p>The scan method that is applied to the instance.</p>", "smithy.api#required" => {}}))
    Ec2Configuration.type = Types::Ec2Configuration
    Ec2ConfigurationState.add_member(:scan_mode_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ScanModeState, location_name: 'scanModeState', traits: {"smithy.api#documentation" => "<p>An object that contains details about the state of the Amazon EC2 scan mode.</p>"}))
    Ec2ConfigurationState.type = Types::Ec2ConfigurationState
    Ec2InstanceAggregation.add_member(:amis, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'amis', traits: {"smithy.api#documentation" => "<p>The AMI IDs associated with the Amazon EC2 instances to aggregate findings for.</p>"}))
    Ec2InstanceAggregation.add_member(:operating_systems, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'operatingSystems', traits: {"smithy.api#documentation" => "<p>The operating system types to aggregate findings for. Valid values must be uppercase and\n         underscore separated, examples are <code>ORACLE_LINUX_7</code> and\n            <code>ALPINE_LINUX_3_8</code>.</p>"}))
    Ec2InstanceAggregation.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'instanceIds', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance IDs to aggregate findings for.</p>"}))
    Ec2InstanceAggregation.add_member(:instance_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapFilterList, location_name: 'instanceTags', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance tags to aggregate findings for.</p>"}))
    Ec2InstanceAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    Ec2InstanceAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    Ec2InstanceAggregation.type = Types::Ec2InstanceAggregation
    Ec2InstanceAggregationResponse.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance ID.</p>", "smithy.api#required" => {}}))
    Ec2InstanceAggregationResponse.add_member(:ami, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'ami', traits: {"smithy.api#documentation" => "<p>The Amazon Machine Image (AMI) of the Amazon EC2 instance.</p>"}))
    Ec2InstanceAggregationResponse.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'operatingSystem', traits: {"smithy.api#documentation" => "<p>The operating system of the Amazon EC2 instance.</p>"}))
    Ec2InstanceAggregationResponse.add_member(:instance_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'instanceTags', traits: {"smithy.api#documentation" => "<p>The tags attached to the instance.</p>"}))
    Ec2InstanceAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account for the Amazon EC2 instance.</p>"}))
    Ec2InstanceAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that contains the count of matched findings per severity.</p>"}))
    Ec2InstanceAggregationResponse.add_member(:network_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'networkFindings', traits: {"smithy.api#documentation" => "<p>The number of network findings for the Amazon EC2 instance.</p>"}))
    Ec2InstanceAggregationResponse.type = Types::Ec2InstanceAggregationResponse
    Ec2Metadata.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the instance.</p>"}))
    Ec2Metadata.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Machine Image (AMI) used to launch the instance.</p>"}))
    Ec2Metadata.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform of the instance.</p>"}))
    Ec2Metadata.type = Types::Ec2Metadata
    Ec2ScanModeState.add_member(:scan_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ScanMode, location_name: 'scanMode', traits: {"smithy.api#documentation" => "<p>The scan method that is applied to the instance.</p>"}))
    Ec2ScanModeState.add_member(:scan_mode_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ScanModeStatus, location_name: 'scanModeStatus', traits: {"smithy.api#documentation" => "<p>The status of the Amazon EC2 scan mode setting.</p>"}))
    Ec2ScanModeState.type = Types::Ec2ScanModeState
    EcrConfiguration.add_member(:rescan_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRescanDuration, location_name: 'rescanDuration', traits: {"smithy.api#documentation" => "<p>The rescan duration configured for image push date.</p>", "smithy.api#required" => {}}))
    EcrConfiguration.add_member(:pull_date_rescan_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrPullDateRescanDuration, location_name: 'pullDateRescanDuration', traits: {"smithy.api#documentation" => "<p>The rescan duration configured for image pull date.</p>"}))
    EcrConfiguration.add_member(:pull_date_rescan_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrPullDateRescanMode, location_name: 'pullDateRescanMode', traits: {"smithy.api#documentation" => "<p>The pull date for the re-scan mode.</p>"}))
    EcrConfiguration.type = Types::EcrConfiguration
    EcrConfigurationState.add_member(:rescan_duration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRescanDurationState, location_name: 'rescanDurationState', traits: {"smithy.api#documentation" => "<p>An object that contains details about the state of the ECR re-scan settings.</p>"}))
    EcrConfigurationState.type = Types::EcrConfigurationState
    EcrContainerImageMetadata.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags associated with the Amazon ECR image metadata.</p>"}))
    EcrContainerImageMetadata.add_member(:image_pulled_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'imagePulledAt', traits: {"smithy.api#documentation" => "<p>The date an image was last pulled at.</p>"}))
    EcrContainerImageMetadata.add_member(:last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastInUseAt', traits: {"smithy.api#documentation" => "<p>The last time an Amazon ECR image was used in an Amazon ECS task or\n            Amazon EKS pod.</p>"}))
    EcrContainerImageMetadata.add_member(:in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'inUseCount', traits: {"smithy.api#documentation" => "<p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>"}))
    EcrContainerImageMetadata.type = Types::EcrContainerImageMetadata
    EcrRepositoryMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Amazon ECR repository.</p>"}))
    EcrRepositoryMetadata.add_member(:scan_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrScanFrequency, location_name: 'scanFrequency', traits: {"smithy.api#documentation" => "<p>The frequency of scans.</p>"}))
    EcrRepositoryMetadata.type = Types::EcrRepositoryMetadata
    EcrRescanDurationState.add_member(:rescan_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRescanDuration, location_name: 'rescanDuration', traits: {"smithy.api#documentation" => "<p>The rescan duration configured for image push date. </p>"}))
    EcrRescanDurationState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRescanDurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of changes to the ECR automated re-scan duration.</p>"}))
    EcrRescanDurationState.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp representing when the last time the ECR scan duration setting was\n         changed.</p>"}))
    EcrRescanDurationState.add_member(:pull_date_rescan_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrPullDateRescanDuration, location_name: 'pullDateRescanDuration', traits: {"smithy.api#documentation" => "<p>The rescan duration configured for image pull date.</p>"}))
    EcrRescanDurationState.add_member(:pull_date_rescan_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrPullDateRescanMode, location_name: 'pullDateRescanMode', traits: {"smithy.api#documentation" => "<p>The pull date for the re-scan mode.</p>"}))
    EcrRescanDurationState.type = Types::EcrRescanDurationState
    EnableDelegatedAdminAccountInput.add_member(:delegated_admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>", "smithy.api#required" => {}}))
    EnableDelegatedAdminAccountInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The idempotency token for the request.</p>", "smithy.api#idempotencyToken" => {}}))
    EnableDelegatedAdminAccountInput.type = Types::EnableDelegatedAdminAccountInput
    EnableDelegatedAdminAccountOutput.add_member(:delegated_admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the successfully Amazon Inspector delegated administrator.</p>", "smithy.api#required" => {}}))
    EnableDelegatedAdminAccountOutput.type = Types::EnableDelegatedAdminAccountOutput
    EnableInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdSet, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>A list of account IDs you want to enable Amazon Inspector scans for.</p>"}))
    EnableInput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableResourceTypeList, location_name: 'resourceTypes', traits: {"smithy.api#documentation" => "<p>The resource scan types you want to enable.</p>", "smithy.api#required" => {}}))
    EnableInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The idempotency token for the request.</p>", "smithy.api#idempotencyToken" => {}}))
    EnableInput.type = Types::EnableInput
    EnableOutput.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'accounts', traits: {"smithy.api#documentation" => "<p>Information on the accounts that have had Amazon Inspector scans successfully enabled. Details are\n         provided for each account.</p>", "smithy.api#required" => {}}))
    EnableOutput.add_member(:failed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAccountList, location_name: 'failedAccounts', traits: {"smithy.api#documentation" => "<p>Information on any accounts for which Amazon Inspector scans could not be enabled. Details are\n         provided for each account.</p>"}))
    EnableOutput.type = Types::EnableOutput
    EnableResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceScanType)
    Epss.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: EpssScore, location_name: 'score', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Exploit Prediction Scoring System (EPSS) score.</p>"}))
    Epss.type = Types::Epss
    EpssDetails.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: EpssScoreValue, location_name: 'score', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The EPSS score.</p>"}))
    EpssDetails.type = Types::EpssDetails
    Evidence.add_member(:evidence_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceRule, location_name: 'evidenceRule', traits: {"smithy.api#documentation" => "<p>The evidence rule.</p>"}))
    Evidence.add_member(:evidence_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceDetail, location_name: 'evidenceDetail', traits: {"smithy.api#documentation" => "<p>The evidence details.</p>"}))
    Evidence.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceSeverity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The evidence severity.</p>"}))
    Evidence.type = Types::Evidence
    EvidenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Evidence)
    ExploitObserved.add_member(:last_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSeen, location_name: 'lastSeen', traits: {"smithy.api#documentation" => "<p>The date an time when the exploit was last seen.</p>"}))
    ExploitObserved.add_member(:first_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstSeen, location_name: 'firstSeen', traits: {"smithy.api#documentation" => "<p>The date an time when the exploit was first seen.</p>"}))
    ExploitObserved.type = Types::ExploitObserved
    ExploitabilityDetails.add_member(:last_known_exploit_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastKnownExploitAt', traits: {"smithy.api#documentation" => "<p>The date and time of the last exploit associated with a finding discovered in your\n         environment.</p>"}))
    ExploitabilityDetails.type = Types::ExploitabilityDetails
    FailedAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    FailedAccount.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector for the account.</p>"}))
    FailedAccount.add_member(:resource_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: 'resourceStatus', traits: {"smithy.api#documentation" => "<p>An object detailing which resources Amazon Inspector is enabled to scan for the account.</p>"}))
    FailedAccount.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code explaining why the account failed to enable Amazon Inspector.</p>", "smithy.api#required" => {}}))
    FailedAccount.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message received when the account failed to enable Amazon Inspector.</p>", "smithy.api#required" => {}}))
    FailedAccount.type = Types::FailedAccount
    FailedAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAccount)
    FailedAssociationResult.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration that failed to be associated or\n         disassociated.</p>"}))
    FailedAssociationResult.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource'))
    FailedAssociationResult.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationResultStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code indicating why the association or disassociation failed.</p>"}))
    FailedAssociationResult.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationResultStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A message explaining why the association or disassociation failed.</p>"}))
    FailedAssociationResult.type = Types::FailedAssociationResult
    FailedAssociationResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAssociationResult)
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account of the organization member that failed to\n         activate Amazon Inspector deep inspection.</p>", "smithy.api#required" => {}}))
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:ec2_scan_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'ec2ScanStatus', traits: {"smithy.api#documentation" => "<p>The status of EC2 scanning in the account that failed to activate Amazon Inspector deep\n         inspection.</p>"}))
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message explaining why the account failed to activate Amazon Inspector deep\n         inspection.</p>"}))
    FailedMemberAccountEc2DeepInspectionStatusState.type = Types::FailedMemberAccountEc2DeepInspectionStatusState
    FailedMemberAccountEc2DeepInspectionStatusStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedMemberAccountEc2DeepInspectionStatusState)
    Filter.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) associated with this filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'ownerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the account that created the filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'criteria', traits: {"smithy.api#documentation" => "<p>Details on the filter criteria associated with this filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action that is to be applied to the findings that match the filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time this filter was created at.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the filter was last updated at.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the filter.</p>"}))
    Filter.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the filter.</p>"}))
    Filter.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the filter.</p>"}))
    Filter.type = Types::Filter
    FilterArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn)
    FilterCriteria.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>Details on the finding ARNs used to filter findings.</p>"}))
    FilterCriteria.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p>Details of the Amazon Web Services account IDs used to filter findings.</p>"}))
    FilterCriteria.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>Details on the finding types used to filter findings.</p>"}))
    FilterCriteria.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>Details on the severity used to filter findings.</p>"}))
    FilterCriteria.add_member(:first_observed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'firstObservedAt', traits: {"smithy.api#documentation" => "<p>Details on the date and time a finding was first seen used to filter findings.</p>"}))
    FilterCriteria.add_member(:last_observed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'lastObservedAt', traits: {"smithy.api#documentation" => "<p>Details on the date and time a finding was last seen used to filter findings.</p>"}))
    FilterCriteria.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>Details on the date and time a finding was last updated at used to filter\n         findings.</p>"}))
    FilterCriteria.add_member(:finding_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'findingStatus', traits: {"smithy.api#documentation" => "<p>Details on the finding status types used to filter findings.</p>"}))
    FilterCriteria.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'title', traits: {"smithy.api#documentation" => "<p>Details on the finding title used to filter findings.</p>"}))
    FilterCriteria.add_member(:inspector_score, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberFilterList, location_name: 'inspectorScore', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector score to filter on.</p>"}))
    FilterCriteria.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Details on the resource types used to filter findings.</p>"}))
    FilterCriteria.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Details on the resource IDs used to filter findings.</p>"}))
    FilterCriteria.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapFilterList, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>Details on the resource tags used to filter findings.</p>"}))
    FilterCriteria.add_member(:ec2_instance_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ec2InstanceImageId', traits: {"smithy.api#documentation" => "<p>Details of the Amazon EC2 instance image IDs used to filter findings.</p>"}))
    FilterCriteria.add_member(:ec2_instance_vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ec2InstanceVpcId', traits: {"smithy.api#documentation" => "<p>Details of the Amazon EC2 instance VPC IDs used to filter findings.</p>"}))
    FilterCriteria.add_member(:ec2_instance_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ec2InstanceSubnetId', traits: {"smithy.api#documentation" => "<p>Details of the Amazon EC2 instance subnet IDs used to filter findings.</p>"}))
    FilterCriteria.add_member(:ecr_image_pushed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'ecrImagePushedAt', traits: {"smithy.api#documentation" => "<p>Details on the Amazon ECR image push date and time used to filter findings.</p>"}))
    FilterCriteria.add_member(:ecr_image_architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ecrImageArchitecture', traits: {"smithy.api#documentation" => "<p>Details of the Amazon ECR image architecture types used to filter findings.</p>"}))
    FilterCriteria.add_member(:ecr_image_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ecrImageRegistry', traits: {"smithy.api#documentation" => "<p>Details on the Amazon ECR registry used to filter findings.</p>"}))
    FilterCriteria.add_member(:ecr_image_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ecrImageRepositoryName', traits: {"smithy.api#documentation" => "<p>Details on the name of the Amazon ECR repository used to filter findings.</p>"}))
    FilterCriteria.add_member(:ecr_image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ecrImageTags', traits: {"smithy.api#documentation" => "<p>The tags attached to the Amazon ECR container image.</p>"}))
    FilterCriteria.add_member(:ecr_image_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'ecrImageHash', traits: {"smithy.api#documentation" => "<p>Details of the Amazon ECR image hashes used to filter findings.</p>"}))
    FilterCriteria.add_member(:ecr_image_last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'ecrImageLastInUseAt', traits: {"smithy.api#documentation" => "<p>Filter criteria indicating when an Amazon ECR image was last used in an Amazon ECS cluster task or Amazon EKS cluster pod.</p>"}))
    FilterCriteria.add_member(:ecr_image_in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberFilterList, location_name: 'ecrImageInUseCount', traits: {"smithy.api#documentation" => "<p>Filter criteria indicating when details for an Amazon ECR image include when an\n            Amazon ECR image is in use.</p>"}))
    FilterCriteria.add_member(:port_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeFilterList, location_name: 'portRange', traits: {"smithy.api#documentation" => "<p>Details on the port ranges used to filter findings.</p>"}))
    FilterCriteria.add_member(:network_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'networkProtocol', traits: {"smithy.api#documentation" => "<p>Details on network protocol used to filter findings.</p>"}))
    FilterCriteria.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'componentId', traits: {"smithy.api#documentation" => "<p>Details of the component IDs used to filter findings.</p>"}))
    FilterCriteria.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>Details of the component types used to filter findings.</p>"}))
    FilterCriteria.add_member(:vulnerability_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'vulnerabilityId', traits: {"smithy.api#documentation" => "<p>Details on the vulnerability ID used to filter findings.</p>"}))
    FilterCriteria.add_member(:vulnerability_source, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'vulnerabilitySource', traits: {"smithy.api#documentation" => "<p>Details on the vulnerability type used to filter findings.</p>"}))
    FilterCriteria.add_member(:vendor_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'vendorSeverity', traits: {"smithy.api#documentation" => "<p>Details on the vendor severity used to filter findings.</p>"}))
    FilterCriteria.add_member(:vulnerable_packages, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFilterList, location_name: 'vulnerablePackages', traits: {"smithy.api#documentation" => "<p>Details on the vulnerable packages used to filter findings.</p>"}))
    FilterCriteria.add_member(:related_vulnerabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'relatedVulnerabilities', traits: {"smithy.api#documentation" => "<p>Details on the related vulnerabilities used to filter findings.</p>"}))
    FilterCriteria.add_member(:fix_available, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'fixAvailable', traits: {"smithy.api#documentation" => "<p>Details on whether a fix is available through a version update. This value can be\n            <code>YES</code>, <code>NO</code>, or <code>PARTIAL</code>. A <code>PARTIAL</code> fix\n         means that some, but not all, of the packages identified in the finding have fixes\n         available through updated versions.</p>"}))
    FilterCriteria.add_member(:lambda_function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'lambdaFunctionName', traits: {"smithy.api#documentation" => "<p>Filters the list of Amazon Web Services Lambda functions by the name of the\n         function.</p>"}))
    FilterCriteria.add_member(:lambda_function_layers, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'lambdaFunctionLayers', traits: {"smithy.api#documentation" => "<p>Filters the list of Amazon Web Services Lambda functions by the function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\"> layers</a>. A\n         Lambda function can have up to five layers.</p>"}))
    FilterCriteria.add_member(:lambda_function_runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'lambdaFunctionRuntime', traits: {"smithy.api#documentation" => "<p>Filters the list of Amazon Web Services Lambda functions by the runtime environment for\n         the Lambda function.</p>"}))
    FilterCriteria.add_member(:lambda_function_last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilterList, location_name: 'lambdaFunctionLastModifiedAt', traits: {"smithy.api#documentation" => "<p>Filters the list of Amazon Web Services Lambda functions by the date and time that a user\n         last updated the configuration, in <a href=\"https://www.iso.org/iso-8601-date-and-time-format.html\">ISO 8601\n         format</a>\n         </p>"}))
    FilterCriteria.add_member(:lambda_function_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'lambdaFunctionExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>Filters the list of Amazon Web Services Lambda functions by execution role.</p>"}))
    FilterCriteria.add_member(:exploit_available, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'exploitAvailable', traits: {"smithy.api#documentation" => "<p>Filters the list of Amazon Web Services Lambda findings by the availability of\n         exploits.</p>"}))
    FilterCriteria.add_member(:code_vulnerability_detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'codeVulnerabilityDetectorName', traits: {"smithy.api#documentation" => "<p>The name of the detector used to identify a code vulnerability in a Lambda function used\n         to filter findings.</p>"}))
    FilterCriteria.add_member(:code_vulnerability_detector_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'codeVulnerabilityDetectorTags', traits: {"smithy.api#documentation" => "<p>The detector type tag associated with the vulnerability used to filter findings.\n         Detector tags group related vulnerabilities by common themes or tactics. For a list of\n         available tags by programming language, see <a href=\"https://docs.aws.amazon.com/codeguru/detector-library/java/tags/\">Java tags</a>, or <a href=\"https://docs.aws.amazon.com/codeguru/detector-library/python/tags/\">Python tags</a>.\n      </p>"}))
    FilterCriteria.add_member(:code_vulnerability_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'codeVulnerabilityFilePath', traits: {"smithy.api#documentation" => "<p>The file path to the file in a Lambda function that contains a code vulnerability used\n         to filter findings.</p>"}))
    FilterCriteria.add_member(:epss_score, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberFilterList, location_name: 'epssScore', traits: {"smithy.api#documentation" => "<p>The EPSS score used to filter findings.</p>"}))
    FilterCriteria.add_member(:code_repository_project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'codeRepositoryProjectName', traits: {"smithy.api#documentation" => "<p>Filter criteria for findings based on the project name in a code repository.</p>"}))
    FilterCriteria.add_member(:code_repository_provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'codeRepositoryProviderType', traits: {"smithy.api#documentation" => "<p>Filter criteria for findings based on the repository provider type (such as GitHub,\n         GitLab, etc.).</p>"}))
    FilterCriteria.type = Types::FilterCriteria
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    Finding.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the finding. The <code>type</code> value determines the valid values for\n            <code>resource</code> in your request. For more information, see <a href=\"https://docs.aws.amazon.com/inspector/latest/user/findings-types.html\">Finding\n            types</a> in the Amazon Inspector user guide.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the finding.</p>"}))
    Finding.add_member(:remediation, Smithy::Schema::Shapes::ShapeRef.new(shape: Remediation, location_name: 'remediation', traits: {"smithy.api#documentation" => "<p>An object that contains the details about how to remediate a finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The severity of the finding. <code>UNTRIAGED</code> applies to\n            <code>PACKAGE_VULNERABILITY</code> type findings that the vendor has not assigned a\n         severity yet. For more information, see <a href=\"https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html\">Severity levels for findings</a> in the Amazon Inspector user guide.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:first_observed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'firstObservedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the finding was first observed.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:last_observed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastObservedAt', traits: {"smithy.api#documentation" => "<p> The date and time the finding was last observed. This timestamp for this field remains\n         unchanged until a finding is updated. </p>", "smithy.api#required" => {}}))
    Finding.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the finding was last updated at.</p>"}))
    Finding.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'resources', traits: {"smithy.api#documentation" => "<p>Contains information on the resources involved in a finding. The <code>resource</code>\n         value determines the valid values for <code>type</code> in your request. For more\n         information, see <a href=\"https://docs.aws.amazon.com/inspector/latest/user/findings-types.html\">Finding\n            types</a> in the Amazon Inspector user guide.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:inspector_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'inspectorScore', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector score given to the finding.</p>"}))
    Finding.add_member(:inspector_score_details, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorScoreDetails, location_name: 'inspectorScoreDetails', traits: {"smithy.api#documentation" => "<p>An object that contains details of the Amazon Inspector score.</p>"}))
    Finding.add_member(:network_reachability_details, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkReachabilityDetails, location_name: 'networkReachabilityDetails', traits: {"smithy.api#documentation" => "<p>An object that contains the details of a network reachability finding.</p>"}))
    Finding.add_member(:package_vulnerability_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVulnerabilityDetails, location_name: 'packageVulnerabilityDetails', traits: {"smithy.api#documentation" => "<p>An object that contains the details of a package vulnerability finding.</p>"}))
    Finding.add_member(:fix_available, Smithy::Schema::Shapes::ShapeRef.new(shape: FixAvailable, location_name: 'fixAvailable', traits: {"smithy.api#documentation" => "<p>Details on whether a fix is available through a version update. This value can be\n            <code>YES</code>, <code>NO</code>, or <code>PARTIAL</code>. A <code>PARTIAL</code> fix\n         means that some, but not all, of the packages identified in the finding have fixes\n         available through updated versions.</p>"}))
    Finding.add_member(:exploit_available, Smithy::Schema::Shapes::ShapeRef.new(shape: ExploitAvailable, location_name: 'exploitAvailable', traits: {"smithy.api#documentation" => "<p>If a finding discovered in your environment has an exploit available.</p>"}))
    Finding.add_member(:exploitability_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExploitabilityDetails, location_name: 'exploitabilityDetails', traits: {"smithy.api#documentation" => "<p>The details of an exploit available for a finding discovered in your environment.</p>"}))
    Finding.add_member(:code_vulnerability_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeVulnerabilityDetails, location_name: 'codeVulnerabilityDetails', traits: {"smithy.api#documentation" => "<p>Details about the code vulnerability identified in a Lambda function used to filter\n         findings.</p>"}))
    Finding.add_member(:epss, Smithy::Schema::Shapes::ShapeRef.new(shape: EpssDetails, location_name: 'epss', traits: {"smithy.api#documentation" => "<p>The finding's EPSS score.</p>"}))
    Finding.type = Types::Finding
    FindingArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn)
    FindingArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn)
    FindingDetail.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The finding ARN that the vulnerability details are associated with.</p>"}))
    FindingDetail.add_member(:cisa_data, Smithy::Schema::Shapes::ShapeRef.new(shape: CisaData, location_name: 'cisaData', traits: {"smithy.api#documentation" => "<p>The Cybersecurity and Infrastructure Security Agency (CISA) details for a specific\n         vulnerability.</p>"}))
    FindingDetail.add_member(:risk_score, Smithy::Schema::Shapes::ShapeRef.new(shape: RiskScore, location_name: 'riskScore', traits: {"smithy.api#documentation" => "<p>The risk score of the vulnerability.</p>"}))
    FindingDetail.add_member(:evidences, Smithy::Schema::Shapes::ShapeRef.new(shape: EvidenceList, location_name: 'evidences', traits: {"smithy.api#documentation" => "<p>Information on the evidence of the vulnerability.</p>"}))
    FindingDetail.add_member(:ttps, Smithy::Schema::Shapes::ShapeRef.new(shape: Ttps, location_name: 'ttps', traits: {"smithy.api#documentation" => "<p>The MITRE adversary tactics, techniques, or procedures (TTPs) associated with the\n         vulnerability.</p>"}))
    FindingDetail.add_member(:tools, Smithy::Schema::Shapes::ShapeRef.new(shape: Tools, location_name: 'tools', traits: {"smithy.api#documentation" => "<p>The known malware tools or kits that can exploit the vulnerability.</p>"}))
    FindingDetail.add_member(:exploit_observed, Smithy::Schema::Shapes::ShapeRef.new(shape: ExploitObserved, location_name: 'exploitObserved', traits: {"smithy.api#documentation" => "<p>Contains information on when this exploit was observed.</p>"}))
    FindingDetail.add_member(:reference_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityReferenceUrls, location_name: 'referenceUrls', traits: {"smithy.api#documentation" => "<p>The reference URLs for the vulnerability data.</p>"}))
    FindingDetail.add_member(:cwes, Smithy::Schema::Shapes::ShapeRef.new(shape: Cwes, location_name: 'cwes', traits: {"smithy.api#documentation" => "<p>The Common Weakness Enumerations (CWEs) associated with the vulnerability.</p>"}))
    FindingDetail.add_member(:epss_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'epssScore', traits: {"smithy.api#documentation" => "<p>The Exploit Prediction Scoring System (EPSS) score of the vulnerability.</p>"}))
    FindingDetail.type = Types::FindingDetail
    FindingDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetail)
    FindingDetailsError.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The finding ARN that returned an error.</p>", "smithy.api#required" => {}}))
    FindingDetailsError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetailsErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    FindingDetailsError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>", "smithy.api#required" => {}}))
    FindingDetailsError.type = Types::FindingDetailsError
    FindingDetailsErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetailsError)
    FindingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Finding)
    FindingTypeAggregation.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationFindingType, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>The finding type to aggregate.</p>"}))
    FindingTypeAggregation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type to aggregate.</p>"}))
    FindingTypeAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    FindingTypeAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingTypeSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    FindingTypeAggregation.type = Types::FindingTypeAggregation
    FindingTypeAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account associated with the findings.</p>"}))
    FindingTypeAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    FindingTypeAggregationResponse.add_member(:exploit_available_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'exploitAvailableCount', traits: {"smithy.api#documentation" => "<p>The number of findings that have an exploit available.</p>"}))
    FindingTypeAggregationResponse.add_member(:fix_available_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'fixAvailableCount', traits: {"smithy.api#documentation" => "<p> Details about the number of fixes. </p>"}))
    FindingTypeAggregationResponse.type = Types::FindingTypeAggregationResponse
    FreeTrialAccountInfo.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteringAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account associated with the Amazon Inspector free trial information.</p>", "smithy.api#required" => {}}))
    FreeTrialAccountInfo.add_member(:free_trial_info, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialInfoList, location_name: 'freeTrialInfo', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon Inspector free trial for an account.</p>", "smithy.api#required" => {}}))
    FreeTrialAccountInfo.type = Types::FreeTrialAccountInfo
    FreeTrialAccountInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialAccountInfo)
    FreeTrialInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of scan covered by the Amazon Inspector free trail.</p>", "smithy.api#required" => {}}))
    FreeTrialInfo.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'start', traits: {"smithy.api#documentation" => "<p>The date and time that the Amazon Inspector free trail started for a given account.</p>", "smithy.api#required" => {}}))
    FreeTrialInfo.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'end', traits: {"smithy.api#documentation" => "<p>The date and time that the Amazon Inspector free trail ends for a given account.</p>", "smithy.api#required" => {}}))
    FreeTrialInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>", "smithy.api#required" => {}}))
    FreeTrialInfo.type = Types::FreeTrialInfo
    FreeTrialInfoError.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteringAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account associated with the Amazon Inspector free trial information.</p>", "smithy.api#required" => {}}))
    FreeTrialInfoError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialInfoErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    FreeTrialInfoError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message returned.</p>", "smithy.api#required" => {}}))
    FreeTrialInfoError.type = Types::FreeTrialInfoError
    FreeTrialInfoErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialInfoError)
    FreeTrialInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialInfo)
    GetCisScanReportRequest.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The scan ARN.</p>", "smithy.api#required" => {}}))
    GetCisScanReportRequest.add_member(:target_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTargetAccounts, location_name: 'targetAccounts', traits: {"smithy.api#documentation" => "<p>The target accounts.</p>"}))
    GetCisScanReportRequest.add_member(:report_format, Smithy::Schema::Shapes::ShapeRef.new(shape: CisReportFormat, location_name: 'reportFormat', traits: {"smithy.api#default" => "PDF", "smithy.api#documentation" => "<p> The format of the report. Valid values are <code>PDF</code> and <code>CSV</code>. If no\n         value is specified, the report format defaults to <code>PDF</code>. </p>"}))
    GetCisScanReportRequest.type = Types::GetCisScanReportRequest
    GetCisScanReportResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'url', traits: {"smithy.api#documentation" => "<p> The URL where a PDF or CSV of the CIS scan report can be downloaded. </p>"}))
    GetCisScanReportResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CisReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    GetCisScanReportResponse.type = Types::GetCisScanReportResponse
    GetCisScanResultDetailsRequest.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The scan ARN.</p>", "smithy.api#required" => {}}))
    GetCisScanResultDetailsRequest.add_member(:target_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'targetResourceId', traits: {"smithy.api#documentation" => "<p>The target resource ID.</p>", "smithy.api#required" => {}}))
    GetCisScanResultDetailsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account ID.</p>", "smithy.api#required" => {}}))
    GetCisScanResultDetailsRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultDetailsFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The filter criteria.</p>"}))
    GetCisScanResultDetailsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultDetailsSortBy, location_name: 'sortBy', traits: {"smithy.api#default" => "CHECK_ID", "smithy.api#documentation" => "<p>The sort by order.</p>"}))
    GetCisScanResultDetailsRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order.</p>"}))
    GetCisScanResultDetailsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    GetCisScanResultDetailsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: GetCisScanResultDetailsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 300, "smithy.api#documentation" => "<p>The maximum number of CIS scan result details to be returned in a single page of\n         results.</p>"}))
    GetCisScanResultDetailsRequest.type = Types::GetCisScanResultDetailsRequest
    GetCisScanResultDetailsResponse.add_member(:scan_result_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultDetailsList, location_name: 'scanResultDetails', traits: {"smithy.api#documentation" => "<p>The scan result details.</p>"}))
    GetCisScanResultDetailsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    GetCisScanResultDetailsResponse.type = Types::GetCisScanResultDetailsResponse
    GetClustersForImageRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterForImageFilterCriteria, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The resource Id for the Amazon ECR image.</p>", "smithy.api#required" => {}}))
    GetClustersForImageRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned in a single page of results.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetClustersForImageRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GetClustersForImageNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request used to retrieve the next page of\n         results.</p>"}))
    GetClustersForImageRequest.type = Types::GetClustersForImageRequest
    GetClustersForImageResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterInformationList, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>A unit of work inside of a cluster, which can include metadata about the cluster.</p>", "smithy.api#required" => {}}))
    GetClustersForImageResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GetClustersForImageNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request used to retrieve the next page of\n         results.</p>"}))
    GetClustersForImageResponse.type = Types::GetClustersForImageResponse
    GetCodeSecurityIntegrationRequest.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration to retrieve.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the code security integration.</p>"}))
    GetCodeSecurityIntegrationRequest.type = Types::GetCodeSecurityIntegrationRequest
    GetCodeSecurityIntegrationResponse.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the code security integration.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of repository provider for the integration.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the code security integration.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the current status of the code security integration.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:created_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdOn', traits: {"smithy.api#documentation" => "<p>The timestamp when the code security integration was created.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:last_update_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdateOn', traits: {"smithy.api#documentation" => "<p>The timestamp when the code security integration was last updated.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityIntegrationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the code security integration.</p>"}))
    GetCodeSecurityIntegrationResponse.add_member(:authorization_url, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationUrl, location_name: 'authorizationUrl', traits: {"smithy.api#documentation" => "<p>The URL used to authorize the integration with the repository provider. This is only\n         returned if reauthorization is required to fix a connection issue. Otherwise, it is\n         null.</p>"}))
    GetCodeSecurityIntegrationResponse.type = Types::GetCodeSecurityIntegrationResponse
    GetCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration to retrieve.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityScanConfigurationRequest.type = Types::GetCodeSecurityScanConfigurationRequest
    GetCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the scan configuration.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the code security scan.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The security level for the scan configuration.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:scope_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeSettings, location_name: 'scopeSettings', traits: {"smithy.api#documentation" => "<p>The scope settings that define which repositories will be scanned. If the\n            <code>ScopeSetting</code> parameter is <code>ALL</code> the scan configuration applies\n         to all existing and future projects imported into Amazon Inspector.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the scan configuration was created.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the scan configuration was last updated.</p>"}))
    GetCodeSecurityScanConfigurationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the scan configuration.</p>"}))
    GetCodeSecurityScanConfigurationResponse.type = Types::GetCodeSecurityScanConfigurationResponse
    GetCodeSecurityScanRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource identifier for the code repository that was scanned.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityScanRequest.add_member(:scan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityUuid, location_name: 'scanId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the scan to retrieve.</p>", "smithy.api#required" => {}}))
    GetCodeSecurityScanRequest.type = Types::GetCodeSecurityScanRequest
    GetCodeSecurityScanResponse.add_member(:scan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityUuid, location_name: 'scanId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the scan.</p>"}))
    GetCodeSecurityScanResponse.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource identifier for the code repository that was scanned.</p>"}))
    GetCodeSecurityScanResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the scan.</p>"}))
    GetCodeSecurityScanResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeScanStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the scan.</p>"}))
    GetCodeSecurityScanResponse.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the current status of the scan.</p>"}))
    GetCodeSecurityScanResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the scan was created.</p>"}))
    GetCodeSecurityScanResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the scan was last updated.</p>"}))
    GetCodeSecurityScanResponse.add_member(:last_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'lastCommitId', traits: {"smithy.api#documentation" => "<p>The identifier of the last commit that was scanned. This is only returned if the scan\n         was successful or skipped.</p>"}))
    GetCodeSecurityScanResponse.type = Types::GetCodeSecurityScanResponse
    GetConfigurationInput.type = Types::GetConfigurationInput
    GetConfigurationOutput.add_member(:ecr_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrConfigurationState, location_name: 'ecrConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies how the ECR automated re-scan duration is currently configured for your\n         environment.</p>"}))
    GetConfigurationOutput.add_member(:ec2_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ConfigurationState, location_name: 'ec2Configuration', traits: {"smithy.api#documentation" => "<p>Specifies how the Amazon EC2 automated scan mode is currently configured for your\n         environment.</p>"}))
    GetConfigurationOutput.type = Types::GetConfigurationOutput
    GetDelegatedAdminAccountInput.type = Types::GetDelegatedAdminAccountInput
    GetDelegatedAdminAccountOutput.add_member(:delegated_admin, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdmin, location_name: 'delegatedAdmin', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>"}))
    GetDelegatedAdminAccountOutput.type = Types::GetDelegatedAdminAccountOutput
    GetEc2DeepInspectionConfigurationRequest.type = Types::GetEc2DeepInspectionConfigurationRequest
    GetEc2DeepInspectionConfigurationResponse.add_member(:package_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'packagePaths', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector deep inspection custom paths for your account.</p>"}))
    GetEc2DeepInspectionConfigurationResponse.add_member(:org_package_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'orgPackagePaths', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector deep inspection custom paths for your organization.</p>"}))
    GetEc2DeepInspectionConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2DeepInspectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The activation status of Amazon Inspector deep inspection in your account.</p>"}))
    GetEc2DeepInspectionConfigurationResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message explaining why Amazon Inspector deep inspection configurations could not be\n         retrieved for your account.</p>"}))
    GetEc2DeepInspectionConfigurationResponse.type = Types::GetEc2DeepInspectionConfigurationResponse
    GetEncryptionKeyRequest.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>The scan type the key encrypts.</p>", "smithy.api#httpQuery" => "scanType", "smithy.api#required" => {}}))
    GetEncryptionKeyRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type the key encrypts.</p>", "smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetEncryptionKeyRequest.type = Types::GetEncryptionKeyRequest
    GetEncryptionKeyResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>A kms key ID.</p>", "smithy.api#required" => {}}))
    GetEncryptionKeyResponse.type = Types::GetEncryptionKeyResponse
    GetFindingsReportStatusInput.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The ID of the report to retrieve the status of.</p>"}))
    GetFindingsReportStatusInput.type = Types::GetFindingsReportStatusInput
    GetFindingsReportStatusOutput.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The ID of the report.</p>"}))
    GetFindingsReportStatusOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the report.</p>"}))
    GetFindingsReportStatusOutput.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportingErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code of the report.</p>"}))
    GetFindingsReportStatusOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message of the report.</p>"}))
    GetFindingsReportStatusOutput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The destination of the report.</p>"}))
    GetFindingsReportStatusOutput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The filter criteria associated with the report.</p>"}))
    GetFindingsReportStatusOutput.type = Types::GetFindingsReportStatusOutput
    GetMemberInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the member account to retrieve information on.</p>", "smithy.api#required" => {}}))
    GetMemberInput.type = Types::GetMemberInput
    GetMemberOutput.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Member, location_name: 'member', traits: {"smithy.api#documentation" => "<p>Details of the retrieved member account.</p>"}))
    GetMemberOutput.type = Types::GetMemberOutput
    GetSbomExportRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The report ID of the SBOM export to get details for.</p>", "smithy.api#required" => {}}))
    GetSbomExportRequest.type = Types::GetSbomExportRequest
    GetSbomExportResponse.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'reportId', traits: {"smithy.api#documentation" => "<p>The report ID of the software bill of materials (SBOM) report.</p>"}))
    GetSbomExportResponse.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: SbomReportFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the software bill of materials (SBOM) report.</p>"}))
    GetSbomExportResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the software bill of materials (SBOM) report.</p>"}))
    GetSbomExportResponse.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportingErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>An error code.</p>"}))
    GetSbomExportResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message.</p>"}))
    GetSbomExportResponse.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>Contains details of the Amazon S3 bucket and KMS key used to export findings</p>"}))
    GetSbomExportResponse.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>Contains details about the resource filter criteria used for the software bill of\n         materials (SBOM) report.</p>"}))
    GetSbomExportResponse.type = Types::GetSbomExportResponse
    ImageLayerAggregation.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>The repository associated with the container image hosting the layers.</p>"}))
    ImageLayerAggregation.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceIds', traits: {"smithy.api#documentation" => "<p>The ID of the container image layer.</p>"}))
    ImageLayerAggregation.add_member(:layer_hashes, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'layerHashes', traits: {"smithy.api#documentation" => "<p>The hashes associated with the layers.</p>"}))
    ImageLayerAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    ImageLayerAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageLayerSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    ImageLayerAggregation.type = Types::ImageLayerAggregation
    ImageLayerAggregationResponse.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The repository the layer resides in.</p>", "smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID of the container image layer.</p>", "smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:layer_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'layerHash', traits: {"smithy.api#documentation" => "<p>The layer hash.</p>", "smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the container image hosting the layer\n         image.</p>", "smithy.api#required" => {}}))
    ImageLayerAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that represents the count of matched findings per severity.</p>"}))
    ImageLayerAggregationResponse.type = Types::ImageLayerAggregationResponse
    ImageTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    InspectorScoreDetails.add_member(:adjusted_cvss, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreDetails, location_name: 'adjustedCvss', traits: {"smithy.api#documentation" => "<p>An object that contains details about the CVSS score given to a finding.</p>"}))
    InspectorScoreDetails.type = Types::InspectorScoreDetails
    IntegrationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    IntegrationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    IntegrationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IntegrationStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    IntegrationStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    IntegrationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationSummary)
    IntegrationType.add_member(:gitlab_self_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITLAB_SELF_MANAGED', traits: {"smithy.api#enumValue" => "GITLAB_SELF_MANAGED"}))
    IntegrationType.add_member(:github, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITHUB', traits: {"smithy.api#enumValue" => "GITHUB"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpV4AddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4Address)
    IpV6AddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpV6Address)
    LambdaFunctionAggregation.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceIds', traits: {"smithy.api#documentation" => "<p>The resource IDs to include in the aggregation results.</p>"}))
    LambdaFunctionAggregation.add_member(:function_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'functionNames', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function names to include in the aggregation\n         results.</p>"}))
    LambdaFunctionAggregation.add_member(:runtimes, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'runtimes', traits: {"smithy.api#documentation" => "<p>Returns findings aggregated by Amazon Web Services Lambda function runtime\n         environments.</p>"}))
    LambdaFunctionAggregation.add_member(:function_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapFilterList, location_name: 'functionTags', traits: {"smithy.api#documentation" => "<p>The tags to include in the aggregation results.</p>"}))
    LambdaFunctionAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to use for sorting the results.</p>"}))
    LambdaFunctionAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The finding severity to use for sorting the results.</p>"}))
    LambdaFunctionAggregation.type = Types::LambdaFunctionAggregation
    LambdaFunctionAggregationResponse.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource IDs included in the aggregation results.</p>", "smithy.api#required" => {}}))
    LambdaFunctionAggregationResponse.add_member(:function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'functionName', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function names included in the aggregation results.</p>"}))
    LambdaFunctionAggregationResponse.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>The runtimes included in the aggregation results.</p>"}))
    LambdaFunctionAggregationResponse.add_member(:lambda_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'lambdaTags', traits: {"smithy.api#documentation" => "<p>The tags included in the aggregation results.</p>"}))
    LambdaFunctionAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the Amazon Web Services Lambda\n         function. </p>"}))
    LambdaFunctionAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that contains the counts of aggregated finding per severity.</p>"}))
    LambdaFunctionAggregationResponse.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date that the Amazon Web Services Lambda function included in the aggregation results\n         was last changed.</p>"}))
    LambdaFunctionAggregationResponse.type = Types::LambdaFunctionAggregationResponse
    LambdaFunctionMetadata.add_member(:function_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'functionTags', traits: {"smithy.api#documentation" => "<p>The resource tags on an Amazon Web Services Lambda function.</p>"}))
    LambdaFunctionMetadata.add_member(:layers, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerList, location_name: 'layers', traits: {"smithy.api#documentation" => "<p>The layers for an Amazon Web Services Lambda function. A Lambda function can have up to\n         five layers.</p>"}))
    LambdaFunctionMetadata.add_member(:function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'functionName', traits: {"smithy.api#documentation" => "<p>The name of a function.</p>"}))
    LambdaFunctionMetadata.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Runtime, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Lambda function's runtime.</p>"}))
    LambdaFunctionMetadata.type = Types::LambdaFunctionMetadata
    LambdaLayerAggregation.add_member(:function_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'functionNames', traits: {"smithy.api#documentation" => "<p>The names of the Amazon Web Services Lambda functions associated with the layers.</p>"}))
    LambdaLayerAggregation.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'resourceIds', traits: {"smithy.api#documentation" => "<p>The resource IDs for the Amazon Web Services Lambda function layers.</p>"}))
    LambdaLayerAggregation.add_member(:layer_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'layerArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Lambda function layer. </p>"}))
    LambdaLayerAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to use for sorting the results.</p>"}))
    LambdaLayerAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The finding severity to use for sorting the results.</p>"}))
    LambdaLayerAggregation.type = Types::LambdaLayerAggregation
    LambdaLayerAggregationResponse.add_member(:function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'functionName', traits: {"smithy.api#documentation" => "<p>The names of the Amazon Web Services Lambda functions associated with the layers.</p>", "smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource ID of the Amazon Web Services Lambda function layer.</p>", "smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:layer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'layerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Lambda function layer.</p>", "smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account ID of the Amazon Web Services Lambda function layer.</p>", "smithy.api#required" => {}}))
    LambdaLayerAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that contains the counts of aggregated finding per severity.</p>"}))
    LambdaLayerAggregationResponse.type = Types::LambdaLayerAggregationResponse
    LambdaLayerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    LambdaVpcConfig.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>A list of VPC subnet IDs.</p>"}))
    LambdaVpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to an Amazon Web Services Lambda\n         function. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html\">VPC Settings</a>.</p>"}))
    LambdaVpcConfig.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC.</p>"}))
    LambdaVpcConfig.type = Types::LambdaVpcConfig
    LayerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerArn)
    ListAccountPermissionsInput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The service scan type to check permissions for.</p>"}))
    ListAccountPermissionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountPermissionsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListAccountPermissionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the NextToken value returned\n         from the previous request to continue listing results after the first page.</p>"}))
    ListAccountPermissionsInput.type = Types::ListAccountPermissionsInput
    ListAccountPermissionsOutput.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'permissions', traits: {"smithy.api#documentation" => "<p>Contains details on the permissions an account has to configure Amazon Inspector.</p>", "smithy.api#required" => {}}))
    ListAccountPermissionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListAccountPermissionsOutput.type = Types::ListAccountPermissionsOutput
    ListCisScanConfigurationsFilterCriteria.add_member(:scan_name_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanNameFilterList, location_name: 'scanNameFilters', traits: {"smithy.api#documentation" => "<p>The list of scan name filters.</p>"}))
    ListCisScanConfigurationsFilterCriteria.add_member(:target_resource_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagFilterList, location_name: 'targetResourceTagFilters', traits: {"smithy.api#documentation" => "<p>The list of target resource tag filters.</p>"}))
    ListCisScanConfigurationsFilterCriteria.add_member(:scan_configuration_arn_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArnFilterList, location_name: 'scanConfigurationArnFilters', traits: {"smithy.api#documentation" => "<p>The list of scan configuration ARN filters.</p>"}))
    ListCisScanConfigurationsFilterCriteria.type = Types::ListCisScanConfigurationsFilterCriteria
    ListCisScanConfigurationsRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanConfigurationsFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration filter criteria.</p>"}))
    ListCisScanConfigurationsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationsSortBy, location_name: 'sortBy', traits: {"smithy.api#default" => "SCAN_NAME", "smithy.api#documentation" => "<p>The CIS scan configuration sort by order.</p>"}))
    ListCisScanConfigurationsRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration sort order order.</p>"}))
    ListCisScanConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScanConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanConfigurationsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of CIS scan configurations to be returned in a single page of\n         results.</p>"}))
    ListCisScanConfigurationsRequest.type = Types::ListCisScanConfigurationsRequest
    ListCisScanConfigurationsResponse.add_member(:scan_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationList, location_name: 'scanConfigurations', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration scan configurations.</p>"}))
    ListCisScanConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScanConfigurationsResponse.type = Types::ListCisScanConfigurationsResponse
    ListCisScanResultsAggregatedByChecksRequest.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The scan ARN.</p>", "smithy.api#required" => {}}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByChecksFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The filter criteria.</p>"}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByChecksSortBy, location_name: 'sortBy', traits: {"smithy.api#default" => "FAILED_COUNTS", "smithy.api#documentation" => "<p>The sort by order.</p>"}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order.</p>"}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of scan results aggregated by checks to be returned in a single page\n         of results.</p>"}))
    ListCisScanResultsAggregatedByChecksRequest.type = Types::ListCisScanResultsAggregatedByChecksRequest
    ListCisScanResultsAggregatedByChecksResponse.add_member(:check_aggregations, Smithy::Schema::Shapes::ShapeRef.new(shape: CisCheckAggregationList, location_name: 'checkAggregations', traits: {"smithy.api#documentation" => "<p>The check aggregations.</p>"}))
    ListCisScanResultsAggregatedByChecksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScanResultsAggregatedByChecksResponse.type = Types::ListCisScanResultsAggregatedByChecksResponse
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:scan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArn, location_name: 'scanArn', traits: {"smithy.api#documentation" => "<p>The scan ARN.</p>", "smithy.api#required" => {}}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByTargetResourceFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The filter criteria.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByTargetResourceSortBy, location_name: 'sortBy', traits: {"smithy.api#default" => "FAILED_COUNTS", "smithy.api#documentation" => "<p>The sort by order.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanResultsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of scan results aggregated by a target resource to be returned in a\n         single page of results.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceRequest.type = Types::ListCisScanResultsAggregatedByTargetResourceRequest
    ListCisScanResultsAggregatedByTargetResourceResponse.add_member(:target_resource_aggregations, Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetResourceAggregationList, location_name: 'targetResourceAggregations', traits: {"smithy.api#documentation" => "<p>The resource aggregations.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScanResultsAggregatedByTargetResourceResponse.type = Types::ListCisScanResultsAggregatedByTargetResourceResponse
    ListCisScansDetailLevel.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ListCisScansDetailLevel.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBER', traits: {"smithy.api#enumValue" => "MEMBER"}))
    ListCisScansFilterCriteria.add_member(:scan_name_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanNameFilterList, location_name: 'scanNameFilters', traits: {"smithy.api#documentation" => "<p>The list of scan name filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:target_resource_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagFilterList, location_name: 'targetResourceTagFilters', traits: {"smithy.api#documentation" => "<p>The list of target resource tag filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:target_resource_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdFilterList, location_name: 'targetResourceIdFilters', traits: {"smithy.api#documentation" => "<p>The list of target resource ID filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:scan_status_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanStatusFilterList, location_name: 'scanStatusFilters', traits: {"smithy.api#documentation" => "<p>The list of scan status filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:scan_at_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanDateFilterList, location_name: 'scanAtFilters', traits: {"smithy.api#documentation" => "<p>The list of scan at filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:scan_configuration_arn_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArnFilterList, location_name: 'scanConfigurationArnFilters', traits: {"smithy.api#documentation" => "<p>The list of scan configuration ARN filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:scan_arn_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanArnFilterList, location_name: 'scanArnFilters', traits: {"smithy.api#documentation" => "<p>The list of scan ARN filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:scheduled_by_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScheduledByFilterList, location_name: 'scheduledByFilters', traits: {"smithy.api#documentation" => "<p>The list of scheduled by filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:failed_checks_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CisNumberFilterList, location_name: 'failedChecksFilters', traits: {"smithy.api#documentation" => "<p>The list of failed checks filters.</p>"}))
    ListCisScansFilterCriteria.add_member(:target_account_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: 'targetAccountIdFilters', traits: {"smithy.api#documentation" => "<p>The list of target account ID filters.</p>"}))
    ListCisScansFilterCriteria.type = Types::ListCisScansFilterCriteria
    ListCisScansRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScansFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The CIS scan filter criteria.</p>"}))
    ListCisScansRequest.add_member(:detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScansDetailLevel, location_name: 'detailLevel', traits: {"smithy.api#documentation" => "<p>The detail applied to the CIS scan.</p>"}))
    ListCisScansRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScansSortBy, location_name: 'sortBy', traits: {"smithy.api#default" => "SCAN_START_DATE", "smithy.api#documentation" => "<p>The CIS scans sort by order.</p>"}))
    ListCisScansRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The CIS scans sort order.</p>"}))
    ListCisScansRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScansRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScansMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to be returned.</p>"}))
    ListCisScansRequest.type = Types::ListCisScansRequest
    ListCisScansResponse.add_member(:scans, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanList, location_name: 'scans', traits: {"smithy.api#documentation" => "<p>The CIS scans.</p>"}))
    ListCisScansResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request that's used to retrieve the next page of\n         results.</p>"}))
    ListCisScansResponse.type = Types::ListCisScansResponse
    ListCisScansSortBy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    ListCisScansSortBy.add_member(:scheduled_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED_BY', traits: {"smithy.api#enumValue" => "SCHEDULED_BY"}))
    ListCisScansSortBy.add_member(:scan_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_START_DATE', traits: {"smithy.api#enumValue" => "SCAN_START_DATE"}))
    ListCisScansSortBy.add_member(:failed_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_CHECKS', traits: {"smithy.api#enumValue" => "FAILED_CHECKS"}))
    ListCodeSecurityIntegrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request. For subsequent calls, use the NextToken\n         value returned from the previous request to continue listing results after the first\n         page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCodeSecurityIntegrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCodeSecurityIntegrationsRequest.type = Types::ListCodeSecurityIntegrationsRequest
    ListCodeSecurityIntegrationsResponse.add_member(:integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSummaries, location_name: 'integrations', traits: {"smithy.api#documentation" => "<p>A list of code security integration summaries.</p>"}))
    ListCodeSecurityIntegrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request. For subsequent calls, use the NextToken\n         value returned from the previous request to continue listing results after the first\n         page.</p>"}))
    ListCodeSecurityIntegrationsResponse.type = Types::ListCodeSecurityIntegrationsResponse
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration to list associations\n         for.</p>", "smithy.api#required" => {}}))
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If your request would return\n         more than the maximum the response will return a <code>nextToken</code> value, use this\n         value when you call the action again to get the remaining results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCodeSecurityScanConfigurationAssociationsRequest.type = Types::ListCodeSecurityScanConfigurationAssociationsRequest
    ListCodeSecurityScanConfigurationAssociationsResponse.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationAssociationSummaries, location_name: 'associations', traits: {"smithy.api#documentation" => "<p>A list of associations between code repositories and scan configurations.</p>"}))
    ListCodeSecurityScanConfigurationAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListCodeSecurityScanConfigurationAssociationsResponse.type = Types::ListCodeSecurityScanConfigurationAssociationsResponse
    ListCodeSecurityScanConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request. For subsequent calls, use the NextToken\n         value returned from the previous request to continue listing results after the first\n         page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCodeSecurityScanConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCodeSecurityScanConfigurationsRequest.type = Types::ListCodeSecurityScanConfigurationsRequest
    ListCodeSecurityScanConfigurationsResponse.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationSummaries, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>A list of code security scan configuration summaries.</p>"}))
    ListCodeSecurityScanConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request. For subsequent calls, use the NextToken\n         value returned from the previous request to continue listing results after the first\n         page.</p>"}))
    ListCodeSecurityScanConfigurationsResponse.type = Types::ListCodeSecurityScanConfigurationsResponse
    ListCoverageInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoverageMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListCoverageInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListCoverageInput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>An object that contains details on the filters to apply to the coverage data for your\n         environment.</p>"}))
    ListCoverageInput.type = Types::ListCoverageInput
    ListCoverageOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListCoverageOutput.add_member(:covered_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: CoveredResources, location_name: 'coveredResources', traits: {"smithy.api#documentation" => "<p>An object that contains details on the covered resources in your environment.</p>"}))
    ListCoverageOutput.type = Types::ListCoverageOutput
    ListCoverageStatisticsInput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>An object that contains details on the filters to apply to the coverage data for your\n         environment.</p>"}))
    ListCoverageStatisticsInput.add_member(:group_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupKey, location_name: 'groupBy', traits: {"smithy.api#documentation" => "<p>The value to group the results by.</p>"}))
    ListCoverageStatisticsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListCoverageStatisticsInput.type = Types::ListCoverageStatisticsInput
    ListCoverageStatisticsOutput.add_member(:counts_by_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CountsList, location_name: 'countsByGroup', traits: {"smithy.api#documentation" => "<p>An array with the number for each group.</p>"}))
    ListCoverageStatisticsOutput.add_member(:total_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalCounts', traits: {"smithy.api#documentation" => "<p>The total number for all groups.</p>", "smithy.api#required" => {}}))
    ListCoverageStatisticsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListCoverageStatisticsOutput.type = Types::ListCoverageStatisticsOutput
    ListDelegatedAdminAccountsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdminMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListDelegatedAdminAccountsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListDelegatedAdminAccountsInput.type = Types::ListDelegatedAdminAccountsInput
    ListDelegatedAdminAccountsOutput.add_member(:delegated_admin_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdminAccountList, location_name: 'delegatedAdminAccounts', traits: {"smithy.api#documentation" => "<p>Details of the Amazon Inspector delegated administrator of your organization.</p>"}))
    ListDelegatedAdminAccountsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListDelegatedAdminAccountsOutput.type = Types::ListDelegatedAdminAccountsOutput
    ListFiltersInput.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArnList, location_name: 'arns', traits: {"smithy.api#documentation" => "<p>The Amazon resource number (ARN) of the filter.</p>"}))
    ListFiltersInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action the filter applies to matched findings.</p>"}))
    ListFiltersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListFiltersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListFilterMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListFiltersInput.type = Types::ListFiltersInput
    ListFiltersOutput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Contains details on the filters associated with your account.</p>", "smithy.api#required" => {}}))
    ListFiltersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListFiltersOutput.type = Types::ListFiltersOutput
    ListFindingAggregationsInput.add_member(:aggregation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationType, location_name: 'aggregationType', traits: {"smithy.api#documentation" => "<p>The type of the aggregation request.</p>", "smithy.api#required" => {}}))
    ListFindingAggregationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListFindingAggregationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingAggregationsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListFindingAggregationsInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account IDs to retrieve finding aggregation data for.</p>"}))
    ListFindingAggregationsInput.add_member(:aggregation_request, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationRequest, location_name: 'aggregationRequest', traits: {"smithy.api#documentation" => "<p>Details of the aggregation request that is used to filter your aggregation\n         results.</p>"}))
    ListFindingAggregationsInput.type = Types::ListFindingAggregationsInput
    ListFindingAggregationsOutput.add_member(:aggregation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationType, location_name: 'aggregationType', traits: {"smithy.api#documentation" => "<p>The type of aggregation to perform.</p>", "smithy.api#required" => {}}))
    ListFindingAggregationsOutput.add_member(:responses, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationResponseList, location_name: 'responses', traits: {"smithy.api#documentation" => "<p>Objects that contain the results of an aggregation operation.</p>"}))
    ListFindingAggregationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListFindingAggregationsOutput.type = Types::ListFindingAggregationsOutput
    ListFindingsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListFindingsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListFindingsInput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>Details on the filters to apply to your finding results.</p>"}))
    ListFindingsInput.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>Details on the sort criteria to apply to your finding results.</p>"}))
    ListFindingsInput.type = Types::ListFindingsInput
    ListFindingsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    ListFindingsOutput.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingList, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>Contains details on the findings in your environment.</p>"}))
    ListFindingsOutput.type = Types::ListFindingsOutput
    ListMembersInput.add_member(:only_associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'onlyAssociated', traits: {"smithy.api#documentation" => "<p>Specifies whether to list only currently associated members if <code>True</code> or to\n         list all members within the organization if <code>False</code>.</p>"}))
    ListMembersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListMembersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListMembersInput.type = Types::ListMembersInput
    ListMembersOutput.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberList, location_name: 'members', traits: {"smithy.api#documentation" => "<p>An object that contains details for each member account.</p>"}))
    ListMembersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination parameter to be used on the next list operation to retrieve more\n         items.</p>"}))
    ListMembersOutput.type = Types::ListMembersOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource number (ARN) of the resource to list tags of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListUsageTotalsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageTotalsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results the response can return. If your request would return more\n         than the maximum the response will return a <code>nextToken</code> value, use this value\n         when you call the action again to get the remaining results.</p>"}))
    ListUsageTotalsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageTotalsNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. If your response returns\n         more than the <code>maxResults</code> maximum value it will also return a\n            <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value\n         returned from the previous request to continue listing results after the first page.</p>"}))
    ListUsageTotalsInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAccountIdList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account IDs to retrieve usage totals for.</p>"}))
    ListUsageTotalsInput.type = Types::ListUsageTotalsInput
    ListUsageTotalsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageTotalsNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination parameter to be used on the next list operation to retrieve more\n         items.</p>"}))
    ListUsageTotalsOutput.add_member(:totals, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTotalList, location_name: 'totals', traits: {"smithy.api#documentation" => "<p>An object with details on the total usage for the requested account.</p>"}))
    ListUsageTotalsOutput.type = Types::ListUsageTotalsOutput
    MapFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: MapComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The operator to use when comparing values in the filter.</p>", "smithy.api#required" => {}}))
    MapFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: MapKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key used in the filter.</p>", "smithy.api#required" => {}}))
    MapFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MapValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value used in the filter.</p>"}))
    MapFilter.type = Types::MapFilter
    MapFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MapFilter)
    Member.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the member account.</p>"}))
    Member.add_member(:relationship_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#documentation" => "<p>The status of the member account.</p>"}))
    Member.add_member(:delegated_admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'delegatedAdminAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for this member\n         account.</p>"}))
    Member.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp showing when the status of this member was last updated.</p>"}))
    Member.type = Types::Member
    MemberAccountEc2DeepInspectionStatus.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account of the organization member.</p>", "smithy.api#required" => {}}))
    MemberAccountEc2DeepInspectionStatus.add_member(:activate_deep_inspection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'activateDeepInspection', traits: {"smithy.api#documentation" => "<p>Whether Amazon Inspector deep inspection is active in the account. If <code>TRUE</code> Amazon Inspector deep\n         inspection is active, if <code>FALSE</code> it is not active.</p>", "smithy.api#required" => {}}))
    MemberAccountEc2DeepInspectionStatus.type = Types::MemberAccountEc2DeepInspectionStatus
    MemberAccountEc2DeepInspectionStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatus)
    MemberAccountEc2DeepInspectionStatusState.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account of the organization member</p>", "smithy.api#required" => {}}))
    MemberAccountEc2DeepInspectionStatusState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2DeepInspectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of Amazon Inspector deep inspection in the member account.</p>"}))
    MemberAccountEc2DeepInspectionStatusState.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message explaining why the account failed to activate Amazon Inspector deep\n         inspection.</p>"}))
    MemberAccountEc2DeepInspectionStatusState.type = Types::MemberAccountEc2DeepInspectionStatusState
    MemberAccountEc2DeepInspectionStatusStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusState)
    MemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    MeteringAccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MeteringAccountId)
    MonthlySchedule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The monthly schedule's start time.</p>", "smithy.api#required" => {}}))
    MonthlySchedule.add_member(:day, Smithy::Schema::Shapes::ShapeRef.new(shape: Day, location_name: 'day', traits: {"smithy.api#documentation" => "<p>The monthly schedule's day.</p>", "smithy.api#required" => {}}))
    MonthlySchedule.type = Types::MonthlySchedule
    NetworkPath.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>The details on the steps in the network path.</p>"}))
    NetworkPath.type = Types::NetworkPath
    NetworkReachabilityDetails.add_member(:open_port_range, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRange, location_name: 'openPortRange', traits: {"smithy.api#documentation" => "<p>An object that contains details about the open port range associated with a\n         finding.</p>", "smithy.api#required" => {}}))
    NetworkReachabilityDetails.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol associated with a finding.</p>", "smithy.api#required" => {}}))
    NetworkReachabilityDetails.add_member(:network_path, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkPath, location_name: 'networkPath', traits: {"smithy.api#documentation" => "<p>An object that contains details about a network path associated with a finding.</p>", "smithy.api#required" => {}}))
    NetworkReachabilityDetails.type = Types::NetworkReachabilityDetails
    NonEmptyStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    NumberFilter.add_member(:upper_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'upperInclusive', traits: {"smithy.api#documentation" => "<p>The highest number to be included in the filter.</p>"}))
    NumberFilter.add_member(:lower_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'lowerInclusive', traits: {"smithy.api#documentation" => "<p>The lowest number to be included in the filter.</p>"}))
    NumberFilter.type = Types::NumberFilter
    NumberFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NumberFilter)
    OneAccountIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    OneTimeSchedule.type = Types::OneTimeSchedule
    PackageAggregation.add_member(:package_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'packageNames', traits: {"smithy.api#documentation" => "<p>The names of packages to aggregate findings on.</p>"}))
    PackageAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    PackageAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    PackageAggregation.type = Types::PackageAggregation
    PackageAggregationResponse.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'packageName', traits: {"smithy.api#documentation" => "<p>The name of the operating system package.</p>", "smithy.api#required" => {}}))
    PackageAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account associated with the findings.</p>"}))
    PackageAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that contains the count of matched findings per severity.</p>"}))
    PackageAggregationResponse.type = Types::PackageAggregationResponse
    PackageFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'name', traits: {"smithy.api#documentation" => "<p>An object that contains details on the name of the package to filter on.</p>"}))
    PackageFilter.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The package version to filter on.</p>"}))
    PackageFilter.add_member(:epoch, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberFilter, location_name: 'epoch', traits: {"smithy.api#documentation" => "<p>An object that contains details on the package epoch to filter on.</p>"}))
    PackageFilter.add_member(:release, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'release', traits: {"smithy.api#documentation" => "<p>An object that contains details on the package release to filter on.</p>"}))
    PackageFilter.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>An object that contains details on the package architecture type to filter on.</p>"}))
    PackageFilter.add_member(:source_layer_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'sourceLayerHash', traits: {"smithy.api#documentation" => "<p>An object that contains details on the source layer hash to filter on.</p>"}))
    PackageFilter.add_member(:source_lambda_layer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'sourceLambdaLayerArn', traits: {"smithy.api#documentation" => "<p>An object that describes the details of a string filter.</p>"}))
    PackageFilter.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>An object that contains details on the package file path to filter on.</p>"}))
    PackageFilter.type = Types::PackageFilter
    PackageFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFilter)
    PackageVulnerabilityDetails.add_member(:vulnerability_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityId, location_name: 'vulnerabilityId', traits: {"smithy.api#documentation" => "<p>The ID given to this vulnerability.</p>", "smithy.api#required" => {}}))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackageList, location_name: 'vulnerablePackages', traits: {"smithy.api#documentation" => "<p>The packages impacted by this vulnerability.</p>"}))
    PackageVulnerabilityDetails.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the vulnerability information.</p>", "smithy.api#required" => {}}))
    PackageVulnerabilityDetails.add_member(:cvss, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreList, location_name: 'cvss', traits: {"smithy.api#documentation" => "<p>An object that contains details about the CVSS score of a finding.</p>"}))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityIdList, location_name: 'relatedVulnerabilities', traits: {"smithy.api#documentation" => "<p>One or more vulnerabilities related to the one identified in this finding.</p>"}))
    PackageVulnerabilityDetails.add_member(:source_url, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'sourceUrl', traits: {"smithy.api#documentation" => "<p>A URL to the source of the vulnerability information.</p>"}))
    PackageVulnerabilityDetails.add_member(:vendor_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vendorSeverity', traits: {"smithy.api#documentation" => "<p>The severity the vendor has given to this vulnerability type.</p>"}))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'vendorCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that this vulnerability was first added to the vendor's\n         database.</p>"}))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: 'vendorUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the vendor last updated this vulnerability in their database.</p>"}))
    PackageVulnerabilityDetails.add_member(:reference_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: 'referenceUrls', traits: {"smithy.api#documentation" => "<p>One or more URLs that contain details about this vulnerability type.</p>"}))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    PathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Path)
    PeriodicScanConfiguration.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodicScanFrequency, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The frequency at which periodic scans are performed (such as weekly or monthly).</p>\n         <p>If you don't provide the <code>frequencyExpression</code> Amazon Inspector chooses day for the scan\n         to run. If you provide the <code>frequencyExpression</code>, the schedule must match the\n         specified <code>frequency</code>.</p>"}))
    PeriodicScanConfiguration.add_member(:frequency_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FrequencyExpression, location_name: 'frequencyExpression', traits: {"smithy.api#documentation" => "<p>The schedule expression for periodic scans, in cron format.</p>"}))
    PeriodicScanConfiguration.type = Types::PeriodicScanConfiguration
    PeriodicScanFrequency.add_member(:weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    PeriodicScanFrequency.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    PeriodicScanFrequency.add_member(:never, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER', traits: {"smithy.api#enumValue" => "NEVER"}))
    Permission.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The services that the permissions allow an account to perform the given operations\n         for.</p>", "smithy.api#required" => {}}))
    Permission.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'operation', traits: {"smithy.api#documentation" => "<p>The operations that can be performed with the given permissions.</p>", "smithy.api#required" => {}}))
    Permission.type = Types::Permission
    Permissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    PlatformFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    PortRange.add_member(:begin, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'begin', traits: {"smithy.api#documentation" => "<p>The beginning port in a port range.</p>", "smithy.api#required" => {}}))
    PortRange.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'end', traits: {"smithy.api#documentation" => "<p>The ending port in a port range.</p>", "smithy.api#required" => {}}))
    PortRange.type = Types::PortRange
    PortRangeFilter.add_member(:begin_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'beginInclusive', traits: {"smithy.api#documentation" => "<p>The port number the port range begins at.</p>"}))
    PortRangeFilter.add_member(:end_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'endInclusive', traits: {"smithy.api#documentation" => "<p>The port number the port range ends at.</p>"}))
    PortRangeFilter.type = Types::PortRangeFilter
    PortRangeFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeFilter)
    ProjectCodeSecurityScanConfiguration.add_member(:periodic_scan_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPeriodicScanConfigurationList, location_name: 'periodicScanConfigurations', traits: {"smithy.api#documentation" => "<p>The periodic scan configurations applied to the project.</p>"}))
    ProjectCodeSecurityScanConfiguration.add_member(:continuous_integration_scan_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectContinuousIntegrationScanConfigurationList, location_name: 'continuousIntegrationScanConfigurations', traits: {"smithy.api#documentation" => "<p>The continuous integration scan configurations applied to the project.</p>"}))
    ProjectCodeSecurityScanConfiguration.type = Types::ProjectCodeSecurityScanConfiguration
    ProjectContinuousIntegrationScanConfiguration.add_member(:supported_event, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousIntegrationScanEvent, location_name: 'supportedEvent', traits: {"smithy.api#documentation" => "<p>The repository event that triggers continuous integration scans for the project.</p>"}))
    ProjectContinuousIntegrationScanConfiguration.add_member(:rule_set_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetCategories, location_name: 'ruleSetCategories', traits: {"smithy.api#documentation" => "<p>The categories of security rules applied during continuous integration scans for the\n         project.</p>"}))
    ProjectContinuousIntegrationScanConfiguration.type = Types::ProjectContinuousIntegrationScanConfiguration
    ProjectContinuousIntegrationScanConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectContinuousIntegrationScanConfiguration)
    ProjectPeriodicScanConfiguration.add_member(:frequency_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FrequencyExpression, location_name: 'frequencyExpression', traits: {"smithy.api#documentation" => "<p>The schedule expression for periodic scans, in cron format, applied to the\n         project.</p>"}))
    ProjectPeriodicScanConfiguration.add_member(:rule_set_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetCategories, location_name: 'ruleSetCategories', traits: {"smithy.api#documentation" => "<p>The categories of security rules applied during periodic scans for the project.</p>"}))
    ProjectPeriodicScanConfiguration.type = Types::ProjectPeriodicScanConfiguration
    ProjectPeriodicScanConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPeriodicScanConfiguration)
    ProjectSelectionScope.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Recommendation.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The recommended course of action to remediate the finding.</p>"}))
    Recommendation.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL address to the CVE remediation recommendations.</p>"}))
    Recommendation.type = Types::Recommendation
    ReferenceUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    RelatedVulnerabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerability)
    Remediation.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p>An object that contains information about the recommended course of action to remediate\n         the finding.</p>"}))
    Remediation.type = Types::Remediation
    ReportTargetAccounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    RepositoryAggregation.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>The names of repositories to aggregate findings on.</p>"}))
    RepositoryAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    RepositoryAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    RepositoryAggregation.type = Types::RepositoryAggregation
    RepositoryAggregationResponse.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository associated with the findings.</p>", "smithy.api#required" => {}}))
    RepositoryAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account associated with the findings.</p>"}))
    RepositoryAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that represent the count of matched findings per severity.</p>"}))
    RepositoryAggregationResponse.add_member(:affected_images, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'affectedImages', traits: {"smithy.api#documentation" => "<p>The number of container images impacted by the findings.</p>"}))
    RepositoryAggregationResponse.type = Types::RepositoryAggregationResponse
    ResetEncryptionKeyRequest.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>The scan type the key encrypts.</p>", "smithy.api#required" => {}}))
    ResetEncryptionKeyRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type the key encrypts.</p>", "smithy.api#required" => {}}))
    ResetEncryptionKeyRequest.type = Types::ResetEncryptionKeyRequest
    ResetEncryptionKeyResponse.type = Types::ResetEncryptionKeyResponse
    Resource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>", "smithy.api#required" => {}}))
    Resource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    Resource.add_member(:partition, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'partition', traits: {"smithy.api#documentation" => "<p>The partition of the resource.</p>"}))
    Resource.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region the impacted resource is located in.</p>"}))
    Resource.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the resource.</p>"}))
    Resource.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: 'details', traits: {"smithy.api#documentation" => "<p>An object that contains details about the resource involved in a finding.</p>"}))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:aws_ec2_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEc2InstanceDetails, location_name: 'awsEc2Instance', traits: {"smithy.api#documentation" => "<p>An object that contains details about the Amazon EC2 instance involved in the finding.</p>"}))
    ResourceDetails.add_member(:aws_ecr_container_image, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcrContainerImageDetails, location_name: 'awsEcrContainerImage', traits: {"smithy.api#documentation" => "<p>An object that contains details about the Amazon ECR container image involved in the\n         finding.</p>"}))
    ResourceDetails.add_member(:aws_lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLambdaFunctionDetails, location_name: 'awsLambdaFunction', traits: {"smithy.api#documentation" => "<p>A summary of the information about an Amazon Web Services Lambda function affected by a\n         finding.</p>"}))
    ResourceDetails.add_member(:code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryDetails, location_name: 'codeRepository', traits: {"smithy.api#documentation" => "<p>Contains details about a code repository resource associated with a finding.</p>"}))
    ResourceDetails.type = Types::ResourceDetails
    ResourceFilterCriteria.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account IDs used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource IDs used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource types used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:ecr_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: 'ecrRepositoryName', traits: {"smithy.api#documentation" => "<p>The ECR repository names used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:lambda_function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: 'lambdaFunctionName', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function name used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:ecr_image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: 'ecrImageTags', traits: {"smithy.api#documentation" => "<p>The ECR image tags used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:ec2_instance_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceMapFilterList, location_name: 'ec2InstanceTags', traits: {"smithy.api#documentation" => "<p>The EC2 instance tags used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.add_member(:lambda_function_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceMapFilterList, location_name: 'lambdaFunctionTags', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Lambda function tags used as resource filter criteria.</p>"}))
    ResourceFilterCriteria.type = Types::ResourceFilterCriteria
    ResourceIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceMapFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceMapComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The filter's comparison.</p>", "smithy.api#required" => {}}))
    ResourceMapFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The filter's key.</p>", "smithy.api#required" => {}}))
    ResourceMapFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The filter's value.</p>"}))
    ResourceMapFilter.type = Types::ResourceMapFilter
    ResourceMapFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceMapFilter)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceScanMetadata.add_member(:ecr_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRepositoryMetadata, location_name: 'ecrRepository', traits: {"smithy.api#documentation" => "<p>An object that contains details about the repository an Amazon ECR image resides in.</p>"}))
    ResourceScanMetadata.add_member(:ecr_image, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrContainerImageMetadata, location_name: 'ecrImage', traits: {"smithy.api#documentation" => "<p>An object that contains details about the container metadata for an Amazon ECR image.</p>"}))
    ResourceScanMetadata.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Metadata, location_name: 'ec2', traits: {"smithy.api#documentation" => "<p>An object that contains metadata details for an Amazon EC2 instance.</p>"}))
    ResourceScanMetadata.add_member(:lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionMetadata, location_name: 'lambdaFunction', traits: {"smithy.api#documentation" => "<p>An object that contains metadata details for an Amazon Web Services Lambda\n         function.</p>"}))
    ResourceScanMetadata.add_member(:code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeRepositoryMetadata, location_name: 'codeRepository', traits: {"smithy.api#documentation" => "<p>Contains metadata about scan coverage for a code repository resource.</p>"}))
    ResourceScanMetadata.type = Types::ResourceScanMetadata
    ResourceState.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'ec2', traits: {"smithy.api#documentation" => "<p>An object detailing the state of Amazon Inspector scanning for Amazon EC2 resources.</p>", "smithy.api#required" => {}}))
    ResourceState.add_member(:ecr, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'ecr', traits: {"smithy.api#documentation" => "<p>An object detailing the state of Amazon Inspector scanning for Amazon ECR resources.</p>", "smithy.api#required" => {}}))
    ResourceState.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p>An object that described the state of Amazon Inspector scans for an account.</p>"}))
    ResourceState.add_member(:lambda_code, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'lambdaCode', traits: {"smithy.api#documentation" => "<p>An object that described the state of Amazon Inspector scans for an account.</p>"}))
    ResourceState.add_member(:code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'codeRepository'))
    ResourceState.type = Types::ResourceState
    ResourceStatus.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'ec2', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector scanning for Amazon EC2 resources.</p>", "smithy.api#required" => {}}))
    ResourceStatus.add_member(:ecr, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'ecr', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector scanning for Amazon ECR resources.</p>", "smithy.api#required" => {}}))
    ResourceStatus.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector scanning for Amazon Web Services Lambda function.</p>"}))
    ResourceStatus.add_member(:lambda_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'lambdaCode', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector scanning for custom application code for Amazon Web Services Lambda\n         functions. </p>"}))
    ResourceStatus.add_member(:code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'codeRepository', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector scanning for code repositories.</p>"}))
    ResourceStatus.type = Types::ResourceStatus
    ResourceStringFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The filter's comparison.</p>", "smithy.api#required" => {}}))
    ResourceStringFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringInput, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The filter's value.</p>", "smithy.api#required" => {}}))
    ResourceStringFilter.type = Types::ResourceStringFilter
    ResourceStringFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStringFilter)
    ResourceTagFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter)
    RuleSetCategories.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetCategory)
    RuleSetCategory.add_member(:sast, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAST', traits: {"smithy.api#enumValue" => "SAST"}))
    RuleSetCategory.add_member(:iac, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAC', traits: {"smithy.api#enumValue" => "IAC"}))
    RuleSetCategory.add_member(:sca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCA', traits: {"smithy.api#enumValue" => "SCA"}))
    ScanStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code of the scan.</p>", "smithy.api#required" => {}}))
    ScanStatus.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatusReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The scan status. Possible return values and descriptions are: </p>\n         <p>\n            <code>ACCESS_DENIED</code> - Resource access policy restricting Amazon Inspector access. Please\n         update the IAM policy.</p>\n         <p>\n            <code>ACCESS_DENIED_TO_ENCRYPTION_KEY</code> - The KMS key policy doesn't allow Amazon Inspector\n         access. Update the key policy.</p>\n         <p>\n            <code>DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED</code> - Amazon Inspector failed to extract\n         the package inventory because the package collection time exceeding the maximum threshold\n         of 15 minutes.</p>\n         <p>\n            <code>DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED</code> - The SSM agent couldn't\n         send inventory to Amazon Inspector because the SSM quota for Inventory data collected per instance per\n         day has already been reached for this instance.</p>\n         <p>\n            <code>DEEP_INSPECTION_NO_INVENTORY</code> - The Amazon Inspector plugin hasn't yet been able to\n         collect an inventory of packages for this instance. This is usually the result of a pending\n         scan, however, if this status persists after 6 hours, use SSM to ensure that\n         the required Amazon Inspector associations exist and are running for the instance.</p>\n         <p>\n            <code>DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED</code> - The instance has\n         exceeded the 5000 package limit for Amazon Inspector Deep inspection. To resume Deep inspection for\n         this instance you can try to adjust the custom paths associated with the account.</p>\n         <p>\n            <code>EC2_INSTANCE_STOPPED</code> - This EC2 instance is in a stopped state, therefore,\n         Amazon Inspector will pause scanning. The existing findings will continue to exist until the instance\n         is terminated. Once the instance is re-started, Inspector will automatically start scanning\n         the instance again. Please note that you will not be charged for this instance while it's\n         in a stopped state.</p>\n         <p>\n            <code>EXCLUDED_BY_TAG</code> - This resource was not scanned because it has been\n         excluded by a tag.</p>\n         <p>\n            <code>IMAGE_SIZE_EXCEEDED</code> - Reserved for future use.</p>\n         <p>\n            <code>INTEGRATION_CONNNECTION_LOST</code> - Amazon Inspector couldn't communicate with the source\n         code management platform.</p>\n         <p>\n            <code>INTERNAL_ERROR</code> - Amazon Inspector has encountered an internal error for this resource.\n         Amazon Inspector service will automatically resolve the issue and resume the scanning. No action\n         required from the user.</p>\n         <p>\n            <code>NO_INVENTORY</code> - Amazon Inspector couldn't find software application inventory to scan\n         for vulnerabilities. This might be caused due to required Amazon Inspector associations being deleted\n         or failing to run on your resource. Please verify the status of\n         <code>InspectorInventoryCollection-do-not-delete</code> association in the SSM console\n         for the resource. Additionally, you can verify the instance's inventory in the SSM Fleet\n         Manager console.</p>\n         <p>\n            <code>NO_RESOURCES_FOUND</code> - Reserved for future use.</p>\n         <p>\n            <code>NO_SCAN_CONFIGURATION_ASSOCIATED</code> - The code repository resource doesn't\n         have an associated scan configuration.</p>\n         <p>\n            <code>PENDING_DISABLE</code> - This resource is pending cleanup during disablement. The\n         customer will not be billed while a resource is in the pending disable status.</p>\n         <p>\n            <code>PENDING_INITIAL_SCAN</code> - This resource has been identified for scanning,\n         results will be available soon.</p>\n         <p>\n            <code>RESOURCE_TERMINATED</code> - This resource has been terminated. The findings and\n         coverage associated with this resource are in the process of being cleaned up.</p>\n         <p>\n            <code>SCAN_ELIGIBILITY_EXPIRED</code> - The configured scan duration has lapsed for this\n         image.</p>\n         <p>\n            <code>SCAN_FREQUENCY_MANUAL</code> - This image will not be covered by Amazon Inspector due to the\n         repository scan frequency configuration.</p>\n         <p>\n            <code>SCAN_FREQUENCY_SCAN_ON_PUSH</code> - This image will be scanned one time and will\n         not new findings because of the scan frequency configuration.</p>\n         <p>\n            <code>SCAN_IN_PROGRESS</code> - The resource is currently being scanned.</p>\n         <p>\n            <code>STALE_INVENTORY</code> - Amazon Inspector wasn't able to collect an updated software\n         application inventory in the last 7 days. Please confirm the required Amazon Inspector associations\n         still exist and you can still see an updated inventory in the SSM console.</p>\n         <p>\n            <code>SUCCESSFUL</code> - The scan was successful.</p>\n         <p>\n            <code>UNMANAGED_EC2_INSTANCE</code> - The EC2 instance is not managed by SSM, please use\n         the following SSM automation to remediate the issue: <a href=\"https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-awssupport-troubleshoot-managed-instance.html\">https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-awssupport-troubleshoot-managed-instance.html</a>.\n         Once the instance becomes managed by SSM, Inspector will automatically begin scanning this\n         instance. </p>\n         <p>\n            <code>UNSUPPORTED_CONFIG_FILE</code> - Reserved for future use.</p>\n         <p>\n            <code>UNSUPPORTED_LANGUAGE</code> - The scan was unsuccessful because the repository\n         contains files in an unsupported programming language.</p>\n         <p>\n            <code>UNSUPPORTED_MEDIA_TYPE </code>- The ECR image has an unsupported media\n         type.</p>\n         <p>\n            <code>UNSUPPORTED_OS</code> - Amazon Inspector does not support this OS, architecture, or image\n         manifest type at this time. To see a complete list of supported operating systems see:\n         <a href=\" https://docs.aws.amazon.com/inspector/latest/user/supported.html\">https://docs.aws.amazon.com/inspector/latest/user/supported.html</a>.</p>\n         <p>\n            <code>UNSUPPORTED_RUNTIME</code> - The function was not scanned because it has an\n         unsupported runtime. To see a complete list of supported runtimes see: <a href=\" https://docs.aws.amazon.com/inspector/latest/user/supported.html\">https://docs.aws.amazon.com/inspector/latest/user/supported.html</a>.</p>", "smithy.api#required" => {}}))
    ScanStatus.type = Types::ScanStatus
    Schedule.add_member(:one_time, Types::Schedule::OneTime, Smithy::Schema::Shapes::ShapeRef.new(shape: OneTimeSchedule, location_name: 'oneTime', traits: {"smithy.api#documentation" => "<p>The schedule's one time.</p>"}))
    Schedule.add_member(:daily, Types::Schedule::Daily, Smithy::Schema::Shapes::ShapeRef.new(shape: DailySchedule, location_name: 'daily', traits: {"smithy.api#documentation" => "<p>The schedule's daily.</p>"}))
    Schedule.add_member(:weekly, Types::Schedule::Weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklySchedule, location_name: 'weekly', traits: {"smithy.api#documentation" => "<p>The schedule's weekly.</p>"}))
    Schedule.add_member(:monthly, Types::Schedule::Monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlySchedule, location_name: 'monthly', traits: {"smithy.api#documentation" => "<p>The schedule's monthly.</p>"}))
    Schedule.add_member(:unknown, Types::Schedule::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Schedule.type = Types::Schedule
    ScopeSettings.add_member(:project_selection_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSelectionScope, location_name: 'projectSelectionScope', traits: {"smithy.api#documentation" => "<p>The scope of projects to be selected for scanning within the integrated repositories.\n         Setting the value to <code>ALL</code> applies the scope settings to all existing and future\n         projects imported into Amazon Inspector.</p>"}))
    ScopeSettings.type = Types::ScopeSettings
    SearchVulnerabilitiesFilterCriteria.add_member(:vulnerability_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnIdList, location_name: 'vulnerabilityIds', traits: {"smithy.api#documentation" => "<p>The IDs for specific vulnerabilities.</p>", "smithy.api#required" => {}}))
    SearchVulnerabilitiesFilterCriteria.type = Types::SearchVulnerabilitiesFilterCriteria
    SearchVulnerabilitiesRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchVulnerabilitiesFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The criteria used to filter the results of a vulnerability search.</p>", "smithy.api#required" => {}}))
    SearchVulnerabilitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to use for paginating results that are returned in the response. Set the value\n         of this parameter to null for the first request to a list action. For subsequent calls, use\n         the <code>NextToken</code> value returned from the previous request to continue listing\n         results after the first page.</p>"}))
    SearchVulnerabilitiesRequest.type = Types::SearchVulnerabilitiesRequest
    SearchVulnerabilitiesResponse.add_member(:vulnerabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: Vulnerabilities, location_name: 'vulnerabilities', traits: {"smithy.api#documentation" => "<p>Details about the listed vulnerability.</p>", "smithy.api#required" => {}}))
    SearchVulnerabilitiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination parameter to be used on the next list operation to retrieve more\n         items.</p>"}))
    SearchVulnerabilitiesResponse.type = Types::SearchVulnerabilitiesResponse
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SendCisSessionHealthRequest.add_member(:scan_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'scanJobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the scan job.</p>", "smithy.api#required" => {}}))
    SendCisSessionHealthRequest.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The unique token that identifies the CIS session.</p>", "smithy.api#required" => {}}))
    SendCisSessionHealthRequest.type = Types::SendCisSessionHealthRequest
    SendCisSessionHealthResponse.type = Types::SendCisSessionHealthResponse
    SendCisSessionTelemetryRequest.add_member(:scan_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'scanJobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the scan job.</p>", "smithy.api#required" => {}}))
    SendCisSessionTelemetryRequest.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The unique token that identifies the CIS session.</p>", "smithy.api#required" => {}}))
    SendCisSessionTelemetryRequest.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSessionMessages, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>The CIS session telemetry messages.</p>", "smithy.api#required" => {}}))
    SendCisSessionTelemetryRequest.type = Types::SendCisSessionTelemetryRequest
    SendCisSessionTelemetryResponse.type = Types::SendCisSessionTelemetryResponse
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that exceeds a service quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SeverityCounts.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'all', traits: {"smithy.api#documentation" => "<p>The total count of findings from all severities.</p>"}))
    SeverityCounts.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'medium', traits: {"smithy.api#documentation" => "<p>The total count of medium severity findings.</p>"}))
    SeverityCounts.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'high', traits: {"smithy.api#documentation" => "<p>The total count of high severity findings.</p>"}))
    SeverityCounts.add_member(:critical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'critical', traits: {"smithy.api#documentation" => "<p>The total count of critical severity findings.</p>"}))
    SeverityCounts.type = Types::SeverityCounts
    SortCriteria.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: SortField, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The finding detail field by which results are sorted.</p>", "smithy.api#required" => {}}))
    SortCriteria.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order by which findings are sorted.</p>", "smithy.api#required" => {}}))
    SortCriteria.type = Types::SortCriteria
    StartCisSessionMessage.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The unique token that identifies the CIS session.</p>", "smithy.api#required" => {}}))
    StartCisSessionMessage.type = Types::StartCisSessionMessage
    StartCisSessionRequest.add_member(:scan_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'scanJobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the scan job.</p>", "smithy.api#required" => {}}))
    StartCisSessionRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCisSessionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The start CIS session message.</p>", "smithy.api#required" => {}}))
    StartCisSessionRequest.type = Types::StartCisSessionRequest
    StartCisSessionResponse.type = Types::StartCisSessionResponse
    StartCodeSecurityScanRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}}))
    StartCodeSecurityScanRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource identifier for the code repository to scan.</p>", "smithy.api#required" => {}}))
    StartCodeSecurityScanRequest.type = Types::StartCodeSecurityScanRequest
    StartCodeSecurityScanResponse.add_member(:scan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityUuid, location_name: 'scanId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the initiated scan.</p>"}))
    StartCodeSecurityScanResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeScanStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the initiated scan.</p>"}))
    StartCodeSecurityScanResponse.type = Types::StartCodeSecurityScanResponse
    State.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector for the account.</p>", "smithy.api#required" => {}}))
    State.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code explaining why the account failed to enable Amazon Inspector.</p>", "smithy.api#required" => {}}))
    State.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message received when the account failed to enable Amazon Inspector.</p>", "smithy.api#required" => {}}))
    State.type = Types::State
    StatusCounts.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'failed', traits: {"smithy.api#documentation" => "<p>The number of checks that failed.</p>"}))
    StatusCounts.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'skipped', traits: {"smithy.api#documentation" => "<p>The number of checks that were skipped.</p>"}))
    StatusCounts.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'passed', traits: {"smithy.api#documentation" => "<p>The number of checks that passed.</p>"}))
    StatusCounts.type = Types::StatusCounts
    Step.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'componentId', traits: {"smithy.api#documentation" => "<p>The component ID.</p>", "smithy.api#required" => {}}))
    Step.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The component type.</p>", "smithy.api#required" => {}}))
    Step.add_member(:component_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentArn, location_name: 'componentArn', traits: {"smithy.api#documentation" => "<p>The component ARN. The ARN can be null and is not displayed in the Amazon Web Services\n         console.</p>"}))
    Step.type = Types::Step
    StepList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Step)
    StopCisMessageProgress.add_member(:total_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'totalChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' total checks.</p>"}))
    StopCisMessageProgress.add_member(:successful_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'successfulChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' successful checks.</p>"}))
    StopCisMessageProgress.add_member(:failed_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'failedChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' failed checks.</p>"}))
    StopCisMessageProgress.add_member(:not_evaluated_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'notEvaluatedChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' not evaluated checks.</p>"}))
    StopCisMessageProgress.add_member(:unknown_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'unknownChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' unknown checks.</p>"}))
    StopCisMessageProgress.add_member(:not_applicable_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'notApplicableChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' not applicable checks.</p>"}))
    StopCisMessageProgress.add_member(:informational_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'informationalChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' informational checks.</p>"}))
    StopCisMessageProgress.add_member(:error_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCount, location_name: 'errorChecks', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The progress' error checks.</p>"}))
    StopCisMessageProgress.type = Types::StopCisMessageProgress
    StopCisSessionMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StopCisSessionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the message.</p>", "smithy.api#required" => {}}))
    StopCisSessionMessage.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the message.</p>"}))
    StopCisSessionMessage.add_member(:progress, Smithy::Schema::Shapes::ShapeRef.new(shape: StopCisMessageProgress, location_name: 'progress', traits: {"smithy.api#documentation" => "<p>The progress of the message.</p>", "smithy.api#required" => {}}))
    StopCisSessionMessage.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p>The message compute platform.</p>"}))
    StopCisSessionMessage.add_member(:benchmark_version, Smithy::Schema::Shapes::ShapeRef.new(shape: BenchmarkVersion, location_name: 'benchmarkVersion', traits: {"smithy.api#documentation" => "<p>The message benchmark version.</p>"}))
    StopCisSessionMessage.add_member(:benchmark_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: BenchmarkProfile, location_name: 'benchmarkProfile', traits: {"smithy.api#documentation" => "<p>The message benchmark profile.</p>"}))
    StopCisSessionMessage.type = Types::StopCisSessionMessage
    StopCisSessionRequest.add_member(:scan_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'scanJobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the scan job.</p>", "smithy.api#required" => {}}))
    StopCisSessionRequest.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The unique token that identifies the CIS session.</p>", "smithy.api#required" => {}}))
    StopCisSessionRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: StopCisSessionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The stop CIS session message.</p>", "smithy.api#required" => {}}))
    StopCisSessionRequest.type = Types::StopCisSessionRequest
    StopCisSessionResponse.type = Types::StopCisSessionResponse
    StopCisSessionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    StopCisSessionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StopCisSessionStatus.add_member(:interrupted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERRUPTED', traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    StopCisSessionStatus.add_member(:unsupported_os, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OS', traits: {"smithy.api#enumValue" => "UNSUPPORTED_OS"}))
    StringFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: StringComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The operator to use when comparing values in the filter.</p>", "smithy.api#required" => {}}))
    StringFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringInput, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value to filter on.</p>", "smithy.api#required" => {}}))
    StringFilter.type = Types::StringFilter
    StringFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter)
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    SuccessfulAssociationResult.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration that was successfully\n         associated or disassociated.</p>"}))
    SuccessfulAssociationResult.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: 'resource'))
    SuccessfulAssociationResult.type = Types::SuccessfulAssociationResult
    SuccessfulAssociationResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulAssociationResult)
    SuggestedFix.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The fix's description.</p>", "smithy.api#length" => {"min" => 1, "max" => 1000}}))
    SuggestedFix.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The fix's code.</p>", "smithy.api#length" => {"min" => 1, "max" => 2500}}))
    SuggestedFix.type = Types::SuggestedFix
    SuggestedFixes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestedFix)
    TagComparison.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    TagFilter.add_member(:comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: TagComparison, location_name: 'comparison', traits: {"smithy.api#documentation" => "<p>The tag filter comparison value.</p>", "smithy.api#required" => {}}))
    TagFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag filter key.</p>", "smithy.api#required" => {}}))
    TagFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag filter value.</p>", "smithy.api#required" => {}}))
    TagFilter.type = Types::TagFilter
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MapKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MapValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to apply a tag to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be added to a resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTagsValue)
    TargetAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccount)
    TargetResourceTags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTagsKey)
    TargetResourceTags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList)
    TargetStatusFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatusFilter)
    TargetStatusReasonFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisTargetStatusReasonFilter)
    Targets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Time.add_member(:time_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOfDay, location_name: 'timeOfDay', traits: {"smithy.api#documentation" => "<p>The time of day in 24-hour format (00:00).</p>", "smithy.api#required" => {}}))
    Time.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, location_name: 'timezone', traits: {"smithy.api#documentation" => "<p>The timezone.</p>", "smithy.api#required" => {}}))
    Time.type = Types::Time
    TitleAggregation.add_member(:titles, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'titles', traits: {"smithy.api#documentation" => "<p>The finding titles to aggregate on.</p>"}))
    TitleAggregation.add_member(:vulnerability_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterList, location_name: 'vulnerabilityIds', traits: {"smithy.api#documentation" => "<p>The vulnerability IDs of the findings.</p>"}))
    TitleAggregation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type to aggregate on.</p>"}))
    TitleAggregation.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The order to sort results by.</p>"}))
    TitleAggregation.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: TitleSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The value to sort results by.</p>"}))
    TitleAggregation.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationFindingType, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>The type of finding to aggregate on.</p>"}))
    TitleAggregation.type = Types::TitleAggregation
    TitleAggregationResponse.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title that the findings were aggregated on.</p>", "smithy.api#required" => {}}))
    TitleAggregationResponse.add_member(:vulnerability_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vulnerabilityId', traits: {"smithy.api#documentation" => "<p>The vulnerability ID of the finding.</p>"}))
    TitleAggregationResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account associated with the findings.</p>"}))
    TitleAggregationResponse.add_member(:severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCounts, location_name: 'severityCounts', traits: {"smithy.api#documentation" => "<p>An object that represent the count of matched findings per severity.</p>"}))
    TitleAggregationResponse.type = Types::TitleAggregationResponse
    TitleFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CisStringFilter)
    Tools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tool)
    Ttps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ttp)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCisScanConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration ARN.</p>", "smithy.api#required" => {}}))
    UpdateCisScanConfigurationRequest.add_member(:scan_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanName, location_name: 'scanName', traits: {"smithy.api#documentation" => "<p>The scan name for the CIS scan configuration.</p>"}))
    UpdateCisScanConfigurationRequest.add_member(:security_level, Smithy::Schema::Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: 'securityLevel', traits: {"smithy.api#documentation" => "<p> The security level for the CIS scan configuration. Security level refers to the\n         Benchmark levels that CIS assigns to a profile. </p>"}))
    UpdateCisScanConfigurationRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule for the CIS scan configuration.</p>"}))
    UpdateCisScanConfigurationRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCisTargets, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the CIS scan configuration.</p>"}))
    UpdateCisScanConfigurationRequest.type = Types::UpdateCisScanConfigurationRequest
    UpdateCisScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The CIS scan configuration ARN.</p>", "smithy.api#required" => {}}))
    UpdateCisScanConfigurationResponse.type = Types::UpdateCisScanConfigurationResponse
    UpdateCisTargets.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The target account ids.</p>"}))
    UpdateCisTargets.add_member(:target_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: 'targetResourceTags', traits: {"smithy.api#documentation" => "<p>The target resource tags.</p>"}))
    UpdateCisTargets.type = Types::UpdateCisTargets
    UpdateCodeSecurityIntegrationRequest.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the code security integration to update.</p>", "smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationRequest.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIntegrationDetails, location_name: 'details', traits: {"smithy.api#documentation" => "<p>The updated integration details specific to the repository provider type.</p>", "smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationRequest.type = Types::UpdateCodeSecurityIntegrationRequest
    UpdateCodeSecurityIntegrationResponse.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: 'integrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated code security integration.</p>", "smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the updated code security integration.</p>", "smithy.api#required" => {}}))
    UpdateCodeSecurityIntegrationResponse.type = Types::UpdateCodeSecurityIntegrationResponse
    UpdateCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scan configuration to update.</p>", "smithy.api#required" => {}}))
    UpdateCodeSecurityScanConfigurationRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeSecurityScanConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The updated configuration settings for the code security scan.</p>", "smithy.api#required" => {}}))
    UpdateCodeSecurityScanConfigurationRequest.type = Types::UpdateCodeSecurityScanConfigurationRequest
    UpdateCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: 'scanConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated scan configuration.</p>"}))
    UpdateCodeSecurityScanConfigurationResponse.type = Types::UpdateCodeSecurityScanConfigurationResponse
    UpdateConfigurationInput.add_member(:ecr_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrConfiguration, location_name: 'ecrConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies how the ECR automated re-scan will be updated for your environment.</p>"}))
    UpdateConfigurationInput.add_member(:ec2_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Configuration, location_name: 'ec2Configuration', traits: {"smithy.api#documentation" => "<p>Specifies how the Amazon EC2 automated scan will be updated for your environment.</p>"}))
    UpdateConfigurationInput.type = Types::UpdateConfigurationInput
    UpdateConfigurationOutput.type = Types::UpdateConfigurationOutput
    UpdateEc2DeepInspectionConfigurationRequest.add_member(:activate_deep_inspection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'activateDeepInspection', traits: {"smithy.api#documentation" => "<p>Specify <code>TRUE</code> to activate Amazon Inspector deep inspection in your account, or\n            <code>FALSE</code> to deactivate. Member accounts in an organization cannot deactivate\n         deep inspection, instead the delegated administrator for the organization can deactivate a\n         member account using <a href=\"https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html\">BatchUpdateMemberEc2DeepInspectionStatus</a>.</p>"}))
    UpdateEc2DeepInspectionConfigurationRequest.add_member(:package_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'packagePaths', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector deep inspection custom paths you are adding for your account.</p>"}))
    UpdateEc2DeepInspectionConfigurationRequest.type = Types::UpdateEc2DeepInspectionConfigurationRequest
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:package_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'packagePaths', traits: {"smithy.api#documentation" => "<p>The current Amazon Inspector deep inspection custom paths for your account.</p>"}))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:org_package_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'orgPackagePaths', traits: {"smithy.api#documentation" => "<p>The current Amazon Inspector deep inspection custom paths for the organization.</p>"}))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2DeepInspectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of Amazon Inspector deep inspection in your account.</p>"}))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message explaining why new Amazon Inspector deep inspection custom paths could not be\n         added.</p>"}))
    UpdateEc2DeepInspectionConfigurationResponse.type = Types::UpdateEc2DeepInspectionConfigurationResponse
    UpdateEncryptionKeyRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>A KMS key ID for the encryption key.</p>", "smithy.api#required" => {}}))
    UpdateEncryptionKeyRequest.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>The scan type for the encryption key.</p>", "smithy.api#required" => {}}))
    UpdateEncryptionKeyRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type for the encryption key.</p>", "smithy.api#required" => {}}))
    UpdateEncryptionKeyRequest.type = Types::UpdateEncryptionKeyRequest
    UpdateEncryptionKeyResponse.type = Types::UpdateEncryptionKeyResponse
    UpdateFilterInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Specifies the action that is to be applied to the findings that match the filter.</p>"}))
    UpdateFilterInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the filter.</p>"}))
    UpdateFilterInput.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>Defines the criteria to be update in the filter.</p>"}))
    UpdateFilterInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>"}))
    UpdateFilterInput.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the filter to update.</p>", "smithy.api#required" => {}}))
    UpdateFilterInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason the filter was updated.</p>"}))
    UpdateFilterInput.type = Types::UpdateFilterInput
    UpdateFilterOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the successfully updated filter.</p>", "smithy.api#required" => {}}))
    UpdateFilterOutput.type = Types::UpdateFilterOutput
    UpdateGitHubIntegrationDetail.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAuthCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The authorization code received from GitHub to update the integration.</p>", "smithy.api#required" => {}}))
    UpdateGitHubIntegrationDetail.add_member(:installation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubInstallationId, location_name: 'installationId', traits: {"smithy.api#documentation" => "<p>The installation ID of the GitHub App associated with the integration.</p>", "smithy.api#required" => {}}))
    UpdateGitHubIntegrationDetail.type = Types::UpdateGitHubIntegrationDetail
    UpdateGitLabSelfManagedIntegrationDetail.add_member(:auth_code, Smithy::Schema::Shapes::ShapeRef.new(shape: GitLabAuthCode, location_name: 'authCode', traits: {"smithy.api#documentation" => "<p>The authorization code received from the self-managed GitLab instance to update the\n         integration.</p>", "smithy.api#required" => {}}))
    UpdateGitLabSelfManagedIntegrationDetail.type = Types::UpdateGitLabSelfManagedIntegrationDetail
    UpdateIntegrationDetails.add_member(:gitlab_self_managed, Types::UpdateIntegrationDetails::GitlabSelfManaged, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGitLabSelfManagedIntegrationDetail, location_name: 'gitlabSelfManaged', traits: {"smithy.api#documentation" => "<p>Details specific to updating an integration with a self-managed GitLab instance.</p>"}))
    UpdateIntegrationDetails.add_member(:github, Types::UpdateIntegrationDetails::Github, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGitHubIntegrationDetail, location_name: 'github', traits: {"smithy.api#documentation" => "<p>Details specific to updating an integration with GitHub.</p>"}))
    UpdateIntegrationDetails.add_member(:unknown, Types::UpdateIntegrationDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    UpdateIntegrationDetails.type = Types::UpdateIntegrationDetails
    UpdateOrgEc2DeepInspectionConfigurationRequest.add_member(:org_package_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'orgPackagePaths', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector deep inspection custom paths you are adding for your organization.</p>", "smithy.api#required" => {}}))
    UpdateOrgEc2DeepInspectionConfigurationRequest.type = Types::UpdateOrgEc2DeepInspectionConfigurationRequest
    UpdateOrgEc2DeepInspectionConfigurationResponse.type = Types::UpdateOrgEc2DeepInspectionConfigurationResponse
    UpdateOrganizationConfigurationInput.add_member(:auto_enable, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnable, location_name: 'autoEnable', traits: {"smithy.api#documentation" => "<p>Defines which scan types are enabled automatically for new members of your Amazon Inspector\n         organization.</p>", "smithy.api#required" => {}}))
    UpdateOrganizationConfigurationInput.type = Types::UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput.add_member(:auto_enable, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnable, location_name: 'autoEnable', traits: {"smithy.api#documentation" => "<p>The updated status of scan types automatically enabled for new members of your Amazon Inspector\n         organization.</p>", "smithy.api#required" => {}}))
    UpdateOrganizationConfigurationOutput.type = Types::UpdateOrganizationConfigurationOutput
    Usage.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type scan.</p>"}))
    Usage.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageValue, location_name: 'total', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total of usage.</p>"}))
    Usage.add_member(:estimated_monthly_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyCostEstimate, location_name: 'estimatedMonthlyCost', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The estimated monthly cost of Amazon Inspector.</p>"}))
    Usage.add_member(:currency, Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'currency', traits: {"smithy.api#documentation" => "<p>The currency type used when calculating usage data.</p>"}))
    Usage.type = Types::Usage
    UsageAccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAccountId)
    UsageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Usage)
    UsageTotal.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteringAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account ID of the account that usage data was retrieved for.</p>"}))
    UsageTotal.add_member(:usage, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageList, location_name: 'usage', traits: {"smithy.api#documentation" => "<p>An object representing the total usage for an account.</p>"}))
    UsageTotal.type = Types::UsageTotal
    UsageTotalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTotal)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the validation failure.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The fields that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The validation exception message.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VulnIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VulnId)
    Vulnerabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Vulnerability)
    Vulnerability.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID for the specific vulnerability.</p>", "smithy.api#required" => {}}))
    Vulnerability.add_member(:cwes, Smithy::Schema::Shapes::ShapeRef.new(shape: Cwes, location_name: 'cwes', traits: {"smithy.api#documentation" => "<p>The Common Weakness Enumeration (CWE) associated with the vulnerability.</p>"}))
    Vulnerability.add_member(:cisa_data, Smithy::Schema::Shapes::ShapeRef.new(shape: CisaData, location_name: 'cisaData', traits: {"smithy.api#documentation" => "<p>An object that contains the Cybersecurity and Infrastructure Security Agency (CISA)\n         details for the vulnerability.</p>"}))
    Vulnerability.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilitySource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the vulnerability information. Possible results are <code>RHEL</code>,\n            <code>AMAZON_CVE</code>, <code>DEBIAN</code> or <code>NVD</code>.</p>"}))
    Vulnerability.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the vulnerability.</p>"}))
    Vulnerability.add_member(:atig_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AtigData, location_name: 'atigData', traits: {"smithy.api#documentation" => "<p>An object that contains information about the Amazon Web Services Threat Intel Group\n         (ATIG) details for the vulnerability.</p>"}))
    Vulnerability.add_member(:vendor_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: VendorSeverity, location_name: 'vendorSeverity', traits: {"smithy.api#documentation" => "<p>The severity assigned by the vendor.</p>"}))
    Vulnerability.add_member(:cvss4, Smithy::Schema::Shapes::ShapeRef.new(shape: Cvss4, location_name: 'cvss4', traits: {"smithy.api#documentation" => "<p>An object that contains the Common Vulnerability Scoring System (CVSS) Version 4 details for the vulnerability.</p>"}))
    Vulnerability.add_member(:cvss3, Smithy::Schema::Shapes::ShapeRef.new(shape: Cvss3, location_name: 'cvss3', traits: {"smithy.api#documentation" => "<p>An object that contains the Common Vulnerability Scoring System (CVSS) Version 3 details\n         for the vulnerability.</p>"}))
    Vulnerability.add_member(:related_vulnerabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerabilities, location_name: 'relatedVulnerabilities', traits: {"smithy.api#documentation" => "<p>A list of related vulnerabilities.</p>"}))
    Vulnerability.add_member(:cvss2, Smithy::Schema::Shapes::ShapeRef.new(shape: Cvss2, location_name: 'cvss2', traits: {"smithy.api#documentation" => "<p>An object that contains the Common Vulnerability Scoring System (CVSS) Version 2 details\n         for the vulnerability.</p>"}))
    Vulnerability.add_member(:vendor_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: VendorCreatedAt, location_name: 'vendorCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the vendor created this vulnerability.</p>"}))
    Vulnerability.add_member(:vendor_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: VendorUpdatedAt, location_name: 'vendorUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the vendor last updated this vulnerability.</p>"}))
    Vulnerability.add_member(:source_url, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilitySourceUrl, location_name: 'sourceUrl', traits: {"smithy.api#documentation" => "<p>A link to the official source material for this vulnerability.</p>"}))
    Vulnerability.add_member(:reference_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityReferenceUrls, location_name: 'referenceUrls', traits: {"smithy.api#documentation" => "<p>Links to various resources with more information on this vulnerability. </p>"}))
    Vulnerability.add_member(:exploit_observed, Smithy::Schema::Shapes::ShapeRef.new(shape: ExploitObserved, location_name: 'exploitObserved', traits: {"smithy.api#documentation" => "<p>An object that contains details on when the exploit was observed.</p>"}))
    Vulnerability.add_member(:detection_platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectionPlatforms, location_name: 'detectionPlatforms', traits: {"smithy.api#documentation" => "<p>Platforms that the vulnerability can be detected on.</p>"}))
    Vulnerability.add_member(:epss, Smithy::Schema::Shapes::ShapeRef.new(shape: Epss, location_name: 'epss', traits: {"smithy.api#documentation" => "<p>An object that contains the Exploit Prediction Scoring System (EPSS) score for a\n         vulnerability.</p>"}))
    Vulnerability.type = Types::Vulnerability
    VulnerabilityIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityId)
    VulnerabilityReferenceUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityReferenceUrl)
    VulnerablePackage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the vulnerable package.</p>", "smithy.api#required" => {}}))
    VulnerablePackage.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the vulnerable package.</p>", "smithy.api#required" => {}}))
    VulnerablePackage.add_member(:source_layer_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceLayerHash, location_name: 'sourceLayerHash', traits: {"smithy.api#documentation" => "<p>The source layer hash of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:epoch, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageEpoch, location_name: 'epoch', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The epoch of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:release, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageRelease, location_name: 'release', traits: {"smithy.api#documentation" => "<p>The release of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:arch, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageArchitecture, location_name: 'arch', traits: {"smithy.api#documentation" => "<p>The architecture of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:package_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageManager, location_name: 'packageManager', traits: {"smithy.api#documentation" => "<p>The package manager of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The file path of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:fixed_in_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'fixedInVersion', traits: {"smithy.api#documentation" => "<p>The version of the package that contains the vulnerability fix.</p>"}))
    VulnerablePackage.add_member(:remediation, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackageRemediation, location_name: 'remediation', traits: {"smithy.api#documentation" => "<p>The code to run in your environment to update packages with a fix available.</p>"}))
    VulnerablePackage.add_member(:source_lambda_layer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLayerArn, location_name: 'sourceLambdaLayerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the Amazon Web Services Lambda function affected by a\n         finding.</p>"}))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackage)
    WeeklySchedule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The weekly schedule's start time.</p>", "smithy.api#required" => {}}))
    WeeklySchedule.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: DaysList, location_name: 'days', traits: {"smithy.api#documentation" => "<p>The weekly schedule's days.</p>", "smithy.api#required" => {}}))
    WeeklySchedule.type = Types::WeeklySchedule

    Inspector2 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.inspector2#Inspector2"
      service.name = "Inspector2"
      service.version = "2020-06-08"
      service.traits = {"aws.api#service" => {"sdkId" => "Inspector2", "arnNamespace" => "inspector2", "cloudTrailEventSource" => "inspector2.amazon.aws", "cloudFormationName" => "Inspector2"}, "aws.auth#sigv4" => {"name" => "inspector2"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*"]}, "smithy.api#title" => "Inspector2"}
      service.add_operation(:associate_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#AssociateMember"
        operation.name = "AssociateMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/associate"}}
      end)
      service.add_operation(:batch_associate_code_security_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchAssociateCodeSecurityScanConfiguration"
        operation.name = "BatchAssociateCodeSecurityScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateCodeSecurityScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateCodeSecurityScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/batch/associate"}}
      end)
      service.add_operation(:batch_disassociate_code_security_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchDisassociateCodeSecurityScanConfiguration"
        operation.name = "BatchDisassociateCodeSecurityScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateCodeSecurityScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateCodeSecurityScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/batch/disassociate"}}
      end)
      service.add_operation(:batch_get_account_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetAccountStatus"
        operation.name = "BatchGetAccountStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAccountStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAccountStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/status/batch/get"}}
      end)
      service.add_operation(:batch_get_code_snippet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetCodeSnippet"
        operation.name = "BatchGetCodeSnippet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCodeSnippetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCodeSnippetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesnippet/batchget"}}
      end)
      service.add_operation(:batch_get_finding_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetFindingDetails"
        operation.name = "BatchGetFindingDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFindingDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFindingDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/findings/details/batch/get"}}
      end)
      service.add_operation(:batch_get_free_trial_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetFreeTrialInfo"
        operation.name = "BatchGetFreeTrialInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFreeTrialInfoInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFreeTrialInfoOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/freetrialinfo/batchget"}}
      end)
      service.add_operation(:batch_get_member_ec2_deep_inspection_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchGetMemberEc2DeepInspectionStatus"
        operation.name = "BatchGetMemberEc2DeepInspectionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMemberEc2DeepInspectionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMemberEc2DeepInspectionStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionstatus/member/batch/get"}}
      end)
      service.add_operation(:batch_update_member_ec2_deep_inspection_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#BatchUpdateMemberEc2DeepInspectionStatus"
        operation.name = "BatchUpdateMemberEc2DeepInspectionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateMemberEc2DeepInspectionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateMemberEc2DeepInspectionStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionstatus/member/batch/update"}}
      end)
      service.add_operation(:cancel_findings_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CancelFindingsReport"
        operation.name = "CancelFindingsReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelFindingsReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelFindingsReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reporting/cancel"}}
      end)
      service.add_operation(:cancel_sbom_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CancelSbomExport"
        operation.name = "CancelSbomExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSbomExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSbomExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sbomexport/cancel"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cis_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateCisScanConfiguration"
        operation.name = "CreateCisScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCisScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCisScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/create"}}
      end)
      service.add_operation(:create_code_security_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateCodeSecurityIntegration"
        operation.name = "CreateCodeSecurityIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCodeSecurityIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCodeSecurityIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/create"}}
      end)
      service.add_operation(:create_code_security_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateCodeSecurityScanConfiguration"
        operation.name = "CreateCodeSecurityScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCodeSecurityScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCodeSecurityScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/create"}}
      end)
      service.add_operation(:create_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateFilter"
        operation.name = "CreateFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFilterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFilterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/create"}}
      end)
      service.add_operation(:create_findings_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateFindingsReport"
        operation.name = "CreateFindingsReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFindingsReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFindingsReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reporting/create"}}
      end)
      service.add_operation(:create_sbom_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#CreateSbomExport"
        operation.name = "CreateSbomExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSbomExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSbomExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sbomexport/create"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cis_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteCisScanConfiguration"
        operation.name = "DeleteCisScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCisScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCisScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/delete"}}
      end)
      service.add_operation(:delete_code_security_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteCodeSecurityIntegration"
        operation.name = "DeleteCodeSecurityIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCodeSecurityIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCodeSecurityIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/delete"}}
      end)
      service.add_operation(:delete_code_security_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteCodeSecurityScanConfiguration"
        operation.name = "DeleteCodeSecurityScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCodeSecurityScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCodeSecurityScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/delete"}}
      end)
      service.add_operation(:delete_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DeleteFilter"
        operation.name = "DeleteFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFilterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFilterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/delete"}}
      end)
      service.add_operation(:describe_organization_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/organizationconfiguration/describe"}}
      end)
      service.add_operation(:disable, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#Disable"
        operation.name = "Disable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/disable"}}
      end)
      service.add_operation(:disable_delegated_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DisableDelegatedAdminAccount"
        operation.name = "DisableDelegatedAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDelegatedAdminAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDelegatedAdminAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/disable"}}
      end)
      service.add_operation(:disassociate_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#DisassociateMember"
        operation.name = "DisassociateMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/disassociate"}}
      end)
      service.add_operation(:enable, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#Enable"
        operation.name = "Enable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/enable"}}
      end)
      service.add_operation(:enable_delegated_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#EnableDelegatedAdminAccount"
        operation.name = "EnableDelegatedAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDelegatedAdminAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDelegatedAdminAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/enable"}}
      end)
      service.add_operation(:get_cis_scan_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCisScanReport"
        operation.name = "GetCisScanReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCisScanReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCisScanReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan/report/get"}}
      end)
      service.add_operation(:get_cis_scan_result_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCisScanResultDetails"
        operation.name = "GetCisScanResultDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCisScanResultDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCisScanResultDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-result/details/get"}}
        operation[:paginator] = Paginators::GetCisScanResultDetails.new
      end)
      service.add_operation(:get_clusters_for_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetClustersForImage"
        operation.name = "GetClustersForImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClustersForImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClustersForImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/get"}}
        operation[:paginator] = Paginators::GetClustersForImage.new
      end)
      service.add_operation(:get_code_security_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCodeSecurityIntegration"
        operation.name = "GetCodeSecurityIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeSecurityIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeSecurityIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/get"}}
      end)
      service.add_operation(:get_code_security_scan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCodeSecurityScan"
        operation.name = "GetCodeSecurityScan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeSecurityScanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeSecurityScanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_code_security_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetCodeSecurityScanConfiguration"
        operation.name = "GetCodeSecurityScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeSecurityScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeSecurityScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/get"}}
      end)
      service.add_operation(:get_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuration/get"}}
      end)
      service.add_operation(:get_delegated_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetDelegatedAdminAccount"
        operation.name = "GetDelegatedAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDelegatedAdminAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDelegatedAdminAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/get"}}
      end)
      service.add_operation(:get_ec2_deep_inspection_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetEc2DeepInspectionConfiguration"
        operation.name = "GetEc2DeepInspectionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEc2DeepInspectionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEc2DeepInspectionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionconfiguration/get"}}
      end)
      service.add_operation(:get_encryption_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetEncryptionKey"
        operation.name = "GetEncryptionKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/encryptionkey/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_findings_report_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetFindingsReportStatus"
        operation.name = "GetFindingsReportStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsReportStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsReportStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reporting/status/get"}}
      end)
      service.add_operation(:get_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetMember"
        operation.name = "GetMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/get"}}
      end)
      service.add_operation(:get_sbom_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#GetSbomExport"
        operation.name = "GetSbomExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSbomExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSbomExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sbomexport/get"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_account_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListAccountPermissions"
        operation.name = "ListAccountPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountPermissionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountPermissionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/accountpermissions/list"}}
        operation[:paginator] = Paginators::ListAccountPermissions.new
      end)
      service.add_operation(:list_cis_scan_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScanConfigurations"
        operation.name = "ListCisScanConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/list"}}
        operation[:paginator] = Paginators::ListCisScanConfigurations.new
      end)
      service.add_operation(:list_cis_scan_results_aggregated_by_checks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScanResultsAggregatedByChecks"
        operation.name = "ListCisScanResultsAggregatedByChecks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByChecksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByChecksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-result/check/list"}}
        operation[:paginator] = Paginators::ListCisScanResultsAggregatedByChecks.new
      end)
      service.add_operation(:list_cis_scan_results_aggregated_by_target_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScanResultsAggregatedByTargetResource"
        operation.name = "ListCisScanResultsAggregatedByTargetResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByTargetResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByTargetResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-result/resource/list"}}
        operation[:paginator] = Paginators::ListCisScanResultsAggregatedByTargetResource.new
      end)
      service.add_operation(:list_cis_scans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCisScans"
        operation.name = "ListCisScans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScansRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCisScansResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan/list"}}
        operation[:paginator] = Paginators::ListCisScans.new
      end)
      service.add_operation(:list_code_security_integrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCodeSecurityIntegrations"
        operation.name = "ListCodeSecurityIntegrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeSecurityIntegrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeSecurityIntegrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/list"}}
      end)
      service.add_operation(:list_code_security_scan_configuration_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCodeSecurityScanConfigurationAssociations"
        operation.name = "ListCodeSecurityScanConfigurationAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/associations/list"}}
      end)
      service.add_operation(:list_code_security_scan_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCodeSecurityScanConfigurations"
        operation.name = "ListCodeSecurityScanConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/list"}}
      end)
      service.add_operation(:list_coverage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCoverage"
        operation.name = "ListCoverage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoverageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoverageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/coverage/list"}}
        operation[:paginator] = Paginators::ListCoverage.new
      end)
      service.add_operation(:list_coverage_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListCoverageStatistics"
        operation.name = "ListCoverageStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoverageStatisticsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoverageStatisticsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/coverage/statistics/list"}}
        operation[:paginator] = Paginators::ListCoverageStatistics.new
      end)
      service.add_operation(:list_delegated_admin_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListDelegatedAdminAccounts"
        operation.name = "ListDelegatedAdminAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdminAccountsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdminAccountsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delegatedadminaccounts/list"}}
        operation[:paginator] = Paginators::ListDelegatedAdminAccounts.new
      end)
      service.add_operation(:list_filters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListFilters"
        operation.name = "ListFilters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFiltersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFiltersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/list"}}
        operation[:paginator] = Paginators::ListFilters.new
      end)
      service.add_operation(:list_finding_aggregations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListFindingAggregations"
        operation.name = "ListFindingAggregations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingAggregationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingAggregationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/findings/aggregation/list"}}
        operation[:paginator] = Paginators::ListFindingAggregations.new
      end)
      service.add_operation(:list_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListFindings"
        operation.name = "ListFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/findings/list"}}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListMembers"
        operation.name = "ListMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/members/list"}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_usage_totals, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ListUsageTotals"
        operation.name = "ListUsageTotals"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageTotalsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageTotalsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/usage/list"}}
        operation[:paginator] = Paginators::ListUsageTotals.new
      end)
      service.add_operation(:reset_encryption_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#ResetEncryptionKey"
        operation.name = "ResetEncryptionKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetEncryptionKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetEncryptionKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/encryptionkey/reset"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_vulnerabilities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#SearchVulnerabilities"
        operation.name = "SearchVulnerabilities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchVulnerabilitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchVulnerabilitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/vulnerabilities/search"}}
        operation[:paginator] = Paginators::SearchVulnerabilities.new
      end)
      service.add_operation(:send_cis_session_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#SendCisSessionHealth"
        operation.name = "SendCisSessionHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCisSessionHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCisSessionHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/health/send"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_cis_session_telemetry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#SendCisSessionTelemetry"
        operation.name = "SendCisSessionTelemetry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCisSessionTelemetryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCisSessionTelemetryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/telemetry/send"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_cis_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#StartCisSession"
        operation.name = "StartCisSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCisSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCisSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_code_security_scan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#StartCodeSecurityScan"
        operation.name = "StartCodeSecurityScan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodeSecurityScanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodeSecurityScanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan/start"}}
      end)
      service.add_operation(:stop_cis_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#StopCisSession"
        operation.name = "StopCisSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCisSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCisSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cissession/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}}
      end)
      service.add_operation(:update_cis_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateCisScanConfiguration"
        operation.name = "UpdateCisScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCisScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCisScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cis/scan-configuration/update"}}
      end)
      service.add_operation(:update_code_security_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateCodeSecurityIntegration"
        operation.name = "UpdateCodeSecurityIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCodeSecurityIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCodeSecurityIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/integration/update"}}
      end)
      service.add_operation(:update_code_security_scan_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateCodeSecurityScanConfiguration"
        operation.name = "UpdateCodeSecurityScanConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCodeSecurityScanConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCodeSecurityScanConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/codesecurity/scan-configuration/update"}}
      end)
      service.add_operation(:update_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateConfiguration"
        operation.name = "UpdateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuration/update"}}
      end)
      service.add_operation(:update_ec2_deep_inspection_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateEc2DeepInspectionConfiguration"
        operation.name = "UpdateEc2DeepInspectionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEc2DeepInspectionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEc2DeepInspectionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionconfiguration/update"}}
      end)
      service.add_operation(:update_encryption_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateEncryptionKey"
        operation.name = "UpdateEncryptionKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEncryptionKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEncryptionKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/encryptionkey/update"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateFilter"
        operation.name = "UpdateFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFilterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFilterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/filters/update"}}
      end)
      service.add_operation(:update_org_ec2_deep_inspection_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateOrgEc2DeepInspectionConfiguration"
        operation.name = "UpdateOrgEc2DeepInspectionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrgEc2DeepInspectionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrgEc2DeepInspectionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ec2deepinspectionconfiguration/org/update"}}
      end)
      service.add_operation(:update_organization_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector2#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/organizationconfiguration/update"}}
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
